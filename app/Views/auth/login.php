<html lang="en">

<head>
    <!-- required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">

    <!-- my css -->
    <link rel="stylesheet" href="/css/style.css">

    <!-- fontawesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

    <!-- favicon -->
    <link rel="shortcut icon" href="favicon.svg">

    <title>Login</title>
</head>

<body style="font-family: poppins;" class="bg-light">
    <div class="container">
        <div class="row justify-content-center" style="margin-top :15%;">
            <div class="col-lg-4 col-sm-12">
                <!-- pesan -->
                <?php if (session()->getFlashdata('messages')) : ?>
                    <div class="alert alert-danger alert-dismissible fade show" role="alert">
                        <?= session()->getFlashdata('messages') ?>
                        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                    </div>
                <?php endif; ?>
                <div class="card">
                    <div class="card-header text-center">
                        Login Page
                    </div>
                    <div class="card-body">
                        <form action="/login" method="post">
                            <?= csrf_field(); ?>
                            <!-- email address -->
                            <div class="form-group mb-3">
                                <label for="email" class="form-label">Email address</label>
                                <input type="email" class="form-control <?= ($validation->hasError('email')) ? 'is-invalid' : ''; ?>" id="email" name="email" value="<?= old('email'); ?>" placeholder="Enter email address">

                                <div class="invalid-feedback">
                                    <?= $validation->getError('email'); ?></small>
                                </div>
                            </div>

                            <!-- password -->
                            <div class="form-group mb-3">
                                <label for="password" class="form-label">Password</label>
                                <input type="password" class="form-control <?= ($validation->hasError('password')) ? 'is-invalid' : ''; ?>" id="password" name="password" value="<?= old('password'); ?>" placeholder="Enter password">

                                <i class="show-password fas fa-eye"></i>

                                <div class="invalid-feedback">
                                    <?= $validation->getError('password'); ?></small>
                                </div>
                            </div>
                            <button type="submit" class="btn btn-outline-primary mt-3 p-2" style="width: 100%;">Login</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>

    <!-- script show password -->
    <script>
        const togglePassword = document.querySelector('.show-password');
        const password = document.querySelector('#password');

        togglePassword.addEventListener('click', function(e) {
            // toggle the type attribute
            const type = password.getAttribute('type') === 'password' ? 'text' : 'password';
            password.setAttribute('type', type);
            // toggle the eye slash icon
            this.classList.toggle('fa-eye-slash');
        });
    </script>
</body>

</html>