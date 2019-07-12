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
                    <!-- progressbar -->
                    <ul id="eliteregister">
                        <li class="active">Code Check</li>
                        <li>Info Check</li>
                        <li>Response</li>
                    </ul>
                    <!-- fieldsets -->
                    <fieldset>
                        <h2 class="fs-title">Please Enter Code for Verification</h2>
                        <h3 class="fs-subtitle">For Today's Date : </h3>
                        <input type="text" name="code" placeholder="ALC code..." />

                        <input type="button" name="verify" class="next action-button" value="Verify" />
                    </fieldset>
                    <fieldset>
                        <h2 class="fs-title">Details</h2>
                        <h3 class="fs-subtitle">Information from Database for ALC CODE</h3>
                        <!-- <input type="text" name="name" placeholder="Name" /> -->
                        <div>John Smith</div>
                        <!-- <input type="text" name="Email" placeholder="Email" /> -->
                        <div>jaysmith@smithsonian.com</div>
                        <!-- <input type="text" name="phone" placeholder="Phone" /> -->
                        <div>+233 263192377</div>
                        <!-- <input name="address" placeholder="Address"></input> -->
                        <div>P.O. Box 55, Accra</div>
                        <!-- <input type="text" name="dob" placeholder="Date of Birth" /> -->
                        <div>9th June, 2020</div>
                        <div class="custom-control custom-checkbox mr-sm-2 mb-3">
                        <input type="checkbox" class="custom-control-input custom-checkbox mr-sm-2 mb-3" id="checkbox0" value="check">
                        <label class="custom-control-label" for="checkbox0">Check : This person is Present !</label>
                        </div>

                        <input type="button" name="previous" class="previous action-button" value="Previous" />
                        <input type="button" name="submit" class="next action-button" value="Submit" />
                    </fieldset>
                    <fieldset>
                        <h2 class="fs-title">Check Successful</h2>
                        <h3 class="fs-subtitle">Click Button to Start Again</h3>

                        <input type="submit" name="submit" class="submit action-button" value="Verify New" />
                    </fieldset>
                </form>
                <div class="clear"></div>
            </div>
        </div>
    </section>
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
