extends Node2D

var gravity = 1000
enum MainColors {BLACK, RED, ORANGE, YELLOW, GREEN, BLUE, INDIGO, VIOLET, WHITE}

var colorToLayerDictionary: Dictionary = {
	MainColors.BLACK: 1,
	MainColors.RED: 2,
	MainColors.ORANGE: 3,
	MainColors.YELLOW: 4,
	MainColors.GREEN: 5,
	MainColors.BLUE: 6,
	MainColors.INDIGO: 7,
	MainColors.VIOLET: 8,
	MainColors.WHITE: 9
}
var colorToColorDictionary: Dictionary = {
	MainColors.BLACK: Color.BLACK,
	MainColors.RED: Color.RED,
	MainColors.ORANGE: Color.ORANGE,
	MainColors.YELLOW: Color.YELLOW,
	MainColors.GREEN: Color.GREEN,
	MainColors.BLUE: Color.BLUE,
	MainColors.INDIGO: Color.INDIGO,
	MainColors.VIOLET: Color.VIOLET,
	MainColors.WHITE: Color.WHITE,
}

var levelsUnlockedDictionary: Dictionary = {
	1: true,
	2: false,
	3: false,
	4: false,
	5: false,
}

var levelsCompletedDictionary: Dictionary = {
	1: false,
	2: false,
	3: false,
	4: false,
	5: false,
	6: false,
	7: false,
	8: false,
	9: false,
	10: false,
}

var levelToSceneDictionary: Dictionary = {
	1: "res://Levels/level_1.tscn",
	2: "res://Levels/level_2.tscn",
	3: "res://Levels/level_3.tscn",
	4: "res://Levels/level_4.tscn",
	5: "res://Levels/level_5.tscn",
}
