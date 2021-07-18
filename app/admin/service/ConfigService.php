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

namespace app\admin\service;


use app\admin\model\Config;
use app\common\service\BaseService;

/**
 * 配置管理-服务类
 * @author 牧羊人
 * @since 2020/7/1
 * Class ConfigService
 * @package app\admin\service
 */
class ConfigService extends BaseService
{
    /**
     * 构造函数
     * @author 牧羊人
     * @since 2020/7/1
     * ConfigService constructor.
     */
    public function __construct()
    {
        $this->model = new Config();
    }

    /**
     * 获取数据列表
     * @return array
     * @since 2020/7/1
     * @author 牧羊人
     */
    public function getList()
    {
        $param = request()->param();

        // 查询条件
        $map = [];

        // 配置分组ID
        $groupId = (int)$param['group_id'];
        if ($groupId) {
            $map[] = ['group_id', '=', $groupId];
        }

        return parent::getList($map);
    }
}