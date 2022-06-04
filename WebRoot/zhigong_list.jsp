<%@ page language="java" import="com.spring.util.*,java.util.*,com.jntoo.db.*,com.jntoo.db.utils.*" pageEncoding="UTF-8" %>
 <%@ taglib prefix="ssm" uri="http://ssm" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ include file="head.jsp" %>


<div style="padding: 10px" class="admin-content">
    <div class="panel panel-default">
        <div class="panel-heading">
            <span class="module-name"> 职工 </span>
            <span>列表</span>
        </div>
        <div class="panel-body">
            <div class="pa10 bg-warning">
                <form class="form-inline" id="formSearch" action="?">
                    <!-- form 标签开始 -->

                    <div class="form-group">
                        <i class="glyphicon glyphicon-search"></i>
                    </div>

                    <div class="form-group">
                        工号

                        <input type="text" class="form-control" style="" name="gonghao" value="${param.gonghao}" />
                    </div>
                    <div class="form-group">
                        区域

                        <select class="form-control class_quyu5" data-value="${param.quyu}" id="quyu" name="quyu">
                            <option value="">请选择</option>
                            <ssm:sql var="select" type="select">SELECT * FROM quyu ORDER BY id desc</ssm:sql>
                            <c:forEach items="${select}" var="m">
                                <option value="${m.id}">${m.quyu}</option>
                            </c:forEach>
                        </select>
                        <script>
                            $(".class_quyu5").val($(".class_quyu5").attr("data-value"));
                        </script>
                    </div>
                    <select class="form-control" name="order" id="orderby">
                        <option value="id">按发布时间</option>
                    </select>
                    <select class="form-control" name="sort" id="sort">
                        <option value="desc">倒序</option>
                        <option value="asc">升序</option>
                    </select>
                    <script>
                        $("#orderby").val("${orderby}");
                        $("#sort").val("${sort}");
                    </script>
                    <button type="submit" class="btn btn-default">搜索</button>

                    <!--form标签结束-->
                </form>
            </div>

            <div class="list-table">
                <table width="100%" border="1" class="table table-list table-bordered table-hover">
                    <thead>
                        <tr align="center">
                            <th width="60" data-field="item">序号</th>
                            <th>工号</th>
                            <th>姓名</th>
                            <th>区域</th>
                            <th>性别</th>
                            <th>手机</th>
                            <th width="220" data-field="handler">操作</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:set var="i" value="0" /><c:forEach items="${list}" var="map"
                            ><c:set var="i" value="${i+1}" />
                            <tr id="${map.id}" pid="">
                                <td width="30" align="center">
                                    <label> ${i} </label>
                                </td>
                                <td>${map.gonghao}</td>
                                <td>${map.xingming}</td>
                                <td><ssm:sql var="mapquyu1" type="find">SELECT quyu,id FROM quyu where id='${map.quyu}'</ssm:sql>${mapquyu1.quyu}</td>
                                <td>${map.xingbie}</td>
                                <td>${map.shouji}</td>
                                <td align="center">
                                    <a href="zhigong_updt.do?id=${map.id}">编辑</a>

                                    <a href="zhigong_delete.do?id=${map.id}" onclick="return confirm('确定要删除？')">删除</a>
                                    <!--qiatnalijne-->
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>

            <%@ include file="/page.jsp" %>

        </div>
    </div>
</div>
<%@ include file="foot.jsp" %>

