<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="HibernateWebProj.EmployeeInformation"
    import="HibernateWebProj.Employee"
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Specific Data</title>
</head>
<body>

<%

out.println("Data is deleted");
String emp_id = request.getParameter("id");

int id = Integer.parseInt(emp_id);

EmployeeInformation ei = new EmployeeInformation();

int x = ei.Delete(id);
response.sendRedirect("DisplayInfromation.jsp");


%>

</body>
</html>
