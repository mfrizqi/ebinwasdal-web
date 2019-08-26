<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>E - Binwasdal</title>
  <link href='<?php echo base_url(); ?>asset/Logo/Logo DKI.png' rel='shortcut icon'>

  <!-- CSS -->
  <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
  <link rel="stylesheet" href="<?php echo base_url(); ?>asset/assets/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="<?php echo base_url(); ?>asset/assets/font-awesome/css/font-awesome.min.css">
  <link rel="stylesheet" href="<?php echo base_url(); ?>asset/assets/css/form-elements.css">
  <link rel="stylesheet" href="<?php echo base_url(); ?>asset/assets/css/style.css">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

  <link rel="apple-touch-icon-precomposed" sizes="144x144" href="<?php echo base_url(); ?>asset/assets/ico/apple-touch-icon-144-precomposed.png">
  <link rel="apple-touch-icon-precomposed" sizes="114x114" href="<?php echo base_url(); ?>asset/assets/ico/apple-touch-icon-114-precomposed.png">
  <link rel="apple-touch-icon-precomposed" sizes="72x72" href="<?php echo base_url(); ?>asset/assets/ico/apple-touch-icon-72-precomposed.png">
  <link rel="apple-touch-icon-precomposed" href="<?php echo base_url(); ?>asset/assets/ico/apple-touch-icon-57-precomposed.png">


</head>

<!-- <body background="<?php echo base_url(); ?>asset/Logo/1.jpg"> -->

  <!-- Top content -->
  <div class="top-content">
    <div class="inner-bg">
      <div class="container">
        <div class="row">
          
        </div>
        <!-- <div class="row">
          <div class="col-sm-8 col-sm-offset-2 text">
            <img src="<?php echo base_url(); ?>asset/Logo/Logo DKI.png" width="100" height="100" class="img-rounded">
        <img src="<?php // echo base_url(); ?>asset/Logo/logo_sudinkes.png" width="100" height="100" class="img-rounded">
            <h1><strong>E - Binwasdal</strong> </h1>
            <h1>Suku Dinas Kesehatan Jakarta Pusat</h1>
            <div class="description">
              <p>
                Jl. Percetakan Negara Jakarta Pusat, Jakarta
              </p>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-sm-6 col-sm-offset-3 form-box">
            <div class="form-top">
              <div class="form-top-left">
                <h3>User Login</h3>
                <p>silahkan login menggunakan Username dan password</p>
              </div>
              <div class="form-top-right">
                <i class="fa fa-key"></i>
              </div>
            </div>
            <div class="form-bottom">
              <?php echo form_open_multipart('Login/Home'); ?>
              <form id="form-login" class="login-form" name="login" method="post" action="cek_login.php" onSubmit="return validasi(this)">
                <div class="form-group">
                  <label class="sr-only" for="form-username">Username</label>
                  <input type="text" name="UserID" placeholder="Username..." class="form-username form-control" id="form-username">
                </div>
                <div class="form-group">
                  <label class="sr-only" for="form-password">Password</label>
                  <input type="password" name="Password" placeholder="Password..." class="form-password form-control" id="form-password">
                </div>
                <?php echo $Error_Msg ?>
                <button type="submit" class="btn">Login</button>
              </form>
              <?php echo form_close(); ?>
            </div>
          </div>
        </div>

        <div class="row"> -->
          <!-- <div class="col-sm-6 col-sm-offset-3 social-login">
            <strong>Copyright &copy; 2019 <a href="https://www.instagram.com/nugraharahmat.h/?utm_source=ig_profile_share&igshid=1q4yijc5jzeog" target="_blank">Nugraha Rahmat H</a>.</strong> All rights
            reserved. -->
          </div>
        </div>
      </div>
    </div>

  </div>


  <!-- Javascript -->
  <script src="<?php echo base_url(); ?>asset/assets/js/jquery-1.11.1.min.js"></script>
  <script src="<?php echo base_url(); ?>asset/assets/bootstrap/js/bootstrap.min.js"></script>
  <script src="<?php echo base_url(); ?>asset/assets/js/jquery.backstretch.min.js"></script>
  <script src="<?php echo base_url(); ?>asset/assets/js/scripts.js"></script>

  <!--[if lt IE 10]>
            <script src="assets/assets/js/placeholder.js"></script>
        <![endif]-->

</body>

</html>