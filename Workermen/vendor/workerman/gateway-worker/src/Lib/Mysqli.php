<?php
namespace GatewayWorker\Lib;
class Mysqli extends ConfMysqli {
private $host = '127.0.0.1';
//服务器地址
private $name = 'root';
//登录账号
private $pwd = '';
//登录密码
private $dBase = '';
//数据库名称
private $conn = '';
//数据库链接资源
private $result = '';
//结果集
private $msg = '';
//返回操作结果
private $fields;
//返回字段
private $fieldsNum = 0;
//返回字段数
private $rowsNum = 0;
//返回结果数
private $rowsRst = '';
//返回单条记录的字段数组
private $fieldssArray = array();
//返回字段数组
private $rowsArray = array();
//返回结果数组
//初始化类
public function __construct(){
	$config=$this->conf();
	if($config['host'] != '')
		$this->host = $config['host'];
	if($config['name'] != '')
		$this->name = $config['name'];
	if($config['pwd'] != '')
		$this->pwd = $config['pwd'];
	if($config['dBase'] != '')
		$this->dBase = $config['dBase'];
		$this->init_conn();
}
//链接数据库
public function init_conn(){
	$this->conn=mysqli_connect($this->host,$this->name,$this->pwd);
	mysqli_select_db($this->conn,$this->dBase);
}
//查询结果
public function mysqli_query_rst($sql){
	if($sql=='')die("SQL can not be null!STOP RUNNING");
	if($this->conn == ''){
		$this->init_conn();
	}
	$this->result = mysqli_query($this->conn,$sql);
}
//取得字段数 
public function get_Fields_Num($sql){
	$this->mysqli_query_rst($sql);
if(mysqli_errno($this->conn)==0){
	$this->fieldsNum = mysqli_num_fields($this->result);
	return $this->fieldsNum;
}else
	return mysqli_error($this->conn);
}
//取得查询结果数
public function get_Rows_Num($sql){
$this->mysqli_query_rst($sql);
if(mysqli_errno($this->conn) == 0){
	return mysqli_num_rows($this->result);
}else{
	return '';
} 
}
//取得记录数组
public function get_Rows_Array($sql){
	$this->mysqli_query_rst($sql);
	if(mysqli_errno($this->conn) == 0){
		while($row = mysqli_fetch_array($this->result)) {
			$this->rowsArray[] = $row;
		}
		return $this->rowsArray;
	}else{
		return '';
	}
}
//更新、删除、添加记录数
public function uidRst($sql){
if($this->conn == ''){
	$this->init_conn();
}
	mysqli_query($this->conn,$sql);
	$this->rowsNum = mysqli_affected_rows($this->conn);
if(mysqli_errno($this->conn) == 0){
	return $this->rowsNum;
}else{
	return '';
}
}
//获取对应的字段值
public function getFields($sql,$fields){
	$this->mysqli_query_rst($sql);
	if(mysqli_errno($this->conn) == 0){
		if(mysqli_num_rows($this->result) > 0){
			$tmpfld = mysqli_fetch_row($this->result);
			$this->fields = $tmpfld[$fields];

		}
		return $this->fields;
	}else{
		return '';
	}
}

//错误信息，若数据库操作成功则返回true,失败则返回错误信息
public function msg_error(){
	if(mysqli_errno($this->conn) != 0) {
		$this->msg = mysqli_error($this->conn);
	return $this->msg;
	}
	return true;
}
//释放结果集
public function close_rst(){
	if(mysqli_errno($this->conn) == 0)mysqli_free_result($this->result);
	$this->msg = '';
	$this->fieldsNum = 0;
	$this->rowsNum = 0;
	$this->filesArray = '';
	$this->rowsArray = '';
}
//关闭数据库
public function close_conn(){
	$this->close_rst();
	mysqli_close($this->conn);
	$this->conn = '';
}
/*
*扩展函数
*arrayToInsertSql($array,$table_name)

*$aray:为$row=>$fields=>$value二维数组，$row>1,将该二维数组转化成sql语句，执行该sql语句即可将该数组插入到数据库中

*/
public function arrayToInsertSql($array,$table_name){
		$sql = '';
		if(is_array($array)){
			$keys = array_keys($array);
			$sql = "INSERT INTO `".$table_name."` (";
			foreach($keys as $v){
				$sql.= "`".$v."`,";
			}
			$sql = substr($sql,0,strlen($sql)-1);
			$sql .=") VALUES (";
			foreach($array as $k => $row){
				$sql .= "'".$row."'".",";
			}

			
			$sql = substr($sql,0,strlen($sql)-1);
			$sql.=")";
		}

		$file=fopen('chat_data/'.date('Y-m-d').".txt", "a");
		fwrite($file, $sql);
		fclose($file);
		$this->uidRst($sql);
	}
}
?>