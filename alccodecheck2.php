<?php
  include 'ops/dbcon.php';
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="assets/images/favicon.png">
    <title>TTOC Registration Portal</title>
    <!-- page css -->
    <link href="assets/node_modules/register-steps/steps.css" rel="stylesheet">
    <link href="dist/css/pages/register3.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="dist/css/style.min.css" rel="stylesheet">

</head>

<body class="skin-default card-no-border">
    <!-- ============================================================== -->
    <!-- Preloader - style you can find in spinners.css -->
    <!-- ============================================================== -->
    <div class="preloader">
        <div class="loader">
            <div class="loader__figure"></div>
            <p class="loader__label">The Temple of Charis</p>
        </div>
    </div>
    <!-- ============================================================== -->
    <!-- Main wrapper - style you can find in pages.scss -->
    <!-- ============================================================== -->
    <section id="wrapper" class="step-register">
        <div class="register-box">
                <a href="javascript:void(0)" class="text-center m-b-40"><img src="assets/images/logo-icon.png" alt="Home" /><br/><img src="assets/images/logo-text.png" alt="Home" /></a>
                <!-- multistep form -->
                <form id="msform" action="ops/verifycode.php" method="post">
                    <ul id="eliteregister">
                        <li class="active">Code Check</li>
                        <li class="active">Info Check</li>
                        <li>Response</li>
                    </ul>
                    <fieldset>
                        <h2 class="fs-title">Personal Details</h2>
                        <h3 class="fs-subtitle">We will never sell it</h3>
                         <?php
                        $usercode = $_GET['uc'];
                        $sql_codeverify = "SELECT * FROM eventregistration WHERE usercode = '$usercode' ";
                        $success_codeverify = mysqli_query($link, $sql_codeverify);
                        if ($success_codeverify->num_rows > 0) {
                          $row = $success_codeverify->fetch_assoc();
                        ?>
                        <input type="hidden" value="<?php echo $usercode;?>" name="usercode">
                        <input id="name" type="text" placeholder="<?php echo $row['fname'] . " " .$row['lname']; ?>" required disabled/>
                        <input type="text" id="email" placeholder="<?php echo $row['email']; ?>" required disabled/>
                        <input type="text" id="tel" placeholder="<?php echo $row['phone']; ?>" required disabled/>
                        <input type="text" id="dob" placeholder="<?php echo $row['dob']; ?>" disabled/>
                        <input type="text" id="location" placeholder="<?php echo $row['location']; ?>" disabled/>
                        <select class="form-control custom-select" data-placeholder="What Day is Today?" tabindex="1" name="source">
                        <option value="cat0">What Day is Today?</option>
                        <option value="cat1" <?php if ($row['attend1'] == "yes") { echo "disabled"; } if ($row['dattend1'] == "no") {echo "disabled";} ?>>Friday 27th September 2019 <?php if ($row['attend1'] == "yes") { echo "Verified"; } if ($row['dattend1'] == "no") {echo "Not Registered";} ?></option>
                        <option value="cat2" <?php if ($row['attend2'] == "yes") { echo "disabled"; } if ($row['dattend2'] == "no") {echo "disabled";} ?>>Saturday 28th September 2019 <?php if ($row['attend2'] == "yes") { echo "Verified"; } if ($row['dattend2'] == "no") {echo "Not Registered";} ?></option>
                        <option value="cat3" <?php if ($row['attend3'] == "yes") { echo "disabled"; } if ($row['dattend3'] == "no") {echo "disabled";} ?>>Sunday 29th September 2019 <?php if ($row['attend3'] == "yes") { echo "Verified"; } if ($row['dattend3'] == "no") {echo "Not Registered";} ?></option>

                        </select>
                        <span>Click to <span>Verify !!!<input type="checkbox" name="checkbox0"></span></span>
                        <?php
                        }
                        ?>

                        <button type="submit" id="vsubmit" class="btn btn-info btn-block " style="color:white;" name="attendcheck">Verify</button>
                    </fieldset>
                </form>
                <div class="clear"></div>
            </div>
        </div>
    </section>
    <script src="dist/js/user.js"></script>
    <!-- ============================================================== -->
    <!-- End Wrapper -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- All Jquery -->
    <!-- ============================================================== -->
    <script src="assets/node_modules/jquery/jquery-3.2.1.min.js"></script>
    <!-- Bootstrap tether Core JavaScript -->
    <script src="assets/node_modules/popper/popper.min.js"></script>
    <script src="assets/node_modules/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- Menu Plugin JavaScript -->
    <script src="assets/node_modules/register-steps/jquery.easing.min.js"></script>
    <script src="assets/node_modules/register-steps/register-init.js"></script>
    <script type="text/javascript">
    $(function() {
        $(".preloader").fadeOut();
    });
    $(function() {
        $('[data-toggle="tooltip"]').tooltip()
    });
    // ==============================================================
    // Login and Recover Password
    // ==============================================================
    $('#to-recover').on("click", function() {
        $("#loginform").slideUp();
        $("#recoverform").fadeIn();


    });
    </script>
</body>



</html>
