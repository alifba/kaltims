<?= $this->extend('layout/template') ?>
<?= $this->section('content') ?>

<h3><i class="fas fa-user-graduate mr-2"></i> DAFTAR SISWA</h3>
<hr>

<!-- form tahun ajar -->

<form action="" method="POST">
    <div class="row mb-1">


        <div class="col-sm-5">
            <h5><i class="fas fa-angle-right"></i> Tahun Ajaran :</h5>
        </div>
        <div class="col-sm-7">
            <select class="form-control " id="tahun">
                <option value="<?= null; ?>">Pilih Tahun Ajaran</option>
                <?php foreach ($tahunajar as $a) : ?>
                    <option type='submit' value="<?= $a['ID_THNAJAR']; ?>"><?= $a['NM_THNAJAR']; ?></option>
                <?php endforeach; ?>
            </select>
        </div>
    </div>
</form>



<!--  -->

<!-- form jurusan -->
<div class="tahun">
    <form action="" method="POST">

        <div class="row mb-1">
            <div class="col-sm-5">
                <h5><i class="fas fa-angle-right"></i> Jurusan :</h5>
            </div>
            <div class="col-sm-7">
                <select class="form-control " id="jurusan">
                    <option>Pilih Jurusan</option>
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
                    </select>
                </div>
            </div>
        </form>
        <!--  -->



        <!-- membuat table -->
        <div class="kelas">
            <div style="height: 315px;overflow:scroll;">
                <table class="table" style="height:100px;overflow:hidden;">
                    <thead class="thead-dark">
                        <tr>
                            <th scope="col-1">No.</th>
                            <th scope="col-2">Angkatan</th>
                            <th scope="col-2">Jurusan</th>
                            <th scope="col-2">Kelas</th>
                            <th scope="col-2">Nama</th>
                            <th scope="col-2">Nis</th>
                            <th scope="col-1">Aksi</th>
                        </tr>
                    </thead>
                </table>
            </div>
        </div>
    </div>
</div>

<?= $this->endsection() ?>