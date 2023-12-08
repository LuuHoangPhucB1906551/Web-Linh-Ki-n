<?php include 'inc/header.php'; ?>
<?php
    $loginCheck = Session::get('customer_login');
    if (!$loginCheck) {
        header('location: login.php');
    }
    $getCustomer = $customer->show_details_customer(SESSION::get('customer_id'));
    $resultCustomer = $getCustomer->fetch_assoc();
    $checkAddress = $resultCustomer['customerAddress'];
    if (empty($checkAddress)) {
        header('location: user.php?action=emptyaddress');
    }
?>
<?php
	if (isset($_GET['orderid']) && $_GET['orderid'] == 'order') {
        $customerID = Session::get('customer_id');
        $insertOrder = $cart->insert_order($customerID);
        $deleteCart = $cart->delete_all_data_cart();
        header('location: cart.php?order=success');
    }
?>
<div id="checkout-page">
    <div class="checkout-header">
        <div class="container">
            <div class="checkout-header-inner">
                <div class="checkout-header-left">
                    <a href="index.php">
                       <span>Thanh Toán</span>
                    </a>
                </div>
            </div>
        </div>
    </div>
    <div class="checkout-container">
        <div class="container">
            <div class="checkout-address">
                <div class="checkout-address-line"></div>
                <div class="checkout-address-section">
                    <div class="checkout-address-section__title">
                        <svg height="16" viewBox="0 0 12 16" width="12" class="shopee-svg-icon icon-location-marker"><path d="M6 3.2c1.506 0 2.727 1.195 2.727 2.667 0 1.473-1.22 2.666-2.727 2.666S3.273 7.34 3.273 5.867C3.273 4.395 4.493 3.2 6 3.2zM0 6c0-3.315 2.686-6 6-6s6 2.685 6 6c0 2.498-1.964 5.742-6 9.933C1.613 11.743 0 8.498 0 6z" fill-rule="evenodd"></path></svg>
                        Địa chỉ nhận hàng
                    </div>
                    <div class="checkout-address-section__content">
                        <div class="left">
                            <p class="name"><?php echo $resultCustomer['customerName'].' '.$resultCustomer['customerPhone']; ?></p>
                            <p class="address"><?php echo $resultCustomer['customerAddress']; ?></p>
                        </div>
                        <div class="right"><a href="user.php">Thay đổi</a></div>
                    </div>
                </div>
            </div>
            <div class="checkout-content">
                <div class="checkout-content-header">
                    <p>Sản phẩm</p>
                    <p></p>
                    <p>Đơn giá</p>
                    <p>Số lượng</p>
                    <p>Thành tiền</p>
                </div>
                <div class="product-list">
                    <?php
                        $getProductCart = $cart->get_product_cart();
                        $sub_total = 0;
                        $qty = 0;
                        if ($getProductCart) {
                            while ($result = $getProductCart->fetch_assoc()) {
                    ?>
                    <div class="product-item">
                        <div class="product-item__details">
                            <div class="product-name">
                                <div class="img-wrapper">
                                    <img src="admin/uploads/product/<?php echo $result['productImage']; ?>" alt="image" />
                                </div>
                                <span><?php echo $result['productName']; ?></span>
                            </div>
                            <div class="product-category"><span>Loại: <?php echo $result['categoryName']; ?></span></div>
                            <div class="product-price"><span><?php echo number_format($result['productPrice']); ?>₫</span></div>
                            <div class="product-quantity"><span><?php echo number_format($result['quantity']); ?></span></div>
                            <div class="product-total-price">
                                <?php
                                    $total = $result['productPrice'] * $result['quantity'];
                                    $sub_total += $total;
                                    $qty += $result['quantity'];
                                ?>
                                <span><?php echo number_format($total); ?>₫</span>
                            </div>
                        </div>
                        <div class="product-item__price">
                            <p>Tổng số tiền (<?php echo $result['quantity']; ?> sản phẩm):</p>
                            <span><?php echo number_format($total); ?>₫</span>
                        </div>
                    </div>
                    <?php } } ?>
                </div>
            </div>
            <div class="checkout-footer">
                <div class="payment-methods">
                    <p>Phương thức thanh toán</p>
                    <p>Thanh toán khi nhận hàng</p>
                    <p>Thay đổi</p>
                </div>
                <div class="checkout-footer-section">
                    <div class="price"><p>Tổng thanh toán:</p><span><?php echo number_format($sub_total); ?>₫</span></div>
                    <div class="order">
                        <p>Nhấn "Đặt hàng" đồng nghĩa với việc bạn đồng ý tuân theo <a href="#">Điều khoản H2P</a></p>
                        <a href="?orderid=order" class="order-button">Đặt hàng</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<?php include 'inc/footer.php'; ?>