<?php
include('include.php');
?>
<html>
  <head>
    <title>phpCAS simple client</title>
  </head>
  <body>
    <h1>Hi <?php echo phpCAS::getUser(); ?>! This is page 3 </h1>
<p>Goto back to <a href="index.php">main</a></p>
    <p><a href="?logout=">Logout</a></p>
  </body>
</html>