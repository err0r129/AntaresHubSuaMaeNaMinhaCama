-- fui mlk - neymar
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Antares Hub V0 . 3", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest", introText = eae})
OrionLib:MakeNotification({
	Name = "Maded By Boris",
	Content = "Pra poder colaborar com o hub, por favor entre no nosso discoard: .gg/uAtpbJG4y4",
	Image = "rbxassetid://15152517555",
	Time = 5
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
	Name = "Ice Hub",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/IceMael7/NewIceHub/main/Brookhaven"))()
end
})
Tab:AddButton({
Name = "Unfair Hub ⚠️ TALVEZ NÃO FUNCIONE NO MOBILE⚠️",
	Callback = function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/rblxscriptsnet/unfair/main/rblxhub.lua'),true))()

      		print("button pressed")
  	end    
})
local Section = Tab:AddSection({
	Name = "Guis"
})

Tab:AddButton({
	Name = "Infinite Yield",
	Callback = function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end
})
Tab:AddButton({
	Name = "Fly Gui",
	Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/Pro69Yes/sussy-Script/main/SecuredFlyGuiv3.lua'))()
	

      		print("button pressed")
  	end    
})
local Tab = Window:MakeTab({
	Name = "Créditos",
	Icon = "rbxassetid://15152517555",
	PremiumOnly = false
})
Tab:AddLabel("os dois nao tão funcionando mas fds")

Tab:AddButton({
	Name = "feito pelo Lukas Silva/Boris/robloxboris, obrigado pelo antares ",
	Callback = function()
      		print("bumda")
end
})
Tab:AddButton({
	Name = "Não Funciona 😭",
	Callback = function()
local interval = 1


local message = "ANTARES DOMINA, .gg uAtpbJG4y4"


local function sendMessage()
    local player = game.Players.LocalPlayer
    player:Chat(message)
end

while true do
    sendMessage()
    wait(interval)
end
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
OrionLib:Init()
                  
