//%attributes = {}
Begin SQL
	
	INSERT INTO ARTICLE
	(Libelle, Prix_HT, Taux_TVA)
	VALUES
	('Article Orphelin', NULL, NULL);
	
End SQL

ALERT:C41("Done")