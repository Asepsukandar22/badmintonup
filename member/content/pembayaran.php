<section class="lapangan" id="lapangan">
    <div class="container">
      <main class="contain" data-aos="fade-right" data-aos-duration="1000">
       
        <?php
        $id_member = $_SESSION['id_member'];
        $queryoo = mysqli_query($koneksi,"SELECT * FROM schedule_list INNER JOIN member ON schedule_list.id_member = member.id_member  WHERE member.id_member = '$id_member' ORDER BY schedule_list.id DESC LIMIT 1");
        $data22 = mysqli_fetch_array($queryoo);
        if ($data22['status_boking']=="Boking") {
         ?>
        <?php
            $id_member = $_SESSION['id_member'];
            $total_amount = 20000 * $data33['total_jam']
            $query1 = mysqli_query($koneksi,"SELECT * FROM schedule_list INNER JOIN lapangan ON schedule_list.id_lap = lapangan.id_lap INNER JOIN member ON schedule_list.id_member WHERE member.id_member = '$id_member' AND status_boking='Boking' Order By id DESC Limit 1");
            $data33 = mysqli_fetch_array($query1);
            ?>
            <h2 class="text-head">Pembayaran di <span>Sport</span> Center </h2>
            <div class="card">
          
        <h5 class="card-header">Transaksi Boking <?php echo $data33['no_lap'];?></h5>
        <div class="card-body">
        <div class="alert alert-danger" role="alert">
        "Jika Ingin Membayar <b>DP</b>, Silahkan Dikirimkan Ke NO. Dana Ini = <b>0858-3294-2323</b>, Jangan lupa untuk diupload Bukti Transaksinya"
          </div>
          <table class="table">
            <form method="POST" enctype="multipart/form-data">
            <?php
            $query = mysqli_query($koneksi, "SELECT max(id_pemesanan) as kodeTerbesar FROM pemesanan");
            $data = mysqli_fetch_array($query);
            $id_pemesanan = $data['kodeTerbesar'];
            $urutan = (int) substr($id_pemesanan, 3, 3);
            $urutan++;                                       
            $huruf = "KPS";
            $id_pemesanan = $huruf . sprintf("%04s", $urutan);
            ?>
            <input type="hidden" name="kode_pesan" value="<?php echo $id_pemesanan ?>" >
            <input type="hidden" name="harga" value="<?php echo $data33['harga'];?>" >
            <input type="hidden" name="id_pesan" value="<?php echo $data33['id'];?>" >
            <input type="hidden" name="status_boking" value="Pending" >
            <input type="hidden" name="jumlah_jam" value="1">
            <tr>
            <th>Nama Pemesan</th>
            <td><?php echo $data33['title'];?></td>
            </tr>
            <tr>
            <th>Tanggal Booking</th>
            <td><?php echo date("Y-m-d", strtotime($data33['tanggal_booking']));?></td>
            </tr>
            <tr>
            <tr>
            <th>Jam Selesai</th>
            <td><?php echo $data33['end_time'];?></td>
            </tr>
            <tr>
            <th>Jumlah Jam</th>
            <td><?php echo $data33['total_jam']; ?></td>
            </tr>
            <tr>
            <th>Jumlah Jam</th>
            <td><?php echo $data33['total_jam']; ?></td>
            </tr>
            <tr>
            <th>Harga Bayar</th>
            <td><?php echo "Rp. " . number_format($total_amount) ;?></td>
            </tr>
            <th>Bayar DP</th>
            <td><input type="number" class="form-control" name="bayardp" require="Wajib Diisi" placeholder="Masukan Nominal Uang"></td>
            </tr>
            </tr>
            <th>Upload Foto Bukti</th>
            <td><input type="file" class="form-control" name="bukti" require="Wajib Diisi"></td>
            </tr>
          </table>
          <a href="content/hapusjadwal.php?id=<?php echo $data33[0];?>" class="btn btn-danger">Hapus Jadwal</a>
          <button type="submit" name="simpantransaksi" class="btn btn-primary">Simpan Transaksi</button>
          </form>
        </div>
      </div>
         <?php
        }
        ?>
        <h2 class="text-head">Riwayat Pembayaran di <span>Sport</span> Center </h2>
        <div class="card ">       
        <div class="card-body">
        <table class="table table-hover">
            <thead>
                <tr>
                <th scope="col">#</th>
                <th scope="col">Nama Lapangan</th>
                <th scope="col">Tanggal Booking</th>
                <th scope="col">Jam Mulai</th>
                <th scope="col">Jam Selesai</th>
                <th scope="col">Kode Pesan</th>
                <th scope="col">Harga</th>
                <th scope="col">DP</th>
                <th scope="col">Sisa Bayar</th>
                <th scope="col">Status</th>
                <th scope="col">Bukti</th>
                <th scope="col">Status</th>
                
                </tr>
            </thead>
            <tbody>
            <?php
            $id_member = $_SESSION['id_member'];
            $query =mysqli_query($koneksi,"SELECT * FROM pemesanan INNER JOIN schedule_list ON pemesanan.id = schedule_list.id INNER JOIN lapangan ON schedule_list.id_lap = lapangan.id_lap INNER JOIN member ON pemesanan.id_member = member.id_member WHERE member.id_member='$id_member'");
            $no=1;
            while($data = mysqli_fetch_array($query)){
            ?>
            <tr>
            <td scope="row"><?php echo $no; ?></td>
            <td><?php echo $data['no_lap']?></td>
            <td><?php echo date("Y-m-d", strtotime($data['tanggal_booking']))?></td>
            <td><?php echo $data['start_time']?></td>
            <td><?php echo $data['end_time']?></td>
            <td><?php echo $data['kode_pesan']?></td>
            <td><?php echo "Rp. " . number_format($data['harga']) ;?></td>
            <td><?php echo "Rp. " . number_format($data['dp']) ;?></td>
            <td><?php echo "Rp. " . number_format($data['sisa']) ;?></td>
            <td><?php echo $data['status_boking'] =='Pending' ?'Belum Lunas' :'Lunas' ;?></td>
            <td><?php
										if($data['bukti'] == ""){
										?>
										<img src="bukti/badminton.png" width="40">
										<?php
										}
										else{
										?>
										<img class="rounded-square" src="bukti/<?php echo $data['bukti'];?>" width="70"></td>
										<?php
										}
										?></td>
                  <td>	<a href="content/struk.php?id_pemesanan=<?php echo $data[0]; ?>" onclick="return confirm('Sistem Akan Mencektak Struk?')" class="btn btn-success btn-sm" target="_blank">Cetak</a></td></td>
            
            </tr>
            <?php
              $no++;
              } 	
            ?>
            </tbody>    
        </table>
        </div>
      </div>
      
      </main>
    </div>
  </section>

  <?php 
