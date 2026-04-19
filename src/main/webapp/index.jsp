<%@ page language="java" %>
<!DOCTYPE html>
<html>
<head>
<title>Add Cookie</title>
</head>
<body>

<h2>Cookie Management</h2>

<form action="addCookie.jsp" method="post">
    Name: <input type="text" name="cname" required><br><br>
    Domain: <input type="text" name="cdomain"><br><br>
    Expiry (seconds): <input type="number" name="cage" required><br><br>
    
    <input type="submit" value="Add Cookie">
</form>

</body>
</html>