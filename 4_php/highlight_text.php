<?php
$targetSearch = $_POST['targetSearch'];
$mainText = $_POST['mainText'];
preg_match_all('~"(.*?)(?:"|$)|([^"]+)~',$targetSearch,$m,PREG_SET_ORDER);
foreach ($m as $k=>$v){
  foreach ($v as $k2=>$v2){
    if ($k2==0) {
      continue;
    }
    if (!empty($v2)) {
      $m2[$k][] = trim($m[$k][$k2]);
    }
  }
}
foreach ($m2 as $key => $value) {
  foreach ($value as $key2 => $value2) {
    $mainText = preg_replace( "#(". $value2 .")#i" , "<span style='color:#ff0000; font-weight:bold;'>\\1</span>" , $mainText );
  }
}
echo ($mainText);