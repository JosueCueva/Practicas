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
			<form action="ResultadoRegistro.jsp" method="post">

                <table border="0">
                    <tr>
                        <td>Id:<input type="number" name="txtNumero" maxlength="10"
                            required />*
                        </td>
                    </tr>

                    <tr>
                        <td>Categoria
                        <%
                        	Categoria categoria = new Categoria();
                        	String combo = categoria.mostrarCategoria();
                        	out.print(combo);
                        %>
                        </td>
                    </tr>

                    <tr>
                        <td>Descripcion<input type="text" name="txtDescribcion"
                            minlength="10" />
                        </td>
                    </tr>

                    <tr>
                        <td>Precio<input type="number" name="txtPrecio" />
                        </td>
                    </tr>

                    <tr>
                        <td>Cantidad<input type="number" name="txtCant" />
                        </td>
                    </tr>

                    <tr>
                        <td><input type="submit" /> <input type="reset" /></td>
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