<?php
// +----------------------------------------------------------------------
// | RXThinkCMF框架 [ RXThinkCMF ]
// +----------------------------------------------------------------------
// | 版权所有 2017~2020 南京RXThinkCMF研发中心
// +----------------------------------------------------------------------
// | 官方网站: http://www.rxthink.cn
// +----------------------------------------------------------------------
// | Author: 牧羊人 <1175401194@qq.com>
// +----------------------------------------------------------------------

namespace app\admin\controller;


use app\admin\service\CityService;
use app\common\controller\Backend;
use think\facade\View;
use think\facade\Db;

/**
 * 城市-控制器
 * @author 牧羊人
 * @since 2020/7/3
 * Class City
 * @package app\admin\controller
 */
class City extends Backend
{
    /**
     * 初始化
     * @author 牧羊人
     * @since 2020/7/3
     */
    public function initialize()
    {
        parent::initialize(); // TODO: Change the autogenerated stub
        $this->model = new \app\admin\model\City();
        $this->service = new CityService();
    }

//    public function curl($fields = ""){
//        header("Content-type:text/html;Charset=utf8");
//        $ch =curl_init();
//        curl_setopt($ch,CURLOPT_URL,'http://manage.pro6.rxthink.cn/city/index');
//        curl_setopt($ch, CURLOPT_HEADER, 0);
//        $header = array(
//            'X-Requested-With: XMLHttpRequest',
//            'Accept: application/json, text/javascript, */*; q=0.01'
//        );
//        curl_setopt($ch, CURLOPT_HTTPHEADER, $header);
//        curl_setopt($ch,CURLOPT_POST,true);
//        curl_setopt($ch,CURLOPT_POSTFIELDS, $fields);
//        curl_setopt($ch,CURLOPT_USERAGENT, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36');
//
//        curl_setopt($ch,CURLOPT_FOLLOWLOCATION, true);
//        curl_setopt($ch,CURLOPT_RETURNTRANSFER,true);
//        curl_setopt($ch,CURLOPT_COOKIE,'PHPSESSID=730a2eef477e6428f885548e51db9466; Hm_lvt_2a734458795436850f4bc75376772c9e=1626502223,1626502272; Hm_lpvt_2a734458795436850f4bc75376772c9e=1626502272; Hm_lvt_b7565837ef30379de9ee861190489c1b=1626503245; Hm_lpvt_b7565837ef30379de9ee861190489c1b=1626515805');
//
//        $content = curl_exec($ch);
//        $content =  json_decode($content,1);
//        return $content;
//    }
//
//    public function test(){
//        $data = $this->curl();
//        foreach($data['data'] as $data){
//            Db::table('think_city')->insert(array('id'=>$data['id'],'pid'=>$data['pid'],'level'=>$data['level'],'name'=>$data['name'],'citycode'=>$data['citycode']));
//            $data2 = $this->curl('pid='.$data['id']);
//            foreach($data2['data'] as $data22) {
//                Db::table('think_city')->insert(array('id' => $data22['id'], 'pid' => $data22['pid'], 'level' => $data22['level'], 'name' => $data22['name'], 'citycode' => $data22['citycode']));
//                $data3 = $this->curl('pid='.$data22['id']);
//                foreach($data3['data'] as $data33) {
//                    Db::table('think_city')->insert(array('id' => $data33['id'], 'pid' => $data33['pid'], 'level' => $data33['level'], 'name' => $data33['name'], 'citycode' => $data33['citycode']));
//                }
//            }
//        }
//    }

    /**
     * 添加或编辑
     * @return mixed
     * @since 2020/7/3
     * @author 牧羊人
     */
    public function edit()
    {
        // 城市级别
        View::assign("levelList", config("admin.city_level"));
        return parent::edit(); // TODO: Change the autogenerated stub
    }

    /**
     * 获取子级城市
     * @return array
     * @since 2020/7/3
     * @author 牧羊人
     */
    public function getChilds()
    {
        if (IS_POST) {
            $id = input("post.id", 0);
            $list = $this->model->getChilds($id);
            return message('操作成功', true, $list);
        }
    }
}