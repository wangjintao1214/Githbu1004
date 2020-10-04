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
<form action="/doupd" method="post">
<table border="1px" align="center" width="500px">
    <tr>
        <td>商品编号：</td>
        <td>
            <input type="hidden" value="${goods.goodsdistrict}">
            <input type="text" value="${goods.id}" name="id">
        </td>
    </tr>
    <tr>
        <td>商品名称：</td>
        <td><input type="text" value="${goods.goodsname}" name="goodsname"></td>
    </tr>
    <tr>
        <td>商品价格：</td>
        <td><input type="text" value="${goods.goodsprice}" name="goodsprice"></td>
    </tr>
    <tr>
        <td>库存数量：</td>
        <td><input type="text" value="${goods.goodscount}" name="goodscount"></td>
    </tr>
    <tr>
        <td>订单状态：</td>
        <td>
            <select name="billstatus">
                <option value="${goods.billstatus==0}">待处理</option>
                <option value="${goods.billstatus==1}">处理中</option>
                <option value="${goods.billstatus==2}">已处理</option>
        </select>
        </td>
    </tr>
    <tr>
        <td align="center" colspan="8">
            <input type="submit" value="修改">
            <input type="button" value="返回" onclick="javascript:history.back(-1)">
        </td>
    </tr>
</table>
</form>
<p style="color: red;" align="center">${msg}</p>
</body>
</html>