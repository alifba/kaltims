<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="fontawesome-free-5.15.1-web/css/all.min.css">
    <link rel="stylesheet" href="/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/admin.css">

    <script src="/js/jquery.lama.js"></script>
    <script src="/js/admin.js"></script>
</head>

<body style="overflow: hidden;">

    <!-- membuat navbar -->
    <nav class="navbar navbar-expand-lg navbar-light bg-warning fixed-top">
        <a href="#" class="navbar-brand">SELAMAT DATANG ADMIN | <b>SMKN 1 CILEGON</b></a>

        <form action="" class="form-inline my-2 my-lg-0 ml-auto">
            <input type="search" class="form-control mr-sm-2" placeholder="search" aria-label="search">
            <button class="btn btn-outline-success my-2 my-sn-0" type="submit">Search</button>
        </form>

        <div class="icon ml-4">
            <h5>
                <i class="fas fa-envelope mr-3" data-toggle="tooltip" title="Pesan Masuk"></i>
                <i class="fas fa-bell mr-3" data-toggle="tooltip" title="Notifikasi"></i>
                <i class="fas fa-sign-out-alt mr-3" data-toggle="tooltip" title="Sign Out"></i>
            </h5>
        </div>
    </nav>

    <!-- membuat sidebar & isinya-->


    <div class="row no-gutters mt-5">
        <!-- membuat sidebar -->
        <div class="col-md-2 bg-dark mt-2 pr-3 pt-4">
            <ul class="nav flex-column flex-around ml-3 mb-4">
                <li class="nav-item">
                    <a href="<?= base_url() ?>" class="nav-link active"><i class="fas fa-tachometer-alt mr-2"></i>
                        Dashboard</a>
                    <hr class="bg-secondary">
                </li>
                <li class="nav-item">
                    <a href="<?= base_url('/Siswa') ?>" class="nav-link"><i class="fas fa-user-graduate mr-2"></i> Daftar
                        Siswa</a>
                    <hr class="bg-secondary">
                </li>
                <li class="nav-item">
                    <a href="?halaman=grafik_siswa" class="nav-link"><i class="fas fa-chart-bar mr-2"></i> Grafik
                        Siswa</a>
                    <hr class="bg-secondary">
                </li>
                <li class="nav-item">
                    <a href="?halaman=alumni" class="nav-link"><i class="fas fa-paper-plane mr-2"></i> Daftar Alumni</a>
                    <hr class="bg-secondary">
                </li>
                <li class="nav-item">
                    <a href="?halaman=grafik_alumni" class="nav-link"><i class="fas fa-chart-bar mr-2"></i>Grafik
                        Alumni</a>
                    <hr class="bg-secondary">
                </li>
                <li class="nav-item">
                    <a href="?halaman=kegiatan" class="nav-link"><i class="fas fa-briefcase mr-2"></i> Daftar Kegiatan</a>
                    <hr class="bg-secondary">
                </li>
                <li class="nav-item">
                    <a href="?halaman=grafik_kegiatan" class="nav-link"><i class="fas fa-chart-bar mr-2"></i>Grafik
                        Kegiatan</a>
                    <hr class="bg-secondary">
                </li>
            </ul>
        </div>
        <div class="col-md-10 p-5 pt-2">



            <?php $this->renderSection('content') ?>


        </div>
    </div>
    <script src="/js/popper.min.js"></script>
    <script src="/js/bootstrap.min.js"></script>
</body>

</html>