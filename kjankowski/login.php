<?php 
session_start();
include_once $_SERVER['DOCUMENT_ROOT'].'/kjankowski/config.php'; 

$query = "SELECT * FROM `admin`";
$result = mysqli_query($conn,$query);
$admin = mysqli_fetch_all($result, MYSQLI_ASSOC);


$login = @$_POST['login'];
$password = @$_POST['password'];
$logout = @$_POST['logout'];
echo $login;
echo $logout;

if($login == $admin[0]['login'] && $password == $admin[0]['password']) {
    $_SESSION['logged'] = true;
    header("Location: admin-general.php");
    
} elseif($logout == "logout"){
    header("Location: template");
}
else {
    header("Location: admin_login.php");
}



?>