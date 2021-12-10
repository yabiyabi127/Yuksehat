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
    <nav class="navbar navbar-expand-lg navbar-light">
        <div class="container">
            <div class="navbar-brand" href="#">
                    <a class="navbar-brand" href="index.php">
                        <img src="assets/images/logo.png" loading="lazy">
                    </a>
            </div>        
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav mx-auto">
                    <li class="nav-item mr-5">
                    <a class="nav-link" href="index.html">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item mr-5">
                    <a class="nav-link" href="#">Features</a>
                    </li>
                    <li class="nav-item mr-5">
                    <a class="nav-link" href="#">Pricing</a>
                    </li>
                    <li class="nav-item mr-5">
                    <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
                    </li>
                </ul>
                </div>
        </div>    
      </nav>

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
        <div class="container content">
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
                              <p class="card-text text-truncate"><?php echo substr($data['deskripsi'],0,10) ?></p>
                              <a href="single.php?id=<?php echo $data['id']; ?>"><button type="button" class="btn btn-light">Baca selengkapnya</button></a>
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
      <div class="footer">
        <div class="container">
          <div class="row footerhead" data-aos="zoom-in">
            <div class="col">
              <h1>Hari kurniawan</h1>
            </div>
          </div>
          <div class="row footertext" data-aos="zoom-in">
            <div class="col-7">
              <h1>yabiyabi127@gmail.com</h1>
            </div>
            <div class="col-12 col-lg-5 mt-1 linksosmed" data-aos="zoom-in">
              <img src="assets/images/fb.png" class="img-fluid">
              <img src="assets/images/wa.png" class="img-fluid">
              <img src="assets/images/tw.png" class="img-fluid">
              <img src="assets/images/ig.png" class="img-fluid">
            </div>
          </div>
        </div>
      </div>
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