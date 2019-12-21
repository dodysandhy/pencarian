<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <!-- nama website -->
    <title>Pencarian Barang</title>
    <!-- untuk mengakses bootstrap.min.css secara online -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <!-- untuk mengakses font-awesome.css secara online -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
    integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    <!-- untuk mengakses icon webisite -->
    <link rel="shortcut icon" href="./img/ico.png">
    <!-- style tambahan pada website -->
    <style> 
    body { 
        margin-top: 0px;
        margin-bottom: 30px;
    }
    .jumbotron {
        background-color: #010038!important;
    }
    .btn-cari {
        color: #fff;
        background-color: #3fc5f0;
        border-color: #048998;
    }

    .box{
        color: #000000;
        background-color: #ffffff;
        border-color: #999999;
    }
    .btn-cari:hover {
        color: #fff;
        background-color: #42dee1;
        border-color: #057581;
    }
    .btn-cari:focus, .btn-cari.focus {
        box-shadow: 0 0 0 0.2rem rgba(48, 119, 194, 0.5);
    }
    .container {
        width: auto;
        max-width: 680px;
        padding: 0 10px;
    }
    .footer {
        position: fixed;
        bottom: 0;
        width: 100%;
        height: 40px;
        line-height: 40px;
        background-color: #e9e4e6;
    }
    .square {
        border: 2px solid #ddd;
        border-radius: 8px;
    }
    .col-centered{
        display: inline-block;
        float: none;
    }
    </style>
</head>
<body>
<?php
// memanggil controller.php
include "./connect/controller.php";
?>
    <!-- Untuk mencari barang -->
    <div class="jumbotron jumbotron-fluid">
        <div class="container container-fluid">
            <form method="post" role="search">
                <div class="input-group input-group-lg">
                    <input type="text" name="cari" class="form-control" placeholder="Cari benda" autofocus>
                    <div class="input-group-append">
                        <button class="btn btn-cari" name="submit" type="submit">Cari</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <!-- Untuk menampilkan barang pencarian -->
    <?php
    if (ISSET($_POST['submit'])){
        $cari = $_POST['cari'];
        $query = "SELECT * FROM jenisbarang INNER JOIN barang ON jenis_barangs = jenis_barang WHERE nama_barang LIKE '%$cari%' OR jenis_barang LIKE '%$cari%' ";
        $sql = mysqli_query($mysqli, $query);

        if(empty($cari)){
            die(); }
    ?>

    <div class="container-fluid">
    <h5>Barang yang di cari <b><?php echo $cari ?></b></h5>
    <hr>
    <?php while ($hasil = mysqli_fetch_array($sql)) { ?>
        <div class="card box">
            <div class="card-body">
                <b><?php echo $hasil['nama_barang']?></b><br>
                <b><?php echo $hasil['harga']?></b><br>
                <hr>
                <b>jumlah &nbsp; <?php echo $hasil['jumlah']?></b>
                <hr>
                <b>lokasi &nbsp; <?php echo $hasil['lokasi']?></b>
            </div>
        </div>
        <?php } } ?>
    </div>
</body>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</html>