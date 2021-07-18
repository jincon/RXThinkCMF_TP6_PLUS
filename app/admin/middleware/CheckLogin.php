<?php
declare (strict_types=1);

namespace app\admin\middleware;

/**
 * 登录中间件
 * @author 牧羊人
 * @since 2021/2/5
 * Class CheckLogin
 * @package app\middleware
 */
class CheckLogin
{
    /**
     * 处理请求
     *
     * @param \think\Request $request
     * @param \Closure $next
     * @return Response
     */
    public function handle($request, \Closure $next)
    {
        // 登录验证，未登录跳转至登录界面
        if (!in_array(request()->controller(), ['Login'], false)) {
            if (empty(session('adminId'))) {
                // 跳转至登录页面
                return redirect("/login/index");
            }
        }
        return $next($request);
    }
}
