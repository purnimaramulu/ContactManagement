<%@ page
	import="java.util.List,com.todo.jdo.EmployeeDetails,com.google.appengine.api.datastore.KeyFactory"%>
<html>
<head>
<title>EmployeeDetails</title>
</head>
<body>
	<table border="2" style="text-align: center">
		<thead>
			<tr>
				<td>Name</td>
				<td>EmpID</td>
				<td>- - -</td>
			</tr>
		</thead>
		<%
			if (request.getAttribute("employeeList") != null) {
				List<EmployeeDetails> list = (List<EmployeeDetails>) request.getAttribute("employeeList");
				if (!list.isEmpty()) {
					for (EmployeeDetails e : list) {
		%>
		<tr>
			<td><%=e.getName()%></td>
			<td><%=e.getEmpid()%></td>
			<td><a href="update/<%=e.getEmpid()%>">UPDATE</a> | <a
				href="delete/<%=e.getEmpid()%>">DELETE</a></td>
		</tr>
		<%
			}
				}
			}
		%>
	</table>
	${msg}
</body>
</html>