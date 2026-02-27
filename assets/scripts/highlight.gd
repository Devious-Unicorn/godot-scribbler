extends MenuButton

@onready var custom_popup = $PopupMenu # Path to your PopupMenu node

func _ready():
	# Disable built-in popup action
	self.set_disable_shortcuts(true)
	# Connect button press to show the custom one
	self.pressed.connect(_show_custom_menu)

func _show_custom_menu():
	# Position the custom popup below the menu button
	custom_popup.position = global_position + Vector2(0, size.y)
	custom_popup.show()
