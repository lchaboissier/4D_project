Case of 
	: (Form event code:C388=On Load:K2:1)
		activate_modification_ETAB(False:C215)
		load_evenement
		
	: (Form event code:C388=On Selection Change:K2:29)
		READ ONLY:C145([EVENEMENT:1])
		activate_modification_ETAB(False:C215)
		var $colonne; $ligne : Integer
		
		LISTBOX GET CELL POSITION:C971(*; "List Box"; $colonne; $ligne)
		If ($ligne>0)
			GOTO SELECTED RECORD:C245([EVENEMENT:1]; $ligne)
			
			QUERY:C277([BOUTIQUE:4]; [BOUTIQUE:4]ID_EVENEMENT:3=[EVENEMENT:1]ID:1)
			
		End if 
		
End case 