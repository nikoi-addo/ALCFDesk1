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
            <div class="input-group">
                <a href="javascript:void(0)" class="text-center m-b-40"><img src="assets/images/logo-icon.png" alt="Home" /><br/><img src="assets/images/logo-text.png" alt="Home" /></a>
                <!-- multistep form -->
                <form id="msform">
                    <!-- progressbar -->
                    <ul id="eliteregister">
                        <li class="active">Code Check</li>
                        <li>Info Check</li>
                        <li>Response</li>
                    </ul>
                    <!-- fieldsets -->
                    <fieldset>
                        <h2 class="fs-title">Please Enter Code for Verification</h2>
                        <h3 class="fs-subtitle">For Today's Date : <?php echo date("l"); ?></h3>
                        <div id="vempty" class=""></div>
                        <input type="text" name="code" placeholder="ALC code..." id="vcode" required/>
                        <input type="button" onclick="uattendance()" name="verify" class="next action-button" value="Verify" id="vsubmit"/>
                    </fieldset>
                    <fieldset>
                        <h2 class="fs-title">Details</h2>
                        <div id="vempty1" class=""></div>
                        <!-- <input type="text" name="name" placeholder="Name" /> -->
                        <div id="response">

                        </div>

                        <input type="button" name="previous" class="previous action-button" value="Previous" id="vprevious" onclick=""/>
                        <input type="button" name="submit" class="next action-button" value="Submit" id="vsubmit1"/>
                    </fieldset>
                    <fieldset>
                        <h2 class="fs-title">Check Successful</h2>
                        <h3 id="fs-subtitle1"></h3>
                        <a href="codecheck.php"><div class="alert alert-info">Verify New<div></a>
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
