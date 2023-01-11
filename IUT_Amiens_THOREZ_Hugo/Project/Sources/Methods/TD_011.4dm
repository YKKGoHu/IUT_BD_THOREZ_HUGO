//%attributes = {}
var $result : Text
var $i : Integer

ARRAY TEXT:C222($aLibelle; 0)
ARRAY TEXT:C222($aBoutique; 0)

Begin SQL
	
	SELECT ARTICLE.Libelle, BOUTIQUE.Nom
	FROM ARTICLE
	FULL OUTER JOIN BOUTIQUE
	ON ARTICLE.ID_Boutique = BOUTIQUE.ID
	INTO :$aLibelle, :$aBoutique;
	
End SQL

For ($i; 1; Size of array:C274($aLibelle))
	$result+=$aLibelle{$i}+" - "+$aBoutique{$i}+"\r"
End for 

ALERT:C41($result)