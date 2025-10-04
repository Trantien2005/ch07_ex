<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="javax.servlet.http.Cookie, java.net.URLDecoder" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="styles/main.css" type="text/css"/>
</head>
<body>

<h1>Cookies</h1>

<p>Here's a table with all of the cookies that this 
browser is sending to the current server.</p>

<table border="1" cellpadding="5" cellspacing="0">
    <tr>
        <th>Name</th>
        <th>Value</th>
    </tr>
    <%
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie c : cookies) {
                String name = c.getName();
                String value = "";
                try {
                    // decode để hiện tiếng Việt và ký tự đặc biệt đúng
                    value = URLDecoder.decode(c.getValue(), "UTF-8");
                } catch (Exception e) {
                    value = c.getValue();
                }
    %>
    <tr>
        <td><%= name %></td>
        <td><%= value %></td>
    </tr>
    <%
            }
        }
    %>
</table>

<p><a href="download?action=viewAlbums">View list of albums</a></p>
<p><a href="download?action=deleteCookies">Delete all persistent cookies</a></p>

</body>
</html>
