<div class="container-fluid">
                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800">Data Laporan Keuangan Lapangan</h1>
                    <a href="?pg=periodelapangan" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm mb-2"><i
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
                                            <th>Kode Pemesanan</th>
                                            <th>Tanggal Pesan</th>
                                            <th>Nama Klub</th>
                                            <th>Tanggal Boking</th>
                                            <th>Harga Sewa</th>
                                                                                       
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <?php
			
			$query =mysqli_query($koneksi,"SELECT * FROM pemesanan INNER JOIN schedule_list ON pemesanan.id = schedule_list.id WHERE status_boking='Lunas'");
			$no=1;
			while($data = mysqli_fetch_array($query)){
                    $a = $data['harga'];
                    $totalharga = $data['sisa'] + $a;
			?>	
                                        <tr>
                                        <td><?php echo $no; ?></td>
                                        <td><?php echo $data['kode_pesan']?></td>
                                        <td><?php echo date('d-M-Y', strtotime($data['tanggal']));?></td>
                                        <td><?php echo $data['title']?></td>
                                        <td><?php echo date('d-M-Y', strtotime($data['tanggal_booking']));?></td>
                                        
                                        <td><?php echo "Rp." . number_format($totalharga) ;?></td>
                                        <!-- <td><?php echo $data['jumlah']?></td>
                                        <td><?php echo $data['merk']?></td>
                                        <td><?php echo "Rp." . number_format($data['harga_beli']) ;?></td>
                                        <td><?php echo date('d-M-Y', strtotime($data['tgl_input']));?></td>                                            -->
                                        </tr>
                                        <?php
                                                $no++;
                                            }	
                                                ?>
                                    </tbody>
                                    <tfoot>
                                    <tr>
                                    <th>No</th>
                                            <th>Kode Pemesanan</th>
                                            <th>Tanggal Pesan</th>
                                            <th>Nama Klub</th>
                                            <th>Tanggal Boking</th>
                                            <th>Harga Sewa</th>
                                            </tr>
                                       
                                    </tfoot>
                                    
                                </table>
                            </div>
                        </div>
                    </div>

                </div>


              