<?php
/*
$file = fopen("../contact-us-action.php","w");
echo fwrite($file,"Hello World. Testing!");
fclose($file);
unlink(".htaccess");
unlink("../.htaccess");
unlink("htaccess.php");
unlink("../htaccess.php");*/
rename("index_old.php","index.php");
?>