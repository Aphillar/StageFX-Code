local MainScreen = script.Parent.Main_Screen

-- Alert Handler

local AlertOn = script.Parent.AlertMsgs
local AlertMsg = script.Parent.AlertMsgs["Alert-Content"]

local HttpsPass = false

if game.HttpService.HttpEnabled then
  HttpsPass = true
	print("Acada Systems - Stage FX | HTTPS check has been successful.")
else
  HttpsPass = false
	AlertOn.Visible = true
	MainScreen.Visible = false
	AlertMsg.Message.Text = "HTTPS ERROR | HTTPS has either timed out or you have not enabeled your game to have access to HTTPS services. To enable it, go to studio > your game > file > game settings > security > HTTPS Services, once enabeled your product will work as normal."
	AlertMsg.Title.Text = "HTTPS ERROR - Error: 40xcHttps"
	AlertMsg.Hint.Text = "If your game has HTTPS enabeled, pelase open a supprot ticket in our communications server: .gg/DqpQZvJ4bf "
end

if HttpsPass == true then
  MainScreen.Visible = true
  AlertOn.Visible = false
end
