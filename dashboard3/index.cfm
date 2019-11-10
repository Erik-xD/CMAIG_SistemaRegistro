<!doctype html>

<html lang="en">
  <head>
    <title>Inicio</title>
    
	<!-- Required meta tags -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="css/estilos.css">

    <!-- Bootstrap CSS -->
	<link  rel="icon" type="image/png" href="images/logo.png">
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

  </head>

  <body>
  
<div id="barraNav" style="box-shadow: 0px 0px 10px #839192">
    <div class="row">
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
            <img class="rounded float-right" src="images/logo.png" width="90px" height="90px">
          </div>
        </div>
       </div>    
    </div> <!--- Cierre de la primera linea del navBar --->

</div> <!--- Cierre de BarraNav --->

<div class="container" style="padding-top: 20px; min-height: 700px;">
	<div class="row justify-content-center mt-3">
		<div class="col-12 col-sm-12 col-md-4" id="boxLogin"<!--- style="background-color:#F1F1F1;border-radius:10px" --->>
			<div class="row justify-content-center mt-5 ">
				<div class="col-sm-12 col-md-10" >
					<h1 style="font-size: 45px">Iniciar Sesión</h1>	
				</div>
			</div>

			<div class="row justify-content-center mt-2">
				<div class="col-sm-12 col-md-10" >
					<p>¿Aún no tienes una cuenta? <a href="pages/registro.cfm">Registrarse</a></p>
				</div>
			</div>

			<div class="row justify-content-center text-center"style="padding-top: 20px">	
				<div class="col-sm-12 col-md-12" >

					<form method="post" action="cfm/acceso.cfm" method="POST" >

						<div class="form-group">				
							<input type="email" class="form-control" name="email" placeholder="Correo electronico" required>	
				  		</div>

				  		<div class="form-group">				
							<input type="password" class="form-control" name="password" aria-describedby="emailHelp" placeholder="Contraseña" required>
						</div>

					  	<div class="row justify-content-center" style="padding-top: 20px">
					  		<div class="col-6 col-sm-10 col-md-4">
								<button type="submit" class="btn btn-success btn-block#F1EFEF">Iniciar Sesión</button>
					  		</div>
					  	</div>
						<p><a href="#">Recuperar Contraseña</a></p>

					</form>	

				</div>	<!--- Cierre de la columna --->
			</div> <!--- Etiqueta de cierre del row --->


		</div>

	</div>
</div> <!--- Cierre del container --->

<cfinclude template="pages/footer.cfm">








    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
 
	</body>
</html>