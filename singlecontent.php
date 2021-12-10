<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- sec CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <!-- mycss -->
    <link rel="stylesheet" href="style.css">


    <title>Kesehatan</title>
  </head>
  <body>

    <!-- nav -->
    <?php
      include 'inc/nav.php';
    ?>
      <!-- end nav -->

      <!-- jumbo -->
        <!-- <div class="jumbotron jumbotron-fluid tex-center">
            <div class="row">
                <div class="col jumbotext">
                    <h1 class="display-4">CARA HIDUP SEHAT</h1>
                    <p class="lead">Lorem ipsum dolor sit amet, consectetur adipisicing elit. In, ad nulla? Esse, placeat iste. Aliquid consequatur, adipisci maxime dignissimos sequi veniam esse neque officia laudantium repudiandae, odio quam illum, est ullam soluta illo impedit blanditiis.</p>
                    <a href="#">Learn more</a>
                </div>
                <div class="col">
                    <img src="assets/images/ilustrasi.png" alt="" class="img-fluid">
                </div>
            </div>
            
        </div> -->
      <!-- endjumbo -->
      <!-- panel -->
      <div class="panelkategori">
          <div class="container">
            <ul class="nav justify-content-center menukategori">
                <?php
                include 'koneksi.php';
                $sql = mysqli_query($koneksi,"select * from kategori");
                while($data = mysqli_fetch_array($sql)){
                  
              ?>
                <li class="nav-item">
                  <a class="nav-link" href="singlecontent.php?id=<?php echo $data['id'] ?>"><?php echo $data['kategori_nama'] ?></a>
                </li>
              <?php
                  }
              ?>
              </ul>
          </div>
      </div>
      <!-- endpanel -->
      <!-- content -->
      
    </div>
        <div class="container">
            <div class="row">
              <?php 
              $id = $_GET['id'];
              $get_nama = mysqli_fetch_assoc(mysqli_query($koneksi, "select * from kategori where id='$id'"));

              
              ?>
                <h1 class="p-3 mt-2">Kategori <?=$get_nama['kategori_nama'] ?></h1>
            </div>
            <hr>
            <div class="row">
                <?php
                  $id = $_GET['id'];
                  $sql = mysqli_query($koneksi, "select * from penyakit where kategori_id = '$id'");
                  while($data = mysqli_fetch_array($sql)){
                ?> 
                <div class="col-sm-12 col-lg-10">
                    <div class="cardd mb-3">
                        <div class="row no-gutters">
                          <div class="col-md-4">
                            <img src="img/<?php echo $data['gambar'];?>" class="card-img" alt="...">
                          </div>
                          <div class="col-md-8">
                            <div class="card-body">
                              <h5 class="card-title"><?php echo $data['nama'] ?></h5>
                              <p class="card-text text-truncate"><?php echo substr($data['deskripsi'],0,200).' ..' ?></p>
                              <a href="penyakit.php?id=<?php echo $data['id']; ?>"><button type="button" class="btn btn-light">Baca selengkapnya</button></a>
                            </div>
                          </div>
                        </div>
                      </div>
                </div>
                <?php
                  }
                ?>
            </div>
        </div>
      <!-- end content -->
      <?php
        include 'inc/footer.php';
      ?>
      <!-- foot -->

      <!-- endfoot -->

    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>

    <!-- Option 2: jQuery, Popper.js, and Bootstrap JS
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
    -->
  </body>
</html>