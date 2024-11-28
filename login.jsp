<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="expires" content="-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Internet hotspot - Log in</title>
    <link rel="stylesheet" href="css/style.css">
    <link href="css/style.css" rel="stylesheet" type="text/css"/>
</head>

<body background="img/vainilla.jpg">
  
<div class="carousel">
    
        <div class="carousel-images">
            
            <img src="img/nuevo.png" alt="Banner 1" class="carousel-image">
            <img src="img/cb.png" alt="Banner 2" class="carousel-image">
            <img src="img/j7.jpg" alt="Banner 3" class="carousel-image">
        
        </div>
        <button class="next" onclick="moveSlide(1)">&#10095;</button>
    </div>
    

       <script>
        function doLogin() {
            document.sendin.username.value = document.login.username.value;
            document.sendin.password.value = hexMD5('$(chap-id)' + document.login.password.value + '$(chap-challenge)');
            document.sendin.submit();
            return false;
        }

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
            autoSlideInterval = setInterval(()=> {
                moveSlide(1);
            }, 6000); // Cambiar cada 6 segundos
        }

        startAutoSlide();
   
        </script>
 
             <nav>
        <ul class="menu">
            <li><a href="#inicio">Historia</a></li>
            <li><a href="#Educacion">Ofertas Educativas</a></li>
            <li><a href="#Aspirantes">Aspirantes</a></li>

             <li><a href="#">Contactanos</a></li>
              
     
        </ul>
    </nav>
        <center>
        <div class="video-container">
            <video src="img/video.mp4" width="100%" controls
autoplay muted loop></video></center>
        </div>  
      
    </div>
    
    
    <!-- two other colors

<body class="lite">
<body class="dark">

-->

   <!--$(if chap-id)-->
    <form name="sendin" action="$(link-login-only)" method="post" style="display:none">
        <input type="hidden" name="username"/>
        <input type="hidden" name="password"/>
        <input type="hidden" name="dst" value="$(link-orig)"/>
        <input type="hidden" name="popup" value="true"/>
    </form>

    <script src="/md5.js"></script>
    <script>
        function doLogin() {
            document.sendin.username.value = document.login.username.value;
            document.sendin.password.value = hexMD5('$(chap-id)' + document.login.password.value + '$(chap-challenge)');
            document.sendin.submit();
            return false;
        }

    </script>
    <!--$(endif)-->
    <div class="ie-fixMinHeight">
        <div class="main">
            <div class="wrap animated fadeIn">
                <form name="login" action="$(link-login-only)" method="post" $(if chap-id) onSubmit="return doLogin()" $(endif)>
                    <input type="hidden" name="dst" value="$(link-orig)" />
                    <input type="hidden" name="popup" value="true" />
                    <svg class="logo" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 174 42">
                        <div class="video-introduccion">
                            <center>
                            <video src="img/Intro" autoplay muted ></video></center>
                        </div>

                    
              <div class="fondo">
                    <label>                                                           
                        <img class="ico" src="img/user.svg" alt="#"/>
                        <input name="username" type="text"  placeholder="Ingrese su Usuario" style="width: 100%;"><br>
                    </label>

                    <label>
                        <img class="ico" src="img/password.svg" alt="#"/>
                        <input name="password" type="password" placeholder="Ingrese su Contraseña" style="width: 100%"><br>
                    </label>
                    <section>
                        
                        
                        <form action="mailto:e-mail" method="post" enctype="text/plain">
                            <br>Acceder<br>
                            <select name="motorMoto">
                                <option selected>
                                <option>Alumno
                                <option>Docente
                                <option>Servicio S.
                                      
                                                                  
                        </form>
                    </section>
    
                  <input type="submit" value="Acceso"/>

                </form>
</div>

            </div>
        </div>
    </div>
   <script>
        document.getElementById("loginForm").addEventListener("submit", function(event) {
            event.preventDefault(); // Prevent form submission

            var usuario = document.getElementById("usuario").value;
            var contraseña = document.getElementById("contraseña").value;
            var opcion = document.getElementById("opcion").value;

            // Validate form fields
            if (usuario.trim() === "" || contraseña.trim() === "" || opcion === "") {
                alert("Faltan datos por ingresar.");
                return;
            }

            // Validate user credentials and redirect
            if (usuario === "vasni" && contraseña === "12345" && opcion === "alumno") {
                window.location.href = "aumno.jsp"; // Redirect to student page
            } else if (usuario === "nicolas" && contraseña === "12345" && opcion === "alumno") {
                window.location.href = "alumno.jsp"; // Redirect to student page
            } else if (usuario === "edgardo" && contraseña === "12345" && opcion === "docente") {
                window.location.href = "docente.jsp"; // Redirect to teacher page
            } else if (usuario === "danna" && contraseña === "12345" && opcion === "servicio") {
                window.location.href = "servicio.jsp"; // Redirect to service social page
            } else {
                alert("Usuario, contraseña o opción incorrecta.");
            }
        });
    </script>

</body>

</html>
