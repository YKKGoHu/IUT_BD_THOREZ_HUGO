//%attributes = {}
var $result : Text
var $curs_boutique; $curs_article; $idBoutique : Integer
var $nbreArticles : Integer
var $intituleArticle : Text


ARRAY LONGINT:C221($aIDs; 0)

Begin SQL
	
	SELECT ID FROM BOUTIQUE
	INTO :$aIDs;
	
End SQL

For ($curs_boutique; 1; Size of array:C274($aIDs))
	
	$nbreArticles:=Random:C100%5  // 0, 1, 2, 3 ou 4
	For ($curs_article; 1; $nbreArticles)
		
		Case of 
			: ($curs_article=1)
				$intituleArticle:="Granola"
			: ($curs_article=2)
				$intituleArticle:="Fanta"
			: ($curs_article=3)
				$intituleArticle:="Nutella"
			Else 
				$intituleArticle:="Eau"
		End case 
		
		$idBoutique:=$aIDs{$curs_boutique}
		
		Begin SQL
			
			INSERT INTO ARTICLE
			(Libelle, Prix_HT, Taux_TVA, ID_Boutique)
			VALUES
			(:$intituleArticle, NULL, NULL, :$idBoutique);
			
		End SQL
		
		
	End for 
	
End for 

ALERT:C41("Done")