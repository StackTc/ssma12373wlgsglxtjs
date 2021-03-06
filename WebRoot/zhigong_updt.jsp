<%@ page language="java" import="com.spring.util.*,java.util.*,com.jntoo.db.*,com.jntoo.db.utils.*" pageEncoding="UTF-8" %>
 <%@ taglib prefix="ssm" uri="http://ssm" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ include file="head.jsp" %>

<script src="js/jquery.validate.js"></script>

<div style="padding: 10px" class="admin-content">
    <div class="container">
        <!-- 使用bootstrap css框架，container定宽，并剧中 https://v3.bootcss.com/css/#overview-container -->

        <div class="panel panel-default">
            <div class="panel-heading">编辑职工:</div>
            <div class="panel-body">
                <form action="zhigongupdate.do" method="post" name="form1" id="form1">
                    <!-- form 标签开始 -->

                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">工号<span style="color: red">*</span></label>
                            <div class="col-sm-10">
                                <input
                                    type="text"
                                    class="form-control"
                                    placeholder="输入工号"
                                    style="width: 150px"
                                    data-rule-required="true"
                                    data-msg-required="请填写工号"
                                    remote="checkno.do?checktype=update&id=${mmm.id}&table=zhigong&col=gonghao"
                                    data-msg-remote="内容重复了"
                                    id="gonghao"
                                    name="gonghao"
                                    value="${Info.html(mmm.gonghao)}"
                                />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">姓名</label>
                            <div class="col-sm-10">
                                <input
                                    type="text"
                                    class="form-control"
                                    placeholder="输入姓名"
                                    style="width: 150px"
                                    id="xingming"
                                    name="xingming"
                                    value="${Info.html(mmm.xingming)}"
                                />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">区域</label>
                            <div class="col-sm-10">
                                <select class="form-control class_quyu10" data-value="${Info.html(mmm.quyu)}" id="quyu" name="quyu" style="width: 250px">
                                    <ssm:sql var="select" type="select">SELECT * FROM quyu ORDER BY id desc</ssm:sql>
                                    <c:forEach items="${select}" var="m">
                                        <option value="${m.id}">${m.quyu}</option>
                                    </c:forEach>
                                </select>
                                <script>
                                    $(".class_quyu10").val($(".class_quyu10").attr("data-value"));
                                </script>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">性别</label>
                            <div class="col-sm-10">
                                <select class="form-control class_xingbie11" data-value="${Info.html(mmm.xingbie)}" id="xingbie" name="xingbie" style="width: 250px">
                                    <option value="男">男</option>
                                    <option value="女">女</option>
                                </select>
                                <script>
                                    $(".class_xingbie11").val($(".class_xingbie11").attr("data-value"));
                                </script>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">手机</label>
                            <div class="col-sm-10">
                                <input
                                    type="text"
                                    class="form-control"
                                    placeholder="输入手机"
                                    style="width: 150px"
                                    phone="true"
                                    data-msg-phone="请输入正确手机号码"
                                    id="shouji"
                                    name="shouji"
                                    value="${Info.html(mmm.shouji)}"
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

