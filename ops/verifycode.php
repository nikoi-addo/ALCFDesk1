<?php
include 'dbcon.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {

  if (isset($_POST['codecheck'])) {
    $usercode = $_POST['usercode'];
    $sql_codeverify = "SELECT * FROM eventregistration WHERE usercode = '$usercode' ";
    $success_codeverify = mysqli_query($link, $sql_codeverify);
    if ($success_codeverify->num_rows > 0) {
      header("location:../alccodecheck2.php?uc=".$usercode);
    }
    else {
      header("location:../alccodecheck1.php?fail");
    }
  }

  if (isset($_POST['attendcheck'])) {
    $usercode = $_POST['usercode'];
    $sql_regupdate = "UPDATE eventregistration SET attend1 = 'yes' WHERE usercode = '$usercode'";
    $success_regupdate = mysqli_query($link, $sql_regupdate);
    if ($success_regupdate) {
      header("location:../alccodecheck3.php?uc=".$usercode);
    }
  }
}
?>
