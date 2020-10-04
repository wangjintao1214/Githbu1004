<%--
  Created by IntelliJ IDEA.
  User: 86182
  Date: 2020/10/4
  Time: 15:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<script type="text/javascript" src="/static/js/jquery-1.12.4.js"></script>
<body>
<form action="/sel" method="post">
    <p align="center">
        请选择区域：
        <select name="goodsdistrict">
            <option value="1">朝阳</option>
            <option value="2">海淀</option>
            <option value="3">丰台</option>
            <option value="4">西城</option>
            <option value="5">昌平</option>
        </select>
        <input type="submit" value="查询">
    </p>
</form>
</body>
</html>
<script type="text/javascript">

</script>
