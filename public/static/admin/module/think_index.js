/**
 * 个人中心
 * @auth 鲲鹏
 * @date 2020-05-04
 */
layui.use(['form', 'element', 'admin', 'function'], function () {
    var $ = layui.jquery;
    var form = layui.form;
    var element = layui.element;
    var admin = layui.admin;
    var func = layui.function;

    /* 选择头像 */
    $('#userInfoHead').click(function () {
        layer.msg("头像裁剪完善中");
        return false;
        // admin.cropImg({
        //     imgSrc: $('#userInfoHead>img').attr('src'),
        //     onCrop: function (res) {
        //         $('#userInfoHead>img').attr('src', res);
        //         parent.layui.jquery('.layui-layout-admin>.layui-header .layui-nav img.layui-nav-img').attr('src', res);
        //     }
        // });
    });

    /* 监听表单提交 */
    form.on('submit(adminInfoSubmit)', function (data) {
        func.ajaxPost("/index/userInfo.html", data.field);
        return false;
    });

});
