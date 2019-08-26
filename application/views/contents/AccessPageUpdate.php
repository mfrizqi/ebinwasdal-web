<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
              <a href="<?php echo site_url('GroupMenu') ?>" class="btn btn-info" role="button">
                  <span class="fa fa-reply" aria-hidden="true"></span> Kembali</a>
        Access Page
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Tables</a></li>
        <li >Group Menu</li>
        <li class="active">Access Page</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-xs-12">
          <div class="box">
            <div class="box box-warning">
            <div class="box-header with-border">
              <h3 class="box-title">Access Page Update</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
            <?php echo form_open_multipart('GroupMenu/SimpanAccess');?>
              <form role="form">
                <!-- text input -->
                <input type="text" name="PkID" value="<?php echo $PKId; ?>" hidden>
                <div class="form-group">
                  <label>Nama Group</label>
                  <input type="text" class="form-control" value="<?php echo $GroupName; ?>" disabled>
                </div>
                <div class="form-group">
                  <label>Dekripsi</label>
                  <input type="text" class="form-control" value="<?php echo $Descipsi; ?>" disabled>
                </div>

            <div class="box-header with-border">
              <h3 class="box-title">List Page</h3>
            </div>
              <div class="row">
              <div class="col-md-4">  
                
               <div class="box box-info box-solid ">
                  <div class="box-header">
                        <span class="glyphicon glyphicon-add" aria-hidden="true"></span> Barang & Jasa</a>
                </div>
                <!-- /.box-header -->
                <div class="box-body">          
                <table class="table table-bordered table-hover">
                <tr>
                  <td><div class="checkbox"><label><input type="checkbox" value="UsulanView" name="UsulanView" <?php echo $UsulanView; ?>> Usulan</label></div></td>
                </tr>
                <tr>
                  <td><div class="checkbox"><label><input type="checkbox" value="PerencanaanView" name="PerencanaanView" <?php echo $PerencanaanView; ?>> Perencanaan</label></div></td>
                </tr>
                <tr>
                  <td width="60%"><div class="checkbox"><label><input type="checkbox" value="PengadaanView" name="PengadaanView" <?php echo $PengadaanView ?>> Pengadaan</label></div></td>
                </tr>
                <tr>
                  <td width="60%"><div class="checkbox"><label><input type="checkbox" value="GudangView" name="GudangView" <?php echo $GudangView ?>> Gudang</label></div></td>
                </tr>
                <tr>
                  <td width="60%"><div class="checkbox"><label><input type="checkbox" value="KeuanganView" name="KeuanganView" <?php echo $KeuanganView ?>> Keuangan</label></td>
                </tr>
                <tr>
                  <td><div class="checkbox"><label><input type="checkbox" value="LaporanView" name="LaporanView"> Laporan</label></div></td>
                </tr>
                </table>
              </div>
              </div>
              </div>
                <div class="col-md-4">
          <div class="box box-info box-solid ">
                  <div class="box-header">
                        <span class="glyphicon glyphicon-add" aria-hidden="true"></span> Pemeliharaan</a>
                </div>
                <!-- /.box-header -->
                <div class="box-body">
                <table class="table table-bordered table-hover">
                <tr>
                  <td><div class="checkbox"><label><input type="checkbox" value="KerusakanView" name="KerusakanView"> Pengaduan</label></div></td>
                </tr>
                <tr>
                  <td><div class="checkbox"><label><input type="checkbox" value="TindakLanjutView" name="TindakLanjutView"> Tindak Lanjut</label></div></td>
                </tr>

                <tr>
                  <td><div class="checkbox"><label><input type="checkbox" value="PerbaikanView" name="PerbaikanView"> Perbaikan</label></div></td>
                </tr>
                <tr>
                  <td><div class="checkbox"><label><input type="checkbox" value="LaporanView" name="LaporanView"> Laporan</label></div></td>
                </tr>
                </table>
              </div>
              </div>
              </div>
            <div class="col-md-4">  
                
               <div class="box box-info box-solid ">
                  <div class="box-header">
                        <span class="glyphicon glyphicon-add" aria-hidden="true"></span> Persediaan</a>
                </div>
                <!-- /.box-header -->
                <div class="box-body">          
                <table class="table table-bordered table-hover">
                <tr>
                  <td><div class="checkbox"><label><input type="checkbox" value="PersediaanMasterView" name="PersediaanMasterView"  <?php echo $PersediaanMasterView ?>> Master Persediaan</label></div></td>
                </tr>
                <tr>
                  <td><div class="checkbox"><label><input type="checkbox" value="PersediaanMasukView" name="PersediaanMasukView"  <?php echo $PersediaanMasukView ?>> Persediaan Masuk</label></div></td>
                </tr>
                <tr>
                  <td><div class="checkbox"><label><input type="checkbox" value="PersediaanKeluarView" name="PersediaanKeluarView"  <?php echo $PersediaanKeluarView ?>> Persediaan Keluar</label></div></td>
                </tr>               
                <tr>
                  <td><div class="checkbox"><label><input type="checkbox" value="LaporanPersedianView" name="LaporanPersedianView" <?php echo $LaporanPersedianView ?>> Laporan Persediaan</label></div></td>
                </tr>
                </table>
              </div>
              </div>
              </div>
            </div>
              <div class="box-footer">
                <button type="submit" class="btn btn-primary">Simpan</button>
              </div>
              </form>
              <?php echo form_close(); ?>
            </div>
            <!-- /.box-body -->
          </div>
          
               <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->
  </div>

  <script type="text/javascript">
    function init() {
    // Clear forms here
    document.getElementById("MsUser_EmailAddress").value = "";
    }
    window.onload = init;
  </script>
  