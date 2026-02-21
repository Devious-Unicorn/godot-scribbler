extends Container

@onready var Main = get_node("../../../../..")

func _ready() -> void:
	visibility_changed.connect(Callable(Main, "showFileMenu"))
