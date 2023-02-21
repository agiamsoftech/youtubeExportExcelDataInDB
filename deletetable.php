<?php 
error_reporting(0);
$connection = mysqli_connect('localhost', 'root', '', 'youtube');

$d1 = mysqli_query($connection,"DROP TABLE student, user");
if($d1){
    echo "deleted".$d1;
}
else{
    echo "Not delete";
}
?>