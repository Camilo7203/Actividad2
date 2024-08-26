<%@ page import="java.io.*, java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Tu Cuento</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
        <link rel="stylesheet" type="text/css" href="stylesCuentos.css">
    
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
                    <li><a href="formulario.jsp">Generar Cuento</a></li>
                </ul>
            </nav>
        </div>
    </header>
    <main>
        <h1>Tu Cuento</h1>

        <%
            // Obtener datos del formulario
            String nombres = request.getParameter("nombres");
            String apodo = request.getParameter("apodo");
            String cabello = request.getParameter("cabello");
            String ojos = request.getParameter("ojos");
            String edad = request.getParameter("edad");
            String hobby = request.getParameter("hobby");

            // Directorio donde se encuentran los archivos de cuentos
            String cuentosDirPath = application.getRealPath("cuentos/");
            File cuentosDir = new File(cuentosDirPath);

            // Directorio donde se encuentran las imágenes de cuentos
            String imagenesDirPath = application.getRealPath("imagenesCuentos/");

            // Obtener la lista de archivos en la carpeta
            File[] archivos = cuentosDir.listFiles();
            if (archivos != null && archivos.length > 0) {
                // Seleccionar un archivo aleatorio
                Random random = new Random();
                int indiceSeleccionado = random.nextInt(archivos.length);
                File archivoSeleccionado = archivos[indiceSeleccionado];

                // Seleccionar la imagen correspondiente (formato .webp)
                String nombreImagen = "imagen" + (indiceSeleccionado + 1) + ".webp";
                String imagenPath = imagenesDirPath + File.separator + nombreImagen;
                File imagenSeleccionada = new File(imagenPath);

                // Verificar si la imagen existe y mostrarla
                if (imagenSeleccionada.exists()) {
                    out.println("<img src='imagenesCuentos/" + nombreImagen + "' alt='Imagen del Cuento' style='width:100%; max-width:600px; margin-bottom:20px;'>");
                } else {
                    out.println("<p>No se encontró la imagen para este cuento.</p>");
                }

                // Leer el contenido del archivo seleccionado
                StringBuilder cuentoContenido = new StringBuilder();
                try (BufferedReader reader = new BufferedReader(new FileReader(archivoSeleccionado))) {
                    String line;
                    while ((line = reader.readLine()) != null) {
                        cuentoContenido.append(line).append("\n");
                    }
                } catch (IOException e) {
                    e.printStackTrace();
                    out.println("Ocurrió un error al leer el archivo: " + e.getMessage());
                }

                // Reemplazar los placeholders con los datos del usuario
                String cuentoTexto = cuentoContenido.toString();
                cuentoTexto = cuentoTexto.replace("{nombres}", nombres)
                                         .replace("{apodo}", apodo)
                                         .replace("{cabello}", cabello)
                                         .replace("{ojos}", ojos)
                                         .replace("{edad}", edad)
                                         .replace("{hobby}", hobby);

                // Mostrar el cuento en la página
                out.println("<p>" + cuentoTexto + "</p>");
            } else {
                out.println("<p>No se encontraron cuentos en la carpeta.</p>");
            }
        %>

        <!-- Botón para generar otro cuento aleatorio -->
        <form action="generarCuento.jsp" method="post">
            <input type="hidden" name="nombres" value="<%= nombres %>">
            <input type="hidden" name="apodo" value="<%= apodo %>">
            <input type="hidden" name="cabello" value="<%= cabello %>">
            <input type="hidden" name="ojos" value="<%= ojos %>">
            <input type="hidden" name="edad" value="<%= edad %>">
            <input type="hidden" name="hobby" value="<%= hobby %>">
            <input type="submit" value="Generar otro cuento">
        </form>
    </main>
    <footer>
        <p>&copy; 2024 Creador de Cuentos</p>
    </footer>
</body>
</html>
