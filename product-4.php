<?php
require("DBcont.php");
$dbproductId;
$dbcategoryId;
$dbdiscountId;
$dproductName;
$dbproductPrice;
$dbproductQuality;
$dbproductQuantity;
$dbproductImage;
$dbproductshort;
$dbproductModel;
$dbproductImage;
// function product_card($id) {
//   $conn = mysqli_connect(Server,Username,Password,DatabaseName);
// $product = "select * from product_master where categoryId=$id ";
//         //$result = $conn->query($sql);

//         $query_run = mysqli_query($conn, $product);
//         if ($query_run->num_rows > 0) {
//             foreach ($query_run as $row) {
//                 $dbproductId = $row["productId"];
//                 $dbcategoryId = $row["categoryId"];
//                 $dbdiscountId = $row["discountId"];
//                 $dproductName = $row["productName"];
//                 $dbproductPrice = $row["productPrice"];
//                 $dbproductQuality = $row["productQuality"];
//                 $dbproductQuantity = $row["productQuantity"];
//             }
//           }
//         }



?>


<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>TMOLA- Home</title>
  <link href="Main.css" rel="stylesheet">
  <link href="https://cdn.jsdelivr.net/npm/@accessible360/accessible-slick@1.0.1/slick/slick.min.css" rel="stylesheet">
  <link href="https:////cdn.jsdelivr.net/npm/@accessible360/accessible-slick@1.0.1/slick/accessible-slick-theme.min.css" rel="stylesheet">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css" rel="stylesheet">
  <link rel="icon" type="image/x-icon" href="Assets/Favicon.png">
</head>

