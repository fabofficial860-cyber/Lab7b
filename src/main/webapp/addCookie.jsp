<%@ page import="javax.servlet.http.Cookie" %>

<!DOCTYPE html>
<html>
<head>
<title>Cookie Created</title>
</head>
<body>

<%
String name = request.getParameter("cname");
String domain = request.getParameter("cdomain");
int age = Integer.parseInt(request.getParameter("cage"));

// Create cookie
Cookie cookie = new Cookie(name, name);

// Set expiry
cookie.setMaxAge(age);

// Set domain (optional)
if (domain != null && !domain.isEmpty()) {
    cookie.setDomain(domain);
}

// Add cookie
response.addCookie(cookie);
%>

<h2>Cookie Added Successfully!</h2>

<p>Name: <%= name %></p>
<p>Domain: <%= domain %></p>
<p>Expiry Time: <%= age %> seconds</p>

<br>
<a href="showCookies.jsp">Go to Active Cookie List</a>

</body>
</html>