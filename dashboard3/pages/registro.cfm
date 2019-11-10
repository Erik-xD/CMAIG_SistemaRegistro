<cfset municipios = 
					"Balancán,
					Cárdenas,
					Centla,
					Centro (Villahermosa),
					Comalcalco,
					Cunduacán,
					Emiliano Zapata,
					Huimanguillo,
					Jalapa,
					Jalpa de Méndez,
					Jonuta,
					Macuspana,
					Nacajuca,
					Paraíso,
					Tacotalpa,
					Teapa,
					Tenosique">

<!doctype html>

<html lang="en">
  <head>
    <title>Registro</title>

<!--     <script src="documento.js"></script> -->
    
	<!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" type="text/css" href="../css/estilos.css">
    <link  rel="icon" type="image/png" href="../images/logo.png">


    <!-- Bootstrap CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">



  </head>
  <body>

<cfinclude template="header.cfm">
	 <div class="container" style="padding-top: 20px; padding-bottom: 40px">

		<div class="row justify-content-md-center">
			<div class="col-sm-6 text-center">
				<h1 style="font-size: 45px" >Registro</h1>	
				<p>¿Ya tienes una cuenta? <a href="../index.cfm">Iniciar Sesión</a></p>
			</div>
		</div>

		<div class="row justify-content-md-center">	

			<div class="col-sm-12 col-md-8">
				
				<form method="POST" action="../cfm/nuevoRegistro.cfm">
				<h5>Datos Personales</h5>
				  <div class="form-row" style="padding-top: 20px">
						 <div class="form-group col-md-6">
					      <label for="inputEmail4">Nombre</label>
					      <input type="text" class="form-control" name="us_name" placeholder="Nombre" required>
					    </div>
					    <div class="form-group col-md-6">
					      <label for="inputPassword4">Fecha de nacimiento</label>
					      <input type="date" class="form-control" name="us_old" placeholder="Edad" value="12/12/1900" required>
					    </div>
					    <div class="form-group col-md-6">
					      <label for="inputEmail4">Apellido Paterno</label>
					      <input type="text" class="form-control" name="us_scdName" placeholder="Apellido Paterno" required>
					    </div>
					    <div class="form-group col-md-6">
					      <label for="inputPassword4">Apellido Materno</label>
					      <input type="text" class="form-control" name="us_frtName" placeholder="Apellido Materno" required>
					    </div>
				 </div>
				<h5>Cuenta</h5>
					<div class="form-row" style="padding-top: 20px">
					  <div class="form-group col-md-6">
					    <label for="inputAddress">Correo electronico</label>
					    <input type="email" class="form-control" name="us_email" placeholder="Ejemplo: micorreo@gob.mx.com" required>
					  </div>					
					  <div class="form-group col-md-6">
					    <label for="inputAddress2">Contraseña</label>
					    <input type="password" class="form-control" placeholder="...." name="us_password">
					  </div>		
					</div>

				  <h5>Datos Dependencia</h5>

				 <div class="form-row" style="padding-top: 20px">
					 <div class="form-group col-md-4">
					      <label for="inputEmail4">Nombre Director General</label>
					      <input type="text" class="form-control" placeholder="Nombre" name="de_director"  required>
					 </div>
					 <div class="form-group col-md-4">
					      <label for="inputEmail4">Apellido (Director General)</label>
					      <input type="text" class="form-control" placeholder="Apellido Paterno" name="de_directorAp1"  required>
					 </div>
					 <div class="form-group col-md-4">
					      <label for="inputEmail4">Apellido (Director General)</label>
					      <input type="text" class="form-control" placeholder="Apellido Materno" name="de_directorAp2"  required>
					 </div>					 					
			    	<div class="form-group col-md-6">
				    	 <label for="inputPassword4">Teléfono</label>
					     <input type="number" class="form-control" placeholder="Ejemplo: 99 32 40 00 00" minlength="10" name="de_tel"  required>
					</div>
				    <div class="form-group col-md-6">
				    	 <label for="inputPassword4">Seleccione un municipio</label>
						<select  class="form-control"  id="exampleFormControlSelect1">
						    <option disabled> Seleccione un municipio</option>
					    	<cfloop list="#municipios#" index="i">
						     		<option required><cfoutput> #i#</cfoutput></option>
							</cfloop>
					     </select>
					 </div>
				    <div class="form-group col-md-6">
				    	<label for="inputEmail4">Direccion</label>
					     <input type="text" class="form-control" placeholder="Ejemplo: Col. Usumacinta #555" name="de_dir"  required>
					 </div>
					 <div class="form-group col-md-6">
					    <label for="inputPassword4">Código Postal</label>
					    <input type="text" class="form-control" placeholder="Ejemplo: 99 32 40 00 00" name="de_cp"  required>
					</div>
					<div class="form-group col-md-6">
					    <label for="inputEmail4">Nombre de la Dependencia</label>
					   <input type="text" class="form-control" placeholder="Ejemplo: Tecnológias" name="de_name"  required>
					</div>
					<div class="form-group col-md-6">
					    <label for="inputPassword4">Correo Electrónico</label>
					   <input type="text" class="form-control" placeholder="Ejemplo: Dependencia@gob.mx" name="de_correo"  required>
					</div>
				</div>


				  <div class="row justify-content-center">
				  	<div class="col-6 col-sm-10 col-md-3">
				  		<button type="submit" class="btn btn-success btn-block">Registrarse</button>
				  	</div>
				  </div>
				</form>	
			</div>		
		</div>
	</div>
<cfinclude template="footer.cfm">

 
	</body>
</html>