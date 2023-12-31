<?php include './inc/header.php'; ?>
<?php include './inc/dashboard.php'; ?>
<?php include './../classes/category.php'; ?>
<?php
    $category = new Category();
    if ($_SERVER["REQUEST_METHOD"] === "POST") {
        $insertCategory = $category->insert_category($_POST, $_FILES['categoryImage']);
    }
?>
<div class="main-content">
    <div class="container-wrapper">
        <div class="breadcrumb">
            <p>Dashboard</p>
            <p>&nbsp;/ Danh Mục</p>
        </div>
        <div class="card">
            <div class="card-header">
                <i class="fas fa-folder-plus"></i>
                Thêm Danh Mục
            </div>
            <div class="card-form">
                <?php
                    if (isset($insertCategory)) {
                        echo $insertCategory;
                    }
                ?>
                <form action="categoryadd.php" method="post" class="form" enctype="multipart/form-data">
                    <div class="form-group">
                        <label for="categoryName" class="form-label">Tên:</label>
                        <input type="text" name="categoryName" class="form-control" placeholder="Nhập vào Tên Danh Mục..." />
                    </div>
                    <div class="form-group">
                        <label for="categoryImage" class="form-label">Upload Image: </label>
                        <input type="file" name="categoryImage" class="form-control" />
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
<?php include './inc/footer.php'; ?>