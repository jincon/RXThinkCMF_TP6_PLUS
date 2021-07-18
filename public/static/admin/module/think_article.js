/**
 * 文章管理
 * @author 牧羊人
 * @since 2020/7/4
 */
layui.use(['form', 'function'], function () {
    var func = layui.function,
        form = layui.form,
        $ = layui.$;

    if (A == 'index') {
        //【TABLE列数组】
        var cols = [
            {type: 'checkbox', fixed: 'left'}
            , {field: 'id', width: 80, title: 'ID', align: 'center', sort: true, fixed: 'left'}
            , {
                field: 'title', width: 400, title: '文章标题', align: 'center', templet: function (d) {
                    return '<a href="' + d.detail_url + '" title="' + d.title + '" class="layui-table-link" target="_blank">' + d.title + '</a>';
                }
            }
            , {
                field: 'cover_url', width: 60, title: '封面', align: 'center', templet: function (d) {
                    var coverStr = "";
                    if (d.cover_url) {
                        coverStr = '<a href="' + d.cover_url + '" target="_blank"><img src="' + d.cover_url + '" height="26" /></a>';
                    }
                    return coverStr;
                }
            }
            , {field: 'cate_name', width: 200, title: '文章分类', align: 'center'}
            , {field: 'status', width: 100, title: '状态', align: 'center', sort: true, templet: function (d) {
                    var str = "";
                    if (d.status == 1) {
                        str = '<span class="layui-btn layui-btn-normal layui-btn-xs">显示</span>';
                    } else {
                        str = '<span class="layui-btn layui-btn-normal layui-btn-xs layui-btn-danger">隐藏</span>';
                    }
                    return str;
                }
            }
            , {field: 'isTop', width: 120, title: '是否置顶', align: 'center', sort: true, templet: function (d) {
                    var str = "";
                    if (d.isTop == 1) {
                        str = '<span class="layui-btn layui-btn-normal layui-btn-xs">置顶</span>';
                    } else {
                        str = '<span class="layui-btn layui-btn-normal layui-btn-xs layui-btn-danger">不置顶</span>';
                    }
                    return str;
                }
            }
            , {field: 'view_num', width: 100, title: '浏览数', align: 'center', sort: true}
            , {field: 'create_user_name', width: 150, title: '创建人', align: 'center', sort: true}
            , {field: 'create_time', width: 180, title: '创建时间', align: 'center',}
            , {fixed: 'right', width: 150, title: '功能操作', align: 'center', toolbar: '#toolBar'}
        ];

        //【TABLE渲染】z
        var url = "";
        func.tableIns(cols, "tableList");

        //【设置弹框】
        func.setWin("文章");

        //【设置文章显示状态】
        form.on('switch(is_show)', function (obj) {
            var is_show = this.checked ? '1' : '2';

            //发起POST请求
            var url = cUrl + "/setIsShow";
            func.ajaxPost(url, {"id": this.value, "is_show": is_show}, function (data, res) {
                console.log("请求回调");
            });

        });
    }
});

