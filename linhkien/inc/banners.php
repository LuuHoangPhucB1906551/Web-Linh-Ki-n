<section id="banners">
    <div class="container">
        <div class="banners-inner">
            <div class="banners-section">
                <div class="banners-slider">
                    <?php
                        $getSlider = $slider->show_slider();
                        if ($getSlider) {
                            while ($result = $getSlider->fetch_assoc()) {
                                if ($result['sliderType'] == 'on') {
                    ?>
                    <img src="admin/uploads/slider/<?php echo $result['sliderImage']; ?>" alt="slider" /></li>
                    <?php } } } ?>
                </div>
                <ul class="banners-list">
                    <li><a href="#"><img src="image/banner/1.png" alt="banner" /></a></li>
                    <li><a href="#"><img src="image/banner/2.png" alt="banner" /></a></li>
                </ul>
            </div>
        </div>
    </div>
</section>