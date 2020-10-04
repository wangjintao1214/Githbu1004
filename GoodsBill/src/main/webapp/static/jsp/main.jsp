<%--
  Created by IntelliJ IDEA.
  User: 86182
  Date: 2020/10/4
  Time: 16:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<script type="text/javascript" src="/static/js/jquery-1.12.4.js"></script>
<body>
<table border="1px" align="center" width="500px">
    <tr>
        <td colspan="8"><h2>商品信息</h2></td>
    </tr>
    <tr>
        <td>商品编号</td>
        <td>商品名称</td>
        <td>商品价格</td>
        <td>库存数量</td>
        <td>订单状态</td>
        <td>操作</td>
    </tr>
    <c:forEach items="${goods}" var="goods">
        <tr>
            <td>${goods.id}</td>
            <td>${goods.goodsname}</td>
            <td>${goods.goodsprice}</td>
            <td>${goods.goodscount}</td>
            <td>
                <c:if test="${goods.billstatus==0}">待处理</c:if>
                <c:if test="${goods.billstatus==1}">处理中</c:if>
                <c:if test="${goods.billstatus==2}">已处理</c:if>
            </td>
            <td><a href="/toUpd?id=${goods.id}">修改</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
<%--<script type="text/javascript">
$("tr:odd").css("background-color","pink");
</script>--%>
