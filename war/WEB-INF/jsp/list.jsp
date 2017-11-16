<%@ page import="java.util.List" %>
<%@ page import="com.google.appengine.api.datastore.Entity" %><html>
<body>


	<a href="login">Add Customer</a>
	<hr />

	<h2>All Contacts </h2>
	<table align="center" border="1">
		<thead>
			<tr>
				<td>Name</td>
				<td>Email</td>
				<td>mobilenumber</td>
				<td>Adress</td>
				
			</tr>
		</thead>
		<%

		    List<Entity> Person = (List<Entity>)request.getAttribute("contactList");
		    for(Entity e : Person){

		%>
			<tr>
			  <td><%=e.getProperty("name") %></td>
			  <td><%=e.getProperty("email") %></td>
			  <td><%=e.getProperty("mobilenumber") %></td>
			   <td><%=e.getProperty("Adress") %></td>
			  <td><a href="update/<%=e.getProperty("name")%>">Update</a>
                             | <a href="delete/<%=e.getProperty("name")%>">Delete</a></td>
			</tr>
		<%
			}
		%>
	</table>

</body>
<style>
body {
      font-family: serif;
  background: #e2dedb;
  color: #b3aca7;
}

td {
    color: firebrick;
}
h2 {
    text-align: center;
      font-family: serif;
}
</style>
</html>
