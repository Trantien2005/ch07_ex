<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>View Cookies</title>
    <link rel="stylesheet" href="styles/main.css">
</head>
<body>

<h1>Cookies</h1>
<p>Here’s a table of all the cookies sent by this browser to the current server:</p>

<table>
  <tr>
    <th>Name</th>
    <th>Value</th>
  </tr>
  <c:forEach var="c" items="${cookie}">
    <tr>
      <td><c:out value="${c.value.name}"/></td>
      <td><c:out value="${c.value.value}"/></td>
    </tr>
  </c:forEach>
</table>

<a href="download?action=viewAlbums">View list of albums</a>
<a href="download?action=deleteCookies">Delete all persistent cookies</a>

</body>
</html>
