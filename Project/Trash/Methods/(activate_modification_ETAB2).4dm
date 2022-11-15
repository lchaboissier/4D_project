//%attributes = {}
#DECLARE($activate : Boolean)

OBJECT SET ENTERABLE:C238([EVENEMENT:1]Libelle:2; $activate)
OBJECT SET ENTERABLE:C238([EVENEMENT:1]Date_Debut:3; $activate)
OBJECT SET ENTERABLE:C238([EVENEMENT:1]Date_Fin:4; $activate)
OBJECT SET ENABLED:C1123(*; "btn_enr"; $activate)
OBJECT SET ENABLED:C1123(*; "btn_suppr"; $activate)