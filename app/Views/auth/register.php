<?= $this->extend('layout/template'); ?>

<?= $this->section('content'); ?>
<div class="container">
    <div class="container">
        <div class="row justify-content-center" style="margin-top :6%;">
            <div class="col-lg-4 col-sm-12">
                <!-- pesan -->
                <div class="my-4">
                    <?php if (session()->getFlashdata('message')) : ?>
                        <div class="alert alert-success alert-dismissible fade show" role="alert">
                            <?= session()->getFlashdata('message') ?>
                            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                        </div>
                    <?php endif; ?>
                </div>
                <div class="card">
                    <div class="card-header text-center">
                        Register Page
                    </div>
                    <div class="card-body">
                        <form action="/register" method="post">
                            <?= csrf_field(); ?>
                            <!-- name -->
                            <div class="form-group mb-3">
                                <label for="name" class="form-label text-primary">Full Name</label>
                                <input type="name" class="form-control <?= ($validation->hasError('name')) ? 'is-invalid' : ''; ?>" id="name" name="name" value="<?= old('name'); ?>" placeholder="Enter full name">

                                <div class="invalid-feedback">
                                    <?= $validation->getError('name'); ?></small>
                                </div>
                            </div>

                            <!-- email address -->
                            <div class="form-group mb-3">
                                <label for="email" class="form-label text-primary">Email address</label>
                                <input type="email" class="form-control <?= ($validation->hasError('email')) ? 'is-invalid' : ''; ?>" id="email" name="email" value="<?= old('email'); ?>" placeholder="Enter email address">

                                <div class="invalid-feedback">
                                    <?= $validation->getError('email'); ?></small>
                                </div>
                            </div>

                            <!-- password -->
                            <div class="form-group mb-3">
                                <label for="password" class="form-label text-primary">Password</label>
                                <input type="password" class="form-control <?= ($validation->hasError('password')) ? 'is-invalid' : ''; ?>" id="password" name="password" value="<?= old('password'); ?>" placeholder="Password">

                                <div class="invalid-feedback">
                                    <?= $validation->getError('password'); ?></small>
                                </div>
                            </div>

                            <!-- confirm password -->
                            <div class="form-group mb-3">
                                <label for="confirm_password" class="form-label text-primary">Confirm Password</label>
                                <input type="password" class="form-control <?= ($validation->hasError('confirm_password')) ? 'is-invalid' : ''; ?>" id="confirm_password" name="confirm_password" value="<?= old('confirm_password'); ?>" placeholder="Confirm password">

                                <div class="invalid-feedback">
                                    <?= $validation->getError('confirm_password'); ?></small>
                                </div>
                            </div>
                            <button type="submit" class="btn btn-outline-primary mt-3 p-2" style="width: 100%;">Register</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<?= $this->endSection(); ?>