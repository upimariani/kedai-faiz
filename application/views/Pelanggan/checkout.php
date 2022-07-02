<!DOCTYPE html>
<html lang="zxx">

<head>
    <!-- Meta Tag -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name='copyright' content=''>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Title Tag  -->
    <title>Eshop - eCommerce HTML5 Template.</title>
    <!-- Favicon -->
    <link rel="icon" type="image/png" href="images/favicon.png">
    <!-- Web Font -->
    <link href="https://fonts.googleapis.com/css?family=Poppins:200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&display=swap" rel="stylesheet">

    <!-- StyleSheet -->

    <!-- Bootstrap -->
    <link rel="stylesheet" href="<?= base_url('asset/eshop/eshop/') ?>css/bootstrap.css">
    <!-- Magnific Popup -->
    <link rel="stylesheet" href="<?= base_url('asset/eshop/eshop/') ?>css/magnific-popup.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="<?= base_url('asset/eshop/eshop/') ?>css/font-awesome.css">
    <!-- Fancybox -->
    <link rel="stylesheet" href="<?= base_url('asset/eshop/eshop/') ?>css/jquery.fancybox.min.css">
    <!-- Themify Icons -->
    <link rel="stylesheet" href="<?= base_url('asset/eshop/eshop/') ?>css/themify-icons.css">
    <!-- Nice Select CSS -->
    <!-- Animate CSS -->
    <link rel="stylesheet" href="<?= base_url('asset/eshop/eshop/') ?>css/animate.css">
    <!-- Flex Slider CSS -->
    <link rel="stylesheet" href="<?= base_url('asset/eshop/eshop/') ?>css/flex-slider.min.css">
    <!-- Owl Carousel -->
    <link rel="stylesheet" href="<?= base_url('asset/eshop/eshop/') ?>css/owl-carousel.css">
    <!-- Slicknav -->
    <link rel="stylesheet" href="<?= base_url('asset/eshop/eshop/') ?>css/slicknav.min.css">

    <!-- Eshop StyleSheet -->
    <link rel="stylesheet" href="<?= base_url('asset/eshop/eshop/') ?>css/reset.css">
    <link rel="stylesheet" href="<?= base_url('asset/eshop/eshop/') ?>style.css">
    <link rel="stylesheet" href="<?= base_url('asset/eshop/eshop/') ?>css/responsive.css">


</head>

