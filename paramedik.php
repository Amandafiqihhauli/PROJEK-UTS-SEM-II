<?php
include_once('top.php');
include_once('menu.php');
include_once('koneksi.php');

$query = "SELECT * FROM paramedik";
$paramediks = $dbh->query($query);
?>
<div class="container-fluid px-4">
    <div class="d-flex mt-4">
        <h3 class="me-auto">Paramedik</h3>
        <a href="Paramedik_create.php" class="btn btn-primary">Tambah Paramedik</a>
    </div>
    
    <table class="table mt-4">
        <tr>
            <th>No</th>
            <th>Nama</th>
            <th>Jenis Kelamin</th>
            <th>Tempat Lahir</th>
            <th>Tanggal Lahir</th>
            <th>No. Telp</th>
            <th>Alamat</th>
            <th>Kategori</th>
            <th>Opsi</th>
        </tr>


        <?php
        $no = 0;
        foreach ($paramediks as $paramedik) :
        ?>
            <tr>
                <td>
                    <!-- tag php + echo bisa disingkat jadi dibawah ini -->
                    <?= $no += 1; ?>
                </td>

                <td><?= $paramedik['nama']; ?></td>
                <td><?= $paramedik['gender']; ?></td>
                <td><?= $paramedik['tmp_lahir']; ?></td>
                <td><?= $paramedik['tgl_lahir']; ?></td>
                <td><?= $paramedik['telpon']; ?></td>
                <td><?= $paramedik['alamat']; ?></td>
                <td><?= $paramedik['kategori']; ?></td>

                <td>
                    <a href="paramedik_edit.php?id=<?= $paramedik['id']; ?>" class="btn btn-primary">Edit</a>
                    <a href="paramedik_delete.php?id=<?= $paramedik['id']; ?>" class="btn btn-danger">Hapus</a>
                </td>

            </tr>

        <?php endforeach ?>
    </table>
</div>

<?php
include_once('bottom.php');
?>