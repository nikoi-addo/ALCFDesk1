<?php
  include 'dbcon.php';

  if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    //Initializing variables
    $usercode = $registrar = $fname = $lname = $email = $phone = $location = $dob = $dateattend1  = $dateattend2  = $dateattend3 = $source = $expectations = "";
    $attend1 = $attend2 = $attend3 = "no";
    // $usercode = $_POST['usercode'];
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
    if ($_POST['attend'] == "fri") {
      $attend1 = "yes";
    }
    if ($_POST['attend'] == "sat") {
      $attend2 = "yes";
    }
    if ($_POST['attend'] == "sun") {
      $attend3 = "yes";
    }

    $sql_insertregdetails = "INSERT INTO eventregistration (fname, lname, email, phone, location, dob, attend1, attend2, attend3, source, expectations, registrar) VALUES('$fname', '$lname', '$email', '$phone', '$location', '$dob', '$attend1', '$attend2', '$attend3', '$source', '$expectations', '$registrar')";
    $success_insertregdetails = mysqli_query($link, $sql_insertregdetails);
    if ($success_insertregdetails) {
      $lastid = mysqli_insert_id($link);
      header("location:../index.php?rsp=0&regcode=". $lastid);
    }
    else {
      header("location:../index.php?rsp=1");
    }

  }
 ?>
