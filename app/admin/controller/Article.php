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


use app\admin\service\ArticleService;
use app\common\controller\Backend;
use \think\facade\View;

/**
 * 文章管理-控制器
 * @author 牧羊人
 * @since 2020/7/4
 * Class Article
 * @package app\admin\controller
 */
class Article extends Backend
{
    /**
     * 初始化
     * @author 牧羊人
     * @since 2020/7/4
     */
    public function initialize()
    {
        parent::initialize(); // TODO: Change the autogenerated stub

        $this->getCateList();

        $this->model = new \app\admin\model\Article();
        $this->service = new ArticleService();



    }

    /**
     * 根据站点ID获取栏目列表
     * @return array
     * @since 2020/7/2
     * @author 牧羊人
     */
    public function getCateList()
    {
        // 站点ID
        $itemId = request()->param("item_id", 0);
        $model = new \app\admin\model\ItemCate();
        $result = $model->getList([], "sort asc");
        print_r($result);exit;
        $cateList = [];
        if (is_array($result)) {
            foreach ($result as $val) {
                $cateList[] = [
                    'id' => $val['id'],
                    'name' => $val['name'],
                ];
                foreach ($val['children'] as $vt) {
                    $cateList[] = [
                        'id' => $vt['id'],
                        'name' => "|--" . $vt['name'],
                    ];
                }
            }
        }

        View::assign("data_list", $cateList);
        #return message("操作成功", true, $cateList);
    }
}