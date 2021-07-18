<?php
error_reporting(E_ALL);
ini_set("Display_errors","On");
header("Content-type:text/html;Charset=utf8");
$ch =curl_init();
curl_setopt($ch,CURLOPT_URL,'http://manage.pro6.rxthink.cn/city/index');
$fields = "pid=1";
curl_setopt($ch, CURLOPT_HEADER, 0);
$header = array(
    'X-Requested-With: XMLHttpRequest',
    'Accept: application/json, text/javascript, */*; q=0.01'
);
curl_setopt($ch, CURLOPT_HTTPHEADER, $header);
curl_setopt($ch,CURLOPT_POST,true);
curl_setopt($ch,CURLOPT_POSTFIELDS, $fields);
curl_setopt($ch,CURLOPT_USERAGENT, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36');

curl_setopt($ch,CURLOPT_FOLLOWLOCATION, true);
curl_setopt($ch,CURLOPT_RETURNTRANSFER,true);
curl_setopt($ch,CURLOPT_COOKIE,'PHPSESSID=730a2eef477e6428f885548e51db9466; Hm_lvt_2a734458795436850f4bc75376772c9e=1626502223,1626502272; Hm_lpvt_2a734458795436850f4bc75376772c9e=1626502272; Hm_lvt_b7565837ef30379de9ee861190489c1b=1626503245; Hm_lpvt_b7565837ef30379de9ee861190489c1b=1626513117');

$content = curl_exec($ch);
print_r($content);
exit;
