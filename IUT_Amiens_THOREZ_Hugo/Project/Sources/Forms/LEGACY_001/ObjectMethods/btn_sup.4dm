CONFIRM:C162("Voulez-vous vraiment supprimer cet evenement ?"; "OUI"; "NON")
If (OK=1)
	DELETE RECORD:C58([EVENEMENT:1])
	ui_loadEvenements
	ui_displayEvenements
End if 

