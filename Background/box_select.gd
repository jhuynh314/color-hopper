extends Control

func updateColor(color: GlobalVariables.MainColors):
	print("updating box select color")
	$ColorRect.color = GlobalVariables.colorToColorDictionary[color]

func selectBox():
	$ColorRect2.color = Color.WHITE

func unselectBox():
	$ColorRect2.color = Color.BLACK
