<?php
if (!isset($this->session->Pk_MsUser_Id)){
    redirect('login/timeout');
}
?>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title><?php echo $template['title']; ?></title>
  <!-- Tell the browser to be responsive to screen width -->
  <link href='<?php echo base_url(); ?>asset/Logo/Logo DKI.png' rel='shortcut icon'>

  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.6 -->
  <link rel="stylesheet" href="<?php echo base_url(); ?>asset/bootstrap/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
  <!-- DataTables -->
  <link rel="stylesheet" href="<?php echo base_url(); ?>asset/plugins/datatables/dataTables.bootstrap.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="<?php echo base_url(); ?>asset/dist/css/AdminLTE.min.css">

  <link rel="stylesheet" href="<?php echo base_url(); ?>asset/plugins/morris/morris.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="<?php echo base_url(); ?>asset/dist/css/skins/_all-skins.min.css">

    <!-- bootstrap datepicker -->
  <link rel="stylesheet" href="<?php echo base_url(); ?>asset/plugins/datepicker/datepicker3.css">

  <link rel="stylesheet" href="<?php echo base_url(); ?>asset/plugins/fullcalendar/fullcalendar.min.css">
  <link rel="stylesheet" href="<?php echo base_url(); ?>asset/plugins/fullcalendar/fullcalendar.print.css" media="print">

  <!-- Bootstrap Color Picker -->
  <link rel="stylesheet" href="<?php echo base_url(); ?>asset/plugins/colorpicker/bootstrap-colorpicker.min.css">
  <!-- Bootstrap time Picker -->
  <link rel="stylesheet" href="<?php echo base_url(); ?>asset/plugins/timepicker/bootstrap-timepicker.min.css">
  <link href="<?php echo base_url(); ?>asset/plugins/select2/select2.min.css" rel="stylesheet">

  <!-- <link href="<?php echo base_url(); ?>asset/css/style.css" rel="stylesheet"> -->
  <script src="<?php echo base_url(); ?>asset/js/jquery.min.js"></script>

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
  
<!--<script type="text/javascript">
    webshims.setOptions('forms-ext', {
        replaceUI: 'auto',
        types: 'number'
    });
    webshims.polyfill('forms forms-ext');
</script>-->

</head>
<body class="hold-transition sidebar-mini skin-yellow-light">
<!-- Site wrapper -->
<div class="wrapper">

  <header class="main-header">
    <!-- Logo -->
    <a href="<?php echo site_url('Home') ?>" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><b>BWD</b></span>
      <!-- logo for regular state and mobile devices -->
    <span class="logo-lg">
    <img src="<?php echo base_url(); ?>asset/Logo/Logo DKI.png" width="30" height="30">
    <b>E </b>-Binwasdal
      </span>
    </a>
    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </a>

      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
          <!-- User Account: style can be found in dropdown.less -->
          <li class="dropdown user user-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <img src="<?php echo base_url(); ?>asset/dist/img/no-user-image.gif" class="user-image" alt="User Image">
              <span class="hidden-xs"><?php echo $this->session->MsUser_StaffName; ?></span>
            </a>
            <ul class="dropdown-menu">
              <!-- User image -->
              <li class="user-header">
                <img src="<?php echo base_url(); ?>asset/dist/img/no-user-image.gif" class="img-circle" alt="User Image">

                <p>
                  <?php echo $this->session->MsUser_StaffName; ?>
                  <small><?php echo $this->session->MsGroupMenu_Name; ?></small>
                  <input type="hidden" id="SessionStaffName" value="<?php echo $this->session->MsUser_StaffName; ?>">
                </p>
              </li>
              <!-- Menu Body -->
              <li class="user-body">
                
              <li class="user-footer">
                <div class="pull-left">
                  <a href="#" onclick="UbahPassword()" class="btn btn-danger btn-flat">Ubah Password</a>
                </div>
                <div class="pull-right">
                  <a href="<?php echo site_url('Home/Logout') ?>" class="btn btn-success btn-flat">Sign out</a>
                </div>
              </li>
            </ul>
          </li>
          <!-- Control Sidebar Toggle Button 
          <li>
            <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
          </li> -->
        </ul>
      </div>
    </nav>
  </header>

  <!-- =============================================== -->

  <!-- Left side column. contains the sidebar -->
  <aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- <!-- Sidebar user panel -->
      <!-- <div class="user-panel">
        <div class="pull-left image">
          <img src="<?php echo base_url(); ?>asset/dist/img/no-user-image.gif" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
          <p><?php echo $this->session->MsUser_StaffName; ?></p>
          <a href="#"><i class="fa fa-circle text-success"></i> <?php echo $this->session->MsGroupMenu_Name; ?></a>
        </div>
      </div> -->
      <!-- search form -->
      <form action="#" method="get" class="sidebar-form">
        <div class="input-group">
          <input type="text" name="q" id="search" class="form-control" placeholder="Search...">
              <span class="input-group-btn">
                <button type="submit" readonly name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                </button>
              </span>
        </div>
      </form>
      <!-- /.search form -->
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu">
        <li class="header">MENU</li>

              <?= $template['partials']['header']; ?>

