<?php
$conn = new mysqli("localhost", "root", "", "diet_chart");

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Initialize response variable
$response = "";

// Check if the form is submitted
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $meal_id = $_POST['meal_id'];
    $dish_id = $_POST['dish_id'];
    $calories = $_POST['calories'];

    // Update the meal in the database
    $sql = "UPDATE diet_chart SET dish_id = ?, calories = ? WHERE id = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("iii", $dish_id, $calories, $meal_id);
    
    if ($stmt->execute()) {
        $response = "Meal updated successfully!";
    } else {
        $response = "Error updating meal: " . $stmt->error;
    }

    $stmt->close();
}

// Fetch available dishes for the dropdown
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
    <title>Edit Meal</title>
    <style>
        body { font-family: Arial, sans-serif; }
        form { margin: 20px; }
        label { display: block; margin: 10px 0 5px; }
        input[type="number"], select { width: 100%; padding: 8px; }
        input[type="submit"] { margin-top: 10px; }
        .response { margin: 20px; color: green; }
    </style>
</head>
<body>
    <h1>Edit Meal</h1>
    <?php if ($response): ?>
        <div class="response"><?= $response ?></div>
    <?php endif; ?>
    
    <form action="" method="post">
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
