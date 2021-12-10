<?php
    ob_start();
    include '../template/header.php';
?>
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Edit Kategori
        <!-- <small>Control panel</small> -->
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Edit Kategori</li>
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
                  <?php
                    $id = $_GET['id'];
                    $sql = mysqli_query($koneksi, "select * from kategori where id='$id'");
                    while($row = mysqli_fetch_assoc($sql)){

                ?>
                <div class="form-group">
                  <label for="exampleInputEmail1">Nama Kategori</label>
                  
                  <input type="text" name="kategori_nama" class="form-control" id="exampleInputEmail1" value="<?php echo $row['kategori_nama'] ?>">
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
                    $kategori_nama = $_POST['kategori_nama'];
                    $tgl = date("Y-m-d");
                    $sql = "update kategori set kategori_nama='$kategori_nama',tgl='$tgl' where id='$id'";
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