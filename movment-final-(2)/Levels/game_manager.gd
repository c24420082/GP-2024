extends Node
@onready var scorelabel: Label = $Scorelabel
@onready var scorelabel2: Label = $Scorelabel2
@onready var scorelabel3: Label = $Scorelabel3
@onready var scorelabel4: Label = $Scorelabel4
@onready var scorelabel5: Label = $Scorelabel5

var score = 0 

func add_point():
	score += 1
	scorelabel.text = "You collected " + str(score) +  " scrap."
	scorelabel2.text = "You collected " + str(score) +  " scrap."
	scorelabel3.text = "You collected " + str(score) +  " scrap."
	scorelabel4.text = "You collected " + str(score) +  " scrap."
	scorelabel5.text = "You collected " + str(score) +  " scrap."
