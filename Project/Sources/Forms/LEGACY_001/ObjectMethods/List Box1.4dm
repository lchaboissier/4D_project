Case of 
	: (Form event code:C388=On Load:K2:1)
		activate_modification_ETAB(False:C215)
		load_evenement
		
	: (Form event code:C388=On Selection Change:K2:29)
		READ ONLY:C145([BOUTIQUE:4])
		activate_modification_ETAB(False:C215)
		// Je m'assue que lors du changement de sélection
		// Le nouvel enre, est bien chargé en lecture seule
		var $colonne; $ligne : Integer
		
		LISTBOX GET CELL POSITION:C971(*; "List Box"; $colonne; $ligne)
		If ($ligne>0)
			GOTO SELECTED RECORD:C245([BOUTIQUE:4]; $ligne)
			
			
		End if 
		
End case 