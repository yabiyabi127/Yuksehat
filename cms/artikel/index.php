<?php
    include '../template/header.php';
?>
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Artikel
        <!-- <small>Control panel</small> -->
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Data Artikel</li>
      </ol>
    </section>
    <section class="content">
      <div class="row">
        <div class="col-xs-12">
          <div class="box">
            <div class="box-header">
              <h3 class="box-title"><a href="add.php"><button class="btn btn-block btn-primary">Tambah</button></a></h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
                <table id="example1" class="table table-bordered table-striped">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Judul artikel</th>
                            <th>Deskripsi</th>
                            <th>Foto</th>
                            <th>Link Video</th>
                            <th>Aksi</th>
                            
                        </tr>
                    </thead>
                    
                    <tbody>
                    <?php
                        $no = 1;
                        $sql = "select * from artikel";
                        $res = mysqli_query($koneksi, $sql);
                        while($data = mysqli_fetch_array($res)){
                          
                    ?>
                        <tr>
                            <td><?php echo $no; ?></td>
                            <td><?php echo $data['judul']; ?></td>
                            <td><?php echo $data['deskripsi']; ?></td>
                            <td><img src="<?php echo "../../img/".$data['gambar']; ?>" width="200px"></td>
                            <td><?php echo $data['video']; ?></td>
                            
                            </td>
                            <td>
                                <a href="delete.php?id=<?php echo $data['id'];?>"><button class="btn-danger">Hapus</button></a>
                            </td>
                            
                        </tr>
                    <?php
                        $no++;
                        }
                    ?>
                    
                    </tbody>
                </table>
            </div>
            <!-- /.box-body -->
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
