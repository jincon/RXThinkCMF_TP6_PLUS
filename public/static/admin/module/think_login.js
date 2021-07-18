/**
 * 系统登录
 * @author 牧羊人
 * @since 2020/7/4
 */
layui.use(['layer', 'form', 'index'], function () {
    var $ = layui.jquery;
    var layer = layui.layer;
    var index = layui.index;
    var form = layui.form;
    $('.login-wrapper').removeClass('layui-hide');

    // 登录事件
    form.on('submit(loginSubmit)', function (data) {
        // 设置按钮文字“登录中...”及禁止点击状态
        $(data.elem).attr('disabled', true).text('登录');

        // 网络请求
        var loadIndex = layer.load(2);
        $.ajax({
            type: "POST",
            url: '/login/login',
            data: JSON.stringify(data.field),
            contentType: "application/json",
            dataType: "json",
            beforeSend: function () {
                // TODO...
            },
            success: function (res) {
                layer.close(loadIndex);
                if (res.success) {
                    // 清除Tab记忆
                    index.clearTabCache();
                    // 提示登录成功
                    layer.msg('登录成功', {
                        icon: 1,
                        time: 1500
                    });
                    // 延迟2秒
                    setTimeout(function () {
                        // 跳转后台首页
                        window.location.href = "/index";
                    }, 2000);

                    return false;
                } else {
                    layer.msg(res.msg, {icon: 2, anim: 6});

                    // 延迟3秒恢复可登录状态
                    setTimeout(function () {
                        // 设置按钮状态为“登陆”
                        var login_text = $(data.elem).text().replace('中', '');
                        // 设置按钮为可点击状态
                        $(data.elem).text(login_text).removeAttr('disabled');
                    }, 3000);
                }
            },
            error: function () {
                layer.msg("AJAX请求异常");
            }
        });
        return false;
    });
});