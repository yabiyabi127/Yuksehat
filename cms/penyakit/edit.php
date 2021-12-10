<?php
    ob_start();
    include '../template/header.php';
?>
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Edit Data Penyakit
        <!-- <small>Control panel</small> -->
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Tambah Data Penyakit</li>
      </ol>
    </section>
    <section class="content">
      <div class="row">
        <div class="col-md-6">
        <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">Silahkan Ubah Data</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
            <form action="#" method="post" enctype="multipart/form-data">
              <div class="box-body">
                <?php 
                    $id = $_GET['id'];
                    $sql = mysqli_query($koneksi, "select * from penyakit where id='$id'");
                    while($row = mysqli_fetch_assoc($sql)){

                ?>
                <div class="form-group">
                  <label for="exampleInputEmail1">Nama Penyakit</label>
                  <input type="text" name="nama_penyakit" class="form-control" id="exampleInputEmail1" value="<?php echo $row['nama'] ?>">
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">Kategori Penyakit</label>
                  <select class="form-control" name="kategori_id">
                    <?php  
                        $sql = mysqli_query($koneksi,"select * from kategori");
                        while($data = mysqli_fetch_array($sql)){
                    ?>
                    <option value="<?php echo $data['id'] ?>"><?php echo $data['kategori_nama'] ?></option>
                    <?php
                        }
                    ?>
                  </select>
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">Gambar</label>
                  <input type="file" name="file">
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">Deskripsi Penyakit</label>
                  <textarea class="ckeditor" id="deskripsi" name="deskripsi"><?php echo $row['deskripsi'] ?></textarea>
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">Penyebab Penyakit</label>
                  <textarea class="ckeditor" name="penyebab"><?php echo $row['penyebab'] ?></textarea>
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">Gejala Penyakit</label>
                  <textarea class="ckeditor" name="gejala"><?php echo $row['gejala'] ?></textarea>
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">Obat Apotek</label>
                  <textarea class="ckeditor" name="obat"><?php echo $row['obat'] ?></textarea>
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">Link Video</label>
                  <input type="text" name="video" class="form-control" id="exampleInputEmail1" value="<?php echo $row['video'] ?>">
                </div>
                <?php
                    }
                ?>
              <div class="box-footer">
                <button type="submit" name="submit" class="btn btn-primary">Submit</button>
              </div>
            </form>
            <?php
                if(isset($_POST['submit'])){
                    $namapenyakit = $_POST['nama_penyakit'];
                    $kategori = $_POST['kategori_id'];
                    $gambar = $_FILES['file']['name'];
                    $deskripsi = $_POST['deskripsi'];
                    $penyebab = $_POST['penyebab'];
                    $gejala = $_POST['gejala'];
                    $obat = $_POST['obat'];
                    $video = $_POST['video'];

                    $ekstensi_diperbolehkan	= array('png','jpg');
                    $x = explode('.', $gambar);
                    $ekstensi = strtolower(end($x));
                    $ukuran	= $_FILES['file']['size'];
                    $file_tmp = $_FILES['file']['tmp_name'];

                    $sql_get = mysqli_query($koneksi, "select gambar from penyakit where id='$id'");
                    while($d = mysqli_fetch_assoc($sql_get)){
                        $gambarr = $d['gambar'];
                        $gambar_asal = '../../img/'.$d['gambar'];
                    } 

                    if($gambar!=''){
                        if($ukuran < 1044070){			
                            unlink($gambar_asal);
                            move_uploaded_file($file_tmp, '../../img/'.$gambar);
                            $query = mysqli_query($koneksi, "update penyakit 
                            set nama='$namapenyakit',kategori_id='$kategori',gambar='$gambar',deskripsi='$deskripsi',penyebab='$penyebab',
                            gejala='$gejala',obat='$obat',video='$video' where id='$id'");
                            if($query){
                                echo 'FILE BERHASIL DI UPLOAD';
                                header("location:index.php");
                            }else{
                                echo 'GAGAL MENGUPLOAD GAMBAR';
                            }
                        }else{
                            echo 'UKURAN FILE TERLALU BESAR';
                        }
                    }else{
                        $query = mysqli_query($koneksi, "update penyakit 
                            set nama='$namapenyakit',kategori_id='$kategori',gambar='$gambarr',deskripsi='$deskripsi',penyebab='$penyebab',
                            gejala='$gejala',obat='$obat',video='$video' where id='$id'");
                            header("location:index.php");
                    }
                }
            ?>
          </div>
          
          <!-- /.box -->
        </div>
        <!-- /.col -->
        
      </div>
      <!-- /.row -->
    </section>
</div>

<?php
    include '../template/footer.php';
?>
<!-- CK Editor -->
<script src="https://cdn.ckeditor.com/4.5.7/standard/ckeditor.js"></script>
<!-- Bootstrap WYSIHTML5 -->
<script src="../../plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<script>
  $(function () {
    // Replace the <textarea id="editor1"> with a CKEditor
    // instance, using default configuration.
    CKEDITOR.replace('deskripsi');
    //bootstrap WYSIHTML5 - text editor
    $(".textarea").wysihtml5();
  });
</script>