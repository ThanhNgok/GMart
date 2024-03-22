<?php
$view = $_GET['view'];
switch ($view) {
    case 'products-category':
        $products = product_category($_GET['id']);
        break;
    case 'products-search':
        $products = product_search($_POST['key']);
        break;

    default:
        # code...
        break;
}
?>
<div class="breadcrumbs">
    <div class="container">
        <div class="row">
            <div class="col">
                <p class="bread"><span><a href="?view">Trang Chủ</a></span> / <span>Sản phẩm</span></p>
            </div>
        </div>
    </div>
</div>
<div class="colorlib-product">
    <div class="container">
        <div class="row wrapper-dt">
            <div class="col-12">
                <div class="row pad-dt">
                    <?php
                    while ($row = (mysqli_fetch_array($products))) {
                        $price_sale = price_sale($row['MaSP'], $row['DonGia']); ?>
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
                                                };  ?> </h6>
                                    </div>
                                </div>
                            </a>
                        </div>
                    <?php } ?>
                </div>
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