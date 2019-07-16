<?php
include 'dbcon.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
  $username = $_POST['username'];
  $username = mysqli_real_escape_string($link, $username);
  $password = $_POST['password'];
  $password = md5($password);
  $sql_checkusername = "SELECT * FROM admin WHERE username = '$username' AND password = '$password'";
  $success_checkusername = mysqli_query($link, $sql_checkusername);

  if ($success_checkusername->num_rows < 1) {
    header("location:../login.php?ufail=".$username);
  }
  else {
    header("location:../index.php");
  }


}
?>
