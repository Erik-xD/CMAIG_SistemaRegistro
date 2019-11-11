



<div class="container-fluid" >
<cftry>

		<CFQUERY name="empleado" DATASOURCE="oracle12c" >
			SELECT*FROM empleado WHERE de_id= '#Session.de_id#' order by em_area 
		</CFQUERY>

	<cfcatch type="any">
		<strong><p>Ha ocurrido un error en el servidor, estamos trabajando para resolverlo</p></strong>
		<script>alert('Ha ocurrido un error');</script>
	</cfcatch>
</cftry>
					<div class="row justify-content-md-center">
						<div class="col-sm-12 text-center">
							<h3>Nuevo Dispositivo</h3>	
						</div>
					</div>

					<div class="row justify-content-md-center">	

						<div class="col-sm-12 col-md-12">
				
								<form method="POST" action="../cfm/nuevoRegistroDispositivo.cfm">
									<h5>Datos Generales</h5>
									  <div class="form-row" style="padding-top: 20px">

											 <div class="form-group col-md-6">
									  			<label for="inputPassword4">Seleccione un empleado</label>



								                <select name="em_id" class="custom-select" required >

								                <cftry>
								                	<cfoutput query="empleado">
								                		<option value="#empleado.em_id#">#empleado.em_area# - #empleado.em_nombre#</option>
								                	</cfoutput>
								                	<cfcatch type="any">
								                		<option value="">Ninguno</option>
								                	</cfcatch>
								                </cftry>




										      	</select>





										    </div>
											 <div class="form-group col-md-6">
											 	<label for="inputPassword4">Seleccione el tipo de dispositivo</label>
								                <select class="custom-select" name="di_nombre" required>
								                  <option selected disabled >Seleccione un dispositivo</option>
								                  <option value="pc">Pc</option>
								                  <option value="Switch">Switch</option>
								                  <option value="Router">Router</option>
								                  <option value="Modem">Modem</option>
								                  <option value="AccessPoint">AccessPoint</option>
								                  <option value="Router">Router</option>
								                  <option value="Laptop">Laptop</option>
								                  <option value="WorkStation">WorkStation</option>
								                </select>										      
										    </div>


										    <div class="form-group col-md-6">
										      <label for="inputPassword4">Modelo</label>
										      <input type="text" class="form-control" name="di_modelo"  required>
										    </div>

										    <div class="form-group col-md-6">
										      <label for="inputEmail4">Marca</label>
										      <input type="text" class="form-control" name="di_marca"  required>
										    </div>
										    <div class="form-group col-md-6">
										      <label for="inputPassword4">No. Serie</label>
										      <input type="text" class="form-control" name="di_noserie"  required>
										    </div>
										    <div class="form-group col-md-6">
										      <label for="inputEmail4">Puertos</label>
										      <input type="number" class="form-control" name="di_puertos"  required>
										    </div>

									 </div>


									  <h5>Descripción</h5>
									  <div class="form-row" style="padding-top: 20px">
									  	<div class="form-group col-md-6">
									      <label for="inputZip">Breve Descripción</label>
									      <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" name="di_descripcion"></textarea>
									    </div>
									  	<div class="form-group col-md-6">
									      <label for="inputZip">Notas</label>
									      <input type="text" class="form-control" name="di_nota"  required>
									    </div>						
									   </div>

									  <div class="row justify-content-center">
									  	<div class="col-6 col-sm-10 col-md-3">
									  		<button type="submit" class="btn btn-success btn-block" onclick="preguntar()">Guardar</button>
									  	</div>
									  </div>
								</form>	
						</div>		
					</div>
</div>

<script>
	
	function preguntar(){
		alert('Esta seguro de guardar este dispositivo');
	}
</script>