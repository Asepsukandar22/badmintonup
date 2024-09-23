<div class="container-fluid">

<!-- Content Row -->
<div class="row">

    <!-- Earnings (Monthly) Card Example -->
    <div class="col-xl-3 col-md-6 mb-4">
        <div class="card border-left-primary shadow h-100 py-2">
            <div class="card-body">
                <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                        <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                            Data Lapangan</div>
                            <?php
                            include '../inc/koneksi.php';
                            $sql = mysqli_query($koneksi,"SELECT COUNT(id_lap) FROM lapangan");
                            $data7 = mysqli_fetch_array($sql);
                             ?>
                        <div class="h5 mb-0 font-weight-bold text-gray-800"><?=$data7[0];?></div>
                    </div>
                    <div class="col-auto">
                        <i class="fas fa-calendar fa-2x text-gray-300"></i>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-xl-3 col-md-6 mb-4">
        <div class="card border-left-danger shadow h-100 py-2">
            <div class="card-body">
                <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                        <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                            Data user</div>
                            <?php
                            include '../inc/koneksi.php';
                            $sql = mysqli_query($koneksi,"SELECT COUNT(id_user) FROM user");
                            $data2 = mysqli_fetch_array($sql);
                             ?>
                        <div class="h5 mb-0 font-weight-bold text-gray-800"><?=$data2[0];?></div>
                    </div>
                    <div class="col-auto">
                        <i class="fas fa-user fa-2x text-gray-300"></i>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Earnings (Monthly) Card Example -->
    <div class="col-xl-3 col-md-6 mb-4">
        <div class="card border-left-success shadow h-100 py-2">
            <div class="card-body">
                <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                        <div class="text-xs font-weight-bold text-success text-uppercase mb-1">
                            Member</div>
                            <?php
                            include '../inc/koneksi.php';
                            $sql = mysqli_query($koneksi,"SELECT COUNT(id_member) FROM member");
                            $data3 = mysqli_fetch_array($sql);
                             ?>
                        <div class="h5 mb-0 font-weight-bold text-gray-800"><?=$data3[0];?></div>
                    </div>
                    <div class="col-auto">
                        <i class="fas fa-users fa-2x text-gray-300"></i>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Earnings (Monthly) Card Example -->
    <div class="col-xl-3 col-md-6 mb-4">
        <div class="card border-left-info shadow h-100 py-2">
            <div class="card-body">
                <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                        <div class="text-xs font-weight-bold text-info text-uppercase mb-1">Data Barang
                        </div>
                        <?php
                            include '../inc/koneksi.php';
                            $sql = mysqli_query($koneksi,"SELECT COUNT(id_barang) FROM barang");
                            $data4 = mysqli_fetch_array($sql);
                             ?>
                        <div class="row no-gutters align-items-center">
                            <div class="col-auto">
                                <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800"><?=$data4[0];?></div>
                            </div>
                            <div class="col">
                                <div class="progress progress-sm mr-2">
                                    <div class="progress-bar bg-info" role="progressbar"
                                        style="width: 50%" aria-valuenow="50" aria-valuemin="0"
                                        aria-valuemax="100"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-auto">
                    <i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <div class="col-lg-12 mb-4">
        <!-- Illustrations -->
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h3 class="m-0 font-weight-bold text-primary text-center">Boking Hari Ini</h3>
            </div>
            <div class="card-body">
                <div class="text-center">
                <table class="table">
  <thead>
    <tr>
      <th scope="col">No</th>
      <th scope="col">Waktu</th>
      <th scope="col">Nama Custemer</th>
      <th scope="col">Jam Booking</th>
      <th scope="col">Status Boking</th>
      
    </tr>
  </thead>
  <tbody>
                                    <?php
                                    $datenow = date('Y-m-d');  
                                    $query =mysqli_query($koneksi,"SELECT * FROM schedule_list INNER JOIN lapangan ON schedule_list.id_lap = lapangan.id_lap WHERE tanggal_booking='$datenow'");
                                    $no=1;
                                    while($data = mysqli_fetch_array($query)){
                                    ?>	
                                        <tr>
                                        <td><?php echo $no; ?></td>
                                        <td><?php echo $data['no_lap']?></td>
                                        <td><?php echo $data['title']?></td>
                                        
                                        <td><?php echo date('H:i:s', strtotime($data['start_time']));?></td>
                                        
                                        <td>
                                            <?php
                                            if($data['status_boking'] == "Boking"){
                                                ?>
                                                  <a href="#" class="btn btn-danger btn-sm"><?php echo $data['status_boking']?></a>
                                                <?php
                                            }else{
                                            $status = $data['status_boking'];
                                            if ($status == "Pending") {
                                                ?>
                                                <form method="POST" >
                                                <input type="hidden" name="id" value="<?php echo $data[0]; ?>">
                                                <input type="submit"  name="status" value="Pending">
                                                </form>
                                                <?php
                                            }else{
                                                ?>
                                                <button class="btn btn-danger btn-sm"><?php echo $data['status_boking']?></button>
                                                <?php
                                            }
                                        }
                                            ?>
                                            
                                        </td>
                                       
                                           
                                            </td>
                                           
                                        </<tr>
                                        <?php
                                                $no++;
                                            }	
                                                ?>
                                    </tbody>
</table> 
                </div>
              
            </div>
        </div>

    </div>
</div>

</div>