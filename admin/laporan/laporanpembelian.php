<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Laporan Pembelian Barang</title>
</head>
<body>

<center>
        <h2>LAPORAN PEMBELIAN BARANG BADMINTON CENTER</h2>
        <h4><i><b>Informasi : </b> Hasil pencarian data berdasarkan periode Tanggal <b><?php echo date('d-M-Y', strtotime($_POST['tanggal_awal']));?></b> Sampai Dengan <b><?php echo date('d-M-Y', strtotime($_POST['tanggal_akhir']));?></b></i></h4>
        <hr/>
    </center>
    <table width="100%" border="2" cellpadding="0" cellspacing="0">
        <thead>
        <tr>
                                            <th>No</th>
                                            <th>Kode Beli</th>
                                            <th>Nama Pemasok</th>
                                            <th>Nama Barang</th>
                                            <th>Kategori</th>
                                            <th>Jumlah</th>
                                            <th>Merk</th>
                                            <th>Harga Beli</th>
                                            <th>Tanggal Pembelian</th>
                                            
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
			$query =mysqli_query($koneksi,"SELECT * FROM pembelian INNER JOIN kategori ON pembelian.id_kategori =kategori.id_kategori WHERE pembelian.tanggal_beli between '$tanggal_awal' AND '$tanggal_akhir'");
            
            $no=1;
			while($data = mysqli_fetch_array($query)){
			?>
             <tr>
                                        <td><?php echo $no; ?></td>
                                        <td><?php echo $data['kode_beli']?></td>
                                        <td><?php echo $data['nama_pemasok']?></td>
                                        <td><?php echo $data['nama_barang']?></td>
                                        <td><?php echo $data['nama_kategori']?></td>
                                        <td><?php echo $data['jumlah']?></td>
                                        <td><?php echo $data['merk']?></td>
                                        <td><?php echo "Rp." . number_format($data['harga_beli']) ;?></td>
                                        <td><?php echo date('d-M-Y', strtotime($data['tanggal_beli']));?></td>                                           
                                        </tr>
            <?php
                                                $no++;
                                            }	
                                        }
                                                ?>
        </tbody>

    </table>

    <p></p>
    <script>
        window.print();
    </script>
</body>
</html>