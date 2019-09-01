
<?php
  session_start();
  if (isset($_SESSION['uname']) && $_SESSION['loggedin'] == true) {
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
            <div class="">
                <a href="javascript:void(0)" class="text-center m-b-40"><img src="assets/images/logo-icon.png" alt="Home" /><br/></a>
                <!-- multistep form -->
                <form id="msform" action="ops/verifycode.php" method="post">
                  <ul id="eliteregister">
                      <li class="active">Code Check</li>
                      <li>Info Check</li>
                      <li>Response</li>
                  </ul>
                    <fieldset>
                        <h2 class="fs-title">Please Enter Code for Verification</h2>
                        <h3 class="fs-subtitle">For Today's Date : <b><?php echo date("l"); ?></b></h3>
                        <?php if (isset($_GET['fail'])): ?>
                          <div class="alert alert-danger">Usercode not correct, Enter new code</div>
                        <?php endif; ?>
                        <input type="text" name="usercode" placeholder="ALC code..." id="vcode" required/>
                        <div class="row">
                          <div class="col-md-3">
                          </div>
                          <div class="col-md-6">
                            <button type="submit" id="vsubmit" class="btn btn-info btn-block" style="color:white;" name="codecheck">Verify</button>
                          </div>

                        </div>
                        <br>
                        <div class="row">
                          <div class="col-md-3">
                          </div>
                          <div class="col-md-6">
                            <a href="table-data.php" class="btn btn-danger btn-block" style="color:white;" name="codecheck">Forgotten ALC Code ?</a>
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
<?php }
  else {
    header("location:login.php?lfail");
  }
 ?>
