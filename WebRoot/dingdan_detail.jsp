<%@ page language="java" import="com.spring.util.*,java.util.*,com.jntoo.db.*,com.jntoo.db.utils.*" pageEncoding="UTF-8" %>
 <%@ taglib prefix="ssm" uri="http://ssm" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ include file="head.jsp" %>


<div style="padding: 10px" class="admin-content">
    <div class="panel panel-default">
        <div class="panel-heading">订单详情</div>
        <div class="panel-body">
            <div class="admin-detail clearfix">
                <div class="detail detail-readmodule">
                    <div class="detail-title">预约id：</div>
                    <div class="detail-content">${map.yuyueid}</div>
                </div>
                <div class="detail detail-text">
                    <div class="detail-title">编号：</div>
                    <div class="detail-content">${map.bianhao}</div>
                </div>
                <div class="detail detail-text">
                    <div class="detail-title">货物：</div>
                    <div class="detail-content">${map.huowu}</div>
                </div>
                <div class="detail detail-text">
                    <div class="detail-title">目的地：</div>
                    <div class="detail-content">${map.mudidi}</div>
                </div>
                <div class="detail detail-text">
                    <div class="detail-title">发货地：</div>
                    <div class="detail-content">${map.fahuodi}</div>
                </div>
                <div class="detail detail-text">
                    <div class="detail-title">发货人电话：</div>
                    <div class="detail-content">${map.fahuorendianhua}</div>
                </div>
                <div class="detail detail-text">
                    <div class="detail-title">发货人：</div>
                    <div class="detail-content">${map.fahuoren}</div>
                </div>
                <div class="detail detail-text">
                    <div class="detail-title">收货人电话：</div>
                    <div class="detail-content">${map.shouhuorendianhua}</div>
                </div>
                <div class="detail detail-text">
                    <div class="detail-title">收货人：</div>
                    <div class="detail-content">${map.shouhuoren}</div>
                </div>
                <div class="detail detail-money">
                    <div class="detail-title">金额：</div>
                    <div class="detail-content">${map.jine}</div>
                </div>
                <div class="detail detail-select">
                    <div class="detail-title">区域：</div>
                    <div class="detail-content"><ssm:sql var="mapquyu11" type="find">SELECT quyu,id FROM quyu where id='${map.quyu}'</ssm:sql>${mapquyu11.quyu}</div>
                </div>
                <div class="detail detail-select">
                    <div class="detail-title">运输：</div>
                    <div class="detail-content"><ssm:sql var="mapyunshu12" type="find">SELECT yunshu,id FROM yunshu where id='${map.yunshu}'</ssm:sql>${mapyunshu12.yunshu}</div>
                </div>
                <div class="detail detail-textuser">
                    <div class="detail-title">添加人：</div>
                    <div class="detail-content">${map.tianjiaren}</div>
                </div>
                <div class="detail detail-textuser">
                    <div class="detail-title">操作人：</div>
                    <div class="detail-content">${map.caozuoren}</div>
                </div>
                <div class="detail detail-textarea">
                    <div class="detail-title">备注：</div>
                    <div class="detail-content">${map.beizhu}</div>
                </div>
            </div>

            <div class="button-list mt10">
                <div class="">
                    <button type="button" class="btn btn-default" onclick="history.go(-1);">返回</button>
                    <button type="button" class="btn btn-default" onclick="window.print()">打印本页</button>
                </div>
            </div>
        </div>
    </div>
</div>
<%@ include file="foot.jsp" %>

