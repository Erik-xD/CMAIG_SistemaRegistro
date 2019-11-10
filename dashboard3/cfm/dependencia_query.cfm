	<CFQUERY DATASOURCE="oracle12c" >
		INSERT INTO 
			Dependencia (DE_DIRECTOR, DE_TEL, DE_DIRECCION, DE_CP,DE_NOMBRE,DE_correo)
			VALUES 
				(
				
				'#FORM.de_director#',
				'#FORM.de_tel#',
				'#FORM.de_dir#',
				'#FORM.de_cp#',
				'#FORM.de_name#',
				'#FORM.DE_correo#'
				)
	</CFQUERY>

	<CFQUERY name="dependencia_id" DATASOURCE="oracle12c" >

		SELECT*FROM Dependencia WHERE DE_DIRECTOR= #FORM.de_director#;
		
	</CFQUERY>

	<CFQUERY DATASOURCE="oracle12c" >
		INSERT INTO 
			Usuario (de_id,us_ape1,us_ap2,us_birthday,us_correo,us_contrasena)
			VALUES 
				(
				
				'#FORM.de_director#',
				'#FORM.de_tel#',
				'#FORM.de_dir#',
				'#FORM.de_cp#',
				'#FORM.de_name#',
				'#FORM.DE_correo#'
				)
	</CFQUERY>
	<cflocation url="../index.cfm">