<?php
include('simple_html_dom.php');
// $html = file_get_html('https://www.bigbasket.com/');
// echo $html->find('title',0)->plaintext;

//$html = file_get_html('https://en.wikipedia.org/wiki/PHP');
//echo $html->find('table.infobox',0)->innertext;

$html = file_get_html('https://www.bigbasket.com/');
//echo $html->find('table.infobox',0)->innertext;
echo $html->find('div',0)->plaintext;
?>