<!DOCTYPE html>
<html>
<head>
	<title>RegistroTICS</title>

    
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



</head>
<body>

	<cfquery name="empleado" datasource="oracle12c">
		SELECT*FROM empleado WHERE de_id= '#Session.de_id#' order by em_area
	</cfquery>

	<cfquery name="dispositivo" datasource="oracle12c">
		-- SELECT*FROM empleado, dispositivo WHERE de_id= 
		-- empleado.em_area,empleado.em_nombre, dispositivo.di_nombre,dispositivo.di_modelo,dispositivo.di_marca
		select *
		from empleado, dispositivo 
		where dispositivo.em_id= empleado.em_id and empleado.de_id='#Session.de_id#' 
	</cfquery>

	<div class="container" style="padding-top: px" >
		<div class="row justify-content-md-center"style="padding-top: 10px">
			<div class="col-sm-12 col-md-10 col-md-offset-1 text-center" >
				<h1 class="text-above-form-holder__title" style="font-size: 40px">Registrar Mantenimiento</h1>	
			</div>
		</div>
		<div class="row">
			
			<div class="col-12 col-sm-12 col-md-12" style="padding-top: 40px">
					<div class="row justify-content-md-center" >	

						<div class="col-12 col-sm-12 col-md-8">
							<form method="POST" action="../cfm/nuevoRegistroMantto.cfm">
								<h5>Datos Generales</h5>
								  <div class="form-row" style="padding-top: 20px;">

										 <div class="form-group col-md-6">
									      <label for="inputPassword4">Seleccione un empleado</label>
							                <select class="custom-select" name="em_id" required>
							                  <!--- <option selected disabled >Seleccione un empleado</option> --->
							            		<cfoutput query="empleado">
							                		<option value="#empleado.em_id#">#empleado.em_area# - #empleado.em_nombre#</option>
							                	</cfoutput>
							                </select>										      
									    </div>

										 <div class="form-group col-md-6">
									      <label for="inputPassword4">Seleccione un dispositivo</label>
							                <select class="custom-select" name="di_id" required>
							                  <!--- <option selected disabled >Seleccione un dispositivo</option> --->
												<cfoutput query="dispositivo">
							                		<option value="#dispositivo.di_id#">#dispositivo.em_nombre# / #dispositivo.di_marca# - #dispositivo.di_modelo# - #dispositivo.di_nombre#</option>
							                	</cfoutput>								   
							                </select>										      
									    </div>

										 <div class="form-group col-md-6">
									      <label for="inputPassword4">fecha del mantenimiento</label>	
							              <input type="date" name="ma_fecha" class="form-control" required>								      
									    </div>

									    <div class="form-group col-md-12">
									      <label for="inputEmail4">Detalle</label>
								      	  <textarea class="form-control" id="exampleFormControlTextarea1" rows="4" required name="ma_detalle"></textarea>
									    </div>
								 </div>
								 <div class="row justify-content-center" >
								  	<div class="col-6 col-sm-10 col-md-4">
								  		<button type="submit" class="btn btn-success btn-block" onclick="preguntar()">Guardar</button>
								  	</div>
								 </div>

							</form>
						</div>
				</div>
			</div> <!-- Finaliza el contenedor derecho -->	
		</div> <!-- Termina la primera fila entre menu y vista -->
	</div> <!--- Cierre del container --->

	<script>
		
		function preguntar(){
			alert('¿Esta seguro de registrar este mantenimiento?');
		}
	</script>
</body>
</html>