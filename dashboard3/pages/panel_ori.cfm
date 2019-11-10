<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title></title>
	<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css"> <!--- bootstrap --->
	<script type="text/javascript" href="../js/bootstrap.min.js"></script><!--- bootstrap --->
	<script type="text/javascript" href="../js/jquery-3.4.1.min.js"></script> <!--- JQUERY --->
	<link rel="stylesheet" type="text/css" href="../css/estilos.css">
  <link rel="icon" type="image/png" href="../images/logo.png">
	
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>

	 <script
	src="https://code.jquery.com/jquery-3.4.0.js"
	integrity="sha256-DYZMCC8HTC+QDr5QNaIcfR7VSPtcISykd+6eSmBW5qo="
	crossorigin="anonymous">
	  </script>  

    <script>


        function cargarForm(){
         var seleccion= document.getElementById("lista").value;

            if (seleccion==1) {
                $(document).ready(function()
                {
                   $('#formulario').load("nuevoProveedor.cfm");
                });
            }
            else
                if (seleccion==2) {
                     $(document).ready(function()
                    {
                        $('#formulario').load("nuevoDispositivo.cfm");
                    });
                } else
                if (seleccion==3) {
                     $(document).ready(function()
                    {
                        $('#formulario').load("nuevoEnlace.cfm");
                    });
                }
        }


        $(document).ready(function(){
                $('#nuevo').click(function()
             {
                $('#contenedor').load("registroTics.cfm");
             });

                $('#dependencia').click(function()
             {
                $('#contenedor').load("dependencia.cfm");
             });
                

             $('#Mantenimiento').click(function()
              {
                $('#contenedor').load("Mantenimiento.cfm");
              });

        });
   </script>

</head>
<div id="barraNav">
    <div class="row" >
        <div class="nav" >
        <div class="row align-items-center">

          <div class="col-12 col-sm-12 col-md-4">
            <a href="#">
              <center><strong><h1>CMAIG</h1></strong></center>
              <p class="text-center">Coordinación de Modernización Admnistrativa e Innovación Gubernamental</p>
            </a>
          </div>

          <div class="col-8 col-sm-8 col-md-6 text-center">
            <h2>Sistema de registro y control de TIC´S</h2>
          </div>

          <div class="col-4 col-sm-4 col-md-2 ">
            <img class="rounded float-right" src="../images/logo.png" width="90px" height="90px">
          </div>
        </div>
       </div>    
    </div> <!--- Cierre de la primera linea del navBar --->

      <div class="row justify-content-center" id="colapse">
       <div class="col-12 col-sm-12 col-md-12" >
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark" id="menu">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarText" >
              <ul class="navbar-nav mr-auto">
                <li class="nav-item">
                  <a class="nav-link" id="nuevo" href="#">Registro de TIC´s</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" id="dependencia" href="#">Datos Dependencia</a>
                </li>
              <li class="nav-item">
                  <a class="nav-link" id="Mantenimiento" href="#">Mantenimientos</a>
                </li>
              </ul>
                <form class="form-inline">
                  <li class="nav-item"><a class="nav-link" href="../index.cfm" >Salir</a></li>
                  <!--- <li ><a href="view/registro.php">Registrarse</a></li> --->
                </form>
            </div>
        </nav>  
       </div>
    </div> <!--- Cierre de la segunda linea del nav --->
</div> <!--- Cierre de BarraNav --->

<div class="container" id="contenedor" style="min-height: 750px">
	   <div class="row justify-content-md-center"style="padding-top: 10px">
      <div class="col-sm-12 col-md-10 col-md-offset-1 text-center" >
        <h1 class="text-above-form-holder__title" style="font-size: 50px">Registro de TICs</h1> 
      </div>
    </div>

    <div class="row">
      <div class="col-12 col-sm-12 col-md-12">

            <div class="row justify-content-md-center" style="margin-top: 30px">
               <div class="col col-sm-12 col-md-6 text-center" style="background-color: ">
                    <p style="color:black">Elija el tipo registro</p>
                </div>
                <div class="col col-sm-12 col-md-4 text-center" style="background-color:">
                    <select class="custom-select" id="lista" onchange="cargarForm()">
                      <option selected disabled >Seleccione una opcion</option>
                      <option value="1">Proveedor</option>
                      <option value="2">Dispositivo</option>
                      <option value="3">Enlace</option>
                    </select>
                </div>
            </div>

            <div class="row justify-content-md-center" style="margin-top: 40px;margin-bottom: 20px">
              <div class="col-12 col-sm-12 col-md-10" id="formulario" style="">

              </div> 
            </div>
        
      </div>  
    </div>
</div>

<div class="container-fluid" id="footer">
	
</div>


<script type="text/javascript" href="js/bootstrap.min.js"></script><!--- bootstrap --->
<script type="text/javascript" href="js/jquery-3.4.1.min.js"></script> <!--- JQUERY --->

<body>
</body>
</html>
