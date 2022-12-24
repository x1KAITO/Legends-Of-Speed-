local lib = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/Vape.txt")()

local win = lib:Window("ᴋᴀɪᴛᴏ!#1976",Color3.fromRGB(44, 120, 224), Enum.KeyCode.RightControl)

local tab = win:Tab("Auto Farm")

tab:Toggle("Auto Hoops",false, function(Exp)
_G.loop = Exp
while _G.loop do wait()  
for i,v in pairs(game:GetService("Workspace").Hoops:GetDescendants()) do
    if v.Name == "TouchInterest" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
wait(.2)
end
end
end
end)

tab:Toggle("Auto orb",false, function(abc)
_G.orb = abc
while _G.orb do wait()
for i,v in pairs(game:GetService("Workspace").orbFolder.City:GetDescendants()) do
    if v.Name == "TouchInterest" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
end
end
end
end)

tab:Toggle("Auto Gems",false, function(abc)
    _G.Farm = abc
while _G.Farm do wait()  
for i,v in pairs(game:GetService("Workspace").orbFolder.City:GetDescendants()) do
    if v.Name == "orbParticle" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
wait(.2)
end
end
end
end)


local misc = win:Tab("Misc")

misc:Bind("NewKeybind",Enum.KeyCode.RightControl, function()
print("Pressed!")
end)


misc:Button("Rebirths", function()
game:GetService("ReplicatedStorage").rEvents.rebirthEvent:FireServer("rebirthRequest")
end)

misc:Button("Rejoin", function()
local ts = game:GetService("TeleportService")

local p = game:GetService("Players").LocalPlayer

 
ts:Teleport(game.PlaceId, p)
end)

local KAITO = Instance.new("ScreenGui")
local K = Instance.new("TextButton")

KAITO.Name = "KAITO"
KAITO.Parent = game.CoreGui
KAITO.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

K.Name = "K"
K.Parent = KAITO
K.BackgroundColor3 = Color3.fromRGB(129, 0, 0)
K.Position = UDim2.new(0.128011018, 0, 0.100728154, 0)
K.Size = UDim2.new(0, 70, 0, 58)
K.Font = Enum.Font.Bodoni
K.Text = "K"
K.TextColor3 = Color3.fromRGB(255, 255, 255)
K.TextSize = 72.000
K.MouseButton1Click:Connect(function()
game.CoreGui:FindFirstChild("ui").Enabled = not game.CoreGui:FindFirstChild("ui").Enabled
wait(1)
end)


local function FBZDL_fake_script() -- K.LocalScript 
	local script = Instance.new('LocalScript', K)

	script.Parent.Active = true
	script.Parent.Selectable = true
	script.Parent.Draggable = true
end
coroutine.wrap(FBZDL_fake_script)()

