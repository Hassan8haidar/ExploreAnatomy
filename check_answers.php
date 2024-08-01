<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "anatomyexplorer";

// Create connection
$con = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($con->connect_error) {
    die("Connection failed: " . $con->connect_error);
}

function checkAnswers($con, $table, $postPrefix) {
    $sql = "SELECT id, correct_answer FROM $table";
    $result = $con->query($sql);

    $correct = 0;
    $total = 0;

    while ($row = $result->fetch_assoc()) {
        $index = $row['id']; // Use the question id as the index
        $inputName = "{$postPrefix}_question_$index";
        if (isset($_POST[$inputName])) {
            $userAnswer = $_POST[$inputName];
            if ($userAnswer == $row['correct_answer']) {
                $correct++;
            }
            $total++;
        }
    }

    return ['correct' => $correct, 'total' => $total];
}

$skeletalResults = checkAnswers($con, 'skeletal_questions', 'skeletal');
$muscularResults = checkAnswers($con, 'muscular_questions', 'muscular');
$cardiovascularResults = checkAnswers($con, 'cardiovascular_questions', 'cardiovascular');
$nervousResults = checkAnswers($con, 'nervous_questions', 'nervous');

$con->close();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quiz Results</title>
    <link rel="stylesheet" href="../Project/CSS//check_answers.css"> 
</head>
<body>
    <div class="container">
        <h1>Results</h1>
        <div class="system-section">
            <h2>Skeletal System</h2>
            <p>Correct Answers: <?php echo $skeletalResults['correct']; ?> out of <?php echo $skeletalResults['total']; ?></p>
        </div>
        <div class="system-section">
            <h2>Muscular System</h2>
            <p>Correct Answers: <?php echo $muscularResults['correct']; ?> out of <?php echo $muscularResults['total']; ?></p>
        </div>
        <div class="system-section">
            <h2>Cardiovascular System</h2>
            <p>Correct Answers: <?php echo $cardiovascularResults['correct']; ?> out of <?php echo $cardiovascularResults['total']; ?></p>
        </div>
        <div class="system-section">
            <h2>Nervous System</h2>
            <p>Correct Answers: <?php echo $nervousResults['correct']; ?> out of <?php echo $nervousResults['total']; ?></p>
        </div>
    </div>
</body>
</html>
