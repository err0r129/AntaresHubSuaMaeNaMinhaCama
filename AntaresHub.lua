local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Antares Hub V0.4.1", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest", introText = eae})
OrionLib:MakeNotification({
	Name = "Maded By Boris",
	Content = "Pra poder colaborar com o hub, por favor entre no nosso discord: .gg/uAtpbJG4y4",
	Image = "rbxassetid://15152517555",
	Time = 15
})
OrionLib:MakeNotification({
	Name = "ANTES DE USAR!",
	Content = "Execute o mobile keyboard na aba importante para abrir o hub! obrigado. (ShiftDireita para abrir)",
	Image = "rbxassetid://15152517555",
	Time = 7
})
local Tab = Window:MakeTab({
	Name = "Fechar/Abrir Hub",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddLabel("USE PARA FECHAR O HUB NO MOBILE")
Tab:AddButton({
Name = "teclado pra mobile",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
end
})
local Tab = Window:MakeTab({
	Name = "Kit Brookhaven",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Hubs"
})
Tab:AddButton({
	Name = "Ice Hub [Útil]",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/IceMael7/NewIceHub/main/Brookhaven"))()
end
})
Tab:AddButton({
Name = "Unfair Hub [Não Usado Por Mim]",
	Callback = function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/rblxscriptsnet/unfair/main/rblxhub.lua'),true))()
  	end    
  })
    Tab:AddButton({
	Name = "Juanko Hub [Não usado por mim]",
	Callback = function()
loadstring(game:HttpGet("https://pastefy.app/tIiioko4/raw"))()
end
})
Tab:AddButton({
	Name = "REDz Hub [Buga Dms, não usado por mim]",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/REDzHUB/main/REDzHUB"))()
end
})
local Section = Tab:AddSection({
	Name = "Guis"
})

Tab:AddButton({
	Name = "Infinite Yield [Útil]",
	Callback = function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end
})
Tab:AddButton({
	Name = "Fly Gui [Útil]",
	Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/Pro69Yes/sussy-Script/main/SecuredFlyGuiv3.lua'))()
  	end    
})
local Section = Tab:AddSection({
	Name = "Útil soq em seçao separada"
})
Tab:AddButton({
	Name = "ChatSpy (Pra ver PV dos outros)",
	Callback = function()
--antares on top
--This script reveals ALL hidden messages in the default chat

enabled = true --chat "/spy" to toggle!
spyOnMyself = true --if true will check your messages too
public = false --if true will chat the logs publicly (fun, risky)
publicItalics = true --if true will use /me to stand out
privateProperties = { --customize private logs
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
	Name = "Chat Spam [Agora funciona]",
	Callback = function()
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ANTARES PASSA NADA .gg/uAtpbJG4y4 SLK","All")
wait(1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ANTARES PASSA NADA .gg/uAtpbJG4y4 SLK","All")
wait(1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ANTARES PASSA NADA .gg/uAtpbJG4y4 SLK","All")
wait(1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ANTARES PASSA NADA .gg/uAtpbJG4y4 SLK","All")
wait(1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ANTARES PASSA NADA .gg/uAtpbJG4y4 SLK","All")
wait(1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ANTARES PASSA NADA .gg/uAtpbJG4y4 SLK","All")
wait(1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ANTARES PASSA NADA .gg/uAtpbJG4y4 SLK","All")
wait(1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ANTARES PASSA NADA .gg/uAtpbJG4y4 SLK","All")
wait(1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ANTARES PASSA NADA .gg/uAtpbJG4y4 SLK","All")
wait(1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ANTARES PASSA NADA .gg/uAtpbJG4y4 SLK","All")
wait(1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ANTARES PASSA NADA .gg/uAtpbJG4y4 SLK","All")
wait(1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ANTARES PASSA NADA .gg/uAtpbJG4y4 SLK","All")
wait(1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ANTARES PASSA NADA .gg/uAtpbJG4y4 SLK","All")
wait(1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ANTARES PASSA NADA .gg/uAtpbJG4y4 SLK","All")
wait(1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ANTARES PASSA NADA .gg/uAtpbJG4y4 SLK","All")
wait(1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ANTARES PASSA NADA .gg/uAtpbJG4y4 SLK","All")
wait(1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ANTARES PASSA NADA .gg/uAtpbJG4y4 SLK","All")
wait(2)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ANTARES PASSA NADA .gg/uAtpbJG4y4 SLK","All")
wait(1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ANTARES PASSA NADA .gg/uAtpbJG4y4 SLK","All")
wait(1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ANTARES PASSA NADA .gg/uAtpbJG4y4 SLK","All")
wait(1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ANTARES PASSA NADA .gg/uAtpbJG4y4 SLK","All")
wait(1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ANTARES PASSA NADA .gg/uAtpbJG4y4 SLK","All")
wait(1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ANTARES PASSA NADA .gg/uAtpbJG4y4 SLK","All")
wait(1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ANTARES PASSA NADA .gg/uAtpbJG4y4 SLK","All")
wait(1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ANTARES PASSA NADA .gg/uAtpbJG4y4 SLK","All")
wait(1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ANTARES PASSA NADA .gg/uAtpbJG4y4 SLK","All")
wait(1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ANTARES PASSA NADA .gg/uAtpbJG4y4 SLK","All")
wait(1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ANTARES PASSA NADA .gg/uAtpbJG4y4 SLK","All")
wait(1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ANTARES PASSA NADA .gg/uAtpbJG4y4 SLK","All")
wait(1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ANTARES PASSA NADA .gg/uAtpbJG4y4 SLK","All")
wait(1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ANTARES PASSA NADA .gg/uAtpbJG4y4 SLK","All")
wait(1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ANTARES PASSA NADA .gg/uAtpbJG4y4 SLK","All")
wait(1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ANTARES PASSA NADA .gg/uAtpbJG4y4 SLK","All")
wait(1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ANTARES PASSA NADA .gg/uAtpbJG4y4 SLK","All")
wait(1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ANTARES PASSA NADA .gg/uAtpbJG4y4 SLK","All")
wait(1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ANTARES PASSA NADA .gg/uAtpbJG4y4 SLK","All")
wait(1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ANTARES PASSA NADA .gg/uAtpbJG4y4 SLK","All")
wait(1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ANTARES PASSA NADA .gg/uAtpbJG4y4 SLK","All")
wait(1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ANTARES PASSA NADA .gg/uAtpbJG4y4 SLK","All")
wait(1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ANTARES PASSA NADA .gg/uAtpbJG4y4 SLK","All")
wait(1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ANTARES PASSA NADA .gg/uAtpbJG4y4 SLK","All")
wait(1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ANTARES PASSA NADA .gg/uAtpbJG4y4 SLK","All")
wait(1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ANTARES PASSA NADA .gg/uAtpbJG4y4 SLK","All")
wait(1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ANTARES PASSA NADA .gg/uAtpbJG4y4 SLK","All")
wait(1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ANTARES PASSA NADA .gg/uAtpbJG4y4 SLK","All")
wait(1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ANTARES PASSA NADA .gg/uAtpbJG4y4 SLK","All")
wait(1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ANTARES PASSA NADA .gg/uAtpbJG4y4 SLK","All")
wait(1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ANTARES PASSA NADA .gg/uAtpbJG4y4 SLK","All")
wait(1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ANTARES PASSA NADA .gg/uAtpbJG4y4 SLK","All")
wait(1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ANTARES PASSA NADA .gg/uAtpbJG4y4 SLK","All")
wait(5)
print("Antares No Topooo!")
end
})
Tab:AddButton({
	Name = "Decal Bomb (Visual, so tu pode ver)",
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
	Name = "Servidor Privado",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton({
	Name = "Convite pro servidor privado (checke console)",
	Callback = function()
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("fale /console","All")
print("https://discord.com/invite/A3vhM9PA")
end
})
local Tab = Window:MakeTab({
	Name = "Feito Por Boris",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton({
	Name = "c00lrussian's gui (skid ver.)",
	Callback = function()
-- im a skid
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
title.Text = "c00lrussian's gui skid version V1"
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
	Name = "c00lguis and misc (meu primeiro script do mundo inteiro)",
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

Tab:AddButton({
        Name = "Zeri Hub (Um hub que ainda estou trabalhando, o único que scripto o resto ta abandonado)",
        Callback = function()
local GUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/CasparLmao/Ui-Libs/Main/Playstation/Playstation.Source"))()

local UI = GUI:CreateWindow("Zeri Hub V1.2","W QP Maded by boris and name by SKYPINE")

local Home = UI:addPage("FPS Games",1,true,6)

Home:addLabel("ZERI HUB ON TOP!!","we bac")

Home:addButton("Hitbox",function()
    _G.HeadSize = 15
    _G.Disabled = true
    game:GetService("RunService").RenderStepped:Connect(
        function()
            if _G.Disabled then
                for i, v in next, game:GetService("Players"):GetPlayers() do
                    if v.Name ~= game:GetService("Players").LocalPlayer.Name then
                        pcall(
                            function()
                                v.Character.HumanoidRootPart.Size =
                                    Vector3.new(_G.HeadSize, _G.HeadSize, _G.HeadSize)
                                v.Character.HumanoidRootPart.Transparency = 0.7
                                v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Bright Red")
                                v.Character.HumanoidRootPart.Material = "Neon"
                                v.Character.HumanoidRootPart.CanCollide = false
                            end
                        )
                    end
                end
            end
        end
    )
end)

Home:addButton("Aimbot (Laggy)",function()
    getgenv().Prediction = 1
    getgenv().AimPart = "LowerTorso"
    getgenv().Key = "q"
    getgenv().AutoPrediction = true
    loadstring(
        game:HttpGet("https://raw.githubusercontent.com/elxocasXD/Trip-Hub/main/Scripts/Cam%20Lock.lua")
    )()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
end)

local Trl = UI:addPage("Trolling",1,true,6)
Trl:addButton("Fling Gui",function()
    loadstring(game:HttpGet("https://paste.ee/r/NTtmf", true))()
end)

Trl:addButton("Antares Hub By Me",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/BorisLua/AntaresHubSuaMaeNaMinhaCama/main/EnglishAntaresHub.lua"))()
end)

local BldB = UI:addPage("Blade Ball 🔥",1,true,6)

BldB:addButton("REDz Hub",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/BladeBall/main/redz9999"))()
end)

BldB:addButton("Berserk Hub",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/samirayt/SCRIPT-FREE/main/Gratis"))()
end)

BldB:addButton("Auto Parry",function()
    local Debug = false

    local Players = game:GetService("Players")
    local ReplicatedStorage = game:GetService("ReplicatedStorage")

    local Player = Players.LocalPlayer or Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
    local Remotes = ReplicatedStorage:WaitForChild("Remotes", 9e9)
    local Balls = workspace:WaitForChild("Balls", 9e9)

    local function print(...)
        if Debug then
            warn(...)
        end
    end

    local function VerifyBall(Ball)
        if typeof(Ball) == "Instance" and Ball:IsA("BasePart") and Ball:IsDescendantOf(Balls) then
            return (Ball:GetAttribute("realBall") == true)
        end
    end

    local function IsTarget()
        return Player.Character and Player.Character:FindFirstChild("Highlight")
    end

    local function Parry()
        Remotes:WaitForChild("ParryButtonPress"):Fire()
    end

    Balls.ChildAdded:Connect(
        function(Ball)
            if not VerifyBall(Ball) then
                return
            end

            local OldPosition = Ball.Position
            local OldTick = tick()

            Ball:GetPropertyChangedSignal("Position"):Connect(
                function()
                    if IsTarget() then
                        local Distance = (Ball.Position - workspace.CurrentCamera.Focus.Position).Magnitude
                        local Velocity = (OldPosition - Ball.Position).Magnitude

                        if (Distance / Velocity) then
                        end
                    end
                end
            )
        end
    )
end)

BldB:addButton("ZzzHub (Key: ZzzHubV1)",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZzzScript/Key-System/main/ZzzHubBETA"))()
end)

BldB:addButton("Joe BidenZ Hub V2",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/JoeBidenhub/JoeBidenZ-Hub-V2/main/Full%20Version%202",true))()
end)

BldB:addButton("Xzei Hub",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/gclich/XZEI_HUB-_BLADEBALL/main/XZEI_HUBX.txt"))()
end)

local BldB2 = UI:addPage("Blade Ball Page 2🔥",1,true,6)

BldB2:addButton("Noxin Hub [NEW]",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/fbisghosts/NOX/main/Noxine.lua"))()
end)

BldB2:addButton("Detroit.cc hub [It might not work]",function()
    loadstring(game:HttpGet("https://paste.gg/p/anonymous/afc356c7146a40a6873aed6b03486c99/files/0a54ec4dfc864371a5c90e1b36fec708/raw"))()
end)

BldB2:addButton("WaterMelon Hub",function()
    loadstring(game:HttpGet("https://paste.gg/p/Lina/e15aec4a51e54bfe96a8b7e4b6094b3c/files/d29a355abfbc471bbbc8e4fa0be6e253/raw"))()
end)

BldB2:addButton("NoHax V2 [might not work]",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ForYourHead/NoHaxV2/main/NohaxBladeBall",true))()
end)

BldB2:addButton("Ganja Hub [Might not work]",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Krnow1/Ganjahub/main/Ganjahubontop"))()
end)

local BW = UI:addPage("Bedwars",1,true,6)

BW:addButton("Alsploit",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/AlSploit/AlSploit/main/Bedwars"))()
end)

BW:addButton("Unpatch Vxpe",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/cdezxswzq/NewVapeUnpatched4Roblox/main/Loader.lua", true))()
end)

BW:addButton("AllBedwars Script",function()
    loadstring(game:HttpGet("https://pastebin.com/raw/AwgwbDG7"))()
end)

local UN = UI:addPage("Universal",1,true,6)

UN:addButton("Infinite Yield FE",function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

UN:addButton("Nameless Admin FE",function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/FilteringEnabled/NamelessAdmin/main/Source'))()
end)

UN:addButton("Fling gui but another(works only for collision games)",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/0Ben1/fe./main/Fling%20GUI%22"))()
end)

UN:addButton("Chat Bypasser 💀 (Ban risk)",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/RealRBC/RBC.Byp/main/RBC.Byp%20V.1.3"))()
end)

UN:addButton("RTX Script (never tested it so it might not work)",function()
    loadstring(game:HttpGet(('https://pastefy.app/xXkUxA0P/raw'),true))()
end)

UN:addLabel("Tell me a suggestion!","Just enter the qp server and ping @b.ori.s on Discord ;)")
})
Tab:AddLabel("obrigado indi0ta por avaliar com um 9 o AHub")
Tab:AddLabel("Avalie se encontrar alguém chamado Boris!")
OrionLib:Init()
                  
