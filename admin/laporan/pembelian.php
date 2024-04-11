<div class="container-fluid">
                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800">Data Laporan Pembelian Barang</h1>
                    <a href="?pg=periodepembelian" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm mb-2"><i
                                class="fas fa-print fa-sm text-white-50"> </i> Cetak Laporan</a>
                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
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
			
			$query =mysqli_query($koneksi,"SELECT * FROM pembelian INNER JOIN kategori ON pembelian.id_kategori =kategori.id_kategori WHERE pembelian.id_pembelian ORDER BY jumlah DESC");
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
                                        <td><?php echo date('d-M-Y', strtotime($data['tgl_input']));?></td>                                           
                                        </tr>
                                        <?php
                                                $no++;
                                            }	
                                                ?>
                                    </tbody>
                                    <tfoot>
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
                                       
                                    </tfoot>
                                    
                                </table>
                            </div>
                        </div>
                    </div>

                </div>


              