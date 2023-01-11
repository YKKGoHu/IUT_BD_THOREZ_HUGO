//%attributes = {}
Begin SQL
	
	INSERT INTO EVENEMENT
	(Libelle, Date_Debut, Date_Fin)
	VALUES
	('Evenement 1', '07/10/2022', '09/10/2022');
	
	INSERT INTO EVENEMENT
	(Libelle, Date_Debut, Date_Fin)
	VALUES
	('Evenement 2', '17/10/2022', '19/10/2022');
	
	INSERT INTO EVENEMENT
	(Libelle, Date_Debut, Date_Fin)
	VALUES
	('Evenement 3', '27/10/2022', '29/10/2022');
	
End SQL

ALERT:C41("Fini")