<?php $this->renderSection('content') ?>

<!-- membuat table -->
<div class="kelas">
    <div style="height: 315px;overflow:scroll;">
        <table class="table" style="height:100px;overflow:hidden;">
            <thead class="thead-dark">
                <tr>
                    <th scope="col-1">No.</th>
                    <?php if (@$itahun == null) : ?>
                        <th scope="col-2">Angkatan</th>
                    <?php endif; ?>

                    <?php if (@$ijurusan == null) : ?>
                        <th scope="col-2">Jurusan</th>
                    <?php endif; ?>

                    <?php if (@$ikelas == null) : ?>
                        <th scope="col-2">Kelas</th>
                    <?php endif; ?>

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
                        <?php if (@$itahun == null) : ?>
                            <td>2020/2021</td>
                        <?php endif; ?>

                        <?php if (@$ijurusan == null) : ?>
                            <td>jurusan</td>
                        <?php endif; ?>

                        <?php if (@$ikelas == null) : ?>
                            <td>kelas</td>
                        <?php endif; ?>

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
<script src="/js/admin.js"></script>