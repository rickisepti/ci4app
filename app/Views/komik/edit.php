<?= $this->extend('layout/template'); ?>

<?= $this->section('content'); ?>
<div class="container">
    <div class="row">
        <div class="col-lg-8">
            <h2 class="mt-5 mb-4">Form Ubah Data Komik</h2>
            <div class="bg-light p-4">
                <form action="/komik/update/<?= $komik['id']; ?>" method="POST" enctype="multipart/form-data">
                    <?= csrf_field(); ?>
                    <!-- slug -->
                    <input type="hidden" name="slug" value="<?= $komik['slug']; ?>">

                    <!-- nama file yang lama -->
                    <input type="hidden" name="sampulLama" value="<?= $komik['sampul']; ?>">

                    <!-- judul -->
                    <div class="form-group mb-3">
                        <label>Judul</label>
                        <input type="text" class="form-control <?= ($validation->hasError('judul')) ? 'is-invalid' : ''; ?>" name="judul" value="<?= $komik['judul']; ?>">
                        <div class="invalid-feedback">
                            <?= $validation->getError('judul'); ?>
                        </div>
                    </div>

                    <!-- penulis -->
                    <div class="form-group mb-3">
                        <label>Penulis</label>
                        <input type="text" class="form-control <?= ($validation->hasError('penulis')) ? 'is-invalid' : ''; ?>" name="penulis" value="<?= $komik['penulis']; ?>">
                        <div class="invalid-feedback">
                            <?= $validation->getError('penulis'); ?>
                        </div>
                    </div>

                    <!-- penerbit -->
                    <div class="form-group mb-3">
                        <label>Penerbit</label>
                        <input type="text" class="form-control <?= ($validation->hasError('penerbit')) ? 'is-invalid' : ''; ?>" name="penerbit" value="<?= $komik['penerbit']; ?>">
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
                        <img src="/img/<?= $komik['sampul']; ?>" class="img-thumbnail mt-4 img-preview" width="200">
                    </div>
                    <button type="submit" class="btn btn-primary">Ubah Data</button>
                </form>
            </div>
        </div>
    </div>
</div>
<?= $this->endSection(); ?>