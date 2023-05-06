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
// $sql = "select productId from product_master where categoryId=100";
// $id = mysqli_query($conn, $sql);

// $query_run = mysqli_query($conn, $sql);
//         if ($query_run->num_rows > 0) {
//             foreach ($query_run as $row) {
//               $pid[] = mysqli_fetch_assoc($id); }}
              
//               foreach($pid as $p) {
//                 $psql = "select * from product_master where productIdId=$p";
//                 $r = mysqli_query($conn, $psql);
//                 $prod = mysqli_fetch_assoc($r);
//               }

// function product_card($id) {
//   $conn = mysqli_connect(Server,Username,Password,DatabaseName);
// $product = "select * from product_master where categoryId=$id ";
//         //$result = $conn->query($sql);
// $sql = "select productId from product_master where categoryId=$id ";
// $id = mysqli_query($conn, $sql);
// $pid = mysqli_fetch_assoc($id);
//         $query_run = mysqli_query($conn, $product);
//         if ($query_run->num_rows > 0) {
//             foreach ($query_run as $row) {
//               $dbproductId = $row["productId"];
//               $dbcategoryId = $row["categoryId"];
//               $dbdiscountId = $row["discountId"];
//               $dproductName = $row["productName"];
//               $dbproductPrice = $row["productPrice"];
//               $dbproductQuality = $row["productQuality"];
//               $dbproductQuantity = $row["productQuantity"];
//               $dbproductImage = $row["ProductImages1"];
//               $dbproductshort = $row["productShortDes"];
//               $dbproductModel = $row["productModel"];
//                 $pro_detail = array($dbproductId,$dbcategoryId,$dbdiscountId,$dproductName,$dbproductPrice,$dbproductQuality,$dbproductQuantity,$dbproductImage,$dbproductshort,$dbproductModel);
                
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
    <?php $Mobile = "select * from product_master where categoryId=103 ";
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
       
  ?>
<a href="productdetail.php">
        <img src="<?php 
    echo $dbproductImage;?>" alt="<?php
    echo $dproductName;?>">
        <h4><?php 
    echo $dproductName;?></h4>
        <p class="price"><?php
    echo $dbproductPrice;?></p>
        <p><?php 
    echo $dbproductshort;?></p>
    <?php 
      ?>
        <p><button>Add to Cart</button></p>
      </a>
<?php  }
      }?>
      
    </div>
    <div class="card-slider" id="card_slider_1">
     
      <?php  ?>
      

   <div class="card2" id="card">
