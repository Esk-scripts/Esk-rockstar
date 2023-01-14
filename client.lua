local recording = false

RegisterCommand('grabar', function(source,args)
    if not recording then 
        if args[1] == 'replay' then 
            recording = true
            StartRecording(0)
        else
            recording = true
            StartRecording(1)
        end
    else
        Notification('~r~Ya estas grabando')
    end
end,false)

RegisterKeyMapping('grabar', 'Empezar a grabar', 'keyboard', '')

RegisterCommand('parargrabar', function(source,args)
    if recording then 
        recording = false
        StopRecordingAndSaveClip()
    else
        Notification('~r~No estas grabando')
    end
end,false)

RegisterKeyMapping('parargrabar', 'Parar de grabar', 'keyboard', '')

RegisterCommand('rockstareditor', function(source)
    NetworkSessionLeaveSinglePlayer()
    ActivateRockstarEditor()
end,false)

RegisterKeyMapping('rockstareditor', 'Rockstar Editor', 'keyboard', '')

function Notification(text)
    SetNotificationTextEntry("STRING")
	AddTextComponentString(text)
	DrawNotification(false, false)
end