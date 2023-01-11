var $credit : cs:C1710.CREDITntity
$credit:=ds:C1482.CREDIT.new()
$credit.Montant:=100
$credit.utilisateur:=Form:C1466.utilisateurAffiche
$credit.save()