<a href="productdetail.php">
        <img src="<?php $img = $mobile[7];
    echo $img;?>" alt="<?php $img = $mobile[3];
    echo $img;?>">
        <h4><?php $img = $mobile[3];
    echo $img;?></h4>
        <p class="price"><?php $img = $mobile[4];
    echo $img;?></p>
        <p><?php $img = $mobile[8];
    echo $img;?></p>
    <?php 
      ?>
      </div>

      <!-- <div class="card2" id="card">
        <a href="productdetail.php">
          <img src="Assets/Homepage/8.jpg" alt="Denim Jeans">
          <h4>Tailored Jeans</h4>
          <p class="price">$19.99</p>
          <p>Some text about the jeans.</p>
          <p><button>Add to Cart</button></p>
        </a>
      </div>
      <div class="card2" id="card">
        <a href="productdetail.php">
          <img src="Assets/Homepage/8.jpg" alt="Denim Jeans">
          <h4>Tailored Jeans</h4>
          <p class="price">$19.99</p>
          <p>Some text about the jeans.</p>
          <p><button>Add to Cart</button></p>
        </a>
      </div>
      
      <div class="card2" id="card">
        <a href="productdetail.php">
          <img src="Assets/Homepage/8.jpg" alt="Denim Jeans">
          <h4>Tailored Jeans</h4>
          <p class="price">$19.99</p>
          <p>Some text about the jeans.</p>
          <p><button>Add to Cart</button></p>
        </a>
      </div>
      <div class="card2" id="card">
        <a href="productdetail.php">
          <img src="Assets/Homepage/8.jpg" alt="Denim Jeans">
          <h4>Tailored Jeans</h4>
          <p class="price">$19.99</p>
          <p>Some text about the jeans.</p>
          <p><button>Add to Cart</button></p>
        </a>
      </div>
      <div class="card2" id="card">
        <a href="productdetail.php">
          <img src="Assets/Homepage/8.jpg" alt="Denim Jeans">
          <h4>Tailored Jeans</h4>
          <p class="price">$19.99</p>
          <p>Some text about the jeans.</p>
          <p><button>Add to Cart</button></p>
        </a>
      </div>
      <div class="card2" id="card">
        <a href="productdetail.php">
          <img src="Assets/Homepage/8.jpg" alt="Denim Jeans">
          <h4>Tailored Jeans</h4>
          <p class="price">$19.99</p>
          <p>Some text about the jeans.</p>
          <p><button>Add to Cart</button></p>
        </a>
      </div>
      <div class="card2" id="card">
        <a href="productdetail.php">
          <img src="Assets/Homepage/8.jpg" alt="Denim Jeans">
          <h4>Tailored Jeans</h4>
          <p class="price">$19.99</p>
          <p>Some text about the jeans.</p>
          <p><button>Add to Cart</button></p>
        </a>
      </div> -->
      </div>
      <h2 class="cat_2">Televisions </h2>
      <div class="main_card_2" id="main_card">
        <a href="productdetail.php">
          <img src="Assets/Homepage/8.jpg" alt="Denim Jeans">
          <h4>Tailored Jeans</h4>
          <p class="price">$19.99</p>
          <p>Some text about the jeans.</p>
          <p><button>Add to Cart</button></p>
        </a>
      </div>
      <div class="card-slider"  id="card_slider_2">
      <div class="card2" id="card">
        <a href="productdetail.php">
          <img src="Assets/Homepage/8.jpg" alt="Denim Jeans">
          <h4>Tailored Jeans</h4>
          <p class="price">$19.99</p>
          <p>Some text about the jeansSome text about the jeansSome text about the jeansSome text about the jeansSome text about the jeans.</p>
          <p><button>Add to Cart</button></p>
        </a>
      </div>

      <div class="card2" id="card">
        <a href="productdetail.php">
          <img src="Assets/Homepage/8.jpg" alt="Denim Jeans">
          <h4>Tailored Jeans</h4>
          <p class="price">$19.99</p>
          <p>Some text about the jeans.</p>
          <p><button>Add to Cart</button></p>
        </a>
      </div>
      <div class="card2" id="card">
        <a href="productdetail.php">
          <img src="Assets/Homepage/8.jpg" alt="Denim Jeans">
          <h4>Tailored Jeans</h4>
          <p class="price">$19.99</p>
          <p>Some text about the jeans.</p>
          <p><button>Add to Cart</button></p>
        </a>
      </div>
      
      <div class="card2" id="card">
        <a href="productdetail.php">
          <img src="Assets/Homepage/8.jpg" alt="Denim Jeans">
          <h4>Tailored Jeans</h4>
          <p class="price">$19.99</p>
          <p>Some text about the jeans.</p>
          <p><button>Add to Cart</button></p>
        </a>
      </div>
      <div class="card2" id="card">
        <a href="productdetail.php">
          <img src="Assets/Homepage/8.jpg" alt="Denim Jeans">
          <h4>Tailored Jeans</h4>
          <p class="price">$19.99</p>
          <p>Some text about the jeans.</p>
          <p><button>Add to Cart</button></p>
        </a>
      </div>
      <div class="card2" id="card">
        <a href="productdetail.php">
          <img src="Assets/Homepage/8.jpg" alt="Denim Jeans">
          <h4>Tailored Jeans</h4>
          <p class="price">$19.99</p>
          <p>Some text about the jeans.</p>
          <p><button>Add to Cart</button></p>
        </a>
      </div>
      <div class="card2" id="card">
        <a href="productdetail.php">
          <img src="Assets/Homepage/8.jpg" alt="Denim Jeans">
          <h4>Tailored Jeans</h4>
          <p class="price">$19.99</p>
          <p>Some text about the jeans.</p>
          <p><button>Add to Cart</button></p>
        </a>
      </div>
      <div class="card2" id="card">
        <a href="productdetail.php">
          <img src="Assets/Homepage/8.jpg" alt="Denim Jeans">
          <h4>Tailored Jeans</h4>
          <p class="price">$19.99</p>
          <p>Some text about the jeans.</p>
          <p><button>Add to Cart</button></p>
        </a>
      </div>
      </div>
      <h2 class="cat_3">Laptops </h2>
      <div class="main_card_3" id="main_card">
        <a href="productdetail.php">
          <img src="Assets/Homepage/8.jpg" alt="Denim Jeans">
          <h4>Tailored Jeans</h4>
          <p class="price">$19.99</p>
          <p>Some text about the jeans.</p>
          <p><button>Add to Cart</button></p>
        </a>
      </div>
      <div class="card-slider"  id="card_slider_3">
      <div class="card2" id="card">
        <a href="productdetail.php">
          <img src="Assets/Homepage/8.jpg" alt="Denim Jeans">
          <h4>Tailored Jeans</h4>
          <p class="price">$19.99</p>
          <p>Some text about the jeans.</p>
          <p><button>Add to Cart</button></p>
        </a>
      </div>

      <div class="card2" id="card">
        <a href="productdetail.php">
          <img src="Assets/Homepage/8.jpg" alt="Denim Jeans">
          <h4>Tailored Jeans</h4>
          <p class="price">$19.99</p>
          <p>Some text about the jeans.</p>
          <p><button>Add to Cart</button></p>
        </a>
      </div>
      <div class="card2" id="card">
        <a href="productdetail.php">
          <img src="Assets/Homepage/8.jpg" alt="Denim Jeans">
          <h4>Tailored Jeans</h4>
          <p class="price">$19.99</p>
          <p>Some text about the jeans.</p>
          <p><button>Add to Cart</button></p>
        </a>
      </div>
      
      <div class="card2" id="card">
        <a href="productdetail.php">
          <img src="Assets/Homepage/8.jpg" alt="Denim Jeans">
          <h4>Tailored Jeans</h4>
          <p class="price">$19.99</p>
          <p>Some text about the jeans.</p>
          <p><button>Add to Cart</button></p>
        </a>
      </div>
      <div class="card2" id="card">
        <a href="productdetail.php">
          <img src="Assets/Homepage/8.jpg" alt="Denim Jeans">
          <h4>Tailored Jeans</h4>
          <p class="price">$19.99</p>
          <p>Some text about the jeans.</p>
          <p><button>Add to Cart</button></p>
        </a>
      </div>
      <div class="card2" id="card">
        <a href="productdetail.php">
          <img src="Assets/Homepage/8.jpg" alt="Denim Jeans">
          <h4>Tailored Jeans</h4>
          <p class="price">$19.99</p>
          <p>Some text about the jeans.</p>
          <p><button>Add to Cart</button></p>
        </a>
      </div>
      <div class="card2" id="card">
        <a href="productdetail.php">
          <img src="Assets/Homepage/8.jpg" alt="Denim Jeans">
          <h4>Tailored Jeans</h4>
          <p class="price">$19.99</p>
          <p>Some text about the jeans.</p>
          <p><button>Add to Cart</button></p>
        </a>
      </div>
      <div class="card2" id="card">
        <a href="productdetail.php">
          <img src="Assets/Homepage/8.jpg" alt="Denim Jeans">
          <h4>Tailored Jeans</h4>
          <p class="price">$19.99</p>
          <p>Some text about the jeans.</p>
          <p><button>Add to Cart</button></p>
        </a>
      </div>
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
    responsive: [
      {
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