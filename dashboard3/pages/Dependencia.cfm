
<!--- <cftry> --->


	<!--- <script> alert('Se ha enviado correctamente ');</script> --->

	<!--- <cfcatch type="any"> --->
	  <!--- <p><strong>Apologies, an error has occurred. Please try again later.<strong><p> --->

	<!--- </cfcatch> --->
<!--- </cftry> --->


<!DOCTYPE html>
<html>
<head>
	<title>RegistroTICS</title>
<cfquery name="dependencia" datasource="oracle12c">
		Select*from dependencia where de_id='#Session.de_id#'
</cfquery>
    
	<!-- Required meta tags -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta charset="utf-8">

    <!-- Bootstrap CSS -->
    	<link  rel="icon" type="image/png" href="images/logo.png">
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
   </script>

</head>
<body>
	<div class="container"  >
		<div class="row justify-content-md-center"style="padding-top: 10px">
			<div class="col-sm-12 col-md-10 col-md-offset-1 text-center" >
				<h1 class="text-above-form-holder__title" style="font-size: 40px">Datos Dependencia</h1>	
			</div>
		</div>

		     <div class="row justify-content-md-center" style="margin-top: 30px">
		     	<div class="col-12 col-sm-12 col-md-8">

					<form method="POST" action="cfm/dependencia_query.cfm">
					<h5>Datos Generales</h5>
						 <div class="form-row" style="padding-top: 20px">
					 <cfoutput>
							 <div class="form-group col-md-6">
							      <label for="inputEmail4">Nombre Director General</label>
							     	 <input type="text" class="form-control" name="de_director"  placeholder="#dependencia.de_director#" required>
							  		
							 </div>
					    	<div class="form-group col-md-6">
						    	 <label for="inputPassword4">Tel. dependencia</label>
							     <input type="number" class="form-control" name="de_tel"  placeholder="#dependencia.de_tel#" required>
							</div>
						    <div class="form-group col-md-6">
						    	<label for="inputEmail4">Dirección</label>
							     <input type="text" class="form-control" name="de_dir"  placeholder="#dependencia.de_direccion#" required>
							 </div>
							 <div class="form-group col-md-6">
							    <label for="inputPassword4">Código Postal</label>
							    <input type="text" class="form-control" name="de_cp"  placeholder="#dependencia.de_cp#" required>
							</div>
							<div class="form-group col-md-6">
							    <label for="inputEmail4">Nombre de la Dependencia</label>
							   <input type="text" class="form-control" name="de_name"  placeholder="#dependencia.de_nombre#" required>
							</div>
							<div class="form-group col-md-6">
							    <label for="inputPassword4">Correo Electrónico</label>
							   <input type="text" class="form-control" name="DE_correo"  placeholder="#dependencia.de_correo#" required>
							</div>
						</cfoutput>
						</div>
						<div class="row justify-content-center" style="padding-top: 20px">
							<div class="col-6 col-sm-10 col-md-2">
								<button type="submit" class="btn btn-primary btn-block">Actualizar</button>
							</div>
						</div>
				</form>
		     	</div>
		     </div>
		</div>
	</div> <!--- Cierre del container --->
</body>
</html>