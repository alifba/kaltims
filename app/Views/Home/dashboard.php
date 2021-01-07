<?= $this->extend('layout/template') ?>

<?= $this->section('content') ?>

<h3><i class="fas fa-tachometer-alt mr-2"></i> DASHBOARD</h3>
<hr>

<!-- membuat card -->
<div class="row text-white mb-4">

    <div class="card bg-dark ml-3 pointer" style="width: 20rem;">
        <div class="card-body">
            <div class="card-body-icon"><i class="fas fa-user-graduate mr-2"></i></div>
            <h5 class="card-title">DAFTAR SISWA</h5>
            <div class="display-4  mb-3">1.200</div>
        </div>
    </div>

    <div class="card bg-dark ml-4 pointer" style="width: 20rem;">
        <div class="card-body">
            <div class="card-body-icon"><i class="fas fa-paper-plane mr-2"></i></div>
            <h5 class="card-title">DAFTAR ALUMNI</h5>
            <div class="display-4  mb-3">1920</div>
        </div>
    </div>

    <div class="card bg-dark ml-4 pointer" style="width: 20rem;">
        <div class="card-body">
            <div class="card-body-icon"><i class="fas fa-briefcase mr-2"></i></div>
            <h5 class="card-title">DAFTAR KEGIATAN</h5>
            <div class="display-4  mb-3">1920</div>
        </div>
    </div>

</div>

<div class="row text-white">

    <div class="card bg-dark ml-3 pointer" style="width: 20rem;">
        <div class="card-body">
            <div class="card-body-icon"><i class="fas fa-chart-bar mr-2"></i></div>
            <h5 class="card-title">GRAFIK SISWA</h5>
            <div class="display-4  mb-3">1.200</div>
        </div>
    </div>

    <div class="card bg-dark ml-4 pointer" style="width: 20rem;">
        <div class="card-body">
            <div class="card-body-icon"><i class="fas fa-chart-bar mr-2"></i></div>
            <h5 class="card-title">GRAFIK ALUMNI</h5>
            <div class="display-4  mb-3">1920</div>
        </div>
    </div>

    <div class="card bg-dark ml-4 pointer" style="width: 20rem;">
        <div class="card-body">
            <div class="card-body-icon"><i class="fas fa-chart-bar mr-2"></i></div>
            <h5 class="card-title">GRAFIK KEGIATAN</h5>
            <div class="display-4  mb-3">1920</div>
        </div>
    </div>

</div>

<?= $this->endsection() ?>