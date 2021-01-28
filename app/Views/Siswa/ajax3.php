<h3><?= 'tahun :' . @$itahun . 'jurusan :' . @$ijurusan . 'kelas :' . @$ikelas; ?></h3>


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
            <tbody>
                <?php $i = 1 ?>
                <?php foreach ($siswa as $s) : ?>
                    <tr>
                        <td><?= $i++; ?></td>
                        <td>2020/2021</td>

                        <td>jurusan</td>

                        <td>kelas</td>

                        <td><?= $s['NM_SISWA']; ?></td>
                        <td><?= $s['NIS_SISWA']; ?></td>
                        <td>
                            <a href="/Siswa/detail"> <i class="fas fa-info-circle"></i></a>
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