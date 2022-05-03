<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Editar Usuario</title>
</head>
<body>

	<%@page import="com.crudjsp.bean.Usuario, com.crudjsp.dao.UsuarioDao" %>
	<%
		String id = request.getParameter("id");
		Usuario usuario = UsuarioDao.getRegistroById(Integer.parseInt(id));
	%>
	
	<h1>Edição do usuario </h1>
	
	<form action="salvarusuario.jsp" method="post">
		<input type="hidden" name="id" value="<%=usuario.getId()%>"/>
		<table>
			<tr>
				<td>Nome: </td>
				<td><input type="text" name="nome" value="<%=usuario.getNome()%>"/></td>
			</tr>
			<tr>
				<td>Password: </td>
				<td><input type="password" name="password" value="<%=usuario.getPassword()%>"/></td>
				
			</tr>
			<tr>
				<td>Email: </td>
				<td><input type="email" name="email" value="<%=usuario.getEmail()%>"/></td>
				
			</tr>
			<tr>
				<td>Sexo: </td>
				<td><input type="radio" name="sexo" value="Masculino"/>Masculino
					<input type="radio" name="sexo" value="Feminino"/>Feminino
				</td>
				
			</tr>
			<tr>
				<td>Pais: </td>
				<td>
					<select name="pais">
						<option>BRASIL</option>
						<option>EUA</option>
						<option>ARG</option>
						<option>ESP</option>
					</select>
				</td>
				
			</tr>
			<tr>
				<td>
					<input type="submit" value="Editar usuario"></input>
				</td>
			</tr>
		</table>
	</form>

</body>
</html>