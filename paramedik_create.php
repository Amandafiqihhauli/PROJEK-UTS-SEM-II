<?php
include_once('koneksi.php');
$unit_kerja = $dbh->query('SELECT * FROM unit_kerja');

include_once('top.php');
include_once('menu.php');
?>
<div class="container-fluid px-4">
    <h1 class="mt-4">Tambah Paramedik</h1>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <form action="paramedik_store.php" method="post">
        <div class="form-group row">
            <label for="nama" class="col-4 col-form-label">Nama</label>
            <div class="col-8">
                <input id="nama" name="nama" type="text" class="form-control" required="required">
            </div>
        </div>
        <div class="form-group row">
            <label class="col-4">Jenis Kelamin</label>
            <div class="col-8">
                <div class="custom-control custom-radio custom-control-inline">
                    <input name="gender" id="gender_0" type="radio" class="custom-control-input" value="L" required="required">
                    <label for="gender_0" class="custom-control-label">Laki-Laki</label>
                </div>
                <div class="custom-control custom-radio custom-control-inline">
                    <input name="gender" id="gender_1" type="radio" class="custom-control-input" value="P" required="required">
                    <label for="gender_1" class="custom-control-label">Perempuan</label>
                </div>
            </div>
        </div>
        <div class="form-group row">
            <label for="tmp_lahir" class="col-4 col-form-label">Tempat Lahir</label>
            <div class="col-8">
                <input id="tmp_lahir" name="tmp_lahir" type="text" class="form-control" required="required">
            </div>
        </div>
        <div class="form-group row">
            <label for="tgl_lahir" class="col-4 col-form-label">Tanggal Lahir</label>
            <div class="col-8">
                <input id="tgl_lahir" name="tgl_lahir" type="date" class="form-control" required="required">
            </div>
        </div>
        <div class="form-group row">
            <label for="telpon" class="col-4 col-form-label">No. Telp</label>
            <div class="col-8">
                <input id="telpon" name="telpon" type="number" class="form-control" required="required">
            </div>
        </div>
        <div class="form-group row">
            <label for="alamat" class="col-4 col-form-label">Alamat</label>
            <div class="col-8">
                <textarea id="alamat" name="alamat" type="text" class="form-control" required="required"></textarea>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-4">Kategori</label>
            <div class="col-8">
                <div class="custom-control custom-radio custom-control-inline">
                    <input name="kategori" id="k1" type="radio" class="custom-control-input" value="dokter umum" required="required">
                    <label for="k1" class="custom-control-label">Dokter Umum</label>
                </div>

                <div class="custom-control custom-radio custom-control-inline">
                    <input name="kategori" id="k2" type="radio" class="custom-control-input" value="dokter bedah" required="required">
                    <label for="k2" class="custom-control-label">Dokter Bedah</label>
                </div>

                <div class="custom-control custom-radio custom-control-inline">
                    <input name="kategori" id="k3" type="radio" class="custom-control-input" value="dokter gigi" required="required">
                    <label for="k3" class="custom-control-label">Dokter Gigi</label>
                </div>

                <div class="custom-control custom-radio custom-control-inline">
                    <input name="kategori" id="k4" type="radio" class="custom-control-input" value="dokter kandungan" required="required">
                    <label for="k4" class="custom-control-label">Dokter Kandungan</label>
                </div>

                <div class="custom-control custom-radio custom-control-inline">
                    <input name="kategori" id="k5" type="radio" class="custom-control-input" value="ahli gizi" required="required">
                    <label for="k5" class="custom-control-label">Ahli Gizi</label>
                </div>

                <div class="custom-control custom-radio custom-control-inline">
                    <input name="kategori" id="k6" type="radio" class="custom-control-input" value="dokter spesialis" required="required">
                    <label for="k6" class="custom-control-label">Dokter Spesialis</label>
                </div>

                <div class="custom-control custom-radio custom-control-inline">
                    <input name="kategori" id="k7" type="radio" class="custom-control-input" value="bidan" required="required">
                    <label for="k7" class="custom-control-label">Bidan</label>
                </div>

                <div class="custom-control custom-radio custom-control-inline">
                    <input name="kategori" id="k8" type="radio" class="custom-control-input" value="perawat" required="required">
                    <label for="k8" class="custom-control-label">Perawat</label>
                </div>

                <div class="custom-control custom-radio custom-control-inline">
                    <input name="kategori" id="k9" type="radio" class="custom-control-input" value="apoteker" required="required">
                    <label for="k9" class="custom-control-label">Apoteker</label>
                </div>

                <div class="custom-control custom-radio custom-control-inline">
                    <input name="kategori" id="k10" type="radio" class="custom-control-input" value="psikiater" required="required">
                    <label for="k10" class="custom-control-label">Psikiater</label>
                </div>

            </div>
        </div>
        <div class="form-group row">
            <label for="unit_kerja_id" class="col-4 col-form-label">Unit Kerja</label>
            <div class="col-8">
                <select id="unit_kerja_id" name="unit_kerja_id" class="custom-select" required="required">
                    <option value="">---Pilih Unit Kerja---</option>
                    <?php foreach ($unit_kerja as $uker) : ?>
                        <option value="<?= $uker['id'] ?>"><?= $uker['nama'] ?></option>
                    <?php endforeach; ?>
                </select>
            </div>
        </div>
        <div class="form-group row">
            <div class="offset-4 col-8">
                <button name="submit" type="submit" class="btn btn-primary">Submit</button>
            </div>
        </div>
    </form>
</div>

<?php
include_once('bottom.php');
?>