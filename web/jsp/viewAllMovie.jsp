<%--
  Created by IntelliJ IDEA.
  User: paperspace
  Date: 3/8/2017
  Time: 4:48 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<html>
<head>
    <script src="../javascript/script.js"></script>
    <script src="../javascript/template.js"></script>
    <link rel="stylesheet" href="../css/style.css">
    <title id="title"></title>
</head>
<body>
<%
    //you need this for JDBC with MySQL in version 5
    //even though youre not supposed to
    Class.forName("com.mysql.jdbc.Driver");
    Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "jdbc", "java1234");
    Statement statement = connection.createStatement();
    ResultSet resultset = statement.executeQuery(
            "select id, movieTitle, genre, yearList, price " +
                    "from movielist ORDER BY movieTitle");
%>
<div class="container">
    <h1>Movie List</h1>
    <table>
        <tr>
            <th>Title</th>
            <th>Genre</th>
            <th>Year</th>
            <th>Price</th>
            <th>Detail Page</th>
        </tr>
        <% while(resultset != null && resultset.next()){ %>
        <tr>
            <td> <%= resultset.getString("movieTitle") %></td>
            <td> <%= resultset.getString("genre") %></td>
            <td> <%= resultset.getString("yearList") %></td>
            <td> <%= resultset.getString("price") %></td>
            <td>
                <form method="post" action="detailPage.jsp">
                    <input type="hidden" name="id" value="<%= resultset.getString("id") %>">
                    <input type="hidden" name="movieTitle" value="<%= resultset.getString("movieTitle") %>">
                    <input type="hidden" name="genre" value="<%= resultset.getString("genre") %>">
                    <input type="hidden" name="yearList" value="<%= resultset.getString("yearList") %>">
                    <input type="hidden" name="price" value="<%= resultset.getString("price") %>">
                    <input type="submit" value="View">
                </form>
            </td>
        </tr>
        <% }
            //cleaning up after myself
            if (resultset != null) {
                resultset.close();
            }
            if (statement != null) {
                statement.close();
            }
            if (connection != null) {
                connection.close();
            }
        %>
    </table>
</div>
<script>

</script>
</body>
</html>
