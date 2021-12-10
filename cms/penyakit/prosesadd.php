<?php
    ob_start();
    include '../../koneksi.php';
    if(isset($_POST['submit'])){
        $namapenyakit = $_POST['nama_penyakit'];
        $kategori = $_POST['kategori_id'];
        $gambar = $_FILES['file']['name'];
        $deskripsi = $_POST['deskripsi'];
        $penyebab = $_POST['penyebab'];
        $gejala = $_POST['gejala'];
        $obat = $_POST['obat'];
        $video = $_POST['video'];

        $ekstensi_diperbolehkan	= array('png','jpg');
        $x = explode('.', $gambar);
        $ekstensi = strtolower(end($x));
        $ukuran	= $_FILES['file']['size'];
        $file_tmp = $_FILES['file']['tmp_name'];

        if(in_array($ekstensi, $ekstensi_diperbolehkan) === true){
            if($ukuran < 1044070){			
                move_uploaded_file($file_tmp, '../../img/'.$gambar);
                $query = mysqli_query($koneksi, "INSERT INTO penyakit 
                VALUES('','$namapenyakit','$kategori','$gambar','$deskripsi','$penyebab','$gejala','$obat','$video')");
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