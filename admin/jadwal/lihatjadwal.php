<?php
$id_lap = $_GET['id_lap'];
$query = mysqli_query($koneksi,"SELECT * FROM lapangan WHERE id_lap = '$id_lap' ");
$data = mysqli_fetch_array($query);
?>
<div class="card o-hidden border-0 shadow-lg my-5">
                    <div class="card-body p-0">
                        <!-- Nested Row within Card Body -->
                        <div class="row">
                             <div class="col-lg-12">
                                <div class="p-5">
                                    <div class="text-center">
                                        <h1 class="h4 text-gray-900 mb-4">Jadwal Lapangan <?php echo $data['no_lap']?></h1>
                                    </div>
                                    <form class="user" method="POST">
                                    <input type="date" class="form-control">
                                    <a href="#" class="btn btn-primary mt-2">Cek jadwal</a>
                              <hr>
                              <table class="table">
  <thead>
    <tr>
      <th scope="col">No Thea</th>
      <th scope="col">Jam</th>
      <th scope="col">Harga</th>
      <th scope="col">Durasi Boking</th>
      <th scope="col">Status Boking</th>
      
      
    </tr>
  </thead>
  <tbody>
  <?php
  $query =mysqli_query($koneksi,"SELECT * FROM jadwal INNER JOIN harga ON jadwal.id_harga = harga.id_harga");
  $no=1;
  while($data = mysqli_fetch_array($query)){
  ?>
    <tr>
      <td><?php echo $no; ?></td>
      <td><?php echo $data['jam']?></td>
      <td><?php echo $data['harga']?></td>
      <td><?=$data['jam']?> - <?=$data['jams']?></td>
      <td>
                                            <?php
                                           $query = mysqli_query($koneksi,"SELECT * FROM pemesanan ");
                                           $data2 = mysqli_fetch_array($query);
                                        $stok = $data2['tanggal'];
                                        if ($stok <0) {
                                            ?>
                                            <a href="#" class="btn btn-success btn-sm">Boking</a>
                                            <?php
                                        }else{
                                            ?>
                                             <a href="#" class="btn btn-danger btn-sm">Bloked</a>
                                            <?php
                                        }
                                            ?>
                                            </td>
    </tr>
    <?php
                                                $no++;
                                            }	
                                                ?>
    <tr>
    
  </tbody>
</table> 



                                    </form>
                                    <hr>
                                     </div>
                            </div>
                        </div>
                    </div>
                </div>
                
                <?php 
if (isset($_POST['edit'])) {
  $id_member = $_POST['id_member'];
  $nama_lengkap = $_POST['nama_lengkap'];
  $email = $_POST['email'];
  $password = $_POST['password'];
  $no_hp = $_POST['no_hp'];
  $sql= mysqli_query($koneksi,"UPDATE member SET nama_lengkap='$nama_lengkap',email='$email',password='$password',no_hp='$no_hp' WHERE id_member='$id_member'");
  
if ($sql) {
  ?>
    <script type="text/javascript">
      alert("Data Berhasil Di Edit");
      window.location ="?pg=personalmember";
    </script>
    <?php
  }
}
?>