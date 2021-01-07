<?= $this->extend('layout/template') ?>
<?= $this->section('content') ?>


<h3><i class="fas fa-user-graduate mr-2"></i> DAFTAR SISWA</h3>
<hr>

<!-- membuat inputan dan tambah data -->

<div class="flexbox">
    <a href="?halaman=siswa&form=tambah_siswa">
        <button class="btn btn-dark mb-4">
            <h6><i class="fas fa-plus-square"></i> Tambah Data Mahasiswa</h6>
        </button>
    </a>

    <form action="" style="width: 70%;display:flex;justify-content:space-between" method="POST">

        <select class="form-control" style="width: 25%;">
            <option>Kelas</option>
        </select>

        <select class="form-control" style="width: 30%;">
            <option>Tahun Ajaran</option>
        </select>

        <input name="keyword" type="text" class='form-control' autocomplete="off" autofocus placeholder="masukkan keyword" style="width: 30%;">

        <button class="btn btn-success form-control" style="width:10% ;" type="submit" name="cari">Cari</button>
    </form>

</div>

<!-- membuat table -->

<table class="table">
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
        <tr>
            <td>1</td>
            <td>2020/2021</td>
            <td>RPL</td>
            <td>Alif Nurrohman</td>
            <td>098766</td>
            <td>19282736</td>
            <td>
                <a href=""> <i class="fas fa-info-circle"></i></a>
                <a href=""><i class=" fas fa-edit"></i></a>
                <a href=""><i class="fas fa-trash-alt"></i>
            </td>
        </tr>
    </tbody>
</table>

<?= $this->endsection() ?>