<div class="breadcrumbs">
  <div class="container">
    <div class="row">
      <div class="col">
        <p class="bread"><span><a href="?view">Trang Chủ</a></span> / <span>Tất cả sản phẩm</span></p>
      </div>
    </div>
  </div>
</div>

<?php
$product = productAll();
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
                                  };  ?> </h6>
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

    <form id="load_sp" class="row">
      <input type="text" name="page" id="page" value="1" hidden="true">
      <input type="text" name="rowCount" id="rowCount" value="10" hidden="true">
      <button type="button" id="xemthem" class="btn btn-outline-secondary xemthem mx-auto col-2">xem thêm</button>
    </form>
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