-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 22, 2021 at 12:47 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yuksehat`
--

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE `artikel` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `deskripsi` varchar(10000) NOT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `oleh` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`id`, `judul`, `deskripsi`, `gambar`, `video`, `oleh`) VALUES
(1, 'Mengoptimalkan Perkembangan Kognitif Anak dengan Kecukupan Zat Besi', '<p><strong>Memantau perkembangan kognitif anak penting untuk dilakukan setiap orang tua. Selain dengan pola asuh yang baik, ada banyak cara yang bisa Bunda lakukan untuk mengoptimalkan perkembangan kognitif Si Kecil. Salah satunya adalah dengan mencukupi asupan zat besinya.</strong></p>\r\n\r\n<p>Perkembangan kognitif berhubungan erat dengan kemampuan anak dalam belajar dan berpikir, melakukan eksplorasi, memahami sesuatu, serta memecahkan masalah. Oleh karena itu, perkembangan kognitif Si Kecil penting untuk Bunda perhatikan.</p>\r\n\r\n<p>Pada dasarnya, perkembangan kognitif anak bisa optimal jika dia mendapatkan stimulasi sesuai usianya dan kebutuhan nutrisinya tercukupi, terutama zat besi. Namun, sayangnya masih sangat banyak bayi dan balita di Indonesia yang&nbsp;<a href=\"https://www.alodokter.com/kenali-gejala-bayi-kekurangan-zat-besi\" target=\"_blank\">kekurangan zat besi</a>.</p>\r\n\r\n<h3><strong>Tahapan Perkembangan Kognitif Anak</strong></h3>\r\n\r\n<p>Untuk dapat melatih kognitif Si Kecil dan memberinya stimulasi yang sesuai, Bunda perlu tahu dulu apa saja&nbsp;<a href=\"https://www.alodokter.com/perkembangan-kognitif-pada-anak-1-6-tahun\" target=\"_blank\">tahapan perkembangan kognitif anak</a>&nbsp;sesuai usia.</p>\r\n\r\n<p>Kemampuan kognitif anak bisa dinilai dari keterampilan yang dikuasainya. Berikut ini adalah keterampilan yang normalnya sudah dimiliki anak pada usia 1&ndash;3 tahun:</p>\r\n\r\n<p><strong>Anak usia 1 tahun</strong></p>\r\n\r\n<ul>\r\n	<li>Mengeksplorasi benda dengan berbagai cara, misalnya menggoyang, membanting, atau melempar mainan</li>\r\n	<li>Meniru gerakan orang lain dan bisa mengikuti perintah sederhana, misalnya mengambil benda atau mainan</li>\r\n	<li>Mengambil dan menempatkan kembali mainan ke kotak penyimpanan</li>\r\n	<li>Mengajak bertepuk tangan atau melambaikan tangan</li>\r\n</ul>\r\n\r\n<p><strong>Anak usia 2 tahun</strong></p>\r\n\r\n<ul>\r\n	<li>Mengenal perbedaan bentuk dan warna</li>\r\n	<li>Memahami dua perintah secara bersamaan, seperti &ldquo;Ambil mainanmu dan tempatkan lagi di kotaknya&rdquo;</li>\r\n	<li>Bisa menyebut nama benda atau hewan di buku gambar, misalnya kucing, burung, atau anjing</li>\r\n	<li>Bisa menunjukkan satu atau lebih bagian tubuhnya ketika diminta</li>\r\n	<li>Mengerti cara memakai sandal dan sepatu</li>\r\n</ul>\r\n\r\n<p><strong>Anak usia 3 tahun</strong></p>\r\n\r\n<ul>\r\n	<li>Mulai aktif berbicara, walaupun hanya 2&ndash;3 kalimat</li>\r\n	<li>Bisa menggambar garis lurus atau lingkaran dengan pensil atau krayon</li>\r\n	<li>Menyebut nama, umur, dan tempat tinggalnya</li>\r\n	<li>Mulai aktif mencari jawaban atas pertanyaan-pertanyaannya</li>\r\n	<li>Bisa mengamati dan mendengarkan instruksi</li>\r\n</ul>\r\n\r\n<h3><strong>Peran Zat Besi terhadap Perkembangan Kognitif Anak</strong></h3>\r\n\r\n<p>Zat besi memang erat kaitannya dengan proses perkembangan kognitif anak. Hal ini karena zat besi memiliki peranan penting dalam perkembangan otak, baik perkembangan secara fisik maupun fungsi. Di samping itu, zat besi juga berperan penting dalam pertumbuhan badan anak.</p>\r\n\r\n<p>Kekurangan zat besi pada anak dapat Bunda kenali dari gejalanya, yaitu:</p>\r\n\r\n<ul>\r\n	<li>Pucat</li>\r\n	<li>Kelelahan</li>\r\n	<li>Tangan dan kaki dingin</li>\r\n	<li>Pertumbuhan dan perkembangan melambat</li>\r\n	<li>Tidak nafsu makan</li>\r\n	<li>Napas tidak normal</li>\r\n	<li>Masalah perilaku</li>\r\n	<li>Sering sakit, seperti demam, batuk, atau pilek</li>\r\n	<li>Keinginan untuk memakan benda-benda yang tidak umum (<a href=\"https://www.alodokter.com/gangguan-makan-pica-kebiasaan-mengonsumsi-benda-benda-bukan-makanan\" target=\"_blank\">gangguan makan pica</a>), seperti es, pasir, kapur tulis, atau cat</li>\r\n</ul>\r\n\r\n<p>Penyebab utama anak kekurangan zat besi adalah kurangnya asupan makanan yang mengandung zat besi, baik yang berasal dari hewan (<em>heme</em>) maupun tumbuhan (<em>non-heme</em>).</p>\r\n\r\n<h3><strong>Cara Mencukupi Kebutuhan Zat Besi Anak</strong></h3>\r\n\r\n<p>Menurut Permenkes RI no. 28/2019, kebutuhan zat besi anak usia 1&ndash;3 tahun adalah 7 mg per hari, dan pada usia 4&ndash;6 tahun adalah 10 mg per hari.</p>\r\n\r\n<p>Untuk mencukupi kebutuhan zat besi pada Si Kecil, ada beberapa cara yang bisa Bunda lakukan, di antaranya:</p>\r\n\r\n<ul>\r\n	<li>Berikan Si Kecil&nbsp;<a href=\"https://www.alodokter.com/alodokter.com/pentingnya-zat-besi-untuk-tubuh\" target=\"_blank\">makanan yang kaya akan zat besi</a>, seperti daging merah, hati, sayur bayam, dan brokoli, dalam menu makanannya sehari-hari.</li>\r\n	<li>Berikan Si Kecil asupan vitamin C yang cukup dari buah dan sayuran, seperti jeruk, mangga, stroberi, tomat, brokoli, dan paprika, untuk mengoptimalkan penyerapan zat besi.</li>\r\n	<li>Hindari memberikan Si Kecil makanan yang tinggi kalori atau membuatnya cepat kenyang tetapi rendah nutrisi, misalnya makanan ringan kemasan atau makanan cepat saji.</li>\r\n</ul>\r\n\r\n<p>Dengan memberikannya asupan zat besi yang cukup, diharapkan Si Kecil bisa tumbuh sehat dan cerdas. Namun, Bunda tidak boleh lupa,&nbsp;<a href=\"https://www.alodokter.com/pelajari-pola-asuh-anak-demi-masa-depannya\" target=\"_blank\">pola asuh anak</a>&nbsp;yang baik juga tidak kalah pentingnya dalam perkembangan kognitif anak.</p>\r\n\r\n<p>Untuk mencari tahu apakah Si Kecil memiliki risiko untuk mengalami kekurangan zat besi, Bunda bisa melakukan pengecekan lewat internet. Bila Si Kecil memang mengalami tanda-tanda kekurangan zat besi, sebaiknya periksakan ia&nbsp;<a href=\"https://www.alodokter.com/cari-dokter/dokter-anak\">dokter</a>&nbsp;agar dapat diketahui penyebabnya dan diberikan penanganan yang sesuai.</p>\r\n', 'artikelanak.jpg', '', NULL),
(2, 'Catat, Inilah 10 Daftar Superfood yang Baik untuk Kesehatan', '<p><strong><em>Superfood</em></strong><strong>&nbsp;adalah kelompok makanan yang kaya akan nutrisi dan bisa mendukung kesehatan tubuh. Agar Anda bisa merasakan beragam manfaatnya, ketahui apa saja daftar makanan yang termasuk&nbsp;<em>superfood</em>.</strong></p>\r\n\r\n<p>Istilah&nbsp;<em>&ldquo;superfood&rdquo;</em>&nbsp;digunakan untuk makanan sehat yang unggul dalam salah satu atau beberapa nutrisi. Kelompok makanan ini sangat baik bagi kesehatan, dan beberapa bahkan terbukti dapat mengurangi risiko munculnya penyakit kronis. Oleh karena itu,&nbsp;<em>superfood</em>&nbsp;sangat dianjurkan untuk disertakan dalam menu makanan sehari-hari.</p>\r\n\r\n\r\n<h3><strong>Daftar Pilihan&nbsp;<em>Superfood</em>&nbsp;yang Baik untuk Kesehatan</strong></h3>\r\n\r\n<p><em>Superfood</em>&nbsp;saja sebenarnya tidak bisa langsung mencukupi semua kebutuhan nutrisi tubuh, karena memang tidak ada satu pun makanan yang mengandung nutrisi lengkap. Meski begitu,&nbsp;<em>superfood</em>&nbsp;mengandung beberapa nutrisi penting dalam jumlah yang cukup banyak. Berikut ini adalah makanan yang termasuk&nbsp;<em>superfood</em>:</p>\r\n\r\n<p><strong>1. Sayuran berdaun hijau gelap</strong></p>\r\n\r\n<p>Tak usah diragukan lagi bahwa&nbsp;<a href=\"https://www.alodokter.com/berbagai-manfaat-sayuran-hijau-untuk-kesehatan\" target=\"_blank\">sayuran berdaun hijau gelap</a>, seperti&nbsp;<em>kale</em>, sawi, pokcoy, dan bayam, termasuk dalam makanan padat nutrisi atau&nbsp;<em>superfood</em>&nbsp;yang baik untuk kesehatan tubuh.</p>\r\n\r\n<p>Nutrisi-nutrisi di dalamnya, seperti kalsium,&nbsp;<em>zinc,&nbsp;</em>zat besi, folat, vitamin C, serat, dan berbagai senyawa antioksidan, mampu melindungi tubuh dari macam-macam penyakit kronis, termasuk penyakit jantung, diabetes tipe 2, dan bahkan beberapa jenis kanker.</p>\r\n\r\n<p><strong>2. Telur</strong></p>\r\n\r\n<p><a href=\"https://www.alodokter.com/inilah-manfaat-telur-dan-cara-menyimpannya\" target=\"_blank\">Telur</a>&nbsp;merupakan sumber protein berkualitas tinggi yang juga kaya akan nutrisi lain, seperti vitamin A dan B, kolin, selenium, zat besi, dan fosfor. Telur juga mengandung antioksidan yang dapat menjaga kesehatan mata.</p>\r\n\r\n<p>Sebagian orang menganggap telur bukan makanan sehat, terutama untuk jantung, karena kabarnya makanan ini dapat meningkatkan kadar kolesterol darah. Padahal, penelitian terbaru justru membuktikan bahwa konsumsi 1 telur per hari dapat menurunkan risiko terjadinya penyakit jantung.</p>\r\n\r\n<p><strong>3. Ikan</strong></p>\r\n\r\n<p>Ikan juga termasuk ke dalam&nbsp;<em>superfood</em>&nbsp;karena kandungan protein dan asam lemak omega-3 yang tinggi di dalamnya. Nutrisi tersebut berperan penting dalam membantu mencegah penyakit jantung dan menjaga kesehatan otak. Jenis ikan dengan omega-3 tertinggi adalah salmon, tuna, makarel,&nbsp;<em>herring</em>, dan&nbsp;<a href=\"https://www.alodokter.com/menilik-beragam-manfaat-ikan-sarden-bagi-kesehatan\" target=\"_blank\">sarden</a>.</p>\r\n\r\n<p><strong>4. Alpukat</strong></p>\r\n\r\n<p><a href=\"https://www.alodokter.com/tidak-cuma-enak-manfaat-alpukat-juga-banyak\" target=\"_blank\">Alpukat</a>&nbsp;merupakan sumber serat, vitamin, mineral, dan lemak sehat yang mampu mengurangi peradangan dalam tubuh. Selain karena kandungan nutrisinya, makanan ini masuk ke dalam&nbsp;<em>superfood</em>&nbsp;karena diketahui dapat menurunkan risiko terjadinya penyakit jantung, diabetes, sindrom metabolik, dan jenis kanker tertentu.</p>\r\n\r\n<p><strong>5. Kacang dan biji-bijian</strong></p>\r\n\r\n<p>Segenggam kacang&nbsp;<em>almond</em>, pecan,&nbsp;<em>pistachio</em>, kenari, mete, atau biji bunga matahari, biji labu, dan&nbsp;<a href=\"https://www.alodokter.com/mengenal-chia-seed-biji-bijian-yang-kabarnya-punya-banyak-manfaat\" target=\"_blank\">biji chia</a>, bisa Anda jadikan camilan sehat. Meski ukurannya kecil, golongan&nbsp;<em>superfood</em>&nbsp;ini kaya akan serat, protein, lemak sehat, dan antioksidan yang diketahui mampu melindungi tubuh dari penyakit jantung dan diabetes.</p>\r\n\r\n<p><strong>6. Legum</strong></p>\r\n\r\n<p>Legum atau kacang-kacangan, seperti kacang kedelai, kacang polong, atau&nbsp;<a href=\"https://www.alodokter.com/manfaat-kacang-tanah-sebagai-teman-diet\" target=\"_blank\">kacang tanah</a>, juga bisa dianggap sebagai&nbsp;<em>superfood</em>&nbsp;karena berbagai kandungan nutrisi di dalamnya.</p>\r\n\r\n<p>Legum kaya akan protein, mineral, vitamin B, dan serat yang membawa banyak manfaat untuk kesehatan, di antaranya menurunkan tekanan darah, kadar kolesterol, dan menjaga berat badan yang sehat.</p>\r\n\r\n<p><strong>7. Ubi</strong></p>\r\n\r\n<p><a href=\"https://www.alodokter.com/manisnya-nutrisi-di-dalam-manfaat-ubi-jalar\" target=\"_blank\">Ubi</a>&nbsp;kaya akan kalium, serat, vitamin A, vitamin C, dan antioksidan yang mampu melindungi tubuh dari risiko penyakit kanker. Meski memiliki rasa yang manis, ubi diketahui dapat mengontrol gula darah, bahkan pada penderita diabetes tipe 2, sehingga cocok dijadikan sumber karbohidrat yang sehat.</p>\r\n\r\n<p><strong>8.<em>&nbsp;Yogurt</em></strong></p>\r\n\r\n<p>Pilihan&nbsp;<em>superfood</em>&nbsp;selanjutnya adalah&nbsp;<em><a href=\"https://www.alodokter.com/beberapa-manfaat-yogurt-yang-bisa-didapat\" target=\"_blank\">yogurt</a></em>. Makanan sehat ini merupakan sumber kalisum, protein, dan&nbsp;<a href=\"https://www.alodokter.com/probiotik\" target=\"_blank\">probiotik</a>&nbsp;yang baik. Pilihlah&nbsp;<em>yogurt</em>&nbsp;yang tanpa rasa untuk menghindari asupan gula berlebih. Anda bisa menambahkan buah untuk meningkatkan cita rasa&nbsp;<em>yogurt</em>&nbsp;dan asupan nutrisi Anda.</p>\r\n\r\n<p><strong>9. Minyak zaitun</strong></p>\r\n\r\n<p><a href=\"https://www.alodokter.com/manfaat-minyak-zaitun-untuk-kesehatan\" target=\"_blank\">Minyak zaitun</a>&nbsp;adalah&nbsp;<em>superfood</em>&nbsp;yang ideal untuk menggantikan mentega atau margarin. Minyak ini adalah minyak alami dengan kandungan asam lemak tak jenuh, senyawa polifenol, dan vitamin E yang tinggi. Semua nutrisi tersebut baik untuk membantu mengurangi risiko penyakit jantung dan diabetes.</p>\r\n\r\n<p><strong>10. Jahe</strong></p>\r\n\r\n<p>Berkat kandungan antioksidan unik bernama gingerol di dalamnya, jahe menjadi salah satu&nbsp;<em>superfood</em>&nbsp;dengan berbagai macam khasiat.&nbsp;<a href=\"https://www.alodokter.com/lima-manfaat-jahe-bagi-kesehatan\" target=\"_blank\">Jahe</a>&nbsp;diketahui dapat membantu mengatasi mual, mengurangi peradangan, serta melindungi tubuh dari risiko terjadinya demensia, penyakit jantung, dan kanker.</p>\r\n\r\n<p>Berbagai pilihan&nbsp;<em>superfood</em>&nbsp;di atas memang terbukti memiliki banyak manfaat untuk menjaga dan meningkatkan kesehatan tubuh. Namun, tetap pastikan pilihan Anda tidak terbatas pada&nbsp;<em>superfood</em>&nbsp;saja. Variasikan menu makanan Anda dengan makanan sehat lainnya yang bergizi seimbang, agar asupan nutrisi Anda lengkap.</p>\r\n\r\n<p>Jika perlu, Anda bisa berkonsultasi dengan&nbsp;<a href=\"https://www.alodokter.com/cari-dokter/ahli-gizi\" target=\"_blank\">dokter gizi</a>&nbsp;untuk mendapatkan saran mengenai menu makanan dan porsi makan yang sesuai dengan kondisi kesehatan Anda.</p>\r\n', 'artikelsuperfood.jpg', '', NULL),
(3, 'Mengenal Cara Hidup Sehat yang Mudah Dilakukan dari Rumah', '<h2><strong>Memulai cara hidup sehat</strong></h2>\r\n\r\n<p>Melakukan pola hidup sehat pada dasarnya tidak ribet, asalkan Anda konsisten dan rutin melakukannya. Beberapa langkah sederhana yang dapat Anda terapkan sebagai cara hidup sehat, di antaranya:</p>\r\n\r\n<h3><strong>1. Sempatkan berolahraga</strong></h3>\r\n\r\n<p>Orang dewasa disarankan untuk berolahraga minimal 2&frac12; jam setiap minggunya. Sempatkan untuk berolahraga karena melakukan peregangan bagus untuk tubuh dan pikiran Anda. Lakukan olahraga yang Anda sukai, misalnya berlari,&nbsp;<a href=\"https://www.sehatq.com/artikel/apa-saja-manfaat-bersepeda-untuk-tubuh\" target=\"_blank\">bersepeda</a>, berenang, senam, yoga, dan lainnya.Anda juga dapat melakukan latihan di pusat kebugaran untuk membantu membakar kalori dan membentuk massa otot. Banyak ahli juga merekomendasikan untuk berjalan setidaknya 10.000 langkah per hari dalam menjaga kesehatan tulang.</p>\r\n\r\n<h3><strong>2. Tidur yang cukup</strong></h3>\r\n\r\n<p>Sebagian besar orang dewasa membutuhkan sekitar 7-9 jam untuk tidur di malam hari, meski setiap orang mungkin berbeda kebutuhannya. Tidur yang cukup dapat membuat suasana hati menjadi lebih baik, mempertajam memori dan fokus, serta membantu mempelajari hal-hal baru.Dalam jangka panjang, cara ini dapat menurunkan risiko&nbsp;<a href=\"https://www.sehatq.com/penyakit/penyakit-jantung\" target=\"_blank\">penyakit jantung</a>&nbsp;dan menjaga berat badan Anda. Akan lebih baik jika Anda tidur dan bangun di waktu yang sama setiap hari.</p>\r\n\r\n<h3><strong>3. Minum air putih yang cukup</strong></h3>\r\n\r\n<p>Sebagian besar orang dewasa membutuhkan sekitar 8 gelas atau 2 liter&nbsp;<a href=\"https://www.sehatq.com/artikel/jangan-lewatkan-manfaat-air-putih-untuk-kesehatan\" target=\"_blank\">air putih</a>&nbsp;setiap hari agar tetap terhidrasi dengan baik. Anda juga dapat menambahkan irisan lemon, jeruk atau timun untuk membuat air menjadi lebih segar.Sebaiknya, hindari minuman ringan bergula dan minuman berenergi karena termasuk sumber utama kalori yang tak bernutrisi, serta dapat menyebabkan obesitas dan diabetes tipe-2. Selain itu, hindari pula alkohol karena dapat memberi efek negatif pada tubuh.</p>\r\n\r\n<h3><strong>4. Memilih makanan yang baik</strong></h3>\r\n\r\n<p>Pola makan yang sehat dan seimbang dapat membantu tubuh menyediakan energi dan menurunkan risiko seseorang terkena penyakit kronis, seperti jantung,&nbsp;<a href=\"https://www.sehatq.com/penyakit/hipertensi\" target=\"_blank\">hipertensi</a>,&nbsp;<a href=\"https://www.sehatq.com/penyakit/diabetes\" target=\"_blank\">diabetes</a>, dan kanker. Ini juga dapat membantu Anda mempertahankan berat badan normal.Pastikan dalam piring Anda terdapat cukup protein yang berasal dari hewani dan nabati, karbohidrat, serat, serta lemak yang baik. Perbanyak konsumsi sayur, buah, kacang-kacangan, dan biji-bijian. Hindari berbagai makanan olahan dan makanan yang mengandung banyak gula.</p>\r\n\r\n<h3><strong>5. Menjaga berat badan ideal</strong></h3>\r\n\r\n<p>Obesitas dikaitkan dengan usia yang lebih pendek dan peningkatan risiko berbagai penyakit kronis. Oleh sebab itu, sangat penting bagi Anda untuk menjaga berat badan dalam kisaran yang normal.Mengonsumsi makanan sehat dan rutin berolahraga dapat membantu Anda mempertahankan atau mencapai berat badan ideal.</p>\r\n\r\n<h3><strong>6. Hindari rokok</strong></h3>\r\n\r\n<p>Menurut&nbsp;<a href=\"https://www.http//promkes.kemkes.go.id/germas\" target=\"_blank\">ahli</a>, merokok menjadi salah satu pemicu terbesar timbulnya berbagai penyakit yang dapat menyebabkan kematian. Jika Anda ingin mewujudkan hidup sehat, tentu saja Anda harus&nbsp;<a href=\"https://www.sehatq.com/artikel/efek-berhenti-merokok-pada-tubuh-anda\" target=\"_blank\">berhenti merokok</a>.Meski berhenti merokok bukan perkara mudah, sebaiknya pikirkan berbagai konsekuensi buruk akibat merokok yang dapat terjadi pada Anda dan keluarga. Rokok dapat merusak paru-paru dan jantung, disfungsi ereksi, bahkan mampu mempercepat kerutan pada kulit.</p>\r\n\r\n<h3><strong>7. Memelihara kesehatan mental</strong></h3>\r\n\r\n<p>Kesehatan mental sama pentingnya dengan kesehatan fisik. Kesehatan mental yang buruk dapat mempngaruhi energi dan fokus Anda, bahkan meningkatkan peluang terkena penyakit jantung.Jika Anda merasa stres, cemas, depresi, atau masalah lainnya, Anda dapat membicarakannya pada pasangan, keluarga atau teman untuk meringankan perasaan Anda. Namun bila itu tidak menolong, Anda dapat meminta bantuan pada psikolog.</p>\r\n\r\n<h3><strong>8. Sempatkan berjalan-jalan</strong></h3>\r\n\r\n<p>Beberapa menit berada di bawah sinar matahari pagi, dapat meningkatkan kadar vitamin D yang baik untuk tulang, jantung, dan suasana hati Anda.Berada di luar ruangan juga cenderung membuat tubuh Anda lebih aktif bergerak. Akan lebih baik jika Anda sempatkan untuk berjalan-jalan di alam terbuka yang dapat membuat perasaan lebih tenang dan bahagia.</p>\r\n\r\n<h3><strong>9. Rutin cek kesehatan</strong></h3>\r\n\r\n<p>Lakukan pemeriksaan kesehatan secara rutin untuk memudahkan Anda mendeteksi suatu penyakit&nbsp;atau masalah kesehatan lebih dini. Pemeriksaan kesehatan yang paling umum dapat Anda mulai dari&nbsp;<a href=\"https://www.sehatq.com/artikel/cara-menghitung-berat-badan-ideal-wanita-sudah-idealkah-anda\" target=\"_blank\">pengukuran berat</a>&nbsp;dan tinggi badan,&nbsp;<a href=\"https://www.sehatq.com/artikel/berapa-tekanan-darah-normal-ketahui-jawabannya-di-sini\" target=\"_blank\">tekanan darah</a>, hingga cek dan deteksi dini kanker.</p>\r\n\r\n<h3><strong>10. Menjaga kebersihan lingkungan</strong></h3>\r\n\r\n<p>Menjaga kebersihan lingkungan dalam skala kecil, dapat dilakukan dengan pengelolaan sampah yang benar. Langkah lain yang dapat dilakukan adalah menjaga kebersihan untuk mengurangi resiko gangguan kesehatan, seperti mencegah perkembangan sumber penyakit yang ada di lingkungan sekitar.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>Penyakit yang dapat dihindari dengan melakukan cara hidup sehat</strong></h2>\r\n\r\n<p>Menerapkan cara hidup sehat dapat membantu mencegah kondisi kesehatan tertentu, seperti penyakit jantung,&nbsp;<a href=\"https://www.sehatq.com/penyakit/stroke\" target=\"_blank\">stroke</a>, dan tekanan darah tinggi. Anda juga dapat menjaga kolesterol dan tekanan darah dalam batasan yang aman.Menerapkan berbagai cara hidup sehat juga bisa mencegah atau membantu Anda mengelola berbagai masalah kesehatan, seperti:</p>\r\n\r\n<ul>\r\n	<li>Sindrom metabolik</li>\r\n	<li>Diabetes</li>\r\n	<li>Radang sendi</li>\r\n	<li>Depresi</li>\r\n	<li>Jenis kanker tertentu</li>\r\n</ul>\r\n\r\n<p>Selain menerapkan cara-cara di atas, sebaiknya lakukan juga pemeriksaan fisik setiap tahun untuk memastikan kondisi tubuh Anda baik-baik saja. Tanyakan pada dokter mengenai berbagai hal yang dapat Anda lakukan untuk meningkatkan kesehatan.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'artikelunnamed.jpg', '', 'Muhammad Ibnu');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `kategori_nama` varchar(255) NOT NULL,
  `tgl` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `kategori_nama`, `tgl`) VALUES
(2, 'Penyakit Dalam', '2021-01-07'),
(8, 'Penyakit Kepala', '2021-01-07');

-- --------------------------------------------------------

--
-- Table structure for table `penyakit`
--

CREATE TABLE `penyakit` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `deskripsi` varchar(10000) NOT NULL,
  `penyebab` varchar(10000) NOT NULL,
  `gejala` varchar(10000) NOT NULL,
  `obat` varchar(10000) NOT NULL,
  `video` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penyakit`
