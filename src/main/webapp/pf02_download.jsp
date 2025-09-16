<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="styles/main.css" type="text/css"/>
</head>
<body>

<h1>Downloads</h1>

<h2>Nhạc Cách Mạng</h2>
    
<table>
<tr>
    <th>Song title</th>
    <th>Audio Format</th>
</tr>
<tr>
    <td>Đoàn Ca (Thanh Niên Làm Theo Lời Bác)</td>
    <td><a href="${pageContext.request.contextPath}/musicStore/sound/${productCode}/CM2.mp3">MP3</a></td>
</tr>
<tr>
    <td>Hành Khúc Ngày Và Đêm</td>
    <td><a href="${pageContext.request.contextPath}/musicStore/sound/${productCode}/CM1.mp3">MP3</a></td>
</tr>
</table>

<p><a href="?action=viewAlbums">View list of albums</a></p>

<p><a href="?action=viewCookies">View all cookies</a></p>

</body>
</html>