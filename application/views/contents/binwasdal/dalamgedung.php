<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <h1>
      Dalam Gedung
    </h1>
    <ol class="breadcrumb">
      <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
      <li><a href="#">Binwasdal</a></li>
      <li class="active">Dalam Gedung</li>
    </ol>
  </section>

  <!-- Main content -->
  <section class="content">
    <div class="row">
      <div class="col-xs-12">
        <div class="box">
          <div class="box-header">
            <a href="#" onclick='tambah()' class="btn btn-primary" role="button">
              <span class="fa fa-plus" aria-hidden="true"></span> Tambah Baru</a>

            <div class="pull-right" id="buttons"></div>
          </div>
          <!-- /.box-header -->
          <div class="box-body">
            <!-- isi dengan kalender -->
            <div id="calendar"></div>


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

<!-- /.content-wrapper -->

<!-- Modal -->
<div class="modal fade bs-example-modal-lg" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Tambah Baru</h4>
      </div>
      <div class="modal-body">
        <form action="#" id="form" multiple>
          <input type="hidden" name="id">
          <div id="dibuatolh"></div>
          <!-- Custom Tabs -->
          <div class="nav-tabs-custom">
            <ul class="nav nav-tabs">
              <li class="active"><a href="#tab_1" data-toggle="tab">Input</a></li>
              <li><a href="#tab_2" data-toggle="tab">Upload Foto</a></li>
            </ul>
            <div class="tab-content">
              <div class="tab-pane active" id="tab_1">
                <div class="form-group">
                  <label>Nama Kegiatan</label>
                  <input type="text" name="kegiatan" class="form-control" required="Tidak boleh kosong">
                </div>
                <div class="form-group">
                  <label>Ruangan</label>
                  <select name="ruangan" class="form-control" required>
                    <option value="">pilih ruangan</option>
                    <option value="Ruangan A">Ruangan Rapat Lantai 2</option>
                    <option value="Ruangan A">Ruangan Rapat Lantai 4</option>
                  </select>
                </div>

                <div class="form-group">
                  <label>Tanggal</label>
                  <div class="input-group date">
                    <div class="input-group-addon">
                      <i class="fa fa-calendar"></i>
                    </div>
                    <input type="text" name="tgl" class="form-control pull-right" id="datepicker">
                  </div>
                </div>
                <!-- time Picker -->
                <div class="bootstrap-timepicker">
                  <div class="form-group">
                    <label>Jam Mulai</label>

                    <div class="input-group">
                      <input type="text" name="waktu" class="form-control timepicker">

                      <div class="input-group-addon">
                        <i class="fa fa-clock-o"></i>
                      </div>
                    </div>
                    <!-- /.input group -->
                  </div>
                  <!-- /.form group -->
                </div>

                <div class="form-group">
                  <label>durasi</label>
                  <input type="text" name="durasi" class="form-control" required="Tidak boleh kosong">
                </div>
                <div class="form-group">
                  <label>Fasilitas</label>
                  <input type="text" name="fasilitas" class="form-control" required="Tidak boleh kosong">
                </div>
                <div class="form-group">
                  <label>Penanggung Jawab</label>
                  <input type="text" name="pj" class="form-control" required="Tidak boleh kosong">
                </div>
                <div class="form-group">
                  <label>Narasumber</label>
                  <input type="text" name="narsum" class="form-control" required="Tidak boleh kosong">
                </div>
                <div class="form-group">
                  <label>Keterangan</label>
                  <textarea name="keterangan" class="form-control" required="Tidak boleh kosong"></textarea>
                </div>
                <!-- Color Picker -->
                <div class="form-group">
                  <label>Pilih warna untuk di Kalender</label>

                  <div class="input-group my-colorpicker2">
                    <input type="text" name="warna" class="form-control" readonly>

                    <div class="input-group-addon">
                      <i id="warna"></i>
                    </div>
                  </div>
                  <!-- /.input group -->
                </div>
                <div class="form-group">
                  <label for="exampleInputFile">Tambahkan Foto < 100kb (Jpg,Jpeg & PNG)</label>
                  <input type="file" id="exampleInputFile" accept="image/*" onchange="ConvertFile();">
                  <input type="hidden" id="img_name" name="img_name">
                  <p class="help-block">Example block-level help text here.</p>
                </div>
              </div>
              <!-- /.tab-pane -->
              <div class="tab-pane" id="tab_2">
                <div id="img_view2"></div>
              </div>
              <!-- /.tab-pane -->
            </div>
            <!-- /.tab-content -->
          </div>
          <!-- nav-tabs-custom -->
          <div class="modal-footer">
            <div id="valid"></div>
            <div id="divSave">
              <button type="button" onclick="remove()" class="btn btn-warning pull-left" id="delete">Hapus</button>
              <button type="button" onclick="simpan()" class="btn btn-success" id="Save">Simpan</button>
              <button type="button" class="btn btn-danger" data-dismiss="modal">Batal</button>
            </div>
            <div id="divdel">
              <div class="modal-footer">
                <p class="pull-left">Apakah anda yakin ingin menghapus data ini?</p>
                <button type="button" class="btn btn-primary" data-dismiss="modal" onclick="removeyes()">Ya</button>
                <button type="button" class="btn btn-danger" onclick="removecancel()">Batal</button>
              </div>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>

<script type="text/javascript" src="<?php echo base_url(); ?>asset/js/binwasdal/dalamgedung.js"></script>