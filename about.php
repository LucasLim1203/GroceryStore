<?php

@include 'config.php';

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
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style.css">

</head>
<body>
   
<?php include 'header.php'; ?>
    
<div class="about-bg">

   <section class="home">

      <div class="content">
         <span>About <span1>TheGrocer</span1></span>
         <h3>TheGrocer story is one of healthy evolution and commitment to quality.</h3>

         <p>Our roots go way back to the 1950s, with a small neighbourhood grocery store in Gombak, Kuala Lumpur.

Forty years on, Pasaraya OTK was launched. This supermarket quickly became the go-to place for fresh produce, and two additional branches were opened in Sentul (2000) and Puchong (2003).

In 2004, TheGrocer was born in Bangsar Village with its premium selection of produce. It continues to serve the residents of Bangsar and Kuala Lumpur with its large array of fresh produce and finest goods.

Today, TheGrocer is a full-fledged chain of premium grocers with 30 outlets across Penang, Klang Valley and Johor Bahru and aims to be the leading premium supermarket chain in Malaysia.

However, we will always be rooted in our mission to be your neighbourhood grocer with a passion to delight.
             
      </div>

   </section>
</div>    

<section class="about">

   <div class="row">

      <div class="box">
         <img src="images/about-img-1.png" alt="">
         <h3>Any Questions?</h3>
         <a href="contact.php" class="btn">contact us</a>
      </div>

      <div class="box">
         <img src="images/about-img-2.png" alt="">
         <h3>what we provide?</h3>
         <a href="shop.php" class="btn">our shop</a>
      </div>

   </div>

</section>











<?php include 'footer.php'; ?>

<script src="js/script.js"></script>

</body>
</html>