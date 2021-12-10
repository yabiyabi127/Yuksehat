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
      <center>
        <h3>Form Pertanyaan</h3>
      </center>
    </div>
  </div>
  <!-- endpanel -->
  <!-- content -->
  <div class="container content">
    <div class="row">
      <h1 class="p-3 mt-2">Ajukan pertanyaaan tentang keluhan Anda </h1>
    </div>
    <div class="row">
      <div class="col">
        <form action="pertanyaan.php" method="post">
          <div class="form-group">
            <label for="exampleInputEmail1">Nama</label>
            <input type="text" name="nama" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
          </div>
          <div class="form-group">
            <label for="exampleInputEmail1">Usia</label>
            <input type="number" name="usia" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
          </div>
          <div class="form-group">
            <label for="exampleInputEmail1">Email address</label>
            <input type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
          </div>
          <div class="form-group">
            <label for="exampleFormControlTextarea1">Pertanyaan</label>
            <textarea class="form-control" name="pertanyaan" id="exampleFormControlTextarea1" rows="4"></textarea>
          </div>
          <button type="submit" name="submit" class="button btn btn-primary">Kirim</button>
        </form>
      </div>
      <hr>
    </div>
  </div>
  <!-- end content -->
  <!-- foot -->
  <?php
  include 'inc/footer.php';
  include 'koneksi.php';

  if (isset($_POST['submit'])) {
    $sql = mysqli_query($koneksi, "insert into pertanyaan values('','$_POST[nama]','$_POST[usia]','$_POST[email]','$_POST[pertanyaan]',NOW(),'0')");
  ?>
    <script>
      alert('Terimakasih Sudah Bertanya, Sehat selalu yaa!');
    </script>
  <?php
  }

  ?>


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