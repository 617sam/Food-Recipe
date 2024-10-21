<?php

@include 'connect.php';


?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>quick view</title>
   <script src="https://kit.fontawesome.com/72f30a4d56.js" crossorigin="anonymous"></script>
    <link rel="icon" href="favIcon.png" type="image/png">
    <link rel="stylesheet" href="css/stal2.css">
    <style>
        
        .error-container {
         /* text-align: center; */
         /* margin: 10px 0; */
         }

      .error-container.success {
         background-color: lightgreen;
          }

      .error-container.failed {
         background-color: lightcoral;
         }
    
    </style>
</head>
<body>
   

<section class="quick-view">

    <h1 class="title">Recipe details</h1>
    <?php
                  if(isset($_GET['error'])): ?>
                    <?php
                    $errorMessage = $_GET['error'];
                    $errorClass = ($errorMessage === 'Product added to cart') ? 'success' : 'failed';
                    ?>
                    <div class="error-container <?php echo $errorClass; ?>">
                       <!-- <p class="formerror"><?php echo $errorMessage; ?></p> -->
                    </div>
                    <?php endif; ?>
    <?php  
        if(isset($_GET['pid'])){
            $pid = $_GET['pid'];
            $select_products = mysqli_query($con, "SELECT * FROM `recipess` WHERE id = '$pid'") or die('query failed');
         if(mysqli_num_rows($select_products) > 0){
            while($fetch_products = mysqli_fetch_assoc($select_products)){
    ?>
    <form action="" method="POST">
         <div class="name"><label class="label">Name: </label><?php echo $fetch_products['name']; ?></div>
         <div class="preparationTime"><label class="label">Preparation Time: </label><?php echo $fetch_products['preparationTime']; ?></div>
         <div class="cookingTime"><label class="label">Cooking Time: </label><?php echo $fetch_products['cookingTime']; ?></div>
         <div class="serve"><label class="label">Serve : </label><?php echo $fetch_products['serve']; ?></div>
         <div class="ingredients"><label class="label">Ingredients: </label><?php echo $fetch_products['ingredients']; ?></div>
        <div class="details"><label class="label">Description: </label><?php echo $fetch_products['description']; ?></div>
        <!-- <input type="number" name="product_quantity" value="1" min="0" class="qty"><br/> -->
         
         <!-- <input type="submit" value="add to cart" name="add_to_cart" class="btn"> -->

        

      </form>
            <?php
            }}}?>

    <!-- <div class="option-btn">
        <a href="product.php" class="option-btn">Back</a>
    </div> -->
    <div class="option-btn">
   <a href="javascript:history.back();" class="option-btn">Back</a>
</div>

</section>






<?php @include 'footer.html'; ?>


</body>
</html>