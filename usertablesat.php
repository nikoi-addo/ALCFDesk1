<?php
  session_start();
  include 'ops/dbcon.php';
  if (isset($_SESSION['uname']) && $_SESSION['loggedin'] == true) {
?>
<!DOCTYPE html>
<html lang="en">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- Tell the browser to be responsive to screen width -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<!-- Favicon icon -->
<link rel="icon" type="image/png" sizes="16x16" href="assets/images/favicon.png">
<title>TTOC Registration Form</title>
<link rel="stylesheet" type="text/css"
href="assets/node_modules/datatables.net-bs4/css/dataTables.bootstrap4.css">
<link rel="stylesheet" type="text/css"
href="assets/node_modules/datatables.net-bs4/css/responsive.dataTables.min.css">
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
          <img src="assets/images/logo-light-text.png" class="light-logo" alt="homepage" /></span>
        </a>
      </div>
      <!-- ============================================================== -->
      <!-- End Logo -->
      <!-- ============================================================== -->
     
        </nav>
      </header>
      <!-- ============================================================== -->
      <!-- End Topbar header -->
      <!-- ============================================================== -->
      <!-- ============================================================== -->
      <!-- Left Sidebar - style you can find in sidebar.scss  -->
      <!-- ============================================================== -->
      <aside class="left-sidebar">
        <!-- Sidebar scroll-->
        <div class="scroll-sidebar">
          <!-- Sidebar navigation-->
          <nav class="sidebar-nav">
            <ul id="sidebarnav">


              <li> <a class="has-arrow waves-effect waves-dark" href="index.html"
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
        <!-- ============================================================== -->
        <!-- End Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
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
                <h4 class="text-themecolor">Registered People on Site</h4>
              </div>

            </div>
            <!-- ============================================================== -->
            <!-- End Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- Start Page Content -->
            <!-- ============================================================== -->
            <div class="row">
              <div class="col-12">
                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title">User Registration Table</h4>
                    <h6 class="card-subtitle">Export data to Copy, CSV, Excel, PDF & Print</h6>
                    <div class="table-responsive m-t-40">
                      <table id="example23"
                      class="display nowrap table table-hover table-striped table-bordered"
                      cellspacing="0" width="100%">
                      <thead>
                        <tr>
                          <th>No.</th>
                          <th>Code</th>
                          <th>First Name</th>
                          <th>Last Name</th>
                          <th>Email</th>
                          <th>Phone Number</th>
                          <th>Date of Birth</th>
                          <th>Location</th>
                          <th>Info about program?</th>
                          <th>Expectations</th>

                          <th>Saturday</th>

                          <th>Registrar</th>
                        </tr>
                      </thead>
                      <tbody>
                        <?php
                        //Displaying details of registration from database
                        $sql_eventreglist = "SELECT * FROM eventregistration WHERE attend2 = 'yes'";
                        $success_eventreglist = mysqli_query($link, $sql_eventreglist);
                        if ($success_eventreglist->num_rows > 0) {
                          $i = 1;
                          while ($row = $success_eventreglist->fetch_assoc()) {
                            ?>
                            <tr>
                              <td><?php echo $i; ?></td>
                              <td>ALC000<?php echo $row['id']; ?></td>
                              <td><?php echo $row['fname']; ?></td>
                              <td><?php echo $row['lname']; ?></td>
                              <td><?php echo $row['email']; ?></td>
                              <td><?php echo $row['phone']; ?></td>
                              <?php if ($row['dob'] =="") { $dob = "N/A"; } elseif(!empty($row['dob'])){ $dob = $row['dob']; } ?>
                              <td><?php echo $dob; ?></td>
                              <td><?php echo $row['location']; ?></td>
                              <!-- Assign options to the source -->
                              <?php
                              if ($row['source'] == "cat0") {
                                $sources = "N/A";
                              }
                              if ($row['source'] == "cat1") {
                                $sources = "A member of the church";
                              }
                              if ($row['source'] == "cat2") {
                                $sources = "Social Media";
                              }
                              if ($row['source'] == "cat3") {
                                $sources = "Flyer";
                              }
                              if ($row['source'] == "cat4") {
                                $sources = "Family Friend";
                              }
                              ?>
                              <td><?php echo $sources; ?></td>
                              <?php if ($row['expectations'] == "") { $expectations = "N/A";} elseif(!empty($row['expectations'])) {$expectations = $row['expectations'];} ?>
                              <td><?php echo $expectations; ?></td>
                              <td><?php echo $row['attend2']; ?></td>
                              <td><?php echo $row['registrar']; ?></td>
                            </tr>
                            <?php
                            $i++;
                          }
                        }
                        ?>
                      </tbody>
                      <!-- <tfoot>
                      <tr>
                      <th>No.</th>
                      <th>Code</th>
                      <th>First Name</th>
                      <th>Last Name</th>
                      <th>Email</th>
                      <th>Phone Number</th>
                      <th>Date of Birth</th>
                      <th>Location</th>
                    </tr>
                  </tfoot>
                  <tbody>

                </tbody> -->
              </table>
            </div>
          </div>
        </div>


        <!-- table responsive -->

      </div>
    </div>
    <!-- ============================================================== -->
    <!-- End PAge Content -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- Right sidebar -->
    <!-- ============================================================== -->
    <!-- .right-sidebar -->

    <!-- ============================================================== -->
    <!-- End Right sidebar -->
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
<!-- This is data table -->
<script src="assets/node_modules/datatables.net/js/jquery.dataTables.min.js"></script>
<script src="assets/node_modules/datatables.net-bs4/js/dataTables.responsive.min.js"></script>
<!-- start - This is for export functionality only -->
<script src="cdn.datatables.net/buttons/1.5.1/js/dataTables.buttons.min.js"></script>
<script src="cdn.datatables.net/buttons/1.5.1/js/buttons.flash.min.js"></script>
<script src="cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
<script src="cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.32/pdfmake.min.js"></script>
<script src="cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.32/vfs_fonts.js"></script>
<script src="cdn.datatables.net/buttons/1.5.1/js/buttons.html5.min.js"></script>
<script src="cdn.datatables.net/buttons/1.5.1/js/buttons.print.min.js"></script>
<!-- end - This is for export functionality only -->
<script>
  $(function () {
    $('#myTable').DataTable();
    var table = $('#example').DataTable({
      "columnDefs": [{
        "visible": false,
        "targets": 2
      }],
      "order": [
      [2, 'asc']
      ],
      "displayLength": 25,
      "drawCallback": function (settings) {
        var api = this.api();
        var rows = api.rows({
          page: 'current'
        }).nodes();
        var last = null;
        api.column(2, {
          page: 'current'
        }).data().each(function (group, i) {
          if (last !== group) {
            $(rows).eq(i).before('<tr class="group"><td colspan="5">' + group + '</td></tr>');
            last = group;
          }
        });
      }
    });
    // Order by the grouping
    $('#example tbody').on('click', 'tr.group', function () {
      var currentOrder = table.order()[0];
      if (currentOrder[0] === 2 && currentOrder[1] === 'asc') {
        table.order([2, 'desc']).draw();
      } else {
        table.order([2, 'asc']).draw();
      }
    });
    // responsive table
    $('#config-table').DataTable({
      responsive: true
    });
    $('#example23').DataTable({
      dom: 'Bfrtip',
      buttons: [
      'copy', 'csv', 'excel', 'pdf', 'print'
      ]
    });
    $('.buttons-copy, .buttons-csv, .buttons-print, .buttons-pdf, .buttons-excel').addClass('btn btn-primary mr-1');
  });

</script>
</body>



</html>

<?php }
  else {
    header("location:login.php?lfail");
  }
 ?>
