<?php
    $redis = new Redis() or die("Cannot load Redis module.");
    $redis->connect('localhost',6379);
    $auth = $redis->auth('redis');//redis改为你的redis密码
    $redis->set('name', 'guaiyouyisi');
    echo $redis->get('a');
?>