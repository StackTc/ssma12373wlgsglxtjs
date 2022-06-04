<%@ page language="java" import="com.spring.util.*,java.util.*,com.jntoo.db.*,com.jntoo.db.utils.*" pageEncoding="UTF-8" %>
 <%@ taglib prefix="ssm" uri="http://ssm" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ include file="head.jsp" %>

<script src="js/jquery.validate.js"></script>

<div style="padding: 10px" class="admin-content">
    <div class="container">
        <!-- 使用bootstrap css框架，container定宽，并剧中 https://v3.bootcss.com/css/#overview-container -->

        <div class="panel panel-default">
            <div class="panel-heading">编辑订单:</div>
            <div class="panel-body">
                <form action="dingdanupdate.do" method="post" name="form1" id="form1">
                    <!-- form 标签开始 -->

                    <input type="hidden" name="yuyueid" value="${mmm.yuyueid}" />
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">编号</label>
                            <div class="col-sm-10">${mmm.bianhao}<input type="hidden" id="bianhao" name="bianhao" value="${Info.html(mmm.bianhao)}" /></div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">货物</label>
                            <div class="col-sm-10">${mmm.huowu}<input type="hidden" id="huowu" name="huowu" value="${Info.html(mmm.huowu)}" /></div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">金额</label>
                            <div class="col-sm-10">${mmm.jine}<input type="hidden" id="jine" name="jine" value="${Info.html(mmm.jine)}" /></div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">区域</label>
                            <div class="col-sm-10">
                                <ssm:sql var="mapquyu14" type="find">SELECT quyu,id FROM quyu where id='${mmm.quyu}'</ssm:sql>${mapquyu14.quyu}<input
                                    type="hidden"
                                    id="quyu"
                                    name="quyu"
                                    value="${Info.html(mmm.quyu)}"
                                />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">目的地</label>
                            <div class="col-sm-10">${mmm.mudidi}<input type="hidden" id="mudidi" name="mudidi" value="${Info.html(mmm.mudidi)}" /></div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">发货地</label>
                            <div class="col-sm-10">${mmm.fahuodi}<input type="hidden" id="fahuodi" name="fahuodi" value="${Info.html(mmm.fahuodi)}" /></div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">发货人电话</label>
                            <div class="col-sm-10">
                                ${mmm.fahuorendianhua}<input type="hidden" id="fahuorendianhua" name="fahuorendianhua" value="${Info.html(mmm.fahuorendianhua)}" />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">发货人</label>
                            <div class="col-sm-10">${mmm.fahuoren}<input type="hidden" id="fahuoren" name="fahuoren" value="${Info.html(mmm.fahuoren)}" /></div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">收货人电话</label>
                            <div class="col-sm-10">
                                ${mmm.shouhuorendianhua}<input type="hidden" id="shouhuorendianhua" name="shouhuorendianhua" value="${Info.html(mmm.shouhuorendianhua)}" />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">收货人</label>
                            <div class="col-sm-10">${mmm.shouhuoren}<input type="hidden" id="shouhuoren" name="shouhuoren" value="${Info.html(mmm.shouhuoren)}" /></div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">添加人</label>
                            <div class="col-sm-10">${mmm.tianjiaren}<input type="hidden" id="tianjiaren" name="tianjiaren" value="${Info.html(mmm.tianjiaren)}" /></div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">运输</label>
                            <div class="col-sm-10">
                                <select class="form-control class_yunshu23" data-value="${Info.html(mmm.yunshu)}" id="yunshu" name="yunshu" style="width: 250px">
                                    <ssm:sql var="select" type="select">SELECT * FROM yunshu ORDER BY id desc</ssm:sql>
                                    <c:forEach items="${select}" var="m">
                                        <option value="${m.id}">${m.yunshu}</option>
                                    </c:forEach>
                                </select>
                                <script>
                                    $(".class_yunshu23").val($(".class_yunshu23").attr("data-value"));
                                </script>
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
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">操作人</label>
                            <div class="col-sm-10">
                                <input
                                    type="text"
                                    class="form-control"
                                    placeholder="输入操作人"
                                    style="width: 150px"
                                    readonly="readonly"
                                    id="caozuoren"
                                    name="caozuoren"
                                    value="${mmm.caozuoren}"
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

