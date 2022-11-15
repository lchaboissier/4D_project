READ WRITE:C146([EVENEMENT:1])
LOAD RECORD:C52([EVENEMENT:1])
If (Locked:C147([EVENEMENT:1]))
	ALERT:C41("Verouiller")
Else 
	activate_modification_ETAB(True:C214)
End if 