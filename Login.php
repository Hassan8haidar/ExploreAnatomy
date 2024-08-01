<!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="../Project/CSS/Login.css" rel="stylesheet">
        <title>Sign Up</title>
    </head>
    <body>
        <form method="POST" action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>">
        <div class="alert" id="alertMessage"></div>
            <fieldset>
                <legend>Log in:</legend>

                <!-- <div class="name">
                    <div id="fn">
                        <label for="fname">First name:</label>
                        <input type="text" id="fname" name="fname">
                    </div>
                    <div id="ln">
                        <label for="lname">Last name:</label>
                        <input type="text" id="lname" name="lname">
                    </div>
                </div>-->

                <label for="email">Email:</label>
                <input type="email" id="email" name="email">

                <label for="password">Password:</label>
                <input type="password" id="password" name="password">

                <!--<p>Have An Account? <button id="login" name="login" type="button">Login</button></p>-->
                <button id="login" name="login" type="submit">Login</button>
            </fieldset>
        </form>
    
        <?php
            include "config.php";
            $alertMessage = "";
            
        if($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['login']))
        {
            if(empty($_POST['email']) || empty($_POST['password']))
            {
            $alertMessage = 'Invalid email or password';
            }
            else {                
                $e = $_POST['email'];
                $p = $_POST['password'];

                $sql = "SELECT * FROM members WHERE email='$e' AND password='$p'";
                $result = mysqli_query($con, $sql);
                $rows = mysqli_affected_rows($con);

                if ($rows > 0) {
                    header("Location: Quiz.php");
                    exit;
                } else {
                    $alertMessage = 'Invalid email or password';
                }
                
                header("Location: " . htmlspecialchars($_SERVER['PHP_SELF']));
                exit;
            }
        }
        ?>
        <script>
        document.addEventListener('DOMContentLoaded', function() {
            var alertMessage = "<?php echo $alertMessage; ?>";
            if (alertMessage) {
                var alertDiv = document.getElementById('alertMessage');
                alertDiv.textContent = alertMessage;
                alertDiv.classList.add('show-alert');

            }
        }); 

        //document.getElementById('login').addEventListener('click', function() {
        //document.querySelector('form').submit();
        //});

        </script>
    </body>
    </html>
