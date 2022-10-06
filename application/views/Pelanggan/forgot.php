<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="<?= base_url('asset/login/') ?>fonts/icomoon/style.css">

    <link rel="stylesheet" href="<?= base_url('asset/login/') ?>css/owl.carousel.min.css">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="<?= base_url('asset/login/') ?>css/bootstrap.min.css">

    <!-- Style -->
    <link rel="stylesheet" href="<?= base_url('asset/login/') ?>css/style.css">

    <title>RESET PASSWORD</title>
</head>

<body>
    <div class="d-md-flex half">
        <a href="<?= base_url('Pelanggan/ckatalog') ?>" class="bg" style="background-image: url('<?= base_url('asset/login/') ?>images/KEDAI.png');"></a>
        <div class="contents">
            <div class="container">
                <div class="row align-items-center justify-content-center">
                    <div class="col-md-12">
                        <div class="form-block mx-auto">
                            <div class="text-center mb-5">
                                <h3 class="text-uppercase">Reset <strong>Password</strong></h3>
                            </div>
                            <?php if ($this->session->userdata('success')) {
                            ?>
                                <div class="alert alert-primary" role="alert">
                                    <?= $this->session->userdata('success') ?>
                                </div>
                            <?php
                            } ?>

                            <?php if ($this->session->userdata('error')) {
                            ?>
                                <div class="alert alert-danger" role="alert">
                                    <?= $this->session->userdata('error') ?>
                                </div>
                            <?php
                            } ?>
                            <form action="<?= base_url('pelanggan/clogin/forgotPassword') ?>" method="post">
                                <div class="form-group first">
                                    <label for="email">Email</label>
                                    <input type="text" name="email" class="form-control" placeholder="Your Email" id="email">
                                    <?= form_error('email', '<small class="text-danger">', '</small>') ?>
                                </div>
                                <small class="text-primary">Anda belum memiliki akun? <a href="<?= base_url('Pelanggan/cLogin/register') ?>">Register!!</a></small>
                                <input type="submit" value="Reset" class="btn btn-block py-2 btn-primary">
                            </form>
                            <br>
                            <!-- <p class="text-center">Lupa Password? <a href="<?= base_url('Pelanggan/cLogin/lupa_password') ?>">Click Here!!</a></p> -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="<?= base_url('asset/login/') ?>js/jquery-3.3.1.min.js"></script>
    <script src="<?= base_url('asset/login/') ?>js/popper.min.js"></script>
    <script src="<?= base_url('asset/login/') ?>js/bootstrap.min.js"></script>
    <script src="<?= base_url('asset/login/') ?>js/main.js"></script>
</body>

</html>