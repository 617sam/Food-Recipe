<?php
$con=new mysqli('localhost','root','','food_recipe');
if($con){
  echo "connection successful";
}else{
  die(mysqli_error($con));
}
?>