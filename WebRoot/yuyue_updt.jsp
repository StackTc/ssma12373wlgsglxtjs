<%@ page language="java" import="com.spring.util.*,java.util.*,com.jntoo.db.*,com.jntoo.db.utils.*" pageEncoding="UTF-8" %>
 <%@ taglib prefix="ssm" uri="http://ssm" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ include file="head.jsp" %>

<script src="js/jquery.validate.js"></script>
<script>
    window.searchSelectUrl = "selectUpdateSearch.do";
    window.selectUpdateUrl = "tableAjax.do?a=table";
</script>
<script src="js/selectUpdate.js"></script>
<script src="js/datepicker/WdatePicker.js"></script>

<div style="padding: 10px" class="admin-content">
    <div class="container">
        <!-- 使用bootstrap css框架，container定宽，并剧中 https://v3.bootcss.com/css/#overview-container -->

        <div class="panel panel-default">
            <div class="panel-heading">编辑预约:</div>
            <div class="panel-body">
                <form action="yuyueupdate.do" method="post" name="form1" id="form1">
                    <!-- form 标签开始 -->

                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">编号</label>
                            <div class="col-sm-10">
                                <input
                                    type="text"
                                    class="form-control"
                                    placeholder="输入编号"
                                    style="width: 150px"
                                    readonly="readonly"
                                    id="bianhao"
                                    name="bianhao"
                                    value="${Info.html(mmm.bianhao)}"
                                />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">类型</label>
                            <div class="col-sm-10">
                                <div class="form-inline">
                                    <select
                                        class="form-control"
                                        data-fields="huowu,jine"
                                        data-value="${Info.html(mmm.leixing)}"
                                        id="leixing"
                                        name="leixing"
                                        onchange="getAjaxData('huowu',this,this.value)"
                                    >
                                        <option value="">请选择类型</option>
                                    </select>
                                   <%-- 关键词：<input type="text" class="form-control" id="leixing_keyword" value="" />
                                    <button type="button" class="btn btn-default" onclick="leixing_select_update()">搜索</button>--%>
                                    <script>
                                        function leixing_select_update() {
                                            var keyword = $("#leixing_keyword").val();
                                            var where = {};
                                            searchSelect("leixing", "huowu", keyword, where, "huowu,jine".split(","), "".split(","));
                                        }
                                        leixing_select_update();
                                    </script>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">货物</label>
                            <div class="col-sm-10">
                                <input
                                    type="text"
                                    class="form-control select-update"
                                    placeholder="输入货物"
                                    style="width: 150px"
                                    id="huowu"
                                    name="huowu"
                                    value="${Info.html(mmm.huowu)}"
                                />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">金额</label>
                            <div class="col-sm-10">
                                <input
                                    type="number"
                                    class="form-control select-update"
                                    placeholder="输入金额"
                                    style="width: 150px"
                                    step="0.01"
                                    number="true"
                                    data-msg-number="输入一个有效数字"
                                    id="jine"
                                    name="jine"
                                    value="${Info.html(mmm.jine)}"
                                />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">区域</label>
                            <div class="col-sm-10">
                                <select class="form-control class_quyu15" data-value="${Info.html(mmm.quyu)}" id="quyu" name="quyu" style="width: 250px">
                                    <ssm:sql var="select" type="select">SELECT * FROM quyu ORDER BY id desc</ssm:sql>
                                    <c:forEach items="${select}" var="m">
                                        <option value="${m.id}">${m.quyu}</option>
                                    </c:forEach>
                                </select>
                                <script>
                                    $(".class_quyu15").val($(".class_quyu15").attr("data-value"));
                                </script>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">目的地</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" placeholder="输入目的地" style="width: 150px" id="mudidi" name="mudidi" value="${Info.html(mmm.mudidi)}" />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">发货地</label>
                            <div class="col-sm-10">
                                <input
                                    type="text"
                                    class="form-control"
                                    placeholder="输入发货地"
                                    style="width: 150px"
                                    id="fahuodi"
                                    name="fahuodi"
                                    value="${Info.html(mmm.fahuodi)}"
                                />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">发货人电话</label>
                            <div class="col-sm-10">
                                <input
                                    type="text"
                                    class="form-control"
                                    placeholder="输入发货人电话"
                                    style="width: 150px"
                                    id="fahuorendianhua"
                                    name="fahuorendianhua"
                                    value="${Info.html(mmm.fahuorendianhua)}"
                                />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">发货人</label>
                            <div class="col-sm-10">
                                <input
                                    type="text"
                                    class="form-control"
                                    placeholder="输入发货人"
                                    style="width: 150px"
                                    id="fahuoren"
                                    name="fahuoren"
                                    value="${Info.html(mmm.fahuoren)}"
                                />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">收货人电话</label>
                            <div class="col-sm-10">
                                <input
                                    type="text"
                                    class="form-control"
                                    placeholder="输入收货人电话"
                                    style="width: 150px"
                                    id="shouhuorendianhua"
                                    name="shouhuorendianhua"
                                    value="${Info.html(mmm.shouhuorendianhua)}"
                                />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">收货人</label>
                            <div class="col-sm-10">
                                <input
                                    type="text"
                                    class="form-control"
                                    placeholder="输入收货人"
                                    style="width: 150px"
                                    id="shouhuoren"
                                    name="shouhuoren"
                                    value="${Info.html(mmm.shouhuoren)}"
                                />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">时间</label>
                            <div class="col-sm-10">
                                <input
                                    type="text"
                                    class="form-control"
                                    onfocus="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',lang:'zh-cn'})"
                                    style="width: 200px"
                                    readonly="readonly"
                                    id="shijian"
                                    name="shijian"
                                    value="${Info.html(mmm.shijian)}"
                                />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">备注</label>
                            <div class="col-sm-10">
                                <textarea style="width: 80%; height: 120px" class="form-control" placeholder="输入备注" id="beizhu" name="beizhu">
${Info.html(mmm.beizhu)}</textarea
                                >
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">添加人</label>
                            <div class="col-sm-10">
                                <input
                                    type="text"
                                    class="form-control"
                                    placeholder="输入添加人"
                                    style="width: 150px"
                                    readonly="readonly"
                                    id="tianjiaren"
                                    name="tianjiaren"
                                    value="${mmm.tianjiaren}"
                                />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs"> </label>
                            <div class="col-sm-10">
                                <input name="id" value="${mmm.id}" type="hidden" />
                                <input name="referer" value="<%=request.getHeader("referer") %>" type="hidden" />
                                <input name="updtself" value="${updtself}" type="hidden" />

                                <button type="submit" class="btn btn-primary" name="Submit">提交</button>
                                <button type="reset" class="btn btn-default" name="Submit2">重置</button>
                            </div>
                        </div>
                    </div>

                    <!--form标签结束-->
                </form>
            </div>
        </div>

        <!-- container定宽，并剧中结束 -->
    </div>

    <script>
        $(function () {
            $("#form1").validate();
        });
    </script>
</div>
<%@ include file="foot.jsp" %>

