<?php
namespace Home\Controller;
use Think\Controller;
use Think\Restful;
use Text\Text1;
use Text\Text\Text2;
use Vendor\Text\Text3;
use GatewayClient\Gateway;

class IndexController extends Controller  {
    static $t_int=1;
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
        // $int=1;
        // dump(Gateway::getClientIdByUid($int));
        // $client_id=Gateway::getClientIdByUid($int);
        // $group=7;
        // dump(Gateway::joinGroup($client_id[0], $group));
        //dump(Gateway::leaveGroup($client_id[0], $group));
        // dump(Gateway::isUidOnline(1));
        // dump(Gateway::getClientIdCountByGroup(8));
        // dump(Gateway::isOnline($client_id['0']));
         dump(Gateway::getAllClientSessions());
        // dump(Gateway::getClientSessionsByGroup(8));
        //dump(Gateway::closeClient($client_id[0]));
        //dump(Gateway::getAllGroupClientIdList());
        //dump(Gateway::getAllGroupUidList());
        //dump(Gateway::getUidListByGroup(8));
        //dump(Gateway::getAllGroupUidCount());
        //dump(Gateway::getAllGroupIdList());
        //dump(Gateway::getUidByClientId($client_id['0']));
        //dump(Gateway::getAllUidList());
        //dump(Gateway::getAllClientIdList());
        //dump(Gateway::getAllClientIdList());
        //dump(Gateway::getClientIdListByGroup(8));

    }
    public function index4(){
        dump(Gateway::getAllClientSessions());
        dump(Gateway::getClientSessionsByGroup(8));
        dump(Gateway::getClientSessionsByGroup(7));
    }

}