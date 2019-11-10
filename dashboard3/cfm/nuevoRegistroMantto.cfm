	<CFQUERY DATASOURCE="oracle12c" >
		INSERT INTO 
			mantenimiento(
						 de_id,
						 em_id,
						 di_id,
						 ma_fecha,
						 ma_descripcion
						 )
					VALUES 
						(
						'#Session.de_id#',
						'#FORM.em_id#',
						'#FORM.di_id#',
						'#FORM.ma_fecha#',
						'#FORM.ma_detalle#'
						)
	</CFQUERY>

	<cflocation url="../pages/panel.cfm">