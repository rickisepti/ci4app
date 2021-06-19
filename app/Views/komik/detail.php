<?= $this->extend('layout/template'); ?>

<?= $this->section('content'); ?>
<div class="container">
    <h2 class="mt-5 mb-4">Detail Komik (<?= $komik['judul']; ?>)</h2>
    <div class="card mb-3" style="max-width: 800px;">
        <div class="row">
            <div class="col-md-4">
                <img src="/img/<?= $komik['sampul']; ?>" alt="..." width="100%">
            </div>
            <div class="col-md-8">
                <div class="card-body">
                    <h5 class="card-title">Detail Informasi</h5>
                    <table class="table table-bordered text-left mt-5">
                        <thead>
                            <tr>
                                <th scope="col">Judul</th>
                                <th scope="col">Penulis</th>
                                <th scope="col">Penerbit</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><?= $komik['judul']; ?></td>
                                <td><?= $komik['penulis']; ?></td>
                                <td><?= $komik['penerbit']; ?></td>
                            </tr>
                        </tbody>
                    </table>
                    <!-- button -->
                    <a href="/komik" class="btn btn-sm btn-light text-primary">Back</a>
                </div>
            </div>
        </div>
    </div>
</div>
<?= $this->endSection(); ?>