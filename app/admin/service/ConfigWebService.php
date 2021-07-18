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
 * 网站配置-服务类
 * @author 牧羊人
 * @since 2020/7/2
 * Class ConfigWebService
 * @package app\admin\service
 */
class ConfigWebService extends BaseService
{
    /**
     * 构造函数
     * @author 牧羊人
     * @since 2020/7/2
     * ConfigWebService constructor.
     */
    public function __construct()
    {
        $this->model = new Config();
    }

    /**
     * 配置表单信息
     * @return array
     * @throws \think\db\exception\BindParamException
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @author 牧羊人
     * @since 2020/7/2
     */
    public function config()
    {
        $data = request()->param();
        if (empty($data)) {
            return message("数据不能为空", false);
        }
        foreach ($data as $key => $val) {
            if (strpos($key, 'checkbox')) {
                $item = explode('__', $key);
                $key = $item[0];
                $val = implode(',', array_keys($val));
            } elseif (strpos($key, 'upimage')) {
                $item = explode('__', $key);
                $key = $item[0];
                if (strpos($val, "temp") !== false) {
                    //新上传图片
                    $val = save_image($val, 'config');
                } else {
                    $val = str_replace(IMG_URL, "", $val);
                }
            } elseif (strpos($key, 'upimgs')) {
                $item = explode('__', $key);
                $key = $item[0];

                $imgArr = explode(',', $val);
                $imgStr = [];
                foreach ($imgArr as $kt => $vt) {
                    if (strpos($vt, "temp")) {
                        //新上传图片
                        $imgStr[] = save_image($vt, 'config');
                    } else {
                        //过滤已上传图片
                        $imgStr[] = str_replace(IMG_URL, "", $vt);
                    }
                }
                $val = serialize($imgStr);
            } elseif (strpos($key, 'ueditor')) {
                $item = explode('__', $key);
                $key = $item[0];
                //内容处理
                save_image_content($val, '', "config");
            }
            $info = $this->model->getInfoByAttr([
                ['name', '=', $key],
            ]);
            if (!$info) {
                continue;
            }
            $this->model->edit([
                'id' => $info['id'],
                'value' => $val,
            ]);
        }
        return message();
    }
}