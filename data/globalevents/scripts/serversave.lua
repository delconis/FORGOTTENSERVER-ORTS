local function serverSave()
	player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "Now Saveing")
	player:save()
	player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "Save Complete")
end

local function thirdServerSaveWarning()
        broadcastMessage("Server is saving game in one minute. Please go to a safe place.", MESSAGE_STATUS_WARNING)
        addEvent(serverSave, 60000)
end

local function secondServerSaveWarning()
        broadcastMessage("Server is saving game in 5 minute. Please go to a safe place.", MESSAGE_STATUS_WARNING)
        addEvent(thirdServerSaveWarning, 240000)
end

local function firstServerSaveWarning()
        broadcastMessage("Server is saving game in 10 minutes. Please go to a safe place.", MESSAGE_STATUS_WARNING)
        addEvent(secondServerSaveWarning, 300000)
end

function onTime(interval)
        broadcastMessage("Server is saving game in 30 minutes. Please go to a safe place.", MESSAGE_STATUS_WARNING)
        addEvent(firstServerSaveWarning, 1200000)
        return not shutdownAtServerSave
end