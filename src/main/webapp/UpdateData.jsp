<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Data</title>
</head>
<body>
<%
int emp_id = Integer.parseInt(request.getParameter("id"));
String name = request.getParameter("name");
String city = request.getParameter("City");

out.println("<form action='UpdateValue.jsp'>");

out.println("<br><input type='text' name='id1' value='" + emp_id + "' readonly>");

out.println("<br><input type='text' name='nam1' value='" + name + "'>");
out.println("<br><input type='text' name='cit1' value='" + city + "'>");
out.println("<input type='Submit' value='Save'>");
out.println("</form>");
%>

</body>
</html>