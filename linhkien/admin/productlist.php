<?php include './inc/header.php'; ?>
<?php include './inc/dashboard.php'; ?>
<?php include_once './../classes/origin.php'; ?>
<?php include_once './../classes/category.php'; ?>
<?php include_once './../classes/product.php'; ?>
<?php include_once './../classes/productimage.php'; ?>
<?php include_once './../helpers/format.php'; ?>
<?php
$product = new Product();
$fm = new Format();
if (isset($_GET['deleteID']) && !empty($_GET['deleteID'])) {
    $deleteID = $_GET['deleteID'];
    $deleteProduct = $product->delete_product($deleteID);
}
?>
<div class="main-content">
    <div class="container-wrapper">
        <div class="breadcrumb">
            <p>Dashboard</p>
            <p>&nbsp;/ Sản Phẩm</p>
        </div>
        <div class="card">
            <div class="card-header">
                <i class="fas fa-table"></i>
                Danh Sách Sản Phẩm
            </div>
            <div class="card-body">
                <?php
                if (isset($deleteProduct)) {
                    echo $deleteProduct;
                }
                ?>
                <div class="card-body__table">
                    <table id="myTable">
                        <thead>
                            <tr>
                                <th class="w-5 sort">ID</th>
                                <th class="w-10 sort">Tên</th>
                                <th class="w-10 sort">Giá</th>
                                <th class="w-15">Ảnh</th>
                                <th class="w-10 sort">Danh Mục</th>
                                <th class="w-5 sort">Xuất Sứ</th>
                                <th class="w-20">Mô Tả</th>
                                <th class="w-5 sort">Type</th>
                                <th class="w-5 sort">Số Lượng</th>
                                <th class="w-5 sort">Đã Bán</th>
                                <th class="w-10 action">Hành Động</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            $productList = $product->show_product();
                            if ($productList) {
                                $id = 1;
                                while ($result = $productList->fetch_assoc()) {
                            ?>
                                    <tr id="id<?php echo $result['productID']; ?>">
                                        <td class="w-5"><?php echo $id++; ?></td>
                                        <td class="w-10"><?php echo $fm->textShorten($result['productName'], 70); ?></td>
                                        <td class="w-10"><?php echo number_format($result['productPrice']); ?></td>
                                        <td class="w-15 image">
                                            <?php
                                            $productImage = new productImage();
                                            $getImage = $productImage->get_image_by_ID($result['productID']);
                                            if ($getImage) {
                                                $resultImage = $getImage->fetch_assoc();
                                            ?>
                                                <img src="./uploads/product/<?php echo $resultImage['productImage']; ?>" alt="image" />
                                                <a href="productuploadimage.php?productID=<?php echo $result['productID']; ?>">More Image</a>
                                            <?php } else { ?>
                                                <a href="productuploadimage.php?productID=<?php echo $result['productID']; ?>">Upload Image</a>
                                            <?php } ?>
                                        </td>
                                        <td class="w-10"><?php echo $result['categoryName']; ?></td>
                                        <td class="w-5"><?php echo $result['originName']; ?></td>
                                        <td class="w-20"><?php echo $fm->textShorten($result['productDesc'], 150); ?></td>
                                        <td class="w-5"><?php
                                                        if (!$result['productType']) {
                                                            echo "Feathered";
                                                        } else {
                                                            echo "Non-Feathered";
                                                        }
                                                        ?></td>
                                        <td class="w-5"><?php echo number_format($result['productQuantity']); ?></td>
                                        <td class="w-5"><?php echo number_format($result['productSold']); ?></td>
                                        <td class="w-10 control">
                                            <a class="b-r" href="productedit.php?editID=<?php echo $result['productID']; ?>">Sửa</a>
                                            <a class="b-l" onclick="return confirm('Are you want to delete?')" href="?deleteID=<?php echo $result['productID']; ?>">Xoá</a>
                                        </td>
                                    </tr>
                            <?php }
                            } ?>
                        </tbody>
                        <tfoot>
                            <tr>
                                <th class="w-5 sort">ID</th>
                                <th class="w-10 sort">Tên</th>
                                <th class="w-10 sort">Giá</th>
                                <th class="w-15">Ảnh</th>
                                <th class="w-10 sort">Danh Mục</th>
                                <th class="w-5 sort">Xuất Sứ</th>
                                <th class="w-20">Mô Tả</th>
                                <th class="w-5 sort">Type</th>
                                <th class="w-5 sort">Số Lượng</th>
                                <th class="w-5 sort">Đã Bán</th>
                                <th class="w-10 action">Hành Động</th>
                            </tr>
                        </tfoot>
                    </table>
                </div>
            </div>
            <div class="card-footer">Updated yesterday at 11:59 PM</div>
        </div>
    </div>
</div>
<?php include './inc/footer.php'; ?>