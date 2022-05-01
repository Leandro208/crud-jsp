
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Exibindo usuarios</title>
</head>
<body>
	<%@ page import="com.crudjsp.dao.UsuarioDao, com.crudjsp.bean.Usuario, 
		java.util.*"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	
	<h1>Listagem de usuarios</h1>
	<%
		List<Usuario> list = UsuarioDao.getAllUsuarios();
		request.setAttribute("list", list);
	%>

	<table border="1">
		<tr>
			<th>ID</th>
			<th>NOME</th>
			<th>PASSWORD</th>
			<th>EMAIL</th>
			<th>SEXO</th>
			<th>PAÍS</th>
		</tr>
		<c:forEach items="${list}" var="usuario">
			<tr>
				<td>${usuario.getId()}</td>
				<td>${usuario.getNome()}</td>
				<td>${usuario.getPassword()}</td>
				<td>${usuario.getEmail()}</td>
				<td>${usuario.getSexo()}</td>
				<td>${usuario.getPais()}</td>
			</tr>
		</c:forEach>
	</table>
	
</body>
</html>