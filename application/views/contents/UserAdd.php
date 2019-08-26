<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
              <a href="<?php echo site_url('User') ?>" class="btn btn-info" role="button">
                  <span class="fa fa-reply" aria-hidden="true"></span> Kembali</a>
        User
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Tables</a></li>
        <li >Tambah User</li>
        <li class="active">Tambah User</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-xs-12">
          <div class="box">
            <div class="box box-warning">
            <div class="box-header with-border">
              <h3 class="box-title">Tambah User</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
            <?php echo form_open_multipart('User/Simpan');?>
              <form role="form">
                <!-- text input -->
                <div class="form-group">
                  <label>Username</label>
                  <input type="text" name="MsUser_NIP" class="form-control" placeholder="Enter ...">
                </div>
                <div class="form-group">
                  <label>Nama Staff</label>
                  <input type="text" name="MsUser_StaffName" class="form-control" placeholder="Enter ...">
                </div>
                <div class="form-group">
                  <label>No. Telpon</label>
                  <input type="text" name="MsUser_EmailAddress" id="MsUser_EmailAddress" class="form-control" placeholder="Enter ...">
                </div>
                <div class="form-group">
                  <label>Password</label>
                  <input type="text" name="MsUser_Password" id="MsUser_Password" class="form-control" placeholder="Enter ...">
                </div>
                <div class="form-group">
                <label>Group Menu</label>
                <select name="Fk_MsGroupMenu_Id" required="required" class="form-control select2" style="width: 100%;">
                  <option value="" disabled="disabled" selected="selected">- Pilih -</option>
                  <?php $no=1; foreach($GetDataGrpMenu->result() as $row): ?>
                  <option value="<?php echo $row->Pk_MsGroupMenu_Id; ?>"><?php echo $row->MsGroupMenu_Name; ?></option>
                  <?php endforeach; ?>
                </select>
              </div>
                <!-- textarea
                <div class="form-group">
                  <label>Textarea</label>
                  <textarea class="form-control" rows="3" placeholder="Enter ..."></textarea>
                </div>
                -->

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
    document.getElementById("MsUser_Password").value = "";
    }
    window.onload = init;
  </script>
  