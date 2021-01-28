<!--  -->

<!-- form jurusan -->
<form action="" method="POST">

    <div class="row mb-1">
        <div class="col-sm-5">
            <h5><i class="fas fa-angle-right"></i> Jurusan :</h5>
        </div>
        <div class="col-sm-7">
            <select class="form-control " id="jurusan">
                <option value="<?= null; ?>">Pilih Jurusan</option>
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
<!-- akhir template -->

<script src="/js/admin.js"></script>