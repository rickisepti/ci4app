<?= $this->extend('layout/template'); ?>

<?= $this->section('content'); ?>
<div class="container">
    <h2 class="mt-5 mb-4">
        Daftar Komik
        <a href="/komik/create" class="btn btn-light text-primary"><i class="fas fa-plus"></i></a>
    </h2>
    <!-- Flashdata -->
    <?php if (session()->getFlashdata('pesan')) : ?>
        <div class="alert alert-success" role="alert">
            <?= session()->getFlashdata('pesan'); ?>
        </div>
    <?php endif; ?>
    <div class="bg-light p-4">
        <table id="example" class="table table-borderless text-center">
            <thead>
                <tr>
                    <th scope="col">No</th>
                    <th scope="col">Sampul</th>
                    <th scope="col">Judul</th>
                    <th scope="col">Aksi</th>
                </tr>
            </thead>
            <tbody>
                <?php $i = 1; ?>
                <?php foreach ($komik as $k) : ?>
                    <tr>
                        <td><?= $i++; ?></td>
                        <td>
                            <img src="/img/<?= $k['sampul'] ?>" alt="" class="sampul img-thumbnail">
                        </td>
                        <td><?= $k['judul']; ?></td>
                        <td>
                            <!-- detail -->
                            <a href="/komik/<?= $k['slug']; ?>" class="btn btn-sm btn-light text-success">Detail</a>

                            <!-- edit -->
                            <a href="/komik/edit/<?= $k['slug']; ?>" class="btn btn-sm btn-light text-primary">Update</a>

                            <!-- delete -->
                            <form action="/komik/<?= $k['id']; ?>" method="POST" class="d-inline">
                                <?= csrf_field(); ?>
                                <input type="hidden" name="_method" value="DELETE">
                                <button type="submit" href="/komik/delete/<?= $k['id']; ?>" class="btn btn-sm btn-light text-danger" onclick="return confirm('Yakin loe mau hapus data ini ?')">Delete</button>
                            </form>
                        </td>
                    </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
    </div>
</div>
<?= $this->endSection(); ?>