<!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        User
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Tables</a></li>
        <li class="active">User</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-xs-12">
          <div class="box">
            <div class="box-header">
              <a href="<?php echo site_url('User/Tambah') ?>" class="btn btn-info" role="button">
                  <span class="glyphicon glyphicon-add" aria-hidden="true"></span> Tambah</a>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <table id="example1" class="table table-bordered table-hover">
                <thead>
                
                <tr>
                  <th></th>
                  <th>Username</th> 
                  <th>Nama Staff</th> 
                  <th>No. telpon</th> 
                  <th>Group Menu</th> 
                  <!-- <th>Group Approval</th>  -->
                </tr>
                </thead>
                <tbody>
                <?php $no=1; foreach($GetData->result() as $row): ?>
                <tr>
                  <td><a href="<?php echo site_url('User/Edit/'.$row->Pk_MsUser_Id) ?>" class="btn btn-info btn-xs" role="button">
                  <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span> Edit</a></td>
                  <td><?php echo $row->MsUser_NIP; ?></td>
                  <td><?php echo $row->MsUser_StaffName; ?></td>
                  <td><?php echo $row->MsUser_EmailAddress; ?></td>
                  <td><?php echo $row->MsGroupMenu_Name; ?></td>
                  <!-- <td><?php echo $row->Fk_MsGroupApproval_Id; ?></td> -->
                </tr>
                <?php endforeach; ?>
                </tbody>
                <!--<tfoot>
                <tr>
                  <th>Rendering engine</th>
                  <th>Browser</th>
                  <th>Platform(s)</th>
                  <th>Engine version</th>
                  <th>CSS grade</th>
                </tr>
                </tfoot>-->
              </table>

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
