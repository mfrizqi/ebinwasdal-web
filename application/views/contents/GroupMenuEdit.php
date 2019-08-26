<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
              <a href="<?php echo site_url('GroupMenu') ?>" class="btn btn-info" role="button">
                  <span class="fa fa-reply" aria-hidden="true"></span> Kembali</a>
        Group Menu
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Tables</a></li>
        <li >Group Menu</li>
        <li class="active">Edit Group Menu</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-xs-12">
          <div class="box">
            <div class="box box-warning">
            <div class="box-header with-border">
              <h3 class="box-title">Edit Group Menu</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
            <?php echo form_open_multipart('GroupMenu/SimpanEdit');?>
              <form role="form">
                <!-- text input -->
                <div class="form-group">
                  <label>Nama Group</label>
                  <input type="hidden" name="Pk_MsGroupMenu_Id" value="<?php echo $GetDataID->Pk_MsGroupMenu_Id ?>">
                  <input type="text" name="MsGroupMenu_Name" value="<?php echo $GetDataID->MsGroupMenu_Name ?>" required="required" class="form-control" placeholder="Enter ...">
                </div>
                <div class="form-group">
                  <label>Dekripsi</label>
                  <input type="text" name="MsGroupMenu_Description" value="<?php echo $GetDataID->MsGroupMenu_Description ?>" required="required" class="form-control" placeholder="Enter ...">
                </div>
                <div class="form-group">
                <label>Group Menu</label>
                <select name="MsGroupMenu_IsActive" required="required" class="form-control select2" style="width: 100%;">
                  <option value="1" <?php echo ($GetDataID->MsGroupMenu_IsActive=='1') ? 'selected': ''?> >Aktif</option>
                  <option value="0" <?php echo ($GetDataID->MsGroupMenu_IsActive=='0') ? 'selected': ''?>>Non Aktif</option>
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
    }
    window.onload = init;
  </script>
  