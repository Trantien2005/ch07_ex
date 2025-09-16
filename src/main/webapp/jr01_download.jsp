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

<h2>Nhạc Trẻ - Pop Music</h2>
    
<table>
<tr>
    <th>Song title</th>
    <th>Audio Format</th>
</tr>
<tr>
    <td>Xin đừng lặng im</td>
    <td><a href="${pageContext.request.contextPath}/musicStore/sound/${productCode}/Lang_im.mp3">MP3</a></td>
</tr>
<tr>
    <td>Vợ người ta</td>
    <td><a href="${pageContext.request.contextPath}/musicStore/sound/${productCode}/Vo-Nguoi-Ta.mp3">MP3</a></td>
</tr>
</table>

<p><a href="?action=viewAlbums">View list of albums</a></p>

<p><a href="?action=viewCookies">View all cookies</a></p>

</body>
</html>
