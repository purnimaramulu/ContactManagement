<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome Page</title>
</head>
<body style="text-align: center">
	<h1 style="color: green">Welcome User,</h1>
	<div align="center" id="main">
		<form action="submit" method="post">
			<table border="4" bordercolor=grey>
				<tr>
					<td>Name</td>
					<td><input type="text" name="txtName" id="txtName" required/></td>
				</tr>
				<tr>
					<td>Emp.ID</td>
					<td><input type="text" name="txtEmpID" id="txtEmpID" required/></td>
				</tr>
				<tr>
					<td>Emp Mobile number</td>
					<td><input type="text" name="txtnumber" id="txtnumber" required/></td>
				</tr>
				<tr>
					<td colspan="2" style="text-align: center"><input type="submit"
						id="Submit" value="Submit" /></td>
				</tr>
			</table>
		</form>
		<br>
		<a href="retrival">View Record</a>
	</div>
	<br>
	${msg }
</body>
</html>