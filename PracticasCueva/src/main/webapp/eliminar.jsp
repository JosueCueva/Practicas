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
		
				int cod = Integer.parseInt(request.getParameter("editarcod"));
				String nom = request.getParameter("editardesc");
				float pre = Float.parseFloat(request.getParameter("editarprec"));
				int can = Integer.parseInt(request.getParameter("editarcant"));
				Producto mp = new Producto(cod, nom, pre, can);
				boolean actualizado = mp.ModificarProducto(mp);
				if (actualizado == true){
					response.sendRedirect("registro.jsp?");
				} else {
					out.println("Error");
				}
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