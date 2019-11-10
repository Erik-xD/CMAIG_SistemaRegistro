<div class="container-fluid" >

					<div class="row justify-content-md-center">
						<div class="col-sm-12 text-center">
							<h3>Nuevo Enlace</h3>	
						</div>
					</div>

					<div class="row justify-content-md-center">	

						<div class="col-sm-12 col-md-12">
				
								<form method="POST" action="#">
									<h5>Datos General</h5>
									  <div class="form-row" style="padding-top: 20px">

											 <div class="form-group col-md-8">
								                <select class="custom-select" id="lista">
								                  <option selected disabled >Seleccione una dispositivo</option>
								                  <option value="1">Enlace Dedicado</option>
								                  <option value="2">Enlace Asimetrico</option>
								                  <option value="3">Enlace Punto a Punto</option>
								                </select>										      
										    </div>

										    <div class="form-group col-md-6">
										      <label for="inputPassword4">Alcance</label>
										      <input type="text" class="form-control" name="us_old"  required>
										    </div>

										    <div class="form-group col-md-6">
										      <label for="inputEmail4">sistema de Transmisión</label>
										      <input type="number" class="form-control" name="us_scdName"  required>
										    </div>
										    <div class="form-group col-md-6">
										      <label for="inputPassword4">Velocidad</label>
										      <input type="number" class="form-control" name="us_frtName"  required>
										    </div>


									 </div>


									  <h5>Descripción</h5>
									  <div class="form-row" style="padding-top: 20px">
									  	<div class="form-group col-md-6">
									      <label for="inputZip">Breve Descripción</label>
									      <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
									    </div>
									  	<div class="form-group col-md-6">
									      <label for="inputZip">Notas</label>
									      <input type="text" class="form-control" name="us_puesto"  required>
									    </div>						
									   </div>

									  <div class="row justify-content-center">
									  	<div class="col-6 col-sm-10 col-md-3">
									  		<button type="submit" class="btn btn-success btn-block">Guardar</button>
									  	</div>
									  </div>
								</form>	
						</div>		
					</div>
</div>