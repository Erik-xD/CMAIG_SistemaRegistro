<title>Registro</title>
<link rel="stylesheet" type="text/css" href="../css/estilos.css">
<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
<link rel="icon" type="image/png" href="../images/logo.png">

<!--- Reviso si existe el usuario en la base de datos --->
<cfquery name="usuario"  datasource="oracle12c">
 select*from usuario where us_correo='#FORM.us_email#'
</cfquery>


<!--- Reviso si existe la dependencia en la base de datos --->
<cfquery name="dependencia"  datasource="oracle12c">
 select*from dependencia where de_correo='#FORM.DE_correo#' or de_direccion= '#FORM.de_dir#'
</cfquery>


<cfif  usuario.us_correo eq '#FORM.us_email#'>
		<cfinclude template="../pages/header.cfm">
			<div class="container-fluid" style="min-height: 500px">
				<div class="row justify-content-center mt-5">
					<div class="col-12 col-sm-12 col-md-10">
						<div class="alert alert-danger" role="alert">
						  <h4 class="alert-heading">El correo de usuario ya ha sido registrao</h4>
						  Intente registrarse nuevamente <a href="../pages/registro.cfm" class="alert-link">Registrarse </a> o
						  <a href="../index.cfm" class="alert-link">Inicie Sesión</a>. 
						</div>
					</div>
				</div>
			</div>
		<cfinclude template="../pages/footer.cfm">
	
	<cfelseif dependencia.DE_correo eq '#FORM.DE_correo#' or dependencia.de_direccion eq '#FORM.DE_dir#' >
<!--- 		<cfoutput>
			#FORM.DE_correo#
			#FORM.DE_dir#
		</cfoutput> --->
		<cfinclude template="../pages/header.cfm">
			<div class="container-fluid" style="min-height: 500px">
				<div class="row justify-content-center mt-5">
					<div class="col-12 col-sm-12 col-md-10">
						<div class="alert alert-danger" role="alert">
						  <h4 class="alert-heading">Esta dependencia ya ha sido registrada</h4>
						  Verifique sus datos, he intente nuevamente <a href="../pages/registro.cfm" class="alert-link">Registrarse</a> o
						  <a href="../index.cfm" class="alert-link">Inicie Sesión</a>. 
						</div>
					</div>
				</div>
			</div>
		<cfinclude template="../pages/footer.cfm">

	<cfelse>
	<!--- Creo una nueva dependencia --->
		<CFQUERY DATASOURCE="oracle12c" >
			INSERT INTO 
				Dependencia (DE_DIRECTOR, DE_TEL, DE_DIRECCION, DE_CP,DE_NOMBRE,DE_correo)
				VALUES 
					(
					
					'#FORM.de_director# #FORM.de_directorAp1# #FORM.de_directorAp2#',
					'#FORM.de_tel#',
					'#FORM.de_dir#',
					'#FORM.de_cp#',
					'#FORM.de_name#',
					'#FORM.DE_correo#'
					)
		</CFQUERY>

		<!--- Tomo el id de la dependencia, para agregarlo en la tabla usuario --->
		<CFQUERY name="dependencia_id" DATASOURCE="oracle12c" >
			SELECT*FROM Dependencia WHERE DE_correo= '#FORM.de_correo#'
		</CFQUERY>

		<CFQUERY DATASOURCE="oracle12c" >
			INSERT INTO 
				Usuario (de_id,
						us_ape1,
						us_ap2,
						us_birthday,
						us_correo,
						us_contrasena,
						us_clave,
						us_tipo)
				VALUES 
					(
					'#dependencia_id.de_id#',
					'#FORM.us_frtName#',
					'#FORM.us_scdName#',
					'#FORM.us_old#',
					'#FORM.us_email#',
					'#FORM.us_password#',
					'#FORM.us_name#',
					'USUARIO'
					)
		</CFQUERY>



		<cfinclude template="../pages/header.cfm">
			<div class="container-fluid" style="min-height: 500px">
				<div class="row justify-content-center mt-5">
					<div class="col-12 col-sm-12 col-md-10">
						<div class="alert alert-success" role="alert">
						  <h4 class="alert-heading">Registro exitoso!</h4>
						  Iniciar Sesión <a href="../index.cfm" class="alert-link">Inicie Sesión</a>. 
						</div>
					</div>
				</div>
			</div>
		<cfinclude template="../pages/footer.cfm">


</cfif>