--

INSERT INTO `penyakit` (`id`, `nama`, `kategori_id`, `gambar`, `deskripsi`, `penyebab`, `gejala`, `obat`, `video`) VALUES
(2, 'Penyakit Asam Lambung', 2, 'aslam.png', '<p>Penyakit asam lambung atau gastroesophageal reflux disease (GERD) adalah munculnya rasa terbakar di dada akibat asam lambung naik ke kerongkongan. Gejala penyakit asam lambung muncul minimal 2 kali dalam seminggu. Asam lambung naik atau penyakit asam lambung bisa dialami oleh orang dewasa maupun anak-anak. Gejala penyakit ini sering diduga sebagai serangan jantung atau penyakit jantung koroner, karena gejalanya yang hampir mirip dengan nyeri dada. Walaupun tidak mematikan seperti serangan jantung, penyakit asam lambung perlu ditangani agar tidak menimbulkan komplikasi.</p>\r\n', '<p>Asam lambung naik ke kerongkongan (refluks asam lambung) terjadi ketika otot kerongkongan bagian bawah (otot LES) melemah. Otot LES ini seharusnya berkontraksi dan menutup saluran ke kerongkongan setelah makanan turun ke lambung. Bila otot ini lemah, kerongkongan akan tetap terbuka dan asam lambung akan naik kembali ke kerongkongan.</p>\r\n\r\n<p>Kondisi ini lebih berisiko terjadi pada orang lanjut usia (lansia), orang dengan obesitas, perokok, orang yang sering berbaring atau tidur setelah makan, dan wanita hamil</p>\r\n', '<p>Gejala utama dari asam lambung naik adalah rasa seperti terbakar di dada (heartburn), yang bertambah parah setelah makan atau saat berbaring. Gejala ini dapat disertai dengan keluhan gangguan pencernaan lainnya, seperti sering bersendawa, mual dan muntah, serta maag dan sesak napas. Penyakit asam lambung juga dapat menimbulkan keluhan mulut terasa asam.</p>\r\n', '<ul>\r\n	<li>Antasida</li>\r\n</ul>\r\n\r\n<p>Antasida adalah salah satu obat bebas yang digunakan untuk menetralisasi asam lambung. Beberapa antasida mengandung simetikon, yaitu suatu bahan yang membantu menyingkirkan gas berlebih dalam tubuh.</p>\r\n\r\n<p>Contoh Obat Antasida : Mylanta, Malox, Rolaids, Gaviscon, Gelusil&reg;, dan Tums.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>H-2 receptor blockers</li>\r\n</ul>\r\n\r\n<p>Obat histamin-2 (H-2) receptor blockers bekerja secara khusus untuk mengurangi peningkatan produksi asam lambung, yang bisa berujung pada maag.</p>\r\n\r\n<p>Contoh Obat : cimetidine (Tagamet&reg;), nizatidine (Axid AR&reg;), ranitidine (Zantac&reg;), dan famotidine (Pepcid&reg;).</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Proton pump inhibitors (PPIs)</li>\r\n</ul>\r\n\r\n<p>Proton pump inhibitors (PPIs) adalah salah satu obat yang bisa dibeli bebas di apotek, dengan dosis yang lebih kuat untuk mengatasi asam lambung ketimbang antasida dan H2 receptor blockers.</p>\r\n\r\n<p>Contoh Obat : omeprazole (Prilosec&', 'https://www.youtube.com/embed/2KUZSi3JaWk'),
(4, 'Migrain', 8, 'migrain.png', '<p>Migrain adalah sakit kepala yang terasa berdenyut, dan biasanya terjadi pada satu sisi kepala saja. Migrain merupakan penyakit saraf, yang dapat menimbulkan gejala, seperti mual, muntah, serta sensitif terhadap cahaya atau suara. Serangan migrain&nbsp;dengan rasa nyeri yang mengganggu dapat berlangsung selama beberapa jam atau beberapa hari. Migrain lebih sering diderita oleh wanita dibandingkan pria. Menurut hasil penelitian WHO, dari total populasi manusia berusia 18-65 tahun yang melaporkan pernah menderita sakit kepala, sekitar 30 persen di antaranya adalah penderita migrain.</p>\r\n', '<p>Hingga saat ini, penyebab migrain belum dapat dipastikan. Namun dalam banyak kasus serangan migrain, ditemui kadar zat kimia dalam otak yang disebut serotonin menurun. Kondisi ini diduga menyebabkan salah satu saraf otak (trigeminal) melepaskan zat kimia yang menuju ke lapisan luar otak (meningen) sehingga menimbulkan nyeri. Meski penyebabnya belum diketahui, sejumlah faktor berikut ini diduga dapat memicu timbulnya serangan migrain:</p>\r\n\r\n<ul>\r\n	<li>Perubahan hormon pada wanita. Fluktuasi kadar hormon pada wanita, terutama estrogen, berkaitan erat dengan timbulnya migrain.</li>\r\n	<li>Pola makan dan minum. Mengonsumsi makanan asin atau makanan olahan, penambahan rasa manis atau rasa gurih (aspartam atau MSG), serta minuman beralkohol atau mengandung kafein dapat memicu serangan migrain.</li>\r\n	<li>Pemicu dari lingkungan sekitar, seperti asap rokok, aroma parfum atau penghapus cat, dan suara bising.</li>\r\n	<li>Faktor emosi, seperti stres, gelisah, tegang, depresi, atau terlalu gembira.</li>\r\n	<li>Faktor fisik dan kebiasaan, seperti kelelahan, kualitas tidur yang buruk, postur tubuh yang buruk, gangguan tidur karena perbedaan waktu saat bepergian (jet lag), pasca olahraga berat, atau hipoglikemia (kadar gula yang rendah).</li>\r\n	<li>Efek samping konsumsi obat, seperti pil KB atau terapi penggantian hormon.</li>\r\n</ul>\r\n', '<p>Serangan migrain sering kali terjadi pada masa pubertas. Gejalanya dapat berkembang dalam empat tahap, meski tidak semua penderita mengalami semua tahapan ini. Keempat gejala tersebut terdiri dari:</p>\r\n\r\n<ul>\r\n	<li><strong>Tahap prodromal</strong>. Tahapan ini bisa dimulai satu atau dua hari sebelum serangan sakit kepala. Gejala yang dirasakan pada tahap ini meliputi suasana hati yang berubah-ubah, keinginan untuk mengonsumsi makanan tertentu, leher menjadi kaku, sering menguap, konstipasi, sering merasa haus, dan sering buang air kecil.</li>\r\n	<li><strong>Aura</strong>. Tahap ini bisa terjadi sebelum atau selama migrain. Contohnya adalah gangguan penglihatan, seperti melihat kilatan cahaya dan pandangan kabur. Selain gangguan penglihatan, penderita juga dapat mengalami gangguan verbal, sensorik, dan motorik. Tiap gejala umumnya bermula secara perlahan, dan dapat berkembang atau bertahan selama 20-60 menit.</li>\r\n	<li><strong>Serangan sakit kepala</strong>. Tahap ini dapat berlangsung selama kurang lebih 4-72 jam. Beberapa gejala yang dapat timbul adalah sakit kepala pada satu sisi atau terkadang pada kedua sisi kepala, kepala terasa berdenyut atau kesemutan, pandangan kabur, pening atau pusing, mual dan muntah, serta sensitif terhadap cahaya, suara, penciuman, dan sentuhan.</li>\r\n	<li><strong>Resolusi</strong>. Tahap akhir migrain ini terjadi setelah serangan migrain. Umumnya, resolusi terjadi sekitar 24 jam pasca serangan. Gejala pada tahap ini meliputi perubahan suasana hati, sakit kepala ringan, kelelahan, dan sensitif terhadap cahaya dan suara.</li>\r\n</ul>\r\n', '<ul>\r\n	<li><strong>Obat Pereda Nyeri</strong></li>\r\n</ul>\r\n\r\n<p>Obat-obatan jenis ini cenderung efektif jika dikonsumsi saat tanda awal serangan migrain muncul. Meski demikian, obat ini memerlukan waktu untuk diserap ke dalam aliran darah. Obat-obatan pereda nyeri yang dijual bebas dan sering digunakan untuk migrain,</p>\r\n\r\n<p>contohnya adalah : paracetamol atau aspirin.</p>\r\n\r\n<ul>\r\n	<li><strong>Triptan</strong></li>\r\n</ul>\r\n\r\n<p>Triptan adalah kelompok obat-obatan yang dapat meredam perubahan zat kimia dalam otak yang menjadi penyebab migrain. Triptan berfungsi menyempitkan pembuluh darah sehingga menghalangi penyaluran rasa sakit pada saraf otak. Obat ini biasa diberikan sebagai pereda nyeri yang khusus untuk sakit kepala dan migraine, dalam bentuk pil, semprot hidung, atausuntik.</p>\r\n\r\n<p>Contoh obat-obatan triptan adalah sumatriptan, nama merek dagangnya : Triptagic, Tryptamin, Clustrex, Actrex.</p>\r\n', 'https://www.youtube.com/embed/WLm_TaMNtcU'),
(5, 'Sakit Kepala Tegang', 8, 'tegang.png', '<p>Sakit kepala tegang atau tension headache adalah jenis sakit kepala yang rasanya sering digambarkan seperti ada tali yang mengikat kuat pada kepala. Kondisi ini bisa dialami siapa saja dan pada usia berapa pun, namun lebih sering terjadi pada wanita dewasa. Meski cukup mengganggu, sebagian besar sakit kepala tegang tidak terlalu parah, sehingga penderitanya masih bisa melakukan kegiatan sehari-hari.</p>\r\n', '<p>Penyebab sakit kepala tegang atau&nbsp;<em>tension headache</em>&nbsp;belum diketahui secara pasti. Namun, kondisi ini diduga terjadi saat otot wajah, kulit kepala, dan leher menjadi tegang atau mengalami kontraksi. Beberapa faktor yang dapat memicu ketegangan atau kontraksi otot tersebut, meliputi:</p>\r\n\r\n<ul>\r\n	<li>Stres atau tekanan, baik secara fisik maupun kejiwaan.</li>\r\n	<li>Kurang istirahat atau kelelahan.</li>\r\n	<li>Rasa lapar.</li>\r\n	<li>Sinar matahari yang terik.</li>\r\n	<li>Aroma tertentu.</li>\r\n	<li>Postur tubuh yang buruk.</li>\r\n	<li>Kurang olahraga.</li>\r\n	<li>Konsumsi alkohol secara berlebihan.</li>\r\n	<li>Merokok.</li>\r\n	<li>Dehidrasi.</li>\r\n</ul>\r\n', '<p>Gejala utama sakit kepala tegang adalah rasa sakit seperti tertekan pada dahi, kedua sisi kepala, atau kepala bagian belakang. Rasa sakit terutama timbul saat bangun dari posisi berbaring. Rasa sakit juga bisa terasa sampai ke pelipis, leher bagian belakang, atau bahu. Durasi sakit kepala yang timbul bervariasi, bisa berlangsung singkat selama 30 menit atau berjam-jam, serta terjadi sekali atau berulang hingga 3 bulan.</p>\r\n\r\n<p>Selain keluhan&nbsp;sakit kepala, gejala lain yang dapat muncul adalah:</p>\r\n\r\n<ul>\r\n	<li>Nyeri otot.</li>\r\n	<li>Gelisah dan konsentrasi terganggu.</li>\r\n	<li>Sulit tidur atau mudah terbangun saat tidur.</li>\r\n</ul>\r\n', '<p>Pengobatan sakit kepala tegang bertujuan untuk mengatasi gejala dan mencegah risiko sakit kepala muncul kembali. Langkah penanganan dapat dilakukan di rumah dengan cara:</p>\r\n\r\n<ul>\r\n	<li>Terapi relaksasi</li>\r\n</ul>\r\n\r\n<p>Relaksasi dapat membantu meredakan sakit kepala tegang yang disebabkan stres. Relaksasi dapat dilakukan dengan meditasi, yoga, atau pijatan di kepala.</p>\r\n\r\n<ul>\r\n	<li>Kompres air hangat</li>\r\n</ul>\r\n\r\n<p>Selain melakukan terapi relaksasi, mengompres bagian dahi dan leher dengan air hangat juga bisa membantu meredakan sakit kepala secara alami.</p>\r\n\r\n<ul>\r\n	<li>Obat pereda nyeri</li>\r\n</ul>\r\n\r\n<p>Penderita dapat mengonsumsi obat pereda nyeri yang dijual bebas, seperti paracetamol. Penderita juga dapat mengonsumsi obat pereda nyeri kombinasi, misalnya paracetamol dengan ibuprofen. Kombinasi obat pereda nyeri bisa lebih efektif dalam mengatasi sakit kepala tegang.</p>\r\n\r\n<p>Jika sakit kepala tegang tidak bisa diatasi dengan obat pereda nyeri atau sakit kepala tegang yang dialami parah, dokter akan meresepkan obat sakit kepala atau obat-obatan lain, seperti obat venlafaxine, mirtazapine, antikonvulsan, atau obat pelemas otot, seperti tizanidine.</p>\r\n', '');

-- --------------------------------------------------------

--
-- Table structure for table `pertanyaan`
--

CREATE TABLE `pertanyaan` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `usia` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pertanyaan` varchar(255) NOT NULL,
  `tgl` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pertanyaan`
--

INSERT INTO `pertanyaan` (`id`, `nama`, `usia`, `email`, `pertanyaan`, `tgl`) VALUES
(1, 'MUHAMMAD IBNU SINA', '21', 'mibnusina26@gmail.com', 'Saya Merasakan Kesedihan Kenapa ya?', '0000-00-00'),
(2, 'Administrators', '24', 'mibnu_s@yahoo.co.id', 'Saya merasakan gatal yang sangat hebat', '0000-00-00'),
(3, 'ibnu sina', '13', 'mibnu_s@yahoo.co.id', 'testes', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penyakit`
--
ALTER TABLE `penyakit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pertanyaan`
--
ALTER TABLE `pertanyaan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `penyakit`
--
ALTER TABLE `penyakit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pertanyaan`
--
ALTER TABLE `pertanyaan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
