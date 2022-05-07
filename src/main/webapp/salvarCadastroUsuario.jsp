<%@ page import="com.crudjsp.dao.UsuarioDao" %>
<jsp:useBean id="u" class="com.crudjsp.bean.Usuario"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>


<%
	int i = UsuarioDao.salvarUsuario(u);
	if(i>0){
		response.sendRedirect("addUsuario-sucess.jsp");
	}else{
		response.sendRedirect("addUsuario--error.jsp");
	}
%>