<!--         <li class="header">Informasi</li>
        <li><a href="#"><i class="fa fa-circle-o text-red"></i> <span>Perencanaan</span></a></li>
        <li><a href="#"><i class="fa fa-circle-o text-yellow"></i> <span>Pengadaan</span></a></li>
        <li><a href="#"><i class="fa fa-circle-o text-aqua"></i> <span>Gudang</span></a></li>
        <li><a href="#"><i class="fa fa-circle-o text-green"></i> <span>Keuangan</span></a></li> -->
      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>

  <!-- =============================================== -->
  <input type="hidden" id="SessionPk_MsUser_Id" value="<?php echo $this->session->Pk_MsUser_Id ?>" />
  <!-- Content Wrapper. Contains page content -->
  <?php echo $template['content']; ?>
  <!-- /.content-wrapper -->

  <footer class="main-footer">
    <div class="pull-right hidden-xs">
      <b>Version</b> 1.0.0
    </div>
    <strong>Copyright &copy; 2018 <a href="https://www.instagram.com/nugraharahmat.h/?utm_source=ig_profile_share&igshid=1q4yijc5jzeog" target="_blank">Nugraha Rahmat H.</a>.</strong>
  </footer>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Create the tabs -->
    <ul class="nav nav-tabs nav-justified control-sidebar-tabs">
      <li><a href="#control-sidebar-home-tab" data-toggle="tab"><i class="fa fa-home"></i></a></li>

      <li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i class="fa fa-gears"></i></a></li>
    </ul>
    <!-- Tab panes -->
    <div class="tab-content">
      <!-- Home tab content -->
      <div class="tab-pane" id="control-sidebar-home-tab">
        <h3 class="control-sidebar-heading">Recent Activity</h3>
        <ul class="control-sidebar-menu">
          <li>
            <a href="javascript:void(0)">
              <i class="menu-icon fa fa-birthday-cake bg-red"></i>

              <div class="menu-info">
                <h4 class="control-sidebar-subheading">Langdon's Birthday</h4>

                <p>Will be 23 on April 24th</p>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <i class="menu-icon fa fa-user bg-yellow"></i>

              <div class="menu-info">
                <h4 class="control-sidebar-subheading">Frodo Updated His Profile</h4>

                <p>New phone +1(800)555-1234</p>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <i class="menu-icon fa fa-envelope-o bg-light-blue"></i>

              <div class="menu-info">
                <h4 class="control-sidebar-subheading">Nora Joined Mailing List</h4>

                <p>nora@example.com</p>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <i class="menu-icon fa fa-file-code-o bg-green"></i>

              <div class="menu-info">
                <h4 class="control-sidebar-subheading">Cron Job 254 Executed</h4>

                <p>Execution time 5 seconds</p>
              </div>
            </a>
          </li>
        </ul>
        <!-- /.control-sidebar-menu -->

        <h3 class="control-sidebar-heading">Tasks Progress</h3>
        <ul class="control-sidebar-menu">
          <li>
            <a href="javascript:void(0)">
              <h4 class="control-sidebar-subheading">
                Custom Template Design
                <span class="label label-danger pull-right">70%</span>
              </h4>

              <div class="progress progress-xxs">
                <div class="progress-bar progress-bar-danger" style="width: 70%"></div>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <h4 class="control-sidebar-subheading">
                Update Resume
                <span class="label label-success pull-right">95%</span>
              </h4>

              <div class="progress progress-xxs">
                <div class="progress-bar progress-bar-success" style="width: 95%"></div>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <h4 class="control-sidebar-subheading">
                Laravel Integration
                <span class="label label-warning pull-right">50%</span>
              </h4>

              <div class="progress progress-xxs">
                <div class="progress-bar progress-bar-warning" style="width: 50%"></div>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <h4 class="control-sidebar-subheading">
                Back End Framework
                <span class="label label-primary pull-right">68%</span>
              </h4>

              <div class="progress progress-xxs">
                <div class="progress-bar progress-bar-primary" style="width: 68%"></div>
              </div>
            </a>
          </li>
        </ul>
        <!-- /.control-sidebar-menu -->

      </div>
      <!-- /.tab-pane -->
      <!-- Stats tab content -->
      <div class="tab-pane" id="control-sidebar-stats-tab">Stats Tab Content</div>
      <!-- /.tab-pane -->
      <!-- Settings tab content -->
      <div class="tab-pane" id="control-sidebar-settings-tab">
        <form method="post">
          <h3 class="control-sidebar-heading">General Settings</h3>

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Report panel usage
              <input type="checkbox" class="pull-right" checked>
            </label>

            <p>
              Some information about this general settings option
            </p>
          </div>
          <!-- /.form-group -->

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Allow mail redirect
              <input type="checkbox" class="pull-right" checked>
            </label>

            <p>
              Other sets of options are available
            </p>
          </div>
          <!-- /.form-group -->

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Expose author name in posts
              <input type="checkbox" class="pull-right" checked>
            </label>

            <p>
              Allow the user to show his name in blog posts
            </p>
          </div>
          <!-- /.form-group -->

          <h3 class="control-sidebar-heading">Chat Settings</h3>

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Show me as online
              <input type="checkbox" class="pull-right" checked>
            </label>
          </div>
          <!-- /.form-group -->

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Turn off notifications
              <input type="checkbox" class="pull-right">
            </label>
          </div>
          <!-- /.form-group -->

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Delete chat history
              <a href="javascript:void(0)" class="text-red pull-right"><i class="fa fa-trash-o"></i></a>
            </label>
          </div>
          <!-- /.form-group -->
        </form>
      </div>
      <!-- /.tab-pane -->
    </div>
  </aside>
  <!-- /.control-sidebar -->
  <!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
  <div class="control-sidebar-bg"></div>
