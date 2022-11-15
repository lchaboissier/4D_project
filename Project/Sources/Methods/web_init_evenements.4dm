//%attributes = {"publishedWeb":true,"publishedSoap":true}
#DECLARE($in : Text)->$out : Text
var $indice : Integer
var $id_evenement : Text

ARRAY TEXT:C222($tableau_noms; 0)
ARRAY TEXT:C222($tableau_valeurs; 0)
WEB GET VARIABLES:C683($tableau_noms; $tableau_valeurs)

$indice:=Find in array:C230($tableau_noms; "id")
If ($indice>0)
	$id_evenement:=$tableau_valeurs{$indice}
End if 

If ($id_evenement#"")
	QUERY:C277([EVENEMENT:1]; [EVENEMENT:1]ID:1=Num:C11($id_evenement))
End if 