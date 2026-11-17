
--// FATAL FLOORS
--// Rayfield UI
--// Theme: Blue Midnight

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

--// TEMA PERSONALIZADO
local CustomTheme = {
    TextColor = Color3.fromRGB(235, 245, 255),

    Background = Color3.fromRGB(5, 10, 22),
    Topbar = Color3.fromRGB(11, 20, 40),
    Shadow = Color3.fromRGB(0, 0, 0),

    NotificationBackground = Color3.fromRGB(11, 20, 40),
    NotificationActionsBackground = Color3.fromRGB(16, 35, 60),

    TabBackground = Color3.fromRGB(12, 25, 45),
    TabStroke = Color3.fromRGB(20, 55, 90),
    TabBackgroundSelected = Color3.fromRGB(0, 105, 190),

    TabTextColor = Color3.fromRGB(180, 205, 230),
    SelectedTabTextColor = Color3.fromRGB(255, 255, 255),

    ElementBackground = Color3.fromRGB(11, 23, 42),
    ElementBackgroundHover = Color3.fromRGB(17, 38, 65),
    SecondaryElementBackground = Color3.fromRGB(7, 16, 30),

    ElementStroke = Color3.fromRGB(20, 55, 90),
    SecondaryElementStroke = Color3.fromRGB(15, 40, 65),

    SliderBackground = Color3.fromRGB(0, 105, 190),
    SliderProgress = Color3.fromRGB(0, 145, 255),
    SliderStroke = Color3.fromRGB(0, 170, 255),

    ToggleBackground = Color3.fromRGB(15, 30, 50),
    ToggleEnabled = Color3.fromRGB(0, 130, 230),
    ToggleDisabled = Color3.fromRGB(65, 75, 90),

    ToggleEnabledStroke = Color3.fromRGB(0, 170, 255),
    ToggleDisabledStroke = Color3.fromRGB(100, 110, 125),

    ToggleEnabledOuterStroke = Color3.fromRGB(0, 100, 180),
    ToggleDisabledOuterStroke = Color3.fromRGB(55, 65, 80),

    InputBackground = Color3.fromRGB(8, 20, 38),
    InputStroke = Color3.fromRGB(25, 65, 105),

    PlaceholderColor = Color3.fromRGB(130, 155, 180)
}

--// VENTANA PRINCIPAL
local Window = Rayfield:CreateWindow({
    Name = "Fatal Floors | v1.0",
    LoadingTitle = "Fatal Floors Script",
    LoadingSubtitle = "By SantiGodPlay",
    Theme = CustomTheme,

    ConfigurationSaving = {
        Enabled = false
    },
    KeySystem = false
})

--// PESTAÑA: INFORMACIÓN
local InfoTab = Window:CreateTab("Información", 4483362458)

InfoTab:CreateSection("Información del panel")

InfoTab:CreateParagraph({
    Title = "Bienvenido",
    Content = "¡Bienvenido a este exploit de Fatal Floors en Roblox, donde podrás farmear fragmentos, badges, pisos y más!"
})

InfoTab:CreateLabel("Version: v1.0")

--// PESTAÑA: UTILIDADES
local UtilitiesTab = Window:CreateTab("Utilidades", 4483362458)

UtilitiesTab:CreateSection("Herramientas")

--// NOTIFICACIÓN
Rayfield:Notify({
    Title = "Fatal Floors Script",
    Content = "Panel Blue Midnight cargado correctamente.",
    Duration = 5
})
