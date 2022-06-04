<%@ page language="java" import="com.jntoo.db.*" pageEncoding="utf-8" %>
 <%@page import="java.util.*" %>
 <%@page import="com.spring.util.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
    <head>
        <title>My JSP 'adminyanzheng.jsp' starting page</title>
    </head>
    <body>
        <%
        String id, biao;
        boolean isShaxiang = false;
        if (request.getParameter("out_trade_no") != null) {
            String[] out_trade_no = request.getParameter("out_trade_no").split("\\-");
            id = out_trade_no[2];
            biao = out_trade_no[1];
            isShaxiang = true;
        } else {
            id = request.getParameter("id");
            biao = request.getParameter("biao");
        }
        Map order = DB.name(biao).find(id);
        
        String sql = "update " + biao + " set iszf='是' where id='" + id + "'";
        DB.execute(sql);
        
        out.print("<script>alert('支付成功!!');opener.location.reload();window.close();</script>");
        %>

    </body>
</html>
