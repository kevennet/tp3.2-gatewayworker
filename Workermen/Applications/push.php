<?php
/**
 * This file is part of workerman.
 *
 * Licensed under The MIT License
 * For full copyright and license information, please see the MIT-LICENSE.txt
 * Redistributions of files must retain the above copyright notice.
 *
 * @author walkor<walkor@workerman.net>
 * @copyright walkor<walkor@workerman.net>
 * @link http://www.workerman.net/
 * @license http://www.opensource.org/licenses/mit-license.php MIT License
 */

/**
 * 用于检测业务代码死循环或者长时间阻塞等问题
 * 如果发现业务卡死，可以将下面declare打开（去掉//注释），并执行php start.php reload
 * 然后观察一段时间workerman.log看是否有process_timeout异常
 */
//declare(ticks=1);

/**
 * 聊天主逻辑
 * 主要是处理 onMessage onClose 
 */
use \GatewayWorker\Lib\Gateway;
use \GatewayWorker\Lib\Mysqli;
use \GatewayWorker\Lib\ConfMysqli;

class push
{
    static $temp_int=0;
    static $manage_arr=array();
    static $redis;
    public static function onWorkerStart($businessWorker)
    {

		echo '7878';
    }

    /**
     * 链接
     * @DateTime:    [2018-05-26 15:18:05]
     */
    public static function onConnect($client_id)
    {
		echo '7878';
        
        //echo 'connect'.$client_id."===>$time\n";
    }
    /**
     * gatewayworker 协议数据
     * @param  [type] $client_id [description]
     * @param  [type] $data      [description]
     * @return [type]            [description]
     */
    public static function onWebSocketConnect($client_id, $data)
    {   
        // self::$redis= new Redis() or die("Cannot load Redis module.");
        // self::$redis->connect('127.0.0.1',6379);


    }

    public static function onWorkerStop($businessWorker)
    {
       echo "WorkerStop:7878\n";
    }
   /**
    * 有消息时
    * @param int $client_id
    * @param mixed $message
    */
   public static function onMessage($client_id, $message)
   {   

   	    var_dump('7878');
   }
}