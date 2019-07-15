<?php
  include 'dbcon.php';
  if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $usercode = $_POST['usercode'];
    $sql_regupdate = "UPDATE eventregistration SET attend1 = 'yes' WHERE usercode = '$usercode'";
    $success_regupdate = mysqli_query($link, $sql_regupdate);
    if ($success_regupdate) {
      $sql_extractuname = "SELECT * FROM eventregistration WHERE usercode = '$usercode'";
      $success_extractuname = mysqli_query($link, $sql_extractuname);
      if ($success_extractuname) {
        $row = $success_extractuname->fetch_assoc();
        $uname = $row['fname'] . " " . $row['lname'];
        ?>
        <div class="alert alert-success"><b><?php echo $uname; ?></b> <i>has been Verified succesfully</i></div>
        <?php
      }

      else {
        echo "Loaded";
      }
      // code...
    }
    else {
      echo "plenty";
    }
  }
?>
