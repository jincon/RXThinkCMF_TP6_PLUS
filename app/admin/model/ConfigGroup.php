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
 * 配置分组-模型
 * @author 牧羊人
 * @since 2020/7/1
 * Class ConfigGroup
 * @package app\admin\model
 */
class ConfigGroup extends BaseModel
{
    // 设置数据表名
    protected $name = "config_group";

    public function getInfo($id=0)
    {
        $info = parent::getInfo($id);
        return $info;
    }
}