<?php include './inc/header.php'; ?>
<?php include './inc/dashboard.php'; ?>
<?php include './../classes/origin.php'; ?>
<?php
    $origin = new Origin();
    if ($_SERVER["REQUEST_METHOD"] === "POST") {
        $insertOrigin = $origin->insert_origin($_POST);
    }
?>
<div class="main-content">
    <div class="container-wrapper">
        <div class="breadcrumb">
            <p>Dashboard</p>
            <p>&nbsp;/ Xuất Xứ</p>
        </div>
        <div class="card">
            <div class="card-header">
                <i class="fas fa-folder-plus"></i>
                Thêm Xuất Xứ
            </div>
            <div class="card-form">
                <?php
                    if (isset($insertOrigin)) {
                        echo $insertOrigin;
                    }
                ?>
                <form action="originadd.php" method="post" class="form">
                    <div class="form-group">
                        <label for="originName" class="form-label">Xuất Xứ Tại:</label>
                        <input type="text" name="originName" class="form-control" placeholder="Nhập nơi xuất xứ..." />
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