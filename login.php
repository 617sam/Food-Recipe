<?php

$host="localhost";
$user="root";
$password="";
$db="food_recipe";

session_start();

$data=mysqli_connect($host,$user,$password,$db);
if($data===false)
{
  die("connection error");
}
if($_SERVER["REQUEST_METHOD"]=="POST")
{
  $username=$_POST["username"];
  $password=$_POST["password"];

  if (($username != '') && ($password != ''))
  {
    $_SESSION["emptyForm"] = false;
    
    $sql="select * from admin_login where Admin_Name='".$username."' AND Admin_password='".$password." ' ";
    $result=mysqli_query($data,$sql);
    $row=mysqli_fetch_array($result);
    
    // echo "<pre>";
    // print_r($row); 
    // echo "</pre>"; 
    // die();
    if (isset($row)){
      $_SESSION['loginIncorrect'] = false;

      if($row["Usertype"]=="user"){
        $_SESSION["Username"]=$row["Username"];
        header("location:userhome.php");
      }
      elseif($row["Usertype"]=="admin"){
        $_SESSION["Username"]=$row["Username"];
        header("location:adminhome.php");
      }
      else
      {
        echo "username or password incorrect";
      }
    }
    else{
      $_SESSION['loginIncorrect'] = true;
    }
  }
  else{
    $_SESSION["emptyForm"] = true;
    header("location:login.php");
  }
}

?>

<!DOCTYPE html>
<html>
  <head>
    <title></title>
  </head>
  <body>
  <center>

    
    <h1>Login Form</h1>

    <?php if ($_SESSION["emptyForm"] == true){ ?>
      <span style="color: red;">Please fill the form correctly</span>
    <?php } if ($_SERVER["REQUEST_METHOD"] != "POST") $_SESSION["emptyForm"] = ''; ?>

    <?php if ($_SESSION["loginIncorrect"] == true){ ?>
      <span style="color: red;">You have entered incorrect credential. Please try again !!!</span>
    <?php } if ($_SERVER["REQUEST_METHOD"] != "POST") $_SESSION["loginIncorrect"] = ''; ?>

    <br><br><br><br>
    <div style="background-color: grey; width: 500px;">

    <form action="#" method="POST">
  <div>
    <label>Username</label>
    <input type="text" name="username">
  </div>
  <br><br>

  <div>
    <label>Password</label>
    <input type="password" name="password">
  </div>

  <br><br>
  <div>
    <input type="submit" value="Login">
</div>
</div>

</form>
<br><br>
  </center>
  </body>
</html>