READ WRITE:C146([EVENEMENT:1])  // Ce que je fais après sera en lect/ecri
LOAD RECORD:C52([EVENEMENT:1])  // Je recharge l'enre. en lect/ecr
If (Locked:C147([EVENEMENT:1]))
	ALERT:C41("Enregistrement déjà en cours d'édition par quelqu'un d'autre")
End if 
ui_displayEvenements