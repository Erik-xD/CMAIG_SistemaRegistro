	<CFQUERY DATASOURCE="oracle12c" >
		INSERT INTO 
			empleado (de_id,
					  em_nombre,
					  em_puesto,
					  em_area)
			VALUES 
				(
				'#Session.de_id#',
				'#FORM.em_nombre# #FORM.em_paterno# #FORM.em_materno#',
				'#FORM.em_puesto#',
				'#FORM.em_area#'
				)
	</CFQUERY>

	<cflocation url="../pages/panel.cfm">
