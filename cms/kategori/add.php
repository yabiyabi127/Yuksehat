<?php
    ob_start();
    include '../template/header.php';
?>
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Tambah Kategori
        <!-- <small>Control panel</small> -->
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Tambah Kategori</li>
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
            <form action="" method="post">
              <div class="box-body">
                <div class="form-group">
                  <label for="exampleInputEmail1">Nama Kategori</label>
                  <input type="text" name="kategori_nama" class="form-control" id="exampleInputEmail1" placeholder="Masukan Nama Kategori Penyakit">
                </div>
                

              <div class="box-footer">
                <button type="submit" name="submit" class="btn btn-primary">Submit</button>
              </div>
            </form>
            <?php
                if(isset($_POST['submit'])){
                    $kategori_nama = $_POST['kategori_nama'];
                    $tgl = date("Y-m-d");
                    $sql = "INSERT INTO kategori(id, kategori_nama, tgl) values('','$kategori_nama','$tgl')";
                    $res = mysqli_query($koneksi,$sql);
                    
                    header("location:index.php");
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