<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Login</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<link rel="stylesheet" href="style_login.css">

</head>
<body>
<!-- partial:index.partial.html -->
<div id="login-form-wrap">
    <form class="form-signin" action="process_login.php" method="post">
        <h2>Log In</h2>
        <form id="login-form">
            <p>
            <input type="email" id="email" name="txtEmail" placeholder="Email Address" required autofocus><i class="validation"><span></span><span></span></i>
            </p>
            <p>
            <input type="password" id="password" name="txtPass" placeholder="Password" required><i class="validation"><span></span><span></span></i>
            </p>
            <?php
            if(isset($_GET['error'])){
            echo "<h5 style='color:red'> {$_GET['error']} </h5>";
            }
            ?>       
            <p>
            <input type="submit" name="btnSignIn" id="login" value="Login">
            </p>
        </form>
    <div id="create-account-wrap">
        <p>Not a member ?  <a href="signup.php">Create Account</a><p>
    </div>
    </form>
  
</div>
  
</body>
</html>
