<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import = "HibernateWebProj.Employee"
    import = "HibernateWebProj.EmployeeInformation"
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Value</title>
</head>
<body>
<%
int emp_id = Integer.parseInt(request.getParameter("id1"));
String name = request.getParameter("nam1");
String city = request.getParameter("cit1");

Employee emp = new Employee();
emp.setId(emp_id);
emp.setName(name);
emp.setCity(city);

EmployeeInformation ei = new EmployeeInformation();

ei.updateRecords(emp);

response.sendRedirect("DisplayInfromation.jsp");
%>

</body>
</html>