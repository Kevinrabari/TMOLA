<?php
require("DBcont.php");
$id = $_GET['id'];
$message = "";
$Error = [];

if (isset($_POST['Back'])) {
  header("Location:Admin_panel.php");
}


if (isset($_POST['submit'])) {
  $id = $_POST['pid'];
  $pname = $_POST['pname'];
  $cat = $_POST['cat'];
  $pmodel = $_POST['pmodel'];
  $price = $_POST['price'];
  $dprice = $_POST['dprice'];
  $sdes = $_POST['sdes'];
  $des = $_POST['des'];
  $overview = $_POST['overview'];
  $feature = $_POST['feature'];
  $addinfo = $_POST['addinfo'];
  $warranty = $_POST['warranty'];
  $feature = $_POST['feature'];
  $addinfo = $_POST['addinfo'];
  if (isset($_POST['adv'])) {
    // Checkbox was checked
    $Adv = $_POST['Adv'];
  } else {
    // Checkbox was not checked, set $Adv to null or some other default value
    $Adv = null;
  }
  if (isset($_POST['main'])) {
    // Checkbox was checked
    $Main = $_POST['main'];
  } else {
    // Checkbox was not checked, set $Adv to null or some other default value
    $Main = null;
  }

  if (!empty($pname)) {
    if (preg_match('/^[a-zA-Z\s]+$/', $pname)) {
      $pname = mysqli_real_escape_string($conn, trim($pname));
    } else {
      array_push($Error, "Please enter vaild name.<br>");
    }
  } else {
    array_push($Error, 'Please enter the product name!<br>');
  }
  if (!empty($cat)) {
    if (preg_match('/^[0-9]+$/', $cat)) {
      $cat = mysqli_real_escape_string($conn, trim($cat));
    } else {
      array_push($Error, "Please enter vaild category.<br>");
    }
  } else {
    array_push($Error, 'Please enter the category!<br>');
  }

  if (!empty($pmodel)) {
    if (preg_match('/^[\w\s]+/', $pmodel)) {
      $pmodel = mysqli_real_escape_string($conn, trim($pmodel));
    } else {
      array_push($Error, "Please enter vaild Model.<br>");
    }
  } else {
    array_push($Error, 'Please enter the Model!');
  }
  if (!empty($price)) {
    if (preg_match('/^[0-9]+/', $price)) {
      $price = mysqli_real_escape_string($conn, trim($price));
    } else {
      array_push($Error, "Please enter vaild price.<br>");
    }
  } else {
    array_push($Error, 'Please enter the price!');
  }
  if (!empty($dprice)) {
    if (preg_match('/^[0-9]+/', $dprice)) {
      $dprice = mysqli_real_escape_string($conn, trim($dprice));
    } else {
      array_push($Error, "Please enter vaild price.<br>");
    }
  } else {
    echo 'Please enter the price!';
  }
  if (!empty($sdes)) {
    $sdes = mysqli_real_escape_string($conn, trim($sdes));
  } else {
    array_push($Error, "Please enter vaild text.<br>");
  }
  if (!empty($des)) {
    $des = mysqli_real_escape_string($conn, trim($des));
  } else {
    array_push($Error, "Please enter vaild text.<br>");
  }
  if (!empty($feature)) {
    $feature = mysqli_real_escape_string($conn, trim($feature));
  } else {
    array_push($Error, "Please enter vaild text.<br>");
  }
  if (!empty($addinfo)) {
    $addinfo = mysqli_real_escape_string($conn, trim($addinfo));
  } else {
    array_push($Error, "Please enter vaild text.<br>");
  }


  //for uploading an image...


  $target_dir = "Assets/Homepage/";
  if (isset($_FILES['FrontView'])) {
    $target_file1 = $target_dir . basename($_FILES["FrontView"]["name"]);
  } else {
    $target_file1 = null;
  }
  if (isset($_FILES['SideView'])) {
    $target_file2 = $target_dir . basename($_FILES["SideView"]["name"]);
  } else {
    $target_file2 = null;
  }
  if (isset($_FILES['TopView'])) {
    $target_file3 = $target_dir . basename($_FILES["TopView"]["name"]);
  } else {
    $target_file3 = null;
  }
  $imageFileType1 = strtolower(pathinfo($target_file1, PATHINFO_EXTENSION));
  $imageFileType2 = strtolower(pathinfo($target_file2, PATHINFO_EXTENSION));
  $imageFileType3 = strtolower(pathinfo($target_file3, PATHINFO_EXTENSION));

  // if($imageFileType1 != "jpg" && $imageFileType1 != "png" && $imageFileType1 != "jpeg" && $imageFileType1 != "gif" || $imageFileType2 != "jpg" && $imageFileType2 != "png" && $imageFileType2 != "jpeg" && $imageFileType2 != "gif" || $imageFileType3 != "jpg" && $imageFileType3 != "png" && $imageFileType3 != "jpeg" && $imageFileType3 != "gif" ) {
  //   array_push($Error,"Sorry, only JPG, JPEG, PNG & GIF files are allowed.<br>");
  // } 

  //updateing the table if there is no error
  if (!empty($Error)) {
    foreach ($Error as $error) {
      // echo "<script>alert('ohh! Error in signup. Please try again.');<script>";
      $message = $error;
      $rsql = "SELECT * FROM product_master where productid = '$id';";
      //fatch the single row 
      $result = mysqli_query($conn, $rsql);
      $userinfo = mysqli_fetch_assoc($result);
    }
  } else {
    $usql = "UPDATE `product_master` set `productName`='$pname', `CategoryId`='$cat', `productModel`='$pmodel', `productPrice`='$price', `discountPrice`='$dprice', `productShortDes`='$sdes', `productDescription`='$des', `productOverview`='$overview', `productFeatures`='$feature', `productAdditionalInfo`='$addinfo', `productWarranty`='$warranty',  `Adv`='$Adv', `Main`='$Main',`ProductImages1`='$target_file1', `ProductImages2`='$target_file2', `ProductImages3`='$target_file3' where `productId`=$id ;";
    // if (mysqli_query($conn, $usql)) {
    //   echo 'Record updated';
    // } else {
    //   echo "Error in updating database: " . mysqli_error($conn);
    // }
    //save to DB 
    if (mysqli_query($conn, $usql)) {
      $message = 'Record updated';
      $rsql = "SELECT * FROM product_master where productid = '$id';";
      //fatch the single row 
      $result = mysqli_query($conn, $rsql);
      $userinfo = mysqli_fetch_assoc($result);
      $old_info = $userinfo;
    } else {
      $message = "Error in updating database" . mysqli_error($conn);
      $rsql = "SELECT * FROM product_master where productid = '$id';";
      //fatch the single row 
      $result = mysqli_query($conn, $rsql);
      $userinfo = mysqli_fetch_assoc($result);
    }
  }
} else {

  //query
  $rsql = "SELECT * FROM product_master where productId = '$id';";
  //fatch the single row 
  $result = mysqli_query($conn, $rsql);
  $userinfo = mysqli_fetch_assoc($result);
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>TMOLA- Update product information</title>
  <link href="Admin.css" rel="stylesheet">
  <link rel="icon" type="image/x-icon" href="Assets/Favicon.png">
</head>

<body>
  <div class="login">
    <form action="product_update.php?id=<?php echo $id; ?>" style="border:1px solid #ccc" class="login_form" method="POST" enctype="multipart/form-data">
      <div class="container_SI">
        <span style="color=red;"> <?php echo $message; ?> </span>
        <p>Update your product</p>

        <hr>
        <input type="hidden" name="pid" value="<?php echo $id; ?>">
        <label for="pname"><b>Product Name</b></label>
        <input type="text" placeholder="Enter product name" name="pname" value="<?php echo $userinfo['productName']; ?>">

        <label for="cat"><b>Category Id</b></label>
        <input type="text" placeholder="Enter category Id" name="cat" value="<?php echo $userinfo['categoryId']; ?>">

        <label for="pmodel"><b>Product Model</b></label>
        <input type="text" placeholder="Enter product model" name="pmodel" value="<?php echo $userinfo['productModel']; ?>">

        <label for="price"><b>Price</b></label>
        <input type="text" placeholder="Enter price" name="price" value="<?php echo $userinfo['productPrice']; ?>">

        <label for="dprice"><b>Discounted Price</b></label>
        <input type="text" placeholder="Enter discounted price" name="dprice" value="<?php echo $userinfo['discountPrice']; ?>">

        <label for="sdes"><b>Short Description</b></label><br>
        <textarea placeholder="Enter short description" name="sdes" value="" rows="4" cols="59"><?php echo $userinfo['productShortDes']; ?></textarea><br><br>

        <label for="des"><b>Description</b></label><br>
        <textarea placeholder="Enter description" name="des" value="" rows="8" cols="59"><?php echo $userinfo['productDescription']; ?></textarea><br><br>

        <label for="overview"><b>Overview</b></label><br>
        <textarea placeholder="Enter overview" name="overview" value="" rows="4" cols="59"><?php echo $userinfo['productOverview']; ?></textarea><br><br>

        <label for="feature"><b>Features</b></label><br>
        <textarea placeholder="Enter Features" name="feature" value="" rows="4" cols="59"><?php echo $userinfo['productFeatures']; ?></textarea><br><br>

        <label for="addinfo"><b>Aditional Info</b></label><br>
        <textarea placeholder="Enter additional inforamtion" name="addinfo" value="" rows="4" cols="59"><?php echo $userinfo['productAdditionalInfo']; ?></textarea><br><br>

        <label for="warranty"><b>Warranty</b></label><br>
        <textarea placeholder="Enter Warranty" name="warranty" value="" rows="4" cols="59"><?php echo $userinfo['productWarranty']; ?></textarea><br><br>

        <label for="FrontView"><b>Front view</b></label><br>
        <input type="file" name="FrontView" id="fileToUpload"><br><br>

        <label for="SideView"><b>Front view</b></label><br>
        <input type="file" name="SideView" id="fileToUpload1"><br><br>

        <label for="TopView"><b>Front view</b></label><br>
        <input type="file" name="TopView" id="fileToUpload2"><br><br>

        <input type="checkbox" id="adv" name="adv" value="Yes">
        <label for="adv"> Mark product for Advertisement on home screen</label> <br>

        <input type="checkbox" id="main" name="main" value="Yes">
        <label for="main"> Mark product as Main card on "All product" page.</label><br>

        <div class="clearfix">
          <button type="submit" class="login_submit" name="submit">Update Product Information</button>
          <button type="submit" class="cancelbtn" name="Back">Back</button>
        </div>
      </div>
    </form>
  </div>
</body>
<footer></footer>

</html>