<body>
  <!-- the header part -->
  <header>
    <?php
    include('header.php');
    ?>
  </header>
  <div class="hor_ad">
    <img src="Assets/Homepage/1.jpg" style="width:100%; height:200px">
  </div>
  <div class="product_main">
    <h2 class="cat_1">Mobiles </h2>
    <div class="main_card_1" id="main_card">
      <?php
      $Mobile = "select * from product_master where categoryId=103 ";
      //$result = $conn->query($sql);
      $query_run = mysqli_query($conn, $Mobile);
      if ($query_run->num_rows > 0) {
        foreach ($query_run as $row) {
          $dbproductId = $row["productId"];
          $dbcategoryId = $row["categoryId"];
          $dbdiscountId = $row["discountId"];
          $dproductName = $row["productName"];
          $dbproductPrice = $row["productPrice"];
          $dbproductQuality = $row["productQuality"];
          $dbproductQuantity = $row["productQuantity"];
          $dbproductImage = $row["ProductImages1"];
          $dbproductshort = $row["productShortDes"];
          $dbproductModel = $row["productModel"];
          $dbproductImage = $row["ProductImages1"];
        }
      }
      ?>


      <a href="productdetail.php?pid=<?php echo $dbproductId ?>">
        <img src="<?php echo $dbproductImage1; ?>" alt='<?php echo "$dproductName" ?>'>
        <h4><?php echo "$dproductName" ?></h4>
        <p class="price"><?php echo "$dbproductPrice" ?></p>
        <p><?php echo "$dbproductshort" ?></p>
        <a href="Cart.php?pid=<?php echo $dbproductId ?>"><button>Add to Cart</button></a>
      </a>
    </div>
    <div class="card-slider" id="card_slider_1">
      <?php
      $Mobile = "select * from product_master where categoryId=101 ";
      //$result = $conn->query($sql);
      $query_run1 = mysqli_query($conn, $Mobile);
      if ($query_run1->num_rows > 0) {
        foreach ($query_run1 as $row) {
          $dbproductId = $row["productId"];
          $dbcategoryId = $row["categoryId"];
          $dbdiscountId = $row["discountId"];
          $dproductName = $row["productName"];
          $dbproductPrice = $row["productPrice"];
          $dbproductQuality = $row["productQuality"];
          $dbproductQuantity = $row["productQuantity"];
          $dbproductImage = $row["ProductImages1"];
          $dbproductshort = $row["productShortDes"];
          $dbproductModel = $row["productModel"];
          $dbproductImage = $row["ProductImages1"];
      ?>

          <div class="card2" id="card">
            <a href="productdetail.php?pid=<?php echo $dbproductId ?>">
              <img src="<?php echo $dbproductImage1; ?>" alt='<?php echo "$dproductName" ?>'>
              <h4><?php echo "$dproductName" ?></h4>
              <p class="price"><?php echo "$dbproductPrice" ?></p>
              <p><?php echo "$dbproductshort" ?></p>
              <a href="Cart.php?pid=<?php echo $dbproductId ?>"><button>Add to Cart</button></a>
            </a>
          </div>
      <?php }
      } ?>
    </div>
    <h2 class="cat_2">Televisions </h2>
    <div class="main_card_1" id="main_card">
      <?php
      $Mobile = "select * from product_master where categoryId=104";
      //$result = $conn->query($sql);
      $query_run2 = mysqli_query($conn, $Mobile);
      if ($query_run2->num_rows > 0) {
        foreach ($query_run2 as $row) {
          $dbproductId = $row["productId"];
          $dbcategoryId = $row["categoryId"];
          $dbdiscountId = $row["discountId"];
          $dproductName = $row["productName"];
          $dbproductPrice = $row["productPrice"];
          $dbproductQuality = $row["productQuality"];
          $dbproductQuantity = $row["productQuantity"];
          $dbproductImage = $row["ProductImages1"];
          $dbproductshort = $row["productShortDes"];
          $dbproductModel = $row["productModel"];
          $dbproductImage = $row["ProductImages1"];
        }
      }
      ?>


      <a href="productdetail.php?pid=<?php echo $dbproductId ?>">
        <img src="<?php echo $dbproductImage1; ?>" alt='<?php echo "$dproductName" ?>'>
        <h4><?php echo "$dproductName" ?></h4>
        <p class="price"><?php echo "$dbproductPrice" ?></p>
        <p><?php echo "$dbproductshort" ?></p>
        <a href="Cart.php?pid=<?php echo $dbproductId ?>"><button>Add to Cart</button></a>
      </a>
    </div>
    <div class="card-slider" id="card_slider_1">
      <?php
      $Mobile = "select * from product_master where categoryId=100 ";
      //$result = $conn->query($sql);
      $query_run3 = mysqli_query($conn, $Mobile);
      if ($query_run3->num_rows > 0) {
        foreach ($query_run3 as $row) {
          $dbproductId = $row["productId"];
          $dbcategoryId = $row["categoryId"];
          $dbdiscountId = $row["discountId"];
          $dproductName = $row["productName"];
          $dbproductPrice = $row["productPrice"];
          $dbproductQuality = $row["productQuality"];
          $dbproductQuantity = $row["productQuantity"];
          $dbproductImage = $row["ProductImages1"];
          $dbproductshort = $row["productShortDes"];
          $dbproductModel = $row["productModel"];
          $dbproductImage = $row["ProductImages1"];
      ?>

          <div class="card2" id="card">
            <a href="productdetail.php?pid=<?php echo $dbproductId ?>">
              <img src="<?php echo $dbproductImage1; ?>" alt='<?php echo "$dproductName" ?>'>
              <h4><?php echo "$dproductName" ?></h4>
              <p class="price"><?php echo "$dbproductPrice" ?></p>
              <p><?php echo "$dbproductshort" ?></p>
              <a href="Cart.php?pid=<?php echo $dbproductId ?>"><button>Add to Cart</button></a>
            </a>
          </div>
      <?php }
      } ?>
    </div>
    <h2 class="cat_3">Laptops </h2>
    <div class="main_card_1" id="main_card">
      <?php
      $Mobile = "select * from product_master where categoryId=105 ";
      //$result = $conn->query($sql);
      $query_run4 = mysqli_query($conn, $Mobile);
      if ($query_run4->num_rows > 0) {
        foreach ($query_run4 as $row) {
          $dbproductId = $row["productId"];
          $dbcategoryId = $row["categoryId"];
          $dbdiscountId = $row["discountId"];
          $dproductName = $row["productName"];
          $dbproductPrice = $row["productPrice"];
          $dbproductQuality = $row["productQuality"];
          $dbproductQuantity = $row["productQuantity"];
          $dbproductImage = $row["ProductImages1"];
          $dbproductshort = $row["productShortDes"];
          $dbproductModel = $row["productModel"];
          $dbproductImage = $row["ProductImages1"];
        }
      }
      ?>


      <a href="productdetail.php?pid=<?php echo $dbproductId ?>">
        <img src="<?php echo $dbproductImage1; ?>" alt='<?php echo "$dproductName" ?>'>
        <h4><?php echo "$dproductName" ?></h4>
        <p class="price"><?php echo "$dbproductPrice" ?></p>
        <p><?php echo "$dbproductshort" ?></p>
        <a href="Cart.php?pid=<?php echo $dbproductId ?>"><button>Add to Cart</button></a>
      </a>
    </div>
    <div class="card-slider" id="card_slider_1">
      <?php
      $Mobile = "select * from product_master where categoryId=102 ";
      //$result = $conn->query($sql);
      $query_run5 = mysqli_query($conn, $Mobile);
      if ($query_run5->num_rows > 0) {
        foreach ($query_run5 as $row) {
          $dbproductId = $row["productId"];
          $dbcategoryId = $row["categoryId"];
          $dbdiscountId = $row["discountId"];
          $dproductName = $row["productName"];
          $dbproductPrice = $row["productPrice"];
          $dbproductQuality = $row["productQuality"];
          $dbproductQuantity = $row["productQuantity"];
          $dbproductImage = $row["ProductImages1"];
          $dbproductshort = $row["productShortDes"];
          $dbproductModel = $row["productModel"];
          $dbproductImage = $row["ProductImages1"];
      ?>

          <div class="card2" id="card">
            <a href="productdetail.php?pid=<?php echo $dbproductId ?>">
              <img src="<?php echo $dbproductImage1; ?>" alt='<?php echo "$dproductName" ?>'>
              <h4><?php echo "$dproductName" ?></h4>
              <p class="price"><?php echo "$dbproductPrice" ?></p>
              <p><?php echo "$dbproductshort" ?></p>
              <a href="Cart.php?pid=<?php echo $dbproductId ?>"><button>Add to Cart</button></a>
            </a>
          </div>
      <?php }
      } ?>
    </div>
  </div>
</body>
<footer>
  <?php
  include('footer.php');
  ?>
</footer>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@accessible360/accessible-slick@1.0.1/slick/slick.min.js"></script>
<script>
  $(document).ready(function() {
    $('.card-slider').slick({
      dots: false,
      arrows: true,
      slidesToShow: 4,
      infinite: false,
      responsive: [{
          breakpoint: 1024,
          settings: {
            slidesToShow: 3
          }
        },
        {
          breakpoint: 800,
          settings: {
            slidesToShow: 2
          }
        },
        {
          breakpoint: 600,
          settings: {
            slidesToShow: 1
          }
        }
      ]
    });
  });
</script>

</html>