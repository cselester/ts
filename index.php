<?php
$conn = new mysqli("localhost", "root", "", "diet_chart");

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Initialize diet_chart as an empty array
$diet_chart = []; // Ensure it is initialized

// Get user-selected cuisine and calorie level from the form
$cuisine_id = $_POST['cuisine'] ?? null;
$calorie_id = $_POST['calories'] ?? null;

// Fetch available cuisines and calorie levels for dropdowns
$cuisine_sql = "SELECT id, cuisine_name FROM cuisines"; // Assuming there's a cuisines table
$calorie_sql = "SELECT id, calorie_level FROM calorie_levels"; // Assuming there's a calorie_levels table

$cuisine_result = $conn->query($cuisine_sql);
$calorie_result = $conn->query($calorie_sql);

$cuisines = [];
$calories = [];

if ($cuisine_result->num_rows > 0) {
    while ($row = $cuisine_result->fetch_assoc()) {
        $cuisines[$row['id']] = $row['cuisine_name'];
    }
}

if ($calorie_result->num_rows > 0) {
    while ($row = $calorie_result->fetch_assoc()) {
        $calories[$row['id']] = $row['calorie_level'];
    }
}

if ($cuisine_id && $calorie_id) {
    // Query to fetch the diet chart for selected cuisine and calorie level
    $sql = "SELECT day_of_week, meals.name AS meal_time, dish_name, calories 
            FROM diet_chart
            JOIN meals ON diet_chart.meal_id = meals.id
            WHERE cuisine_id = ? AND calorie_id = ?
            ORDER BY FIELD(day_of_week, 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'), meals.id";

    $stmt = $conn->prepare($sql);
    $stmt->bind_param("ii", $cuisine_id, $calorie_id);
    
    if ($stmt->execute()) {
        $result = $stmt->get_result();

        // Organize the data into a structured array
        while ($row = $result->fetch_assoc()) {
            $diet_chart[$row['day_of_week']][] = $row;
        }
    } else {
        echo "Error executing query: " . $stmt->error;
    }

    $stmt->close();
}

// Fetch available dishes for dropdown
$dish_sql = "SELECT dish_id, dish_name FROM dishes";
$dish_result = $conn->query($dish_sql);
$dishes = [];

if ($dish_result->num_rows > 0) {
    while ($row = $dish_result->fetch_assoc()) {
        $dishes[$row['dish_id']] = $row['dish_name'];
    }
}

$conn->close();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Diet Chart</title>
    <style>
        table { width: 100%; border-collapse: collapse; }
        th, td { border: 1px solid #ddd; padding: 8px; text-align: center; }
        th { background-color: #f2f2f2; }
    </style>
</head>
<body>
    <h1>7-Day Diet Chart</h1>

    <!-- Form for selecting cuisine and calorie level -->
    <form action="" method="post">
        <label for="cuisine">Select Cuisine:</label>
        <select name="cuisine" required>
            <option value="">Select a cuisine</option>
            <?php foreach ($cuisines as $id => $name): ?>
                <option value="<?= $id ?>"><?= $name ?></option>
            <?php endforeach; ?>
        </select>

        <label for="calories">Select Calorie Level:</label>
        <select name="calories" required>
            <option value="">Select calorie level</option>
            <?php foreach ($calories as $id => $level): ?>
                <option value="<?= $id ?>"><?= $level ?></option>
            <?php endforeach; ?>
        </select>

        <input type="submit" value="Get Diet Chart">


    </form>

    <table>
        <thead>
            <tr>
                <th>Day</th>
                <th>Early Morning</th>
                <th>Breakfast</th>
                <th>Mid Morning</th>
                <th>Lunch</th>
                <th>Evening</th>
                <th>Dinner</th>
                <th>Post Dinner</th>
                <th>Total Calories</th>
            </tr>
        </thead>
        <tbody>
            <?php if (!empty($diet_chart)): ?>
                <?php foreach ($diet_chart as $day => $meals): ?>
                    <tr>
                        <td><?= $day ?></td>
                        <?php
                        // Create an array to hold meals for the day
                        $mealArray = [];
                        $totalCalories = 0; // Initialize total calories for the day
                        
                        foreach ($meals as $meal) {
                            // Store dishes by meal time
                            $mealArray[$meal['meal_time']] = "{$meal['dish_name']} ({$meal['calories']} cal)";
                            $totalCalories += $meal['calories']; // Add to total calories
                        }
                        ?>
                        <td><?= $mealArray['Early Morning'] ?? 'No Meal' ?></td>
                        <td><?= $mealArray['Breakfast'] ?? 'No Meal' ?></td>
                        <td><?= $mealArray['Mid Morning'] ?? 'No Meal' ?></td>
                        <td><?= $mealArray['Lunch'] ?? 'No Meal' ?></td>
                        <td><?= $mealArray['Evening'] ?? 'No Meal' ?></td>
                        <td><?= $mealArray['Dinner'] ?? 'No Meal' ?></td>
                        <td><?= $mealArray['Post Dinner'] ?? 'No Meal' ?></td>
                        <td><?= $totalCalories ?> cal</td> <!-- Display total calories -->
                    </tr>
                <?php endforeach; ?>
            <?php else: ?>
                <tr>
                    <td colspan="9">No meals found for the selected cuisine and calorie level.</td>
                </tr>
            <?php endif; ?>
        </tbody>
    </table>

    <!-- Edit Meal Form -->
    <h2>Edit Meal</h2>
    <form action="edit_meal.php" method="post">
        <label for="meal_id">Meal ID:</label>
        <input type="number" name="meal_id" required>
        
        <label for="dish_id">Select Dish:</label>
        <select name="dish_id" required>
            <option value="">Select a dish</option>
            <?php foreach ($dishes as $id => $name): ?>
                <option value="<?= $id ?>"><?= $name ?></option>
            <?php endforeach; ?>
        </select>
        
        <label for="calories">Calories:</label>
        <input type="number" name="calories" required>

        <input type="submit" value="Update Meal">
    </form>
    
</body>
</html>
