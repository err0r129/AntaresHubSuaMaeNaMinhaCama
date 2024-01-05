local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))()
local Window = OrionLib:MakeWindow({Name = "Antares Hub English Ver. V0.4.1", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest", introText = eae})
OrionLib:MakeNotification({
	Name = "Maded By Boris",
	Content = "english and original brazilian version maded by boris (This hub is specially made for the Brazilian troll group Antares, but I'm distributing it to the public rn",
	Image = "rbxassetid://15152517555",
	Time = 15
})
OrionLib:MakeNotification({
	Name = "BEFORE USE!",
	Content = "Run the mobile keyboard on the important tab to open the hub! thanks. (Right Shift to open)",
	Image = "rbxassetid://15152517555",
	Time = 10
})
local Tab = Window:MakeTab({
	Name = "Close/Open",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddLabel("Our Sponsor today: Lemon Hub, The Best Blade Ball Script Ever!invitation below")
Tab:AddLabel("https://discord.com/invite/5gzR85MFsm")
Tab:AddLabel("USE IT TO CLOSE THE HUB ON MOBILE!")
Tab:AddLabel("English version is 100% produced! Enjoy")
Tab:AddButton({
Name = "Mobile Keyboard",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
end
})
local Tab = Window:MakeTab({
	Name = "Kids Troller 2000",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Hubs"
})
Tab:AddButton({
	Name = "Ice Hub [used]",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/IceMael7/NewIceHub/main/Brookhaven"))()
end
})
Tab:AddButton({
Name = "Unfair Hub[Not used on our trolls]",
	Callback = function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/rblxscriptsnet/unfair/main/rblxhub.lua'),true))()

      		print("button pressed")
  	end    
  })
    Tab:AddButton({
	Name = "Juanko Hub[Not used on our trolls]",
	Callback = function()
loadstring(game:HttpGet("https://pastefy.app/tIiioko4/raw"))()
end
})
Tab:AddButton({
	Name = "REDz Hub [Not used on our trolls]",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/REDzHUB/main/REDzHUB"))()
end
})
local Section = Tab:AddSection({
	Name = "Guis"
})

Tab:AddButton({
	Name = "Infinite Yield [used]",
	Callback = function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end
})
Tab:AddButton({
	Name = "Fly Gui [not used]",
	Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/Pro69Yes/sussy-Script/main/SecuredFlyGuiv3.lua'))()
	

      		print("button pressed")
  	end    
})
local Section = Tab:AddSection({
	Name = "Misc Scripts"
})
Tab:AddButton({
	Name = "Chat Spy [Useful af, spies dms]",
	Callback = function()
enabled = true
spyOnMyself = true
public = false
publicItalics = true 
privateProperties = { 
	Color = Color3.fromRGB(0,255,255); 
	Font = Enum.Font.SourceSansBold;
	TextSize = 18;
}


local StarterGui = game:GetService("StarterGui")
local Players = game:GetService("Players")
local player = Players.LocalPlayer or Players:GetPropertyChangedSignal("LocalPlayer"):Wait() or Players.LocalPlayer
local saymsg = game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest")
local getmsg = game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("OnMessageDoneFiltering")
local instance = (_G.chatSpyInstance or 0) + 1
_G.chatSpyInstance = instance

local function onChatted(p,msg)
	if _G.chatSpyInstance == instance then
		if p==player and msg:lower():sub(1,4)=="/spy" then
			enabled = not enabled
			wait(0.3)
			privateProperties.Text = "{SPY "..(enabled and "EN" or "DIS").."ABLED}"
			StarterGui:SetCore("ChatMakeSystemMessage",privateProperties)
		elseif enabled and (spyOnMyself==true or p~=player) then
			msg = msg:gsub("[\n\r]",''):gsub("\t",' '):gsub("[ ]+",' ')
			local hidden = true
			local conn = getmsg.OnClientEvent:Connect(function(packet,channel)
				if packet.SpeakerUserId==p.UserId and packet.Message==msg:sub(#msg-#packet.Message+1) and (channel=="All" or (channel=="Team" and public==false and Players[packet.FromSpeaker].Team==player.Team)) then
					hidden = false
				end
			end)
			wait(1)
			conn:Disconnect()
			if hidden and enabled then
				if public then
					saymsg:FireServer((publicItalics and "/me " or '').."{SPY} [".. p.Name .."]: "..msg,"All")
				else
					privateProperties.Text = "{SPY} [".. p.Name .."]: "..msg
					StarterGui:SetCore("ChatMakeSystemMessage",privateProperties)
				end
			end
		end
	end
end

for _,p in ipairs(Players:GetPlayers()) do
	p.Chatted:Connect(function(msg) onChatted(p,msg) end)
end
Players.PlayerAdded:Connect(function(p)
	p.Chatted:Connect(function(msg) onChatted(p,msg) end)
end)
privateProperties.Text = "{SPY "..(enabled and "EN" or "DIS").."ABLED}"
StarterGui:SetCore("ChatMakeSystemMessage",privateProperties)
if not player.PlayerGui:FindFirstChild("Chat") then wait(3) end
local chatFrame = player.PlayerGui.Chat.Frame
chatFrame.ChatChannelParentFrame.Visible = true
chatFrame.ChatBarParentFrame.Position = chatFrame.ChatChannelParentFrame.Position+UDim2.new(UDim.new(),chatFrame.ChatChannelParentFrame.Size.Y)
end
})
local Tab = Window:MakeTab({
	Name = "Misc",
	Icon = "rbxassetid://15152517555",
	PremiumOnly = false
})
Tab:AddButton({
	Name = "Chat Spam 💣",
	Callback = function()
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("THE BEST TROLLER GROUP IN BRAZIL,ANTARES","All")
wait(1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("THE BEST TROLLER GROUP IN BRAZIL,ANTARES","All")
wait(1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("THE BEST TROLLER GROUP IN BRAZIL,ANTARES","All")
wait(1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("THE BEST TROLLER GROUP IN BRAZIL,ANTARES","All")
wait(1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("THE BEST TROLLER GROUP IN BRAZIL,ANTARES","All")
wait(1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("THE BEST TROLLER GROUP IN BRAZIL,ANTARES","All")
wait(1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("THE BEST TROLLER GROUP IN BRAZIL,ANTARES","All")
wait(1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("THE BEST TROLLER GROUP IN BRAZIL,ANTARES","All")
wait(1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("THE BEST TROLLER GROUP IN BRAZIL,ANTARES","All")
wait(1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("THE BEST TROLLER GROUP IN BRAZIL,ANTARES","All")
wait(1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("THE BEST TROLLER GROUP IN BRAZIL,ANTARES","All")
wait(1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("THE BEST TROLLER GROUP IN BRAZIL,ANTARES","All")
wait(1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("THE BEST TROLLER GROUP IN BRAZIL,ANTARES","All")
wait(1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("THE BEST TROLLER GROUP IN BRAZIL,ANTARES","All")
wait(1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("THE BEST TROLLER GROUP IN BRAZIL,ANTARES","All")
wait(1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("THE BEST TROLLER GROUP IN BRAZIL,ANTARES","All")
wait(1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("THE BEST TROLLER GROUP IN BRAZIL,ANTARES","All")
wait(1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("THE BEST TROLLER GROUP IN BRAZIL,ANTARES","All")
wait(1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("THE BEST TROLLER GROUP IN BRAZIL,ANTARES","All")
wait(1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("THE BEST TROLLER GROUP IN BRAZIL,ANTARES","All")
wait(1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("THE BEST TROLLER GROUP IN BRAZIL,ANTARES","All")
wait(1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("THE BEST TROLLER GROUP IN BRAZIL,ANTARES","All")
wait(1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("THE BEST TROLLER GROUP IN BRAZIL,ANTARES","All")
wait(1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("THE BEST TROLLER GROUP IN BRAZIL,ANTARES","All")
wait(1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("THE BEST TROLLER GROUP IN BRAZIL,ANTARES","All")
wait(1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("THE BEST TROLLER GROUP IN BRAZIL,ANTARES","All")
wait(1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("THE BEST TROLLER GROUP IN BRAZIL,ANTARES","All")
wait(1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("THE BEST TROLLER GROUP IN BRAZIL,ANTARES","All")
wait(1)

Tab:AddButton({
	Name = "Decal Bomb (Visual)",
	Callback = function()
sound = Instance.new("Sound",workspace)
sound.Name = "Spooky scary skeletons - jontron"
sound.SoundId = "rbxassetid://138081566"
sound:Play()
sound.Looped = true
local ID = 15152517555
 local Skybox = true
 local particle = true
 
-- DO NOT CHANGE BELOW. UNLESS YOU KNOW WHAT YOU'RE DOING.
 
for i,v in pairs (game.Workspace:GetChildren()) do
        if v:IsA("Part") then
            local decal1 =Instance.new("Decal")
            local decal2 =Instance.new("Decal")
            local decal3 =Instance.new("Decal")
            local decal4 =Instance.new("Decal")
            local decal5 =Instance.new("Decal")
            local decal6 =Instance.new("Decal")
            decal1.Texture = "http://www.roblox.com/asset/?id=" ..ID
            decal2.Texture = "http://www.roblox.com/asset/?id=" ..ID
            decal3.Texture = "http://www.roblox.com/asset/?id=" ..ID
            decal4.Texture = "http://www.roblox.com/asset/?id=" ..ID
            decal5.Texture = "http://www.roblox.com/asset/?id=" ..ID
            decal6.Texture = "http://www.roblox.com/asset/?id=" ..ID
            decal1.Parent = v
            decal2.Parent = v
            decal3.Parent = v
            decal4.Parent = v
            decal5.Parent = v
            decal6.Parent = v
            decal1.Face = "Front"
            decal2.Face = "Top"
            decal3.Face = "Left"
            decal4.Face = "Right"
            decal5.Face = "Bottom"
            decal6.Face = "Back"
        end
        end
            for i,v in pairs (game.Workspace:GetChildren()) do
            if v:IsA("Model") then
            for i,z in pairs (v:GetChildren()) do
            if z:IsA("Part") then
                        local decal7 =Instance.new("Decal")
            local decal8 =Instance.new("Decal")
            local decal9 =Instance.new("Decal")
            local decal10 =Instance.new("Decal")
            local decal11 =Instance.new("Decal")
            local decal12 =Instance.new("Decal")
            decal7.Texture = "http://www.roblox.com/asset/?id=15152517555" 
            decal8.Texture = "http://www.roblox.com/asset/?id=15152517555" 
            decal9.Texture = "http://www.roblox.com/asset/?id=15152517555" 
            decal10.Texture = "http://www.roblox.com/asset/?id=15152517555" 
            decal11.Texture = "http://www.roblox.com/asset/?id=15152517555" 
            decal12.Texture = "http://www.roblox.com/asset/?id=15152517555" 
            decal7.Parent = z
            decal8.Parent = z
            decal9.Parent = z
            decal10.Parent = z
            decal11.Parent = z
            decal12.Parent = z
            decal7.Face = "Front"
            decal8.Face = "Top"
            decal9.Face = "Left"
            decal10.Face = "Right"
            decal11.Face = "Bottom"
            decal12.Face = "Back"
            end
            end
            end
            end 
 
 
if Skybox == true then
local sky = Instance.new("Sky")
sky.Parent = game.Lighting
sky.SkyboxBk = "http://www.roblox.com/asset/?id=15152517555" 
sky.SkyboxDn = "http://www.roblox.com/asset/?id=15152517555" 
sky.SkyboxFt = "http://www.roblox.com/asset/?id=15152517555" 
sky.SkyboxLf = "http://www.roblox.com/asset/?id=15152517555" 
sky.SkyboxRt = "http://www.roblox.com/asset/?id=15152517555" 
sky.SkyboxUp = "http://www.roblox.com/asset/?id=15152517555" 
end
 
if particle == true then
for i,v in pairs (game.Workspace:GetChildren()) do
        if v:IsA("Part") then
    local particle = Instance.new("ParticleEmitter")
    particle.Texture = "http://www.roblox.com/asset/?id=" ..ID
    particle.Parent = v
    particle.Rate = 200
    for i,x in pairs (game.Workspace:GetChildren()) do
        if x:IsA("Model") then
            for i,z in pairs (x:GetChildren()) do
            if z:IsA("Part") then
                    local particle2 = Instance.new("ParticleEmitter")
particle2.Texture = "http://www.roblox.com/asset/?id=12389061"
    particle2.Parent = z
    particle2.Rate = 200
                end
            end
        end
        end
        end
        end
end
  	end    
  
})
local Tab = Window:MakeTab({
	Name = "Oficial Antares Hub Server (not antares troll server)",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton({
	Name = "invitation to the Antares hub server (not available in English)",
	Callback = function()
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("speak /console","All")
print("https://discord.com/invite/A3vhM9PA")
end
})
local Tab = Window:MakeTab({
	Name = "Maded By Boris Too",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton({
	Name = "c00lrussian's gui",
	Callback = function()
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.Players.LocalPlayer.PlayerGui

local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 400, 0, 200)
mainFrame.Position = UDim2.new(0.5, -200, 0.5, -100)
mainFrame.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
mainFrame.BorderSizePixel = 5
mainFrame.BorderColor3 = Color3.new(0, 0, 0)
mainFrame.Parent = screenGui

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 30)
title.Text = "c00lrussian's gui  V1"
title.TextColor3 = Color3.new(1, 1, 1)
title.BackgroundColor3 = Color3.new(0, 0, 0)
title.Parent = mainFrame

local decalID = 433517918
local backgroundDecal = Instance.new("Decal")
backgroundDecal.Texture = "http://www.roblox.com/asset/?id=" .. decalID
backgroundDecal.Parent = mainFrame

local madeByText = Instance.new("TextLabel")
madeByText.Size = UDim2.new(1, 0, 0, 30)
madeByText.Position = UDim2.new(0, 0, 1, -30)
madeByText.Text = "@c00lrussian on ytb!1!1!1 creator of troll group antares tho"
madeByText.TextColor3 = Color3.new(1, 1, 1)
madeByText.BackgroundColor3 = Color3.new(0, 0, 0)
madeByText.Parent = mainFrame

local isDragging = false
local lastInputPosition = nil

mainFrame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
        isDragging = true
        lastInputPosition = input.Position
    end
end)

mainFrame.InputChanged:Connect(function(input)
    if isDragging and (input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseMovement) then
        local delta = input.Position - lastInputPosition
        mainFrame.Position = UDim2.new(
            mainFrame.Position.X.Scale,
            mainFrame.Position.X.Offset + delta.X,
            mainFrame.Position.Y.Scale,
            mainFrame.Position.Y.Offset + delta.Y
        )
        lastInputPosition = input.Position
    end
end)

mainFrame.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
        isDragging = false
    end
end)

local buttonInfo = {
    { "Infinite Yield FE", 'https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source' },
    { "Nameless Admin FE", 'https://raw.githubusercontent.com/FilteringEnabled/NamelessAdmin/main/Source' },
    { "Copy Random Player Skins", copyRandomPlayerSkins },
    { "Hint", showHint },
}

-- Function to create and connect buttons
local function createButton(index, text, scriptUrl)
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(0, 200, 0, 50)
    button.Position = UDim2.new(0.5, -100, 0.25 + 0.25 * (index - 1), -25)
    button.Text = text
    button.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    button.BorderColor3 = Color3.new(0, 0, 0)
    button.TextColor3 = Color3.new(0, 0, 0)
    button.Parent = mainFrame

    button.MouseButton1Click:Connect(function()
        if type(scriptUrl) == "string" then
            loadstring(game:HttpGet(scriptUrl))()
        elseif type(scriptUrl) == "function" then
            scriptUrl()
        end
    end)
end

-- Create and connect buttons
for index, info in ipairs(buttonInfo) do
    createButton(index, info[1], info[2])
end

-- Function to copy random player's skins
local function copyRandomPlayerSkins()
    local players = game.Players:GetPlayers()

    if #players > 0 then
        local randomPlayer = players[math.random(1, #players)]

        -- Ensure the player has character and character appearance
        if randomPlayer.Character and randomPlayer.Character:FindFirstChild("Appearance") then
            -- Copy the appearance to the local player
            game.Players.LocalPlayer.CharacterAppearance = randomPlayer.Character.Appearance:Clone()
        else
            warn("Selected player is missing appearance data.")
        end
    else
        warn("No other players on the server.")
    end
end

-- Function to print a hint message
local function showHint()
    local H = Instance.new("Hint", game.Workspace)
    H.Parent = game.Workspace
    H.Text = ("hacked by c00lrussian")
end
end
})
Tab:AddButton({
	Name = "c00lguis and misc (my first script)",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/IceMael7/NewIceHub/main/Brookhaven"))()
-- you can delete or leave this text lol
local ScreenGui = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local title = Instance.new("TextLabel")
local Text = Instance.new("TextButton")
local Te = Instance.new("TextButton")
local close = Instance.new("TextButton")
local openmain = Instance.new("Frame")
local open = Instance.new("TextButton")
--Properties:
ScreenGui.Parent = game.CoreGui

main.Name = "main"
main.Parent = ScreenGui
main.BackgroundColor3 = Color3.new(0, 0, 0)
main.Position = UDim2.new(0.0203577988, 0, 0.641277611, 0)
main.Size = UDim2.new(0, 332, 0, 211)
main.Visible = false
main.Active = true
main.Draggable = true

title.Name = "title"
title.Parent = main
title.BackgroundColor3 = Color3.new(1, 0, 1)
title.Size = UDim2.new(0, 332, 0, 31)
title.Font = Enum.Font.GothamBold
title.Text = "c00lguis & misc by c00lrussian"
title.TextColor3 = Color3.new(0, 0, 0)
title.TextSize = 14

Text.Name = "Text"
Text.Parent = main
Text.BackgroundColor3 = Color3.new(0.333333, 1, 0)
Text.Position = UDim2.new(0.036144577, 0, 0.379146934, 0)
Text.Size = UDim2.new(0, 110, 0, 50)
Text.Font = Enum.Font.GothamBold
Text.Text = "Oficial c00lgui"
Text.TextColor3 = Color3.new(0, 0, 0)
Text.TextScaled = true
Text.TextSize = 10
Text.TextWrapped = true
Text.MouseButton1Down:connect(function()
loadstring(game:GetObjects("rbxassetid://8127297852")[1].Source)()
end)

Te.Name = "Te"
Te.Parent = main
Te.BackgroundColor3 = Color3.new(0.333333, 1, 0)
Te.Position = UDim2.new(0.614457846, 0, 0.379146934, 0)
Te.Size = UDim2.new(0, 110, 0, 50)
Te.Font = Enum.Font.GothamBold
Te.Text = "Infinite Yield FE"
Te.TextColor3 = Color3.new(0, 0, 0)
Te.TextScaled = true
Te.TextSize = 14
Te.TextWrapped = true
Te.MouseButton1Down:connect(function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

close.Name = "close"
close.Parent = main
close.BackgroundColor3 = Color3.new(1, 0, 0)
close.Position = UDim2.new(0.879518092, 0, 0, 0)
close.Size = UDim2.new(0, 40, 0, 31)
close.Font = Enum.Font.GothamBlack
close.Text = "-"
close.TextColor3 = Color3.new(0, 0, 0)
close.TextScaled = true
close.TextSize = 14
close.TextWrapped = true
close.MouseButton1Down:connect(function()
main.Visible = false
openmain.Visible = true
end)

openmain.Name = "openmain"
openmain.Parent = ScreenGui
openmain.BackgroundColor3 = Color3.new(1, 1, 1)
openmain.Position = UDim2.new(0.00801973976, 0, 0.423832953, 0)
openmain.Size = UDim2.new(0, 100, 0, 28)
openmain.Active = true
openmain.Draggable = true

open.Name = "open"
open.Parent = openmain
open.BackgroundColor3 = Color3.new(1, 0, 0)
open.Size = UDim2.new(0, 100, 0, 28)
open.Font = Enum.Font.GothamBold
open.Text = "Open"
open.TextColor3 = Color3.new(0, 0, 0)
open.TextSize = 18
open.TextWrapped = true
open.MouseButton1Down:connect(function()
openmain.Visible = false
main.Visible = true
end)
end
})
Tab:AddLabel("Our Sponsor today: Lemon Hub, The Best Blade Ball Script Ever!invitation below")
Tab:AddLabel("https://discord.com/invite/5gzR85MFsm")
OrionLib:Init()
                  