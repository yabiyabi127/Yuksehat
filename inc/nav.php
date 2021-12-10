<!-- nav -->
<nav class="navbar navbar-expand-lg navbar-light">
  <div class="container">
    <div class="navbar-brand" href="index.php">
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
          <a class="nav-link" href="index.php">Home <span class="sr-only">(current)</span></a>
        </li>
        <li class="nav-item mr-5">
          <a class="nav-link" href="single.php?id=3">Cara Hidup Sehat</a>
        </li>
        <li class="nav-item mr-5">
          <a class="nav-link" href="pertanyaan.php">Ajukan Pertanyaan</a>
        </li>
        <li class="nav-item mr-5">
          <a class="nav-link" href="artikel.php">Artikel</a>
        </li>
      </ul>
      <form class="form-inline" method="get" action="search.php">
        <input class="form-control mr-sm-2" name="value" type="search" placeholder="Cari gejala Anda" aria-label="Search">
        <button type="submit" class="btn btn-outline-dark my-2 my-sm-0">Cari</button>
      </form>
    </div>
  </div>
</nav>
<!-- end nav -->