<?php
include_once('top.php');
include_once('menu.php');
include_once('koneksi.php');

$query = "SELECT * FROM pasien";
$pasiens = $dbh->query($query);
?>
<div class="container-fluid px-4">
    <div class="d-flex flex-column flex-md-row justify-content-between align-items-center mt-4">
        <h3 class="mb-3 mb-md-0">Pasien</h3>
        <a href="pasien_create.php" class="btn btn-primary">Tambah Pasien</a>
    </div>

    <div class="table-responsive mt-4">
        <table class="table mt-4">
            <tr>
                <th>No</th>
                <th>Nama Pasien</th>
                <th>Tempat Lahir</th>
                <th>Tanggal Lahir</th>
                <th>JK</th>
                <th>Alamat</th>
                <th>Opsi</th>
            </tr>


            <?php
            $no = 0;
            foreach ($pasiens as $pasien) :
            ?>
                <tr>
                    <td>
                        <!-- tag php + echo bisa disingkat jadi dibawah ini -->
                        <?= $no += 1; ?>
                    </td>

                    <td><?= $pasien['nama']; ?></td>
                    <td><?= $pasien['tmp_lahir']; ?></td>
                    <td><?= $pasien['tgl_lahir']; ?></td>
                    <td><?= $pasien['gender']; ?></td>
                    <td><?= $pasien['alamat']; ?></td>
                    <td>
                        <a href="pasien_edit.php?id=<?= $pasien['id']; ?>" class="btn btn-primary">Edit</a>
                        <a href="pasien_delete.php?id=<?= $pasien['id']; ?>" class="btn btn-danger">Hapus</a>
                    </td>

                </tr>

            <?php endforeach ?>
        </table>
    </div>
</div>

<?php
include_once('bottom.php');
?>