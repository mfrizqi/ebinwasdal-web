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
  <link href='<?php echo base_url(); ?>asset/Logo/Logo PKM Tanah Abang.png' rel='shortcut icon'>

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

  <link href="<?php echo base_url(); ?>asset/plugins/select2/select2.min.css" rel="stylesheet">

  <!-- <link href="<?php echo base_url(); ?>asset/css/style.css" rel="stylesheet"> -->
  <script src="<?php echo base_url(); ?>asset/js/jquery.min.js"></script>

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
</head>
<!-- ADD THE CLASS layout-top-nav TO REMOVE THE SIDEBAR. -->
<body class="hold-transition skin-blue layout-top-nav">
<div class="wrapper">

  <header class="main-header">
    <nav class="navbar navbar-static-top">
      <div class="container">
        <div class="navbar-header pull-left">
                <a href="<?php echo site_url('Home') ?>" class="logo">
                <!-- mini logo for sidebar mini 50x50 pixels -->
                <span class="logo-mini"><b>Kapten</b></span>
                <!-- logo for regular state and mobile devices -->
              <span class="logo-lg">
              <img src="<?php echo base_url(); ?>asset/Logo/Logo PKM Tanah Abang.png" width="35" height="35">
              <img src="<?php echo base_url(); ?>asset/Logo/Logo DKI.png" width="30" height="30">
              <b><i> Kapten </i></b>
                </span>
              </a>
        </div>
        <?php if ($this->session->Pk_MsGroupMenu_Id == 1) { ?>
<!-- Navbar Right Menu -->
        <div class="navbar-custom-menu">
          <ul class="nav navbar-nav">
            <!-- Messages: style can be found in dropdown.less-->
            <li>
              <!-- Menu toggle button -->
              <a href="<?php echo site_url('User') ?>" class="btn btn-success">Reg Kader
              </a>
            </li>
            <!-- /.messages-menu -->
            
          </ul>
        </div>
        <!-- /.navbar-custom-menu -->
      <?php }?>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse pull-right" id="navbar-collapse">
        </div>
        <!-- /.navbar-collapse -->
        <!-- Navbar Right Menu -->
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
                  <?php echo $this->session->MsUser_StaffName. ' - '.$this->session->MsGroupMenu_Name; ?>
                </p>
              </li>                
              <li class="user-footer">
                <div class="pull-left">
                  <a href="#" onclick="UbahPassword()" class="btn btn-default btn-flat">Ubah Password</a>
                </div>
                <div class="pull-right">
                  <a href="<?php echo site_url('Home/Logout') ?>" class="btn btn-default btn-flat">Sign out</a>
                </div>
              </li>
            </ul>
          </li>
          <!-- Control Sidebar Toggle Button -->
        </ul>
      </div>
        <!-- /.navbar-custom-menu -->
      </div>
      <!-- /.container-fluid -->
    </nav>
  </header>
  <!-- Full Width Column -->
    <input type="hidden" id="SessionPk_MsUser_Id" value="<?php echo $this->session->Pk_MsUser_Id ?>" />
  <!-- Content Wrapper. Contains page content -->
  <?php echo $template['content']; ?>
  <!-- /.content-wrapper -->
  <footer class="main-footer">
    <div class="container">
      <div class="pull-right hidden-xs">
        <b>Version</b> 2.3.7
      </div>
      <strong>Copyright &copy; 2019 <a href="https://www.instagram.com/nugraharahmat.h/?utm_source=ig_profile_share&igshid=1q4yijc5jzeog" target="_blank">Nugraha Rahmat H</a>.</strong> All rights
      reserved.
    </div>
    <!-- /.container -->
  </footer>
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

<script src="<?php echo base_url(); ?>asset/plugins/datepicker/bootstrap-datepicker.js"></script>

<!-- Select2 -->
<script src="<?php echo base_url(); ?>asset/plugins/select2/select2.full.min.js"></script>

<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script> -->

<script src="https://cdn.datatables.net/buttons/1.5.1/js/dataTables.buttons.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.5.1/js/buttons.flash.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.32/vfs_fonts.js"></script>
<script src="https://cdn.datatables.net/buttons/1.5.1/js/buttons.html5.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.5.1/js/buttons.print.min.js"></script>
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
    $('#sTglTerima').datepicker({
      autoclose: true,
      format: 'yyyy-mm-dd'//check change
    });
  $(function () {
    $("#example1").DataTable(
        {
          "scrollX": true,
          dom: 'Bfrtip',
          buttons: [
            'copy', 'excel', 'print'
        ]
        }
      );
    $("#example2").DataTable(
        {
          "scrollX": true,
          dom: 'Bfrtip',
          buttons: [
            'copy', 'excel', 'print'
        ]
        }
      );
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
