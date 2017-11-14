<%@ page import="java.util.List" %>
<%@ page import="com.google.appengine.api.datastore.Entity" %><html>
<body>


	<a href="hello">Add Customer</a>
	<hr />

	<h2>All Contacts </h2>
	<table align="center" border="1">
		<thead>
			<tr>
				<td>Name</td>
				<td>Email</td>
				
			</tr>
		</thead>
		<%

		    List<Entity> Person = (List<Entity>)request.getAttribute("contactList");
		    for(Entity e : Person){

		%>
			<tr>
			  <td><%=e.getProperty("name") %></td>
			  <td><%=e.getProperty("email") %></td>
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
