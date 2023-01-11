//%attributes = {}
var $curs_evenement; $nbreBoutique : Integer
var $curs_Boutique : Integer
var $nomBoutique : Text

ARRAY LONGINT:C221($aIDs; 0)

Begin SQL
	
	SELECT ID FROM EVENEMENT
	INTO :$aIDs;
	
End SQL

For ($curs_evenement; 1; Size of array:C274($aIDs))
	
	$nbreBoutique:=Random:C100%5  // 0 ... 4
	For ($curs_Boutique; 1; $nbreBoutique)
		
		Case of 
			: ($curs_Boutique=1)
				$nomBoutique:="Boutique 1"
			: ($curs_Boutique=2)
				$nomBoutique:="Boutique 2"
			: ($curs_Boutique=3)
				$nomBoutique:="Boutique 3"
				
			Else 
				$nomBoutique:="Boutique"
				
		End case 
		
		$idEvenement:=$aIDs{$curs_evenement}
		
		Begin SQL
			INSERT INTO BOUTIQUE
			(Nom,ID_Evenement)
			VALUES
			(:$nomBoutique, :$idEvenement);
		End SQL
		
	End for 
	
End for 

ALERT:C41("Fini")