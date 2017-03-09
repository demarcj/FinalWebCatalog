<%--
  Created by IntelliJ IDEA.
  User: paperspace
  Date: 3/9/2017
  Time: 4:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script src="../javascript/script.js"></script>
    <script src="../javascript/template.js"></script>
    <link rel="stylesheet" href="../css/style.css">
    <title id="title"></title>
</head>
<body>
<div>
    <h1><%=request.getParameter("movieTitle")%></h1>
</div>
</body>
</html>
