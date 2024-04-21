<?php 
$id_lap = $_GET['id_lap'];
$schedules = $koneksi->query("SELECT * FROM schedule_list inner join lapangan ON schedule_list.id_lap = lapangan.id_lap Where lapangan.id_lap='$id_lap'");
$sched_res = [];
foreach($schedules->fetch_all(MYSQLI_ASSOC) as $row){
    $row['sdate'] = date("F d, Y h:i A",strtotime($row['tanggal_booking']));
    // $row['edate'] = date("F d, Y h:i A",strtotime($row['end_datetime']));
    $sched_res[$row['id']] = $row;
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Scheduling</title>
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
    <link rel="stylesheet" href="../cal/css/bootstrap.min.css">
    <link rel="stylesheet" href="../cal/fullcalendar/lib/main.min.css">
    <script src="../cal/js/jquery-3.6.0.min.js"></script>
    <script src="../cal/js/bootstrap.min.js"></script>
    <script src="../cal/fullcalendar/lib/main.min.js"></script>
    <style>
        :root {
            --bs-success-rgb: 71, 222, 152 !important;
        }

        html,
        body {
            height: 100%;
            width: 100%;
            font-family: Apple Chancery, cursive;
        }

        .btn-info.text-light:hover,
        .btn-info.text-light:focus {
            background: #000;
        }
        table, tbody, td, tfoot, th, thead, tr {
            border-color: #ededed !important;
            border-style: solid;
            border-width: 1px !important;
        }
    </style>
</head>

<body class="bg-light">
    
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark bg-gradient" id="topNavBar">
        <div class="container">
            <a class="navbar-brand" href="https://sourcecodester.com">
            Sourcecodester
            </a>

            <div>
                <b class="text-light">Sample Scheduling</b>
            </div>
        </div>
    </nav>
    
    <div class="container py-5" id="page-container">

        <div class="row">
     
            <h2 class="text-head text-center">BOKING LAPANGAN <span></span></h2>
            <hr>
            <div class="col-md-2"> 
            <?php
                $id_member = $_SESSION['id_member'];
                $queryoo = mysqli_query($koneksi,"SELECT * FROM schedule_list INNER JOIN member ON schedule_list.id_member = member.id_member  WHERE member.id_member = '$id_member' ");
                $data2 = mysqli_fetch_array($queryoo);
                $cek = $data2['status_boking'];
                if ($cek =="Boking") {
                ?>
                <div class="card text-bg-danger mb-3" style="max-width: 18rem;">
                <div class="card-header"><b>Pengumuman...</b></div>
                <div class="card-body">
                <p class="card-text">Mohon Maaf harap untuk menyelesaikan <b>Pembokingan atau Pembayaran</b> sebelumnya di  <a href="?pg=pembayaran" class="text-warning">Menu Pembayaran</a>.</p>
                </div>
                </div>
                <?php
                }else {
                ?>
                <button type="button" class="btn btn-danger btn-lg ml-2" data-bs-toggle="modal" data-bs-target="#exampleModal">
                Booking Jadwal</button> 
                <?php          
                 }
                ?>   
        
            </div>
           
            <div class="col-md-10">
                <div id="calendar"></div>
            </div>
            <!-- <div class="col-md-3">
                <div class="cardt rounded-0 shadow">
                    <div class="card-header bg-gradient bg-primary text-light">
                        <h5 class="card-title">Schedule Form</h5>
                    </div>
                    <div class="card-body">
                        <div class="container-fluid">
                            <form action="save_schedule.php" method="post" id="schedule-form">
                                <input type="hidden" name="id" value="">
                                <div class="form-group mb-2">
                                    <label for="title" class="control-label">Title</label>
                                    <input type="text" class="form-control form-control-sm rounded-0" name="title" id="title" required>
                                </div>
                                <div class="form-group mb-2">
                                    <label for="description" class="control-label">Description</label>
                                    <textarea rows="3" class="form-control form-control-sm rounded-0" name="description" id="description" required></textarea>
                                </div>
                                <div class="form-group mb-2">
                                    <label for="start_datetime" class="control-label">Start</label>
                                    <input type="datetime-local" class="form-control form-control-sm rounded-0" name="start_datetime" id="start_datetime" required>
                                </div>
                                <div class="form-group mb-2">
                                    <label for="end_datetime" class="control-label">End</label>
                                    <input type="datetime-local" class="form-control form-control-sm rounded-0" name="end_datetime" id="end_datetime" required>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="card-footer">
                        <div class="text-center">
                            <button class="btn btn-primary btn-sm rounded-0" type="submit" form="schedule-form"><i class="fa fa-save"></i> Save</button>
                            <button class="btn btn-default border btn-sm rounded-0" type="reset" form="schedule-form"><i class="fa fa-reset"></i> Cancel</button>
                        </div>
                    </div>
                </div>
            </div> -->
        </div>
    </div>
<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">Boking Lapang <?php echo $row['no_lap'];?></h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form method="POST">
        <div class="row">
            
            <input type="hidden" name="statusboking" value="Boking">
            <input type="hidden" class="form-control" value="<?php echo $row['id_lap'];?>" name="id_lap">
            <div class="col-12">
            <label for="">Nama Klub</label>
            <input type="text" class="form-control" name="nama_klub">
            </div>
            
            <div class="col-12">
            <label for="">Tanggal Boking</label>
            <input type="date" class="form-control" name="tgl_boking">
            </div>
           
            <label for="">Jam Boking</label>
            <div class="col-6">
            <input type="time" id="jamMulai" name="start_time"  required class="form-control" />
            </div>
            <div class="col-6">
            <input type="time" id="jamSelesai" name="end_time"  required class="form-control" />
            </div>
            </div>
                                  
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary" name="boking">Boking Jadwal</button>
      </div>
      </form>
    </div>
  </div>
</div>
<script>
    
    var jamMulaiInput = document.getElementById("jamMulai");
    var jamSelesaiInput = document.getElementById("jamSelesai");
    jamMulaiInput.addEventListener("input", function() {
      // Mendapatkan nilai jam mulai
      var jamMulai = jamMulaiInput.value;
    var jamMulaiSplit = jamMulai.split(":");
    var jamMulaiHour = parseInt(jamMulaiSplit[0]);
    
    // Menetapkan menit jam mulai menjadi 00
    // var jamMulaiWithZeroMin = jamMulaiHour + ":00";
    var jamMulaiWithZeroMin = (jamMulaiHour < 10 ? "0" :'') +  jamMulaiHour + ":00";
    // Menetapkan jam selesai menjadi jam mulai + 1 jam
    var jamSelesaiHour = (jamMulaiHour + 1) % 24;
    
    // Format jam selesai
    var jamSelesai = (jamSelesaiHour < 10 ? "0" : "") + jamSelesaiHour + ":00";

    // Memasukkan nilai jam mulai dengan menit 00 ke input
    // jamMulaiInput.value = jamMulaiWithZeroMin;
    document.getElementsByName("start_time")[0].value = jamMulaiWithZeroMin;
    
    // Memasukkan nilai jam selesai ke input
    document.getElementsByName("end_time")[0].value = jamSelesai;
    // jamSelesaiInput.value = jamSelesai;
});
</script>
<?php
					if (isset($_POST['boking'])) {
                        $tgl_sekarang = date('Y-m-d');

                        $id_member = $_SESSION['id_member'];
                        $id_lap = $_GET['id_lap'];
                        $nama_klub = $_POST['nama_klub'];
                        $tgl_boking = $_POST['tgl_boking'];
                        $id_jadwal = $_POST['id_jadwal'];                       
                        $statusboking = $_POST['statusboking'];

                        $jam    =$jamharga['jam'];
                        $start_time = $_POST['start_time'];
                    
                        $end_time = $_POST['end_time'];
                    
                        // Ubah waktu dalam format string menjadi timestamp
                        $waktuMulai = strtotime($start_time);
                        $waktuSelesai = strtotime($end_time);
                        // Hitung selisih waktu dalam detik
                        $selisihDetik = $waktuSelesai - $waktuMulai;
                    
                        // Konversi selisih waktu dalam detik menjadi jam
                        $total_jam = $selisihDetik / (60 * 60);
                       
                        if ($tgl_boking < $tgl_sekarang) {
                            ?>
                            <script type="text/javascript">
							alert("Tanggal Boking Tidak Boleh Kurang Dari Hari Ini");
							window.location = "?pg=lapangan";
							</script>
							<?php
                          }else{
                            $cek = mysqli_num_rows(mysqli_query($koneksi,"SELECT * FROM schedule_list WHERE tanggal_booking='$tgl_boking'"));
                            if ($cek > 0) {
                                ?>
                                    <script type="text/javascript">
                                    alert("Jadwal Sudah Ada Yang Boking");
                                    window.location = "?pg=lapangan";
                                    </script>
                                    <?php
                            }else{
                            $sql = mysqli_query($koneksi,"INSERT INTO schedule_list VALUES (NULL,'$nama_klub','$tgl_boking','$start_time','$end_time,'$total_jam,'$id_lap',NULL,'$id_member','$id_jadwal','$statusboking')");
                                if ($sql){
                                    ?>
                                    <script type="text/javascript">
                                    alert("Berhasil Di Boking");
                                    window.location = "?pg=pembayaran";
                                </script>
                                <?php
                                }
                             }
                        }
                    }
                        ?>





    <!-- Event Details Modal -->
    <div class="modal fade" tabindex="-1" data-bs-backdrop="static" id="event-details-modal">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content rounded-0">
                <div class="modal-header rounded-0">
                    <h5 class="modal-title">Schedule Details</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body rounded-0">
                    <div class="container-fluid">
                        <dl>
                            <dt class="text-muted">Nama Klub</dt>
                            <dd id="title" class="fw-bold fs-4"></dd>
                            
                            <dt class="text-muted">Mulai Boking</dt>
                            <dd id="start" class=""></dd>
                            <dt class="text-muted">Selesai Boking</dt>
                            <dd id="end" class=""></dd>
                        </dl>
                    </div>
                </div>
                
            </div>
        </div>
    </div>
    <!-- Event Details Modal -->

    


<?php 
if(isset($koneksi)) $koneksi->close();
?>
</body>
<script>
    var scheds = $.parseJSON('<?= json_encode($sched_res) ?>')
</script>
<script src="../cal/js/script.js"></script>

</html>
