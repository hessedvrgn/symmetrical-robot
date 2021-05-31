local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kiwi-i/wallys-ui-fork/master/lib.lua", true))()
local Window = library:CreateWindow('Those Who Remain')

local autoon  = Window:Button("Autofarm On", function()
   _G.toggle = true --or fasle
while _G.toggle do
wait() --time between running
for i, v in pairs (game:GetService("Workspace").World.Objectives:GetChildren()) do
				if v:IsA("Model") and v.Name == "Radio" and game.workspace.World.Objectives.Radio:FindFirstChild("Progress") then repeat
				    while true do
					game.workspace.LegalFork.HumanoidRootPart.CFrame = game.workspace.World.Objectives.Radio.Progress.CFrame * CFrame.new(0, -8, 0)
					wait()
					end
				until game.workspace.World.Objectives.Radio:FindFirstChild("Progress") ~= nil
				if game.workspace.World.Objectives.Radio:FindFirstChild("Progress") == nil then
				    for i, v in pairs (game:GetService("Workspace").World.Objectives:GetChildren()) do
				    if v:IsA("Model") and v.Name == "Medical" and game.workspace.World.Objectives.Medical:FindFirstChild("Progress") then repeat
				    while true do
					game.workspace.LegalFork.HumanoidRootPart.CFrame = game.workspace.World.Objectives.Medical.Progress.CFrame * CFrame.new(0, -8, 0)
					wait()
				    end
				    until game.workspace.World.Objectives.Medical:FindFirstChild("Progress") ~= nil
				    if game.workspace.World.Objectives.Medical:FindFirstChild("Progress") == nil then
				        for i, v in pairs (game:GetService("Workspace").World.Objectives:GetChildren()) do
				    if v:IsA("Model") and v.Name == "Ammo" and game.workspace.World.Objectives.Ammo:FindFirstChild("Progress") then repeat
				    while true do
					game.workspace.LegalFork.HumanoidRootPart.CFrame = game.workspace.World.Objectives.Ammo.Progress.CFrame * CFrame.new(0, -8, 0)
					wait()
				    end
				    until game.workspace.World.Objectives.Ammo:FindFirstChild("Progress") ~= nil
				    if game.workspace.World.Objectives.Ammo:FindFirstChild("Progress") == nil then
				        for i, v in pairs (game:GetService("Workspace").Entities.Objectives:GetChildren()) do
				    if v:IsA("Model") and v.Name == "EscortChar" and game.workspace.Entities.Objectives.EscortChar:FindFirstChild("HumanoidRootPart") then repeat
				    while true do
					game.workspace.LegalFork.HumanoidRootPart.CFrame = game.workspace.Entities.Objectives.EscortChar.HumanoidRootPart.CFrame * CFrame.new(0, -8, 0)
					wait()
				    end
				    until game.workspace.Entities.Objectives.EscortChar:FindFirstChild("HumanoidRootPart") ~= nil
				    if game.workspace.Entities.Objectives.EscortChar:FindFirstChild("HumanoidRootPart") == nil then
				        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(293,-1438,292)
				end
end
end
end
end
end
end
end
end
end
end
end
end
end)

local autooff  = Window:Button("Autofarm Off", function()
   _G.toggle = false --or fasle
end)

local escorton = Window:Button("AutoEscort On", function()
    _G.escort = true --or fasle
while _G.escort do
wait() --time between running
for i,v in pairs (game:GetService("Workspace").Entities.Objectives:GetDescendants()) do
    if v:IsA("Model") and v.Name == "EscortChar" then repeat
        while true do
        game.workspace.LegalFork.HumanoidRootPart.CFrame = game.workspace.Entities.Objectives.EscortChar.HumanoidRootPart.CFrame * CFrame.new(0,-8,0)
        wait()
        end
    until game.workspace.Entities.Objectives.EscortChar:FindFirstChild("HumanoidRootPart") ~= nil
    if game.workspace.Entities.Objectives.EscortChar:FindFirstChild("HumanoidRootPart") ~= nil then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(293,-1438,292)
end
end
end
end
end)

local escortoff = Window:Button("AutoEscort Off", function()
    _G.escort = false --or fasle
end)

local dtpon  = Window:Button("TPB On", function()
  _G.dtp = true --or fasle
while _G.dtp do
wait(10) --time between running
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(293,-1438,292)
end
end)

local dtpoff  = Window:Button("TPB Off", function()
  _G.dtp = false --or fasle
end)

local airwalkon = Window:Button("Airwalk On", function()
    _G.airwalk = true --or fasle
while _G.airwalk do
wait() --time between running
 local crtl = false


mouse = game.Players.LocalPlayer:GetMouse()


local air = Instance.new("Part", workspace)
air.Size = Vector3.new(7, 2, 3)
air.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0, -4, 0)
air.Transparency = 1
air.Anchored = true
air.Name = "Airwalk"


mouse.KeyDown:Connect(function(key)
   if key == "2" then
       air.Size = Vector3.new(4, -0.5, 3)
   end
end)

mouse.KeyUp:Connect(function(key)
   if key == "2" then
       air.Size = Vector3.new(7, 2, 3)
   end
end)


for i = 1, math.huge do
   air.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0, -4, 0)
   wait(0.01)
end
end
end)

local airwalkoff = Window:Button("Airwalk Off", function()
    _G.airwalk = false --or fasle
end)