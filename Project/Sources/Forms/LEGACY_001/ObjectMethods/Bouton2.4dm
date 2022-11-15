READ WRITE:C146([BOUTIQUE:4])
LOAD RECORD:C52([BOUTIQUE:4])
If (Locked:C147([BOUTIQUE:4]))
	ALERT:C41("Verouiller")
Else 
	activate_modification_ETAB_B(True:C214)
End if 