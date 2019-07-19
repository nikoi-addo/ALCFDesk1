<?php
include 'dbcon.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
  $username = $_POST['username'];
  $username = mysqli_real_escape_string($link, $username);
  $cpassword = $_POST['cpassword'];
  $cpassword = md5($cpassword);
  $sql_checkusername = "SELECT * FROM admin WHERE username = '$username'";
  $sql_insertadmin = "INSERT INTO admin(username, password) VALUES('$username', '$cpassword')";
  $success_checkusername = mysqli_query($link, $sql_checkusername);

  if ($success_checkusername->num_rows > 0) {
    header("location:../register.php?ufail");
  }
  else {
    $success_insertadmin = mysqli_query($link, $sql_insertadmin);
    if ($success_insertadmin) {
      session_start();
      $_SESSION['uname'] = $username;
      $_SESSION['loggedin'] = true;
      header("location:../index.php");
    }
    else {
      echo mysqli_error($link);
    }
  }

}
?>
