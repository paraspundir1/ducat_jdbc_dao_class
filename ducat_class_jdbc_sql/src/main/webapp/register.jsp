<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
	if (session.getAttribute("loginstatus") != null) {
		response.sendRedirect("dashboard.jsp");
	}
	%>

<body>

	<form action="createaccount">

		<table>

			<tr>

				<td>Name :</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>

				<td>Gender :</td>
				<td><select name="gender">
				<option> Male </option>
				<option> Female </option>
					</select></td>
			</tr>
			<tr>

				<td>Address :</td>
				<td><input type="text" name="address"></td>
				
			</tr>
			<tr>

				<td>Email :</td>
				<td><input type="text" name="email"></td>
			</tr>
			<tr>

				<td>Phone :</td>
				<td><input type="text" name="phone"></td>
			</tr>
			
			<tr>
				<td>Password :</td>
				<td> <input type="text" name="password"></td>
			</tr>
			
			<tr>
				<td><input type="submit"></td>
				
			</tr>
			<tr>
				<td><a href="index.jsp">login ?</a></td>
			</tr>
		</table>
	</form>
</body>
</html>