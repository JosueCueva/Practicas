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
				int cod=Integer.parseInt(request.getParameter("cod"));
				Producto producto = new Producto();
				producto.ConsulEditarProductos(cod);
			%>
			<form action="EditarProductos.jsp" method="post">
				<table>
					<tr>
						<td>Codigo Producto:</td>
						<td><input type = "text" name="editarcod" value="<%=cod%>"/></td>
					</tr>
					
					<tr>
						<td>Categoria:</td>
						<td><output ><%=producto.getCategoria()%></output></td>
					</tr>
					
					<tr>
						<td>Descripcion:</td>
						<td><input type = "text" name="editardesc" value="<%=producto.getNombre()%>"/></td>
					</tr>
					
					<tr>
						<td>Precio:</td>
						<td><input type = "text" name="editarprec" value="<%=producto.getPrecio()%>"/></td>
					</tr>
					
					<tr>
						<td>Cantidad:</td>
						<td><input type = "text" name="editarcant" value="<%=producto.getCantidad()%>"/></td>
					</tr>
				
				</table>
				<br />
				<br /><input type="submit" name="Actualizar"/>
				
				
			</form>
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