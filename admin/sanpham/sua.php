<?php
$masp = $_GET['masp'];
$sql_sua = "SELECT * FROM `sanpham` WHERE MaSP=$masp";
$rs_sua = mysqli_query($conn, $sql_sua);
while ($kq_sua = mysqli_fetch_array($rs_sua)) { ?>
  <hr class="badge-danger">
  <form class="form-row " method="POST" action="sanpham/xuly.php" enctype="multipart/form-data">
    <input hidden name="masp" value="<?php echo $masp ?>">
    <div class="form-group col-sm-2">
      <label for="masv">Tên Sản Phẩm</label>
      <input type="text" class="form-control" name="tensp" value="<?php echo $kq_sua['TenSP']; ?>">
    </div>
    <div class="form-group col-sm-3">
      <label>Mã Danh Mục</label>
      <select name="madm" class="form-control browser-default custom-select">
        <?php $sql1 = "select * from danhmuc";
        $rs1 = mysqli_query($conn, $sql1);
        while ($row = mysqli_fetch_array($rs1)) { ?>
          <option <?php if ($row['MaDM'] === $kq_sua['MaDM']) {
                    echo "selected";
                  } ?> value="<?php echo $row['MaDM'] ?>"><?php echo $row['MaDM'] . ' - ' . $row['TenDM']; ?></option><?php } ?>
      </select>
    </div>
    <div class="form-group col-sm-2">
      <label>Mã Thương Hiệu</label>
      <select name="mancc" class="form-control browser-default custom-select">
        <?php $sql2 = "select * from nhacc";
        $rs2 = mysqli_query($conn, $sql2);
        while ($row2 = mysqli_fetch_array($rs2)) { ?>
          <option <?php if ($row2['MaNCC'] === $kq_sua['MaNCC']) {
                    echo "selected";
                  } ?> value="<?php echo $row2['MaNCC']; ?>"><?php echo $row2['MaNCC'] . ' - ' . $row2['TenNCC']; ?></option><?php } ?>
      </select>
    </div>
    <div class="form-group col-sm-2"><label>Đơn Giá</label><input type="text" class="form-control" name="dongia" value="<?php echo $kq_sua['DonGia']; ?>"></div>
    <div class="form-group col-sm-4"><label>Ảnh Nền</label> <input type="file" class="form-control" name="anhnen"> </div>
    <div class="form-group col-4"><label>Ảnh sản phẩm</label> <input type="file" class="form-control" name="anhsp[]" multiple></div>
    <div class="form-group col-sm-8"><label>Mô Tả</label><textarea class="form-control" name="mota" style="min-height: 100px;"><?php echo $kq_sua['MoTa']; ?></textarea> </div>
    <hr>
    <div class="form-group col-sm-6 m-auto">
      <input type="submit" class="form-control badge-info" value="Cập Nhập" name="xlsua">
    </div>
  </form>
  <hr>
  <hr class="badge-danger">
<?php } ?>