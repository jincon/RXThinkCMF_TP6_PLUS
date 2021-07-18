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


use app\admin\model\Dep;
use app\common\service\BaseService;

/**
 * 部门管理-服务类
 * @author 牧羊人
 * @since 2020/7/2
 * Class DepService
 * @package app\admin\service
 */
class DepService extends BaseService
{
    /**
     * 构造函数
     * @author 牧羊人
     * @since 2020/7/2
     * DepService constructor.
     */
    public function __construct()
    {
        $this->model = new Dep();
    }

    /**
     * 获取数据列表
     * @return array
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @since 2021/1/24
     * @author 牧羊人
     */
    public function getList()
    {
        $param = request()->param();
        // 查询条件
        $map = [];
        // 部门名称
        $name = getter($param, "name");
        if ($name) {
            $map[] = ['name', 'like', "%{$name}%"];
        }
        $list = $this->model->getList($map, "sort asc");
        return message("操作成功", true, $list);
    }

}