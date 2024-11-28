<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="expires" content="-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Internet Hotspot - Log in</title>
    <link rel="stylesheet" href="css/style.css">
    <link href="css/style.css" rel="stylesheet" type="text/css"/>
</head>

<body>

    <!-- Carousel -->
    <div class="carousel">
        <div class="carousel-images">
            <img src="img/nuevo.png" alt="Banner 1" class="carousel-image">
            <img src="img/cb.png" alt="Banner 2" class="carousel-image">
            <img src="img/j7.jpg" alt="Banner 3" class="carousel-image">
        </div>
        <button class="next" onclick="moveSlide(1)">&#10095;</button>
    </div>

    <script>
        let currentIndex = 0;
        const slides = document.querySelectorAll('.carousel-image');
        let autoSlideInterval;

        function moveSlide(direction) {
            currentIndex += direction;
            if (currentIndex >= slides.length) {
                currentIndex = 0;
            }
            updateCarousel();
        }

        function updateCarousel() {
            const offset = -currentIndex * 100;
            document.querySelector('.carousel-images').style.transform = translateX(${offset}%);
        }

        function startAutoSlide() {
            autoSlideInterval = setInterval(() => {
                moveSlide(1);
            }, 6000); // Cambiar cada 6 segundos
        }

        startAutoSlide();
    </script>

    <!-- Navigation -->
    <nav>
        <ul class="menu">
            <li><a href="#inicio">Historia</a></li>
            <li><a href="#Educacion">Ofertas Educativas</a></li>
            <li><a href="#Aspirantes">Aspirantes</a></li>
            <li><a href="#">Contactanos</a></li>
        </ul>
    </nav>

    <!-- Main Login Form -->
    <div class="main">
        <div class="wrap animated fadeIn">
            <form id="loginForm" action="#" method="post">
                <svg class="logo" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 174 42">
                    <!-- Logo SVG can go here -->
                </svg>

                <div class="fondo">
                    <label>
                        <img class="ico" src="img/user.svg" alt="#"/>
                        <input id="usuario" name="username" type="text" placeholder="Ingrese su Usuario" style="width: 100%;"><br>
                    </label>

                    <label>
                        <img class="ico" src="img/password.svg" alt="#"/>
                        <input id="contrase�a" name="password" type="password" placeholder="Ingrese su Contrase�a" style="width: 100%"><br>
                    </label>

                    <section>
                        <label>
                            <select name="opcion" id="opcion" style="width: 50%;">
                                <option value="" disabled selected>Seleccionar</option>
                                <option value="alumno">Alumno</option>
                                <option value="docente">Docente</option>
                                <option value="servicio">Servicio Social</option>
                            </select>
                        </label>
                    </section>

                    <input type="submit" value="Acceso"/>
                </div>
            </form>
        </div>
    </div>

    <script>
        document.getElementById("loginForm").addEventListener("submit", function(event) {
            event.preventDefault(); // Prevent form submission

            var usuario = document.getElementById("usuario").value;
            var contrase�a = document.getElementById("contrase�a").value;
            var opcion = document.getElementById("opcion").value;

            // Validate form fields
            if (usuario.trim() === "" || contrase�a.trim() === "" || opcion === "") {
                alert("Faltan datos por ingresar.");
                return;
            }

            // Validate user credentials and redirect
            if (usuario === "vasni" && contrase�a === "12345" && opcion === "alumno") {
                window.location.href = "alumno.jsp"; // Redirect to student page
            } else if (usuario === "nicolas" && contrase�a === "12345" && opcion === "alumno") {
                window.location.href = "alumno.jsp"; // Redirect to student page
            } else if (usuario === "edgardo" && contrase�a === "12345" && opcion === "docente") {
                window.location.href = "docente.jsp"; // Redirect to teacher page
            } else if (usuario === "danna" && contrase�a === "12345" && opcion === "servicio") {
                window.location.href = "servicio.jsp"; // Redirect to service social page
            } else {
                alert("Usuario, contrase�a o opci�n incorrecta.");
            }
        });
    </script>

</body>

</html>