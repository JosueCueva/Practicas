<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.productos.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
<title>JC Deport</title>
<link href="css/estilos.css" rel="stylesheet" type="text/css">
</head>
	<body>
	<main>
	<header>
		<a href="index.jsp">
			<img src="imagenes/Nombre.png" width="500" height="85"/>
		</a>
	</header>
	<nav>
		<a href="index.jsp">Inicio</a>
		<a href="consulta.jsp">Ver Productos</a>
		<a href="Consulta_Categoria.jsp">Buscar por categoria</a>
		<a href="registrar_producto.jsp">Registrar Productos</a>
		<a href="registro_user.jsp">Registrar Usuario</a>
		<a href="modificar_eliminar.jsp">Modificar | Eliminar</a>
	</nav>
	<section class="flex-container">
			<%
				String nombre=request.getParameter("txtNombre");
				String cedula=request.getParameter("txtCedula");
				String contra=request.getParameter("txtContra");
				String estadoCivil=request.getParameter("cmbCivil");
				String residencia=request.getParameter("rdResidencia");
				String fecha=request.getParameter("fecha");
				String color=request.getParameter("colorFavorito");
				
				Usuario usuario = new Usuario();
				out.print(usuario.ingresarUsuario(nombre,cedula,estadoCivil,46,color,contra,residencia));
			%>
			<br>
				<font color=<%=request.getParameter("colorFavorito")%>> Este es tu color favorito </font>
			<%
				out.print(usuario.consultarUsuarios());
			%>
	</section>
	<footer>
	<ul>
		<li>
		<a href="https://www.facebook.com/israel.gutierrez.15">Facebook</a>
		</li>
		<li>
		<a href="https://www.instagram.com/isragut_17/"> Instagram</a>
		</li>
		<li>
		<a href="https://twitter.com/JosueGu08942151">Twitter</a>
		</li>
	</ul>
	</footer>
	</main> 
	</body>
</html>