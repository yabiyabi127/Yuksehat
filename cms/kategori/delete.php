<?php
    ob_start();
    include '../template/header.php';
    
    $id = $_GET['id'];
    $sql = mysqli_query($koneksi, "delete from kategori where id='$id'");

    header("location:index.php");
   


?>