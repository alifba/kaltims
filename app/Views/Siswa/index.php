<?= $this->extend('layout/template') ?>
<?= $this->section('content') ?>

<h3><i class="fas fa-user-graduate mr-2"></i> DAFTAR SISWA</h3>
<hr>

<!-- membuat inputan dan tambah data -->

<div class="row mb-1">
    <div class="col-sm-5">
        <h5><i class="fas fa-angle-right"></i> Tahun Ajaran :</h5>
    </div>
    <div class="col-sm-7">
        <form action="" method="POST">
            <select class="form-control">
                <option>Pilih Tahun Ajaran</option>
                <?php foreach ($tahunajar as $a) : ?>
                    <option value="<?= $a['NM_THNAJAR']; ?>" name="Model"><?= $a['NM_THNAJAR']; ?></option>
                <?php endforeach; ?>
            </select>
        </form>
    </div>
</div>
<div class="row mb-1">
    <div class="col-sm-5">
        <h5><i class="fas fa-angle-right"></i> Jurusan :</h5>
    </div>
    <div class="col-sm-7">
        <form action="" method="POST">
            <select class="form-control">
                <option>Pilih Jurusan</option>
                <?php foreach ($jurusan as $j) : ?>
                    <option><?= $j['NM_JURUSAN']; ?></option>
                <?php endforeach; ?>
            </select>
        </form>
    </div>
</div>
<div class="row mb-1">
    <div class="col-sm-5">
        <h5><i class="fas fa-angle-right"></i> Kelas :</h5>
    </div>
    <div class="col-sm-7">
        <form action="" method="POST">
            <select class="form-control">
                <option>Pilih Kelas</option>
                <?php foreach ($kelas as $k) : ?>
                    <option value="<?= $k['NM_KELAS']; ?>"><?= $k['NM_KELAS']; ?></option>
                <?php endforeach; ?>
            </select>
        </form>
    </div>
</div>

<div class="row">
    <div class="col-sm-5"></div>
    <div class="col-sm-7">
        <div class="input-group mb-3">
            <input type="text" class="form-control" placeholder="Masukkan Keyword" aria-label="Recipient's username" aria-describedby="button-addon2">
            <div class="input-group-append">
                <button class="btn btn-outline-secondary" type="button" id="button-addon2">Cari</button>
            </div>
        </div>
    </div>
</div>



<!-- membuat table -->
<div style="height: 300px;overflow:scroll;">
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