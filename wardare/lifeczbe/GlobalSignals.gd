extends Node

# Autoload Singleton für zentrale Signal- und Event-Verwaltung
# Registriere diese Datei als Autoload unter dem Namen "GlobalSignals"

signal grid_step
signal cube_created
signal cube_removed
signal generation_ended
signal reward_awarded
signal agent_evolved
signal meta_event_triggered
signal debug_log(message: String)

@export var DEBUG_MODE: bool = false
@export var use_thread: bool = true  # Hinweis: Threading für teure Scans standardmäßig aktiv

func _ready():
    pass