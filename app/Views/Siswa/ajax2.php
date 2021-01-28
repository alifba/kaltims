<form action="" method="POST">
    <div class="row mb-4">
        <div class="col-sm-5">
            <h5><i class="fas fa-angle-right"></i> Kelas :</h5>
        </div>
        <div class="col-sm-7">
            <select class="form-control " id="kelas" name="kelas">
                <option value="<?= null; ?>">Pilih kelas</option>

                <?php foreach ($kelas as $k) : ?>
                    <option value="<?= $k['ID_KELAS']; ?>">
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
    <h3><?= 'tahun :' . @$itahun . 'jurusan :' . @$ijurusan ?></h3>
    <div style="height: 315px;overflow:scroll;">
        <table class="table" style="height:100px;overflow:hidden;">
            <thead class="thead-dark">
                <tr>
                    <th scope="col-sm-1">No.</th>
                    <th scope="col-sm-2">Angkatan</th>

                    <th scope="col-sm-2">Jurusan</th>

                    <th scope="col-sm-2">Kelas</th>

                    <th scope="col-sm-2">Nama</th>
                    <th scope="col-sm-2">Nis</th>
                    <th scope="col-sm-1">Aksi</th>
                </tr>
            </thead>
        </table>
    </div>
</div>

<script src="/js/admin.js"></script>