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
 * 会员等级-模型
 * @author 牧羊人
 * @since 2020/7/3
 * Class UserLevel
 * @package app\admin\model
 */
class UserLevel extends BaseModel
{
    // 设置数据表名
    protected $name = "user_level";
    public function getInfo($id=0)
    {
        $info = parent::getInfo($id);
        return $info;
    }
}