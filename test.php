<?php
require("DBcont.php");
//For add to cart button and push value to the DB.
$Error = [];
$cmessage = "";
if (isset($_GET['addtocart'])) {
    $num = $_GET['num'];
    $id = $_GET['id'];
    $uid = $_GET['uid'];
    $Dprice = $_GET['dprice'];
    $price = $_GET['price'];
    if (!empty($Dprice)) {
        $tprice = $num * $Dprice;
    } else {
        $tprice = $num * $price;
    }
    $Pstatus = $_GET['Pstatus'];
    //sanitizing the errors...
    if (!empty($num) & $num > 0) {
        $num = mysqli_real_escape_string($conn, trim($num));
    } else {
        array_push($Error, "Please select your order quantity greater than zero.<br>");
    }

    if (!empty($Error)) {
        foreach ($Error as $e) {
            $m = $e;
        }
    } else {
        $sql = "INSERT INTO order_item (`productId`,`userId`,`orderQuantity`, `orderTotalpayment`, `paymentStatus`) VALUES (?,?,?,?,?);";
        $stmt = mysqli_prepare($conn, $sql);
        mysqli_stmt_bind_param($stmt, 'sssss', $id, $uid, $num, $tprice, $Pstatus);
        $result = mysqli_stmt_execute($stmt);

        if ($result == 1) {
            $cmessage = "sucessfull!";
        } else {
            $cmessage = "ohh! Error in submitting review. Please try again.";
        }

        header("Location:Cart.php");
    }
}

?>
<form action="test.php" method="GET">
    <?php
    if (!empty($cmessage)) {
        echo $cmessage;
    }
    if (!empty($m)) {
        echo $m;
    }
    ?>
    <input type="text" name="num" value="">
    <input type="hidden" name="id" value="1">
    <input type="hidden" name="uid" value="2">
    <input type="hidden" name="dprice" value="3">
    <input type="hidden" name="price" value="4">
    <input type="hidden" name="Pstatus" value="0">
    <button type="submit" class="login_submit" name="addtocart" style="width:150px;">Add to Cart</button>
</form>