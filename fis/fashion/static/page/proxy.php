<?php
$src = $_GET['url'];
if($src){
   $content = file_get_contents($src);
   foreach($http_response_header as $item){
      header($item);
   }
   echo $content;
}