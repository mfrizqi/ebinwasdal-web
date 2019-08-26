<!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Monev SPM
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Binwasdal</a></li>
        <li class="active">Input Monev</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-xs-12">
          <form action="#" id="form">
          <div class="box">
            <div class="box-header">
              Tahun <select name="tahun">
                <option value="2019">2019</option>
              </select>
              <a  href= "#" class="btn btn-primary btn-sm" role="button">
                  <span class="fa fa-grid" aria-hidden="true"></span> Tampilkan</a>

                <div class="pull-right">
                  <button type="button" onclick="simpan()" class="btn btn-warning btn-sm" id="Save">Simpan</button>
                  <a  href= "#" onclick="loadview()" class="btn btn-danger btn-sm" id="batal" role="button">
                  <span class="fa fa-grid" aria-hidden="true"></span> Batal</a>
                  <a  href= "#" onclick="loadedit()" id="edit" class="btn btn-info btn-sm" role="button">
                  <span class="fa fa-grid" aria-hidden="true"></span> Edit</a>
                  
                </div>

            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <div id="monev"></div>
              <div id="buttons"></div>

            </div>
            <!-- /.box-body -->
          </div>

          <!-- /.box -->
        </div>
      </form>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->
  </div>
  
  <!-- /.content-wrapper -->

  <script type="text/javascript" src="<?php echo base_url(); ?>asset/js/monevspm/monevspm.js"></script>

