<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.productos.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
<title>Productos | JC Deport</title>
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
		<form action="resultado_user.jsp" method="post">
			<table border="0">
				<tr>				
					<td>Nombre:<input type="text" name="txtNombre" maxlength="50" required />*</td>
				</tr>
				<tr>				
					<td>Cedula:<input type="text" name="txtCedula" maxlength="10" required/>*</td>
				</tr>
				<tr>				
					<td>Contraseña:<input type="password" name="txtContra" required/>*</td>
				</tr>
				<tr>
					<td>Estado Civil
					<select name="cmbCivil">
						<option value="Soltero">Solter@</option>
						<option value="Casado">Casad@</option>
						<option value="Divorciado">Divorciad@</option>
						<option value="Viudo">Viud@</option>
					</select>
					</td>
				</tr>
				<tr>
					<td>Sector de residencia:
						<input type="radio" name="rdResidencia" value="Norte"/>Norte 
						<input type="radio" name="rdResidencia" value="Centro"/>Centro
						<input type="radio" name="rdResidencia"value="Sur"/>Sur
					</td>
				</tr>
				<tr>
					<td>Fecha de nacimiento</td>
					<td><input type="date" name="fecha"/></td>
				</tr>
				<tr>
					<td>Color Favorito:<input type="color" name="colorFavorito"/></td>
				</tr>
				<tr>				
					<td><input type="submit"/>
					<input type="reset"/></td>
				</tr>
				</table>
			</form>
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