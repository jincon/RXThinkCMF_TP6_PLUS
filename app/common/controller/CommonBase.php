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

namespace app\common\controller;


use app\BaseController;
use think\facade\View;

/**
 * 基类控制器
 *
 * @author 牧羊人
 * @since 2020-04-21
 */
class CommonBase extends BaseController
{

    /**
     * 初始化方法
     */
    protected function initialize()
    {
        parent::initialize(); // TODO: Change the autogenerated stub

        // 初始化请求配置
        $this->initRequestConfig();
    }

    /**
     * 初始化请求配置
     */
    public function initRequestConfig()
    {
        // 定义是否GET请求
        defined('IS_GET') or define('IS_GET', $this->request->isGet());

        // 定义是否POST请求
        defined('IS_POST') or define('IS_POST', $this->request->isPost());

        // 定义是否AJAX请求
        defined('IS_AJAX') or define('IS_AJAX', $this->request->isAjax());

        // 定义是否PAJAX请求
        defined('IS_PJAX') or define('IS_PJAX', $this->request->isPjax());

        // 定义是否PUT请求
        defined('IS_PUT') or define('IS_PUT', $this->request->isPut());

        // 定义是否DELETE请求
        defined('IS_DELETE') or define('IS_DELETE', $this->request->isDelete());

        // 定义是否HEAD请求
        defined('IS_HEAD') or define('IS_HEAD', $this->request->isHead());

        // 定义是否PATCH请求
        defined('IS_PATCH') or define('IS_PATCH', $this->request->isPatch());

        // 定义是否为手机访问
        defined('IS_MOBILE') or define('IS_MOBILE', $this->request->isMobile());

        // 定义是否为cli
        defined('IS_CLI') or define('IS_CLI', $this->request->isCli());

        // 定义是否为cgi
        defined('IS_CGI') or define('IS_CGI', $this->request->isCgi());

        // 控制器名称
        $controller_name = $this->request->controller();
        // 操作方法名称
        $action_name = $this->request->action();
        // 定义控制器名
        defined('CONTROLLER_NAME') or define('CONTROLLER_NAME', $controller_name);
        // 定义操作方法名
        defined('ACTION_NAME') or define('ACTION_NAME', $action_name);
        View::assign("app", strtolower($controller_name));
        View::assign("act", strtolower($action_name));
    }

    /**
     * JSON返回结果
     * @author 牧羊人
     * @date 2020-04-21
     */
    public function jsonReturn()
    {
        false && message();

        // 获取参数
        $arr = func_get_args();

        if (!is_array($arr[0])) {
            // 回调函数
            $result = call_user_func_array("message", $arr);
        } else {
            // 函数模式
            $result = $arr[0];
        }
        // 格式化数组
        $result = $this->getStringArray($result);

        // 返回结果
        $output = json_encode($result);
        echo $output;
        exit();
    }

    /**
     * 格式化字符串
     * @param $array
     * @return mixed
     * @author 牧羊人
     * @date 2020-04-21
     */
    private function getStringArray($array)
    {
        foreach ($array as $key => $row) {
            if (is_array($row)) {
                $array[$key] = $this->getStringArray($row);
            } elseif (is_object($row)) {
                //TODO...
            } else {
                $array[$key] = (string)$row;
            }
        }
        return $array;
    }

}