<title>Acceso</title>
<link rel="stylesheet" type="text/css" href="../css/estilos.css">
<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
<link rel="icon" type="image/png" href="../images/logo.png">


<cfset us_mail = #FORM.email#>
<cfset us_password = #FORM.password#>

<cfquery name="usuario"  datasource="oracle12c">
 select*from usuario where us_correo='#us_mail#'
</cfquery>

<CFQUERY name="dependencia" DATASOURCE="oracle12c" >
	SELECT*FROM Dependencia WHERE de_id= '#usuario.de_id#'
</CFQUERY>
	
<cfset Loginpass="#usuario.us_contrasena#">
<cfset usTipo ="#usuario.us_tipo#">


<cfif loginpass eq us_password >

	<cfif usTipo eq "usuario">
		<cfset Session.de_id = "#dependencia.de_id#">
		<cflocation url="../pages/panel.cfm">


			<cfelseif usTipo eq "Admin">
				<cflocation url="../pages/panel-admin.cfm">
	</cfif>


		<cfelse>
			<cfinclude template="../pages/header.cfm">
				<div class="container-fluid" style="min-height: 500px">
					<div class="row justify-content-center mt-5">
						<div class="col-12 col-sm-12 col-md-10">
							<div class="alert alert-danger" role="alert">
							  <h4 class="alert-heading">Correo o Contraseña Incorrectos</h4>
							  Intente iniciar sesión otra vez <a href="../index.cfm" class="alert-link">Iniciar Sesión</a>. 
							</div>
						</div>

					</div>
				</div>
			<cfinclude template="../pages/footer.cfm">		

</cfif>


