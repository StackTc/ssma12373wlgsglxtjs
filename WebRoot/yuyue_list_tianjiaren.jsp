<%@ page language="java" import="com.spring.util.*,java.util.*,com.jntoo.db.*,com.jntoo.db.utils.*" pageEncoding="UTF-8" %>
 <%@ taglib prefix="ssm" uri="http://ssm" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ include file="head.jsp" %>


<div style="padding: 10px" class="admin-content">
    <div class="panel panel-default">
        <div class="panel-heading">
            <span class="module-name"> 预约 </span>
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
                        编号

                        <input type="text" class="form-control" style="" name="bianhao" value="${param.bianhao}" />
                    </div>
                    <div class="form-group">类型</div>
                    <div class="form-group">
                        货物

                        <input type="text" class="form-control" style="" name="huowu" value="${param.huowu}" />
                    </div>
                    <div class="form-group">
                        金额

                        <input type="text" class="form-control" style="width: 80px" name="jine_start" value="${param.jine_start}" />-<input
                            type="text"
                            class="form-control"
                            style="width: 80px"
                            name="jine_end"
                            value="${param.jine_end}"
                        />
                    </div>
                    <div class="form-group">
                        区域

                        <select class="form-control class_quyu13" data-value="${param.quyu}" id="quyu" name="quyu">
                            <option value="">请选择</option>
                            <ssm:sql var="select" type="select">SELECT * FROM quyu ORDER BY id desc</ssm:sql>
                            <c:forEach items="${select}" var="m">
                                <option value="${m.id}">${m.quyu}</option>
                            </c:forEach>
                        </select>
                        <script>
                            $(".class_quyu13").val($(".class_quyu13").attr("data-value"));
                        </script>
                    </div>
                    <div class="form-group">
                        目的地

                        <input type="text" class="form-control" style="" name="mudidi" value="${param.mudidi}" />
                    </div>
                    <select class="form-control" name="order" id="orderby">
                        <option value="id">按发布时间</option>
                        <option value="jine">按金额</option>
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
                            <th>编号</th>
                            <th>货物</th>
                            <th>金额</th>
                            <th>区域</th>
                            <th>目的地</th>
                            <th>发货地</th>
                            <th>发货人电话</th>
                            <th>发货人</th>
                            <th>收货人电话</th>
                            <th>收货人</th>
                            <th>时间</th>
                            <th>备注</th>
                            <th>添加人</th>
                            <th width="80" data-field="iszf">是否支付</th>
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
                                <td>${map.bianhao}</td>
                                <td>${map.huowu}</td>
                                <td>${map.jine}</td>
                                <td><ssm:sql var="mapquyu3" type="find">SELECT quyu,id FROM quyu where id='${map.quyu}'</ssm:sql>${mapquyu3.quyu}</td>
                                <td>${map.mudidi}</td>
                                <td>${map.fahuodi}</td>
                                <td>${map.fahuorendianhua}</td>
                                <td>${map.fahuoren}</td>
                                <td>${map.shouhuorendianhua}</td>
                                <td>${map.shouhuoren}</td>
                                <td>${map.shijian}</td>
                                <td>${map.beizhu}</td>
                                <td>${map.tianjiaren}</td>
                                <td>
                                    ${map.iszf}
                                    <c:choose>
                                        <c:when test="${'否' == map.iszf }">
                                            <a href="javascript:window.open('zhifu/index.jsp?id=${map.id}&biao=yuyue&ordersn=${map.bianhao}&zongji=${map.jine}')"> 去支付 </a>
                                        </c:when></c:choose
                                    >
                                </td>
                                <td align="center">
                          <%--          <a href="dingdan_add.do?id=${map.id}">添加订单</a>

                                    <a href="dingdan_list.do?yuyueid=${map.id}">查询订单</a>--%>

                                    <a href="yuyue_detail.do?id=${map.id}">详情</a>

                                    <a href="yuyue_updt.do?id=${map.id}">编辑</a>

                                    <a href="yuyue_delete.do?id=${map.id}" onclick="return confirm('确定要删除？')">删除</a>
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

