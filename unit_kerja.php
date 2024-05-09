<?php
include_once('top.php');
include_once('menu.php');
include_once('koneksi.php');

$query = "SELECT * FROM unit_kerja";
$unit_kerjas = $dbh->query($query);
?>

<div class="container-fluid px-4">
    <div class="d-flex flex-column flex-md-row justify-content-between align-items-center mt-4">
        <h3 class="mb-3 mb-md-0">Unit Kerja</h3>
        <a href="unitKerja_create.php" class="btn btn-primary">Tambah Unit</a>
    </div>

    <div class="table-responsive mt-4">
        <table class="table mt-4">
            <tr>
                <th>No</th>
                <th>Nama Unit</th>
                <th>Opsi</th>
            </tr>


            <?php
            $no = 0;
            foreach ($unit_kerjas as $unit_kerja) :
            ?>
                <tr>
                    <td>
                        <!-- tag php + echo bisa disingkat jadi dibawah ini -->
                        <?= $no += 1; ?>
                    </td>
                    <td><?= $unit_kerja['nama']; ?></td>
                    <td>
                        <a href="unitKerja_edit.php?id=<?= $unit_kerja['id']; ?>" class="btn btn-primary">Edit</a>
                        <a href="unitKerja_delete.php?id=<?= $unit_kerja['id']; ?>" class="btn btn-danger">Hapus</a>
                    </td>

                </tr>

            <?php endforeach ?>
        </table>
    </div>
</div>

<?php
include_once('bottom.php');
?>