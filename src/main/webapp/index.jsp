<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="styles/main.css" type="text/css"/>
</head>
<body>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<h1>List of albums</h1>

<c:if test="${cookie.firstNameCookie.value != null}">
    <p>Welcome back, <c:out value='${cookie.firstNameCookie.value}'/></p>
</c:if>

<div class="album-list-container">
    <p>
        <a href="download?action=checkUser&amp;productCode=8601">
            Nhạc Tự Hào Dân Tộc
        </a><br>

        <a href="download?action=checkUser&amp;productCode=pf01">
            Nhạc Trữ Tình 
        </a><br>

        <a href="download?action=checkUser&amp;productCode=pf02">
            Nhạc Cách Mạng
        </a><br>

        <a href="download?action=checkUser&amp;productCode=jr01">
            Nhạc Trẻ - Pop Music
        </a>
    </p>
</div>


</body>
</html>