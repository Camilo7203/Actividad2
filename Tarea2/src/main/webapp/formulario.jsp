<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Crear tu Cuento</title>
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
                    <li><a href="cotizacion.jsp">Solicitud de Cotización</a></li>
                </ul>
            </nav>
        </div>
    </header>
    <main>
        <h1>Crea tu Cuento</h1>
        <form action="generarCuento.jsp" method="post">
            <label for="nombres">Nombres y Apellidos:</label>
            <input type="text" id="nombres" name="nombres" required><br>

            <label for="apodo">Apodo:</label>
            <input type="text" id="apodo" name="apodo" required><br>

            <label for="cabello">Color de Cabello:</label>
            <input type="text" id="cabello" name="cabello" required><br>

            <label for="ojos">Color de Ojos:</label>
            <input type="text" id="ojos" name="ojos" required><br>

            <label for="edad">Edad:</label>
            <input type="number" id="edad" name="edad" required><br>

            <label for="hobby">Hobby:</label>
            <input type="text" id="hobby" name="hobby" required><br>

            <input type="submit" value="Continuar">
        </form>
    </main>
    <footer>
        <p>&copy; 2024 Creador de Cuentos</p>
    </footer>
</body>
</html>
