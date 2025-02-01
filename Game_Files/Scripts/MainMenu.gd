extends Control

#Variables for specifc menus
@onready var mainMenu = $StartMenu;

#Variables for the specific buttons in the start menu
@onready var newGameButton = $StartMenu/NewText/NewButton
@onready var loadGameButton = $StartMenu/LoadText/LoadButton
@onready var onlineButton = $StartMenu/OnlineText/OnlineButton
@onready var settingsButton = $StartMenu/SettingsText/SettingsButton
@onready var quitGameButton = $StartMenu/QuitText/QuitButton

func newGamePressed():
	#This is a temporary scenchange until we have a proper first scene
	get_tree().change_scene_to_file("res://Game_Files/Scenes/Player/Player_Demo.tscn")
	
func loadGamePressed():
	#This is a temporary scenchange until we have a proper load sequence
	get_tree().change_scene_to_file("res://Game_Files/Scenes/Player/Player_Demo.tscn")
	
func onlinePressed():
	pass
	
func settingsPressed():
	hideStartMenu()
	
#This functions exits the game. It does not save any data as that functionality happens within game
func quitPressed():
	get_tree().quit()
	
#This function is used to hide and disable the main menu whenever another menu is open
func hideStartMenu():
	mainMenu.hide()
	newGameButton.disabled = true
	loadGameButton.disabled = true
	onlineButton.disabled = true
	settingsButton.disabled = true
	quitGameButton.disabled = true

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
