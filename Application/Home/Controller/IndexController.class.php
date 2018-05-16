<?php
namespace Home\Controller;
use Think\Controller;
use Think\Restful;
use Text\Text1;
use Text\Text\Text2;
use Vendor\Text\Text3;
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

}