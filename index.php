<?php
$activeHome = "active";

require('func/config.php');

//featured
$featured_products_query = "select * from shop_items where FeaturedItem = 1";
$featured_products = $user->fetch_products($featured_products_query);
//recommended
$recommended_products_query = "select * from shop_items where FeaturedItem = 1";
$recommended_products = $user->fetch_products($recommended_products_query);
//bikes
$bikes_products_query = "select * from shop_items where Category = 1";
$bikes_products = $user->fetch_products($bikes_products_query);
//engines
$engines_products_query = "select * from shop_items where Category = 2";
$engines_products = $user->fetch_products($engines_products_query);
//accessories
$accessories_products_query = "select * from shop_items where Category = 3";
$accessories_products = $user->fetch_products($accessories_products_query);


include('includes/front/header.php');

include('includes/front/slider.php');?>

<section>
    <div class="container">
        <div class="row">

            <?php include('includes/front/sidebar.php');?>

            <div class="col-sm-9 padding-right">
                <div class="features_items"><!--features_items-->
                    <h2 class="title text-center">Featured Items</h2>
                    <!-- Loop here -->
                    <?php include('includes/front/featured-items.php');?>
                </div><!--features_items-->
                <!-- <div class="features_items"><!--features_items-->
                <!--    <h2 class="title text-center">Bikes</h2>
                <!--    <!-- Loop here -->
                <!--    <?php include('includes/front/bikes-items.php');?>
                <!--</div><!--features_items-->
                <!--<div class="features_items"><!--features_items-->
                <!--    <h2 class="title text-center">Engines</h2>
                <!--    <!-- Loop here -->
                <!--    <?php include('includes/front/engines-items.php');?>
                <!--</div><!--features_items-->
                <!--<div class="features_items"><!--features_items-->
                <!--    <h2 class="title text-center">Accessories</h2>
                <!--    <!-- Loop here -->
                <!--    <?php include('includes/front/accessories-items.php');?>
                <!--</div><!--features_items-->
                <div class="features_items"><!--features_items-->
                    <h2 class="title text-center">Recommended Items</h2>
                    <!-- Loop here -->
                    <?php include('includes/front/recommended-items.php');?>
                </div><!--features_items-->


            </div>
        </div>
    </div>
</section>
<?php include('includes/front/footer.php');?>
