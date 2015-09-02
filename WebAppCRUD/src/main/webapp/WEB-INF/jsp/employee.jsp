<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="/WEB-INF/jsp/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employee Management</title>
</head>

<body>

<h1>Employee Data</h1>
<form:form action="employee.do" method="POST" commandName="employee">
	<table>
		<tr>
			<td>Employee ID</td>
			<td><form:input path="employeeID" /></td>
		</tr>
		<tr>
			<td>First name</td>
			<td><form:input path="firstName" /></td>
		</tr>
		<tr>
			<td>Last name</td>
			<td><form:input path="lastName" /></td>
		</tr>
		<tr>
			<td>Role</td>
			<td><form:input path="role" /></td>
		</tr>
		<tr>
			<td>Experience</td>
			<td><form:input path="experience" /></td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="submit" name="action" value="Add" />
				<input type="submit" name="action" value="Edit" />
				<input type="submit" name="action" value="Delete" />
				<input type="submit" name="action" value="Search" />
			</td>
		</tr>
	</table>
</form:form>
<br>
<table border="1">
	<th>ID</th>
	<th>First name</th>
	<th>Last name</th>
	<th>Role</th>
	<th>Experience</th>
	<c:forEach items="${employeeList}" var="employee">
		<tr>
			<td>${employee.employeeID}</td>
			<td>${employee.firstName}</td>
			<td>${employee.lastName}</td>
			<td>${employee.role}
			<td>${employee.experience}</td>
		</tr>
	</c:forEach>
</table>


</body>
</html>