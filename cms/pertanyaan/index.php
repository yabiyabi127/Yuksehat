<?php
    include '../template/header.php';
?>
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Pertanyaan
        <!-- <small>Control panel</small> -->
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Data Pertanyaan</li>
      </ol>
    </section>
    <section class="content">
      <div class="row">
        <div class="col-xs-12">
          <div class="box">
            <div class="box-header">
              <!-- <h3 class="box-title"><a href="add.php"><button class="btn btn-block btn-primary">Tambah</button></a></h3> -->
            </div>
            <!-- /.box-header -->
            <div class="box-body">
                <table id="example1" class="table table-bordered table-striped">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Nama</th>
                            <th>usia</th>
                            <th>email</th>
                            <th>pertanyaan</th>
                            <th>Status</th>
                            <th>Aksi</th>
                            
                        </tr>
                    </thead>
                    
                    <tbody>
                    <?php
                        $no = 1;
                        $sql = "select * from pertanyaan order by id desc";
                        $res = mysqli_query($koneksi, $sql);
                        while($data = mysqli_fetch_array($res)){
                          if($data['acc']==1){
                            $stat = 'Terjawab';
                          }else{
                            $stat = 'Belum Terjawab';
                          }
                    ?>
                        <tr>
                            <td><?php echo $no; ?></td>
                            <td><?php echo $data['nama']; ?>
                            <td><?php echo $data['usia']; ?>
                            <td><?php echo $data['email']; ?>
                            <td><?php echo $data['pertanyaan']; ?>
                            <td><?php echo $stat; ?>
                            </td>
                            <td>
                                <a href="edit.php?id=<?php echo $data['id'];?>"><button class="btn-success">Jawab</button></a>
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
