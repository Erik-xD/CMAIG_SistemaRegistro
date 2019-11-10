<div class="container-fluid">

					<div class="row justify-content-md-center">
						<div class="col-sm-12 text-center">
							<h1 style="font-size: 40px">Nuevo Proveedor</h1>	
						</div>
					</div>

					<div class="row justify-content-md-center">	

						<div class="col-sm-12 col-md-8">
				
								<form method="POST" action="../cfm/nuevoRegistroProveedor.cfm">
									<h5>Datos Generales</h5>
									  <div class="form-row" style="padding-top: 20px">
											 <div class="form-group col-md-6">
										      <label for="inputEmail4">Nombre de la Empresa</label>
										      <input type="text" class="form-control" name="pr_nombre"  required>
										    </div>
										    <div class="form-group col-md-6">
										      <label for="inputPassword4">RFC</label>
										      <input type="text" class="form-control" name="pr_rfc"  required>
										    </div>
										    <div class="form-group col-md-6">
										      <label for="inputEmail4">Dirección</label>
										      <input type="text" class="form-control" name="pr_direccion"  required>
										    </div>
										    <div class="form-group col-md-6">
										      <label for="inputPassword4">Persona de contacto</label>
										      <input type="text" class="form-control" name="pr_contacto"  required>
										    </div>
										    <div class="form-group col-md-6">
										      <label for="inputEmail4">Correo Electrónico</label>
										      <input type="email" class="form-control" name="pr_email"  required>
										    </div>
										    <div class="form-group col-md-6">
										      <label for="inputPassword4">Teléfono</label>
										      <input type="number" class="form-control" name="pr_telefono"  required>
										    </div>
									 </div>


									  <h5>Descripción</h5>
									  <div class="form-row" style="padding-top: 20px">
									  	<div class="form-group col-md-6">
									      <label for="inputZip">Breve Descripción</label>
									      <textarea class="form-control"  name="pr_descripcion" id="exampleFormControlTextarea1" rows="3"></textarea>
									    </div>
									  	<div class="form-group col-md-6">
									      <label for="inputZip">Página Web</label>
									      <input type="url" class="form-control"  name="pr_url"  required>
									    </div>
									  	<div class="form-group col-md-6">
									      <label for="inputZip">Notas</label>
									      <input type="text" class="form-control" name="pr_notas"  required>
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
		alert('¿Esta seguro de guardar este nuevo proveedor?');
	}
</script>