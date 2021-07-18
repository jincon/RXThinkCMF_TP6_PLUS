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
 * 通知公告
 * @author 牧羊人
 * @since 2020/7/5
 * Class Notice
 * @package app\admin\model
 */
class Notice extends BaseModel
{
    // 设置数据表名
    protected $name = "notice";

    /**
     * 获取缓存信息
     * @param int $id 记录ID
     * @return \app\common\model\数据信息|mixed
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @author 牧羊人
     * @since 2020/7/5
     */
    public function getInfo($id=0)
    {
        $info = parent::getInfo($id); // TODO: Change the autogenerated stub
        if ($info) {
            // 通知来源
            if ($info['source']) {
                $info['source_name'] = config('admin.notice_source')[$info['source']];
            }
            // 通知状态
            if ($info['status']) {
                $info['status_name'] = config('admin.notice_status')[$info['status']];
            }
            // 发布时间
            if ($info['publish_time']) {
                $info['format_publish_time'] = datetime($info['publish_time']);
            }
        }
        return $info;
    }
}