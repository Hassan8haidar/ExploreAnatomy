    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="../Project/CSS/Signup.css" rel="stylesheet">
        
        <title>Sign Up</title>
    </head>
    <body>
        <form method="POST" action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>">
        <div class="alert" id="alertMessage"></div>
            <fieldset>
                <legend>Sign up:</legend>

                <div class="name">
                    <div id="fn">
                        <label for="fname">First name:</label>
                        <input type="text" id="fname" name="fname">
                    </div>
                    <div id="ln">
                        <label for="lname">Last name:</label>
                        <input type="text" id="lname" name="lname">
                    </div>
                </div>

                <label for="email">Email:</label>
                <input type="email" id="email" name="email">

                <label for="password">Password:</label>
                <input type="password" id="password" name="password">

                <label for="date">Date of Birth:</label>
                <input type="date" id="date" name="dateOfBirth">

                <p>Have An Account? <button id="login" name="login" type="button">Login</button></p>
                <button id="signup" name="signup" type="submit">Signup</button>
            </fieldset>
        </form>
        
        <?php
            include "config.php";
            $alertMessage = "";
            
        if($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['signup']))
        {
            if(empty($_POST['fname']) || empty($_POST['lname']) || empty($_POST['email']) || empty($_POST['password']) || empty($_POST['dateOfBirth']))
            {
            // echo "<script type ='text/javascript' >" . " alert ('Please fill the data'); </script>";
            $alertMessage = 'please fill in the data';
            }
            else {
                //echo "<script type ='text/javascript' >" . " alert ('Hiiiiii'); </script>";
                $fn = $_POST['fname'];
                $ln = $_POST['lname'];
                $e = $_POST['email'];
                $p = $_POST['password'];
                $dob = $_POST['dateOfBirth'];

                $sql = "insert into members(first_name, last_name, email, password, date_of_birth) values('$fn', '$ln', '$e', '$p', '$dob')";
                $result = mysqli_query($con, $sql);
                $rows = mysqli_affected_rows($con);
                if($rows > 0) {
                    echo "<script type ='text/javascript' >" . " alert ('Added') </script>";
                }
                else {
                    echo "<script type ='text/javascript' >" . " alert ('Not Added') </script>";
                }
                header("Location: " . htmlspecialchars($_SERVER['PHP_SELF']));
                exit;
            }
        }
        ?>
        <script>
        document.addEventListener('DOMContentLoaded', function() {
            var alertMessage = "<?php echo $alertMessage; ?>";// Assign the value of the PHP variable $alertMessage to a JavaScript variable
            if (alertMessage) {// checks if the message is not empty
                var alertDiv = document.getElementById('alertMessage');
                alertDiv.textContent = alertMessage;
                alertDiv.classList.add('show-alert');
                //the classlist provides methods to add, remove, and toggle css classes
                //so hom l "show-alert" class byinzed 3al div w bisie 3ndo class tene esmo show-alert w howe la2ino after l class l awal bl css
                //byimshe li fi w bi8atti 3al li ablo li howe l .alert
                //so hon bas 3am nzid l class 3ala l div w by default howe li byemshe cause since both have same specificity (msh mitl eno id 3ndo higher speicifity than class)
                //w since both have l same speicifity, li ta7t l tene 3ndo l precedence bikun
            }
        });

        var loginButton = document.getElementById('login');
        loginButton.addEventListener('click', function() {
            window.location.href = 'Login.php';
        });

        </script>

    </body>
    </html>
