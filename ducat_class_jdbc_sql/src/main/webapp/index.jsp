<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<%
if (session.getAttribute("loginstatus") != null) {
	response.sendRedirect("dashboard.jsp");
}
%>

<body>

	<form action="login">

		<table>

			<tr>

				<td>Email :</td>
				<td><input type="text" name="email"></td>
			</tr>
			<tr>
				<td>Password :</td>
				<td><input type="text" name="password"></td>
			</tr>
			<tr>
				<td><input type="submit"></td>
			</tr>
			<tr>
				<td><a href="register.jsp">Register ?</a></td>
			</tr>
		</table>
	</form>
</body>
</html>