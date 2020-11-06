<?php
session_start();
if($_SESSION['logged'] == 0) {
    header("Location: admin_login.php");
}
?>