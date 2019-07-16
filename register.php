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
    <title>TTOC Registration Form</title>

    <!-- page css -->
    <link href="dist/css/pages/login-register-lock.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="dist/css/style.min.css" rel="stylesheet">



</head>

<body>
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
    <section id="wrapper" class="login-register login-sidebar" style="background-image:url(assets/images/background/login-register.jpg);">
       <div class="login-box card">
           <br> <br> <br> <br> <br> <br> <br> <br>  <div class="card-body">
                <form class="form-horizontal form-material text-center" name="registerform" action="ops/userreg.php" onsubmit="return validpass()" method="post">
                    <a href="javascript:void(0)" class="db"><img src="assets/images/logo-icon.png" alt="Home" /><br/><img src="assets/images/logo-text.png" alt="Home" /></a>
                    <?php
                      if (isset($_GET['ufail'])) {
                      ?>
                        <br><br>
                        <div class="alert alert-danger">Username already exists!!!</div>
                      <?php
                      }
                    ?>
                    <div class="form-group m-t-40">
                        <div class="col-xs-12">
                            <input class="form-control" type="text" required="" placeholder="Username" name="username">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-xs-12">
                            <input class="form-control" type="password" required="" placeholder="Password" name="password">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-xs-12">
                          <div id="vpass" class="">
                          </div>
                            <input class="form-control" type="password" required="" placeholder="Confirm Password" name="cpassword">
                        </div>
                    </div>
                    <div class="form-group text-center m-t-20">
                        <div class="col-xs-12">
                            <button class="btn btn-info btn-lg btn-block text-uppercase btn-rounded" type="submit">Register</button>
                        </div>
                    </div>
                </form>

            </div>
        </div>
    </section>
    <script type="text/javascript">
      function validpass() {
        var x = document.forms["registerform"]["password"].value;
        var y = document.forms["registerform"]["cpassword"].value;
        if (y !== x) {
          document.getElementById('vpass').innerHTML = "Passwords do not match";
          document.getElementById('vpass').getAttributeNode("class").value = "alert alert-danger";
          return false;
        }
      }
    </script>
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
    <!--Custom JavaScript -->
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
