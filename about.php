<?php

include 'config.php';

session_start();

$user_id = $_SESSION['user_id'];

if(!isset($user_id)){
   header('location:login.php');
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>about</title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style.css">

</head>
<body>
   
<?php include 'header.php'; ?>

<div class="heading">
   <h3>about us</h3>
   <p> <a href="home.php">home</a> / about </p>
</div>

<!-- about section starts  -->

<section class="about">

   <div class="image">
      <img src="https://previews.123rf.com/images/narapornm/narapornm1312/narapornm131200004/24477569-flowers-selling-in-greenhouse.jpg" alt="">
   </div>

   <div class="content">
      <h3>What is Online Plant Nursery Store?</h3>
      <p>Online Plant Nursery Store is A Web-Based Plant Store that gives us various plants for buy!!!</p> 
      <div class="icons-container">
         <div class="icons">
            <i class="fas fa-map"></i>
            <span>Gardening is the act of cultivating and growing plants. In the garden, we grow different plants for different purposes.</span>
         </div>
         <div class="icons">
            <i class="fas fa-hand-holding-usd"></i>
            <span>affordable price</span>
         </div>
         <div class="icons">
            <i class="fas fa-headset"></i>
            <span>24/7 guide service</span>
         </div>
      </div>
   </div>

   <div class="content">
      <h3>Why do we use it?</h3>
      <p>Nursery Owner, Nursery Manager,And plant Customers can Use This Web-Site for Manage Nursery And Buy Or Sell Plants!!!</p> 
      <div class="icons-container">
         <div class="icons">
            <i class="fas fa-map"></i>
            <span>Some plants are grown to increase the beauty of the garden; useful plants such as leafy vegetables, root vegetables, fruits, and herbs are grown for dyes, for consumption, or for cosmetic and medical uses.</span>
         </div>
         <div class="icons">
            <i class="fas fa-hand-holding-usd"></i>
            <span>best quality</span>
         </div>
         <div class="icons">
            <i class="fas fa-headset"></i>
            <span>good service</span>
         </div>
      </div>
   </div>

   <div class="content">
      <h3>What is Contains?</h3>
      <p>Online Plant Nursery Store contains Administration, Nurseries details, Plant details, Production details, Production Activity, Sales Order And Many More Things!!!</p> 
      <div class="icons-container">
         <div class="icons">
            <i class="fas fa-map"></i>
            <span>Some people have gardening as their hobby and they enjoy it. Gardening may involve only growing up of only one type of plant or a variety of plants in mixed plantings. Gardening can be done on a different scale ranging from fruit orchards to long boulevard plantings. </span>
         </div>
         <div class="icons">
            <i class="fas fa-hand-holding-usd"></i>
            <span>affordable price</span>
         </div>
         <div class="icons">
            <i class="fas fa-headset"></i>
            <span>24/7 guide service</span>
         </div>
      </div>
   </div>

</section>

<!-- about section ends -->










<?php include 'footer.php'; ?>

<!-- custom js file link  -->
<script src="js/script.js"></script>

</body>
</html>