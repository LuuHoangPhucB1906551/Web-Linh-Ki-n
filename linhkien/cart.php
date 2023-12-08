<?php include 'inc/header.php'; ?>
<?php
    if (isset($_GET['cartID'])) {
        $cartID = $_GET['cartID'];
        $cart->delete_cart($cartID);
    }
    if (isset($_SERVER['REQUEST_METHOD']) == "POST" && isset($_POST['quantity'])) {
        $cartID = $_POST['cartID'];
        $quantity = $_POST['quantity'];
        $cart->update_quantity_cart($cartID, $quantity);
        if ($quantity <= 0) {
			$cart->delete_cart($cartID);
		}
    }
?>
<?php
	if (isset($_GET['order']) && $_GET['order'] == 'success') {
        echo '<script type="text/javascript">alert("Mua hàng thành công");</script>';
        echo '<meta http-equiv="refresh" content="0;URL=?id=live" />';
    } elseif (!isset($_GET['id'])) {
		echo "<meta http-equiv='refresh' content='0;URL=?id=live' />";
	}
?>
<div id="cart-page">
    <div class="cart-page-header">
        <div class="container">
            <div class="cart-page-header-inner">
                <div class="cart-page-header-left">
                    <a href="index.php">
                        <span>Giỏ Hàng</span>
                    </a>
                </div>
                <div class="cart-page-header-right">
                    <form action="search.php" method="post">
                        <input type="text" name="keyword" placeholder="Tìm sản phẩm, thương hiệu, và tên shop" />
                        <button type="submit" name="search"><i class="fas fa-search"></i></button>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <div class="cart-page-container">
        <div class="container">
            <div class="cart-page-content">
                <div class="cart-page-content-notice">
                    <svg height="12" viewBox="0 0 20 12" width="20" class="shopee-svg-icon _2Ns6ZJ icon-free-shipping"><g fill="none" fill-rule="evenodd" transform=""><rect fill="#00bfa5" fill-rule="evenodd" height="9" rx="1" width="12" x="4"></rect><rect height="8" rx="1" stroke="#00bfa5" width="11" x="4.5" y=".5"></rect><rect fill="#00bfa5" fill-rule="evenodd" height="7" rx="1" width="7" x="13" y="2"></rect><rect height="6" rx="1" stroke="#00bfa5" width="6" x="13.5" y="2.5"></rect><circle cx="8" cy="10" fill="#00bfa5" r="2"></circle><circle cx="15" cy="10" fill="#00bfa5" r="2"></circle><path d="m6.7082481 6.7999878h-.7082481v-4.2275391h2.8488017v.5976563h-2.1405536v1.2978515h1.9603297v.5800782h-1.9603297zm2.6762505 0v-3.1904297h.6544972v.4892578h.0505892c.0980164-.3134765.4774351-.5419922.9264138-.5419922.0980165 0 .2276512.0087891.3003731.0263672v.6210938c-.053751-.0175782-.2624312-.038086-.3762568-.038086-.5122152 0-.8758247.3017578-.8758247.75v1.8837891zm3.608988-2.7158203c-.5027297 0-.8536919.328125-.8916338.8261719h1.7390022c-.0158092-.5009766-.3446386-.8261719-.8473684-.8261719zm.8442065 1.8544922h.6544972c-.1549293.571289-.7050863.9228515-1.49238.9228515-.9864885 0-1.5903965-.6269531-1.5903965-1.6464843 0-1.0195313.6165553-1.6669922 1.5872347-1.6669922.9580321 0 1.5366455.6064453 1.5366455 1.6083984v.2197266h-2.4314412v.0351562c.0221328.5595703.373095.9140625.9169284.9140625.4110369 0 .6924391-.1376953.8189119-.3867187zm2.6224996-1.8544922c-.5027297 0-.853692.328125-.8916339.8261719h1.7390022c-.0158091-.5009766-.3446386-.8261719-.8473683-.8261719zm.8442064 1.8544922h.6544972c-.1549293.571289-.7050863.9228515-1.49238.9228515-.9864885 0-1.5903965-.6269531-1.5903965-1.6464843 0-1.0195313.6165553-1.6669922 1.5872347-1.6669922.9580321 0 1.5366455.6064453 1.5366455 1.6083984v.2197266h-2.4314412v.0351562c.0221328.5595703.373095.9140625.9169284.9140625.4110369 0 .6924391-.1376953.8189119-.3867187z" fill="#fff"></path><path d="m .5 8.5h3.5v1h-3.5z" fill="#00bfa5"></path><path d="m0 10.15674h3.5v1h-3.5z" fill="#00bfa5"></path><circle cx="8" cy="10" fill="#047565" r="1"></circle><circle cx="15" cy="10" fill="#047565" r="1"></circle></g></svg>
                    <span>Nhấn vào mục Mã giảm giá ở cuối trang để hưởng miễn phí vận chuyển bạn nhé!</span>
                </div>
                <div class="cart-page-content-header">
                    <div class="cart-page-content-header__product">Sản Phẩm</div>
                    <div class="cart-page-content-header__unit-price">Đơn Giá</div>
                    <div class="cart-page-content-header__quantity">Số Lượng</div>
                    <div class="cart-page-content-header__total-price">Số Tiền</div>
                    <div class="cart-page-content-header__action">Thao Tác</div>
                </div>
                <?php
                    $getProductCart = $cart->get_product_cart();
                    $sub_total = 0;
                    $qty = 0;
                    if ($getProductCart) {
                        while ($result = $getProductCart->fetch_assoc()) {
                ?>
                <div class="cart-page-content-section" id="<?php echo $result['cartID']; ?>">
                    <div class="cart-page-content-section__item">
                        <div class="cart-item">
                            <div class="cart-item__content">
                                <div class="cart-item__cell-overview">
                                    <a href="pageproduct.php?productID=<?php echo $result['productID']; ?>" title="<?php echo $result['productName']; ?>">
                                        <div class="cart-item__cell-overview--image"><img src="admin/uploads/product/<?php echo $result['productImage']; ?>" alt="image" /></div>
                                        <p><?php echo $result['productName']; ?></p>
                                    </a>
                                </div>
                                <div class="cart-item__cell-variation">
                                    <p>Phân Loại Hàng:<i class="fas fa-sort-down"></i><span><?php echo $result['categoryName']; ?></span></p>
                                </div>
                                <div class="cart-item__cell-unit-price">
                                    <span><?php echo number_format($result['productPrice']); ?>₫</span>
                                </div>
                                <div class="cart-item__cell-quantity">
                                    <form action="" method="post">
                                        <input type="hidden" name="cartID" value="<?php echo $result['cartID']; ?>" />
                                        <button onclick="this.parentNode.querySelector('input[type=number]').stepDown()">-</button>
                                        <input type="number" name="quantity" min="0" value="<?php echo $result['quantity']; ?>" />
                                        <button onclick="this.parentNode.querySelector('input[type=number]').stepUp()">+</button>
                                    </form>
                                </div>
                                <div class="cart-item__cell-total-price">
                                    <?php
                                        $total = $result['productPrice'] * $result['quantity'];
                                        $sub_total += $total;
                                        $qty += $result['quantity'];
                                    ?>
                                    <span><?php echo number_format($total); ?>₫</span>
                                </div>
                                <div class="cart-item__cell-action">
                                    <a href="?cartID=<?php echo $result['cartID']; ?>">Xóa</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="cart-page-content-section__shipping">
                        <svg enable-background="new 0 0 15 15" viewBox="0 0 15 15" x="0" y="0" class="shopee-svg-icon icon-free-shipping-line"><g><line fill="none" stroke-linejoin="round" stroke-miterlimit="10" x1="8.6" x2="4.2" y1="9.8" y2="9.8"></line><circle cx="3" cy="11.2" fill="none" r="2" stroke-miterlimit="10"></circle><circle cx="10" cy="11.2" fill="none" r="2" stroke-miterlimit="10"></circle><line fill="none" stroke-miterlimit="10" x1="10.5" x2="14.4" y1="7.3" y2="7.3"></line><polyline fill="none" points="1.5 9.8 .5 9.8 .5 1.8 10 1.8 10 9.1" stroke-linejoin="round" stroke-miterlimit="10"></polyline><polyline fill="none" points="9.9 3.8 14 3.8 14.5 10.2 11.9 10.2" stroke-linejoin="round" stroke-miterlimit="10"></polyline></g></svg>
                        <span>Miễn Phí Vận Chuyển cho đơn hàng từ ₫0 (giảm tối đa ₫30.000); Miễn Phí Vận Chuyển cho đơn hàng từ ₫300.000 (giảm tối đa ₫70.000)</span>
                    </div>
                </div>
                <?php } } ?>
            </div>
            <div class="cart-page-footer">
                <div class="cart-page-footer__details">
                    <div class="quantity">Tổng thanh toán (<?php echo number_format($qty); ?> Sản phẩm):</div>
                    <div class="price"><?php echo number_format($sub_total); ?>₫</div>
                </div>
                <div class="cart-page-footer__checkout">
                    <a href="checkout.php">Mua Hàng</a>
                </div>
            </div>
        </div>
    </div>
</div>
<?php include 'inc/footer.php'; ?>