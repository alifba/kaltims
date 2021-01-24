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
        <h3><?= 'tahun :' . @$itahun ?></h3>

    </form>
</div>

<!-- membuat table -->
<div class="kelas">
    <div style="height: 315px;overflow:scroll;">
        <table class="table" style="height:100px;overflow:hidden;">
            <thead class="thead-dark">
                <tr>
                    <th scope="col-1">No.</th>
                    <?php if ($itahun == null) : ?>
                        <th scope="col-2">Angkatan</th>
                    <?php endif; ?>

                    <th scope="col-2">Jurusan</th>

                    <th scope="col-2">Kelas</th>

                    <th scope="col-2">Nama</th>
                    <th scope="col-2">Nis</th>
                    <th scope="col-1">Aksi</th>
                </tr>
            </thead>
            <tbody>
                <?php $i = 1 ?>
                <?php foreach ($siswa as $s) : ?>
                    <tr>
                        <td><?= $i++; ?></td>
                        <?php if ($itahun == null) : ?>
                            <td>2020/2021</td>
                        <?php endif; ?>


                        <td>jurusan</td>


                        <td>kelas</td>

                        <td><?= $s['NM_SISWA']; ?></td>
                        <td><?= $s['NIS_SISWA']; ?></td>
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
</div>
<!-- akhir template -->

<script src="/js/admin.js"></script>