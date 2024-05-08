<?php
include_once('top.php');
include_once('menu.php');
include_once('koneksi.php');

$query = "SELECT * FROM periksa";
$periksas = $dbh->query($query);
?>

<div class="container-fluid px-4">
    <div class="d-flex mt-4">
        <h3 class="me-auto">Periksa</h3>
        <a href="periksa_create.php" class="btn btn-primary">Tambah</a>
    </div>
    
    <table class="table mt-4">
        <tr>
            <th>No</th>
            <th>Tanggal</th>
            <th>Berat</th>
            <th>Tinggi</th>
            <th>Tensi</th>
            <th>Keterangan</th>
            <th>Opsi</th>
        </tr>


        <?php
        $no = 0;
        foreach ($periksas as $periksa) :
        ?>
            <tr>
                <td>
                    <!-- tag php + echo bisa disingkat jadi dibawah ini -->
                    <?= $no += 1; ?>
                </td>

                <td><?= $periksa['tanggal']; ?></td>
                <td><?= $periksa['berat']; ?></td>
                <td><?= $periksa['tinggi']; ?></td>
                <td><?= $periksa['tensi']; ?></td>
                <td><?= $periksa['keterangan']; ?></td>

                <td>
                    <a href="periksa_edit.php?id=<?= $periksa['id']; ?>" class="btn btn-primary">Edit</a>
                    <a href="periksa_delete.php?id=<?= $periksa['id']; ?>" class="btn btn-danger">Hapus</a>
                </td>

            </tr>

        <?php endforeach ?>
    </table>
</div>

<?php
include_once('bottom.php');
?>