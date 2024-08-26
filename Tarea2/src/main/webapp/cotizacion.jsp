<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Solicitud de Cotización</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <header>
        <div class="banner">
            <img src="media/logo.jpg" alt="Logo" class="logo">
            <nav>
            <ul>
                <li><a href="home.jsp">Inicio</a></li>
                <li><a href="tienda.jsp">Nuestra Tienda On-line</a></li>
                <li><a href="servicios.jsp">Servicios</a></li>
                <li><a href="contacto.jsp">Contáctenos</a></li>
                <li><a href="formulario.jsp">Generar Cuento</a></li>
            </ul>
        	</nav>
        </div>
    </header>
    <main>
        <h1>Solicitud de Cotización</h1>
        <form action="cotizacionEnviada.jsp" method="post">
            <label for="name">Nombre:</label>
            <input type="text" id="name" name="name" required><br>
            <label for="email">Correo Electrónico:</label>
            <input type="email" id="email" name="email" required><br>
            <label for="details">Detalles del Producto:</label>
            <textarea id="details" name="details" required></textarea><br>
            <input type="submit" value="Solicitar Cotización">
        </form>
    </main>
    <footer>
        <p>&copy; 2024 Tienda de Tecnología</p>
    </footer>
</body>
</html>
