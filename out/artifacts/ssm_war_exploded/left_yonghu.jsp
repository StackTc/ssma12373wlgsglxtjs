<%@ page language="java" import="com.spring.util.*,java.util.*,com.jntoo.db.*,com.jntoo.db.utils.*" pageEncoding="UTF-8" %>
 <%@ taglib prefix="ssm" uri="http://ssm" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<h2><span class="icon-user"></span> 预约管理</h2>
<ul>
    <li>
        <a href="yuyue_add.do" target="right"><span class="icon-caret-right"></span> 预约添加</a>
    </li>
    <li>
        <a href="yuyue_list_tianjiaren.do" target="right"><span class="icon-caret-right"></span> 预约查询</a>
    </li>
</ul>
<h2><span class="icon-user"></span> 订单管理</h2>
<ul>
    <li>
        <a href="dingdan_list_tianjiaren.do" target="right"><span class="icon-caret-right"></span> 订单查询</a>
    </li>
</ul>
<h2><span class="icon-user"></span> 个人中心</h2>
<ul>
    <li>
        <a href="yonghu_updtself.do" target="right"><span class="icon-caret-right"></span> 修改个人资料</a>
    </li>
    <li>
        <a href="mod.do" target="right"><span class="icon-caret-right"></span> 修改密码</a>
    </li>
</ul>
