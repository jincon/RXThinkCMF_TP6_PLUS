!function(t){var e={};function n(a){if(e[a])return e[a].exports;var i=e[a]={i:a,l:!1,exports:{}};return t[a].call(i.exports,i,i.exports,n),i.l=!0,i.exports}n.m=t,n.c=e,n.d=function(t,e,a){n.o(t,e)||Object.defineProperty(t,e,{enumerable:!0,get:a})},n.r=function(t){"undefined"!=typeof Symbol&&Symbol.toStringTag&&Object.defineProperty(t,Symbol.toStringTag,{value:"Module"}),Object.defineProperty(t,"__esModule",{value:!0})},n.t=function(t,e){if(1&e&&(t=n(t)),8&e)return t;if(4&e&&"object"==typeof t&&t&&t.__esModule)return t;var a=Object.create(null);if(n.r(a),Object.defineProperty(a,"default",{enumerable:!0,value:t}),2&e&&"string"!=typeof t)for(var i in t)n.d(a,i,function(e){return t[e]}.bind(null,i));return a},n.n=function(t){var e=t&&t.__esModule?function(){return t.default}:function(){return t};return n.d(e,"a",e),e},n.o=function(t,e){return Object.prototype.hasOwnProperty.call(t,e)},n.p="",n(n.s=6)}({6:function(t,e){layui.define(["form","layer","table","common","treeTable"],(function(t){var e,n,a,i,r,o=layui.form,l=layui.table,c=layui.layer,u=layui.common,d=layui.treeTable,f=layui.$,s=0,b=0,h=!1,p={tableIns:function(t,o,d=null,p="",m=!1){n=o,a=d,p&&""!=p||(p=cUrl+"/index");var y=f("#param").val();if(y&&(y=JSON.parse(y),f.isArray(y)))for(var v in y)p.indexOf("?")>=0?p+="&"+y[v]:p+="?"+y[v];return e=l.render({elem:"#"+n,url:p,method:"post",cellMinWidth:150,page:{layout:["refresh","prev","page","next","skip","count","limit"],curr:1,groups:10,first:"首页",last:"尾页"},height:"full-100",limit:20,limits:[20,30,40,50,60,70,80,90,100,150,200,1e3],even:!0,cols:[t],loading:!0,done:function(t,e,n){if(r){var a=f(".layui-table-body").find("table").find("tbody");a.children("tr").on("dblclick",(function(){var e=a.find(".layui-table-hover").data("index"),n=t.data[e];u.edit(i,n.id,s,b)}))}}}),l.on("toolbar("+n+")",(function(t){var e=l.checkStatus(t.config.id);switch(t.event){case"getCheckData":var n=e.data;c.alert(JSON.stringify(n));break;case"getCheckLength":n=e.data;c.msg("选中了："+n.length+" 个");break;case"isAll":c.msg(e.isAll?"全选":"未全选")}})),l.on("tool("+n+")",(function(t){var e=t.data,n=t.event;"edit"===n?u.edit(i,e.id,s,b,[],h):"detail"===n?u.detail(i,e.id,s,b):"del"===n?u.drop(e.id,(function(e,n){n&&t.del()})):"cache"===n?u.cache(e.id):"copy"===n?u.copy(i,e.id,s,b):a&&a(n,e)})),l.on("checkbox("+n+")",(function(t){console.log(t.checked),console.log(t.data),console.log(t.type)})),l.on("edit("+n+")",(function(t){var e=t.value,n=t.data,a=t.field,i={};i.id=n.id,i[a]=e;var r=JSON.stringify(i),o=JSON.parse(r),l=cUrl+"/update";u.ajaxPost(l,o,(function(t,e){}),"更新中...")})),l.on("row("+n+")",(function(t){t.tr.addClass("layui-table-click").siblings().removeClass("layui-table-click");t.data})),m&&l.on("sort("+n+")",(function(t){l.reload(n,{initSort:t,where:{field:t.field,order:t.type}})})),this},treetable:function(t=[],e,a=!0,r=0,o="",l=null,p=""){n=e,p||(p=cUrl+"/index");var m=d.render({elem:"#"+e,url:p,method:"POST",height:"full-50",cellMinWidth:80,tree:{iconIndex:1,idName:"id",pidName:o||"pid",isPidData:!0},cols:[t],done:function(t,e,n){c.closeAll("loading")},style:"margin-top:0;"});d.on("tool("+e+")",(function(t){var e=t.data,n=t.event,a=e.id;"addz"===n?u.edit(i,0,s,b,["pid="+a],h):"edit"===n?u.edit(i,a,s,b,[],h):"del"===n?u.drop(a,(function(e,n){n&&t.del()})):l&&l(n,a,0)})),f("#collapse").on("click",(function(){return m.foldAll(),!1})),f("#expand").on("click",(function(){return m.expandAll(),!1})),f("#refresh").on("click",(function(){return m.refresh(),!1})),f("#search").click((function(){var t=f("#keywords").val();return t?m.filterData(t):m.clearFilter(),!1}))},setWin:function(t,e=0,n=0,a=!1){return i=t,s=e,b=n,h=a,this},setDbclick:function(t){return r=t||!0,this},searchForm:function(t,e){o.on("submit("+t+")",(function(t){return u.searchForm(l,t,e),!1}))},getCheckData:function(t){return t||(t=n),l.checkStatus(t).data},initDate:function(t,e=null){u.initDate(t,(function(t,n){e&&e(t,n)}))},showWin:function(t,e,n=0,a=0,i=[],r=2,o=[],l=null){u.showWin(t,e,n,a,i,r,o,(function(t,e){l&&l(t,e)}))},ajaxPost:function(t,e,n=null,a="处理中..."){u.ajaxPost(t,e,n,a)},formSwitch:function(t,e="",n=null){u.formSwitch(t,e,(function(t,e){n&&n(t,e)}))},uploadFile:function(t,e=null,n="",a="xls|xlsx",i=10240,r={}){u.uploadFile(t,(function(t,n){e&&e(t,n)}),n,a,i,r)}};u.verify(),o.on("submit(submitForm)",(function(t){return u.submitForm(t.field,null,(function(t,e){console.log("保存成功回调")})),!1})),o.on("submit(searchForm)",(function(t){return u.searchForm(l,t),!1})),f(".btnOption").click((function(){var t=f(this).attr("data-param");t&&(t=JSON.parse(t));var a=p.getCheckData(n),r=f(this).attr("lay-event");switch(r){case"add":u.edit(i,0,s,b,t);break;case"dall":(o={title:"批量删除"}).url=cUrl+"/batchDrop",o.data=a,o.confirm=!0,u.batchFunc(o,(function(){e.reload()}));break;case"batchCache":(o={title:"批量重置缓存"}).url=cUrl+"/batchCache",o.data=a,o.confirm=!0,u.batchFunc(o,(function(){e.reload()}));break;case"batchEnable":(o={title:"批量启用状态"}).url=cUrl+"/batchStatus",o.param=t,o.data=a,o.form="submitForm",o.confirm=!0,o.show_tips="处理中...",u.batchFunc(o,(function(){e.reload()}));break;case"batchDisable":var o;(o={title:"批量禁用状态"}).url=cUrl+"/batchStatus",o.param=t,o.data=a,o.confirm=!0,u.batchFunc(o,(function(){e.reload()}));break;case"export":c.msg("导出"),location.href=cUrl+"/btn"+r.substring(0,1).toUpperCase()+r.substring(1);break;case"import":u.uploadFile("import",(function(t,e){}))}})),window.formClose=function(){var t=parent.layer.getFrameIndex(window.name);parent.layer.close(t)},t("function",p)}))}});