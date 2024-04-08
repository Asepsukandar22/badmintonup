<div class="container-fluid">
                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800">Boking Lapang</h1>
                    <a href="?pg=tambahlapang" class="btn btn-primary  mb-2"> <i
                                class="fas fa-download fa-sm text-white-50"></i> Tambah Lapang</a>
                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Verivikasi Boking </h6>
                            
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>No</th>
                                            <th>Foto</th>
                                            <th>Nama Lapangan</th>
                                            <th>Nama Klub</th>
                                            <th>Jadwal Mulai</th>
                                            <th>Jadwal Selesai</th>
                                            <th>Status</th>
                                            <th>Aksi</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <?php
                                    $query =mysqli_query($koneksi,"SELECT * FROM schedule_list INNER JOIN lapangan ON schedule_list.id_lap = lapangan.id_lap");
                                    $no=1;
                                    while($data = mysqli_fetch_array($query)){
                                    ?>	
                                        <tr>
                                        <td><?php echo $no; ?></td>
                                        <td><?php echo $data['no_lap']?></td>
                                        <td><?php echo $data['title']?></td>
                                        <td><?php echo $data['deskripsi']?></td>
                                        <td><?php echo date('d-M-Y H:i:s', strtotime($data['end_datetime']));?></td>
                                        <td><?php echo date('d-M-Y H:i:s', strtotime($data['start_datetime']));?></td>
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
                                        <td><a href="lapangan/hapus.php?id_lap=<?php echo $data[0]; ?>" onclick="return confirm('Yakin Data Akan Di Hapus?')" class="btn btn-danger btn-sm">Delete</a> 
                                           
                                            </td>
                                           
                                        </<tr>
                                        <?php
                                                $no++;
                                            }	
                                                ?>
                                    </tbody>
                                    <tfoot>
                                        <tr>
                                        <th>No</th>
                                            <th>Foto</th>
                                            <th>Nama Lapangan</th>
                                            <th>Nama Klub</th>
                                            <th>Jadwal Mulai</th>
                                            <th>Jadwal Selesai</th>
                                            <th>Status</th>
                                            <th>Aksi</th>
                                        </tr>
                                       
                                    </tfoot>
                                    
                                </table>
                            </div>
                        </div>
                    </div>
                </div>


<?php

if (isset($_POST['status'])) {
  $id = $_POST['id'];
  if ($_POST['status_boking'] == "Pending") {
  $sql = mysqli_query($koneksi,"UPDATE schedule_list SET status = 'Lunas' WHERE id = '$id'");
  header("location:../index.php?pg=boking");
  }
  else{
   $sql = mysqli_query($koneksi,"UPDATE catatan SET status = 'Sampai' WHERE id_catatan = '$id_catatan'");
   header("location:index.php?pg=dashboard");
  } 
  
}
?>