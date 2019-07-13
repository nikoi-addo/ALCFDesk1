<?php
  include 'dbcon.php';

  if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    //Initializing variables
    $usercode = $registrar = $fname = $lname = $email = $phone = $location = $dob = $dateattend1  = $dateattend2  = $dateattend3 = $source = $expectations = "";

    $usercode = $_POST['usercode'];
    $registrar = $_POST['registrar'];
    $registrar = mysqli_real_escape_string($link, $registrar);
    $fname = $_POST['firstName'];
    $fname = mysqli_real_escape_string($link, $fname);
    $lname = $_POST['lastName'];
    $lname = mysqli_real_escape_string($link, $lname);
    $email = $_POST['emailAddress'];
    $email = mysqli_real_escape_string($link, $email);
    $phone = $_POST['phonenumber'];
    $phone = mysqli_real_escape_string($link, $phone);
    $location = $_POST['location'];
    $location = mysqli_real_escape_string($link, $location);
    $dob = $_POST['dateofbirth'];
    $source = $_POST['source'];
    $source = mysqli_real_escape_string($link, $source);
    $expectations = $_POST['shortdescription'];
    $expectations = mysqli_real_escape_string($link, $expectations);
    //Validating Checkboxes for dates
    if (!empty($_POST['dattend1'])) {
      $dattend1 = $_POST['dattend3'];
      $dattend1 = mysqli_real_escape_string($link, $dattend1);
    }
    else {
      $dattend1 = "no";
    }

    if (!empty($_POST['dattend2'])) {
      $dattend2 = $_POST['dattend2'];
      $dattend2 = mysqli_real_escape_string($link, $dattend2);
    }
    else {
      $dattend2 = "no";
    }
    if (!empty($_POST['dattend3'])) {
      $dattend3 = $_POST['dattend3'];
      $dattend3 = mysqli_real_escape_string($link, $dattend3);
    }
    else {
      $dattend3 = "no";
    }

    $sql_insertregdetails = "INSERT INTO eventregistration (fname, lname, email, phone, location, dob, dattend1, dattend2, dattend3, source, expectations, usercode, registrar) VALUES('$fname', '$lname', '$email', '$phone', '$location', '$dob', '$dattend1', '$dattend2', '$dattend3', '$source', '$expectations', '$usercode', '$registrar')";
    $success_insertregdetails = mysqli_query($link, $sql_insertregdetails);
    if ($success_insertregdetails) {
      header("location:../index.php?rsp=0");
    }
    else {
      header("location:../index.php?rsp=1");
    }

  }
 ?>
