<%--
  Created by IntelliJ IDEA.
  User: paperspace
  Date: 3/9/2017
  Time: 4:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<html>
<head>
    <title></title>
</head>
<body>
<%
    //you need this for JDBC with MySQL in version 5
    //even though you're not supposed to
    Class.forName("com.mysql.jdbc.Driver");
    Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "jdbc", "java1234");
    Statement statement = connection.createStatement();
    int result = statement.executeUpdate(
            "DELETE FROM movielist\n" +
                    "WHERE id='" +
                    request.getParameter("id") +
                    "'");
%>
<div class="container">
    <h1>Record Deleted</h1>
    <p><%= request.getParameter("movieTitle") %> was deleted from the database.</p>
</div>
</body>
</html>
