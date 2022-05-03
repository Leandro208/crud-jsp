<%@page import="com.crudjsp.dao.UsuarioDao"%>
<jsp:useBean id="usuario" class="com.crudjsp.bean.Usuario"></jsp:useBean>
<jsp:setProperty property="*" name="usuario"/>
<% 
	int i = UsuarioDao.updateUsuario(usuario);
	response.sendRedirect("viewusuarios.jsp");
%>