<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Tienda de Tecnología</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <header>
        <div class="banner">
            <img src="media/logo.jpg" alt="Logo" class="logo">
            <nav>
            <ul>
                <li><a href="tienda.jsp">Nuestra Tienda On-line</a></li>
                <li><a href="servicios.jsp">Servicios</a></li>
                <li><a href="contacto.jsp">Contáctenos</a></li>
                <li><a href="cotizacion.jsp">Solicitud de Cotización</a></li>
                <li><a href="formulario.jsp">Generar Cuento</a></li>
            </ul>
        	</nav>
        </div>
    </header>
    <main>
        <h1>Bienvenido a Nuestra Tienda de Tecnología</h1>
        <p>Explora nuestros productos más recientes:</p>
        <section class="product-grid">
            <% 
                // Array de ejemplo de productos, puedes reemplazarlo con datos reales
                String[][] products = {
                    {"Laptop Gamer", "media/PC-Gamer.jpg", "Una laptop potente para juegos."},
                    {"Smartphone", "media/Celular.jpg", "Un smartphone de última generación."},
                    {"Auriculares", "media/Auriculares.jpg", "Auriculares con cancelación de ruido."},
                    {"Reloj Inteligente", "media/RelojInteligente.jpg", "Reloj inteligente con múltiples funciones."},
                    {"Teclado Mecánico", "media/TecladoMecanico.jpg", "Teclado mecánico con retroiluminación RGB."},
                    {"Mouse Gaming", "media/MouseGaming.jpg", "Mouse para juegos con alta precisión."},
                    {"Monitor 4K", "media/Monitor-4K.jpg", "Monitor 4K para una calidad de imagen superior."},
                    {"Tablet", "media/Tablet.jpg", "Tablet versátil para todas tus necesidades."}
                };
                
                for (int i = 0; i < products.length; i++) {
                    String name = products[i][0];
                    String image = products[i][1];
                    String description = products[i][2];
            %>
                <div class="product-card">
                    <img src="<%= image %>" alt="<%= name %>" class="product-image">
                    <h2 class="product-name"><%= name %></h2>
                    <p class="product-description"><%= description %></p>
                </div>
            <% } %>
        </section>
    </main>
    <footer>
        <p>&copy; 2024 Tienda de Tecnología</p>
    </footer>
</body>
</html>
