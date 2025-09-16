<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Download registration</title>
    <link rel="stylesheet" href="styles/main.css" type="text/css"/>
</head>
<body>

<h1>Download registration</h1>

<p>To register for our downloads, enter your name and email address below. Then, click on the Submit button.</p>

<form action="download" method="post">
    <input type="hidden" name="action" value="registerUser">        

    <label>Email:</label>
    <input type="email" name="email" value="<c:out value='${user.email}'/>" required>

    <label>First Name:</label>
    <input type="text" name="firstName" value="<c:out value='${user.firstName}'/>" required>

    <label>Last Name:</label>
    <input type="text" name="lastName" value="<c:out value='${user.lastName}'/>" required> </br>

    <input type="submit" value="Register">
</form>

</body>
</html>