if (isset($_POST['simpantransaksi'])) {
  $id_member = $_SESSION['id_member'];
  $tgl_sekarang = date('Y-m-d');
  $kode_pesan = $_POST['kode_pesan'];
  $harga = $total_amount;
  $id_pesan = $_POST['id_pesan'];

  // Get Total Jam From tabel schedule_list
  $id_member = $_SESSION['id_member'];
  $getData = mysqli_query($koneksi,"SELECT * FROM schedule_list INNER JOIN lapangan ON schedule_list.id_lap = lapangan.id_lap INNER JOIN member ON schedule_list.id_member WHERE member.id_member = '$id_member' AND status_boking='Boking' ");
  $data_schedule = mysqli_fetch_array($getData);
  $jumlah_jam = $total_jam;

  $bayardp = $_POST['bayardp'];
  $status_boking = $_POST['status_boking'];
  
  $sisa = $harga - $bayardp;
  $nama_file = $_FILES['bukti']['name'];
  $source = $_FILES['bukti']['tmp_name'];
  $folder = 'bukti/';

  
  if ($bayardp == $harga || $bayardp >=  $harga) {
    move_uploaded_file($source, $folder.$nama_file);
    $sql = mysqli_query($koneksi,"INSERT INTO pemesanan VALUES (NULL,'$kode_pesan','$tgl_sekarang','$jumlah_jam','$harga','$bayardp'
                                                         ,'$sisa',NULL,'$id_pesan','$nama_file',NULL,'$id_member')");
    if ($sql) {
      $upstatus= mysqli_query($koneksi, "UPDATE schedule_list SET status_boking='Lunas' WHERE id='$id_pesan'");
      ?>
        <script type="text/javascript">
          alert("Transaksi Berhasil Di Lunasi");
          window.location ="index.php?pg=pembayaran";
        </script>
        <?php
      }
    ?>
    
   
    <?php
  }else{
    move_uploaded_file($source, $folder.$nama_file);
    $sql = mysqli_query($koneksi,"INSERT INTO pemesanan VALUES (NULL,'$kode_pesan','$tgl_sekarang','$jumlah_jam','$harga','$bayardp'
                                                              ,'$sisa',NULL,'$id_pesan','$nama_file','$id_member',NULL)");
    if ($sql) {
      $upstatus= mysqli_query($koneksi, "UPDATE schedule_list SET status_boking='$status_boking' WHERE id='$id_pesan'");
      ?>
        <script type="text/javascript">
          alert("Transaksi Berhasil Di kirim");
          window.location ="index.php?pg=pembayaran";
        </script>
        <?php
      }
  }  
}
 ?>


