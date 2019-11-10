	<CFQUERY DATASOURCE="oracle12c" >
		INSERT INTO 
			dispositivo (
						 de_id,
					  	 di_nombre,
					  	 di_modelo,
					  	 di_marca,
					  	 di_noserie,
					  	 di_descripcion,
					  	 di_notas,
					  	 em_id,
					  	 di_puertos)
					VALUES 
						(
						'#Session.de_id#',
						'#FORM.di_nombre#',
						'#FORM.di_modelo#',
						'#FORM.di_marca#',
						'#FORM.di_noserie#',
						'#FORM.di_descripcion#',
						'#FORM.di_nota#',
						'#FORM.em_id#',
						'#FORM.di_puertos#')
	</CFQUERY>

	<cflocation url="../pages/panel.cfm">