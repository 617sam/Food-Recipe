<?php @include 'connect.php'
?><html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        *{
            margin: 0PX;
            padding: 0px;
            box-sizing:border-box;
            font-family: sans-serif;
        }
        section{
            width: 100%;
            height: 100vh;
        }
        section .navbar{
            font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
            padding-right:15px;
            padding-left:15px;
            position: fixed;
            right: 0;
            left:0;
            background: white;
            box-shadow: 0 0 10px rgb(0,0,0,0.5);
            z-index:4;

        }
        .navdiv{
            display:flex;
            align-items:center;
            justify-content:space-between;
        }
        li{
            color:black;
            font-size:20px;
            font-weight:bold;
            margin-right:25px;
            display:inline-block;
        }
        a{
            text-decoration: none;
            color:black;
            padding:10px 20px;
            position:relative;
            
        }
        a:before{
            content:'';
            position:absolute;
            top:0;
            left:0;
            width:0%;
            height:100%;
            border-bottom: 2px solid gold;
            transition: 0.4% linear;
        }
        a:hover:before{
            width:90%;
        }
        a li:hover > a{
            color: orange;
        }
        .heading{
            text-align: center;
            font-size:4 rem;
            color: goldenrod;
            padding: 1rem;
            margin: 2rem 0;
            background: black;
        }
        .about .row{
            display:flex;
            align-items: center;
            gap:2 rem;
            flex-wrap: wrap;
            padding: 2rem 0;
            padding-bottom: 3rem;
        }
        .about .row .video-container{
            /* flex:1 1 40rem; */
            position: relative;
            height:100vh;
            width:100vh;
        }
        .about .row .video-container video{
            width:100%;
            border:1.5 rem solid #fff;
            border-radius: .5rem;
            box-shadow: 0.5rem 1rem rgda(0,0,0,.1);
            height: 80%;
            object-fit:cover;
            z-index:3;
        }
        .about .row .content{
            flex:1 1 40rem;
            /* width:90%; */
            /* border:1.5 rem solid #000000; */


        }
        .about .row .content h4{
            font-size: 2rem;
            color: #333;
            text-align:center;
            
        }
        .about .row .content p{
            font-size: 1rem;
            color: #999;
            padding: .5rem 0;
            padding-top: 1rem;
            text-align: center;
        }
        .about .row .content h5{
            font-size: 2rem;
            color: #333;
            text-align:center;
            
        }
        section .img{
            width:100vw;
            height: 100vh;
            background-image: url("back.jpg");
            background-size: cover;
            position: flex;
        }
        section .overlay{
            width: 100%;
            height: 100%;
            font-size: 26px;
            color: white;
            display:flex;
            justify-content: center;
            flex-direction: column;
            align-items: center;
            background-color: rgba(0,0,0,0.5);
        }
        
        
    </style>
</head>
<body>
    <!-- nav-->
    <section id="Home">
    <div class="navbar">
        <!-- <div class="navdiv"> -->
            
        <!-- <img src="Capture.PNG" class="imgmain"> -->
        <!-- <ul>

            <li><a href="recipe.php">Paratha</a></li>
            <li><a href="recipe.php">Allu Bhuteko</a></li> 
            <li><a href="recipe.php">Bhat</a></li>
            <li><a href="recipe.php">Dahi</a></li>
          
        </ul> -->
    </div>
        <?php
        $select_products = mysqli_query($con, "SELECT * FROM `recipess`") or die('query failed');
         if(mysqli_num_rows($select_products) > 0){
            while($fetch_products = mysqli_fetch_assoc($select_products)){
        ?>
      <form action="" method="POST" class="box" >
          <div class="Name"><?php echo $fetch_products['name']; ?>/-</div>
          <!-- <div class="Description"><?php echo $fetch_products['description']; ?></div> -->
          <!-- <div class="type"><?php echo $fetch_products['type']; ?></div> -->
          <a href="Recipe.php?pid=<?php echo $fetch_products['id']; ?>" class="view">view</a>
          
        </div>
        <?php
        }

            }
        
            ?>
   
    </section>
       
</body>
</html>