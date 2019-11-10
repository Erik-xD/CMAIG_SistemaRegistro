	<CFQUERY DATASOURCE="oracle12c" >
		INSERT INTO 
			proveedor (de_id,
					   pr_nombre,
					   pr_rfc,
					   pr_direccion,
					   pr_contacto,
					   pr_correo,
					   pr_tel,
					   pr_descripcion,
					   pr_url,
					   pr_notas)
			VALUES 
				('#Session.de_id#',
				'#FORM.pr_nombre#',
				'#FORM.pr_rfc#',
				'#FORM.pr_direccion#',
				'#FORM.pr_contacto#',
				'#FORM.pr_email#',
				'#FORM.pr_telefono#',
				'#FORM.pr_descripcion#',
				'#FORM.pr_url#',
				'#FORM.pr_notas#'
				)
	</CFQUERY>

	<cflocation url="../pages/panel.cfm">
