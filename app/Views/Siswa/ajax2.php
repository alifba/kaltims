<form action="" method="POST">
    <div class="row mb-4">
        <div class="col-sm-5">
            <h5><i class="fas fa-angle-right"></i> Kelas :</h5>
            <?= @$ijurusan; ?>
        </div>
        <div class="col-sm-7">
            <select class="form-control " id="kelas" name="kelas">
                <option>Pilih kelas</option>
                <?php foreach ($kelas as $k) : ?>
                    <option value="<?= $k['ID_JURUSAN']; ?>">
                        <?= $k['NM_KELAS']; ?>
                    </option>
                    <?php endforeach; ?>`
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
</div>

<script src="/js/admin.js"></script>