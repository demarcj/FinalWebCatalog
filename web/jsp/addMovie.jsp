<%--
  Created by IntelliJ IDEA.
  User: paperspace
  Date: 3/9/2017
  Time: 3:29 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<html>
<head>
    <title id="title"></title>
</head>
<body>
<%
    Class.forName("com.mysql.jdbc.Driver");
    Connection connection = DriverManager.getConnection(
            "jdbc:mysql://localhost:3306/test",
            "jdbc",
            "java1234");
    Statement statement = connection.createStatement();
    int result = statement.executeUpdate(
            "INSERT INTO movielist " +
                    "(movieTitle, genre, yearList, price)" +
                    "VALUES ('" + request.getParameter("movieTitle")
                    + "','" + request.getParameter("genre")
                    + "','" + request.getParameter("yearList")
                    + "','" + request.getParameter("price")
                    +"');");
%>
<div class="container">
    <h1>Registration form processed</h1>
    <p>Your first name:</p><p><%= request.getParameter("movieTitle")%></p>
    <p>Your last name:</p><p><%= request.getParameter("genre")%></p>
    <p>Your email:</p><p><%= request.getParameter("yearList")%></p>
    <p>Your phone number:</p><p><%= request.getParameter("price")%></p>
</div>
<%
    if (statement != null) {
        statement.close();
    }
    if (connection != null) {
        connection.close();
    }
%>
</body>
</html>
