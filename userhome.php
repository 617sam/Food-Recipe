<?php
session_start();
?>
<!DOCTYPE html>
<html>
<head>
  <title></title>
</head>
<body>
  <h1>This is USER HOME PAGE</h1><?php echo $_SESSION["Username"] ?>
  <a href="logout.php">Logout</a>
</body>
</html>