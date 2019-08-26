<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="container">
    <section class="content-header">
      <h1>
        SDK
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Rekomendasi</a></li>
        <li class="active">SDK</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-xs-12">
          <div class="box box-solid ">
            <div class="box-header">
              <a  href= "#" onclick='tambah()' class="btn btn-primary" role="button">
                  <span class="fa fa-plus" aria-hidden="true"></span> Tambah Baru</a>

              <div class="pull-right" id="buttons"></div>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <table id="example5" class="table table-bordered table-hover">
                <thead>
                
                <tr>
                  <th rowspan="2">Aksi</th>  
                  <th rowspan="2">Jenis SDK</th>
                  <th rowspan="2">Keterangan</th>
                  <th colspan="4" class="text-center">Alur Proses</th>
                </tr>
                <tr>
                  <th>1. SDK <i class="fa fa-arrow-right"></i></th> 
                  <th>2. TU <i class="fa fa-arrow-right"></i></th> 
                  <th>3. Kasudin <i class="fa fa-arrow-right"></i></th> 
                  <th>4. TU <i class="fa fa-check-square-o"></i></th> 
                </tr>
                </thead>
                <tbody>
                </tbody>
              </table>
              <div id="buttons"></div>
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
  </div>
  <!-- /.content-wrapper -->

  <!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Tambah Baru</h4>
      </div>
      <div class="modal-body">
        <form action="#" id="form">
          <div class="box">
            <div class="box-header">
                  Input SDK
            </div>
            <!-- /.box-header -->
            <div class="box-body">              
                <input type="hidden" name="id">
                <div class="form-group">
                  <label>Jenis SDK</label>
                  <select name="jenis" class="form-control">
                    <option value="">- Pilih - </option>
                    <option value="Bidan">Bidan </option>
                    <option value="Dokter/Dokter Gigi">Dokter/Dokter Gigi </option>
                    <option value="Dokter Spesialis">Dokter Spesialis </option>
                    <option value="Apotek">Apotek </option>
                    <option value="Alkes">Alkes </option>
                  </select>
                </div>
                <div class="form-group">
                  <label>Keterangan</label>
                  <textarea name="keterangan" class="form-control"></textarea>
                </div>
            </div>
          </div>
        <div class="box">
            <div class="box-header">
                  Alur Proses
            </div>
            <!-- /.box-header -->
            <div class="box-body">             
                <div class="form-group">
                  <label>1. SDK</label>
                  <div class="input-group date">
                  <div class="input-group-addon">
                    <i class="fa fa-calendar"></i>
                  </div>
                  <input type="text" name="sdk1" class="form-control pull-right" value="" id="datepicker3">
                </div>
                </div>
                <div class="form-group">
                  <label>2. TU</label>
                  <div class="input-group date">
                  <div class="input-group-addon">
                    <i class="fa fa-calendar"></i>
                  </div>
                  <input type="text" name="tu2" class="form-control pull-right" value="" id="datepicker">
                </div>
                </div>
                <div class="form-group">
                  <label>3. Kasudin</label>
                  <div class="input-group date">
                  <div class="input-group-addon">
                    <i class="fa fa-calendar"></i>
                  </div>
                  <input type="text" name="kasudin3" class="form-control pull-right" value="" id="datepicker1">
                </div>
                </div>
                <div class="form-group">
                  <label>4. TU</label>
                  <div class="input-group date">
                  <div class="input-group-addon">
                    <i class="fa fa-calendar"></i>
                  </div>
                  <input type="text" name="tu4" class="form-control pull-right" value="" id="datepicker2">
                </div>
                </div>
            </div>
          </div>
        </div>
                <div class="modal-footer">
                  <div id="valid"></div>
                  <button type="button" onclick="simpan()" class="btn btn-success" id="Save">Simpan</button>
                  <button type="button" class="btn btn-danger" data-dismiss="modal">Batal</button>
                </div>
              </form>
              </div>
            </div>
            </div>
          </div>


<div class="modal fade" id="myModalremove" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Hapus</h4>
      </div>
      <div class="modal-body">

        <form action="#" id="formdel">
        Apakah anda yakin ingin menghapus data ini?
        <input type="hidden" name="id">

                <div class="modal-footer">
                  <button type="button" class="btn btn-primary" data-dismiss="modal" id="delete">Hapus</button>
                  <button type="button" class="btn btn-danger" data-dismiss="modal">Batal</button>
                </div>
              </form>
              </div>
            </div>
            </div>
          </div>

<script type="text/javascript" src="<?php echo base_url(); ?>asset/js/rekomendasi/sdk.js"></script>

