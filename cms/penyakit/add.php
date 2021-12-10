<?php
    ob_start();
    include '../template/header.php';
?>
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Tambah Data Penyakit
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
              <h3 class="box-title">Silahkan Isi Data</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
            <form action="prosesadd.php" method="post" enctype="multipart/form-data">
              <div class="box-body">
                <div class="form-group">
                  <label for="exampleInputEmail1">Nama Penyakit</label>
                  <input type="text" name="nama_penyakit" class="form-control" id="exampleInputEmail1" placeholder="Masukan Nama Penyakit">
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
                  <textarea class="ckeditor" id="deskripsi" name="deskripsi"></textarea>
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">Penyebab Penyakit</label>
                  <textarea class="ckeditor" name="penyebab"></textarea>
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">Gejala Penyakit</label>
                  <textarea class="ckeditor" name="gejala"></textarea>
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">Obat Apotek</label>
                  <textarea class="ckeditor" name="obat"></textarea>
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">Link Video</label>
                  <input type="text" name="video" class="form-control" id="exampleInputEmail1" placeholder="Masukan Link Video">
                </div>
              <div class="box-footer">
                <button type="submit" name="submit" class="btn btn-primary">Submit</button>
              </div>
            </form>
            
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