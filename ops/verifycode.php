<?php
include 'dbcon.php';
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
  $usercode = $_POST['usercode'];
  $sql_codeverify = "SELECT * FROM eventregistration WHERE usercode = '$usercode' ";
  $success_codeverify = mysqli_query($link, $sql_codeverify);
  if ($success_codeverify->num_rows > 0) {
    $row = $success_codeverify->fetch_assoc();
    ?>
    <div id="name"><?php echo $row['fname'] . " " .$row['lname']; ?></div>

    <div id="email"><?php echo $row['email']; ?></div>

    <div id="tel"><?php echo $row['phone']; ?></div>

    <div id="location"><?php echo $row['location']; ?></div>

    <div id="dob"><?php echo $row['dob']; ?></div>

    <div class="custom-control custom-checkbox mr-sm-2 mb-3" id="checkbox">
      <div class="" id="regupdtresponse"></div>
      <input type="checkbox" class="custom-control-input custom-checkbox mr-sm-2 mb-3" id="checkbox0" onclick="regupdate()" value="check">
      <label class="custom-control-label" for="checkbox0">Check : This person is Present !</label>
    </div>
    <?php
  }
  else {
    echo "Code does not exit<br>";
  }
}


?>
