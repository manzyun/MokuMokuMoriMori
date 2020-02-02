extends CanvasLayer

signal gamestart

func _ready():
    #$Credit_Label.text = "-Programer-\n   manzyun\n     AIPON!\n       seki\n\n-spThanks-\n 33kingusp"
    pass    
    
func _on_Button_pressed():
    $Credit_Label.text = " "
    $StartButton.hide()
    if $AudioStreamPlayer.playing == false:
        $AudioStreamPlayer.playing = true
    $Timer.start(20)
    emit_signal("gamestart")
    pass

func _on_Timer_timeout():
    $Credit_Label.text = "-Programer-\n   manzyun\n    AIPON4\n       seki\n\n  -Graphic-\n   manzyun\n\n -spThanks-\n 33kingusp"
    $Timer.stop()
    $StartButton.text = "Restart"
    $StartButton.show() 
    pass

func _on_Timer_tick(time):
    $Timer_Label.text = str(int(time))    
    pass # Replace with function body.

func show_message(text):
    $Message_Label.text = text
    $Message_Label.show()
    $Message_Timer.start()
    pass

func _on_Message_Timer_timeout():
    $Message_Label.hide()
    pass # Replace with function body.
