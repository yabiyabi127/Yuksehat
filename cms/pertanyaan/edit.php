<?php
    ob_start();
    include '../template/header.php';
?>
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Jawab Pertanyaan
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
            </div>
            <!-- /.box-header -->
            <!-- form start -->
            <form action="" method="post" enctype="multipart/form-data">
              <div class="box-body">
                <?php 
                    $id = $_GET['id'];
                    $sql = mysqli_query($koneksi, "select * from pertanyaan where id='$id'");
                    while($row = mysqli_fetch_assoc($sql)){

                ?>
                <div class="form-group">
                  <label for="exampleInputEmail1">Pertanyaan</label>
                  <input type="text" name="nama_penyakit" class="form-control" id="exampleInputEmail1" value="<?php echo $row['pertanyaan'] ?>" disabled>
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">Jawaban </label>
                  <textarea class="ckeditor" id="deskripsi" name="deskripsi"></textarea>
                </div>
                
                <?php
                    }
                ?>
              <div class="box-footer">
                <button type="submit" name="submit" class="btn btn-primary">Kirim</button>
              </div>
            </form>
            <?php
                if(isset($_POST['submit'])){
                   mysqli_query($koneksi, "update pertanyaan set acc=1 where id='$id'");
                   header('location:index.php');
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