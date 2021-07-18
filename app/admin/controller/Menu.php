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


use app\admin\service\MenuService;
use app\common\controller\Backend;
use think\Db;
use think\facade\View;

/**
 * 菜单-控制器
 * @author 牧羊人
 * @since 2020/7/3
 * Class Menu
 * @package app\admin\controller
 */
class Menu extends Backend
{
    /**
     * 初始化
     * @author 牧羊人
     * @since 2020/7/3
     */
    public function initialize()
    {
        parent::initialize(); // TODO: Change the autogenerated stub
        $this->model = new \app\admin\model\Menu();
        $this->service = new MenuService();
    }

    /**
     * 添加或编辑
     * @return mixed
     * @since 2020/7/3
     * @author 牧羊人
     */
    public function edit()
    {
        // 上级菜单列表
        $result = $this->model->getChilds(0, false);
        $menuList = array();
        if ($result) {
            foreach ($result as $val) {
                $key = (int)$val['id'];
                $menuList[$key] = $val;
                $vlist = isset($val['children']) ? $val['children'] : [];
                if ($vlist) {
                    foreach ($vlist as &$v) {
                        $k = (int)$v['id'];
                        $v['name'] = "|--" . $v['name'];
                        $menuList[$k] = $v;
                        $clist = isset($v['children']) ? $v['children'] : [];
                        if ($clist) {
                            foreach ($clist as &$vt) {
                                $kt = (int)$vt['id'];
                                $vt['name'] = "|--|--" . $vt['name'];
                                $menuList[$kt] = $vt;
                            }
                        }
                    }
                }
            }
        }
        // 绑定数据
        View::assign("menuList", $menuList);
        // 菜单类型
        View::assign("typeList", config("admin.menu_type"));
        // 上级ID
        $pid = input("get.pid", 0);
        return parent::edit([
            'pid' => $pid,
        ]); // TODO: Change the autogenerated stub
    }

    /**
     * 删除单条记录
     * @return array
     * @author 牧羊人
     * @date 2019/2/25
     */
    public function drop()
    {
        if (IS_POST) {
            $id = input('post.id');
            $info = $this->model->getInfo($id);
            if ($info) {
                // 有子级存在则不予删除
                $count = $this->model->getCount([
                    ['pid', '=', $info['id']],
                ]);
                if ($count > 0) {
                    return message("有子级存在，不允许删除", false);
                }
                $result = $this->model->drop($id);
                if ($result !== false) {
                    return message();
                }
            }
            return message($this->model->getError(), false);
        }
    }
}