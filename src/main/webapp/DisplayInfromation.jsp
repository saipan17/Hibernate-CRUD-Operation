<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    
    import="HibernateWebProj.EmployeeInformation"
    import="HibernateWebProj.Employee"
    import="java.util.List"
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Display Information</title>
</head>
<body>
<%
    EmployeeInformation empinfo = new EmployeeInformation();
    List<Employee> list = empinfo.getAllRecords();
%>
<table border="1">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>City</th>
        <th>Action</th>
    </tr>
    <%
        for (Employee empl : list) {
    %>
    <tr>
        <td><%= empl.getId() %></td>
        <td><%= empl.getName() %></td>
        <td><%= empl.getCity() %></td>
        <td>
            <a href='DeleteSpecific.jsp?id=<%= empl.getId() %>'>Delete</a>
            <a href='UpdateData.jsp?id=<%= empl.getId() %>&name=<%= empl.getName() %>&City=<%= empl.getCity() %>'>Update</a>
        </td>
    </tr>
    <%
        }
    %>
</table>
</body>
</html>
