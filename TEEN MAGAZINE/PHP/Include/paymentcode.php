<?php
    include_once 'connection.php';

$cardholdername =$_POST['p_CardHolder'];
$cardnumbers =$_POST['p_CardNumber'];
$exprdate =$_POST['p_ExpiryDate'];
$cardcvc =$_POST['p_CVC']
  
$sql =  "INSERT INTO `payment` (`CardHolder`, `CardNumber`, `ExpiryDate`, `CVC`) VALUES ('$cardholdername', '$cardnumbers', '$exprdate', '$cardcvc')";

        

        mysqli_query($conn,$sql);
        
header("Location: ../payment.php?paymentcode.php=success");
?>