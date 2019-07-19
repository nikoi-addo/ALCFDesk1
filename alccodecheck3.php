<?php include 'ops/dbcon.php'; ?>
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
            <div class="">
                <a href="javascript:void(0)" class="text-center m-b-40"><img src="assets/images/logo-icon.png" alt="Home" /><br/><img src="assets/images/logo-text.png" alt="Home" /></a>
                <!-- multistep form -->
                <form id="msform">
                  <ul id="eliteregister">
                      <li class="active">Code Check</li>
                      <li class="active">Info Check</li>
                      <li class="active">Response</li>
                  </ul>
                    <fieldset>
                      <?php
                      $usercode = $_GET['uc'];
                      echo "$usercode";
                      $concusercode = substr("$usercode", 5);
                      $sql_codeverify = "SELECT fname, lname FROM eventregistration WHERE id = $concusercode ";
                      $success_codeverify = mysqli_query($link, $sql_codeverify);
                      if ($success_codeverify->num_rows > 0) {
                        $row = $success_codeverify->fetch_assoc();
                        if (isset($_GET['tck']) && isset($_GET['uc'])) {
                        ?>
                          <h2 class="fs-title">Check Successful</h2>
                          <h3 id="fs-subtitle1" class="alert alert-success"><?php echo $row['fname']. " ". $row['lname']; ?>  has already been verified!!!</h3>
                      <?php
                        }
                        elseif (isset($_GET['notck']) && isset($_GET['uc'])){
                      ?>
                        <h2 class="fs-title">Check Successful</h2>
                        <h3 id="fs-subtitle1" class="alert alert-danger"><?php echo $row['fname']. " ". $row['lname']; ?>  was not verified kindly try again!!!</h3>
                      <?php
                        }
                        elseif (isset($_GET['uc'])) {
                      ?>
                      <h2 class="fs-title">Check Successful</h2>
                      <h3 id="fs-subtitle1" class="alert alert-success"><?php echo $row['fname']. " ". $row['lname']; ?>  has been verified successfully!!!</h3>
                      <?php
                        }
                      } ?>

                      <div class="row">
                        <div class="col-md-3">
                        </div>
                        <div class="col-md-6">
                          <a href="alccodecheck1.php"><div id="vsubmit" class="btn btn-info btn-block" style="color:white;">Verify New</div></a>
                        </div>
                      </div>
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
