<?php
    include '../koneksi.php';

    if(isset($_POST['submit'])){
        $username = $_POST['username'];
        $password = $_POST['password'];

        $sql = "select * from user where username = '".$username."' and password='".$password."'";
        $res = mysqli_query($koneksi,$sql);
        $cek = mysqli_num_rows($res);

        while($data = mysqli_fetch_array($res)){
            $sess_id = $data['id'];
        }
        if($cek>0){
            session_start();
            $_SESSION['username'] = $username;
            $_SESSION['sess_id'] = $sess_id;
            header('location:home/index.php');
        }else{
            header("location:index.php?error=1");
        }
    }

    if(isset($_POST['register'])){
        $nama = $_POST['nama'];
        $instansi = $_POST['instansi'];
        $username = $_POST['username'];
        $password = $_POST['password'];

        $get_last_id = mysqli_fetch_assoc(mysqli_query($koneksi, "select id from user order by id desc limit 1 "));
        $last_id = $get_last_id['id'] + 1;
        
        $sql = mysqli_query($koneksi, "insert into user values('$last_id','$username','$password')");
        
        $sql2 = mysqli_query($koneksi, "insert into user_data values('','$last_id','$nama','$instansi')");

        if($sql2){
            header('location:index.php?success=1');
        }
    }
?>