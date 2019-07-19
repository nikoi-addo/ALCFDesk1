<?php
include 'dbcon.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
  //To check is usercode exists
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

  //To mark if a user is present for a specific Day
  if (isset($_POST['attendcheck']) && isset($_POST['checkbox0'])) {
    $usercode = $_POST['usercode'];
    $source = $_POST['source'];

    if ($source == "cat1") {
      $sql_regupdate = "UPDATE eventregistration SET attend1 = 'yes' WHERE usercode = '$usercode'";
    }
    else if($source == "cat2"){
      $sql_regupdate = "UPDATE eventregistration SET attend2 = 'yes' WHERE usercode = '$usercode'";
    }
    else if($source == "cat3"){
      $sql_regupdate = "UPDATE eventregistration SET attend3 = 'yes' WHERE usercode = '$usercode'";
    }
    $success_regupdate = mysqli_query($link, $sql_regupdate);
    if ($success_regupdate) {
      header("location:../alccodecheck3.php?uc=".$usercode);
    }
  }
  elseif (!isset($_POST['checkbox0']) && isset($_POST['attendcheck'])) {
    $usercode = $_POST['usercode'];
    header("location:../alccodecheck3.php?notck&uc=". $usercode);
  }
}
?>
