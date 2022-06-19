<!-- Header -->
    <div class="header bg-info pb-6">
      <div class="container-fluid">
        <div class="header-body">
          <div class="row align-items-center py-4">
            <div class="col-lg-6 col-7">
              <h6 class="h2 text-white d-inline-block mb-0">My Team</h6>
              <nav aria-label="breadcrumb" class="d-none d-md-inline-block ml-md-4">
                <ol class="breadcrumb breadcrumb-links breadcrumb-dark">
                  <li class="breadcrumb-item"><a href="#"><i class="fas fa-home"></i></a></li>
                  <li class="breadcrumb-item"><a href="#">Admin</a></li>
                  <li class="breadcrumb-item active" aria-current="page">My Team</li>
                </ol>
              </nav>
            </div>
          </div>
        </div>
      </div>
    </div>
<!-- Page content -->
    <div class="container-fluid mt--6">
      <!-- Table -->
      <div class="row">
        <div class="col">
          <div class="card">
            <!-- Card header -->
            <div class="card-header">
              <h3 class="mb-0">Students</h3>
              <p class="text-sm mb-0">
              </p>
              <div class="float-right">
           <button type="button" class="btn btn-success btn-sm" data-toggle="modal" data-target="#add">+</button>
                    </div>
            </div>

            <div class="table-responsive py-4">
              <table class="table table-striped table-bordered">
                               <thead>
                                        <tr>
                                          <th>S.No.</th>
                                            <th>Name</th>
                                            <th>Username</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                                      <tbody>
                                       <?php 
                                       
                                   $sql="SELECT * FROM `tbl_students_master`";
                                   $i=0;
                                       $result = mysqli_query($call_config->con, $sql);
                                               $i=0;
                                         foreach ($result as $row) {
                                               ?>
                                   
                                    <tr>
                                      <td><?=++$i?></td>
                                      <td><?= $row["sname"]?></td>
                                      <td><?=$row["username"]?></td>
                                      <td><a class="btn btn-danger btn-sm" href="<?= $call_config->base_url()."application/modal/admin/delete_student.php?id=".$row['member_id'] ?>">Delete</a></td>
                                        </tr>
                                   
                                  
        
</div>
</div>
</div>
<!-- END Edit MODAL -->
<?php } ?>

                                   </tbody>
                            </table>
            </div>
          </div>
          <!-- START ADD MODAL -->
<!-- Modal -->
<div class="modal fade text-left" id="add" tabindex="-1" role="dialog" aria-labelledby="myModalLabel17" aria-hidden="true">
<div class="modal-dialog modal-lg" role="document">
<div class="modal-content">
<div class="modal-header btn-success">
<h4 class="modal-title" id="myModalLabel17">Add A Student</h4>
<button type="button" class="close" data-dismiss="modal" aria-label="Close">
<span aria-hidden="true">&times;</span>
</button>
</div>
<form method="POST" action="<?php echo $call_config->base_url() ?>application/modal/admin/add_student.php">
<div class="modal-body">

 
  <div class="form-group">  
<label for="tax" class="control-label">Name</label>
<input type="text" required="" name="sname" class="form-control">
</div>

  <div class="form-group">  
<label for="tax" class="control-label">Username</label>
<input type="text" required="" name="username" class="form-control">
</div>

   
  <div class="form-group">  
<label for="tax" class="control-label">Password</label>
<input type="text" required="" maxlength="10" name="password" class="form-control">
</div>
</div>
<div class="modal-footer">
<button type="button" class="btn grey btn-secondary" data-dismiss="modal">Close</button>
<button type="submit" class="btn btn-danger" name="submit">Save</button>
</form>
</div>
</div>
</div>
</div>
</div>
</div>
<!-- END ADD MODAL -->
