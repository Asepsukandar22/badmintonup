<div class="container-fluid">
                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800">Data Pembelian</h1>
                    <a href="?pg=tambahpembelian" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm mb-2"><i
                                class="fas fa-download fa-sm text-white-50"></i>Tambah Data</a>
                    <!-- <a href="?pg=tambahstok" class="d-none d-sm-inline-block btn btn-sm btn-warning shadow-sm mb-2"><i
                                class="fas fa-download fa-sm text-white-50"></i>Tambah Stok</a> -->
                     
                    <!-- DataTales Example -->
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
                                            <th>Nama Barang</th>
                                            <th>Merek</th>
                                            <th>Kategori</th>
                                            <th>Harga Beli</th>
                                            <th>Harga Jual</th>
                                            <th>Satuan Barang</th>
                                            <th>Stok</th>
                                            <th>Aksi</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <?php
			
			$query =mysqli_query($koneksi,"SELECT * FROM pembelian INNER JOIN kategori ON pembelian.id_kategori = kategori.id_kategori WHERE status_stok='sudah'");
			$no=1;
			while($data = mysqli_fetch_array($query)){
			?>	

                                        <tr>
                                        <td><?php echo $no; ?></td>
                                        <td><?php echo $data['kode_beli']?></td>
                                        <td><?php echo $data['nama_barang']?></td>
                                        <td><?php echo $data['nama_kategori']?></td>
                                        <td><?php echo $data['merk']?></td>
                                        <td><?php echo $data['harga_beli']?></td>
                                        <td><?php echo $data['jumlah']?></td>
                                        <td><?php echo $data['tanggal_beli']?></td>
                                        <td><a href="harga/hapus.php?id_pembelian=<?php echo $data[0];?>" onclick="return confirm('Yakin Data Akan Di Hapus?')" class="btn btn-danger btn-sm">Delete</a> |
                                            <a href="?pg=editharga&&id_pembelian=<?php echo $data[0];?>" class="btn btn-primary btn-sm">Update</a></td>
                                           
                                         </tr>
                                        <?php
                                                $no++;
                                            }	
                                                ?>
                                    </tbody>
                                    <tfoot>
                                    <th>No</th>
                                            <th>Nama Barang</th>
                                            <th>Merek</th>
                                            <th>Kategori</th>
                                            <th>Harga Beli</th>
                                            <th>Harga Jual</th>
                                            <th>Satuan Barang</th>
                                            <th>Stok</th>
                                            <th>Aksi</th>
                                    </tfoot>
                                    
                                </table>
                            </div>
                        </div>
                    </div>

                </div>
