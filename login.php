<?php 
error_reporting(0);
session_start();
$check = $_SESSION['oturum'];
if ($check==true) {
   header('Location:yönetici_paneli.php');
 } ?>
<!DOCTYPE html>
<html lang="tr" >
<head>
  <meta charset="UTF-8">
  <title>Yorka Tekstil</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<link rel="stylesheet" href="styles/login.css">
<link rel="icon" type="image/x-icon" href="https://media-exp1.licdn.com/dms/image/C4E0BAQFL462ZHj9jgA/company-logo_200_200/0/1650283830184?e=2147483647&v=beta&t=vN-mJcnwbd4XFyvqnGgA_ysj1Pt8yvCeMV7jdbgxz-Q">

</head>
<body>

<br>
<br>
<br>
<br>
<br>

</div>
<div style="border: 3px; border-radius: 5%;" id="login-form-wrap">
  <h2>Giriş</h2>
  <form action="yönetici_paneli.php" id="login-form" method="post">
    <p>
    <input  type="text" id="username" name="username" placeholder="Kullanıcı Adı" ><span></span><span></span>
    </p>
    <p>
    <input type="password" id="password" name="password" placeholder="Parola"><span></span><span></span>
    </p>
    <p>
    
    <input  type="submit" id="login" value="Giriş" >
    <br>
    <br>
    <br>
    
    </p>
  </form>
  

<style>

body{

  background-color: rgb(255, 244, 156);
  
}

</style>
  
</body>
</html>
