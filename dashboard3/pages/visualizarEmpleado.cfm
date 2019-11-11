
<!DOCTYPE html>
<html>
<head>
	<title>RegistroTICS</title>
	<cfquery name="dispositivo" datasource="oracle12c">
		select *
		from empleado
		where   empleado.de_id='#Session.de_id#' 
	</cfquery>
    
<!--- 	<!-- Required meta tags -->
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
	  </script> --->


</head>
<body>
	<div class="container" >
		<div class="row justify-content-md-center"style="padding-top: 10px">
			<div class="col-sm-12 col-md-10 col-md-offset-1 text-center" >
				<h3 class="text-above-form-holder__title" style="font-size: 40px">Empleados Registrados</h3>	
			</div>
		</div>

		     <div class="row justify-content-md-center" style="margin-top: 30px">
		     	<div class="col-12 col-sm-12 col-md-12">
		     		<div style="overflow: auto; height: 500px;">
		     			<table class="table">
							  <thead>
							    <tr>
							      <th scope="col">#</th>
							      <th scope="col">Nombre</th>
							      <th scope="col">Puesto</th>
							      <th scope="col">Área</th>
							      <th scope="col">Acción</th>
							    </tr>
							  </thead>
							  <tbody>
			 					<cfoutput query="dispositivo" >
							    <tr>
							      <th scope="row"></th>
							      <td>#dispositivo.em_nombre#</td>
							      <td>#dispositivo.em_area#</td>
							      <td>#dispositivo.em_puesto#</td>
							      <td><li class="btn btn-primary">Modificar<a href=""></a></li></td>
							    </tr>
			                	</cfoutput>


	

							  </tbody>
							</table>
		     		</div>
	
		     	</div>
		     </div>
		</div>
	</div> <!--- Cierre del container --->



</body>
</html>