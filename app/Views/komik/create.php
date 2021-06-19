<?= $this->extend('layout/template'); ?>

<?= $this->section('content'); ?>
<div class="container">
    <div class="row">
        <div class="col-lg-8">
            <h2 class="mt-5 mb-4">Form Tambah Data Komik</h2>
            <div class="bg-light p-4 mb-5">
                <form action="/komik/save" method="POST" enctype="multipart/form-data">
                    <?= csrf_field(); ?>

                    <!-- judul -->
                    <div class="form-group mb-3">
                        <label>Judul</label>
                        <input type="text" class="form-control <?= ($validation->hasError('judul')) ? 'is-invalid' : ''; ?>" name="judul" value="<?= old('judul'); ?>">
                        <div class="invalid-feedback">
                            <?= $validation->getError('judul'); ?>
                        </div>
                    </div>

                    <!-- penulis -->
                    <div class="form-group mb-3">
                        <label>Penulis</label>
                        <input type="text" class="form-control <?= ($validation->hasError('penulis')) ? 'is-invalid' : ''; ?>" name="penulis" value="<?= old('penulis'); ?>">
                        <div class="invalid-feedback">
                            <?= $validation->getError('penulis'); ?>
                        </div>
                    </div>

                    <!-- penerbit -->
                    <div class="form-group mb-3">
                        <label>Penerbit</label>
                        <input type="text" class="form-control <?= ($validation->hasError('penerbit')) ? 'is-invalid' : ''; ?>" name="penerbit" value="<?= old('penerbit'); ?>">
                        <div class="invalid-feedback">
                            <?= $validation->getError('penerbit'); ?>
                        </div>
                    </div>

                    <!-- sampul -->
                    <div class="form-group mb-4">
                        <label>Sampul</label><small class="text-secondary"> *boleh kosong</small>
                        <input type="file" class="form-control <?= ($validation->hasError('sampul')) ? 'is-invalid' : ''; ?>" name="sampul" id="sampul" onchange="previewImg()">
                        <div class="invalid-feedback">
                            <?= $validation->getError('sampul'); ?>
                        </div>

                        <!-- preview gambar -->
                        <img src="/img/default.png" class="img-thumbnail mt-4 img-preview" width="200">
                    </div>
                    <button type="submit" class="btn btn-primary">Tambah Data</button>
                </form>
            </div>
        </div>
    </div>
</div>
<?= $this->endSection(); ?>