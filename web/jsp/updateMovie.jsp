<%--
  Created by IntelliJ IDEA.
  User: paperspace
  Date: 3/9/2017
  Time: 4:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    //you need this for JDBC with MySQL in version 5
    //even though you're not supposed to
    Class.forName("com.mysql.jdbc.Driver");
    Connection connection = DriverManager.getConnection(
            "jdbc:mysql://localhost:3306/test",
            "jdbc",
            "java1234");
    Statement statement = connection.createStatement();
    int result = statement.executeUpdate(
            "UPDATE movielist\n" +
                    "SET\n" +
                    "movieTitle='" + request.getParameter("movieTitle") + "',\n" +
                    "genre='" + request.getParameter("genre") + "',\n" +
                    "yearList='" + request.getParameter("yearList") + "',\n" +
                    "price='" + request.getParameter("price") + "'\n" +
                    "WHERE id='" + request.getParameter("id") + "'\n");
%>
<div class="container">
    <h1><%=request.getParameter("movieTitle")%> is Updated</h1>
    <p class="center"><a href="index.jsp">Back to index</a></p>
</div>
</body>
</html>
