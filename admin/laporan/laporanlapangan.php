<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Laporan Barang</title>
</head>
<body>

<center>
        <h2>LAPORAN TRANSAKSI LAPANGAN BADMINTON CENTER</h2>
        <h4><i><b>Informasi : </b> Hasil pencarian data berdasarkan periode Tanggal <b><?php echo date('d-M-Y', strtotime($_POST['tanggal_awal']));?></b> Sampai Dengan <b><?php echo date('d-M-Y', strtotime($_POST['tanggal_akhir']));?></b></i></h4>
        <hr/>
    </center>
    <table width="100%" border="2" cellpadding="0" cellspacing="0">
        <thead>
        <tr>
                                            <th>No</th>
                                            <th>Kode Pemesanan</th>
                                            <th>Tanggal Pesan</th>
                                            <th>Nama Klub</th>
                                            <th>Tanggal Boking</th>
                                            <th>Harga Sewa</th>
                                                                                       
                                        </tr>
        </thead>
        <tbody>

         <?php
          include '../../inc/koneksi.php';
        //proses jika sudah klik tombol pencarian data
           if(isset($_POST['pencarian'])){
            //menangkap nilai form
             $tanggal_awal=$_POST['tanggal_awal'];
             $tanggal_akhir=$_POST['tanggal_akhir'];
			$query =mysqli_query($koneksi,"SELECT * FROM pemesanan INNER JOIN schedule_list ON pemesanan.id = schedule_list.id WHERE schedule_list.status_boking='Lunas' AND  schedule_list.tanggal_booking between '$tanggal_awal' AND '$tanggal_akhir'");
            
            $no=1;
			while($data = mysqli_fetch_array($query)){
                
			?>
            <tr style="text-align:center;">
            <td><?php echo $no; ?></td>
            <td><?php echo $data['kode_pesan']?></td>
            <td><?php echo date('d-M-Y', strtotime($data['tanggal']));?></td>
            <td><?php echo $data['title']?></td>
            <td><?php echo date('d-M-Y', strtotime($data['tanggal_booking']));?></td>
            <td><?php echo "Rp." . number_format($data['harga']) ;?></td>
            </tr>
            
            <?php
                                                $no++;
                                            }	
                                        }
                                                ?>

<?php
               
                            $sql = mysqli_query($koneksi,"SELECT SUM(harga) FROM pemesanan");
                            $data3 = mysqli_fetch_array($sql);
                             ?>
     <td colspan="6" style="text-align: right; font-weight: bold;">Total : <?php echo "Rp." . number_format($data3['SUM(harga)']) ;?></td>
        </tbody>

    </table>

    <p></p>
    <script>
        window.print();
    </script>
</body>
</html>