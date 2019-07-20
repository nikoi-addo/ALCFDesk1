<?php
  session_start();
  include 'ops/dbcon.php';
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
    <link href="assets/node_modules/wizard/steps.css" rel="stylesheet">
    <!--alerts CSS -->
    <link href="assets/node_modules/sweetalert2/dist/sweetalert2.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="dist/css/style.min.css" rel="stylesheet">

</head>

<body class="horizontal-nav skin-megna fixed-layout">
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
    <div id="main-wrapper">
        <!-- ============================================================== -->
        <!-- Topbar header - style you can find in pages.scss -->
        <!-- ============================================================== -->
        <header class="topbar">
            <nav class="navbar top-navbar navbar-expand-md navbar-dark">
                <!-- ============================================================== -->
                <!-- Logo -->
                <!-- ============================================================== -->
                <div class="navbar-header">
                    <a class="navbar-brand" href="index.php">
                        <!-- Logo icon --><b>
                            <!--You can put here icon as well // <i class="wi wi-sunset"></i> //-->
                            <!-- Dark Logo icon -->
                            <img src="assets/images/logo-icon.png" alt="homepage" class="dark-logo" />
                            <!-- Light Logo icon -->
                            <img src="assets/images/logo-light-icon.png" alt="homepage" class="light-logo" />
                        </b>
                        <!--End Logo icon -->
                        <!-- Logo text --><span class="hidden-sm-down">
                         <!-- dark Logo text -->
                         <img src="assets/images/logo-text.png" alt="homepage" class="dark-logo" />
                         <!-- Light Logo text -->
                         <img src="assets/images/logo-light-text.png" class="light-logo" alt="homepage" /></span> </a>
                </div>
                <!-- ============================================================== -->
                <!-- End Logo -->


               
            </nav>
        </header>
        <!-- ============================================================== -->

           <!-- ============================================================== -->
        <aside class="left-sidebar">
            <!-- Sidebar scroll-->
            <div class="scroll-sidebar">
                <!-- Sidebar navigation-->
                <nav class="sidebar-nav">
                    <ul id="sidebarnav">


                      <li> <a class="has-arrow waves-effect waves-dark" href="javascript:void(0)"
                              aria-expanded="false"><i class="icon-note" ></i><span class="hide-menu">Menu
                                 </span></a>
                            <ul aria-expanded="false" class="collapse">
                                <li><a href="index.php">Registration Form</a></li>
                                <li><a href="usertablefri.php">Friday Table</a></li>
                                <li><a href="usertablesat.php">Saturday Table</a></li>
                                <li><a href="usertablesun.php">Sunday Table</a></li>
                                <li><a href="usertable.php">User Tables <b>All Users</a></li>
                                <li><br></li>
                               	<li><a href="logout.php"><b>LOG OUT</b></a></li>
                            </ul>
                      </li>
                      
                       

                    </ul>
                </nav>
                <!-- End Sidebar navigation -->
            </div>
            <!-- End Sidebar scroll-->
        </aside>

        <!-- Page wrapper  -->
        <!-- ============================================================== -->
        <div class="page-wrapper">
            <!-- ============================================================== -->
            <!-- Container fluid  -->
            <!-- ============================================================== -->
            <div class="container-fluid">
                <!-- ============================================================== -->
                <!-- Bread crumb and right sidebar toggle -->
                <!-- ============================================================== -->
                <div class="row page-titles">
                    <div class="col-md-5 align-self-center">
                        <h4 class="text-themecolor">The Temple Of Charis Registration Form</h4>
                    </div>
                </div>
                <?php
                  if (isset($_GET['rsp']) && $_GET['rsp'] == 0) {?>
                    <div class="alert alert-success" id="rspalert1">Registration details inserted successfully!<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a><br>Usercode is; <h3><center>ALC00<?php echo $_GET['regcode']; ?></center></h3></div>
                <?php  }
                  elseif (isset($_GET['rsp']) && $_GET['rsp'] == 1) {?>
                    <div class="alert alert-danger" id="rspalert">Unable to insert registration details. Try again!<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a></div>
                <?php }
                ?>



                <!-- ============================================================== -->
                <!-- End Bread crumb and right sidebar toggle -->
                <!-- ============================================================== -->
                <!-- ============================================================== -->
                <!-- Start Page Content -->

                <!-- Validation wizard -->
                <div class="row" id="validation">
                    <div class="col-12">
                        <div class="card wizard-content">
                            <div class="card-body">
                                <h4 class="card-title">Attendance Form</h4>
                                <h6 class="card-subtitle">Please fill every space required</h6>
                                <form action="ops/eventreg.php" method="post" class="validation-wizard wizard-circle">
                                    <!-- Step 1 -->
                                    <h6>Step 1</h6>
                                    <section>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="firstName"> First Name : <span class="danger">*</span> </label>
                                                    <input type="text" class="form-control required" id="firstName" name="firstName"> </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="lastName"> Last Name : <span class="danger">*</span> </label>
                                                    <input type="text" class="form-control required" id="lastName" name="lastName"> </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="emailAddress"> Email Address : <span class="danger">*</span> </label>
                                                    <input type="email" class="form-control required" id="Address" name="emailAddress"> </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="phonenumber">Phone Number :</label>
                                                    <input type="tel" class="form-control" id="Number"name="phonenumber"> </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="location"> Location : <span class="danger">*</span> </label>
                                                    <input type="text" class="form-control required" id="location" name="location"> </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="date">Date of Birth :</label>
                                                    <input type="date" class="form-control" id="date" name="dateofbirth"> </div>
                                            </div>
                                        </div>
                                    </section>
                                    <!-- Step 2 -->
                                    <h6>Step 2</h6>
                                    <section>
                                        <div class="row">
                                            <div class="col-md-12">
                                              <div class="form-group">
                                                   <label class="control-label">Which Day will you be attending for?</label><br>
                                                     <input type="radio" name="attend" value="fri"> <b>Friday</b> 27th September 2019<br>
                                                     <input type="radio" name="attend" value="sat"> <b>Saturday</b> 28th September 2019<br>
                                                     <input type="radio" name="attend" value="sun"> <b>Sunday</b> 29th September 2019
                                              </div>
                                                <div class="form-group">
                                                    <label class="control-label">How did you hear about the program?</label>
                                                    <select class="form-control custom-select" data-placeholder="How did you hear about the program?" tabindex="1" name="source">
                                                    	<option value="cat0">Select Options</option>
                                                    	<option value="cat1">Sunday Service</option>
                                                        <option value="cat2">Flyer</option>
                                                        <option value="cat3">Fellowship Meetings</option>
                                                        <option value="cat4">Social Media</option>
                                                        <option value="cat5">Through A Friend</option>
                                                        <option value="cat6">Through Pastor Roy King</option>
                                                        <option value="cat7">Through My Pastor</option>
                                                        <option value="cat8">Leaders Meeting</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <input type="hidden" name="registrar" value="<?php echo $_SESSION['uname']; ?>">
                                            <br><div class="col-md-12">
                                                <div class="form-group">
                                                    <label for="shortDescription">What are your expectations for the program :</label>
                                                    <textarea name="shortdescription" id="shortDescription3" rows="6" class="form-control"></textarea>
                                                </div>
                                            </div>
                                            <input type="submit" value="Submit" role="menuitem" style="font-size:20px; background-color: blue; color: white;"/>
                                        </div>
                                    </section>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- ============================================================== -->
                <!-- End PAge Content -->
                <!-- ============================================================== -->
                <!-- ============================================================== -->

            </div>
            <!-- ============================================================== -->
            <!-- End Container fluid  -->
            <!-- ============================================================== -->
        </div>
        <!-- ============================================================== -->
        <!-- End Page wrapper  -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- footer -->
        <!-- ============================================================== -->
        <footer class="footer">
            © 2019 TTOC Technical Team
        </footer>
        <!-- ============================================================== -->
        <!-- End footer -->
        <!-- ============================================================== -->
    </div>
    <!-- JavaScript code to close the alert after 10 seconds -->
    <script>
      setTimeout(closealert, 10000);

      function closealert(){
        $("#rspalert").alert("close");
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
    <!-- slimscrollbar scrollbar JavaScript -->
    <script src="dist/js/perfect-scrollbar.jquery.min.js"></script>
    <!--Wave Effects -->
    <script src="dist/js/waves.js"></script>
    <!--Menu sidebar -->
    <script src="dist/js/sidebarmenu.js"></script>
    <!--stickey kit -->
    <script src="assets/node_modules/sticky-kit-master/dist/sticky-kit.min.js"></script>
    <script src="assets/node_modules/sparkline/jquery.sparkline.min.js"></script>
    <!--Custom JavaScript -->
    <script src="dist/js/custom.min.js"></script>
    <script src="assets/node_modules/moment/moment.js"></script>
    <!-- This Page JS -->
    <script src="assets/node_modules/wizard/jquery.steps.min.js"></script>
    <script src="assets/node_modules/wizard/jquery.validate.min.js"></script>
    <script src="assets/node_modules/sweetalert/sweetalert.min.html"></script>
    <script>
        //Custom design form example
        $(".tab-wizard").steps({
            headerTag: "h6",
            bodyTag: "section",
            transitionEffect: "fade",
            titleTemplate: '<span class="step">#index#</span> #title#',
            labels: {
                finish: "Next"
            },
            onFinished: function (event, currentIndex) {
                swal("Form Submitted!", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed lorem erat eleifend ex semper, lobortis purus sed.");

            }
        });


        var form = $(".validation-wizard").show();

        $(".validation-wizard").steps({
            headerTag: "h6",
            bodyTag: "section",
            transitionEffect: "fade",
            titleTemplate: '<span class="step">#index#</span> #title#',
            labels: {
                finish: "Next"
            },
            onStepChanging: function (event, currentIndex, newIndex) {
                return currentIndex > newIndex || !(3 === newIndex && Number($("#age-2").val()) < 18) && (currentIndex < newIndex && (form.find(".body:eq(" + newIndex + ") label.error").remove(), form.find(".body:eq(" + newIndex + ") .error").removeClass("error")), form.validate().settings.ignore = ":disabled,:hidden", form.valid())
            },
            onFinishing: function (event, currentIndex) {
                return form.validate().settings.ignore = ":disabled", form.valid()
            },
            onFinished: function (event, currentIndex) {
                swal("Form Submitted!", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed lorem erat eleifend ex semper, lobortis purus sed.");
            }
        }), $(".validation-wizard").validate({
            ignore: "input[type=hidden]",
            errorClass: "text-danger",
            successClass: "text-success",
            highlight: function (element, errorClass) {
                $(element).removeClass(errorClass)
            },
            unhighlight: function (element, errorClass) {
                $(element).removeClass(errorClass)
            },
            errorPlacement: function (error, element) {
                error.insertAfter(element)
            },
            rules: {
                email: {
                    email: !0
                }
            }
        })
    </script>
</body>
</html>
<?php }
  else {
    header("location:login.php?lfail");
  }
 ?>
