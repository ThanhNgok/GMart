<aside id="colorlib-hero">
    <div class="flexslider">
        <ul class="slides">
            <li style="background-image: url('webroot/image/slider/cover1.png');">
                <div class="overlay"></div>

            </li>
            <li style="background-image: url(webroot/image/slider/cover2.jpg);">
                <div class="overlay"></div>

            </li>
            <li style="background-image: url(webroot/image/slider/cover4.jpg);">
                <div class="overlay"></div>

            </li>
        </ul>
    </div>
</aside>



<div class="colorlib-product">
    <div class="container">
        <div class="row">
            <div class="col-sm-8 offset-sm-2 text-center colorlib-heading colorlib-heading-sm">
                <h2>SẢN PHẨM NỔI BẬT</h2>
            </div>
        </div>
        <?php
        $product = featuredProductsL4();
        ?>


        <div class="container ">
            <div class="row wrapper-dt">
                <div class="col-12">
                    <div class="row pad-dt">
                        <div class="row pad-dt"><?php while ($row = mysqli_fetch_array($product)) { ?>
                                <div class="col-3 col-dt">
                                    <a href="?view=product-detail&id=<?php echo $row['MaSP'] ?>">
                                        <div class="item">
                                            <div class="product-lable">
                                                <?php $price_sale = price_sale($row['MaSP'], $row['DonGia']);
                                                    if ($price_sale < $row['DonGia']) {
                                                        echo '<span>Giảm ' . number_format($row['DonGia'] - $price_sale) . 'đ </span>';
                                                    } ?>
                                            </div>
                                            <div class="image-container">
                                                <img src="webroot/image/sanpham/<?php echo $row['AnhNen']; ?>" alt="Product Image">
                                            </div>
                                            <div class="item-name">
                                                <p> <?php echo $row['TenSP']; ?> </p>
                                            </div>
                                            <div class="item-price">
                                                <p> <?php echo number_format($price_sale, 0) . 'đ'; ?> </p>
                                                <h6> <?php if (number_format($row['DonGia']) !== number_format($price_sale)) {
                                                            echo number_format($row['DonGia']) . 'đ';
                                                        };  ?>
                                                </h6>
                                            </div>
                                        </div>
                                    </a>
                                </div><?php }  ?>
                            <div id="data_sp"></div>
                        </div>
                    </div>
                </div>
                <div id="loading" style="display:none">
                    <img src="webroot/image/loader.gif" alt="Loading..." />
                </div>
            </div>
        </div>

    </div>
</div>
<div class="colorlib-product">
    <div class="container">
        <div class="row">
            <div class="col-sm-8 offset-sm-2 text-center colorlib-heading colorlib-heading-sm">
                <h2>SẢN PHẨM MỚI</h2>
            </div>
        </div>
        <?php
        $product = newsProductsL4();
        ?>
        <div class="container ">
            <div class="row wrapper-dt">
                <div class="col-12">
                    <div class="row pad-dt">
                        <?php while ($row = mysqli_fetch_array($product)) { ?>
                            <div class="col-3 col-dt">
                                <a href="?view=product-detail&id=<?php echo $row['MaSP'] ?>">
                                    <div class="item">
                                        <div class="product-lable">
                                            <?php
                                            $price_sale = price_sale($row['MaSP'], $row['DonGia']);
                                            if ($price_sale < $row['DonGia']) {
                                                echo '<span>Giảm ' . number_format($row['DonGia'] - $price_sale) . 'đ </span>';
                                            }
                                            ?>
                                        </div>
                                        <div class="image-container">
                                            <img src="webroot/image/sanpham/<?php echo $row['AnhNen']; ?>" alt="Product Image">
                                        </div>
                                        <div class="item-name">
                                            <p> <?php echo $row['TenSP']; ?> </p>
                                        </div>
                                        <div class="item-price">
                                            <p> <?php echo number_format($price_sale, 0) . 'đ'; ?> </p>
                                            <h6> <?php if (number_format($row['DonGia']) !== number_format($price_sale)) {
                                                        echo number_format($row['DonGia']) . 'đ';
                                                    };  ?>
                                            </h6>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        <?php }  ?>
                        <div id="data_sp"></div>
                    </div>
                </div>
                <div id="loading" style="display:none">
                    <img src="webroot/image/loader.gif" alt="Loading..." />
                </div>
            </div>

        </div>

    </div>
