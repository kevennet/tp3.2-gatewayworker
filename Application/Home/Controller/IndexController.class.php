<?php
namespace Home\Controller;
use Think\Controller;
use Think\Restful;
use Text\Text1;
use Text\Text\Text2;
use Vendor\Text\Text3;
use GatewayClient\Gateway;

class IndexController extends Controller  {

    public function index(){
        dump($_GET);

        $rule=array(
            array('msg','','字段1不能重复',0,'unique'),
            array('time','','字段2不能重复',0,'unique'),

        );
        $table=M('workermen');
        $res=$table->validate($rule)->create($_GET);
        dump($table->getError());
        dump($res);


    }

    public function index1(){
            dump(S('cache'));
    }

    public function index3(){

        echo Gateway::getAllClientCount();
        $msg='{"type":"say","from_client_id":"7f00000108fc00000007","from_client_name":"asdasd","to_client_id":"7f00000108fc00000006","content":"<b>\u5bf9\u4f60\u8bf4: <\/b>e12e12e","time":"2018-05-26 10:57:32"}';
        Gateway::sendToAll($msg);
    }

}