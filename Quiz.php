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

function getRandomQuestions($con, $table, $limit = 4) {
    $sql = "SELECT id, question, answer1, answer2, answer3, answer4, correct_answer FROM $table ORDER BY RAND() LIMIT $limit";
    $result = $con->query($sql);

    $questions = [];
    while ($row = $result->fetch_assoc()) {
        $questions[] = $row;
    }
    return $questions;
}

$skeletalQuestions = getRandomQuestions($con, 'skeletal_questions');
$muscularQuestions = getRandomQuestions($con, 'muscular_questions');
$cardiovascularQuestions = getRandomQuestions($con, 'cardiovascular_questions');
$nervousQuestions = getRandomQuestions($con, 'nervous_questions');
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quiz</title>
    <link rel="stylesheet" href="../Project/CSS//Quiz.css"> 
    <link rel="stylesheet" href="../Project/CSS/navbar.css">

</head>
<body>
    <nav class="navbar">
        <div class="nav-wrapper">
            <button class="nav-btn">Home</button>
            <button class="nav-btn">Contact Us</button>
            <div class="circle-button">
                <img src="../Project/Images/Anatomy Explorer.png" alt="AE" >
            </div>
            <button class="nav-btn">More Info</button>
            <button class="nav-btn" id="quizButton">Quiz</button>
        </div>
    </nav>    

    <div class="quiz-container">
        <h1>Quiz</h1>
        <form action="check_answers.php" method="post">
            <div class="system-section">
                <h2>Skeletal System</h2>
                <?php foreach ($skeletalQuestions as $question): ?>
                    <div class="question">
                        <p><?php echo $question['question']; ?></p>
                        <?php for ($i = 1; $i <= 4; $i++): ?>
                            <div class="answer">
                                <input type="radio" name="skeletal_question_<?php echo $question['id']; ?>" value="<?php echo $question["answer$i"]; ?>" required>
                                <label><?php echo $question["answer$i"]; ?></label>
                            </div>
                        <?php endfor; ?>
                    </div>
                <?php endforeach; ?>
            </div>

            <div class="system-section">
                <h2>Muscular System</h2>
                <?php foreach ($muscularQuestions as $question): ?>
                    <div class="question">
                        <p><?php echo $question['question']; ?></p>
                        <?php for ($i = 1; $i <= 4; $i++): ?>
                            <div class="answer">
                                <input type="radio" name="muscular_question_<?php echo $question['id']; ?>" value="<?php echo $question["answer$i"]; ?>" required>
                                <label><?php echo $question["answer$i"]; ?></label>
                            </div>
                        <?php endfor; ?>
                    </div>
                <?php endforeach; ?>
            </div>

            <div class="system-section">
                <h2>Cardiovascular System</h2>
                <?php foreach ($cardiovascularQuestions as $question): ?>
                    <div class="question">
                        <p><?php echo $question['question']; ?></p>
                        <?php for ($i = 1; $i <= 4; $i++): ?>
                            <div class="answer">
                                <input type="radio" name="cardiovascular_question_<?php echo $question['id']; ?>" value="<?php echo $question["answer$i"]; ?>" required>
                                <label><?php echo $question["answer$i"]; ?></label>
                            </div>
                        <?php endfor; ?>
                    </div>
                <?php endforeach; ?>
            </div>

            <div class="system-section">
                <h2>Nervous System</h2>
                <?php foreach ($nervousQuestions as $question): ?>
                    <div class="question">
                        <p><?php echo $question['question']; ?></p>
                        <?php for ($i = 1; $i <= 4; $i++): ?>
                            <div class="answer">
                                <input type="radio" name="nervous_question_<?php echo $question['id']; ?>" value="<?php echo $question["answer$i"]; ?>" required>
                                <label><?php echo $question["answer$i"]; ?></label>
                            </div>
                        <?php endfor; ?>
                    </div>
                <?php endforeach; ?>
            </div>

            <button type="submit">Submit</button>
        </form>
    </div>
</body>

<script>
document.addEventListener('DOMContentLoaded', () => {
    const navButtons = document.querySelectorAll('.nav-btn');
    const quizButton = navButtons[navButtons.length - 4];

    quizButton.addEventListener('click', () => {
        window.location.href = 'index.html';
    });
});
document.addEventListener('DOMContentLoaded', () => {
    const navButtons = document.querySelectorAll('.nav-btn');
    const quizButton = navButtons[navButtons.length - 3]; 

    quizButton.addEventListener('click', () => {
        window.location.href = 'contact.html';
    });
});
document.addEventListener('DOMContentLoaded', () => {
    const navButtons = document.querySelectorAll('.nav-btn');
    const quizButton = navButtons[navButtons.length - 1]; 

    quizButton.addEventListener('click', () => {
        window.location.href = 'Signup.php'; 
    });
});
</script>
</html>
