<?= $this->extend('layout/template'); ?>

<?= $this->section('content'); ?>
<div class="container">
    <div class="row mt-5">
        <div class="col-lg-8">
            <h2 class="mb-4">Daftar Orang</h2>
        </div>
        <div class="col-lg-4">
            <form action="" method="post">
                <div class="input-group mb-3">
                    <input type="text" class="form-control" placeholder="Search" name="keyword">
                    <button class="btn btn-secondary" type="submit" name="submit"><i class="fas fa-search"></i></button>
                </div>
            </form>
        </div>
    </div>
    <div class="bg-light p-4 mb-4">
        <table class="table table-borderless text-left">
            <thead>
                <tr>
                    <th scope="col">No</th>
                    <th scope="col">Nama</th>
                    <th scope="col">Alamat</th>
                </tr>
            </thead>
            <tbody>
                <?php $i = 1 + (10 * ($currentPage - 1)); ?>
                <?php foreach ($orang as $o) : ?>
                    <tr>
                        <td><?= $i++; ?></td>
                        <td><?= $o['nama']; ?></td>
                        <td><?= $o['alamat']; ?></td>
                    </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
        <?= $pager->links('orang', 'my_pagination') ?>
    </div>
</div>
<?= $this->endSection(); ?>