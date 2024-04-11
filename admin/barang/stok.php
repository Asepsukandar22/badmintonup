<?php
$id = $_GET['id'];
$query = mysqli_query($koneksi,"SELECT * FROM barang WHERE id = '$id' ");
$data = mysqli_fetch_array($query);
?>
<div class="container-fluid">
                    <!-- Page Heading -->
                    <h4 class="m-0 font-weight-bold text-primary text-center">Stok Barang Yang Kurang <b><?php echo $data['nama_barang']?></b></h4>
                <div class="alert alert-danger" role="alert">
  Pastikan Nama Barang sesuai dengan <b>Stok Yang kurang</b> 
</div>
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Data Barang</h6>
                            
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>No</th>
                                            <th>Kode Barang</th>
                                            <th>Nama Barang</th>
                                            <th>Merek</th>
                                            <th>Kategori</th>
                                            <th>Stok</th>
                                            <th>Aksi</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <?php
			
			$query =mysqli_query($koneksi,"SELECT * FROM pembelian INNER JOIN kategori ON pembelian.id_kategori = kategori.id_kategori WHERE status_stok='belum'");
			$no=1;
			while($data = mysqli_fetch_array($query)){
			?>	

                                        <tr>
                                        <td><?php echo $no; ?></td>
                                        <td><?php echo $data['kode_beli']?></td>
                                        <td><?php echo $data['nama_barang']?></td>
                                        <td><?php echo $data['merk']?></td>
                                        <td><?php echo $data['nama_kategori']?></td>
                                        <td><?php echo $data['jumlah']?></td>
                                        <td>
                                        <form method="post">
                                        
                                        <input type="hidden" value="<?php echo $data['id_pembelian']?>" name="id_pembelian">
                                          <input type="hidden" value="<?php echo $data['jumlah']?>" name="stokakhir">
                                          <input type="hidden" value="sudah" name="status_stok">
                                        <button type="submit" class="btn btn-danger" name="simpanstok">Tambah Stok</button>
                                        </form></td>
                                                                                   
                                         </tr>
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




                <?php
									if (isset($_POST['simpanstok'])) {
                    
                    $id_pembelian = $_POST['id_pembelian'];
									  $stokakhir = $_POST['stokakhir'];
                    $status_stok = $_POST['status_stok'];
                    $lihatstok = mysqli_query($koneksi,"SELECT * FROM barang WHERE id='$id'");
                    $sto    =mysqli_fetch_array($lihatstok);
                    
                    $id    =$sto['id'];
                    $stok    =$sto['stok'];
                    // hitung
                    $tstok = $stok + $stokakhir;  

                    $sql= mysqli_query($koneksi,"UPDATE barang SET stok='$tstok' WHERE id='$id'");
									  if ($sql) {
                      $upbel= mysqli_query($koneksi,"UPDATE pembelian SET status_stok='$status_stok' WHERE id_pembelian='$id_pembelian'");
									    ?>
									    <script type="text/javascript">
									      alert("Stok Berhasil Di tambahkan");
									      window.location = "?pg=barang";
									    </script>
									    <?php
									  }

									}
									?>
                                     