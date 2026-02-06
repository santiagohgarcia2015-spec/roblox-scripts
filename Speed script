-- SPEED SCRIPT UI
-- Funciona en cualquier juego

local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- valores
local MIN_SPEED = 5
local MAX_SPEED = 200
local STEP = 5
local currentSpeed = 16

-- función para obtener humanoid
local function getHumanoid()
    local char = player.Character or player.CharacterAdded:Wait()
    return char:WaitForChild("Humanoid")
end

local humanoid = getHumanoid()
currentSpeed = humanoid.WalkSpeed

-- reaplicar al respawn
player.CharacterAdded:Connect(function()
    task.wait(1)
    humanoid = getHumanoid()
    humanoid.WalkSpeed = currentSpeed
end)

-- GUI
local gui = Instance.new("ScreenGui")
gui.Name = "SpeedScriptGUI"
gui.ResetOnSpawn = false
gui.Parent = game.CoreGui

local frame = Instance.new("Frame", gui)
frame.Size = UDim2.fromScale(0.28, 0.16)
frame.Position = UDim2.fromScale(0.36, 0.1)
frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
frame.BorderSizePixel = 0
frame.Active = true
frame.Draggable = true

local corner = Instance.new("UICorner", frame)
corner.CornerRadius = UDim.new(0, 12)

-- título
local title = Instance.new("TextLabel", frame)
title.Size = UDim2.fromScale(1, 0.3)
title.BackgroundTransparency = 1
title.Text = "SPEED SCRIPT"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.Font = Enum.Font.GothamBold
title.TextScaled = true

-- botón -
local minus = Instance.new("TextButton", frame)
minus.Size = UDim2.fromScale(0.25, 0.4)
minus.Position = UDim2.fromScale(0.05, 0.45)
minus.Text = "-"
minus.Font = Enum.Font.GothamBold
minus.TextScaled = true
minus.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
minus.TextColor3 = Color3.new(1,1,1)

Instance.new("UICorner", minus).CornerRadius = UDim.new(0, 8)

-- label velocidad
local speedLabel = Instance.new("TextLabel", frame)
speedLabel.Size = UDim2.fromScale(0.35, 0.4)
speedLabel.Position = UDim2.fromScale(0.325, 0.45)
speedLabel.BackgroundTransparency = 1
speedLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
speedLabel.Font = Enum.Font.Gotham
speedLabel.TextScaled = true

-- botón +
local plus = Instance.new("TextButton", frame)
plus.Size = UDim2.fromScale(0.25, 0.4)
plus.Position = UDim2.fromScale(0.7, 0.45)
plus.Text = "+"
plus.Font = Enum.Font.GothamBold
plus.TextScaled = true
plus.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
plus.TextColor3 = Color3.new(1,1,1)

Instance.new("UICorner", plus).CornerRadius = UDim.new(0, 8)

-- funciones
local function update()
    speedLabel.Text = tostring(currentSpeed)
    if humanoid then
        humanoid.WalkSpeed = currentSpeed
    end
end

minus.MouseButton1Click:Connect(function()
    currentSpeed = math.clamp(currentSpeed - STEP, MIN_SPEED, MAX_SPEED)
    update()
end)

plus.MouseButton1Click:Connect(function()
    currentSpeed = math.clamp(currentSpeed + STEP, MIN_SPEED, MAX_SPEED)
    update()
end)

update()
