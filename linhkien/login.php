<?php
include 'lib/session.php';
Session::init();
?>
<?php
include_once 'classes/customer.php';
$customer = new Customer();
?>
<?php
$login_check = Session::get('customer_login');
if ($login_check) {
    header('location: cart.php');
}
?>
<?php
if ($_SERVER["REQUEST_METHOD"] === "POST" && isset($_POST['register'])) {
    $insertCustomer = $customer->insert_customer($_POST);
}
?>
<?php
if ($_SERVER["REQUEST_METHOD"] === "POST" && isset($_POST['login'])) {
    $loginCustomer = $customer->login_customer($_POST);
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Linh Kiện Điện Tử - HanTwoP</title>
    <link rel="shortcut icon" href="image/logo/iconT.png" type="image/x-icon">
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap" />
    <link rel="stylesheet" href="style/fontawesome-free-5.15.3-web/css/all.min.css" />
    <link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
    <link rel="stylesheet" href="style/reset.css" />
    <link rel="stylesheet" href="style/style.css" />
    <?php
    if (isset($_GET['action']) && $_GET['action'] == 'empty') {
        echo '<script type="text/javascript">alert("Không được để ô trống");</script>';
        echo '<meta http-equiv="refresh" content="0;URL=?id=live" />';
    } elseif (isset($_GET['action']) && $_GET['action'] == 'existed') {
        echo '<script type="text/javascript">alert("Email/Số điện thoại/Tên đăng nhập đã tồn tại");</script>';
        echo '<meta http-equiv="refresh" content="0;URL=?id=live" />';
    } elseif (isset($_GET['action']) && $_GET['action'] == 'true') {
        echo '<script type="text/javascript">alert("Tạo tài khoản thành công");</script>';
        echo '<meta http-equiv="refresh" content="0;URL=?id=live" />';
    } elseif (isset($_GET['action']) && $_GET['action'] == 'false') {
        echo '<script type="text/javascript">alert("Tạo tài khoản không thành công");</script>';
        echo '<meta http-equiv="refresh" content="0;URL=?id=live" />';
    } elseif (isset($_GET['action']) && $_GET['action'] == 'failed') {
        echo '<script type="text/javascript">alert("Email/Số điện thoại/Tên đăng nhập hoặc Mật khẩu không đúng");</script>';
        echo '<meta http-equiv="refresh" content="0;URL=?id=live" />';
    }
    ?>
</head>

<body>
    <div class="wrapper">
        <div id="login-page__section">
            <div class="login-page__section-wrapper">
                <form action="" id="login-form" method="post">
                    <h3 class="heading">Đăng Nhập</h3>
                    <div class="form-section">
                        <div class="form-group">
                            <input type="text" name="account" placeholder="Email/Số điện thoại/Tên đăng nhập" />
                        </div>
                        <div class="form-group">
                            <input type="password" name="password" placeholder="Mật khẩu" />
                        </div>
                        <button type="submit" name="login" class="form-submit">Đăng nhập</button>
                        <div class="social-login">
                            <div class="social-login__title">Hoặc</div>
                            <div class="social-login__items">
                                <button>
                                    <div class="button-icon-wrapper">
                                        <div class="facebook-icon"></div>
                                    </div>
                                    <span>Facebook</span>
                                </button>
                                <button>
                                    <div class="button-icon-wrapper">
                                        <div class="google-icon"></div>
                                    </div>
                                    <span>Google</span>
                                </button>
                            </div>
                        </div>
                    </div>
                    <div class="form-footer">
                        <span>Bạn mới biết đến H2P?</span>
                        <a href="#" id="register-form-link">Đăng ký</a>
                    </div>
                </form>
                <form action="" id="register-form" method="post">
                    <h3 class="heading">Đăng Ký</h3>
                    <div class="form-section">
                        <div class="form-group">
                            <input type="text" name="name" placeholder="Họ và Tên" />
                        </div>
                        <div class="form-group">
                            <input type="text" name="account" placeholder="Tên đăng nhập" />
                        </div>
                        <div class="form-group">
                            <input type="text" name="email" placeholder="Email" />
                        </div>
                        <div class="form-group">
                            <input type="text" name="phone" placeholder="Số điện thoại" />
                        </div>
                        <div class="form-group">
                            <input type="password" name="password" placeholder="Mật khẩu" />
                        </div>
                        <button type="submit" name="register" class="form-submit">Đăng ký</button>
                        <div class="social-login">
                            <div class="social-login__title">Hoặc</div>
                            <div class="social-login__items">
                                <button>
                                    <div class="button-icon-wrapper">
                                        <div class="facebook-icon"></div>
                                    </div>
                                    <span>Facebook</span>
                                </button>
                                <button>
                                    <div class="button-icon-wrapper">
                                        <div class="google-icon"></div>
                                    </div>
                                    <span>Google</span>
                                </button>
                            </div>
                        </div>

                    </div>
                    <div class="form-footer">
                        <span>Bạn đã có tài khoản?</span>
                        <a href="#" id="login-form-link">Đăng nhập</a>
                    </div>
                </form>
            </div>
        </div>


    </div>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
    <script type="text/javascript" src="js/custom.js"></script>
</body>

</html>