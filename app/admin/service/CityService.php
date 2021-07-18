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


use app\admin\model\City;
use app\common\service\BaseService;

/**
 * 城市管理-服务类
 * @author 牧羊人
 * @since 2020/7/3
 * Class CityService
 * @package app\admin\service
 */
class CityService extends BaseService
{
    /**
     * 构造函数
     * @author 牧羊人
     * @since 2020/7/3
     * CityService constructor.
     */
    public function __construct()
    {
        $this->model = new City();
    }

    /**
     * 获取城市列表
     * @return array
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @since 2021/1/30
     * @author 牧羊人
     */
    public function getList()
    {
        $param = request()->param();
        // 上级ID
        $pid = getter($param, "pid", 0);
        // 查询条件
        $map = [
            ['pid', '=', $pid],
        ];
        // 部门名称
        $name = getter($param, "name");
        if ($name) {
            $map[] = ['name', 'like', "%{$name}%"];
        }
        $list = $this->model->getList($map, "sort asc");
        if (!empty($list)) {
            foreach ($list as &$val) {
                if ($val['level'] < 3) {
                    $val['haveChild'] = true;
                } else {
                    $val['haveChild'] = false;
                }
            }
        }
        return message("操作成功", true, $list);
    }
}