<?php include './inc/header.php'; ?>
<?php include './inc/dashboard.php'; ?>
<?php include './../classes/origin.php'; ?>
<?php include './../classes/category.php'; ?>
<?php include './../classes/product.php'; ?>
<?php
    $product = new Product();
    if ($_SERVER["REQUEST_METHOD"] === "POST") {
        $insertProduct = $product->insert_product($_POST);
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
                <i class="fas fa-folder-plus"></i>
                Thêm Sản Phẩm
            </div>
            <div class="card-form">
                <?php
                    if (isset($insertProduct)) {
                        echo $insertProduct;
                    }
                ?>
                <form action="productadd.php" method="post" class="form">
                    <div class="form-group">
                        <label for="productName" class="form-label">Tên:</label>
                        <input type="text" name="productName" class="form-control" placeholder="Nhập vào tên Sản Phẩm..." />
                    </div>
                    <div class="form-group">
                        <label for="category" class="form-label">Danh Mục:</label>
                        <select name="category" class="form-control">
                            <option value="">-------- Chọn Danh Mục --------</option>
                            <?php
                                $category = new Category();
                                $categoryList = $category->show_category();
                                if ($categoryList) {
                                    while ($result = $categoryList->fetch_assoc()) {
                            ?>
                            <option value="<?php echo $result['categoryID']; ?>"><?php echo $result['categoryName']; ?></option>
                            <?php } } ?>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="origin" class="form-label">Xuất Xứ:</label>
                        <select name="origin" class="form-control">
                            <option value="">-------- Chọn nơi Xuất Xứ --------</option>
                            <?php
                                $origin = new origin();
                                $originList = $origin->show_origin();
                                if ($originList) {
                                    while ($result = $originList->fetch_assoc()) {
                            ?>
                            <option value="<?php echo $result['originID']; ?>"><?php echo $result['originName']; ?></option>
                            <?php } } ?>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="productDesc" class="form-label">Mô Tả:</label>
                        <textarea name="productDesc" class="form-control"></textarea>
                    </div>
                    <div class="form-group">
                        <label for="productPrice" class="form-label">Giá:</label>
                        <input type="text" name="productPrice" class="form-control" placeholder="Nhập Giá..." />
                    </div>
                    <div class="form-group">
                        <label for="productQuantity" class="form-label">Số Lượng:</label>
                        <input type="text" name="productQuantity" class="form-control" placeholder="Nhập Số Lượng..." />
                    </div>
                    <div class="form-group">
                        <label for="productType" class="form-label">Product Type:</label>
                        <select name="productType" class="form-control">
                            <option value="">-------- Select Type --------</option>
                            <option value="0">Featured</option>
                            <option value="1">Non-Featured</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="submit" class="form-label"></label>
                        <button type="submit" name="submit">Lưu</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
