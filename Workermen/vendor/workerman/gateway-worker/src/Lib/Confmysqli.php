<?php
namespace GatewayWorker\Lib;
class ConfMysqli{

	/**
	 * 数据库链接嫖配置
     *          $conf =array(
     *           'host'=>$conf['host'],
     *           'name'=>$conf['name'],
     *           'pwd'=>$conf['pwd'],
     *           'dBase'=>$conf['dBase'],
     *           'conn'=>$conf['conn'],
     *           'result'=>$conf['result'],
     *           );
	 * @param string $conf [description]
	 */
    public function conf($conf=array()){
    	if(empty($conf)){
    		$conf =array(
    				'host'=>'127.0.0.1',
    				'name'=>'root',
    				'pwd'=>'',
    				'dBase'=>'test',
    				'conn'=>'',
    				'result'=>'',
    				);
    	}
    	/*************************************************/
        $result=mysqli_connect($conf['host'],$conf['name'],$conf['pwd'],$conf['dBase']);
        if(!$result){
            die("connect error: " . mysqli_connect_error());
        }
        else{
            return $conf;
        }
    	/*************************************************/
    	
    }

}