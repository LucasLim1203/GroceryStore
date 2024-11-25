<?php

if(isset($message)){
   foreach($message as $message){
      echo '
      <div class="message">
         <span>'.$message.'</span>
         <i class="fas fa-times" onclick="this.parentElement.remove();"></i>
      </div>
      ';
   }
}

?>

<header class="header">

   <div class="flex">

      <a href="admin_page.php" class="logo">Seller<span1>Dashboard</span1></a>

      <nav class="navbar">
         
          <a href="seller_sales.php"><i class="fas fa-chart-bar"></i> SALES</a>
         <a href="seller_products.php"><i class="fa fa-shopping-basket"></i> PRODUCTS</a>
         <a href="seller_orders.php"><i class="fas fa-paperclip"></i> INVOICES</a>
         
      </nav>

      <div class="icons">
         <div id="menu-btn" class="fas fa-bars"></div>
         <div id="user-btn" class="fas fa-user-circle"></div>
      </div>

      <div class="profile">
         <?php
            $select_profile = $conn->prepare("SELECT * FROM users WHERE id = ?");
            $select_profile->execute([$seller_id]);
            $fetch_profile = $select_profile->fetch(PDO::FETCH_ASSOC);
         ?>

         <p><?= $fetch_profile['name']; ?></p>
         <a href="seller_update_profile.php" class="btn">update profile</a>
         <a href="logout.php" class="delete-btn">logout</a>
         <?php

if(!isset($seller_id)){?>
   <div class="flex-btn">
            <a href="login.php" class="option-btn">login</a>
            <a href="register.php" class="option-btn">register</a>
         </div>
      </div>
<?php }?>
         

   </div>

</header>

<script>
let logoutTimer;

function startLogoutTimer() {
  // Define the inactivity timeout duration in milliseconds (e.g., 30 minutes)
  const inactivityTimeout = 15 * 60 * 1000; // 15 minutes

  // Reset the timer whenever there's activity on the page
  function resetTimer() {
    clearTimeout(logoutTimer);
    logoutTimer = setTimeout(logoutUser, inactivityTimeout);
  }

  // Function to logout the user
  function logoutUser() {
    // Perform logout actions (redirect to logout page)
    window.location.href = 'logout.php';
  }

  // Reset the timer on user activity events (e.g., mousemove, keypress, etc.)
  document.addEventListener('mousemove', resetTimer);
  document.addEventListener('keypress', resetTimer);

  // Start the initial timer
  resetTimer();
}

// Start the logout timer when the page loads
startLogoutTimer();
</script>