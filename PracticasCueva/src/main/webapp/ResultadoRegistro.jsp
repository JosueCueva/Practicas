<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.productos.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
<title>Busqueda por Categoria | JC Deport</title>
<link href="css/estilos_registro.css" rel="stylesheet" type="text/css">
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
		<div class="agrupar">
			 <%
			 	int id=Integer.parseInt(request.getParameter("txtNumero"));
			 	int cat=Integer.parseInt(request.getParameter("cmbCategoria"));
			 	String desc=request.getParameter("txtDescribcion");
			 	int cant=Integer.parseInt(request.getParameter("txtCant"));
			 	Double precio=Double.parseDouble(request.getParameter("txtPrecio"));
			 	Producto producto=new Producto();
			 	out.print(producto.ingresarProducto(id,cat,desc,cant,precio));
			 %>
		</div>
	</section>
	<footer >
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