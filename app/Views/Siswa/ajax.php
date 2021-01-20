<!--  -->

<!-- form jurusan -->
<form action="" method="POST">

    <div class="row mb-1">
        <div class="col-sm-5">
            <h5><i class="fas fa-angle-right"></i> Jurusan :</h5>
        </div>
        <div class="col-sm-7">
            <select class="form-control " id="jurusan">
                <option>Pilih Jurusan</option>
                <?php foreach ($jurusan as $j) : ?>
                    <option value="<?= $j['ID_JURUSAN']; ?>"><?= $j['NM_JURUSAN']; ?></option>
                <?php endforeach; ?>
            </select>
        </div>
    </div>

</form>
<!--  -->

<!-- form kelas -->
<div class="jurusan">
    <form action="" method="POST">
        <div class="row mb-4">
            <div class="col-sm-5">
                <h5><i class="fas fa-angle-right"></i> Kelas :</h5>
            </div>
            <div class="col-sm-7">
                <select class="form-control " id="kelas" name="kelas">
                    <option>Pilih kelas</option>
                    <?php foreach ($kelas as $k) : ?>
                        <option value="<?= $k['ID_KELAS']; ?>">
                            <?= $k['NM_KELAS']; ?>
                        </option>
                        <?php endforeach; ?>`
                </select>
            </div>
        </div>
        <h3><?= 'tahun :' . @$itahun . 'jurusan :' . @$ijurusan . 'KElas :' . @$ikelas; ?></h3>

    </form>

    <!-- hubungkan dengan template -->
    <?php $this->extend('layout/table') ?>
    <?php $this->section('content') ?>
    <?php $this->endSection(); ?>
    <!-- akhir template -->

</div>

<script src="/js/admin.js"></script>