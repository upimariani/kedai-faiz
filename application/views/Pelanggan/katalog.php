<!-- Header Inner -->
<div class="header-inner">
    <div class="container">
        <div class="cat-nav-head">
            <div class="row">

                <div class="col-lg-9 col-12">
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

<!-- Slider Area -->
<!-- Slider Area -->
<section class="hero-slider">
    <!-- Single Slider -->
    <div class="single">
        <img src="<?= base_url('asset/sdsds.png') ?>" ;>

    </div>
    </div>
    <!--/ End Single Slider -->
</section>
<!--/ End Slider Area -->



<!-- Start Product Area -->
<div class="product-area section">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="section-title">
                    <h2>Produk Best Seller</h2>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <div class="product-info">

                    <!-- Start Single Tab -->
                    <div class="tab-pane fade show active" id="man" role="tabpanel">
                        <div class="tab-single">
                            <div class="row">
                                <?php
                                foreach ($best as $key => $value) {
                                ?>
                                    <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                        <div class="single-product">
                                            <div class="product-img">
                                                <a href="product-details.html">
                                                    <img class="default-img" style="width: 550px; height: 350px;" src="<?= base_url('asset/foto-produk/' . $value->gambar) ?>" alt="#">
                                                </a>
                                            </div>
                                            <div class="product-content">
                                                <h3><a href="product-details.html"><?= $value->nama_produk ?></a></h3>
                                                <div class="product-price">
                                                    <span>Rp. <?= number_format($value->harga)  ?></span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                <?php
                                }
                                ?>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>
<!-- End Product Area -->




<!-- Start Shop Blog  -->
<section class="shop-blog section">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="section-title">
                    <h2>Menu Paket</h2>
                </div>
            </div>
        </div>
        <div class="row">
            <?php
            foreach ($menu['paket'] as $key => $value) {
            ?>
                <div class="col-lg-4 col-md-6 col-12">
                    <form action="<?= base_url('Pelanggan/cCart/add_cart') ?>" method="POST">
                        <input type="hidden" name="name" value="<?= $value->nama_produk ?>">
                        <input type="hidden" name="id" value="<?= $value->id_diskon ?>">
                        <input type="hidden" name="price" value="<?= $value->harga - ($value->harga * $value->diskon / 100) ?>">
                        <input type="hidden" name="stok" value="<?= $value->stok ?>">
                        <input type="hidden" name="picture" value="<?= $value->gambar ?>">
                        <input type="hidden" name="qty" value="1">
                        <input type="hidden" name="diskon" value="<?= $value->diskon ?>">
                        <!-- Start Single Blog  -->
                        <div class="shop-single-blog">
                            <img style="width: 250px; height: 200px;" src="<?= base_url('asset/foto-produk/' . $value->gambar) ?>" alt="#">
                            <div class="content">
                                <p class="date">Rp. <?= number_format($value->harga - ($value->harga * $value->diskon / 100)) ?>
                                    <?php
                                    if ($value->diskon != '0') {
                                    ?>
                                        <del> Rp. <?= number_format($value->harga) ?></del>
                                    <?php
                                    }
                                    ?>

                                </p>
                                <a href="#" class="title"><?= $value->nama_produk ?></a><br>
                                <button type="submit" class="btn mt-3">Add To Cart</button>
                            </div>
                        </div>
                        <!-- End Single Blog  -->
                    </form>
                </div>
            <?php
            }
            ?>
        </div>
    </div>
</section>
<!-- End Shop Blog  -->

<!-- Start Shop Services Area -->
<section class="shop-services section home">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-6 col-12">
               
            </div>
            <div class="col-lg-3 col-md-6 col-12">
                
            </div>
            <div class="col-lg-3 col-md-6 col-12">
                
            </div>
            <div class="col-lg-3 col-md-6 col-12">
             
            </div>
        </div>
    </div>
</section>
<!-- End Shop Services Area -->

