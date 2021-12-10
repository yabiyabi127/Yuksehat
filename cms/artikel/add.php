<?php
    ob_start();
    include '../template/header.php';
?>
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Tambah Artikel
        <!-- <small>Control panel</small> -->
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Tambah Artikel</li>
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
            <form action="post.php" method="post" enctype="multipart/form-data">
              <div class="box-body">
                <div class="form-group">
                  <label for="exampleInputEmail1">Judul</label>
                  <input type="text" name="judul" class="form-control" id="exampleInputEmail1" placeholder="Masukan Judul Artikel">
                </div>
                
                <div class="form-group">
                  <label for="exampleInputEmail1">Gambar</label>
                  <input type="file" name="file">
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">Deskripsi</label>
                  <textarea class="ckeditor" id="deskripsi" name="deskripsi"></textarea>
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">Link Video</label>
                  <input type="text" name="video" class="form-control" id="exampleInputEmail1" placeholder="Masukan Link Video">
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">Artikel dibuat oleh</label>
                  <input type="text" name="oleh" class="form-control" id="exampleInputEmail1" placeholder="Oleh">
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