</div>
<div class="colorlib-product">
    <div class="container">
        <div class="row">
            <div class="col-sm-8 offset-sm-2 text-center colorlib-heading colorlib-heading-sm">
                <h2>SẢN PHẨM BÁN CHẠY</h2>
            </div>
        </div>
        <?php
        $product = sellingProductsL4();
        ?>


        <div class="container ">
            <div class="row wrapper-dt">
                <div class="col-12">
                    <div class="row pad-dt">
                        <div class="row pad-dt"><?php while ($row = mysqli_fetch_array($product)) { ?>
                                <div class="col-3 col-dt">
                                    <a href="?view=product-detail&id=<?php echo $row['MaSP'] ?>">
                                        <div class="item">
                                            <div class="product-lable">
                                                <?php $price_sale = price_sale($row['MaSP'], $row['DonGia']);
                                                    if ($price_sale < $row['DonGia']) {
                                                        echo '<span>Giảm ' . number_format($row['DonGia'] - $price_sale) . 'đ </span>';
                                                    } ?>
                                            </div>
                                            <div class="image-container">
                                                <img src="webroot/image/sanpham/<?php echo $row['AnhNen']; ?>" alt="Product Image">
                                            </div>
                                            <div class="item-name">
                                                <p> <?php echo $row['TenSP']; ?> </p>
                                            </div>
                                            <div class="item-price">
                                                <p> <?php echo number_format($price_sale, 0) . 'đ'; ?> </p>
                                                <h6> <?php if (number_format($row['DonGia']) !== number_format($price_sale)) {
                                                            echo number_format($row['DonGia']) . 'đ';
                                                        };  ?>
                                                </h6>
                                            </div>
                                        </div>
                                    </a>
                                </div><?php }  ?>
                            <div id="data_sp"></div>
                        </div>
                    </div>
                </div>
                <div id="loading" style="display:none">
                    <img src="webroot/image/loader.gif" alt="Loading..." />
                </div>
            </div>
        </div>

    </div>
</div>
<div class="colorlib-partner">
    <div class="container">
        <div class="row">
            <div class="col-sm-8 offset-sm-2 text-center colorlib-heading colorlib-heading-sm">
                <h2>ĐỐI TÁC TIN CẬY</h2> <!--đợi data thay hình -->
            </div>
        </div>

        <div class="row">
            <div class="col partner-col text-center">
                <img src="webroot/image/brand/brand-0.png" class="img-fluid" alt="Free html4 bootstrap 4 template">
            </div>
            <div class="col partner-col text-center">
                <img src="webroot/image/brand/brand-2.jpg" class="img-fluid" alt="Free html4 bootstrap 4 template">
            </div>
            <div class="col partner-col text-center">
                <img src="webroot/image/brand/brand-3.png" class="img-fluid" alt="Free html4 bootstrap 4 template">
            </div>
            <div class="col partner-col text-center">
                <img src="webroot/image/brand/brand-4.png" class="img-fluid" alt="Free html4 bootstrap 4 template">
            </div>
            <div class="col partner-col text-center">
                <img src="webroot/image/brand/brand-8.jpg" class="img-fluid" alt="Free html4 bootstrap 4 template">
            </div>
            <div class="col partner-col text-center">
                <img src="webroot/image/brand/brand-7.png" class="img-fluid" alt="Free html4 bootstrap 4 template">
            </div>
        </div>
    </div>
</div>
<style>
    .image-container {
        width: 100%;
        height: 200px;
        /* Đặt kích thước cố định cho hình ảnh */
        overflow: hidden;
        /* Ẩn phần vượt quá khung hình */
    }

    .image-container img {
        width: 100%;
        height: auto;
        object-fit: cover;
        /* Hiển thị hình ảnh tỷ lệ và cắt đi phần thừa */
    }
</style>