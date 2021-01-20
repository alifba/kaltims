<!-- membuat table -->
<h1><?= $ikelas; ?></h1>
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

<script src="/js/admin.js"></script>