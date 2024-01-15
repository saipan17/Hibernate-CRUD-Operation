<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import = "HibernateWebProj.Employee"
    import = "HibernateWebProj.EmployeeInformation"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Data</title>
</head>
<body>
<%
String id_val = request.getParameter("id");

int id = Integer.parseInt(id_val);

String name = request.getParameter("nam");

String city = request.getParameter("cit");

out.println("Succesfully Submitted");

Employee emp = new Employee();

emp.setId(id);
emp.setName(name);
emp.setCity(city);

EmployeeInformation e1 = new EmployeeInformation();

boolean res = e1.saveData(emp);

out.println(res);

//for displying the database in user interface

out.println("<br><a href='DisplayInfromation.jsp'>Display Information</a>");


%>

</body>
</html>