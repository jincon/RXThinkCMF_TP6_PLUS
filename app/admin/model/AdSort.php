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

namespace app\admin\model;


use app\common\model\BaseModel;

/**
 * 广告位-模型
 * @author 牧羊人
 * @since 2020/7/2
 * Class AdSort
 * @package app\admin\model
 */
class AdSort extends BaseModel
{
    // 设置数据表名
    protected $name = "ad_sort";

    /**
     * 获取缓存信息
     * @param int $id 记录ID
     * @return \app\common\model\数据信息|mixed
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @author 牧羊人
     * @since 2020/7/10
     */
    public function getInfo($id=0)
    {
        $info = parent::getInfo($id); // TODO: Change the autogenerated stub
        if ($info) {
            // 获取站点
            if ($info['item_id']) {
                $itemMod = new Item();
                $itemInfo = $itemMod->getInfo($info['item_id']);
                $info['item_name'] = $itemInfo['name'];
            }

            // 获取栏目
            if ($info['cate_id']) {
                $itemCateMod = new ItemCate();
                $cateName = $itemCateMod->getCateName($info['cate_id'], ">>");
                $info['cate_name'] = $cateName;
            }

            // 使用平台
            if ($info['platform']) {
                $info['platform_name'] = config('admin.ad_platform')[$info['platform']];
            }
        }
        return $info;
    }
}