</div>
<!-- ./wrapper -->
<!-- jQuery 2.2.3 -->
<script src="<?php echo base_url(); ?>asset/plugins/jQuery/jquery-2.2.3.min.js"></script>
<!-- Bootstrap 3.3.6 -->
<script src="<?php echo base_url(); ?>asset/bootstrap/js/bootstrap.min.js"></script>

  <script src="<?php echo base_url(); ?>asset/bootstrap/js/notify.js"></script>

<!-- DataTables -->
<script src="<?php echo base_url(); ?>asset/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="<?php echo base_url(); ?>asset/plugins/datatables/dataTables.bootstrap.min.js"></script>
<!-- SlimScroll -->
<script src="<?php echo base_url(); ?>asset/plugins/slimScroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="<?php echo base_url(); ?>asset/plugins/fastclick/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="<?php echo base_url(); ?>asset/dist/js/app.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="<?php echo base_url(); ?>asset/dist/js/demo.js"></script>
<!-- page script -->
<!-- Morris.js charts -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
<!-- bootstrap datepicker -->
<!-- ChartJS 1.0.1 -->
<script src="<?php echo base_url(); ?>asset/plugins/chartjs/Chart.min.js"></script>

<!-- bootstrap color picker -->
<script src="<?php echo base_url(); ?>asset/plugins/colorpicker/bootstrap-colorpicker.min.js"></script>
<script src="<?php echo base_url(); ?>asset/plugins/datepicker/bootstrap-datepicker.js"></script>
<script src="<?php echo base_url(); ?>asset/plugins/timepicker/bootstrap-timepicker.min.js"></script>

<!-- Select2 -->
<script src="<?php echo base_url(); ?>asset/plugins/select2/select2.full.min.js"></script>

<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script> -->

<script src="https://cdn.datatables.net/buttons/1.5.1/js/dataTables.buttons.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.5.1/js/buttons.flash.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.32/vfs_fonts.js"></script>
<script src="https://cdn.datatables.net/buttons/1.5.1/js/buttons.html5.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.5.1/js/buttons.print.min.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.11.2/moment.min.js"></script>
<script src="<?php echo base_url(); ?>asset/plugins/fullcalendar/fullcalendar.min.js"></script>
  <script type="text/javascript">
    $('#openBtn').click(function(){
  
    $('.modal-body').load('Gudang/ModalAdd',function(result){
      $('#myModal').modal({show:true});
  });
  
  
});
  </script>
