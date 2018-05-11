<?php
namespace Home\Controller;
use Think\Controller;
use Think\Restful;
use Text\Text1;
use Text\Text\Text2;
use Vendor\Text\Text3;
class IndexController extends Controller  {

    public function index(){

    	$Text1=new Text1();
    	dump($Text1->text1_index());
    	$Text2=new Text2();
    	dump($Text2->text2_index());
        $Text3=new Text3();
        dump($Text3->text3_index());
        dump(Text3::text4_index());

    }

    public function index1(){
    	$Text1=new Text1();
    	dump($Text1->text1_index());
    }

}