<body class="js">
    <!-- Header -->
    <header class="header shop">
        <!-- Topbar -->
        <div class="topbar">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 col-md-12 col-12">
                        <!-- Top Left -->
                        <div class="top-left">
                            <ul class="list-main">
                                <li><i class="ti-headphone-alt"></i> +060 (800) 801-582</li>
                                <li><i class="ti-email"></i> support@shophub.com</li>
                            </ul>
                        </div>
                        <!--/ End Top Left -->
                    </div>
                    <div class="col-lg-8 col-md-12 col-12">
                        <!-- Top Right -->
                        <div class="right-content">
                            <ul class="list-main">
                                <li><i class="ti-location-pin"></i> Store location</li>
                                <li><i class="ti-alarm-clock"></i> <a href="#">Daily deal</a></li>
                                <li><i class="ti-user"></i> <a href="#">My account</a></li>
                                <li><i class="ti-power-off"></i><a href="login.html#">Login</a></li>
                            </ul>
                        </div>
                        <!-- End Top Right -->
                    </div>
                </div>
            </div>
        </div>
        <!-- End Topbar -->
        <div class="middle-inner">
            <div class="container">
                <div class="row">
                    <div class="col-lg-2 col-md-2 col-12">
                        <!-- Logo -->
                        <div class="logo">
                            <a href="index.html"><img src="images/logo.png" alt="logo"></a>
                        </div>
                        <!--/ End Logo -->
                        <!-- Search Form -->
                        <div class="search-top">
                            <div class="top-search"><a href="#0"><i class="ti-search"></i></a></div>
                            <!-- Search Form -->
                            <div class="search-top">
                                <form class="search-form">
                                    <input type="text" placeholder="Search here..." name="search">
                                    <button value="search" type="submit"><i class="ti-search"></i></button>
                                </form>
                            </div>
                            <!--/ End Search Form -->
                        </div>
                        <!--/ End Search Form -->
                        <div class="mobile-nav"></div>
                    </div>
                    <div class="col-lg-8 col-md-7 col-12">
                        <div class="search-bar-top">
                            <div class="search-bar">
                                <select>
                                    <option selected="selected">All Category</option>
                                    <option>watch</option>
                                    <option>mobile</option>
                                    <option>kid’s item</option>
                                </select>
                                <form>
                                    <input name="search" placeholder="Search Products Here....." type="search">
                                    <button class="btnn"><i class="ti-search"></i></button>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-2 col-md-3 col-12">
                        <div class="right-bar">
                            <!-- Search Form -->
                            <div class="sinlge-bar">
                                <a href="#" class="single-icon"><i class="fa fa-heart-o" aria-hidden="true"></i></a>
                            </div>
                            <div class="sinlge-bar">
                                <a href="#" class="single-icon"><i class="fa fa-user-circle-o" aria-hidden="true"></i></a>
                            </div>
                            <?php
                            $qty = 0;
                            foreach ($this->cart->contents() as $key => $value) {
                                $qty += $value['qty'];
                            }
                            ?>
                            <div class="sinlge-bar shopping">
                                <a href="#" class="single-icon"><i class="ti-bag"></i> <span class="total-count"><?= $qty ?></span></a>
                                <!-- Shopping Item -->
                                <div class="shopping-item">
                                    <div class="dropdown-cart-header">
                                        <span><?= $qty ?> Items</span>
                                        <a href="<?= base_url('Pelanggan/cCart') ?>">View Cart</a>
                                    </div>
                                    <ul class="shopping-list">
                                        <?php
                                        foreach ($this->cart->contents() as $key => $value) {
                                        ?>
                                            <li>
                                                <a href="<?= base_url('Pelanggan/cCart/delete/' . $value['rowid']) ?>" class="remove" title="Remove this item"><i class="fa fa-remove"></i></a>
                                                <a class="cart-img" href="#"><img src="<?= base_url('asset/foto-produk/' . $value['picture']) ?>" alt="#"></a>
                                                <h4><a href="#"><?= $value['name'] ?></a></h4>
                                                <p class="quantity"><?= $value['qty'] ?>x - <span class="amount">Rp. <?= number_format($value['price']) ?></span></p>
                                            </li>
                                        <?php
                                        }
                                        ?>

                                    </ul>
                                    <div class="bottom">
                                        <div class="total">
                                            <span>Total</span>
                                            <span class="total-amount">Rp. <?= number_format($this->cart->total()) ?></span>
                                        </div>
                                        <a href="<?= base_url('Pelanggan/cCheckout') ?>" class="btn animate">Checkout</a>
                                    </div>
                                </div>
                                <!--/ End Shopping Item -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Header Inner -->
        <div class="header-inner">
            <div class="container">
                <div class="cat-nav-head">
                    <div class="row">
                        <div class="col-12">
                            <div class="menu-area">
                                <!-- Main Menu -->
                                <nav class="navbar navbar-expand-lg">
                                    <div class="navbar-collapse">
                                        <div class="nav-inner">
                                            <ul class="nav main-menu menu navbar-nav">
                                                <li class="active"><a href="<?= base_url('pelanggan/ckatalog') ?>">Home</a></li>
                                                <li><a href="<?= base_url('Pelanggan/cShopGrid') ?>">Product</a></li>

                                                <li><a href="<?= base_url('Pelanggan/cProfil') ?>">My Account</a></li>
                                                <li><a href="<?= base_url('Pelanggan/cStatusOrder') ?>">My Order</a></li>
                                                <li><a href="<?= base_url('Pelanggan/cChatting') ?>">Chatting</a></li>
                                                <li><a href="<?= base_url('Pelanggan/cStatusOrder/all_review') ?>">All Kritik Saran</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </nav>
                                <!--/ End Main Menu -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--/ End Header Inner -->
    </header>
    <!--/ End Header -->

    <!-- Breadcrumbs -->
    <div class="breadcrumbs">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="bread-inner">
                        <ul class="bread-list">
                            <li><a href="index1.html">Home<i class="ti-arrow-right"></i></a></li>
                            <li class="active"><a href="blog-single.html">Checkout</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Breadcrumbs -->

    <!-- Start Checkout -->
    <section class="shop checkout section">
        <form action="<?= base_url('Pelanggan/cCheckout/pesan') ?>" method="POST">

            <?php $id_transaksi = date('Ymd') . strtoupper(random_string('alnum', 8));
            ?>
            <input type="hidden" name="total" value="<?= $this->cart->total() ?>">
            <input type="hidden" name="ongkir" id="ong_kirim">
            <input type="hidden" name="id_transaksi" value="<?= $id_transaksi ?>">
            <?php
            $i = 1;
            foreach ($this->cart->contents() as $items) {
                echo form_hidden('qty' . $i++, $items['qty']);
            }
            ?>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-12">
                        <div class="checkout-form">
                            <h2>Make Your Checkout Here</h2>
                            <p>Please register in order to checkout more quickly</p>
                            <!-- Form -->
                            <div class="row">
                                <div class="col-lg-6 col-md-6 col-12">
                                    <div class="form-group">
                                        <label>Kota Tujuan<span>*</span></label>
                                        <select name="kota" class="form-control" id="kota">
                                            <option value="" selected="selected">Pilih Kota Tujuan ...</option>
                                            <option value="2">Cirebon</option>
                                            <option value="1">Kuningan</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-12">
                                    <div class="form-group">
                                        <label>Kecamatan<span>*</span></label>
                                        <select name="kecamatan" class="form-control" id="kecamatan">

                                        </select>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-12">
                                    <div class="form-group">
                                        <label>RT<span>*</span></label>
                                        <input type="text" class="form-control" name="rt" placeholder="" required="required">
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-12">
                                    <div class="form-group">
                                        <label>RW<span>*</span></label>
                                        <input type="text" class="form-control" name="rw" placeholder="" required="required">
                                    </div>
                                </div>
                                <div class="col-lg-12 col-md-6 col-12">
                                    <div class="form-group">
                                        <label>Alamat Detail<span>*</span></label>
                                        <input type="text" class="form-control" name="alamat" placeholder="" required="required">
                                    </div>
                                </div>

                            </div>
                            <!--/ End Form -->
                        </div>
                    </div>
                    <div class="col-lg-4 col-12">
                        <div class="order-details">
                            <!-- Order Widget -->
                            <div class="single-widget">
                                <h2>CART TOTALS</h2>
                                <div class="content">
                                    <ul>
                                        <li>Sub Total<span>Rp. <?php echo $this->cart->format_number($this->cart->total()); ?></span></li>
                                        <li>(+) Shipping<span id="ongkir"></span></li>
                                        <li class="last">Total<span id="total"></span></li>
                                    </ul>
                                </div>
                            </div>
                            <!--/ End Order Widget -->
                            <!-- Order Widget -->

                            <!--/ End Payment Method Widget -->
                            <!-- Button Widget -->
                            <div class="single-widget get-button">
                                <div class="content">
                                    <div class="button">
                                        <button type="submit" class="btn">proceed to checkout</button>
                                    </div>
                                </div>
                            </div>
                            <!--/ End Button Widget -->
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </section>
    <!--/ End Checkout -->

    <!-- Start Shop Services Area  -->
    <section class="shop-services section home">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 col-12">
                    <!-- Start Single Service -->
                    <div class="single-service">
                        <i class="ti-rocket"></i>
                        <h4>Free shiping</h4>
                        <p>Orders over $100</p>
                    </div>
                    <!-- End Single Service -->
                </div>
                <div class="col-lg-3 col-md-6 col-12">
                    <!-- Start Single Service -->
                    <div class="single-service">
                        <i class="ti-reload"></i>
                        <h4>Free Return</h4>
                        <p>Within 30 days returns</p>
                    </div>
                    <!-- End Single Service -->
                </div>
                <div class="col-lg-3 col-md-6 col-12">
                    <!-- Start Single Service -->
                    <div class="single-service">
                        <i class="ti-lock"></i>
                        <h4>Sucure Payment</h4>
                        <p>100% secure payment</p>
                    </div>
                    <!-- End Single Service -->
                </div>
                <div class="col-lg-3 col-md-6 col-12">
                    <!-- Start Single Service -->
                    <div class="single-service">
                        <i class="ti-tag"></i>
                        <h4>Best Peice</h4>
                        <p>Guaranteed price</p>
                    </div>
                    <!-- End Single Service -->
                </div>
            </div>
        </div>
    </section>
    <!-- End Shop Services -->

    <!-- Start Shop Newsletter  -->
    <section class="shop-newsletter section">
        <div class="container">
            <div class="inner-top">
                <div class="row">
                    <div class="col-lg-8 offset-lg-2 col-12">
                        <!-- Start Newsletter Inner -->
                        <div class="inner">
                            <h4>Newsletter</h4>
                            <p> Subscribe to our newsletter and get <span>10%</span> off your first purchase</p>
                            <form action="mail/mail.php" method="get" target="_blank" class="newsletter-inner">
                                <input name="EMAIL" placeholder="Your email address" required="" type="email">
                                <button class="btn">Subscribe</button>
                            </form>
                        </div>
                        <!-- End Newsletter Inner -->
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Shop Newsletter -->
    <!-- Start Footer Area -->
    <footer class="footer">
        <!-- Footer Top -->
        <div class="footer-top section">
            <div class="container">
                <div class="row">
                    <div class="col-lg-5 col-md-6 col-12">
                        <!-- Single Widget -->
                        <div class="single-footer about">
                            <div class="logo">
                                <a href="index.html"><img src="images/logo2.png" alt="#"></a>
                            </div>
                            <p class="text">Praesent dapibus, neque id cursus ucibus, tortor neque egestas augue, magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus.</p>
                            <p class="call">Got Question? Call us 24/7<span><a href="tel:123456789">+0123 456 789</a></span></p>
                        </div>
                        <!-- End Single Widget -->
                    </div>
                    <div class="col-lg-2 col-md-6 col-12">
                        <!-- Single Widget -->
                        <div class="single-footer links">
                            <h4>Information</h4>
                            <ul>
                                <li><a href="#">About Us</a></li>
                                <li><a href="#">Faq</a></li>
                                <li><a href="#">Terms & Conditions</a></li>
                                <li><a href="#">Contact Us</a></li>
                                <li><a href="#">Help</a></li>
                            </ul>
                        </div>
                        <!-- End Single Widget -->
                    </div>
                    <div class="col-lg-2 col-md-6 col-12">
                        <!-- Single Widget -->
                        <div class="single-footer links">
                            <h4>Customer Service</h4>
                            <ul>
                                <li><a href="#">Payment Methods</a></li>
                                <li><a href="#">Money-back</a></li>
                                <li><a href="#">Returns</a></li>
                                <li><a href="#">Shipping</a></li>
                                <li><a href="#">Privacy Policy</a></li>
                            </ul>
                        </div>
                        <!-- End Single Widget -->
                    </div>
                    <div class="col-lg-3 col-md-6 col-12">
                        <!-- Single Widget -->
                        <div class="single-footer social">
                            <h4>Get In Tuch</h4>
                            <!-- Single Widget -->
                            <div class="contact">
                                <ul>
                                    <li>NO. 342 - London Oxford Street.</li>
                                    <li>012 United Kingdom.</li>
                                    <li>info@eshop.com</li>
                                    <li>+032 3456 7890</li>
                                </ul>
                            </div>
                            <!-- End Single Widget -->
                            <ul>
                                <li><a href="#"><i class="ti-facebook"></i></a></li>
                                <li><a href="#"><i class="ti-twitter"></i></a></li>
                                <li><a href="#"><i class="ti-flickr"></i></a></li>
                                <li><a href="#"><i class="ti-instagram"></i></a></li>
                            </ul>
                        </div>
                        <!-- End Single Widget -->
                    </div>
                </div>
            </div>
        </div>
        <!-- End Footer Top -->
        <div class="copyright">
            <div class="container">
                <div class="inner">
                    <div class="row">
                        <div class="col-lg-6 col-12">
                            <div class="left">
                                <p>Copyright © 2020 <a href="http://www.wpthemesgrid.com" target="_blank">Wpthemesgrid</a> - All Rights Reserved.</p>
                            </div>
                        </div>
                        <div class="col-lg-6 col-12">
                            <div class="right">
                                <img src="images/payments.png" alt="#">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- /End Footer Area -->

    <script script src="<?= base_url() ?>asset/eshop/eshop/js/jquery.min.js">
    </script>
    <script src="<?= base_url() ?>asset/eshop/eshop/js/jquery-migrate-3.0.0.js"></script>
    <script src="<?= base_url() ?>asset/eshop/eshop/js/jquery-ui.min.js"></script>
    <!-- Popper JS -->
    <script src="<?= base_url() ?>asset/eshop/eshop/js/popper.min.js"></script>
    <!-- Bootstrap JS -->
    <script src="<?= base_url() ?>asset/eshop/eshop/js/bootstrap.min.js"></script>
    <!-- Color JS -->
    <script src="<?= base_url() ?>asset/eshop/eshop/js/colors.js"></script>
    <!-- Slicknav JS -->
    <script src="<?= base_url() ?>asset/eshop/eshop/js/slicknav.min.js"></script>
    <!-- Owl Carousel JS -->
    <script src="<?= base_url() ?>asset/eshop/eshop/js/owl-carousel.js"></script>
    <!-- Magnific Popup JS -->
    <script src="<?= base_url() ?>asset/eshop/eshop/js/magnific-popup.js"></script>
    <!-- Waypoints JS -->
    <script src="<?= base_url() ?>asset/eshop/eshop/js/waypoints.min.js"></script>
    <!-- Countdown JS -->
    <script src="<?= base_url() ?>asset/eshop/eshop/js/finalcountdown.min.js"></script>
    <!-- Flex Slider JS -->
    <script src="<?= base_url() ?>asset/eshop/eshop/js/flex-slider.js"></script>
    <!-- ScrollUp JS -->
    <script src="<?= base_url() ?>asset/eshop/eshop/js/scrollup.js"></script>
    <!-- Onepage Nav JS -->
    <script src="<?= base_url() ?>asset/eshop/eshop/js/onepage-nav.min.js"></script>
    <!-- Easing JS -->
    <script src="<?= base_url() ?>asset/eshop/eshop/js/easing.js"></script>
    <!-- Active JS -->
    <script src="<?= base_url() ?>asset/eshop/eshop/js/active.js"></script>
    <script type="text/javascript" src="<?php echo base_url() . 'asset/js/jquery-3.3.1.js' ?>"></script>
    <script type="text/javascript">
        $(document).ready(function() {
            $('#kota').change(function() {
                var id = $(this).val();
                $.ajax({
                    url: "<?php echo site_url('Pelanggan/cCheckout/add_ajax_kec'); ?>",
                    method: "POST",
                    data: {
                        id: id
                    },
                    async: true,
                    dataType: 'json',
                    success: function(data) {

                        var html = '';
                        var i;
                        for (i = 0; i < data.length; i++) {
                            html += '<option data-ongkir=' + data[i].ongkir + ' value=' + data[i].id_kecamatan + '>' + data[i].nm_kecamatan + '</option>';
                        }
                        $('#kecamatan').html(html);
                    }
                });
                return false;
            });

        });
    </script>
    <script>
        console.log = function() {}
        $("#kecamatan").on('change', function() {
            const ongkir = $(this).find(':selected').attr('data-ongkir');
            const total = <?= $this->cart->total() ?>

            const total_bayar = parseInt(ongkir) + parseInt(total);

            $("#ongkir").html('Rp. ' + ongkir);
            $("#ongkir").val('Rp. ' + ongkir);

            $("#ong_kirim").html(ongkir);
            $("#ong_kirim").val(ongkir);

            $("#total").html('Rp. ' + total_bayar);
            $("#total").val('Rp. ' + total_bayar);

        });
    </script>
</body>

</html>