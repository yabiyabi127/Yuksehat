<?php
    ob_start();
    include '../../koneksi.php';
    if(isset($_POST['submit'])){
        $judul = $_POST['judul'];
        $deskripsi = $_POST['deskripsi'];
        $gambar = $_FILES['file']['name'];
        $video = $_POST['video'];
        $oleh = $_POST['oleh'];

        $ekstensi_diperbolehkan	= array('png','jpg');
        $x = explode('.', $gambar);
        $ekstensi = strtolower(end($x));
        $ukuran	= $_FILES['file']['size'];
        $file_tmp = $_FILES['file']['tmp_name'];
        $gambar_new = 'artikel'.$gambar;

        if(in_array($ekstensi, $ekstensi_diperbolehkan) === true){
            if($ukuran < 1044070){			
                move_uploaded_file($file_tmp, '../../img/'.$gambar_new);
                $query = mysqli_query($koneksi, "INSERT INTO artikel 
                VALUES('','$judul','$deskripsi','$gambar_new','$video','$oleh')");
                if($query){
                    echo 'FILE BERHASIL DI UPLOAD';
                    header("location:index.php");
                }else{
                    echo 'GAGAL MENGUPLOAD GAMBAR';
                }
            }else{
                echo 'UKURAN FILE TERLALU BESAR';
            }
        }else{
            echo 'EKSTENSI FILE YANG DI UPLOAD TIDAK DI PERBOLEHKAN';
        }

    }
?>