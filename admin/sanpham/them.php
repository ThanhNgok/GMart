<hr class="badge-danger">
<form class="" method="POST" action="sanpham/xuly.php" enctype="multipart/form-data">
  <div class="from-row row">
    <div class="form-group col-3">
      <label for="masv">Tên Sản Phẩm</label>
      <input type="text" class="form-control" name="tensp">
    </div>
    <div class="form-group col-2">
      <label>Mã Danh Mục</label>
      <select name="madm" class="form-control browser-default custom-select">
        <?php $sql1 = "select * from danhmuc";
        $rs1 = mysqli_query($conn, $sql1);
        while ($row = mysqli_fetch_array($rs1)) { ?>
          <option value="<?php echo $row['MaDM'] ?>"><?php echo $row['MaDM'] . ' - ' . $row['TenDM']; ?></option>
        <?php } ?>
      </select>
    </div>
    <div class="form-group col-2">
      <label>Mã Thương Hiệu</label>
      <select name="mancc" class="form-control browser-default custom-select">
        <?php $sql2 = "select * from nhacc";
        $rs2 = mysqli_query($conn, $sql2);
        while ($row2 = mysqli_fetch_array($rs2)) { ?>
          <option value="<?php echo $row2['MaNCC']; ?>"><?php echo $row2['MaNCC'] . ' - ' . $row2['TenNCC']; ?></option>
        <?php } ?>
      </select>
    </div>
    <div class="form-group col-3">
      <label>Đơn Giá</label>
      <input type="text" class="form-control" name="dongia" required>
    </div>
    <div class="form-group col-2">
      <label>Số Lượng</label>
      <input type="text" class="form-control" name="soluong" required>
    </div>
  </div>
  <div class="from-row row">
    <div class="form-group col-6">
      <label>Ảnh Nền</label>
      <input type="file" class="form-control" name="anhnen" required>
    </div>
    <div class="form-group col-6">
      <label>Ảnh sản phẩm</label>
      <input type="file" class="form-control" name="anhsp[]" multiple required>
    </div>
  </div>
  <div class="from-row row">
    <div class="form-group col-12">
      <label>Mô Tả</label>
      <textarea class="form-control" name="mota" required></textarea>
    </div>
  </div>
  <div class="form-group col-sm-6 m-auto"><br>
    <input type="submit" class="form-control badge-info" value="Thêm" name="xlthem">
  </div>
</form>
<hr>
<hr class="badge-danger">