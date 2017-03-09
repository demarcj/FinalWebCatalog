<%--
  Created by IntelliJ IDEA.
  User: paperspace
  Date: 3/9/2017
  Time: 4:23 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="container">
    <form action="updateMovie.jsp" method="post">
        <input type="hidden" name="id" value="<%= request.getParameter("id") %>">
        <label for="movieTitle">Title</label>
        <input type="text" id="movieTitle" name="movieTitle" value="<%= request.getParameter("movieTitle")%>">
        <label for="genre">Genre</label>
        <input type="text" id="genre" name="genre" value="<%= request.getParameter("genre")%>">
        <label for="yearList">Year</label>
        <input type="text" id="yearList" name="yearList" value="<%= request.getParameter("yearList")%>">
        <label for="price">Price</label>
        <input type="text" id="price" name="price" value="<%= request.getParameter("price")%>">
        <label for="image">Image Url</label>
        <input type="text" id="image">
        <label for="description">Description</label>
        <textarea name="" id="description" cols="30" rows="10"></textarea>
        <input type="submit">
        <input type="reset">
    </form>
</div>
</body>
</html>
