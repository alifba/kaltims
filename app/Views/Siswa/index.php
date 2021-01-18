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
            <select class="form-control d-inline" style="width: 90%;">
                <option>Pilih Tahun Ajaran</option>
                <?php foreach ($tahunajar as $a) : ?>
                    <option type='submit' value="<?= $a['ID_THNAJAR']; ?>" name="ID_THNAJAR"><?= $a['NM_THNAJAR']; ?></option>
                <?php endforeach; ?>
            </select>
            <div class="input-group-append d-inline" style="width: 10%;">
                <button class="btn btn-outline-secondary" type="submit" id="button-addon2" name="tahun">Cari</button>
            </div>
        </div>
    </div>
</form>



<!--  -->

<!-- form jurusan -->
<form action="" method="POST">
    <div class="row mb-1">


        <div class="col-sm-5">
            <h5><i class="fas fa-angle-right"></i> Jurusan :</h5>
        </div>
        <div class="col-sm-7">
            <select class="form-control d-inline" style="width: 90%;">
                <option>Pilih Jurusan</option>
                <?php foreach ($jurusan as $j) : ?>
                    <option value="<?= $j['ID_JURUSAN']; ?>" name="ID_JURUSAN"><?= $j['NM_JURUSAN']; ?></option>
                <?php endforeach; ?>
            </select>
            <div class="input-group-append d-inline" style="width: 10%;">
                <button class="btn btn-outline-secondary" type="submit" id="button-addon2" name="jurusan">Cari</button>
            </div>
        </div>
    </div>
</form>
<!--  -->

<!-- form kelas -->
<form action="" method="POST">
    <div class="row mb-4">
        <div class="col-sm-5">
            <h5><i class="fas fa-angle-right"></i> Kelas :</h5>
        </div>
        <div class="col-sm-7">
            <select class="form-control d-inline" style="width: 90%;">
                <option>Pilih Kelas</option>
                <?php foreach ($kelas as $k) : ?>
                    <option value="<?= $k['ID_JURUSAN']; ?>" name="ID_JURUSAN"><?= $k['NM_KELAS']; ?></option>
                <?php endforeach; ?>
            </select>
            <div class="input-group-append d-inline" style="width: 10%;">
                <button class="btn btn-outline-secondary" type="submit" id="button-addon2" name="kelas">Cari</button>
            </div>
        </div>
    </div>
</form>
<!--  -->



<!-- membuat table -->
<div style="height: 315px;overflow:scroll;">
    <table class="table" style="height:100px;overflow:hidden;">
        <thead class="thead-dark">
            <tr>
                <th scope="col-1">No.</th>
                <th scope="col-2">Angkatan</th>
                <th scope="col-2">Jurusan</th>
                <th scope="col-2">Nama</th>
                <th scope="col-2">Nisn</th>
                <th scope="col-2">Nis</th>
                <th scope="col-1">Aksi</th>
            </tr>
        </thead>
        <tbody>
            <?php $i = 1 ?>
            <?php foreach ($siswa as $s) : ?>
                <tr>
                    <td><?= $i++; ?></td>
                    <td>2020/2021</td>
                    <td>RPL</td>
                    <td><?= $s['NM_SISWA']; ?></td>
                    <td>098766</td>
                    <td>19282736</td>
                    <td>
                        <a href=""> <i class="fas fa-info-circle"></i></a>
                        <a href=""><i class=" fas fa-edit"></i></a>
                        <a href=""><i class="fas fa-trash-alt"></i>
                    </td>
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</div>

<?= $this->endsection() ?>