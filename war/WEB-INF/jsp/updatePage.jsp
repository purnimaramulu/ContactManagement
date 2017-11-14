<%@ page
	import="java.util.List,com.todo.jdo.EmployeeDetails,com.google.appengine.api.datastore.KeyFactory"%>
<html>
<head>
<title>EmployeeDetail-Update</title>
</head>
<body>
	<form action="/update" method="post">
		<table border="2" style="text-align: center">
			<thead>
				<tr>
					<td>Name</td>
					<td>Empnumber</td>
					<td>EmpID</td>
					
					<td>- - -</td>
				</tr>
			</thead>
			<%
				String ID = ((EmployeeDetails) request.getAttribute("EmployeeDetail")).getEmpid();
			String number = ((EmployeeDetails) request.getAttribute("EmployeeDetail")).getEmpnumber();
			%>
			<tr>
				<td><input type="text" name="txtNameUpdate" required /></td>
				<td><input type="text" name="txtnumber"  value=<%=number%> required /></td>
				<td><input type="text" name="txtEmpIDUpdate" value=<%=ID%>
					disabled="disabled"></td>
				
				<td><input type="submit" value="Update" /></td>
			
			</tr>
		</table>
		<td><input type="hidden" name="txtEmpIDUpdateH" value=<%=ID%>></td>
	</form>
</body>
</html>