<script type="text/javascript">
      //Date picker
    $(".select2").select2();

    $('#datepicker').datepicker({
      autoclose: true,
      format: 'yyyy-mm-dd'//check change
    });

    $('#datepicker1').datepicker({
      autoclose: true,
      format: 'yyyy-mm-dd'//check change
    });
    $('#datepicker2').datepicker({
      autoclose: true,
      format: 'yyyy-mm-dd'//check change
    });
    $('#datepicker3').datepicker({
      autoclose: true,
      format: 'yyyy-mm-dd'//check change
    });
    $('#sTglTerima').datepicker({
      autoclose: true,
      format: 'yyyy-mm-dd'//check change
    });

    //Timepicker
    $(".timepicker").timepicker({
      showInputs: false
    });
        //color picker with addon
    $(".my-colorpicker2").colorpicker();
  $(function () {
    oTable = $("#example1").DataTable(
        {
          "paging": false,
        "lengthChange": false,
        "searching": false,
        "ordering": true,
        "info": false,
        "autoWidth": false,
        "scrollX": true
        }
      );
    // var buttons = new $.fn.dataTable.Buttons(oTable, {
    //              buttons: [
    //                {extend : 'excel',
    //                 text: '<span class="fa fa-file-excel-o" aria-hidden="true"></span> Export Excel',
    //                 className: 'btn btn-success btn-sm'}
    //             ]
    //         }).container().appendTo($('#buttons'));
    // $("#example2").DataTable(
    //     {
    //       "scrollX": true,
    //       dom: 'Bfrtip',
    //       buttons: [
    //         'copy', 'excel', 'print'
    //     ]
    //     }
    //   );
    $('#example3').DataTable({
      "paging": false,
      "lengthChange": false,
      "searching": false,
      "ordering": true,
      "info": true,
      "autoWidth": false,
      "scrollX": true
    });
    $("#example4").DataTable(
        {
          "scrollX": true
        }
      );
  });
</script>
<script type="text/javascript">
  $(document).ready( function () {
      $('#table_id').DataTable();
  } );
    var table;
    var flag;
 
 
    function UbahPassword()
    {
      $("#OutputMatch").text('');
      document.getElementById("formpassword").reset();
      $('#myModalpassword').modal('show'); // show bootstrap modal
    //$('.modal-title').text('Add Person'); // Set Title to Bootstrap modal title
    }
    function savepassword()
    {
      var url;
      if(flag == 1)
      {
        url = "<?php echo base_url(); ?>index.php/User/SimpanPassword";
      
 
       // ajax adding data to database
          $.ajax({
            url : url,
            type: "POST",
            data: $('#formpassword').serialize(),
            dataType: "JSON",
            success: function(data)
            {
               //if success close modal and reload ajax table
               $("#OutputMatch").html('<div class="alert alert-info alert-dismissible"><button class="close" aria-hidden="true" type="button" data-dismiss="alert">×</button>Password baru berhasil disimpan</div>');
            },
            error: function (jqXHR, textStatus, errorThrown)
            {
                $("#OutputMatch").html('<div class="alert alert-danger alert-dismissible"><button class="close" aria-hidden="true" type="button" data-dismiss="alert">×</button>Simpan password error</div>');
            }
            
        });
      }
    }

  function MatchPassConfirm()
  {
      var A = document.getElementById("Passwordbaru").value;
      var B = document.getElementById("konfirmPassword").value;

      if (A==B){
        D = '<div class="alert alert-success alert-dismissible"><button class="close" aria-hidden="true" type="button" data-dismiss="alert">×</button>Sesuai</div>';
        flag = 1;
      } else {
        if (B.length > 0)
        D = '<div class="alert alert-danger alert-dismissible"><button class="close" aria-hidden="true" type="button" data-dismiss="alert">×</button>Tidak sesuai</div>';
        else
        D = '';
        
        flag =0;
      }

      $("#OutputMatch").html(D);
  }
</script>

<!-- Modal -->
<div class="modal fade" id="myModalpassword" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header bg-yellow">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Ubah Password</h4>
      </div>
      <div class="modal-body">
      
        <form action="#" id="formpassword">
                <div class="form-group">
                  <label>Password Baru</label>
                  <input type="Password" name="Passwordbaru" id="Passwordbaru" class="form-control pull-right" placeholder="Enter ..." required="Tidak boleh kosong">
                </div>
                <div class="form-group">
                  <label>Konfirmasi Password</label>
                  <input type="Password" name="konfirmPassword" id="konfirmPassword" onkeyup="MatchPassConfirm();" class="form-control" placeholder="Enter ..."  required="required">
                </div>
                <div id="OutputMatch"></div>

                </div>
                <div class="modal-footer">
                  <button type="button" id="btnSave" onclick="savepassword()" class="btn btn-primary">Simpan</button>
                  <button type="button" class="btn btn-danger" data-dismiss="modal">Batal</button>
                </div>
              </form>
              </div>
            </div>
          </div>
</body>
</html>
