<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Panel</title>
	<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css"> <!--- bootstrap --->
	<link rel="stylesheet" type="text/css" href="../css/estilos.css">
  <link rel="icon" type="image/png" href="../images/logo.png">
	


    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

   <script
  src="https://code.jquery.com/jquery-3.4.0.js"
  integrity="sha256-DYZMCC8HTC+QDr5QNaIcfR7VSPtcISykd+6eSmBW5qo="
  crossorigin="anonymous">
    </script>   


    <script>


        function cargarForm(){
         var seleccion= document.getElementById("lista").value;

            if  (seleccion==2) {
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

             $('#NuevoEmpleado').click(function()
              {
                $('#contenedor').load("NuevoEmpleado.cfm");
              });

             $('#nuevoProveedor').click(function()
              {
                $('#contenedor').load("nuevoProveedor.cfm");
              });

             $('#visualizarMantto').click(function()
              {
                $('#contenedor').load("visualizarMantto.cfm");
              });
             $('#Empleadosregistrados').click(function()
              {
                $('#contenedor').load("visualizarEmpleado.cfm");
              });
             $('#ticsRegistradas').click(function()
              {
                $('#contenedor').load("visualizarTics.cfm");
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
                <li class="nav-item dropdown">
                  <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Altas
                  </a>
                  <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" id="NuevoEmpleado" href="#">Alta de empleados</a>
                    <a class="dropdown-item" id="nuevoProveedor" href="#">Alta de proveedores</a>
                    <a class="dropdown-item" id="visualizarMantto" href="#">Registrar Mantenimiento</a>

                </li>
                  <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      Registros
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                      <a class="dropdown-item" id="ticsRegistradas" href="#">TICs Registradas</a>
                      <a class="dropdown-item" id="ticsRegistradas" href="#">Proveedores registrados</a>
                      <a class="dropdown-item" id="Empleadosregistrados" href="#">Empleados Registrados</a>
                      <a class="dropdown-item" id="Empleadosregistrados" href="#">Mantenimientos Registrados</a>
                  </li>
              </ul>
                <form class="form-inline">
                  <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                     Opciones
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                      <a class="dropdown-item" href="#">misDatos</a>
                      <a class="dropdown-item" id="dependencia" href="#">Datos dependencia</a>
                      <div class="dropdown-divider"></div>
                      <a class="dropdown-item" href="../index.cfm">Salir</a>
                    </div>
                  </li>|
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


<script type="text/javascript" href="../js/bootstrap.min.js"></script><!--- bootstrap --->
<script type="text/javascript" href="../js/jquery-3.4.1.min.js"></script> <!--- JQUERY --->

  <!--- sin este query no sale popper --->
<!--- <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script> --->

<!---    <script
  src="https://code.jquery.com/jquery-3.4.0.js"
  integrity="sha256-DYZMCC8HTC+QDr5QNaIcfR7VSPtcISykd+6eSmBW5qo="
  crossorigin="anonymous">
    </script>  --->  
  
<body>
</body>
</html>
