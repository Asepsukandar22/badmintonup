<section class="pembayaran" id="bayar">
    <h2 data-aos="fade-down" data-aos-duration="1000">
      <span>Profil</span> <?php echo $data['nama_lengkap'];?>
    </h2>
    <div class="container">
    <form method="post">
        <table class="table">
            <tr>
                <td>Nama Lengkap</td>
                <td>: </td>
                <td><input type="text" value="<?php echo $data['nama_lengkap'];?>" name="nama_lengkap" class="form-control"></td>
            </tr>
            <tr>
                <td>Email</td>
                <td>: </td>
                <td><input type="text" value="<?php echo $data['email'];?>" name="email" class="form-control"></td>
            </tr>
            <tr>
                <td>Password</td>
                <td>: </td>
                <td><input type="text" value="<?php echo $data['password'];?>" name="password" class="form-control"></td>
            </tr>
            <tr>
                <td>No Handphone</td>
                <td>: </td>
                <td><input type="text" value="<?php echo $data['no_hp'];?>" name="no_hp" class="form-control"></td>
            </tr>
            <tr>
                <tr><td><td></td></td><td>
                    <button type="submit" name="edit" class="btn btn-primary">Simpan Data</button> | <a href="?pg=home" class="btn btn-warning">Kembali</a></td></tr>
            </tr>
        </table>
    </form>
    </div>
  </section>


  <?php 
if (isset($_POST['edit'])) {
  $nama_lengkap = $_POST['nama_lengkap'];
  $email = $_POST['email'];
  $password = $_POST['password'];
  $no_hp = $_POST['no_hp'];
  $sql= mysqli_query($koneksi,"UPDATE user SET nama_lengkap='$nama_lengkap',email='$email',password='$password',no_hp='$no_hp' WHERE id_user='$id_user'");
  
if ($sql) {
  ?>
    <script type="text/javascript">
      alert("Data Berhasil Di Edit");
      window.location ="?pg=profil";
    </script>
    <?php
  }
}
?>