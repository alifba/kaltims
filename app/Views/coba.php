<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?= $title; ?></title>
</head>

<body>
    <?php foreach ($siswa as $s) : ?>
        <ul>
            <li><?= $s['NM_ANGKATAN']; ?></li>
        </ul>
    <?php endforeach; ?>
</body>

</html>