<!-- Start Shop Newsletter  -->
<section class="shop-newsletter section">
    <div class="container">
        <div class="inner-top">
            <div class="row">
                <div class="col-lg-8 offset-lg-2 col-12">

                </div>
            </div>
        </div>
    </div>
</section>
<!-- End Shop Newsletter -->

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span class="ti-close" aria-hidden="true"></span></button>
            </div>
            <div class="modal-body">
                <div class="row no-gutters">
                    <div class="col-lg-6 col-md-12 col-sm-12 col-xs-12">
                        <!-- Product Slider -->
                        <div class="product-gallery">
                            <div class="quickview-slider-active">
                                <div class="single-slider">
                                    <img src="https://via.placeholder.com/569x528" alt="#">
                                </div>
                                <div class="single-slider">
                                    <img src="https://via.placeholder.com/569x528" alt="#">
                                </div>
                                <div class="single-slider">
                                    <img src="https://via.placeholder.com/569x528" alt="#">
                                </div>
                                <div class="single-slider">
                                    <img src="https://via.placeholder.com/569x528" alt="#">
                                </div>
                            </div>
                        </div>
                        <!-- End Product slider -->
                    </div>
                    <div class="col-lg-6 col-md-12 col-sm-12 col-xs-12">
                        <div class="quickview-content">
                            <h2>Flared Shift Dress</h2>
                            <div class="quickview-ratting-review">
                                <div class="quickview-ratting-wrap">
                                    <div class="quickview-ratting">
                                        <i class="yellow fa fa-star"></i>
                                        <i class="yellow fa fa-star"></i>
                                        <i class="yellow fa fa-star"></i>
                                        <i class="yellow fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                    </div>
                                    <a href="#"> (1 customer review)</a>
                                </div>
                                <div class="quickview-stock">
                                    <span><i class="fa fa-check-circle-o"></i> in stock</span>
                                </div>
                            </div>
                            <h3>$29.00</h3>
                            <div class="quickview-peragraph">
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia iste laborum ad impedit pariatur esse optio tempora sint ullam autem deleniti nam in quos qui nemo ipsum numquam.</p>
                            </div>
                            <div class="size">
                                <div class="row">
                                    <div class="col-lg-6 col-12">
                                        <h5 class="title">Size</h5>
                                        <select>
                                            <option selected="selected">s</option>
                                            <option>m</option>
                                            <option>l</option>
                                            <option>xl</option>
                                        </select>
                                    </div>
                                    <div class="col-lg-6 col-12">
                                        <h5 class="title">Color</h5>
                                        <select>
                                            <option selected="selected">orange</option>
                                            <option>purple</option>
                                            <option>black</option>
                                            <option>pink</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="quantity">
                                <!-- Input Order -->
                                <div class="input-group">
                                    <div class="button minus">
                                        <button type="button" class="btn btn-primary btn-number" disabled="disabled" data-type="minus" data-field="quant[1]">
                                            <i class="ti-minus"></i>
                                        </button>
                                    </div>
                                    <input type="text" name="quant[1]" class="input-number" data-min="1" data-max="1000" value="1">
                                    <div class="button plus">
                                        <button type="button" class="btn btn-primary btn-number" data-type="plus" data-field="quant[1]">
                                            <i class="ti-plus"></i>
                                        </button>
                                    </div>
                                </div>
                                <!--/ End Input Order -->
                            </div>
                            <div class="add-to-cart">
                                <a href="#" class="btn">Add to cart</a>
                                <a href="#" class="btn min"><i class="ti-heart"></i></a>
                                <a href="#" class="btn min"><i class="fa fa-compress"></i></a>
                            </div>
                            <div class="default-social">
                                <h4 class="share-now">Share:</h4>
                                <ul>
                                    <li><a class="facebook" href="#"><i class="fa fa-facebook"></i></a></li>
                                    <li><a class="twitter" href="#"><i class="fa fa-twitter"></i></a></li>
                                    <li><a class="youtube" href="#"><i class="fa fa-pinterest-p"></i></a></li>
                                    <li><a class="dribbble" href="#"><i class="fa fa-google-plus"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Modal end -->