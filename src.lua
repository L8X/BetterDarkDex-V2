--[[
    ██████╗ ███████╗████████╗████████╗███████╗██████╗ ██████╗  █████╗ ██████╗ ██╗  ██╗██████╗ ███████╗██╗  ██╗    ██╗   ██╗██████╗ 
    ██╔══██╗██╔════╝╚══██╔══╝╚══██╔══╝██╔════╝██╔══██╗██╔══██╗██╔══██╗██╔══██╗██║ ██╔╝██╔══██╗██╔════╝╚██╗██╔╝    ██║   ██║╚════██╗
    ██████╔╝█████╗     ██║      ██║   █████╗  ██████╔╝██║  ██║███████║██████╔╝█████╔╝ ██║  ██║█████╗   ╚███╔╝     ██║   ██║ █████╔╝
    ██╔══██╗██╔══╝     ██║      ██║   ██╔══╝  ██╔══██╗██║  ██║██╔══██║██╔══██╗██╔═██╗ ██║  ██║██╔══╝   ██╔██╗     ╚██╗ ██╔╝██╔═══╝ 
    ██████╔╝███████╗   ██║      ██║   ███████╗██║  ██║██████╔╝██║  ██║██║  ██║██║  ██╗██████╔╝███████╗██╔╝ ██╗     ╚████╔╝ ███████╗
    ╚═════╝ ╚══════╝   ╚═╝      ╚═╝   ╚══════╝╚═╝  ╚═╝╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚═════╝ ╚══════╝╚═╝  ╚═╝      ╚═══╝  ╚══════╝
]] --
--[[
    == Notes ==
    BetterDarkDex V2 is a highly improved, localized version of Dark Dex.
    Dark Dex usually has to download resources from external servers in-order to work, but BDD localizes everything into 1 script.
    Performance has been increased and the source code has been beautified (redundant comments & extra lines removed).
    
    == Modifications ==
    Added ScriptWare decompiler support.
    Added GetHiddenGUI support to all exploits.
    Modified Dex's interface & fixed all ZIndex issues.
    Fixed the BaseWrap SaveInstance error for Synapse X.
    Added extra anti-detection procedures.
    Removed all animations.

    == Credits ==
    Thank you to the original Dark Dex team for making this possible.
    This port was made by Deja and nul from the ExPro team.
    
    == Info ==
    The Dark Dex source used is from 6th May 2022, latest as of writing.
]] --

-- // Interface
local BetterDarkDex = Instance.new("ScreenGui")
local PropertiesFrame = Instance.new("Frame")
local Header = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextBox = Instance.new("TextBox")
local ExplorerPanel = Instance.new("Frame")
local SideMenu = Instance.new("Frame")
local Toggle = Instance.new("TextButton")
local Title = Instance.new("TextLabel")
local Version = Instance.new("TextLabel")
local Slant = Instance.new("ImageLabel")
local Main = Instance.new("Frame")
local SlideOut = Instance.new("Frame")
local SlideFrame = Instance.new("Frame")
local Explorer = Instance.new("TextButton")
local Icon = Instance.new("ImageLabel")
local SaveMap = Instance.new("TextButton")
local Icon_2 = Instance.new("ImageLabel")
local Settings = Instance.new("TextButton")
local Icon_3 = Instance.new("ImageLabel")
local About = Instance.new("TextButton")
local Icon_4 = Instance.new("ImageLabel")
local OpenScriptEditor = Instance.new("TextButton")
local Icon_5 = Instance.new("ImageLabel")
local SettingsPanel = Instance.new("Frame")
local Header_2 = Instance.new("Frame")
local TextLabel_2 = Instance.new("TextLabel")
local SettingTemplate = Instance.new("Frame")
local SName = Instance.new("TextLabel")
local Status = Instance.new("TextLabel")
local Change = Instance.new("TextButton")
local OnBar = Instance.new("TextLabel")
local Bar = Instance.new("TextLabel")
local SettingList = Instance.new("Frame")
local SaveInstance = Instance.new("Frame")
local Title_2 = Instance.new("TextLabel")
local MainWindow = Instance.new("Frame")
local Save = Instance.new("TextButton")
local Desc = Instance.new("TextLabel")
local Cancel = Instance.new("TextButton")
local FileName = Instance.new("TextBox")
local SaveObjects = Instance.new("TextButton")
local enabled = Instance.new("TextLabel")
local Desc2 = Instance.new("TextLabel")
local Confirmation = Instance.new("Frame")
local Title_3 = Instance.new("TextLabel")
local MainWindow_2 = Instance.new("Frame")
local Yes = Instance.new("TextButton")
local Desc_2 = Instance.new("TextLabel")
local No = Instance.new("TextButton")
local Caution = Instance.new("Frame")
local Title_4 = Instance.new("TextLabel")
local MainWindow_3 = Instance.new("Frame")
local Desc_3 = Instance.new("TextLabel")
local Ok = Instance.new("TextButton")
local TableCaution = Instance.new("Frame")
local MainWindow_5 = Instance.new("Frame")
local Ok_3 = Instance.new("TextButton")
local TableResults = Instance.new("ScrollingFrame")
local TableTemplate = Instance.new("Frame")
local Type_2 = Instance.new("TextLabel")
local Value_2 = Instance.new("TextLabel")
local Title_6 = Instance.new("TextLabel")
local SaveMapWindow = Instance.new("Frame")
local Header_3 = Instance.new("Frame")
local TextLabel_3 = Instance.new("TextLabel")
local MapSettings = Instance.new("Frame")
local Terrain = Instance.new("Frame")
local SName_2 = Instance.new("TextLabel")
local Status_2 = Instance.new("TextLabel")
local Change_2 = Instance.new("TextButton")
local OnBar_2 = Instance.new("TextLabel")
local Bar_2 = Instance.new("TextLabel")
local Lighting = Instance.new("Frame")
local SName_3 = Instance.new("TextLabel")
local Status_3 = Instance.new("TextLabel")
local Change_3 = Instance.new("TextButton")
local OnBar_3 = Instance.new("TextLabel")
local Bar_3 = Instance.new("TextLabel")
local CameraInstances = Instance.new("Frame")
local SName_4 = Instance.new("TextLabel")
local Status_4 = Instance.new("TextLabel")
local Change_4 = Instance.new("TextButton")
local OnBar_4 = Instance.new("TextLabel")
local Bar_4 = Instance.new("TextLabel")
local Scripts = Instance.new("Frame")
local ToSave = Instance.new("TextLabel")
local CopyList = Instance.new("Frame")
local Bottom = Instance.new("Frame")
local TextLabel_4 = Instance.new("TextLabel")
local Save_2 = Instance.new("TextButton")
local FileName_2 = Instance.new("TextBox")
local Entry = Instance.new("Frame")
local Change_6 = Instance.new("TextButton")
local enabled_3 = Instance.new("TextLabel")
local Info = Instance.new("TextLabel")
local RemoteDebugWindow = Instance.new("Frame")
local Header_4 = Instance.new("Frame")
local TextLabel_5 = Instance.new("TextLabel")
local Desc_5 = Instance.new("TextLabel")
local About_2 = Instance.new("Frame")
local Creator = Instance.new("TextLabel")
local Title_7 = Instance.new("TextLabel")
local Version_2 = Instance.new("TextLabel")
local Toggle_2 = Instance.new("ImageButton")
local TextLabel_6 = Instance.new("TextLabel")
local IntroFrame = Instance.new("Frame")
local Version_3 = Instance.new("TextLabel")
local Title_8 = Instance.new("TextLabel")
local Creator_2 = Instance.new("TextLabel")
local Sad = Instance.new("ImageLabel")
local Main_2 = Instance.new("Frame")
local Slant_2 = Instance.new("ImageLabel")
local ScriptEditor = Instance.new("Frame")
local Editor = Instance.new("Frame")
local TopBar = Instance.new("Frame")
local title = Instance.new("TextLabel")
local Close = Instance.new("TextButton")
local Other = Instance.new("Frame")
local FileName_3 = Instance.new("TextBox")
local UIListLayout = Instance.new("UIListLayout")
local SaveScript = Instance.new("TextButton")
local CopyScript = Instance.new("TextButton")
local ClearScript = Instance.new("TextButton")
PropertiesFrame.Name = "PropertiesFrame"
PropertiesFrame.Parent = BetterDarkDex
PropertiesFrame.Active = true
PropertiesFrame.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
PropertiesFrame.BackgroundTransparency = 0.100
PropertiesFrame.BorderColor3 = Color3.fromRGB(149, 149, 149)
PropertiesFrame.BorderSizePixel = 0
PropertiesFrame.Position = UDim2.new(1, 0, 0.5, 36)
PropertiesFrame.Size = UDim2.new(0, 300, 0.5, -36)
Header.Name = "Header"
Header.Parent = PropertiesFrame
Header.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Header.BorderColor3 = Color3.fromRGB(149, 149, 149)
Header.BorderSizePixel = 0
Header.Position = UDim2.new(0, 0, 0, -36)
Header.Size = UDim2.new(1, 0, 0, 36)
TextLabel.Parent = Header
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Position = UDim2.new(0, 4, 0, 0)
TextLabel.Size = UDim2.new(1, -4, 0.5, 0)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Properties"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 14.000
TextLabel.TextStrokeTransparency = 0.750
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextBox.Parent = Header
TextBox.BackgroundTransparency = 0.800
TextBox.BorderColor3 = Color3.fromRGB(232, 232, 232)
TextBox.Position = UDim2.new(0, 4, 0.5, 0)
TextBox.Size = UDim2.new(1, -8, 0.5, -3)
TextBox.Font = Enum.Font.SourceSans
TextBox.PlaceholderText = "Search Properties"
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.TextSize = 14.000
TextBox.TextStrokeTransparency = 0.750
TextBox.TextXAlignment = Enum.TextXAlignment.Left
ExplorerPanel.Name = "ExplorerPanel"
ExplorerPanel.Parent = BetterDarkDex
ExplorerPanel.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
ExplorerPanel.BackgroundTransparency = 0.100
ExplorerPanel.BorderColor3 = Color3.fromRGB(149, 149, 149)
ExplorerPanel.BorderSizePixel = 0
ExplorerPanel.Position = UDim2.new(1, 0, 0, 0)
ExplorerPanel.Size = UDim2.new(0, 300, 0.5, 0)
SideMenu.Name = "SideMenu"
SideMenu.Parent = BetterDarkDex
SideMenu.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
SideMenu.BackgroundTransparency = 1.000
SideMenu.BorderColor3 = Color3.fromRGB(149, 149, 149)
SideMenu.BorderSizePixel = 0
SideMenu.Position = UDim2.new(1, -330, 0, 0)
SideMenu.Size = UDim2.new(0, 30, 0, 180)
SideMenu.Visible = false
SideMenu.ZIndex = 2
Toggle.Name = "Toggle"
Toggle.Parent = SideMenu
Toggle.Active = false
Toggle.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
Toggle.BorderSizePixel = 0
Toggle.Position = UDim2.new(0, 0, 0, 60)
Toggle.Size = UDim2.new(0, 30, 0, 30)
Toggle.AutoButtonColor = false
Toggle.Font = Enum.Font.SourceSans
Toggle.Text = "-"
Toggle.TextColor3 = Color3.fromRGB(255, 255, 255)
Toggle.TextSize = 24.000
Toggle.TextStrokeTransparency = 1
Toggle.TextTransparency = 1.000
Toggle.TextWrapped = true
Title.Name = "Title"
Title.Parent = SideMenu
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.Size = UDim2.new(0, 30, 0, 20)
Title.ZIndex = 2
Title.Font = Enum.Font.SourceSansBold
Title.Text = "BDD"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 14.000
Title.TextStrokeTransparency = 0.750
Title.TextWrapped = true
Version.Name = "Version"
Version.Parent = SideMenu
Version.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Version.BackgroundTransparency = 1.000
Version.Position = UDim2.new(0, 0, 0, 15)
Version.Size = UDim2.new(0, 30, 0, 20)
Version.ZIndex = 2
Version.Font = Enum.Font.SourceSansBold
Version.Text = "v3"
Version.TextColor3 = Color3.fromRGB(255, 255, 255)
Version.TextSize = 12.000
Version.TextStrokeTransparency = 0.750
Version.TextWrapped = true
Slant.Name = "Slant"
Slant.Parent = SideMenu
Slant.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Slant.BackgroundTransparency = 1.000
Slant.Position = UDim2.new(0, 0, 0, 90)
Slant.Rotation = 180.000
Slant.Size = UDim2.new(0, 30, 0, 30)
Slant.Image = "rbxassetid://1513966937"
Slant.ImageColor3 = Color3.fromRGB(43, 43, 43)
Main.Name = "Main"
Main.Parent = SideMenu
Main.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
Main.BorderSizePixel = 0
Main.Size = UDim2.new(0, 30, 0, 30)
SlideOut.Name = "SlideOut"
SlideOut.Parent = SideMenu
SlideOut.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
SlideOut.BackgroundTransparency = 1.000
SlideOut.BorderSizePixel = 0
SlideOut.ClipsDescendants = true
SlideOut.Position = UDim2.new(0, 0, 0, 30)
SlideOut.Size = UDim2.new(0, 30, 0, 150)
SlideFrame.Name = "SlideFrame"
SlideFrame.Parent = SlideOut
SlideFrame.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
SlideFrame.BorderSizePixel = 0
SlideFrame.Position = UDim2.new(0, 0, 0, -120)
SlideFrame.Size = UDim2.new(0, 30, 0, 120)
Explorer.Name = "Explorer"
Explorer.Parent = SlideFrame
Explorer.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Explorer.BackgroundTransparency = 1.000
Explorer.BorderSizePixel = 0
Explorer.Position = UDim2.new(0, 0, 0, 90)
Explorer.Size = UDim2.new(0, 30, 0, 30)
Explorer.AutoButtonColor = false
Explorer.Font = Enum.Font.SourceSans
Explorer.Text = ""
Explorer.TextSize = 24.000
Icon.Name = "Icon"
Icon.Parent = Explorer
Icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Icon.BackgroundTransparency = 1.000
Icon.Position = UDim2.new(0, 5, 0, 5)
Icon.Size = UDim2.new(0, 20, 0, 20)
Icon.ZIndex = 2
Icon.Image = "rbxassetid://472635937"
SaveMap.Name = "SaveMap"
SaveMap.Parent = SlideFrame
SaveMap.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
SaveMap.BackgroundTransparency = 1.000
SaveMap.BorderSizePixel = 0
SaveMap.Position = UDim2.new(0, 0, 0, 60)
SaveMap.Size = UDim2.new(0, 30, 0, 30)
SaveMap.AutoButtonColor = false
SaveMap.Font = Enum.Font.SourceSans
SaveMap.Text = ""
SaveMap.TextSize = 24.000
Icon_2.Name = "Icon"
Icon_2.Parent = SaveMap
Icon_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Icon_2.BackgroundTransparency = 1.000
Icon_2.Position = UDim2.new(0, 5, 0, 5)
Icon_2.Size = UDim2.new(0, 20, 0, 20)
Icon_2.ZIndex = 2
Icon_2.Image = "rbxassetid://472636337"
Settings.Name = "Settings"
Settings.Parent = SlideFrame
Settings.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Settings.BackgroundTransparency = 1.000
Settings.BorderSizePixel = 0
Settings.Position = UDim2.new(0, 0, 0, 30)
Settings.Size = UDim2.new(0, 30, 0, 30)
Settings.AutoButtonColor = false
Settings.Font = Enum.Font.SourceSans
Settings.Text = ""
Settings.TextSize = 24.000
Icon_3.Name = "Icon"
Icon_3.Parent = Settings
Icon_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Icon_3.BackgroundTransparency = 1.000
Icon_3.Position = UDim2.new(0, 5, 0, 5)
Icon_3.Size = UDim2.new(0, 20, 0, 20)
Icon_3.ZIndex = 2
Icon_3.Image = "rbxassetid://472635774"
About.Name = "About"
About.Parent = SlideFrame
About.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
About.BackgroundTransparency = 1.000
About.BorderSizePixel = 0
About.Size = UDim2.new(0, 30, 0, 30)
About.AutoButtonColor = false
About.Font = Enum.Font.SourceSans
About.Text = ""
About.TextSize = 24.000
Icon_4.Name = "Icon"
Icon_4.Parent = About
Icon_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Icon_4.BackgroundTransparency = 1.000
Icon_4.Position = UDim2.new(0, 5, 0, 5)
Icon_4.Size = UDim2.new(0, 20, 0, 20)
Icon_4.ZIndex = 2
Icon_4.Image = "rbxassetid://476354004"
OpenScriptEditor.Name = "OpenScriptEditor"
OpenScriptEditor.Parent = SideMenu
OpenScriptEditor.Active = false
OpenScriptEditor.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
OpenScriptEditor.BorderSizePixel = 0
OpenScriptEditor.Position = UDim2.new(0, 0, 0, 30)
OpenScriptEditor.Size = UDim2.new(0, 30, 0, 30)
OpenScriptEditor.AutoButtonColor = false
OpenScriptEditor.Font = Enum.Font.SourceSans
OpenScriptEditor.Text = ""
OpenScriptEditor.TextSize = 24.000
Icon_5.Name = "Icon"
Icon_5.Parent = OpenScriptEditor
Icon_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Icon_5.BackgroundTransparency = 1.000
Icon_5.BorderSizePixel = 0
Icon_5.Position = UDim2.new(0, 5, 0, 5)
Icon_5.Size = UDim2.new(0, 20, 0, 20)
Icon_5.ZIndex = 2
Icon_5.Image = "rbxassetid://475456048"
Icon_5.ImageTransparency = 1.000
SettingsPanel.Name = "SettingsPanel"
SettingsPanel.Parent = BetterDarkDex
SettingsPanel.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
SettingsPanel.BackgroundTransparency = 0.100
SettingsPanel.BorderColor3 = Color3.fromRGB(20, 0, 20)
SettingsPanel.BorderSizePixel = 0
SettingsPanel.Position = UDim2.new(1, 0, 0, 0)
SettingsPanel.Size = UDim2.new(0, 300, 1, 0)
Header_2.Name = "Header"
Header_2.Parent = SettingsPanel
Header_2.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Header_2.BorderColor3 = Color3.fromRGB(20, 20, 20)
Header_2.BorderSizePixel = 0
Header_2.Size = UDim2.new(1, 0, 0, 17)
TextLabel_2.Parent = Header_2
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0, 4, 0, 0)
TextLabel_2.Size = UDim2.new(1, -4, 1, 0)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "Settings"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextSize = 14.000
TextLabel_2.TextStrokeTransparency = 0.750
TextLabel_2.TextXAlignment = Enum.TextXAlignment.Left
SettingTemplate.Name = "SettingTemplate"
SettingTemplate.Parent = SettingsPanel
SettingTemplate.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SettingTemplate.BackgroundTransparency = 1.000
SettingTemplate.Position = UDim2.new(0, 0, 0, 18)
SettingTemplate.Size = UDim2.new(1, 0, 0, 60)
SettingTemplate.Visible = false
SName.Name = "SName"
SName.Parent = SettingTemplate
SName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SName.BackgroundTransparency = 1.000
SName.Position = UDim2.new(0, 10, 0, 0)
SName.Size = UDim2.new(1, -20, 0, 30)
SName.Font = Enum.Font.SourceSans
SName.Text = "SettingName"
SName.TextColor3 = Color3.fromRGB(255, 255, 255)
SName.TextSize = 18.000
SName.TextStrokeTransparency = 0.750
SName.TextXAlignment = Enum.TextXAlignment.Left
Status.Name = "Status"
Status.Parent = SettingTemplate
Status.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Status.BackgroundTransparency = 1.000
Status.Position = UDim2.new(0, 60, 0, 30)
Status.Size = UDim2.new(0, 50, 0, 15)
Status.Font = Enum.Font.SourceSans
Status.Text = "Off"
Status.TextColor3 = Color3.fromRGB(255, 255, 255)
Status.TextSize = 18.000
Status.TextStrokeTransparency = 0.750
Status.TextXAlignment = Enum.TextXAlignment.Left
Change.Name = "Change"
Change.Parent = SettingTemplate
Change.BackgroundColor3 = Color3.fromRGB(220, 220, 220)
Change.BorderSizePixel = 0
Change.Position = UDim2.new(0, 10, 0, 30)
Change.Size = UDim2.new(0, 40, 0, 15)
Change.Font = Enum.Font.SourceSans
Change.Text = ""
Change.TextSize = 14.000
OnBar.Name = "OnBar"
OnBar.Parent = Change
OnBar.BackgroundColor3 = Color3.fromRGB(255, 153, 0)
OnBar.BorderSizePixel = 0
OnBar.Size = UDim2.new(0, 0, 0, 15)
OnBar.Font = Enum.Font.SourceSans
OnBar.Text = ""
OnBar.TextSize = 14.000
OnBar.TextWrapped = true
Bar.Name = "Bar"
Bar.Parent = Change
Bar.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Bar.BorderSizePixel = 0
Bar.ClipsDescendants = true
Bar.Position = UDim2.new(0, -2, 0, -2)
Bar.Size = UDim2.new(0, 10, 0, 19)
Bar.Font = Enum.Font.SourceSans
Bar.Text = ""
Bar.TextSize = 14.000
SettingList.Name = "SettingList"
SettingList.Parent = SettingsPanel
SettingList.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SettingList.BackgroundTransparency = 1.000
SettingList.BorderColor3 = Color3.fromRGB(20, 20, 20)
SettingList.Position = UDim2.new(0, 0, 0, 17)
SettingList.Size = UDim2.new(1, 0, 1, -17)
SaveInstance.Name = "SaveInstance"
SaveInstance.Parent = BetterDarkDex
SaveInstance.Active = true
SaveInstance.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
SaveInstance.BorderColor3 = Color3.fromRGB(149, 149, 149)
SaveInstance.BorderSizePixel = 0
SaveInstance.Draggable = true
SaveInstance.Position = UDim2.new(0.300000012, 0, 0.300000012, 0)
SaveInstance.Size = UDim2.new(0, 350, 0, 20)
SaveInstance.Visible = false
SaveInstance.ZIndex = 2
Title_2.Name = "Title"
Title_2.Parent = SaveInstance
Title_2.BackgroundTransparency = 1.000
Title_2.Size = UDim2.new(1, 0, 1, 0)
Title_2.ZIndex = 2
Title_2.Font = Enum.Font.SourceSans
Title_2.Text = "Save Instance"
Title_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_2.TextSize = 14.000
Title_2.TextStrokeTransparency = 0.750
Title_2.TextXAlignment = Enum.TextXAlignment.Left
MainWindow.Name = "MainWindow"
MainWindow.Parent = SaveInstance
MainWindow.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
MainWindow.BackgroundTransparency = 0.100
MainWindow.BorderColor3 = Color3.fromRGB(191, 191, 191)
MainWindow.Size = UDim2.new(1, 0, 0, 200)
Save.Name = "Save"
Save.Parent = MainWindow
Save.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Save.BackgroundTransparency = 0.500
Save.BorderColor3 = Color3.fromRGB(0, 0, 0)
Save.Position = UDim2.new(0.075000003, 0, 1, -40)
Save.Size = UDim2.new(0.400000006, 0, 0, 30)
Save.Font = Enum.Font.SourceSans
Save.Text = "Save"
Save.TextColor3 = Color3.fromRGB(255, 255, 255)
Save.TextSize = 18.000
Save.TextStrokeTransparency = 0.750
Desc.Name = "Desc"
Desc.Parent = MainWindow
Desc.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Desc.BackgroundTransparency = 1.000
Desc.Position = UDim2.new(0, 0, 0, 20)
Desc.Size = UDim2.new(1, 0, 0, 40)
Desc.Font = Enum.Font.SourceSans
Desc.Text =
    "This will save an instance to your PC. Type in the name for your instance. (.rbxmx will be added automatically.)"
Desc.TextColor3 = Color3.fromRGB(255, 255, 255)
Desc.TextSize = 14.000
Desc.TextStrokeTransparency = 0.750
Desc.TextWrapped = true
Cancel.Name = "Cancel"
Cancel.Parent = MainWindow
Cancel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Cancel.BackgroundTransparency = 0.500
Cancel.BorderColor3 = Color3.fromRGB(0, 0, 0)
Cancel.Position = UDim2.new(0.524999976, 0, 1, -40)
Cancel.Size = UDim2.new(0.400000006, 0, 0, 30)
Cancel.Font = Enum.Font.SourceSans
Cancel.Text = "Cancel"
Cancel.TextColor3 = Color3.fromRGB(255, 255, 255)
Cancel.TextSize = 18.000
Cancel.TextStrokeTransparency = 0.750
FileName.Name = "FileName"
FileName.Parent = MainWindow
FileName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
FileName.BackgroundTransparency = 0.200
FileName.Position = UDim2.new(0.075000003, 0, 0.400000006, 0)
FileName.Size = UDim2.new(0.850000024, 0, 0, 30)
FileName.Font = Enum.Font.SourceSans
FileName.Text = ""
FileName.TextColor3 = Color3.fromRGB(255, 255, 255)
FileName.TextSize = 18.000
FileName.TextStrokeTransparency = 0.750
FileName.TextXAlignment = Enum.TextXAlignment.Left
SaveObjects.Name = "SaveObjects"
SaveObjects.Parent = MainWindow
SaveObjects.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SaveObjects.BackgroundTransparency = 0.600
SaveObjects.Position = UDim2.new(0.075000003, 0, 0.625, 0)
SaveObjects.Size = UDim2.new(0, 20, 0, 20)
SaveObjects.ZIndex = 2
SaveObjects.Font = Enum.Font.SourceSans
SaveObjects.Text = ""
SaveObjects.TextColor3 = Color3.fromRGB(255, 255, 255)
SaveObjects.TextSize = 18.000
SaveObjects.TextStrokeTransparency = 0.750
enabled.Name = "enabled"
enabled.Parent = SaveObjects
enabled.BackgroundColor3 = Color3.fromRGB(97, 97, 97)
enabled.BackgroundTransparency = 0.400
enabled.BorderSizePixel = 0
enabled.Position = UDim2.new(0, 3, 0, 3)
enabled.Size = UDim2.new(0, 14, 0, 14)
enabled.Font = Enum.Font.SourceSans
enabled.Text = ""
enabled.TextColor3 = Color3.fromRGB(255, 255, 255)
enabled.TextSize = 14.000
enabled.TextStrokeTransparency = 0.750
Desc2.Name = "Desc2"
Desc2.Parent = MainWindow
Desc2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Desc2.BackgroundTransparency = 1.000
Desc2.Position = UDim2.new(0.075000003, 30, 0.625, 0)
Desc2.Size = UDim2.new(0.925000012, -30, 0, 20)
Desc2.Font = Enum.Font.SourceSans
Desc2.Text = "Save \"Object\" type values"
Desc2.TextColor3 = Color3.fromRGB(255, 255, 255)
Desc2.TextSize = 14.000
Desc2.TextStrokeTransparency = 0.750
Desc2.TextXAlignment = Enum.TextXAlignment.Left
Confirmation.Name = "Confirmation"
Confirmation.Parent = BetterDarkDex
Confirmation.Active = true
Confirmation.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Confirmation.BorderColor3 = Color3.fromRGB(149, 149, 149)
Confirmation.BorderSizePixel = 0
Confirmation.Draggable = true
Confirmation.Position = UDim2.new(0.5, -175, 0.5, -75)
Confirmation.Size = UDim2.new(0, 350, 0, 20)
Confirmation.Visible = false
Confirmation.ZIndex = 3
Title_3.Name = "Title"
Title_3.Parent = Confirmation
Title_3.BackgroundTransparency = 1.000
Title_3.Size = UDim2.new(1, 0, 1, 0)
Title_3.ZIndex = 3
Title_3.Font = Enum.Font.SourceSans
Title_3.Text = "Confirm"
Title_3.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_3.TextSize = 14.000
Title_3.TextStrokeTransparency = 0.750
Title_3.TextXAlignment = Enum.TextXAlignment.Left
MainWindow_2.Name = "MainWindow"
MainWindow_2.Parent = Confirmation
MainWindow_2.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
MainWindow_2.BackgroundTransparency = 0.100
MainWindow_2.BorderColor3 = Color3.fromRGB(191, 191, 191)
MainWindow_2.Size = UDim2.new(1, 0, 0, 150)
MainWindow_2.ZIndex = 2
Yes.Name = "Yes"
Yes.Parent = MainWindow_2
Yes.BackgroundColor3 = Color3.fromRGB(88, 88, 88)
Yes.BackgroundTransparency = 0.500
Yes.BorderColor3 = Color3.fromRGB(0, 0, 0)
Yes.Position = UDim2.new(0.075000003, 0, 1, -40)
Yes.Size = UDim2.new(0.400000006, 0, 0, 30)
Yes.ZIndex = 2
Yes.Font = Enum.Font.SourceSans
Yes.Text = "Yes"
Yes.TextColor3 = Color3.fromRGB(255, 255, 255)
Yes.TextSize = 18.000
Yes.TextStrokeTransparency = 0.750
Desc_2.Name = "Desc"
Desc_2.Parent = MainWindow_2
Desc_2.BackgroundColor3 = Color3.fromRGB(88, 88, 88)
Desc_2.BackgroundTransparency = 1.000
Desc_2.Position = UDim2.new(0, 0, 0, 20)
Desc_2.Size = UDim2.new(1, 0, 0, 40)
Desc_2.ZIndex = 2
Desc_2.Font = Enum.Font.SourceSans
Desc_2.Text = "The file, FILENAME, already exists. Overwrite?"
Desc_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Desc_2.TextSize = 14.000
Desc_2.TextStrokeTransparency = 0.750
Desc_2.TextWrapped = true
No.Name = "No"
No.Parent = MainWindow_2
No.BackgroundColor3 = Color3.fromRGB(88, 88, 88)
No.BackgroundTransparency = 0.500
No.BorderColor3 = Color3.fromRGB(0, 0, 0)
No.Position = UDim2.new(0.524999976, 0, 1, -40)
No.Size = UDim2.new(0.400000006, 0, 0, 30)
No.ZIndex = 2
No.Font = Enum.Font.SourceSans
No.Text = "No"
No.TextColor3 = Color3.fromRGB(255, 255, 255)
No.TextSize = 18.000
No.TextStrokeTransparency = 0.750
Caution.Name = "Caution"
Caution.Parent = BetterDarkDex
Caution.Active = true
Caution.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Caution.BorderColor3 = Color3.fromRGB(149, 149, 149)
Caution.BorderSizePixel = 0
Caution.Draggable = true
Caution.Position = UDim2.new(0.5, -175, 0.5, -75)
Caution.Size = UDim2.new(0, 350, 0, 20)
Caution.Visible = false
Caution.ZIndex = 5
Title_4.Name = "Title"
Title_4.Parent = Caution
Title_4.BackgroundTransparency = 1.000
Title_4.Size = UDim2.new(1, 0, 1, 0)
Title_4.ZIndex = 5
Title_4.Font = Enum.Font.SourceSans
Title_4.Text = "Caution"
Title_4.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_4.TextSize = 14.000
Title_4.TextStrokeTransparency = 0.750
Title_4.TextXAlignment = Enum.TextXAlignment.Left
MainWindow_3.Name = "MainWindow"
MainWindow_3.Parent = Caution
MainWindow_3.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
MainWindow_3.BackgroundTransparency = 0.100
MainWindow_3.BorderColor3 = Color3.fromRGB(191, 191, 191)
MainWindow_3.Size = UDim2.new(1, 0, 0, 150)
MainWindow_3.ZIndex = 4
Desc_3.Name = "Desc"
Desc_3.Parent = MainWindow_3
Desc_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Desc_3.BackgroundTransparency = 1.000
Desc_3.Position = UDim2.new(0, 0, 0, 20)
Desc_3.Size = UDim2.new(1, 0, 0, 42)
Desc_3.ZIndex = 4
Desc_3.Font = Enum.Font.SourceSans
Desc_3.Text = "The file, FILENAME, already exists. Overwrite?"
Desc_3.TextColor3 = Color3.fromRGB(255, 255, 255)
Desc_3.TextSize = 14.000
Desc_3.TextStrokeTransparency = 0.750
Desc_3.TextWrapped = true
Ok.Name = "Ok"
Ok.Parent = MainWindow_3
Ok.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
Ok.BackgroundTransparency = 0.500
Ok.BorderColor3 = Color3.fromRGB(0, 0, 0)
Ok.Position = UDim2.new(0.300000012, 0, 1, -40)
Ok.Size = UDim2.new(0.400000006, 0, 0, 30)
Ok.ZIndex = 4
Ok.Font = Enum.Font.SourceSans
Ok.Text = "Ok"
Ok.TextColor3 = Color3.fromRGB(255, 255, 255)
Ok.TextSize = 18.000
Ok.TextStrokeTransparency = 0.750
TableCaution.Name = "TableCaution"
TableCaution.Parent = BetterDarkDex
TableCaution.Active = true
TableCaution.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
TableCaution.BorderColor3 = Color3.fromRGB(149, 149, 149)
TableCaution.BorderSizePixel = 0
TableCaution.Draggable = true
TableCaution.Position = UDim2.new(0.300000012, 0, 0.300000012, 0)
TableCaution.Size = UDim2.new(0, 350, 0, 20)
TableCaution.Visible = false
TableCaution.ZIndex = 2
MainWindow_5.Name = "MainWindow"
MainWindow_5.Parent = TableCaution
MainWindow_5.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
MainWindow_5.BackgroundTransparency = 0.100
MainWindow_5.BorderColor3 = Color3.fromRGB(191, 191, 191)
MainWindow_5.Size = UDim2.new(1, 0, 0, 150)
Ok_3.Name = "Ok"
Ok_3.Parent = MainWindow_5
Ok_3.BackgroundColor3 = Color3.fromRGB(108, 108, 108)
Ok_3.BackgroundTransparency = 0.500
Ok_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
Ok_3.Position = UDim2.new(0.300000012, 0, 1, -40)
Ok_3.Size = UDim2.new(0.400000006, 0, 0, 30)
Ok_3.Font = Enum.Font.SourceSans
Ok_3.Text = "Ok"
Ok_3.TextSize = 18.000
TableResults.Name = "TableResults"
TableResults.Parent = MainWindow_5
TableResults.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TableResults.BackgroundTransparency = 1.000
TableResults.Position = UDim2.new(0, 0, 0, 20)
TableResults.Size = UDim2.new(1, 0, 0, 80)
TableResults.BottomImage = "rbxasset://textures/blackBkg_square.png"
TableResults.CanvasSize = UDim2.new(0, 0, 0, 0)
TableResults.MidImage = "rbxasset://textures/blackBkg_square.png"
TableResults.TopImage = "rbxasset://textures/blackBkg_square.png"
TableTemplate.Name = "TableTemplate"
TableTemplate.Parent = MainWindow_5
TableTemplate.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
TableTemplate.BackgroundTransparency = 0.500
TableTemplate.BorderColor3 = Color3.fromRGB(191, 191, 191)
TableTemplate.Size = UDim2.new(1, 0, 0, 20)
TableTemplate.Visible = false
Type_2.Name = "Type"
Type_2.Parent = TableTemplate
Type_2.BackgroundColor3 = Color3.fromRGB(102, 102, 102)
Type_2.BackgroundTransparency = 0.900
Type_2.Size = UDim2.new(0.400000006, 0, 0, 20)
Type_2.Font = Enum.Font.SourceSans
Type_2.Text = "Script"
Type_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Type_2.TextSize = 18.000
Type_2.TextStrokeTransparency = 0.800
Value_2.Name = "Value"
Value_2.Parent = TableTemplate
Value_2.BackgroundColor3 = Color3.fromRGB(102, 102, 102)
Value_2.BackgroundTransparency = 0.900
Value_2.Position = UDim2.new(0.400000006, 0, 0, 0)
Value_2.Size = UDim2.new(0.600000024, -12, 0, 20)
Value_2.Font = Enum.Font.SourceSans
Value_2.Text = "Script"
Value_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Value_2.TextSize = 14.000
Value_2.TextStrokeTransparency = 0.800
Title_6.Name = "Title"
Title_6.Parent = TableCaution
Title_6.BackgroundTransparency = 1.000
Title_6.Size = UDim2.new(1, 0, 1, 0)
Title_6.ZIndex = 2
Title_6.Font = Enum.Font.SourceSans
Title_6.Text = "Caution"
Title_6.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_6.TextSize = 14.000
Title_6.TextStrokeTransparency = 0.800
Title_6.TextXAlignment = Enum.TextXAlignment.Left
SaveMapWindow.Name = "SaveMapWindow"
SaveMapWindow.Parent = BetterDarkDex
SaveMapWindow.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
SaveMapWindow.BackgroundTransparency = 0.100
SaveMapWindow.BorderColor3 = Color3.fromRGB(191, 191, 191)
SaveMapWindow.BorderSizePixel = 0
SaveMapWindow.Position = UDim2.new(1, 0, 0, 0)
SaveMapWindow.Size = UDim2.new(0, 300, 1, 0)
Header_3.Name = "Header"
Header_3.Parent = SaveMapWindow
Header_3.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Header_3.BorderColor3 = Color3.fromRGB(149, 149, 149)
Header_3.BorderSizePixel = 0
Header_3.Size = UDim2.new(1, 0, 0, 17)
TextLabel_3.Parent = Header_3
TextLabel_3.BackgroundTransparency = 1.000
TextLabel_3.BorderSizePixel = 0
TextLabel_3.Position = UDim2.new(0, 4, 0, 0)
TextLabel_3.Size = UDim2.new(1, -4, 1, 0)
TextLabel_3.Font = Enum.Font.SourceSans
TextLabel_3.Text = "Map Downloader"
TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.TextSize = 14.000
TextLabel_3.TextStrokeTransparency = 0.750
TextLabel_3.TextXAlignment = Enum.TextXAlignment.Left
MapSettings.Name = "MapSettings"
MapSettings.Parent = SaveMapWindow
MapSettings.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
MapSettings.BackgroundTransparency = 1.000
MapSettings.Position = UDim2.new(0, 0, 0, 200)
MapSettings.Size = UDim2.new(1, 0, 0, 240)
Terrain.Name = "Terrain"
Terrain.Parent = MapSettings
Terrain.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Terrain.BackgroundTransparency = 1.000
Terrain.Position = UDim2.new(0, 0, 0, 60)
Terrain.Size = UDim2.new(1, 0, 0, 60)
Terrain.Visible = false
SName_2.Name = "SName"
SName_2.Parent = Terrain
SName_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SName_2.BackgroundTransparency = 1.000
SName_2.Position = UDim2.new(0, 10, 0, 0)
SName_2.Size = UDim2.new(1, -20, 0, 30)
SName_2.Font = Enum.Font.SourceSans
SName_2.Text = "Save Terrain"
SName_2.TextColor3 = Color3.fromRGB(255, 255, 255)
SName_2.TextSize = 18.000
SName_2.TextStrokeTransparency = 0.750
SName_2.TextXAlignment = Enum.TextXAlignment.Left
Status_2.Name = "Status"
Status_2.Parent = Terrain
Status_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Status_2.BackgroundTransparency = 1.000
Status_2.Position = UDim2.new(0, 60, 0, 30)
Status_2.Size = UDim2.new(0, 50, 0, 15)
Status_2.Font = Enum.Font.SourceSans
Status_2.Text = "Off"
Status_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Status_2.TextSize = 18.000
Status_2.TextStrokeTransparency = 0.750
Status_2.TextXAlignment = Enum.TextXAlignment.Left
Change_2.Name = "Change"
Change_2.Parent = Terrain
Change_2.BackgroundColor3 = Color3.fromRGB(220, 220, 220)
Change_2.BorderSizePixel = 0
Change_2.Position = UDim2.new(0, 10, 0, 30)
Change_2.Size = UDim2.new(0, 40, 0, 15)
Change_2.Font = Enum.Font.SourceSans
Change_2.Text = ""
Change_2.TextSize = 14.000
OnBar_2.Name = "OnBar"
OnBar_2.Parent = Change_2
OnBar_2.BackgroundColor3 = Color3.fromRGB(255, 153, 0)
OnBar_2.BorderSizePixel = 0
OnBar_2.Size = UDim2.new(0, 0, 0, 15)
OnBar_2.Font = Enum.Font.SourceSans
OnBar_2.Text = ""
OnBar_2.TextSize = 14.000
Bar_2.Name = "Bar"
Bar_2.Parent = Change_2
Bar_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Bar_2.BorderSizePixel = 0
Bar_2.ClipsDescendants = true
Bar_2.Position = UDim2.new(0, -2, 0, -2)
Bar_2.Size = UDim2.new(0, 10, 0, 19)
Bar_2.Font = Enum.Font.SourceSans
Bar_2.Text = ""
Bar_2.TextSize = 14.000
Lighting.Name = "Lighting"
Lighting.Parent = MapSettings
Lighting.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Lighting.BackgroundTransparency = 1.000
Lighting.Position = UDim2.new(0, 0, 0, 120)
Lighting.Size = UDim2.new(1, 0, 0, 60)
Lighting.Visible = false
SName_3.Name = "SName"
SName_3.Parent = Lighting
SName_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SName_3.BackgroundTransparency = 1.000
SName_3.Position = UDim2.new(0, 10, 0, 0)
SName_3.Size = UDim2.new(1, -20, 0, 30)
SName_3.Font = Enum.Font.SourceSans
SName_3.Text = "Lighting Properties"
SName_3.TextColor3 = Color3.fromRGB(255, 255, 255)
SName_3.TextSize = 18.000
SName_3.TextStrokeTransparency = 0.750
SName_3.TextXAlignment = Enum.TextXAlignment.Left
Status_3.Name = "Status"
Status_3.Parent = Lighting
Status_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Status_3.BackgroundTransparency = 1.000
Status_3.Position = UDim2.new(0, 60, 0, 30)
Status_3.Size = UDim2.new(0, 50, 0, 15)
Status_3.Font = Enum.Font.SourceSans
Status_3.Text = "Off"
Status_3.TextColor3 = Color3.fromRGB(255, 255, 255)
Status_3.TextSize = 18.000
Status_3.TextStrokeTransparency = 0.750
Status_3.TextXAlignment = Enum.TextXAlignment.Left
Change_3.Name = "Change"
Change_3.Parent = Lighting
Change_3.BackgroundColor3 = Color3.fromRGB(220, 220, 220)
Change_3.BorderSizePixel = 0
Change_3.Position = UDim2.new(0, 10, 0, 30)
Change_3.Size = UDim2.new(0, 40, 0, 15)
Change_3.Font = Enum.Font.SourceSans
Change_3.Text = ""
Change_3.TextSize = 14.000
OnBar_3.Name = "OnBar"
OnBar_3.Parent = Change_3
OnBar_3.BackgroundColor3 = Color3.fromRGB(255, 153, 0)
OnBar_3.BorderSizePixel = 0
OnBar_3.Size = UDim2.new(0, 0, 0, 15)
OnBar_3.Font = Enum.Font.SourceSans
OnBar_3.Text = ""
OnBar_3.TextSize = 14.000
Bar_3.Name = "Bar"
Bar_3.Parent = Change_3
Bar_3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Bar_3.BorderSizePixel = 0
Bar_3.ClipsDescendants = true
Bar_3.Position = UDim2.new(0, -2, 0, -2)
Bar_3.Size = UDim2.new(0, 10, 0, 19)
Bar_3.Font = Enum.Font.SourceSans
Bar_3.Text = ""
Bar_3.TextSize = 14.000
CameraInstances.Name = "CameraInstances"
CameraInstances.Parent = MapSettings
CameraInstances.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CameraInstances.BackgroundTransparency = 1.000
CameraInstances.Position = UDim2.new(0, 0, 0, 180)
CameraInstances.Size = UDim2.new(1, 0, 0, 60)
CameraInstances.Visible = false
SName_4.Name = "SName"
SName_4.Parent = CameraInstances
SName_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SName_4.BackgroundTransparency = 1.000
SName_4.Position = UDim2.new(0, 10, 0, 0)
SName_4.Size = UDim2.new(1, -20, 0, 30)
SName_4.Font = Enum.Font.SourceSans
SName_4.Text = "Camera Instances"
SName_4.TextColor3 = Color3.fromRGB(255, 255, 255)
SName_4.TextSize = 18.000
SName_4.TextStrokeTransparency = 0.750
SName_4.TextXAlignment = Enum.TextXAlignment.Left
Status_4.Name = "Status"
Status_4.Parent = CameraInstances
Status_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Status_4.BackgroundTransparency = 1.000
Status_4.Position = UDim2.new(0, 60, 0, 30)
Status_4.Size = UDim2.new(0, 50, 0, 15)
Status_4.Font = Enum.Font.SourceSans
Status_4.Text = "Off"
Status_4.TextColor3 = Color3.fromRGB(255, 255, 255)
Status_4.TextSize = 18.000
Status_4.TextStrokeTransparency = 0.750
Status_4.TextXAlignment = Enum.TextXAlignment.Left
Change_4.Name = "Change"
Change_4.Parent = CameraInstances
Change_4.BackgroundColor3 = Color3.fromRGB(220, 220, 220)
Change_4.BorderSizePixel = 0
Change_4.Position = UDim2.new(0, 10, 0, 30)
Change_4.Size = UDim2.new(0, 40, 0, 15)
Change_4.Font = Enum.Font.SourceSans
Change_4.Text = ""
Change_4.TextSize = 14.000
OnBar_4.Name = "OnBar"
OnBar_4.Parent = Change_4
OnBar_4.BackgroundColor3 = Color3.fromRGB(255, 153, 0)
OnBar_4.BorderSizePixel = 0
OnBar_4.Size = UDim2.new(0, 0, 0, 15)
OnBar_4.Font = Enum.Font.SourceSans
OnBar_4.Text = ""
OnBar_4.TextSize = 14.000
Bar_4.Name = "Bar"
Bar_4.Parent = Change_4
Bar_4.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Bar_4.BorderSizePixel = 0
Bar_4.ClipsDescendants = true
Bar_4.Position = UDim2.new(0, -2, 0, -2)
Bar_4.Size = UDim2.new(0, 10, 0, 19)
Bar_4.Font = Enum.Font.SourceSans
Bar_4.Text = ""
Bar_4.TextSize = 14.000
Scripts.Name = "Scripts"
Scripts.Parent = MapSettings
Scripts.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Scripts.BackgroundTransparency = 1.000
Scripts.Size = UDim2.new(1, 0, 0, 60)
ToSave.Name = "ToSave"
ToSave.Parent = SaveMapWindow
ToSave.BackgroundTransparency = 1.000
ToSave.Position = UDim2.new(0, 0, 0, 17)
ToSave.Size = UDim2.new(1, 0, 0, 20)
ToSave.Font = Enum.Font.SourceSans
ToSave.Text = "To Save"
ToSave.TextColor3 = Color3.fromRGB(255, 255, 255)
ToSave.TextSize = 18.000
ToSave.TextStrokeTransparency = 0.750
CopyList.Name = "CopyList"
CopyList.Parent = SaveMapWindow
CopyList.BackgroundColor3 = Color3.fromRGB(155, 155, 155)
CopyList.BackgroundTransparency = 0.800
CopyList.Position = UDim2.new(0, 0, 0, 37)
CopyList.Size = UDim2.new(1, 0, 0, 163)
Bottom.Name = "Bottom"
Bottom.Parent = SaveMapWindow
Bottom.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
Bottom.BorderColor3 = Color3.fromRGB(149, 149, 149)
Bottom.Position = UDim2.new(0, 0, 1, -50)
Bottom.Size = UDim2.new(1, 0, 0, 50)
TextLabel_4.Parent = Bottom
TextLabel_4.BackgroundTransparency = 1.000
TextLabel_4.Position = UDim2.new(0, 4, 0, 0)
TextLabel_4.Size = UDim2.new(1, -4, 1, 0)
TextLabel_4.Font = Enum.Font.SourceSans
TextLabel_4.Text =
    "After the map saves, open a new place on studio, then right click Lighting and \"Insert from file...\", then select your file and run the unpacker script inside the folder."
TextLabel_4.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.TextSize = 14.000
TextLabel_4.TextStrokeTransparency = 0.800
TextLabel_4.TextWrapped = true
TextLabel_4.TextXAlignment = Enum.TextXAlignment.Left
TextLabel_4.TextYAlignment = Enum.TextYAlignment.Top
Save_2.Name = "Save"
Save_2.Parent = SaveMapWindow
Save_2.BackgroundColor3 = Color3.fromRGB(240, 240, 240)
Save_2.BackgroundTransparency = 0.800
Save_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Save_2.Position = UDim2.new(0, 0, 1, -80)
Save_2.Size = UDim2.new(1, 0, 0, 30)
Save_2.Font = Enum.Font.SourceSans
Save_2.Text = "Save"
Save_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Save_2.TextSize = 18.000
Save_2.TextStrokeTransparency = 0.750
FileName_2.Name = "FileName"
FileName_2.Parent = SaveMapWindow
FileName_2.BackgroundColor3 = Color3.fromRGB(240, 240, 240)
FileName_2.BackgroundTransparency = 0.600
FileName_2.Position = UDim2.new(0, 0, 1, -105)
FileName_2.Size = UDim2.new(1, 0, 0, 25)
FileName_2.Font = Enum.Font.SourceSans
FileName_2.PlaceholderColor3 = Color3.fromRGB(178, 178, 178)
FileName_2.Text = "PlaceName"
FileName_2.TextColor3 = Color3.fromRGB(255, 255, 255)
FileName_2.TextSize = 18.000
FileName_2.TextStrokeTransparency = 0.750
FileName_2.TextXAlignment = Enum.TextXAlignment.Left
Entry.Name = "Entry"
Entry.Parent = SaveMapWindow
Entry.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Entry.BackgroundTransparency = 1.000
Entry.Size = UDim2.new(1, 0, 0, 22)
Entry.Visible = false
Change_6.Name = "Change"
Change_6.Parent = Entry
Change_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Change_6.BackgroundTransparency = 0.600
Change_6.Position = UDim2.new(0, 10, 0, 1)
Change_6.Size = UDim2.new(0, 20, 0, 20)
Change_6.ZIndex = 2
Change_6.Font = Enum.Font.SourceSans
Change_6.Text = ""
Change_6.TextColor3 = Color3.fromRGB(255, 255, 255)
Change_6.TextSize = 18.000
enabled_3.Name = "enabled"
enabled_3.Parent = Change_6
enabled_3.BackgroundColor3 = Color3.fromRGB(97, 97, 97)
enabled_3.BackgroundTransparency = 0.400
enabled_3.BorderSizePixel = 0
enabled_3.Position = UDim2.new(0, 3, 0, 3)
enabled_3.Size = UDim2.new(0, 14, 0, 14)
enabled_3.Font = Enum.Font.SourceSans
enabled_3.Text = ""
enabled_3.TextColor3 = Color3.fromRGB(255, 255, 255)
enabled_3.TextSize = 14.000
Info.Name = "Info"
Info.Parent = Entry
Info.BackgroundTransparency = 1.000
Info.Position = UDim2.new(0, 40, 0, 0)
Info.Size = UDim2.new(1, -40, 0, 22)
Info.Font = Enum.Font.SourceSans
Info.Text = "Workspace"
Info.TextColor3 = Color3.fromRGB(255, 255, 255)
Info.TextSize = 18.000
Info.TextStrokeTransparency = 0.750
Info.TextXAlignment = Enum.TextXAlignment.Left
RemoteDebugWindow.Name = "RemoteDebugWindow"
RemoteDebugWindow.Parent = BetterDarkDex
RemoteDebugWindow.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
RemoteDebugWindow.BackgroundTransparency = 0.100
RemoteDebugWindow.BorderColor3 = Color3.fromRGB(191, 191, 191)
RemoteDebugWindow.BorderSizePixel = 0
RemoteDebugWindow.Position = UDim2.new(1, 0, 0, 0)
RemoteDebugWindow.Size = UDim2.new(0, 300, 1, 0)
Header_4.Name = "Header"
Header_4.Parent = RemoteDebugWindow
Header_4.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Header_4.BorderColor3 = Color3.fromRGB(149, 149, 149)
Header_4.Size = UDim2.new(1, 0, 0, 17)
TextLabel_5.Parent = Header_4
TextLabel_5.BackgroundTransparency = 1.000
TextLabel_5.Position = UDim2.new(0, 4, 0, 0)
TextLabel_5.Size = UDim2.new(1, -4, 1, 0)
TextLabel_5.Font = Enum.Font.SourceSans
TextLabel_5.Text = "Remote Debugger"
TextLabel_5.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_5.TextSize = 14.000
TextLabel_5.TextStrokeTransparency = 0.750
TextLabel_5.TextXAlignment = Enum.TextXAlignment.Left
Desc_5.Name = "Desc"
Desc_5.Parent = RemoteDebugWindow
Desc_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Desc_5.BackgroundTransparency = 1.000
Desc_5.Position = UDim2.new(0, 0, 0, 20)
Desc_5.Size = UDim2.new(1, 0, 0, 40)
Desc_5.Font = Enum.Font.SourceSans
Desc_5.Text = "Have fun with remotes"
Desc_5.TextColor3 = Color3.fromRGB(255, 255, 255)
Desc_5.TextSize = 32.000
Desc_5.TextStrokeTransparency = 0.750
Desc_5.TextWrapped = true
About_2.Name = "About"
About_2.Parent = BetterDarkDex
About_2.Active = true
About_2.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
About_2.BorderColor3 = Color3.fromRGB(149, 149, 149)
About_2.BorderSizePixel = 0
About_2.Draggable = true
About_2.Position = UDim2.new(1, 0, 0, 0)
About_2.Size = UDim2.new(0, 300, 1, 0)
About_2.ZIndex = 2
Creator.Name = "Creator"
Creator.Parent = About_2
Creator.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Creator.BackgroundTransparency = 1.000
Creator.Position = UDim2.new(0, 0, 0, 300)
Creator.Size = UDim2.new(1, 0, 0, 30)
Creator.ZIndex = 2
Creator.Font = Enum.Font.SourceSansBold
Creator.Text = "Created by: Moon\nEdited by: wally, ic3\nBDD by: Deja, nul"
Creator.TextColor3 = Color3.fromRGB(255, 255, 255)
Creator.TextSize = 28.000
Creator.TextStrokeTransparency = 0.750
Title_7.Name = "Title"
Title_7.Parent = About_2
Title_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title_7.BackgroundTransparency = 1.000
Title_7.Position = UDim2.new(0, 0, 0, 150)
Title_7.Size = UDim2.new(1, 0, 0, 60)
Title_7.ZIndex = 2
Title_7.Font = Enum.Font.SourceSansBold
Title_7.Text = "BDD"
Title_7.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_7.TextSize = 60.000
Title_7.TextStrokeTransparency = 0.750
Version_2.Name = "Version"
Version_2.Parent = About_2
Version_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Version_2.BackgroundTransparency = 1.000
Version_2.Position = UDim2.new(0, 100, 0, 210)
Version_2.Size = UDim2.new(0, 100, 0, 30)
Version_2.ZIndex = 2
Version_2.Font = Enum.Font.SourceSansBold
Version_2.Text = "ExPro Edition"
Version_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Version_2.TextSize = 28.000
Version_2.TextStrokeTransparency = 0.750
Toggle_2.Name = "Toggle"
Toggle_2.Parent = BetterDarkDex
Toggle_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Toggle_2.BackgroundTransparency = 1.000
Toggle_2.Position = UDim2.new(1, 0, 0, 0)
Toggle_2.Rotation = 180.000
Toggle_2.Size = UDim2.new(0, 40, 0, 40)
Toggle_2.Image = "rbxassetid://1513966937"
Toggle_2.ImageColor3 = Color3.fromRGB(43, 43, 43)
TextLabel_6.Parent = Toggle_2
TextLabel_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_6.BackgroundTransparency = 1.000
TextLabel_6.Position = UDim2.new(0, 2, 0, 10)
TextLabel_6.Rotation = 180.000
TextLabel_6.Size = UDim2.new(0, 30, 0, 30)
TextLabel_6.Font = Enum.Font.SourceSans
TextLabel_6.Text = "+"
TextLabel_6.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_6.TextSize = 24.000
TextLabel_6.TextStrokeColor3 = Color3.fromRGB(30, 255, 255)
TextLabel_6.TextStrokeTransparency = 1
TextLabel_6.TextWrapped = true
IntroFrame.Name = "IntroFrame"
IntroFrame.Parent = BetterDarkDex
IntroFrame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
IntroFrame.BorderSizePixel = 0
IntroFrame.Position = UDim2.new(1, 30, 0, 0)
IntroFrame.Size = UDim2.new(0, 301, 1, 0)
IntroFrame.ZIndex = 2
Version_3.Name = "Version"
Version_3.Parent = IntroFrame
Version_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Version_3.BackgroundTransparency = 1.000
Version_3.Position = UDim2.new(0, 100, 0, 210)
Version_3.Size = UDim2.new(0, 100, 0, 30)
Version_3.ZIndex = 2
Version_3.Font = Enum.Font.SourceSansBold
Version_3.Text = "ExPro Edition"
Version_3.TextColor3 = Color3.fromRGB(255, 255, 255)
Version_3.TextSize = 28.000
Version_3.TextStrokeTransparency = 0.500
Title_8.Name = "Title"
Title_8.Parent = IntroFrame
Title_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title_8.BackgroundTransparency = 1.000
Title_8.Position = UDim2.new(0, 100, 0, 150)
Title_8.Size = UDim2.new(0, 100, 0, 60)
Title_8.ZIndex = 2
Title_8.Font = Enum.Font.SourceSansBold
Title_8.Text = "BDD"
Title_8.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_8.TextSize = 60.000
Title_8.TextStrokeTransparency = 0.500
Title_8.TextWrapped = true
Creator_2.Name = "Creator"
Creator_2.Parent = IntroFrame
Creator_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Creator_2.BackgroundTransparency = 1.000
Creator_2.Position = UDim2.new(0, 80, 0, 300)
Creator_2.Size = UDim2.new(0, 140, 0, 30)
Creator_2.ZIndex = 2
Creator_2.Font = Enum.Font.SourceSansBold
Creator_2.Text = "Created by: Moon\nEdited by: wally, ic3\nBDD by: Deja, nul"
Creator_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Creator_2.TextSize = 28.000
Creator_2.TextStrokeTransparency = 0.500
Sad.Name = "Sad"
Sad.Parent = IntroFrame
Sad.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Sad.BackgroundTransparency = 1.000
Sad.Position = UDim2.new(0, 50, 1, -250)
Sad.Size = UDim2.new(0, 200, 0, 200)
Sad.Visible = false
Sad.ZIndex = 2
Sad.Image = "rbxassetid://483437370"
Sad.ImageColor3 = Color3.fromRGB(245, 245, 245)
Main_2.Name = "Main"
Main_2.Parent = IntroFrame
Main_2.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Main_2.BorderSizePixel = 0
Main_2.Position = UDim2.new(0, -30, 0, 0)
Main_2.Size = UDim2.new(0, 30, 0, 90)
Main_2.ZIndex = 2
Slant_2.Name = "Slant"
Slant_2.Parent = IntroFrame
Slant_2.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Slant_2.BackgroundTransparency = 1.000
Slant_2.Position = UDim2.new(0, -30, 0, 90)
Slant_2.Rotation = 180.000
Slant_2.Size = UDim2.new(0, 30, 0, 30)
Slant_2.ZIndex = 2
Slant_2.Image = "rbxassetid://1513966937"
Slant_2.ImageColor3 = Color3.fromRGB(50, 50, 50)
ScriptEditor.Name = "ScriptEditor"
ScriptEditor.Parent = BetterDarkDex
ScriptEditor.Active = true
ScriptEditor.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
ScriptEditor.BackgroundTransparency = 1.000
ScriptEditor.BorderColor3 = Color3.fromRGB(149, 149, 149)
ScriptEditor.BorderSizePixel = 0
ScriptEditor.Draggable = true
ScriptEditor.Position = UDim2.new(0.5, -368, 0.5, -216)
ScriptEditor.Size = UDim2.new(0, 642, 0, 25)
ScriptEditor.Visible = false
ScriptEditor.ZIndex = 5
Editor.Name = "Editor"
Editor.Parent = ScriptEditor
Editor.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Editor.BorderSizePixel = 0
Editor.Position = UDim2.new(0, 0, 1, 25)
Editor.Size = UDim2.new(0, 642, 0, 436)
Editor.ZIndex = 2
TopBar.Name = "TopBar"
TopBar.Parent = ScriptEditor
TopBar.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
TopBar.BorderSizePixel = 0
TopBar.Size = UDim2.new(1, 0, 1, 0)
TopBar.ZIndex = 3
title.Name = "title"
title.Parent = TopBar
title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title.BackgroundTransparency = 1.000
title.Size = UDim2.new(1, 0, 1, 0)
title.Font = Enum.Font.Code
title.Text = "[Better Script Viewer]"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextSize = 16.000
title.ZIndex = 3
Close.Name = "Close"
Close.Parent = TopBar
Close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Close.BackgroundTransparency = 1.000
Close.Position = UDim2.new(1, -25, 0, 0)
Close.Size = UDim2.new(0, 25, 1, 0)
Close.Font = Enum.Font.SourceSansSemibold
Close.Text = "-"
Close.TextColor3 = Color3.fromRGB(255, 255, 255)
Close.TextSize = 20.000
Close.ZIndex = 5
Other.Name = "Other"
Other.Parent = TopBar
Other.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Other.BorderSizePixel = 0
Other.Position = UDim2.new(0, 0, 1, 0)
Other.Size = UDim2.new(1, 0, 1, 0)
Other.ZIndex = 2
FileName_3.Name = "FileName"
FileName_3.Parent = Other
FileName_3.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
FileName_3.BorderSizePixel = 0
FileName_3.Size = UDim2.new(0, 125, 1, 0)
FileName_3.ZIndex = 2
FileName_3.Font = Enum.Font.Code
FileName_3.Text = "File Name"
FileName_3.TextColor3 = Color3.fromRGB(255, 255, 255)
FileName_3.TextSize = 14.000
UIListLayout.Parent = Other
UIListLayout.FillDirection = Enum.FillDirection.Horizontal
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
SaveScript.Name = "SaveScript"
SaveScript.Parent = Other
SaveScript.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
SaveScript.BorderSizePixel = 0
SaveScript.Size = UDim2.new(0, 125, 1, 0)
SaveScript.ZIndex = 2
SaveScript.Font = Enum.Font.Code
SaveScript.Text = "Save Script"
SaveScript.TextColor3 = Color3.fromRGB(255, 255, 255)
SaveScript.TextSize = 14.000
CopyScript.Name = "CopyScript"
CopyScript.Parent = Other
CopyScript.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
CopyScript.BorderSizePixel = 0
CopyScript.LayoutOrder = 2
CopyScript.Size = UDim2.new(0, 150, 1, 0)
CopyScript.ZIndex = 2
CopyScript.Font = Enum.Font.Code
CopyScript.Text = "Copy To Clipboard"
CopyScript.TextColor3 = Color3.fromRGB(255, 255, 255)
CopyScript.TextSize = 14.000
ClearScript.Name = "ClearScript"
ClearScript.Parent = Other
ClearScript.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
ClearScript.BorderSizePixel = 0
ClearScript.LayoutOrder = 2
ClearScript.Size = UDim2.new(0, 125, 1, 0)
ClearScript.ZIndex = 2
ClearScript.Font = Enum.Font.Code
ClearScript.Text = "Clear Editor"
ClearScript.TextColor3 = Color3.fromRGB(255, 255, 255)
ClearScript.TextSize = 14.000

-- // Events
task.spawn(function()
    local GetApi = Instance.new("BindableFunction")
    GetApi.Parent = PropertiesFrame
    GetApi.Name = "GetApi"
    local GetAwaiting = Instance.new("BindableFunction")
    GetAwaiting.Parent = PropertiesFrame
    GetAwaiting.Name = "GetAwaiting"
    local SetAwaiting = Instance.new("BindableEvent")
    SetAwaiting.Parent = PropertiesFrame
    SetAwaiting.Name = "SetAwaiting"
    local SelectionChanged = Instance.new("BindableEvent")
    SelectionChanged.Parent = ExplorerPanel
    SelectionChanged.Name = "SelectionChanged"
    local SetOption = Instance.new("BindableFunction")
    SetOption.Parent = ExplorerPanel
    SetOption.Name = "SetOption"
    local SetSelection = Instance.new("BindableFunction")
    SetSelection.Parent = ExplorerPanel
    SetSelection.Name = "SetSelection"
    local GetOption = Instance.new("BindableFunction")
    GetOption.Parent = ExplorerPanel
    GetOption.Name = "GetOption"
    local GetSelection = Instance.new("BindableFunction")
    GetSelection.Parent = ExplorerPanel
    GetSelection.Name = "GetSelection"
    local GetPrint = Instance.new("BindableFunction")
    GetPrint.Parent = ExplorerPanel
    GetPrint.Name = "GetPrint"
    local GetSetting = Instance.new("BindableFunction")
    GetSetting.Parent = SettingsPanel
    GetSetting.Name = "GetSetting"
    local GetSetting = Instance.new("BindableFunction")
    GetSetting.Parent = RemoteDebugWindow
    GetSetting.Name = "GetSetting"
    local OpenScript = Instance.new("BindableEvent")
    OpenScript.Parent = ScriptEditor
    OpenScript.Name = "OpenScript"
end)

-- // Selection
task.spawn(function()
    local Gui = BetterDarkDex
    local HttpService = game:GetService "HttpService"
    local IntroFrame = Gui:WaitForChild("IntroFrame")
    local SideMenu = Gui:WaitForChild("SideMenu")
    local OpenToggleButton = Gui:WaitForChild("Toggle")
    local CloseToggleButton = SideMenu:WaitForChild("Toggle")
    local OpenScriptEditorButton = SideMenu:WaitForChild("OpenScriptEditor")
    local ScriptEditor = Gui:WaitForChild("ScriptEditor")
    local SlideOut = SideMenu:WaitForChild("SlideOut")
    local SlideFrame = SlideOut:WaitForChild("SlideFrame")
    local Slant = SideMenu:WaitForChild("Slant")
    local ExplorerButton = SlideFrame:WaitForChild("Explorer")
    local SettingsButton = SlideFrame:WaitForChild("Settings")
    local ExplorerPanel = Gui:WaitForChild("ExplorerPanel")
    local PropertiesFrame = Gui:WaitForChild("PropertiesFrame")
    local SaveMapWindow = Gui:WaitForChild("SaveMapWindow")
    local RemoteDebugWindow = Gui:WaitForChild("RemoteDebugWindow")
    local SettingsPanel = Gui:WaitForChild("SettingsPanel")
    local AboutPanel = Gui:WaitForChild("About")
    local SettingsListener = SettingsPanel:WaitForChild("GetSetting")
    local SettingTemplate = SettingsPanel:WaitForChild("SettingTemplate")
    local SettingList = SettingsPanel:WaitForChild("SettingList")
    local SaveMapCopyList = SaveMapWindow:WaitForChild("CopyList")
    local SaveMapSettingFrame = SaveMapWindow:WaitForChild("MapSettings")
    local SaveMapName = SaveMapWindow:WaitForChild("FileName")
    local SaveMapButton = SaveMapWindow:WaitForChild("Save")
    local SaveMapCopyTemplate = SaveMapWindow:WaitForChild("Entry")
    local SaveMapSettings = {
        CopyWhat = {
            Workspace = true,
            Lighting = true,
            ReplicatedStorage = true,
            ReplicatedFirst = true,
            StarterPack = true,
            StarterGui = true,
            StarterPlayer = true
        },
        SaveTerrain = true,
        LightingProperties = true,
        CameraInstances = true
    }

    local SelectionObjectChanged = ExplorerPanel:WaitForChild("SelectionObjectChanged")
    local GetSelection = ExplorerPanel:WaitForChild("GetSelection")
    local SetSelection = ExplorerPanel:WaitForChild("SetSelection")
    local Player = game:GetService("Players").LocalPlayer
    local Mouse = Player:GetMouse()
    local CurrentWindow = "Nothing c:"
    local Windows = {
        Explorer = {ExplorerPanel, PropertiesFrame},
        Settings = {SettingsPanel},
        SaveMap = {SaveMapWindow},
        Remotes = {RemoteDebugWindow},
        About = {AboutPanel}
    }
    function switchWindows(wName, over)
        if CurrentWindow == wName and not over then
            return
        end
        local count = 0
        for i, v in pairs(Windows) do
            count = 0
            if i ~= wName then
                for _, c in pairs(v) do
                    c.Position = UDim2.new(1, 30, count * 0.5, count * 36)
                    count = count + 1
                end
            end
        end
        count = 0
        if Windows[wName] then
            for _, c in pairs(Windows[wName]) do
                c.Position = UDim2.new(1, -300, count * 0.5, count * 36)
                count = count + 1
            end
        end
        if wName ~= "Nothing c:" then
            CurrentWindow = wName
            for i, v in pairs(SlideFrame:GetChildren()) do
                v.BackgroundTransparency = 1
                v.Icon.ImageColor3 = Color3.new(0.6, 0.6, 0.6)
            end
            if SlideFrame:FindFirstChild(wName) then
                SlideFrame[wName].BackgroundTransparency = 1
                SlideFrame[wName].Icon.ImageColor3 = Color3.new(1, 1, 1)
            end
        end
    end
    function toggleDex(on)
        if on then
            SideMenu.Position = UDim2.new(1, -330, 0, 0)
            OpenToggleButton.Position = UDim2.new(1, 0, 0, 0)
            switchWindows(CurrentWindow, true)
        else
            SideMenu.Position = UDim2.new(1, 0, 0, 0)
            OpenToggleButton.Position = UDim2.new(1, -40, 0, 0)
            switchWindows("Nothing c:")
        end
    end
    local Settings = {
        ClickSelect = false,
        SelBox = false,
        ClearProps = false,
        SelectUngrouped = true,
        SaveInstanceScripts = true,
        UseNewDecompiler = true
    }
    pcall(function()
        local content = readfile("bddv2_settings.json")
        if content ~= nil and content ~= "" then
            local Saved = HttpService:JSONDecode(content)
            for i, v in pairs(Saved) do
                if Settings[i] ~= nil then
                    Settings[i] = v
                end
            end
        end
    end)
    function SaveSettings()
        local JSON = HttpService:JSONEncode(Settings)
        writefile("bddv2_settings.json", JSON)
    end
    local _decompile = decompile
    function decompile(s, ...)
        if Settings.UseNewDecompiler then
            return _decompile(s, "new")
        else
            return _decompile(s, "legacy")
        end
    end
    function ReturnSetting(set)
        if set == "ClearProps" then
            return Settings.ClearProps
        elseif set == "SelectUngrouped" then
            return Settings.SelectUngrouped
        elseif set == "UseNewDecompiler" then
            return Settings.UseNewDecompiler
        end
    end
    OpenToggleButton.MouseButton1Up:connect(function()
        toggleDex(true)
    end)
    OpenScriptEditorButton.MouseButton1Up:connect(function()
        if OpenScriptEditorButton.Active then
            ScriptEditor.Visible = not ScriptEditor.Visible
        end
    end)
    CloseToggleButton.MouseButton1Up:connect(function()
        if CloseToggleButton.Active then
            toggleDex(false)
        end
    end)

    for i, v in pairs(SlideFrame:GetChildren()) do
        v.MouseButton1Click:connect(function()
            switchWindows(v.Name)
        end)
    end

    function createSetting(name, interName, defaultOn)
        local newSetting = SettingTemplate:Clone()
        newSetting.Position = UDim2.new(0, 0, 0, #SettingList:GetChildren() * 60)
        newSetting.SName.Text = name
        local function toggle(on)
            if on then
                newSetting.Change.Bar.Position = UDim2.new(0, 32, 0, -2)
                newSetting.Change.OnBar.Size = UDim2.new(0, 34, 0, 15)
                newSetting.Status.Text = "On"
                Settings[interName] = true
            else
                newSetting.Change.Bar.Position = UDim2.new(0, -2, 0, -2)
                newSetting.Change.OnBar.Size = UDim2.new(0, 0, 0, 15)
                newSetting.Status.Text = "Off"
                Settings[interName] = false
            end
        end
        newSetting.Change.MouseButton1Click:connect(function()
            toggle(not Settings[interName])
            wait(1 / 12)
            pcall(SaveSettings)
        end)
        newSetting.Visible = true
        newSetting.Parent = SettingList
        if defaultOn then
            toggle(true)
        end
    end
    createSetting("Click part to select", "ClickSelect", false)
    createSetting("Selection Box", "SelBox", false)
    createSetting("Clear property value on focus", "ClearProps", false)
    createSetting("Select ungrouped models", "SelectUngrouped", true)

    local function getSelection()
        local t = GetSelection:Invoke()
        if t and #t > 0 then
            return t[1]
        else
            return nil
        end
    end
    Mouse.Button1Down:connect(function()
        if CurrentWindow == "Explorer" and Settings.ClickSelect then
            local target = Mouse.Target
            if target then
                SetSelection:Invoke({target})
            end
        end
    end)
    SelectionObjectChanged.Event:connect(function()
    end)
    SettingsListener.OnInvoke = ReturnSetting
    function createMapSetting(obj, interName, defaultOn)
        local function toggle(on)
            if on then
                obj.Change.Bar.Position = UDim2.new(0, 32, 0, -2)
                obj.Change.OnBar.Position = UDim2.new(0, 34, 0, 15)
                obj.Status.Text = "On"
                SaveMapSettings[interName] = true
            else
                obj.Change.Bar.Position = UDim2.new(0, -2, 0, -2)
                obj.Change.OnBar.Size = UDim2.new(0, 0, 0, 15)
                obj.Status.Text = "Off"
                SaveMapSettings[interName] = false
            end
        end
        obj.Change.MouseButton1Click:connect(function()
            toggle(not SaveMapSettings[interName])
        end)
        obj.Visible = true
        obj.Parent = SaveMapSettingFrame
        if defaultOn then
            toggle(true)
        end
    end
    function createCopyWhatSetting(serv)
        if SaveMapSettings.CopyWhat[serv] then
            local newSetting = SaveMapCopyTemplate:Clone()
            newSetting.Position = UDim2.new(0, 0, 0, #SaveMapCopyList:GetChildren() * 22 + 5)
            newSetting.Info.Text = serv
            local function toggle(on)
                if on then
                    newSetting.Change.enabled.Visible = true
                    SaveMapSettings.CopyWhat[serv] = true
                else
                    newSetting.Change.enabled.Visible = false
                    SaveMapSettings.CopyWhat[serv] = false
                end
            end
            newSetting.Change.MouseButton1Click:connect(function()
                toggle(not SaveMapSettings.CopyWhat[serv])
            end)
            newSetting.Visible = true
            newSetting.Parent = SaveMapCopyList
        end
    end
    createCopyWhatSetting("Workspace")
    createCopyWhatSetting("Lighting")
    createCopyWhatSetting("ReplicatedStorage")
    createCopyWhatSetting("ReplicatedFirst")
    createCopyWhatSetting("StarterPack")
    createCopyWhatSetting("StarterGui")
    createCopyWhatSetting("StarterPlayer")
    SaveMapName.Text = tostring(game.PlaceId) .. "MapCopy"
    SaveMapButton.MouseButton1Click:connect(function()
        local copyWhat = {}
        local copyGroup = Instance.new("Model", game:GetService("ReplicatedStorage"))
        if identifyexecutor() == "ScriptWare" then
            saveinstance()
        else
            saveinstance {
                noscripts = false,
                mode = "optimized",
                decomptype = 'new'
            }
        end
    end)
    wait()
    IntroFrame.Position = UDim2.new(1, -301, 0, 0)
    switchWindows("Explorer")
    wait(1)
    SideMenu.Visible = true
    IntroFrame.BackgroundTransparency = 1
    IntroFrame.Main.BackgroundTransparency = 1
    IntroFrame.Slant.ImageTransparency = 1
    IntroFrame.Title.TextTransparency = 1
    IntroFrame.Version.TextTransparency = 1
    IntroFrame.Creator.TextTransparency = 1
    IntroFrame.Visible = false
    SlideFrame.Position = UDim2.new(0, 0, 0, 0)
    OpenScriptEditorButton.Position = UDim2.new(0, 0, 0, 150)
    CloseToggleButton.Position = UDim2.new(0, 0, 0, 180)
    Slant.Position = UDim2.new(0, 0, 0, 210)
    wait(0.5)
    OpenScriptEditorButton.Icon.ImageTransparency = 0
    CloseToggleButton.TextTransparency = 0
    CloseToggleButton.Active = true
    CloseToggleButton.AutoButtonColor = false
    OpenScriptEditorButton.Active = true
    OpenScriptEditorButton.AutoButtonColor = false
end)

-- // Explorer Panel
task.spawn(function()
    local Option = {
        Modifiable = false,
        Selectable = true
    }
    Option.Modifiable = true
    local GUI_SIZE = 16
    local ENTRY_PADDING = 1
    local ENTRY_MARGIN = 1
    local explorerPanel = ExplorerPanel
    local Input = game:GetService("UserInputService")
    local HoldingCtrl = false
    local HoldingShift = false
    local DexOutput = Instance.new("Folder")
    DexOutput.Name = "Output"
    local DexOutputMain = Instance.new("ScreenGui", DexOutput)
    DexOutputMain.Name = "BetterDarkDex Output"
    function print(...)
        local Obj = Instance.new("Dialog")
        Obj.Parent = DexOutputMain
        Obj.Name = ""
        for i, v in pairs({...}) do
            Obj.Name = Obj.Name .. tostring(v) .. " "
        end
    end
    explorerPanel:WaitForChild("GetPrint").OnInvoke = function()
        return print
    end

    local ENTRY_SIZE = GUI_SIZE + ENTRY_PADDING * 2
    local ENTRY_BOUND = ENTRY_SIZE + ENTRY_MARGIN
    local HEADER_SIZE = ENTRY_SIZE * 2
    local FONT = "SourceSans"
    local FONT_SIZE
    do
        local size = {8, 9, 10, 11, 12, 14, 18, 24, 36, 48}
        local s
        local n = math.huge
        for i = 1, #size do
            if size[i] <= GUI_SIZE then
                FONT_SIZE = i - 1
            end
        end
    end
    local GuiColor = {
        Background = Color3.fromRGB(43, 43, 43),
        Border = Color3.fromRGB(20, 20, 20),
        Selected = Color3.fromRGB(215, 125, 0),
        BorderSelected = Color3.fromRGB(188, 118, 4),
        Text = Color3.fromRGB(245, 245, 245),
        TextDisabled = Color3.fromRGB(188, 188, 188),
        TextSelected = Color3.fromRGB(255, 255, 255),
        Button = Color3.fromRGB(33, 33, 33),
        ButtonBorder = Color3.fromRGB(133, 133, 133),
        ButtonSelected = Color3.fromRGB(255, 188, 0),
        Field = Color3.fromRGB(43, 43, 43),
        FieldBorder = Color3.fromRGB(50, 50, 50),
        TitleBackground = Color3.fromRGB(11, 11, 11)
    }

    local MAP_ID = 483448923
    local ACTION_CUT = 160
    local ACTION_COPY = 161
    local ACTION_PASTE = 162
    local ACTION_DELETE = 163
    local ACTION_SORT = 164
    local ACTION_CUT_OVER = 174
    local ACTION_COPY_OVER = 175
    local ACTION_PASTE_OVER = 176
    local ACTION_DELETE_OVER = 177
    local ACTION_SORT_OVER = 178
    local ACTION_EDITQUICKACCESS = 190
    local ACTION_FREEZE = 188
    local ACTION_STARRED = 189
    local ACTION_ADDSTAR = 184
    local ACTION_ADDSTAR_OVER = 187
    local NODE_COLLAPSED = 165
    local NODE_EXPANDED = 166
    local NODE_COLLAPSED_OVER = 179
    local NODE_EXPANDED_OVER = 180
    local ExplorerIndex = {
        ["Accessory"] = 32,
        ["Accoutrement"] = 32,
        ["AdService"] = 73,
        ["Animation"] = 60,
        ["AnimationController"] = 60,
        ["AnimationTrack"] = 60,
        ["Animator"] = 60,
        ["ArcHandles"] = 56,
        ["AssetService"] = 72,
        ["Attachment"] = 34,
        ["Backpack"] = 20,
        ["BadgeService"] = 75,
        ["BallSocketConstraint"] = 89,
        ["BillboardGui"] = 64,
        ["BinaryStringValue"] = 4,
        ["BindableEvent"] = 67,
        ["BindableFunction"] = 66,
        ["BlockMesh"] = 8,
        ["BloomEffect"] = 90,
        ["BlurEffect"] = 90,
        ["BodyAngularVelocity"] = 14,
        ["BodyForce"] = 14,
        ["BodyGyro"] = 14,
        ["BodyPosition"] = 14,
        ["BodyThrust"] = 14,
        ["BodyVelocity"] = 14,
        ["BoolValue"] = 4,
        ["BoxHandleAdornment"] = 54,
        ["BrickColorValue"] = 4,
        ["Camera"] = 5,
        ["CFrameValue"] = 4,
        ["CharacterMesh"] = 60,
        ["Chat"] = 33,
        ["ClickDetector"] = 41,
        ["CollectionService"] = 30,
        ["Color3Value"] = 4,
        ["ColorCorrectionEffect"] = 90,
        ["ConeHandleAdornment"] = 54,
        ["Configuration"] = 58,
        ["ContentProvider"] = 72,
        ["ContextActionService"] = 41,
        ["CoreGui"] = 46,
        ["CoreScript"] = 18,
        ["CornerWedgePart"] = 1,
        ["CustomEvent"] = 4,
        ["CustomEventReceiver"] = 4,
        ["CylinderHandleAdornment"] = 54,
        ["CylinderMesh"] = 8,
        ["CylindricalConstraint"] = 89,
        ["Debris"] = 30,
        ["Decal"] = 7,
        ["Dialog"] = 62,
        ["DialogChoice"] = 63,
        ["DoubleConstrainedValue"] = 4,
        ["Explosion"] = 36,
        ["FileMesh"] = 8,
        ["Fire"] = 61,
        ["Flag"] = 38,
        ["FlagStand"] = 39,
        ["FloorWire"] = 4,
        ["Folder"] = 70,
        ["ForceField"] = 37,
        ["Frame"] = 48,
        ["GamePassService"] = 19,
        ["Glue"] = 34,
        ["GuiButton"] = 52,
        ["GuiMain"] = 47,
        ["GuiService"] = 47,
        ["Handles"] = 53,
        ["HapticService"] = 84,
        ["Hat"] = 45,
        ["HingeConstraint"] = 89,
        ["Hint"] = 33,
        ["HopperBin"] = 22,
        ["HttpService"] = 76,
        ["Humanoid"] = 9,
        ["ImageButton"] = 52,
        ["ImageLabel"] = 49,
        ["InsertService"] = 72,
        ["IntConstrainedValue"] = 4,
        ["IntValue"] = 4,
        ["JointInstance"] = 34,
        ["JointsService"] = 34,
        ["Keyframe"] = 60,
        ["KeyframeSequence"] = 60,
        ["KeyframeSequenceProvider"] = 60,
        ["Lighting"] = 13,
        ["LineHandleAdornment"] = 54,
        ["LocalScript"] = 18,
        ["LogService"] = 87,
        ["MarketplaceService"] = 46,
        ["Message"] = 33,
        ["Model"] = 2,
        ["ModuleScript"] = 71,
        ["Motor"] = 34,
        ["Motor6D"] = 34,
        ["MoveToConstraint"] = 89,
        ["NegateOperation"] = 78,
        ["NetworkClient"] = 16,
        ["NetworkReplicator"] = 29,
        ["NetworkServer"] = 15,
        ["NumberValue"] = 4,
        ["ObjectValue"] = 4,
        ["Pants"] = 44,
        ["ParallelRampPart"] = 1,
        ["Part"] = 1,
        ["ParticleEmitter"] = 69,
        ["PartPairLasso"] = 57,
        ["PathfindingService"] = 37,
        ["Platform"] = 35,
        ["Player"] = 12,
        ["PlayerGui"] = 46,
        ["Players"] = 21,
        ["PlayerScripts"] = 82,
        ["PointLight"] = 13,
        ["PointsService"] = 83,
        ["Pose"] = 60,
        ["PrismaticConstraint"] = 89,
        ["PrismPart"] = 1,
        ["PyramidPart"] = 1,
        ["RayValue"] = 4,
        ["ReflectionMetadata"] = 86,
        ["ReflectionMetadataCallbacks"] = 86,
        ["ReflectionMetadataClass"] = 86,
        ["ReflectionMetadataClasses"] = 86,
        ["ReflectionMetadataEnum"] = 86,
        ["ReflectionMetadataEnumItem"] = 86,
        ["ReflectionMetadataEnums"] = 86,
        ["ReflectionMetadataEvents"] = 86,
        ["ReflectionMetadataFunctions"] = 86,
        ["ReflectionMetadataMember"] = 86,
        ["ReflectionMetadataProperties"] = 86,
        ["ReflectionMetadataYieldFunctions"] = 86,
        ["RemoteEvent"] = 80,
        ["RemoteFunction"] = 79,
        ["ReplicatedFirst"] = 72,
        ["ReplicatedStorage"] = 72,
        ["RightAngleRampPart"] = 1,
        ["RocketPropulsion"] = 14,
        ["RodConstraint"] = 89,
        ["RopeConstraint"] = 89,
        ["Rotate"] = 34,
        ["RotateP"] = 34,
        ["RotateV"] = 34,
        ["RunService"] = 66,
        ["ScreenGui"] = 47,
        ["Script"] = 6,
        ["ScrollingFrame"] = 48,
        ["Seat"] = 35,
        ["Selection"] = 55,
        ["SelectionBox"] = 54,
        ["SelectionPartLasso"] = 57,
        ["SelectionPointLasso"] = 57,
        ["SelectionSphere"] = 54,
        ["ServerScriptService"] = 0,
        ["Shirt"] = 43,
        ["ShirtGraphic"] = 40,
        ["SkateboardPlatform"] = 35,
        ["Sky"] = 28,
        ["SlidingBallConstraint"] = 89,
        ["Smoke"] = 59,
        ["Snap"] = 34,
        ["Sound"] = 11,
        ["SoundService"] = 31,
        ["Sparkles"] = 42,
        ["SpawnLocation"] = 25,
        ["SpecialMesh"] = 8,
        ["SphereHandleAdornment"] = 54,
        ["SpotLight"] = 13,
        ["SpringConstraint"] = 89,
        ["StarterCharacterScripts"] = 82,
        ["StarterGear"] = 20,
        ["StarterGui"] = 46,
        ["StarterPack"] = 20,
        ["StarterPlayer"] = 88,
        ["StarterPlayerScripts"] = 82,
        ["Status"] = 2,
        ["StringValue"] = 4,
        ["SunRaysEffect"] = 90,
        ["SurfaceGui"] = 64,
        ["SurfaceLight"] = 13,
        ["SurfaceSelection"] = 55,
        ["Team"] = 24,
        ["Teams"] = 23,
        ["TeleportService"] = 81,
        ["Terrain"] = 65,
        ["TerrainRegion"] = 65,
        ["TestService"] = 68,
        ["TextBox"] = 51,
        ["TextButton"] = 51,
        ["TextLabel"] = 50,
        ["Texture"] = 10,
        ["TextureTrail"] = 4,
        ["Tool"] = 17,
        ["TouchTransmitter"] = 37,
        ["TrussPart"] = 1,
        ["UnionOperation"] = 77,
        ["UserInputService"] = 84,
        ["Vector3Value"] = 4,
        ["VehicleSeat"] = 35,
        ["VelocityMotor"] = 34,
        ["WedgePart"] = 1,
        ["Weld"] = 34,
        ["Workspace"] = 19
    }
    function Create(ty, data)
        local obj
        if type(ty) == "string" then
            obj = Instance.new(ty)
        else
            obj = ty
        end
        for k, v in pairs(data) do
            if type(k) == "number" then
                v.Parent = obj
            else
                obj[k] = v
            end
        end
        return obj
    end
    local barActive = false
    local activeOptions = {}
    function createDDown(dBut, callback, ...)
        if barActive then
            for i, v in pairs(activeOptions) do
                v:Destroy()
            end
            activeOptions = {}
            barActive = false
            return
        else
            barActive = true
        end
        local slots = {...}
        local base = dBut
        for i, v in pairs(slots) do
            local newOption = base:Clone()
            newOption.ZIndex = 5
            newOption.Name = "Option " .. tostring(i)
            newOption.Parent = base.Parent.Parent.Parent
            newOption.BackgroundTransparency = 0.100
            newOption.ZIndex = 2
            table.insert(activeOptions, newOption)
            newOption.Position = UDim2.new(-0.4, dBut.Position.X.Offset, dBut.Position.Y.Scale,
                dBut.Position.Y.Offset + (#activeOptions * dBut.Size.Y.Offset))
            newOption.Text = slots[i]
            newOption.MouseButton1Down:connect(function()
                dBut.Text = slots[i]
                callback(slots[i])
                for i, v in pairs(activeOptions) do
                    v:Destroy()
                end
                activeOptions = {}
                barActive = false
            end)
        end
    end
    function Connect(event, func)
        return event:connect(function(...)
            local a = {...}
            spawn(function()
                func(unpack(a))
            end)
        end)
    end
    function GetScreen(screen)
        if screen == nil then
            return nil
        end
        while not screen:IsA("ScreenGui") do
            screen = screen.Parent
            if screen == nil then
                return nil
            end
        end
        return screen
    end
    do
        local ZIndexLock = {}
        function SetZIndex(object, z)
            if not ZIndexLock[object] then
                ZIndexLock[object] = true
                if object:IsA "GuiObject" then
                    object.ZIndex = z
                end
                local children = object:GetChildren()
                for i = 1, #children do
                    SetZIndex(children[i], z)
                end
                ZIndexLock[object] = nil
            end
        end
        function SetZIndexOnChanged(object)
            return object.Changed:connect(function(p)
                if p == "ZIndex" then
                    SetZIndex(object, object.ZIndex)
                end
            end)
        end
    end
    local Icon
    do
        local iconMap = "http://www.roblox.com/asset/?id=" .. MAP_ID
        game:GetService("ContentProvider"):Preload(iconMap)
        local iconDehash
        do
            local f = math.floor
            function iconDehash(h)
                return f(h / 14 % 14), f(h % 14)
            end
        end
        function Icon(IconFrame, index)
            local row, col = iconDehash(index)
            local mapSize = Vector2.new(256, 256)
            local pad, border = 2, 1
            local iconSize = 16
            local class = "Frame"
            if type(IconFrame) == "string" then
                class = IconFrame
                IconFrame = nil
            end
            if not IconFrame then
                IconFrame = Create(class, {
                    Name = "Icon",
                    BackgroundTransparency = 1,
                    ClipsDescendants = true,
                    Create("ImageLabel", {
                        Name = "IconMap",
                        Active = false,
                        BackgroundTransparency = 1,
                        Image = iconMap,
                        Size = UDim2.new(mapSize.x / iconSize, 0, mapSize.y / iconSize, 0)
                    })
                })
            end
            pcall(function()
                IconFrame:WaitForChild("IconMap").Position =
                    UDim2.new(-col - (pad * (col + 1) + border) / iconSize, 0,
                        -row - (pad * (row + 1) + border) / iconSize, 0)
            end)
            return IconFrame
        end
    end
    do
        local function ResetButtonColor(button)
            local active = button.Active
            button.Active = not active
            button.Active = active
        end
        local function ArrowGraphic(size, dir, scaled, template)
            local Frame = Create("Frame", {
                Name = "Arrow Graphic",
                BorderSizePixel = 0,
                Size = UDim2.new(0, size, 0, size),
                Transparency = 1
            })
            if not template then
                template = Instance.new("Frame")
                template.BorderSizePixel = 0
            end
            template.BackgroundColor3 = Color3.new(1, 1, 1)
            local transform
            if dir == nil or dir == "Up" then
                function transform(p, s)
                    return p, s
                end
            elseif dir == "Down" then
                function transform(p, s)
                    return UDim2.new(0, p.X.Offset, 0, size - p.Y.Offset - 1), s
                end
            elseif dir == "Left" then
                function transform(p, s)
                    return UDim2.new(0, p.Y.Offset, 0, p.X.Offset), UDim2.new(0, s.Y.Offset, 0, s.X.Offset)
                end
            elseif dir == "Right" then
                function transform(p, s)
                    return UDim2.new(0, size - p.Y.Offset - 1, 0, p.X.Offset), UDim2.new(0, s.Y.Offset, 0, s.X.Offset)
                end
            end
            local scale
            if scaled then
                function scale(p, s)
                    return UDim2.new(p.X.Offset / size, 0, p.Y.Offset / size, 0),
                        UDim2.new(s.X.Offset / size, 0, s.Y.Offset / size, 0)
                end
            else
                function scale(p, s)
                    return p, s
                end
            end
            local o = math.floor(size / 4)
            if size % 2 == 0 then
                local n = size / 2 - 1
                for i = 0, n do
                    local t = template:Clone()
                    local p, s = scale(transform(UDim2.new(0, n - i, 0, o + i), UDim2.new(0, (i + 1) * 2, 0, 1)))
                    t.Position = p
                    t.Size = s
                    t.Parent = Frame
                end
            else
                local n = (size - 1) / 2
                for i = 0, n do
                    local t = template:Clone()
                    local p, s = scale(transform(UDim2.new(0, n - i, 0, o + i), UDim2.new(0, i * 2 + 1, 0, 1)))
                    t.Position = p
                    t.Size = s
                    t.Parent = Frame
                end
            end
            if size % 4 > 1 then
                local t = template:Clone()
                local p, s = scale(transform(UDim2.new(0, 0, 0, size - o - 1), UDim2.new(0, size, 0, 1)))
                t.Position = p
                t.Size = s
                t.Parent = Frame
            end
            for i, v in pairs(Frame:GetChildren()) do
                v.BackgroundColor3 = Color3.new(1, 1, 1)
            end
            return Frame
        end
        local function GripGraphic(size, dir, spacing, scaled, template)
            local Frame = Create("Frame", {
                Name = "Grip Graphic",
                BorderSizePixel = 0,
                Size = UDim2.new(0, size.x, 0, size.y),
                Transparency = 1
            })
            if not template then
                template = Instance.new("Frame")
                template.BorderSizePixel = 0
            end
            spacing = spacing or 2
            local scale
            if scaled then
                function scale(p)
                    return UDim2.new(p.X.Offset / size.x, 0, p.Y.Offset / size.y, 0)
                end
            else
                function scale(p)
                    return p
                end
            end
            if dir == "Vertical" then
                for i = 0, size.x - 1, spacing do
                    local t = template:Clone()
                    t.Size = scale(UDim2.new(0, 1, 0, size.y))
                    t.Position = scale(UDim2.new(0, i, 0, 0))
                    t.Parent = Frame
                end
            elseif dir == nil or dir == "Horizontal" then
                for i = 0, size.y - 1, spacing do
                    local t = template:Clone()
                    t.Size = scale(UDim2.new(0, size.x, 0, 1))
                    t.Position = scale(UDim2.new(0, 0, 0, i))
                    t.Parent = Frame
                end
            end
            return Frame
        end
        local mt = {
            __index = {
                GetScrollPercent = function(self)
                    return self.ScrollIndex / (self.TotalSpace - self.VisibleSpace)
                end,
                CanScrollDown = function(self)
                    return self.ScrollIndex + self.VisibleSpace < self.TotalSpace
                end,
                CanScrollUp = function(self)
                    return self.ScrollIndex > 0
                end,
                ScrollDown = function(self)
                    self.ScrollIndex = self.ScrollIndex + self.PageIncrement
                    self:Update()
                end,
                ScrollUp = function(self)
                    self.ScrollIndex = self.ScrollIndex - self.PageIncrement
                    self:Update()
                end,
                ScrollTo = function(self, index)
                    self.ScrollIndex = index
                    self:Update()
                end,
                SetScrollPercent = function(self, percent)
                    self.ScrollIndex = math.floor((self.TotalSpace - self.VisibleSpace) * percent + 0.5)
                    self:Update()
                end
            }
        }
        mt.__index.CanScrollRight = mt.__index.CanScrollDown
        mt.__index.CanScrollLeft = mt.__index.CanScrollUp
        mt.__index.ScrollLeft = mt.__index.ScrollUp
        mt.__index.ScrollRight = mt.__index.ScrollDown
        function ScrollBar(horizontal)
            local ScrollFrame = Create("Frame", {
                Name = "ScrollFrame",
                BorderSizePixel = 0,
                Position = horizontal and UDim2.new(0, 0, 1, -GUI_SIZE) or UDim2.new(1, -GUI_SIZE, 0, 0),
                Size = horizontal and UDim2.new(1, 0, 0, GUI_SIZE) or UDim2.new(0, GUI_SIZE, 1, 0),
                BackgroundTransparency = 1,
                Create("ImageButton", {
                    Name = "ScrollDown",
                    Position = horizontal and UDim2.new(1, -GUI_SIZE, 0, 0) or UDim2.new(0, 0, 1, -GUI_SIZE),
                    Size = UDim2.new(0, GUI_SIZE, 0, GUI_SIZE),
                    BackgroundColor3 = GuiColor.Button,
                    BorderColor3 = GuiColor.Border
                }),
                Create("ImageButton", {
                    Name = "ScrollUp",
                    Size = UDim2.new(0, GUI_SIZE, 0, GUI_SIZE),
                    BackgroundColor3 = GuiColor.Button,
                    BorderColor3 = GuiColor.Border
                }),
                Create("ImageButton", {
                    Name = "ScrollBar",
                    Size = horizontal and UDim2.new(1, -GUI_SIZE * 2, 1, 0) or UDim2.new(1, 0, 1, -GUI_SIZE * 2),
                    Position = horizontal and UDim2.new(0, GUI_SIZE, 0, 0) or UDim2.new(0, 0, 0, GUI_SIZE),
                    AutoButtonColor = false,
                    BackgroundColor3 = Color3.new(1 / 4, 1 / 4, 1 / 4),
                    BorderColor3 = GuiColor.Border,
                    Create("ImageButton", {
                        Name = "ScrollThumb",
                        AutoButtonColor = false,
                        Size = UDim2.new(0, GUI_SIZE, 0, GUI_SIZE),
                        BackgroundColor3 = GuiColor.Button,
                        BorderColor3 = GuiColor.Border
                    })
                })
            })
            local graphicTemplate = Create("Frame", {
                Name = "Graphic",
                BorderSizePixel = 0,
                BackgroundColor3 = GuiColor.Border
            })
            local graphicSize = GUI_SIZE / 2
            local ScrollDownFrame = ScrollFrame.ScrollDown
            local ScrollDownGraphic = ArrowGraphic(graphicSize, horizontal and "Right" or "Down", true, graphicTemplate)
            ScrollDownGraphic.Position = UDim2.new(0.5, -graphicSize / 2, 0.5, -graphicSize / 2)
            ScrollDownGraphic.Parent = ScrollDownFrame
            local ScrollUpFrame = ScrollFrame.ScrollUp
            local ScrollUpGraphic = ArrowGraphic(graphicSize, horizontal and "Left" or "Up", true, graphicTemplate)
            ScrollUpGraphic.Position = UDim2.new(0.5, -graphicSize / 2, 0.5, -graphicSize / 2)
            ScrollUpGraphic.Parent = ScrollUpFrame
            local ScrollBarFrame = ScrollFrame.ScrollBar
            local ScrollThumbFrame = ScrollBarFrame.ScrollThumb
            do
                local size = GUI_SIZE * 3 / 8
                local Decal = GripGraphic(Vector2.new(size, size), horizontal and "Vertical" or "Horizontal", 2,
                    graphicTemplate)
                Decal.Position = UDim2.new(0.5, -size / 2, 0.5, -size / 2)
                Decal.Parent = ScrollThumbFrame
            end
            local Class = setmetatable({
                GUI = ScrollFrame,
                ScrollIndex = 0,
                VisibleSpace = 0,
                TotalSpace = 0,
                PageIncrement = 1
            }, mt)
            local UpdateScrollThumb
            if horizontal then
                function UpdateScrollThumb()
                    ScrollThumbFrame.Size = UDim2.new(Class.VisibleSpace / Class.TotalSpace, 0, 0, GUI_SIZE)
                    if ScrollThumbFrame.AbsoluteSize.x < GUI_SIZE then
                        ScrollThumbFrame.Size = UDim2.new(0, GUI_SIZE, 0, GUI_SIZE)
                    end
                    local barSize = ScrollBarFrame.AbsoluteSize.x
                    ScrollThumbFrame.Position = UDim2.new(Class:GetScrollPercent() *
                                                              (barSize - ScrollThumbFrame.AbsoluteSize.x) / barSize, 0,
                        0, 0)
                end
            else
                function UpdateScrollThumb()
                    ScrollThumbFrame.Size = UDim2.new(0, GUI_SIZE, Class.VisibleSpace / Class.TotalSpace, 0)
                    if ScrollThumbFrame.AbsoluteSize.y < GUI_SIZE then
                        ScrollThumbFrame.Size = UDim2.new(0, GUI_SIZE, 0, GUI_SIZE)
                    end
                    local barSize = ScrollBarFrame.AbsoluteSize.y
                    ScrollThumbFrame.Position = UDim2.new(0, 0, Class:GetScrollPercent() *
                        (barSize - ScrollThumbFrame.AbsoluteSize.y) / barSize, 0)
                end
            end
            local lastDown
            local lastUp
            local scrollStyle = {
                BackgroundColor3 = Color3.new(1, 1, 1),
                BackgroundTransparency = 0
            }
            local scrollStyle_ds = {
                BackgroundColor3 = Color3.new(1, 1, 1),
                BackgroundTransparency = 0.7
            }
            local function Update()
                local t = Class.TotalSpace
                local v = Class.VisibleSpace
                local s = Class.ScrollIndex
                if v <= t then
                    if s > 0 then
                        if s + v > t then
                            Class.ScrollIndex = t - v
                        end
                    else
                        Class.ScrollIndex = 0
                    end
                else
                    Class.ScrollIndex = 0
                end
                if Class.UpdateCallback then
                    if Class.UpdateCallback(Class) == false then
                        return
                    end
                end
                local down = Class:CanScrollDown()
                local up = Class:CanScrollUp()
                if down ~= lastDown then
                    lastDown = down
                    ScrollDownFrame.Active = down
                    ScrollDownFrame.AutoButtonColor = down
                    local children = ScrollDownGraphic:GetChildren()
                    local style = down and scrollStyle or scrollStyle_ds
                    for i = 1, #children do
                        Create(children[i], style)
                    end
                end
                if up ~= lastUp then
                    lastUp = up
                    ScrollUpFrame.Active = up
                    ScrollUpFrame.AutoButtonColor = up
                    local children = ScrollUpGraphic:GetChildren()
                    local style = up and scrollStyle or scrollStyle_ds
                    for i = 1, #children do
                        Create(children[i], style)
                    end
                end
                ScrollThumbFrame.Visible = down or up
                UpdateScrollThumb()
            end
            Class.Update = Update
            SetZIndexOnChanged(ScrollFrame)
            local MouseDrag = Create("ImageButton", {
                Name = "MouseDrag",
                Position = UDim2.new(-0.25, 0, -0.25, 0),
                Size = UDim2.new(1.5, 0, 1.5, 0),
                Transparency = 1,
                AutoButtonColor = false,
                Active = true,
                ZIndex = 10
            })
            local scrollEventID = 0
            ScrollDownFrame.MouseButton1Down:connect(function()
                scrollEventID = tick()
                local current = scrollEventID
                local up_con
                up_con = MouseDrag.MouseButton1Up:connect(function()
                    scrollEventID = tick()
                    MouseDrag.Parent = nil
                    ResetButtonColor(ScrollDownFrame)
                    up_con:disconnect()
                    drag = nil
                end)
                MouseDrag.Parent = GetScreen(ScrollFrame)
                Class:ScrollDown()
                wait(0.2)
                while scrollEventID == current do
                    Class:ScrollDown()
                    if not Class:CanScrollDown() then
                        break
                    end
                    wait()
                end
            end)
            ScrollDownFrame.MouseButton1Up:connect(function()
                scrollEventID = tick()
            end)
            ScrollUpFrame.MouseButton1Down:connect(function()
                scrollEventID = tick()
                local current = scrollEventID
                local up_con
                up_con = MouseDrag.MouseButton1Up:connect(function()
                    scrollEventID = tick()
                    MouseDrag.Parent = nil
                    ResetButtonColor(ScrollUpFrame)
                    up_con:disconnect()
                    drag = nil
                end)
                MouseDrag.Parent = GetScreen(ScrollFrame)
                Class:ScrollUp()
                wait(0.2)
                while scrollEventID == current do
                    Class:ScrollUp()
                    if not Class:CanScrollUp() then
                        break
                    end
                    wait()
                end
            end)
            ScrollUpFrame.MouseButton1Up:connect(function()
                scrollEventID = tick()
            end)
            if horizontal then
                ScrollBarFrame.MouseButton1Down:connect(function(x, y)
                    scrollEventID = tick()
                    local current = scrollEventID
                    local up_con
                    up_con = MouseDrag.MouseButton1Up:connect(function()
                        scrollEventID = tick()
                        MouseDrag.Parent = nil
                        ResetButtonColor(ScrollUpFrame)
                        up_con:disconnect()
                        drag = nil
                    end)
                    MouseDrag.Parent = GetScreen(ScrollFrame)
                    if x > ScrollThumbFrame.AbsolutePosition.x then
                        Class:ScrollTo(Class.ScrollIndex + Class.VisibleSpace)
                        wait(0.2)
                        while scrollEventID == current do
                            if x < ScrollThumbFrame.AbsolutePosition.x + ScrollThumbFrame.AbsoluteSize.x then
                                break
                            end
                            Class:ScrollTo(Class.ScrollIndex + Class.VisibleSpace)
                            wait()
                        end
                    else
                        Class:ScrollTo(Class.ScrollIndex - Class.VisibleSpace)
                        wait(0.2)
                        while scrollEventID == current do
                            if x > ScrollThumbFrame.AbsolutePosition.x then
                                break
                            end
                            Class:ScrollTo(Class.ScrollIndex - Class.VisibleSpace)
                            wait()
                        end
                    end
                end)
            else
                ScrollBarFrame.MouseButton1Down:connect(function(x, y)
                    scrollEventID = tick()
                    local current = scrollEventID
                    local up_con
                    up_con = MouseDrag.MouseButton1Up:connect(function()
                        scrollEventID = tick()
                        MouseDrag.Parent = nil
                        ResetButtonColor(ScrollUpFrame)
                        up_con:disconnect()
                        drag = nil
                    end)
                    MouseDrag.Parent = GetScreen(ScrollFrame)
                    if y > ScrollThumbFrame.AbsolutePosition.y then
                        Class:ScrollTo(Class.ScrollIndex + Class.VisibleSpace)
                        wait(0.2)
                        while scrollEventID == current do
                            if y < ScrollThumbFrame.AbsolutePosition.y + ScrollThumbFrame.AbsoluteSize.y then
                                break
                            end
                            Class:ScrollTo(Class.ScrollIndex + Class.VisibleSpace)
                            wait()
                        end
                    else
                        Class:ScrollTo(Class.ScrollIndex - Class.VisibleSpace)
                        wait(0.2)
                        while scrollEventID == current do
                            if y > ScrollThumbFrame.AbsolutePosition.y then
                                break
                            end
                            Class:ScrollTo(Class.ScrollIndex - Class.VisibleSpace)
                            wait()
                        end
                    end
                end)
            end
            if horizontal then
                ScrollThumbFrame.MouseButton1Down:connect(function(x, y)
                    scrollEventID = tick()
                    local mouse_offset = x - ScrollThumbFrame.AbsolutePosition.x
                    local drag_con
                    local up_con
                    drag_con = MouseDrag.MouseMoved:connect(function(x, y)
                        local bar_abs_pos = ScrollBarFrame.AbsolutePosition.x
                        local bar_drag = ScrollBarFrame.AbsoluteSize.x - ScrollThumbFrame.AbsoluteSize.x
                        local bar_abs_one = bar_abs_pos + bar_drag
                        x = x - mouse_offset
                        x = x < bar_abs_pos and bar_abs_pos or x > bar_abs_one and bar_abs_one or x
                        x = x - bar_abs_pos
                        Class:SetScrollPercent(x / (bar_drag))
                    end)
                    up_con = MouseDrag.MouseButton1Up:connect(function()
                        scrollEventID = tick()
                        MouseDrag.Parent = nil
                        ResetButtonColor(ScrollThumbFrame)
                        drag_con:disconnect()
                        drag_con = nil
                        up_con:disconnect()
                        drag = nil
                    end)
                    MouseDrag.Parent = GetScreen(ScrollFrame)
                end)
            else
                ScrollThumbFrame.MouseButton1Down:connect(function(x, y)
                    scrollEventID = tick()
                    local mouse_offset = y - ScrollThumbFrame.AbsolutePosition.y
                    local drag_con
                    local up_con
                    drag_con = MouseDrag.MouseMoved:connect(function(x, y)
                        local bar_abs_pos = ScrollBarFrame.AbsolutePosition.y
                        local bar_drag = ScrollBarFrame.AbsoluteSize.y - ScrollThumbFrame.AbsoluteSize.y
                        local bar_abs_one = bar_abs_pos + bar_drag
                        y = y - mouse_offset
                        y = y < bar_abs_pos and bar_abs_pos or y > bar_abs_one and bar_abs_one or y
                        y = y - bar_abs_pos
                        Class:SetScrollPercent(y / (bar_drag))
                    end)
                    up_con = MouseDrag.MouseButton1Up:connect(function()
                        scrollEventID = tick()
                        MouseDrag.Parent = nil
                        ResetButtonColor(ScrollThumbFrame)
                        drag_con:disconnect()
                        drag_con = nil
                        up_con:disconnect()
                        drag = nil
                    end)
                    MouseDrag.Parent = GetScreen(ScrollFrame)
                end)
            end
            function Class:Destroy()
                ScrollFrame:Destroy()
                MouseDrag:Destroy()
                for k in pairs(Class) do
                    Class[k] = nil
                end
                setmetatable(Class, nil)
            end
            Update()
            return Class
        end
    end
    Create(explorerPanel, {
        BackgroundColor3 = GuiColor.Field,
        BorderColor3 = GuiColor.Border,
        Active = true
    })
    local SettingsRemote = explorerPanel.Parent:WaitForChild("SettingsPanel"):WaitForChild("GetSetting")
    local GetApiRemote = explorerPanel.Parent:WaitForChild("PropertiesFrame"):WaitForChild("GetApi")
    local GetAwaitRemote = explorerPanel.Parent:WaitForChild("PropertiesFrame"):WaitForChild("GetAwaiting")
    local bindSetAwaiting = explorerPanel.Parent:WaitForChild("PropertiesFrame"):WaitForChild("SetAwaiting")
    local SaveInstanceWindow = explorerPanel.Parent:WaitForChild("SaveInstance")
    local ConfirmationWindow = explorerPanel.Parent:WaitForChild("Confirmation")
    local CautionWindow = explorerPanel.Parent:WaitForChild("Caution")
    local TableCautionWindow = explorerPanel.Parent:WaitForChild("TableCaution")
    local ScriptEditor = explorerPanel.Parent:WaitForChild("ScriptEditor")
    local ScriptEditorEvent = ScriptEditor:WaitForChild("OpenScript")
    local CurrentSaveInstanceWindow
    local CurrentRemoteWindow
    local lastSelectedNode
    local DexStorage
    local DexStorageMain
    local DexStorageEnabled
    if saveinstance then
        DexStorageEnabled = true
    end
    local _decompile = decompile
    function decompile(s, ...)
        if SettingsRemote:Invoke "UseNewDecompiler" then
            return _decompile(s, "new")
        else
            return _decompile(s, "legacy")
        end
    end
    if DexStorageEnabled then
        DexStorage = Instance.new("Folder")
        DexStorage.Name = "BetterDarkDex"
        DexStorageMain = Instance.new("Folder", DexStorage)
        DexStorageMain.Name = "BetterDarkDexStorage"
    end
    local RunningScriptsStorage
    local RunningScriptsStorageMain
    local RunningScriptsStorageEnabled
    if getscripts then
        RunningScriptsStorageEnabled = true
    end
    if RunningScriptsStorageEnabled then
        RunningScriptsStorage = Instance.new("Folder")
        RunningScriptsStorage.Name = "BetterDarkDex Internal Storage"
        RunningScriptsStorageMain = Instance.new("Folder", RunningScriptsStorage)
        RunningScriptsStorageMain.Name = "Running Scripts"
    end
    local LoadedModulesStorage
    local LoadedModulesStorageMain
    local LoadedModulesStorageEnabled
    if getloadedmodules then
        LoadedModulesStorageEnabled = true
    end
    if LoadedModulesStorageEnabled then
        LoadedModulesStorage = Instance.new("Folder")
        LoadedModulesStorage.Name = "BetterDarkDex Internal Storage"
        LoadedModulesStorageMain = Instance.new("Folder", LoadedModulesStorage)
        LoadedModulesStorageMain.Name = "Loaded Modules"
    end
    local NilStorage
    local NilStorageMain
    local NilStorageEnabled
    if getnilinstances then
        NilStorageEnabled = true
    end
    if NilStorageEnabled then
        NilStorage = Instance.new("Folder")
        NilStorage.Name = "BetterDarkDex Internal Storage"
        NilStorageMain = Instance.new("Folder", NilStorage)
        NilStorageMain.Name = "Nil Instances"
    end
    local listFrame = Create("Frame", {
        Name = "List",
        BorderSizePixel = 0,
        BackgroundTransparency = 1,
        ClipsDescendants = true,
        Position = UDim2.new(0, 0, 0, HEADER_SIZE),
        Size = UDim2.new(1, -GUI_SIZE, 1, -HEADER_SIZE),
        Parent = explorerPanel
    })
    local scrollBar = ScrollBar(false)
    scrollBar.PageIncrement = 1
    Create(scrollBar.GUI, {
        Position = UDim2.new(1, -GUI_SIZE, 0, HEADER_SIZE),
        Size = UDim2.new(0, GUI_SIZE, 1, -HEADER_SIZE),
        Parent = explorerPanel
    })
    local scrollBarH = ScrollBar(true)
    scrollBarH.PageIncrement = GUI_SIZE
    Create(scrollBarH.GUI, {
        Position = UDim2.new(0, 0, 1, -GUI_SIZE),
        Size = UDim2.new(1, -GUI_SIZE, 0, GUI_SIZE),
        Visible = false,
        Parent = explorerPanel
    })
    local headerFrame = Create("Frame", {
        Name = "Header",
        BorderSizePixel = 0,
        BackgroundColor3 = GuiColor.Background,
        BorderColor3 = GuiColor.Border,
        Position = UDim2.new(0, 0, 0, 0),
        Size = UDim2.new(1, 0, 0, HEADER_SIZE),
        Parent = explorerPanel,
        Create("TextLabel", {
            Text = "Explorer",
            BackgroundTransparency = 1,
            TextColor3 = GuiColor.Text,
            TextXAlignment = "Left",
            Font = FONT,
            FontSize = FONT_SIZE,
            Position = UDim2.new(0, 4, 0, 0),
            Size = UDim2.new(1, -4, 0.5, 0)
        })
    })
    local explorerFilter = Create("TextBox", {
        Text = "Filter Workspace",
        BackgroundTransparency = 0.8,
        TextColor3 = GuiColor.Text,
        TextXAlignment = "Left",
        Font = FONT,
        FontSize = FONT_SIZE,
        Position = UDim2.new(0, 4, 0.5, 0),
        Size = UDim2.new(1, -8, 0.5, -2)
    })
    explorerFilter.Parent = headerFrame
    SetZIndexOnChanged(explorerPanel)
    local function CreateColor3(r, g, b)
        return Color3.new(r / 255, g / 255, b / 255)
    end
    local Styles = {
        Font = Enum.Font.Arial,
        Margin = 5,
        Black = CreateColor3(0, 0, 0),
        Black2 = CreateColor3(24, 24, 24),
        White = CreateColor3(244, 244, 244),
        Hover = CreateColor3(2, 128, 144),
        Hover2 = CreateColor3(5, 102, 141)
    }
    local Row = {
        Font = Styles.Font,
        FontSize = Enum.FontSize.Size14,
        TextXAlignment = Enum.TextXAlignment.Left,
        TextColor = Styles.White,
        TextColorOver = Styles.White,
        TextLockedColor = CreateColor3(155, 155, 155),
        Height = 24,
        BorderColor = CreateColor3(216 / 4, 216 / 4, 216 / 4),
        BackgroundColor = Styles.Black2,
        BackgroundColorAlternate = CreateColor3(32, 32, 32),
        BackgroundColorMouseover = CreateColor3(40, 40, 40),
        TitleMarginLeft = 15
    }
    local DropDown = {
        Font = Styles.Font,
        FontSize = Enum.FontSize.Size14,
        TextColor = CreateColor3(255, 255, 255),
        TextColorOver = Styles.White,
        TextXAlignment = Enum.TextXAlignment.Left,
        Height = 20,
        BackColor = Styles.Black2,
        BackColorOver = Styles.Hover2,
        BorderColor = CreateColor3(45, 45, 45),
        BorderSizePixel = 2,
        ArrowColor = CreateColor3(160 / 2, 160 / 2, 160 / 2),
        ArrowColorOver = Styles.Hover
    }
    local BrickColors = {
        BoxSize = 13,
        BorderSizePixel = 1,
        BorderColor = CreateColor3(160 / 3, 160 / 3, 160 / 3),
        FrameColor = CreateColor3(160 / 3, 160 / 3, 160 / 3),
        Size = 20,
        Padding = 4,
        ColorsPerRow = 8,
        OuterBorder = 1,
        OuterBorderColor = Styles.Black
    }
    local currentRightClickMenu
    local CurrentInsertObjectWindow
    local CurrentFunctionCallerWindow
    local RbxApi
    function ClassCanCreate(IName)
        local success, err = pcall(function()
            Instance.new(IName)
        end)
        if err then
            return false
        else
            return true
        end
    end
    function GetClasses()
        if RbxApi == nil then
            return {}
        end
        local classTable = {}
        for i, v in pairs(RbxApi.Classes) do
            if ClassCanCreate(v.Name) then
                table.insert(classTable, v.Name)
            end
        end
        return classTable
    end
    local function sortAlphabetic(t, property)
        table.sort(t, function(x, y)
            return x[property] < y[property]
        end)
    end
    local function FunctionIsHidden(functionData)
        local tags = functionData["tags"]
        for _, name in pairs(tags) do
            if name == "deprecated" or name == "hidden" or name == "writeonly" then
                return true
            end
        end
        return false
    end
    local function GetAllFunctions(className)
        local class = RbxApi.Classes[className]
        local functions = {}
        if not class then
            return functions
        end
        while class do
            if class.Name == "Instance" then
                break
            end
            for _, nextFunction in pairs(class.Functions) do
                if not FunctionIsHidden(nextFunction) then
                    table.insert(functions, nextFunction)
                end
            end
            class = RbxApi.Classes[class.Superclass]
        end
        sortAlphabetic(functions, "Name")
        return functions
    end
    function GetFunctions()
        if RbxApi == nil then
            return {}
        end
        local List = SelectionVar():Get()
        if #List == 0 then
            return
        end
        local MyObject = List[1]
        local functionTable = {}
        for i, v in pairs(GetAllFunctions(MyObject.ClassName)) do
            table.insert(functionTable, v)
        end
        return functionTable
    end
    function CreateInsertObjectMenu(choices, currentChoice, readOnly, onClick)
        local mouse = game:GetService("Players").LocalPlayer:GetMouse()
        local totalSize = explorerPanel.Parent.AbsoluteSize.y
        if #choices == 0 then
            return
        end
        table.sort(choices, function(a, b)
            return a < b
        end)
        local frame = Instance.new("Frame")
        frame.Name = "InsertObject"
        frame.Size = UDim2.new(0, 200, 1, 0)
        frame.BackgroundTransparency = 1
        frame.Active = true
        local menu = nil
        local arrow = nil
        local expanded = false
        local margin = DropDown.BorderSizePixel

        local function hideMenu()
            expanded = false
            if frame then
                CurrentInsertObjectWindow.Visible = false
            end
        end
        local function showMenu()
            expanded = true
            menu = Instance.new("ScrollingFrame")
            menu.Size = UDim2.new(0, 200, 1, 0)
            menu.CanvasSize = UDim2.new(0, 200, 0, #choices * DropDown.Height)
            menu.Position = UDim2.new(0, margin, 0, 0)
            menu.BackgroundTransparency = 0
            menu.BackgroundColor3 = DropDown.BackColor
            menu.BorderColor3 = DropDown.BorderColor
            menu.BorderSizePixel = DropDown.BorderSizePixel
            menu.TopImage = "rbxasset://textures/blackBkg_square.png"
            menu.MidImage = "rbxasset://textures/blackBkg_square.png"
            menu.BottomImage = "rbxasset://textures/blackBkg_square.png"
            menu.Active = true
            menu.ZIndex = 5
            menu.Parent = frame
            local function choice(name)
                onClick(name)
                hideMenu()
            end
            for i, name in pairs(choices) do
                local option = CreateRightClickMenuItem(name, function()
                    choice(name)
                end, 1)
                option.Size = UDim2.new(1, 0, 0, 20)
                option.Position = UDim2.new(0, 0, 0, (i - 1) * DropDown.Height)
                option.ZIndex = menu.ZIndex
                option.Parent = menu
            end
        end
        showMenu()
        return frame
    end
    function CreateFunctionCallerMenu(choices, currentChoice, readOnly, onClick)
        local mouse = game:GetService("Players").LocalPlayer:GetMouse()
        local totalSize = explorerPanel.Parent.AbsoluteSize.y
        if #choices == 0 then
            return
        end
        table.sort(choices, function(a, b)
            return a.Name < b.Name
        end)
        local frame = Instance.new("Frame")
        frame.Name = "InsertObject"
        frame.Size = UDim2.new(0, 200, 1, 0)
        frame.BackgroundTransparency = 1
        frame.Active = true
        local menu = nil
        local arrow = nil
        local expanded = false
        local margin = DropDown.BorderSizePixel
        local function hideMenu()
            expanded = false
            if frame then
                CurrentInsertObjectWindow.Visible = false
            end
        end
        local function showMenu()
            expanded = true
            menu = Instance.new("ScrollingFrame")
            menu.Size = UDim2.new(0, 300, 1, 0)
            menu.CanvasSize = UDim2.new(0, 300, 0, #choices * DropDown.Height)
            menu.Position = UDim2.new(0, margin, 0, 0)
            menu.BackgroundTransparency = 0
            menu.BackgroundColor3 = DropDown.BackColor
            menu.BorderColor3 = DropDown.BorderColor
            menu.BorderSizePixel = DropDown.BorderSizePixel
            menu.TopImage = "rbxasset://textures/blackBkg_square.png"
            menu.MidImage = "rbxasset://textures/blackBkg_square.png"
            menu.BottomImage = "rbxasset://textures/blackBkg_square.png"
            menu.Active = true
            menu.ZIndex = 5
            menu.Parent = frame
            local function GetParameters(functionData)
                local paraString = ""
                paraString = paraString .. "("
                for i, v in pairs(functionData.Arguments) do
                    paraString = paraString .. v.Type .. " " .. v.Name
                    if i < #functionData.Arguments then
                        paraString = paraString .. ", "
                    end
                end
                paraString = paraString .. ")"
                return paraString
            end
            local function choice(name)
                onClick(name)
                hideMenu()
            end
            for i, name in pairs(choices) do
                local option = CreateRightClickMenuItem(name.ReturnType .. " " .. name.Name .. GetParameters(name),
                    function()
                        choice(name)
                    end, 2)
                option.Size = UDim2.new(1, 0, 0, 20)
                option.Position = UDim2.new(0, 0, 0, (i - 1) * DropDown.Height)
                option.ZIndex = menu.ZIndex
                option.Parent = menu
            end
        end
        showMenu()
        return frame
    end
    function CreateInsertObject()
        if not CurrentInsertObjectWindow then
            return
        end
        CurrentInsertObjectWindow.Visible = true
        if currentRightClickMenu and CurrentInsertObjectWindow.Visible then
            CurrentInsertObjectWindow.Position = UDim2.new(0, currentRightClickMenu.Position.X.Offset -
                currentRightClickMenu.Size.X.Offset - 2, 0, 0)
        end
        if CurrentInsertObjectWindow.Visible then
            CurrentInsertObjectWindow.Parent = explorerPanel.Parent
        end
    end
    function CreateFunctionCaller(oh)
        if CurrentFunctionCallerWindow then
            CurrentFunctionCallerWindow:Destroy()
            CurrentFunctionCallerWindow = nil
        end
        CurrentFunctionCallerWindow = CreateFunctionCallerMenu(GetFunctions(), "", false, function(option)
            CurrentFunctionCallerWindow:Destroy()
            CurrentFunctionCallerWindow = nil
            local list = SelectionVar():Get()
            for i, v in pairs(list) do
                pcall(function()
                    print("Function called.", pcall(function()
                        v[option.Name](v)
                    end))
                end)
            end
            DestroyRightClick()
        end)
        if currentRightClickMenu and CurrentFunctionCallerWindow then
            CurrentFunctionCallerWindow.Position = UDim2.new(0, currentRightClickMenu.Position.X.Offset -
                currentRightClickMenu.Size.X.Offset * 1.5 - 2, 0, 0)
        end
        if CurrentFunctionCallerWindow then
            CurrentFunctionCallerWindow.Parent = explorerPanel.Parent
        end
    end
    function CreateRightClickMenuItem(text, onClick, insObj)
        local button = Instance.new("TextButton")
        button.Font = DropDown.Font
        button.FontSize = DropDown.FontSize
        button.TextColor3 = DropDown.TextColor
        button.TextXAlignment = DropDown.TextXAlignment
        button.BackgroundColor3 = DropDown.BackColor
        button.AutoButtonColor = false
        button.BorderSizePixel = 0
        button.Active = true
        button.Text = text
        if insObj == 1 then
            local newIcon = Icon(nil, ExplorerIndex[text] or 0)
            newIcon.Position = UDim2.new(0, 0, 0, 2)
            newIcon.Size = UDim2.new(0, 16, 0, 16)
            newIcon.IconMap.ZIndex = 5
            newIcon.Parent = button
            button.Text = "     " .. button.Text
        elseif insObj == 2 then
            button.FontSize = Enum.FontSize.Size11
        end
        button.MouseEnter:connect(function()
            button.TextColor3 = DropDown.TextColorOver
            button.BackgroundColor3 = DropDown.BackColorOver
            if not insObj and CurrentInsertObjectWindow then
                if CurrentInsertObjectWindow.Visible == false and button.Text == "Insert Object" then
                    CreateInsertObject()
                elseif CurrentInsertObjectWindow.Visible and button.Text ~= "Insert Object" then
                    CurrentInsertObjectWindow.Visible = false
                end
            end
            if not insObj then
                if CurrentFunctionCallerWindow and button.Text ~= "Call Function" then
                    CurrentFunctionCallerWindow:Destroy()
                    CurrentFunctionCallerWindow = nil
                elseif button.Text == "Call Function" then
                    CreateFunctionCaller()
                end
            end
        end)
        button.MouseLeave:connect(function()
            button.TextColor3 = DropDown.TextColor
            button.BackgroundColor3 = DropDown.BackColor
        end)
        button.MouseButton1Click:connect(function()
            button.TextColor3 = DropDown.TextColor
            button.BackgroundColor3 = DropDown.BackColor
            onClick(text)
            print(text)
        end)
        return button
    end
    function CreateRightClickMenu(choices, currentChoice, readOnly, onClick)
        local mouse = game:GetService("Players").LocalPlayer:GetMouse()
        local frame = Instance.new("Frame")
        frame.Name = "DropDown"
        frame.Size = UDim2.new(0, 200, 1, 0)
        frame.BackgroundTransparency = 1
        frame.Active = true
        local menu = nil
        local arrow = nil
        local expanded = false
        local margin = DropDown.BorderSizePixel

        local function hideMenu()
            expanded = false
            if frame then
                frame:Destroy()
                DestroyRightClick()
            end
        end
        local function showMenu()
            expanded = true
            menu = Instance.new("Frame")
            menu.Size = UDim2.new(0, 200, 0, #choices * DropDown.Height)
            menu.Position = UDim2.new(0, margin, 0, 5)
            menu.BackgroundTransparency = 0
            menu.BackgroundColor3 = DropDown.BackColor
            menu.BorderColor3 = DropDown.BorderColor
            menu.BorderSizePixel = DropDown.BorderSizePixel
            menu.Active = true
            menu.ZIndex = 5
            menu.Parent = frame
            local function choice(name)
                onClick(name)
                hideMenu()
            end
            for i, name in pairs(choices) do
                local option = CreateRightClickMenuItem(name, function()
                    choice(name)
                    print(name)
                end)
                option.Size = UDim2.new(1, 0, 0, 20)
                option.Position = UDim2.new(0, 0, 0, (i - 1) * DropDown.Height)
                option.ZIndex = menu.ZIndex
                option.Parent = menu
            end
        end
        showMenu()
        return frame
    end
    function checkMouseInGui(gui)
        if gui == nil then
            return false
        end
        local plrMouse = game:GetService("Players").LocalPlayer:GetMouse()
        local guiPosition = gui.AbsolutePosition
        local guiSize = gui.AbsoluteSize
        if plrMouse.X >= guiPosition.x and plrMouse.X <= guiPosition.x + guiSize.x and plrMouse.Y >= guiPosition.y and
            plrMouse.Y <= guiPosition.y + guiSize.y then
            return true
        else
            return false
        end
    end
    local clipboard = {}
    local function delete(o)
        o.Parent = nil
    end
    local getTextWidth
    do
        local text = Create("TextLabel", {
            Name = "TextWidth",
            TextXAlignment = "Left",
            TextYAlignment = "Center",
            Font = FONT,
            FontSize = FONT_SIZE,
            Text = "",
            Position = UDim2.new(0, 0, 0, 0),
            Size = UDim2.new(1, 0, 1, 0),
            Visible = false,
            Parent = explorerPanel
        })
        function getTextWidth(s)
            text.Text = s
            return text.TextBounds.x
        end
    end
    local nameScanned = false
    local TreeList = {}
    local NodeLookup = {}
    local nodeWidth = 0
    local QuickButtons = {}
    function filteringWorkspace()
        if explorerFilter.Text ~= "" and explorerFilter.Text ~= "Filter Workspace" then
            return true
        end
        return false
    end
    function lookForAName(obj, name)
        for i, v in pairs(obj:GetChildren()) do
            if string.find(string.lower(v.Name), string.lower(name)) then
                nameScanned = true
            end
            lookForAName(v, name)
        end
    end
    function scanName(obj)
        nameScanned = false
        if string.find(string.lower(obj.Name), string.lower(explorerFilter.Text)) then
            nameScanned = true
        else
            lookForAName(obj, explorerFilter.Text)
        end
        return nameScanned
    end
    function updateActions()
        for i, v in pairs(QuickButtons) do
            if v.Cond() then
                v.Toggle(true)
            else
                v.Toggle(false)
            end
        end
    end
    local updateList, rawUpdateList, updateScroll, rawUpdateSize
    do
        local function r(t)
            for i = 1, #t do
                if not filteringWorkspace() or scanName(t[i].Object) then
                    TreeList[#TreeList + 1] = t[i]
                    local w = (t[i].Depth) * (2 + ENTRY_PADDING + GUI_SIZE) + 2 + ENTRY_SIZE + 4 +
                                  getTextWidth(t[i].Object.Name) + 4
                    if w > nodeWidth then
                        nodeWidth = w
                    end
                    if t[i].Expanded or filteringWorkspace() then
                        r(t[i])
                    end
                end
            end
        end
        function rawUpdateSize()
            scrollBarH.TotalSpace = nodeWidth
            scrollBarH.VisibleSpace = listFrame.AbsoluteSize.x
            scrollBarH:Update()
            local visible = scrollBarH:CanScrollDown() or scrollBarH:CanScrollUp()
            scrollBarH.GUI.Visible = visible
            listFrame.Size = UDim2.new(1, -GUI_SIZE, 1, -GUI_SIZE * (visible and 1 or 0) - HEADER_SIZE)
            scrollBar.VisibleSpace = math.ceil(listFrame.AbsoluteSize.y / ENTRY_BOUND)
            scrollBar.GUI.Size = UDim2.new(0, GUI_SIZE, 1, -GUI_SIZE * (visible and 1 or 0) - HEADER_SIZE)
            scrollBar.TotalSpace = #TreeList + 1
            scrollBar:Update()
        end
        function rawUpdateList()
            TreeList = {}
            nodeWidth = 0
            r(NodeLookup[workspace.Parent])
            r(NodeLookup[DexOutput])
            if DexStorageEnabled then
                r(NodeLookup[DexStorage])
            end
            if NilStorageEnabled then
                r(NodeLookup[NilStorage])
            end
            if RunningScriptsStorageEnabled then
                r(NodeLookup[RunningScriptsStorage])
            end
            if LoadedModulesStorageEnabled then
                r(NodeLookup[LoadedModulesStorage])
            end
            rawUpdateSize()
            updateActions()
        end
        local updatingList = false
        function updateList()
            if updatingList or filteringWorkspace() then
                return
            end
            updatingList = true
            wait(1.5)
            updatingList = false
            rawUpdateList()
        end
        local updatingScroll = false
        function updateScroll()
            if updatingScroll then
                return
            end
            updatingScroll = true
            wait(1.5)
            updatingScroll = false
            scrollBar:Update()
        end
    end
    local Selection
    do
        local bindGetSelection = explorerPanel:FindFirstChild("GetSelection")
        if not bindGetSelection then
            bindGetSelection = Create('BindableFunction', {
                Name = "GetSelection"
            })
            bindGetSelection.Parent = explorerPanel
        end
        local bindSetSelection = explorerPanel:FindFirstChild("SetSelection")
        if not bindSetSelection then
            bindSetSelection = Create('BindableFunction', {
                Name = "SetSelection"
            })
            bindSetSelection.Parent = explorerPanel
        end
        local bindSelectionObjectChanged = explorerPanel:FindFirstChild("SelectionObjectChanged")
        if not bindSelectionObjectChanged then
            bindSelectionObjectChanged = Create('BindableEvent', {
                Name = "SelectionObjectChanged"
            })
            bindSelectionObjectChanged.Parent = explorerPanel
        end
        local SelectionList = {}
        local SelectionSet = {}
        local Updates = true
        Selection = {
            Selected = SelectionSet,
            List = SelectionList
        }
        local function addObject(object)
            local lupdate = false
            local supdate = false
            if not SelectionSet[object] then
                local node = NodeLookup[object]
                if node then
                    table.insert(SelectionList, object)
                    SelectionSet[object] = true
                    node.Selected = true
                    node = node.Parent
                    while node do
                        if not node.Expanded then
                            node.Expanded = true
                            lupdate = true
                        end
                        node = node.Parent
                    end
                    supdate = true
                end
            end
            return lupdate, supdate
        end
        function Selection:Set(objects)
            local lupdate = false
            local supdate = false
            if #SelectionList > 0 then
                for i = 1, #SelectionList do
                    local object = SelectionList[i]
                    local node = NodeLookup[object]
                    if node then
                        node.Selected = false
                        SelectionSet[object] = nil
                    end
                end
                SelectionList = {}
                Selection.List = SelectionList
                supdate = true
            end
            for i = 1, #objects do
                local l, s = addObject(objects[i])
                lupdate = l or lupdate
                supdate = s or supdate
            end
            if lupdate then
                rawUpdateList()
                supdate = true
            elseif supdate then
                scrollBar:Update()
            end
            if supdate then
                bindSelectionObjectChanged:Fire()
                updateActions()
            end
        end
        function Selection:Add(object)
            local l, s = addObject(object)
            if l then
                rawUpdateList()
                if Updates then
                    bindSelectionObjectChanged:Fire()
                    updateActions()
                end
            elseif s then
                scrollBar:Update()
                if Updates then
                    bindSelectionObjectChanged:Fire()
                    updateActions()
                end
            end
        end
        function Selection:StopUpdates()
            Updates = false
        end
        function Selection:ResumeUpdates()
            Updates = true
            bindSelectionObjectChanged:Fire()
            updateActions()
        end
        function Selection:Remove(object, noupdate)
            if SelectionSet[object] then
                local node = NodeLookup[object]
                if node then
                    node.Selected = false
                    SelectionSet[object] = nil
                    for i = 1, #SelectionList do
                        if SelectionList[i] == object then
                            table.remove(SelectionList, i)
                            break
                        end
                    end
                    if not noupdate then
                        scrollBar:Update()
                    end
                    bindSelectionObjectChanged:Fire()
                    updateActions()
                end
            end
        end
        function Selection:Get()
            local list = {}
            for i = 1, #SelectionList do
                list[i] = SelectionList[i]
            end
            return list
        end
        bindSetSelection.OnInvoke = function(...)
            Selection:Set(...)
        end
        bindGetSelection.OnInvoke = function()
            return Selection:Get()
        end
    end
    function CreateCaution(title, msg)
        local newCaution = CautionWindow
        newCaution.Visible = true
        newCaution.Title.Text = title
        newCaution.MainWindow.Desc.Text = msg
        newCaution.MainWindow.Ok.MouseButton1Up:connect(function()
            newCaution.Visible = false
        end)
    end
    function CreateTableCaution(title, msg)
        if type(msg) ~= "table" then
            return CreateCaution(title, tostring(msg))
        end
        local newCaution = TableCautionWindow:Clone()
        newCaution.Title.Text = title
        local TableList = newCaution.MainWindow.TableResults
        local TableTemplate = newCaution.MainWindow.TableTemplate
        for i, v in pairs(msg) do
            local newResult = TableTemplate:Clone()
            newResult.Type.Text = type(v)
            newResult.Value.Text = tostring(v)
            newResult.Position = UDim2.new(0, 0, 0, #TableList:GetChildren() * 20)
            newResult.Parent = TableList
            TableList.CanvasSize = UDim2.new(0, 0, 0, #TableList:GetChildren() * 20)
            newResult.Visible = true
        end
        newCaution.Parent = explorerPanel.Parent
        newCaution.Visible = true
        newCaution.MainWindow.Ok.MouseButton1Up:connect(function()
            newCaution:Destroy()
        end)
    end
    local function Split(str, delimiter)
        local start = 1
        local t = {}
        while true do
            local pos = string.find(str, delimiter, start, true)
            if not pos then
                break
            end
            table.insert(t, string.sub(str, start, pos - 1))
            start = pos + string.len(delimiter)
        end
        table.insert(t, string.sub(str, start))
        return t
    end
    local function ToValue(value, type)
        if type == "Vector2" then
            local list = Split(value, ",")
            if #list < 2 then
                return nil
            end
            local x = tonumber(list[1]) or 0
            local y = tonumber(list[2]) or 0
            return Vector2.new(x, y)
        elseif type == "Vector3" then
            local list = Split(value, ",")
            if #list < 3 then
                return nil
            end
            local x = tonumber(list[1]) or 0
            local y = tonumber(list[2]) or 0
            local z = tonumber(list[3]) or 0
            return Vector3.new(x, y, z)
        elseif type == "Color3" then
            local list = Split(value, ",")
            if #list < 3 then
                return nil
            end
            local r = tonumber(list[1]) or 0
            local g = tonumber(list[2]) or 0
            local b = tonumber(list[3]) or 0
            return Color3.new(r / 255, g / 255, b / 255)
        elseif type == "UDim2" then
            local list = Split(string.gsub(string.gsub(value, "{", ""), "}", ""), ",")
            if #list < 4 then
                return nil
            end
            local xScale = tonumber(list[1]) or 0
            local xOffset = tonumber(list[2]) or 0
            local yScale = tonumber(list[3]) or 0
            local yOffset = tonumber(list[4]) or 0
            return UDim2.new(xScale, xOffset, yScale, yOffset)
        elseif type == "Number" then
            return tonumber(value)
        elseif type == "String" then
            return value
        elseif type == "NumberRange" then
            local list = Split(value, ",")
            if #list == 1 then
                if tonumber(list[1]) == nil then
                    return nil
                end
                local newVal = tonumber(list[1]) or 0
                return NumberRange.new(newVal)
            end
            if #list < 2 then
                return nil
            end
            local x = tonumber(list[1]) or 0
            local y = tonumber(list[2]) or 0
            return NumberRange.new(x, y)
        elseif type == "Script" then
            local success, err = ypcall(function()
                _G.D_E_X_DONOTUSETHISPLEASE = nil
                loadstring("_G.D_E_X_DONOTUSETHISPLEASE = " .. value)()
                return _G.D_E_X_DONOTUSETHISPLEASE
            end)
            if err then
                return nil
            end
        else
            return nil
        end
    end
    local function ToPropValue(value, type)
        if type == "Vector2" then
            local list = Split(value, ",")
            if #list < 2 then
                return nil
            end
            local x = tonumber(list[1]) or 0
            local y = tonumber(list[2]) or 0
            return Vector2.new(x, y)
        elseif type == "Vector3" then
            local list = Split(value, ",")
            if #list < 3 then
                return nil
            end
            local x = tonumber(list[1]) or 0
            local y = tonumber(list[2]) or 0
            local z = tonumber(list[3]) or 0
            return Vector3.new(x, y, z)
        elseif type == "Color3" then
            local list = Split(value, ",")
            if #list < 3 then
                return nil
            end
            local r = tonumber(list[1]) or 0
            local g = tonumber(list[2]) or 0
            local b = tonumber(list[3]) or 0
            return Color3.new(r / 255, g / 255, b / 255)
        elseif type == "UDim2" then
            local list = Split(string.gsub(string.gsub(value, "{", ""), "}", ""), ",")
            if #list < 4 then
                return nil
            end
            local xScale = tonumber(list[1]) or 0
            local xOffset = tonumber(list[2]) or 0
            local yScale = tonumber(list[3]) or 0
            local yOffset = tonumber(list[4]) or 0
            return UDim2.new(xScale, xOffset, yScale, yOffset)
        elseif type == "Content" then
            return value
        elseif type == "float" or type == "int" or type == "double" then
            return tonumber(value)
        elseif type == "string" then
            return value
        elseif type == "NumberRange" then
            local list = Split(value, ",")
            if #list == 1 then
                if tonumber(list[1]) == nil then
                    return nil
                end
                local newVal = tonumber(list[1]) or 0
                return NumberRange.new(newVal)
            end
            if #list < 2 then
                return nil
            end
            local x = tonumber(list[1]) or 0
            local y = tonumber(list[2]) or 0
            return NumberRange.new(x, y)
        elseif string.sub(value, 1, 4) == "Enum" then
            local getEnum = value
            while true do
                local x, y = string.find(getEnum, ".")
                if y then
                    getEnum = string.sub(getEnum, y + 1)
                else
                    break
                end
            end
            print(getEnum)
            return getEnum
        else
            return nil
        end
    end
    function PromptSaveInstance(inst)
        if not SaveInstance and not _G.SaveInstance then
            CreateCaution("SaveInstance Missing",
                "You do not have the SaveInstance function installed. Please go to RaspberryPi's thread to retrieve it.")
            return
        end
        if CurrentSaveInstanceWindow then
            CurrentSaveInstanceWindow:Destroy()
            CurrentSaveInstanceWindow = nil
            if explorerPanel.Parent:FindFirstChild("SaveInstanceOverwriteCaution") then
                explorerPanel.Parent.SaveInstanceOverwriteCaution:Destroy()
            end
        end
        CurrentSaveInstanceWindow = SaveInstanceWindow:Clone()
        CurrentSaveInstanceWindow.Parent = explorerPanel.Parent
        CurrentSaveInstanceWindow.Visible = true
        local filename = CurrentSaveInstanceWindow.MainWindow.FileName
        local saveObjects = true
        local overwriteCaution = false
        CurrentSaveInstanceWindow.MainWindow.Save.MouseButton1Up:connect(function()
        end)
        CurrentSaveInstanceWindow.MainWindow.Cancel.MouseButton1Up:connect(function()
            if CurrentSaveInstanceWindow then
                CurrentSaveInstanceWindow:Destroy()
                CurrentSaveInstanceWindow = nil
                if explorerPanel.Parent:FindFirstChild("SaveInstanceOverwriteCaution") then
                    explorerPanel.Parent.SaveInstanceOverwriteCaution:Destroy()
                end
            end
        end)
        CurrentSaveInstanceWindow.MainWindow.SaveObjects.MouseButton1Up:connect(function()
            if saveObjects then
                saveObjects = false
                CurrentSaveInstanceWindow.MainWindow.SaveObjects.enabled.Visible = false
            else
                saveObjects = true
                CurrentSaveInstanceWindow.MainWindow.SaveObjects.enabled.Visible = true
            end
        end)
    end
    function DestroyRightClick()
        if currentRightClickMenu then
            currentRightClickMenu:Destroy()
            currentRightClickMenu = nil
        end
        if CurrentInsertObjectWindow and CurrentInsertObjectWindow.Visible then
            CurrentInsertObjectWindow.Visible = false
        end
    end
    local tabChar = "    "
    local function getSmaller(a, b, notLast)
        local aByte = a:byte() or -1
        local bByte = b:byte() or -1
        if aByte == bByte then
            if notLast and #a == 1 and #b == 1 then
                return -1
            elseif #b == 1 then
                return false
            elseif #a == 1 then
                return true
            else
                return getSmaller(a:sub(2), b:sub(2), notLast)
            end
        else
            return aByte < bByte
        end
    end
    local function parseData(obj, numTabs, isKey, overflow, noTables, forceDict)
        local objType = typeof(obj)
        local objStr = tostring(obj)
        if objType == "table" then
            if noTables then
                return objStr
            end
            local isCyclic = overflow[obj]
            overflow[obj] = true
            local out = {}
            local nextIndex = 1
            local isDict = false
            local hasTables = false
            local data = {}
            for key, val in next, obj do
                if not hasTables and typeof(val) == "table" then
                    hasTables = true
                end
                if not isDict and key ~= nextIndex then
                    isDict = true
                else
                    nextIndex = nextIndex + 1
                end
                data[#data + 1] = {key, val}
            end
            if isDict or hasTables or forceDict then
                out[#out + 1] = (isCyclic and "Cyclic " or "") .. "{"
                table.sort(data, function(a, b)
                    local aType = typeof(a[2])
                    local bType = typeof(b[2])
                    if bType == "string" and aType ~= "string" then
                        return false
                    end
                    local res = getSmaller(aType, bType, true)
                    if res == -1 then
                        return getSmaller(tostring(a[1]), tostring(b[1]))
                    else
                        return res
                    end
                end)
                for i = 1, #data do
                    local arr = data[i]
                    local nowKey = arr[1]
                    local nowVal = arr[2]
                    local parseKey = parseData(nowKey, numTabs + 1, true, overflow, isCyclic)
                    local parseVal = parseData(nowVal, numTabs + 1, false, overflow, isCyclic)
                    if isDict then
                        local nowValType = typeof(nowVal)
                        local preStr = ""
                        local postStr = ""
                        if i > 1 and (nowValType == "table" or typeof(data[i - 1][2]) ~= nowValType) then
                            preStr = "\n"
                        end
                        if i < #data and nowValType == "table" and typeof(data[i + 1][2]) ~= "table" and
                            typeof(data[i + 1][2]) == nowValType then
                            postStr = "\n"
                        end
                        out[#out + 1] = preStr .. string.rep(tabChar, numTabs + 1) .. parseKey .. " = " .. parseVal ..
                                            ";" .. postStr
                    else
                        out[#out + 1] = string.rep(tabChar, numTabs + 1) .. parseVal .. ";"
                    end
                end
                out[#out + 1] = string.rep(tabChar, numTabs) .. "}"
            else
                local data2 = {}
                for i = 1, #data do
                    local arr = data[i]
                    local nowVal = arr[2]
                    local parseVal = parseData(nowVal, 0, false, overflow, isCyclic)
                    data2[#data2 + 1] = parseVal
                end
                out[#out + 1] = "{" .. table.concat(data2, ", ") .. "}"
            end
            return table.concat(out, "\n")
        else
            local returnVal = nil
            if (objType == "string" or objType == "Content") and (not isKey or tonumber(obj:sub(1, 1))) then
                local retVal = '"' .. objStr .. '"'
                if isKey then
                    retVal = "[" .. retVal .. "]"
                end
                returnVal = retVal
            elseif objType == "EnumItem" then
                returnVal = "Enum." .. tostring(obj.EnumType) .. "." .. obj.Name
            elseif objType == "Enum" then
                returnVal = "Enum." .. objStr
            elseif objType == "Instance" then
                returnVal = obj.Parent and obj:GetFullName() or obj.ClassName
            elseif objType == "CFrame" then
                returnVal = "CFrame.new(" .. objStr .. ")"
            elseif objType == "Vector3" then
                returnVal = "Vector3.new(" .. objStr .. ")"
            elseif objType == "Vector2" then
                returnVal = "Vector2.new(" .. objStr .. ")"
            elseif objType == "UDim2" then
                returnVal = "UDim2.new(" .. objStr:gsub("[{}]", "") .. ")"
            elseif objType == "BrickColor" then
                returnVal = 'BrickColor.new("' .. objStr .. '")'
            elseif objType == "Color3" then
                returnVal = "Color3.new(" .. objStr .. ")"
            elseif objType == "NumberRange" then
                returnVal = "NumberRange.new(" .. objStr:gsub("^%s*(.-)%s*$", "%1"):gsub(" ", ", ") .. ")"
            elseif objType == "PhysicalProperties" then
                returnVal = "PhysicalProperties.new(" .. objStr .. ")"
            else
                returnVal = objStr
            end
            return returnVal
        end
    end
    function tableToString(t)
        local success, result = pcall(function()
            return parseData(t, 0, false, {}, nil, false)
        end)
        return success and result or "error"
    end
    local HasSpecial = function(string)
        return (string:match("%c") or string:match("%s") or string:match("%p")) ~= nil
    end
    local GetPath = function(Instance)
        --[[
            This is a quick fix for the Copy Path issue, it should be good enough.
            Alert me in the ExPro Discord if something breaks!
            - Deja
        ]] --
        local Obj = Instance
        local string = {}
        local temp = {}
        local error = false
        while Obj ~= game do
            if Obj == nil then
                error = true
                break
            end
            table.insert(temp, Obj.Parent == game and Obj.ClassName or tostring(Obj))
            Obj = Obj.Parent
        end
        table.insert(string, 'game:GetService("' .. temp[#temp] .. '")')
        for i = #temp - 1, 1, -1 do
            table.insert(string, HasSpecial(temp[i]) and '["' .. temp[i] .. '"]' or "." .. temp[i])
        end
        local Path = ""
        if error then
            return "nil"
        else
            for _, Text in pairs(string) do
                Path = Path .. Text
            end
        end
        return Path
    end
    function rightClickMenu(sObj)
        local mouse = game:GetService("Players").LocalPlayer:GetMouse()
        local extra =
            ((sObj == RunningScriptsStorageMain or sObj == LoadedModulesStorageMain or sObj == NilStorageMain) and
                "Refresh Instances" or nil)
        currentRightClickMenu = CreateRightClickMenu({"Cut", "Copy", "Paste Into", "Duplicate", "Delete",
                                                      "Select Children", "Teleport To", "Insert Object", "View Script",
                                                      "Save Script", "Copy Path", "Call Function", extra}, "", false,
            function(option)
                if option == "Cut" then
                    if not Option.Modifiable then
                        return
                    end
                    clipboard = {}
                    local list = Selection.List
                    local cut = {}
                    for i = 1, #list do
                        local obj = list[i]:Clone()
                        if obj then
                            table.insert(clipboard, obj)
                            table.insert(cut, list[i])
                        end
                    end
                    for i = 1, #cut do
                        pcall(delete, cut[i])
                    end
                    updateActions()
                elseif option == "Copy" then
                    if not Option.Modifiable then
                        return
                    end
                    clipboard = {}
                    local list = Selection.List
                    for i = 1, #list do
                        table.insert(clipboard, list[i]:Clone())
                    end
                    updateActions()
                elseif option == "Paste Into" then
                    if not Option.Modifiable then
                        return
                    end
                    local parent = Selection.List[1] or workspace
                    for i = 1, #clipboard do
                        clipboard[i]:Clone().Parent = parent
                    end
                elseif option == "Duplicate" then
                    if not Option.Modifiable then
                        return
                    end
                    local list = Selection:Get()
                    for i = 1, #list do
                        list[i]:Clone().Parent = Selection.List[1].Parent or workspace
                    end
                elseif option == "Delete" then
                    if not Option.Modifiable then
                        return
                    end
                    local list = Selection:Get()
                    for i = 1, #list do
                        pcall(delete, list[i])
                    end
                    Selection:Set({})
                elseif option == "Group" then
                    if not Option.Modifiable then
                        return
                    end
                    local newModel = Instance.new("Model")
                    local list = Selection:Get()
                    newModel.Parent = Selection.List[1].Parent or workspace
                    for i = 1, #list do
                        list[i].Parent = newModel
                    end
                    Selection:Set({})
                elseif option == "Ungroup" then
                    if not Option.Modifiable then
                        return
                    end
                    local ungrouped = {}
                    local list = Selection:Get()
                    for i = 1, #list do
                        if list[i]:IsA("Model") then
                            for i2, v2 in pairs(list[i]:GetChildren()) do
                                v2.Parent = list[i].Parent or workspace
                                table.insert(ungrouped, v2)
                            end
                            pcall(delete, list[i])
                        end
                    end
                    Selection:Set({})
                    if SettingsRemote:Invoke("SelectUngrouped") then
                        for i, v in pairs(ungrouped) do
                            Selection:Add(v)
                        end
                    end
                elseif option == "Select Children" then
                    if not Option.Modifiable then
                        return
                    end
                    local list = Selection:Get()
                    Selection:Set({})
                    Selection:StopUpdates()
                    for i = 1, #list do
                        for i2, v2 in pairs(list[i]:GetChildren()) do
                            Selection:Add(v2)
                        end
                    end
                    Selection:ResumeUpdates()
                elseif option == "Teleport To" then
                    if not Option.Modifiable then
                        return
                    end
                    local list = Selection:Get()
                    for i = 1, #list do
                        if list[i]:IsA("BasePart") then
                            pcall(function()
                                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =
                                    list[i].CFrame * CFrame.new(0, 3, 0)
                            end)
                            break
                        end
                    end
                elseif option == "Insert Part" then
                    if not Option.Modifiable then
                        return
                    end
                    local insertedParts = {}
                    local list = Selection:Get()
                    for i = 1, #list do
                        pcall(function()
                            local newPart = Instance.new("Part")
                            newPart.Parent = list[i]
                            newPart.CFrame =
                                CFrame.new(game:GetService("Players").LocalPlayer.Character.Head.Position) +
                                    Vector3.new(0, 3, 0)
                            table.insert(insertedParts, newPart)
                        end)
                    end
                elseif option == "Save Instance" then
                    if not Option.Modifiable then
                        return
                    end
                    local list = Selection:Get()
                    if #list == 1 then
                        list[1].Archivable = true
                        ypcall(function()
                            PromptSaveInstance(list[1]:Clone())
                        end)
                    elseif #list > 1 then
                        local newModel = Instance.new("Model")
                        newModel.Name = "SavedInstances"
                        for i = 1, #list do
                            ypcall(function()
                                list[i].Archivable = true
                                list[i]:Clone().Parent = newModel
                            end)
                        end
                        PromptSaveInstance(newModel)
                    end
                elseif option == 'Copy Path' then
                    if not Option.Modifiable then
                        return
                    end
                    local list = Selection:Get()
                    local paths = {};
                    for i = 1, #list do
                        paths[#paths + 1] = GetPath(list[i]);
                    end
                    if #paths > 1 then
                        setclipboard(tableToString(paths))
                    elseif #paths == 1 then
                        setclipboard(paths[1])
                    end
                elseif option == "View Script" then
                    if not Option.Modifiable then
                        return
                    end
                    local list = Selection:Get()
                    for i = 1, #list do
                        if list[i]:IsA("LocalScript") or list[i]:IsA("ModuleScript") then
                            ScriptEditorEvent:Fire(list[i])
                        end
                    end
                elseif option == "Save Script" then
                    if not Option.Modifiable then
                        return
                    end
                    local list = Selection:Get()
                    for i = 1, #list do
                        if list[i]:IsA("LocalScript") or list[i]:IsA("ModuleScript") then
                            writefile(game.PlaceId .. "_" .. list[i].Name:gsub("%W", "") .. "_" ..
                                          math.random(100000, 999999) .. ".lua", decompile(list[i]))
                        end
                    end
                elseif option == "Refresh Instances" then
                    if sObj == NilStorageMain then
                        for i, v in pairs(getnilinstances()) do
                            if v ~= DexOutput and v ~= DexOutputMain and v ~= DexStorage and v ~= DexStorageMain and v ~=
                                RunningScriptsStorage and v ~= RunningScriptsStorageMain and v ~= LoadedModulesStorage and
                                v ~= LoadedModulesStorageMain and v ~= NilStorage and v ~= NilStorageMain then
                                pcall(function()
                                    v:clone().Parent = NilStorageMain
                                end)
                            end
                        end
                    elseif sObj == RunningScriptsStorageMain then
                        for i, v in pairs(getscripts()) do
                            if v ~= RunningScriptsStorage and v ~= LoadedModulesStorage and v ~= DexStorage and v ~=
                                UpvalueStorage then
                                if (v:IsA "LocalScript" or v:IsA "ModuleScript" or v:IsA "Script") then
                                    v.Archivable = true
                                    local ls = v:clone()
                                    if v:IsA "LocalScript" or v:IsA "Script" then
                                        ls.Disabled = true
                                    end
                                    ls.Parent = RunningScriptsStorageMain
                                end
                            end
                        end
                    elseif sObj == LoadedModulesStorageMain then
                        for i, v in pairs(getloadedmodules()) do
                            if v ~= RunningScriptsStorage and v ~= LoadedModulesStorage and v ~= DexStorage and v ~=
                                UpvalueStorage then
                                if (v:IsA "LocalScript" or v:IsA "ModuleScript" or v:IsA "Script") then
                                    v.Archivable = true
                                    local ls = v:clone()
                                    if v:IsA "LocalScript" or v:IsA "Script" then
                                        ls.Disabled = true
                                    end
                                    ls.Parent = LoadedModulesStorageMain
                                end
                            end
                        end
                    end
                end
            end)
        currentRightClickMenu.Parent = explorerPanel.Parent
        currentRightClickMenu.Position = UDim2.new(0, mouse.X, 0, mouse.Y)
        if currentRightClickMenu.AbsolutePosition.X + currentRightClickMenu.AbsoluteSize.X >
            explorerPanel.AbsolutePosition.X + explorerPanel.AbsoluteSize.X then
            currentRightClickMenu.Position = UDim2.new(0, explorerPanel.AbsolutePosition.X +
                explorerPanel.AbsoluteSize.X - currentRightClickMenu.AbsoluteSize.X, 0, mouse.Y)
        end
    end
    local function cancelReparentDrag()
    end
    local function cancelSelectDrag()
    end
    do
        local listEntries = {}
        local nameConnLookup = {}
        local mouseDrag = Create("ImageButton", {
            Name = "MouseDrag",
            Position = UDim2.new(-0.25, 0, -0.25, 0),
            Size = UDim2.new(1.5, 0, 1.5, 0),
            Transparency = 1,
            AutoButtonColor = false,
            Active = true,
            ZIndex = 10
        })
        local function dragSelect(last, add, button)
            local connDrag
            local conUp
            conDrag = mouseDrag.MouseMoved:connect(function(x, y)
                local pos = Vector2.new(x, y) - listFrame.AbsolutePosition
                local size = listFrame.AbsoluteSize
                if pos.x < 0 or pos.x > size.x or pos.y < 0 or pos.y > size.y then
                    return
                end
                local i = math.ceil(pos.y / ENTRY_BOUND) + scrollBar.ScrollIndex
                for n = i < last and i or last, i > last and i or last do
                    local node = TreeList[n]
                    if node then
                        if add then
                            Selection:Add(node.Object)
                        else
                            Selection:Remove(node.Object)
                        end
                    end
                end
                last = i
            end)
            function cancelSelectDrag()
                mouseDrag.Parent = nil
                conDrag:disconnect()
                conUp:disconnect()
                function cancelSelectDrag()
                end
            end
            conUp = mouseDrag[button]:connect(cancelSelectDrag)
            mouseDrag.Parent = GetScreen(listFrame)
        end
        local function dragReparent(object, dragGhost, clickPos, ghostOffset)
            local connDrag
            local conUp
            local conUp2
            local parentIndex = nil
            local dragged = false
            local parentHighlight = Create("Frame", {
                Transparency = 1,
                Visible = false,
                Create("Frame", {
                    BorderSizePixel = 0,
                    BackgroundColor3 = Color3.new(0, 0, 0),
                    BackgroundTransparency = 0.1,
                    Position = UDim2.new(0, 0, 0, 0),
                    Size = UDim2.new(1, 0, 0, 1)
                }),
                Create("Frame", {
                    BorderSizePixel = 0,
                    BackgroundColor3 = Color3.new(0, 0, 0),
                    BackgroundTransparency = 0.1,
                    Position = UDim2.new(1, 0, 0, 0),
                    Size = UDim2.new(0, 1, 1, 0)
                }),
                Create("Frame", {
                    BorderSizePixel = 0,
                    BackgroundColor3 = Color3.new(0, 0, 0),
                    BackgroundTransparency = 0.1,
                    Position = UDim2.new(0, 0, 1, 0),
                    Size = UDim2.new(1, 0, 0, 1)
                }),
                Create("Frame", {
                    BorderSizePixel = 0,
                    BackgroundColor3 = Color3.new(0, 0, 0),
                    BackgroundTransparency = 0.1,
                    Position = UDim2.new(0, 0, 0, 0),
                    Size = UDim2.new(0, 1, 1, 0)
                })
            })
            SetZIndex(parentHighlight, 9)
            conDrag = mouseDrag.MouseMoved:connect(function(x, y)
                local dragPos = Vector2.new(x, y)
                if dragged then
                    local pos = dragPos - listFrame.AbsolutePosition
                    local size = listFrame.AbsoluteSize
                    parentIndex = nil
                    parentHighlight.Visible = false
                    if pos.x >= 0 and pos.x <= size.x and pos.y >= 0 and pos.y <= size.y + ENTRY_SIZE * 2 then
                        local i = math.ceil(pos.y / ENTRY_BOUND - 2)
                        local node = TreeList[i + scrollBar.ScrollIndex]
                        if node and node.Object ~= object and not object:IsAncestorOf(node.Object) then
                            parentIndex = i
                            local entry = listEntries[i]
                            if entry then
                                parentHighlight.Visible = true
                                parentHighlight.Position = UDim2.new(0, 1, 0, entry.AbsolutePosition.y -
                                    listFrame.AbsolutePosition.y)
                                parentHighlight.Size = UDim2.new(0, size.x - 4, 0, entry.AbsoluteSize.y)
                            end
                        end
                    end
                    dragGhost.Position = UDim2.new(0, dragPos.x + ghostOffset.x, 0, dragPos.y + ghostOffset.y)
                elseif (clickPos - dragPos).magnitude > 8 then
                    dragged = true
                    SetZIndex(dragGhost, 9)
                    dragGhost.IndentFrame.Transparency = 0.25
                    dragGhost.IndentFrame.EntryText.TextColor3 = GuiColor.TextSelected
                    dragGhost.Position = UDim2.new(0, dragPos.x + ghostOffset.x, 0, dragPos.y + ghostOffset.y)
                    dragGhost.Parent = GetScreen(listFrame)
                    parentHighlight.Parent = listFrame
                end
            end)
            function cancelReparentDrag()
                mouseDrag.Parent = nil
                conDrag:disconnect()
                conUp:disconnect()
                conUp2:disconnect()
                dragGhost:Destroy()
                parentHighlight:Destroy()
                function cancelReparentDrag()
                end
            end
            local wasSelected = Selection.Selected[object]
            if not wasSelected and Option.Selectable then
                Selection:Set({object})
            end
            conUp = mouseDrag.MouseButton1Up:connect(function()
                cancelReparentDrag()
                if dragged then
                    if parentIndex then
                        local parentNode = TreeList[parentIndex + scrollBar.ScrollIndex]
                        if parentNode then
                            parentNode.Expanded = true
                            local parentObj = parentNode.Object
                            local function parent(a, b)
                                a.Parent = b
                            end
                            if Option.Selectable then
                                local list = Selection.List
                                for i = 1, #list do
                                    pcall(parent, list[i], parentObj)
                                end
                            else
                                pcall(parent, object, parentObj)
                            end
                        end
                    end
                else
                    if wasSelected and Option.Selectable then
                        Selection:Set({})
                    end
                end
            end)
            conUp2 = mouseDrag.MouseButton2Down:connect(function()
                cancelReparentDrag()
            end)
            mouseDrag.Parent = GetScreen(listFrame)
        end
        local entryTemplate = Create("ImageButton", {
            Name = "Entry",
            Transparency = 1,
            AutoButtonColor = false,
            Position = UDim2.new(0, 0, 0, 0),
            Size = UDim2.new(1, 0, 0, ENTRY_SIZE),
            Create("Frame", {
                Name = "IndentFrame",
                BackgroundTransparency = 1,
                BackgroundColor3 = GuiColor.Selected,
                BorderColor3 = GuiColor.BorderSelected,
                Position = UDim2.new(0, 0, 0, 0),
                Size = UDim2.new(1, 0, 1, 0),
                Create(Icon("ImageButton", 0), {
                    Name = "Expand",
                    AutoButtonColor = false,
                    Position = UDim2.new(0, -GUI_SIZE, 0.5, -GUI_SIZE / 2),
                    Size = UDim2.new(0, GUI_SIZE, 0, GUI_SIZE)
                }),
                Create(Icon(nil, 0), {
                    Name = "ExplorerIcon",
                    Position = UDim2.new(0, 2 + ENTRY_PADDING, 0.5, -GUI_SIZE / 2),
                    Size = UDim2.new(0, GUI_SIZE, 0, GUI_SIZE)
                }),
                Create("TextLabel", {
                    Name = "EntryText",
                    BackgroundTransparency = 1,
                    TextColor3 = GuiColor.Text,
                    TextXAlignment = "Left",
                    TextYAlignment = "Center",
                    Font = FONT,
                    FontSize = FONT_SIZE,
                    Text = "",
                    Position = UDim2.new(0, 2 + ENTRY_SIZE + 4, 0, 0),
                    Size = UDim2.new(1, -2, 1, 0)
                })
            })
        })
        function scrollBar.UpdateCallback(self)
            for i = 1, self.VisibleSpace do
                local node = TreeList[i + self.ScrollIndex]
                if node then
                    local entry = listEntries[i]
                    if not entry then
                        entry = Create(entryTemplate:Clone(), {
                            Position = UDim2.new(0, 2, 0, ENTRY_BOUND * (i - 1) + 2),
                            Size = UDim2.new(0, nodeWidth, 0, ENTRY_SIZE),
                            ZIndex = listFrame.ZIndex
                        })
                        listEntries[i] = entry
                        local expand = entry.IndentFrame.Expand
                        expand.MouseEnter:connect(function()
                            local node = TreeList[i + self.ScrollIndex]
                            if #node > 0 then
                                if node.Expanded then
                                    Icon(expand, NODE_EXPANDED_OVER)
                                else
                                    Icon(expand, NODE_COLLAPSED_OVER)
                                end
                            end
                        end)
                        expand.MouseLeave:connect(function()
                            local node = TreeList[i + self.ScrollIndex]
                            if #node > 0 then
                                if node.Expanded then
                                    Icon(expand, NODE_EXPANDED)
                                else
                                    Icon(expand, NODE_COLLAPSED)
                                end
                            end
                        end)
                        expand.MouseButton1Down:connect(function()
                            local node = TreeList[i + self.ScrollIndex]
                            if #node > 0 then
                                node.Expanded = not node.Expanded
                                if node.Object == explorerPanel.Parent and node.Expanded then
                                    CreateCaution("BetterDarkDex",
                                        "Don't worry about breaking anything. Just reload the script if anything happens, it will take care of the rest! Also, if you want to make some changes, it's better to do it directly from the script! :-)")
                                end
                                rawUpdateList()
                            end
                        end)
                        entry.MouseButton1Down:connect(function(x, y)
                            local node = TreeList[i + self.ScrollIndex]
                            DestroyRightClick()
                            if not HoldingShift then
                                lastSelectedNode = i + self.ScrollIndex
                            end
                            if HoldingShift and not filteringWorkspace() then
                                if lastSelectedNode then
                                    if i + self.ScrollIndex - lastSelectedNode > 0 then
                                        Selection:StopUpdates()
                                        for i2 = 1, i + self.ScrollIndex - lastSelectedNode do
                                            local newNode = TreeList[lastSelectedNode + i2]
                                            if newNode then
                                                Selection:Add(newNode.Object)
                                            end
                                        end
                                        Selection:ResumeUpdates()
                                    else
                                        Selection:StopUpdates()
                                        for i2 = i + self.ScrollIndex - lastSelectedNode, 1 do
                                            local newNode = TreeList[lastSelectedNode + i2]
                                            if newNode then
                                                Selection:Add(newNode.Object)
                                            end
                                        end
                                        Selection:ResumeUpdates()
                                    end
                                end
                                return
                            end
                            if HoldingCtrl then
                                if Selection.Selected[node.Object] then
                                    Selection:Remove(node.Object)
                                else
                                    Selection:Add(node.Object)
                                end
                                return
                            end
                            if Option.Modifiable then
                                local pos = Vector2.new(x, y)
                                dragReparent(node.Object, entry:Clone(), pos, entry.AbsolutePosition - pos)
                            elseif Option.Selectable then
                                if Selection.Selected[node.Object] then
                                    Selection:Set({})
                                else
                                    Selection:Set({node.Object})
                                end
                                dragSelect(i + self.ScrollIndex, true, "MouseButton1Up")
                            end
                        end)
                        entry.MouseButton2Down:connect(function()
                            if not Option.Selectable then
                                return
                            end
                            DestroyRightClick()
                            curSelect = entry
                            local node = TreeList[i + self.ScrollIndex]
                            if GetAwaitRemote:Invoke() then
                                bindSetAwaiting:Fire(node.Object)
                                return
                            end
                            if not Selection.Selected[node.Object] then
                                Selection:Set({node.Object})
                            end
                        end)
                        entry.MouseButton2Up:connect(function()
                            if not Option.Selectable then
                                return
                            end
                            local node = TreeList[i + self.ScrollIndex]
                            if checkMouseInGui(curSelect) then
                                rightClickMenu(node.Object)
                            end
                        end)
                        entry.Parent = listFrame
                    end
                    entry.Visible = true
                    local object = node.Object
                    if #node == 0 then
                        entry.IndentFrame.Expand.Visible = false
                    elseif node.Expanded then
                        Icon(entry.IndentFrame.Expand, NODE_EXPANDED)
                        entry.IndentFrame.Expand.Visible = true
                    else
                        Icon(entry.IndentFrame.Expand, NODE_COLLAPSED)
                        entry.IndentFrame.Expand.Visible = true
                    end
                    Icon(entry.IndentFrame.ExplorerIcon, ExplorerIndex[object.ClassName] or 0)
                    local w = (node.Depth) * (2 + ENTRY_PADDING + GUI_SIZE)
                    entry.IndentFrame.Position = UDim2.new(0, w, 0, 0)
                    entry.IndentFrame.Size = UDim2.new(1, -w, 1, 0)
                    if nameConnLookup[entry] then
                        nameConnLookup[entry]:disconnect()
                    end
                    local text = entry.IndentFrame.EntryText
                    text.Text = object.Name
                    nameConnLookup[entry] = node.Object.Changed:connect(function(p)
                        if p == "Name" then
                            text.Text = object.Name
                        end
                    end)
                    entry.IndentFrame.Transparency = node.Selected and 0 or 1
                    text.TextColor3 = GuiColor[node.Selected and "TextSelected" or "Text"]
                    entry.Size = UDim2.new(0, nodeWidth, 0, ENTRY_SIZE)
                elseif listEntries[i] then
                    listEntries[i].Visible = false
                end
            end
            for i = self.VisibleSpace + 1, self.TotalSpace do
                local entry = listEntries[i]
                if entry then
                    listEntries[i] = nil
                    entry:Destroy()
                end
            end
        end
        function scrollBarH.UpdateCallback(self)
            for i = 1, scrollBar.VisibleSpace do
                local node = TreeList[i + scrollBar.ScrollIndex]
                if node then
                    local entry = listEntries[i]
                    if entry then
                        entry.Position = UDim2.new(0, 2 - scrollBarH.ScrollIndex, 0, ENTRY_BOUND * (i - 1) + 2)
                    end
                end
            end
        end
        Connect(listFrame.Changed, function(p)
            if p == "AbsoluteSize" then
                rawUpdateSize()
            end
        end)
        local wheelAmount = 6
        explorerPanel.MouseWheelForward:connect(function()
            if scrollBar.VisibleSpace - 1 > wheelAmount then
                scrollBar:ScrollTo(scrollBar.ScrollIndex - wheelAmount)
            else
                scrollBar:ScrollTo(scrollBar.ScrollIndex - scrollBar.VisibleSpace)
            end
        end)
        explorerPanel.MouseWheelBackward:connect(function()
            if scrollBar.VisibleSpace - 1 > wheelAmount then
                scrollBar:ScrollTo(scrollBar.ScrollIndex + wheelAmount)
            else
                scrollBar:ScrollTo(scrollBar.ScrollIndex + scrollBar.VisibleSpace)
            end
        end)
    end
    local function insert(t, i, v)
        for n = #t, i, -1 do
            local v = t[n]
            v.Index = n + 1
            t[n + 1] = v
        end
        v.Index = i
        t[i] = v
    end
    local function remove(t, i)
        local v = t[i]
        for n = i + 1, #t do
            local v = t[n]
            v.Index = n - 1
            t[n - 1] = v
        end
        t[#t] = nil
        v.Index = 0
        return v
    end
    local function depth(o)
        local d = -1
        while o do
            o = o.Parent
            d = d + 1
        end
        return d
    end
    local connLookup = {}
    local function nodeIsVisible(node)
        local visible = true
        node = node.Parent
        while node and visible do
            visible = visible and node.Expanded
            node = node.Parent
        end
        return visible
    end
    local function removeObject(object)
        local objectNode = NodeLookup[object]
        if not objectNode then
            return
        end
        local visible = nodeIsVisible(objectNode)
        Selection:Remove(object, true)
        local parent = objectNode.Parent
        remove(parent, objectNode.Index)
        NodeLookup[object] = nil
        connLookup[object]:disconnect()
        connLookup[object] = nil
        if visible then
            updateList()
        elseif nodeIsVisible(parent) then
            updateScroll()
        end
    end
    local function moveObject(object, parent)
        local objectNode = NodeLookup[object]
        if not objectNode then
            return
        end
        local parentNode = NodeLookup[parent]
        if not parentNode then
            return
        end
        local visible = nodeIsVisible(objectNode)
        remove(objectNode.Parent, objectNode.Index)
        objectNode.Parent = parentNode
        objectNode.Depth = depth(object)
        local function r(node, d)
            for i = 1, #node do
                node[i].Depth = d
                r(node[i], d + 1)
            end
        end
        r(objectNode, objectNode.Depth + 1)
        insert(parentNode, #parentNode + 1, objectNode)
        if visible or nodeIsVisible(objectNode) then
            updateList()
        elseif nodeIsVisible(objectNode.Parent) then
            updateScroll()
        end
    end
    local InstanceBlacklist = {"Instance", "VRService", "ContextActionService", "AssetService", "TouchInputService",
                               "ScriptContext", "FilteredSelection", "MeshContentProvider", "SolidModelContentProvider",
                               "AnalyticsService", "RobloxReplicatedStorage", "GamepadService", "HapticService",
                               "ChangeHistoryService", "Visit", "SocialService", "SpawnerService", "FriendService",
                               "Geometry", "BadgeService", "PhysicsService", "CollectionService", "TeleportService",
                               "HttpRbxApiService", "TweenService", "TextService", "NotificationService", "AdService",
                               "CSGDictionaryService", "ControllerService", "RuntimeScriptService", "ScriptService",
                               "MouseService", "KeyboardService", "CookiesService", "TimerService", "GamePassService",
                               "KeyframeSequenceProvider", "NonReplicatedCSGDictionaryService", "GuidRegistryService",
                               "PathfindingService", "GroupService"}
    for i, v in ipairs(InstanceBlacklist) do
        InstanceBlacklist[v] = true
        InstanceBlacklist[i] = nil
    end
    local function check(object)
        return object.AncestryChanged
    end
    local function addObject(object, noupdate)
        if object.Parent == game and InstanceBlacklist[object.ClassName] or object.ClassName == "" then
            return
        end
        if script then
            local s = pcall(check, object)
            if not s then
                return
            end
        end
        local parentNode = NodeLookup[object.Parent]
        if not parentNode then
            return
        end
        local objectNode = {
            Object = object,
            Parent = parentNode,
            Index = 0,
            Expanded = false,
            Selected = false,
            Depth = depth(object)
        }
        connLookup[object] = Connect(object.AncestryChanged, function(c, p)
            if c == object then
                if p == nil then
                    removeObject(c)
                else
                    moveObject(c, p)
                end
            end
        end)
        NodeLookup[object] = objectNode
        insert(parentNode, #parentNode + 1, objectNode)
        if not noupdate then
            if nodeIsVisible(objectNode) then
                updateList()
            elseif nodeIsVisible(objectNode.Parent) then
                updateScroll()
            end
        end
    end
    local function makeObject(obj, par)
        local newObject = Instance.new(obj.ClassName)
        for i, v in pairs(obj.Properties) do
            ypcall(function()
                local newProp
                newProp = ToPropValue(v.Value, v.Type)
                newObject[v.Name] = newProp
            end)
        end
        newObject.Parent = par
    end
    local function writeObject(obj)
        local newObject = {
            ClassName = obj.ClassName,
            Properties = {}
        }
        for i, v in pairs(RbxApi.GetProperties(obj.className)) do
            if v["Name"] ~= "Parent" then
                print("thispassed")
                table.insert(newObject.Properties, {
                    Name = v["Name"],
                    Type = v["ValueType"]
                })
            end
        end
        return newObject
    end
    local function buildDexStorage()
        local localDexStorage
        local success, err = ypcall(function()
            localDexStorage = game:GetObjects("rbxasset://DexStorage.rbxm")[1]
        end)
        if success and localDexStorage then
            for i, v in pairs(localDexStorage:GetChildren()) do
                ypcall(function()
                    v.Parent = DexStorageMain
                end)
            end
        end
        updateDexStorageListeners()
    end
    local dexStorageDebounce = false
    local dexStorageListeners = {}
    local function updateDexStorage()
        if dexStorageDebounce then
            return
        end
        dexStorageDebounce = true
        wait()
        pcall(function()
        end)
        updateDexStorageListeners()
        dexStorageDebounce = false
    end
    function updateDexStorageListeners()
        for i, v in pairs(dexStorageListeners) do
            v:Disconnect()
        end
        dexStorageListeners = {}
        for i, v in pairs(DexStorageMain:GetChildren()) do
            pcall(function()
                local ev = v.Changed:connect(updateDexStorage)
                table.insert(dexStorageListeners, ev)
            end)
        end
    end
    do
        NodeLookup[workspace.Parent] = {
            Object = workspace.Parent,
            Parent = nil,
            Index = 0,
            Expanded = true
        }
        NodeLookup[DexOutput] = {
            Object = DexOutput,
            Parent = nil,
            Index = 0,
            Expanded = true
        }
        if DexStorageEnabled then
            NodeLookup[DexStorage] = {
                Object = DexStorage,
                Parent = nil,
                Index = 0,
                Expanded = true
            }
        end
        if NilStorageEnabled then
            NodeLookup[NilStorage] = {
                Object = NilStorage,
                Parent = nil,
                Index = 0,
                Expanded = true
            }
        end
        if RunningScriptsStorageEnabled then
            NodeLookup[RunningScriptsStorage] = {
                Object = RunningScriptsStorage,
                Parent = nil,
                Index = 0,
                Expanded = true
            }
        end
        if LoadedModulesStorageEnabled then
            NodeLookup[LoadedModulesStorage] = {
                Object = LoadedModulesStorage,
                Parent = nil,
                Index = 0,
                Expanded = true
            }
        end
        Connect(game.DescendantAdded, addObject)
        Connect(game.DescendantRemoving, removeObject)
        Connect(DexOutput.DescendantAdded, addObject)
        Connect(DexOutput.DescendantRemoving, removeObject)
        if DexStorageEnabled then
            buildDexStorage()
            Connect(DexStorage.DescendantAdded, addObject)
            Connect(DexStorage.DescendantRemoving, removeObject)
            Connect(DexStorage.DescendantAdded, updateDexStorage)
            Connect(DexStorage.DescendantRemoving, updateDexStorage)
        end
        if NilStorageEnabled then
            Connect(NilStorage.DescendantAdded, addObject)
            Connect(NilStorage.DescendantRemoving, removeObject)
        end
        if RunningScriptsStorageEnabled then
            Connect(RunningScriptsStorage.DescendantAdded, addObject)
            Connect(RunningScriptsStorage.DescendantRemoving, removeObject)
        end
        if LoadedModulesStorageEnabled then
            Connect(LoadedModulesStorage.DescendantAdded, addObject)
            Connect(LoadedModulesStorage.DescendantRemoving, removeObject)
        end
        local function get(o)
            return o:GetDescendants()
        end
        local function r(o)
            local s, children = pcall(get, o)
            if s then
                for i = 1, #children do
                    addObject(children[i], true)
                end
            end
        end
        r(workspace.Parent)
        r(DexOutput)
        if DexStorageEnabled then
            r(DexStorage)
        end
        if NilStorageEnabled then
            r(NilStorage)
        end
        if RunningScriptsStorageEnabled then
            r(RunningScriptsStorage)
        end
        if LoadedModulesStorageEnabled then
            r(LoadedModulesStorage)
        end
        scrollBar.VisibleSpace = math.ceil(listFrame.AbsoluteSize.y / ENTRY_BOUND)
        updateList()
    end
    local actionButtons
    do
        actionButtons = {}
        local totalActions = 1
        local currentActions = totalActions
        local function makeButton(icon, over, name, vis, cond)
            local buttonEnabled = false
            local button = Create(Icon("ImageButton", icon), {
                Name = name .. "Button",
                Visible = Option.Modifiable and Option.Selectable,
                Position = UDim2.new(1, -(GUI_SIZE + 2) * currentActions + 2, 0.25, -GUI_SIZE / 2),
                Size = UDim2.new(0, GUI_SIZE, 0, GUI_SIZE),
                Parent = headerFrame
            })
            local tipText = Create("TextLabel", {
                Name = name .. "Text",
                Text = name,
                Visible = false,
                BackgroundTransparency = 1,
                TextXAlignment = "Right",
                Font = FONT,
                FontSize = FONT_SIZE,
                Position = UDim2.new(0, 0, 0, 0),
                Size = UDim2.new(1, -(GUI_SIZE + 2) * totalActions, 1, 0),
                Parent = headerFrame
            })
            button.MouseEnter:connect(function()
                if buttonEnabled then
                    button.BackgroundTransparency = 0.9
                end
            end)
            button.MouseLeave:connect(function()
                button.BackgroundTransparency = 1
            end)
            currentActions = currentActions + 1
            actionButtons[#actionButtons + 1] = {
                Obj = button,
                Cond = cond
            }
            QuickButtons[#actionButtons + 1] = {
                Obj = button,
                Cond = cond,
                Toggle = function(on)
                    if on then
                        buttonEnabled = true
                        Icon(button, over)
                    else
                        buttonEnabled = false
                        Icon(button, icon)
                    end
                end
            }
            return button
        end
        local function delete(o)
            o.Parent = nil
        end
        makeButton(ACTION_EDITQUICKACCESS, ACTION_EDITQUICKACCESS, "Options", true, function()
            return true
        end).MouseButton1Click:connect(function()
        end)
        makeButton(ACTION_DELETE, ACTION_DELETE_OVER, "Delete", true, function()
            return #Selection:Get() > 0
        end).MouseButton1Click:connect(function()
            if not Option.Modifiable then
                return
            end
            local list = Selection:Get()
            for i = 1, #list do
                pcall(delete, list[i])
            end
            Selection:Set({})
        end)
        makeButton(ACTION_PASTE, ACTION_PASTE_OVER, "Paste", true, function()
            return #Selection:Get() > 0 and #clipboard > 0
        end).MouseButton1Click:connect(function()
            if not Option.Modifiable then
                return
            end
            local parent = Selection.List[1] or workspace
            for i = 1, #clipboard do
                clipboard[i]:Clone().Parent = parent
            end
        end)
        makeButton(ACTION_COPY, ACTION_COPY_OVER, "Copy", true, function()
            return #Selection:Get() > 0
        end).MouseButton1Click:connect(function()
            if not Option.Modifiable then
                return
            end
            clipboard = {}
            local list = Selection.List
            for i = 1, #list do
                table.insert(clipboard, list[i]:Clone())
            end
            updateActions()
        end)
        makeButton(ACTION_CUT, ACTION_CUT_OVER, "Cut", true, function()
            return #Selection:Get() > 0
        end).MouseButton1Click:connect(function()
            if not Option.Modifiable then
                return
            end
            clipboard = {}
            local list = Selection.List
            local cut = {}
            for i = 1, #list do
                local obj = list[i]:Clone()
                if obj then
                    table.insert(clipboard, obj)
                    table.insert(cut, list[i])
                end
            end
            for i = 1, #cut do
                pcall(delete, cut[i])
            end
            updateActions()
        end)
        makeButton(ACTION_FREEZE, ACTION_FREEZE, "Freeze", true, function()
            return true
        end)
        makeButton(ACTION_ADDSTAR, ACTION_ADDSTAR_OVER, "Star", true, function()
            return #Selection:Get() > 0
        end)
        makeButton(ACTION_STARRED, ACTION_STARRED, "Starred", true, function()
            return true
        end)
    end
    do
        local optionCallback = {
            Modifiable = function(value)
                for i = 1, #actionButtons do
                    actionButtons[i].Obj.Visible = value and Option.Selectable
                end
                cancelReparentDrag()
            end,
            Selectable = function(value)
                for i = 1, #actionButtons do
                    actionButtons[i].Obj.Visible = value and Option.Modifiable
                end
                cancelSelectDrag()
                Selection:Set({})
            end
        }
        local bindSetOption = explorerPanel:FindFirstChild("SetOption")
        if not bindSetOption then
            bindSetOption = Create("BindableFunction", {
                Name = "SetOption"
            })
            bindSetOption.Parent = explorerPanel
        end
        bindSetOption.OnInvoke = function(optionName, value)
            if optionCallback[optionName] then
                Option[optionName] = value
                optionCallback[optionName](value)
            end
        end
        local bindGetOption = explorerPanel:FindFirstChild("GetOption")
        if not bindGetOption then
            bindGetOption = Create("BindableFunction", {
                Name = "GetOption"
            })
            bindGetOption.Parent = explorerPanel
        end
        bindGetOption.OnInvoke = function(optionName)
            if optionName then
                return Option[optionName]
            else
                local options = {}
                for k, v in pairs(Option) do
                    options[k] = v
                end
                return options
            end
        end
    end
    function SelectionVar()
        return Selection
    end
    Input.InputBegan:connect(function(key)
        if key.KeyCode == Enum.KeyCode.LeftControl then
            HoldingCtrl = true
        end
        if key.KeyCode == Enum.KeyCode.LeftShift then
            HoldingShift = true
        end
    end)
    Input.InputEnded:connect(function(key)
        if key.KeyCode == Enum.KeyCode.LeftControl then
            HoldingCtrl = false
        end
        if key.KeyCode == Enum.KeyCode.LeftShift then
            HoldingShift = false
        end
    end)
    while RbxApi == nil do
        RbxApi = GetApiRemote:Invoke()
        wait()
    end
    explorerFilter.FocusLost:Connect(function(EnterPressed)
        if EnterPressed then
            rawUpdateList()
        end
    end)
    CurrentInsertObjectWindow = CreateInsertObjectMenu(GetClasses(), "", false, function(option)
        CurrentInsertObjectWindow.Visible = false
        local list = SelectionVar():Get()
        for i = 1, #list do
            pcall(function()
                Instance.new(option, list[i])
            end)
        end
        DestroyRightClick()
    end)
end)

-- // Properties Frame
task.spawn(function()
    wait(0.2)
    local UIS = game:GetService "UserInputService"
    local Gui = BetterDarkDex
    local PropertiesFrame = Gui:WaitForChild("PropertiesFrame")
    local ExplorerFrame = Gui:WaitForChild("ExplorerPanel")
    print = ExplorerFrame:WaitForChild("GetPrint"):Invoke()
    local Teams = game:GetService("Teams")
    local Workspace = game:GetService("Workspace")
    local Debris = game:GetService("Debris")
    local ContentProvider = game:GetService("ContentProvider")
    local Players = game:GetService("Players")
    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    function httpGet(url)
        return game:HttpGet(url, true)
    end
    local apiUrl = "http://anaminus.github.io/rbx/json/api/latest.json"
    local maxChunkSize = 100 * 1000
    local ApiJson
    if script:FindFirstChild("RawApiJson") then
        ApiJson = script.RawApiJson
    else
        ApiJson = ""
    end
    function getLocalApiJson()
        print(ApiJson)
        local usels = false
        local s = pcall(function()
            if ApiJson.Source ~= "" then
                usels = true
            end
        end)
        if usels then
            return loadstring(ApiJson.Source)()()
        else
            return require(ApiJson)()
        end
    end
    function getCurrentApiJson()
        local jsonStr = nil
        local success
        if not SetGlobal then
            success = pcall(function()
                jsonStr = httpGet(apiUrl)
                print("Fetched json successfully")
            end)
        end
        if success then
            print("Returning json")
            return jsonStr
        else
            print("Error fetching json: " .. tostring(err))
            print("Falling back to local copy")
            return getLocalApiJson()
        end
    end
    function splitStringIntoChunks(jsonStr)
        local t = {}
        for i = 1, math.ceil(string.len(jsonStr) / maxChunkSize) do
            local str = jsonStr:sub((i - 1) * maxChunkSize + 1, i * maxChunkSize)
            table.insert(t, str)
        end
        return t
    end
    local jsonToParse = getCurrentApiJson()
    local apiChunks = splitStringIntoChunks(jsonToParse)
    function getRbxApi()
        local HttpService = game:GetService("HttpService")
        local ReplicatedStorage = game:GetService("ReplicatedStorage")
        local JsonDecode = function(s)
            return HttpService:JSONDecode(s)
        end
        local function GetApiRemoteFunction(index)
            if (apiChunks[index]) then
                return apiChunks[index], #apiChunks
            else
                print("Bad index for GetApiJson")
                return nil
            end
        end
        local function getApiJson()
            local apiTable = {}
            local firstPage, pageCount = GetApiRemoteFunction(1)
            table.insert(apiTable, firstPage)
            for i = 2, pageCount do
                local result = GetApiRemoteFunction(i)
                table.insert(apiTable, result)
            end
            return table.concat(apiTable)
        end
        local json = getApiJson()
        local apiDump = JsonDecode(json)
        local Classes = {}
        local Enums = {}
        local function sortAlphabetic(t, property)
            table.sort(t, function(x, y)
                return x[property] < y[property]
            end)
        end
        local function isEnum(name)
            return Enums[name] ~= nil
        end
        local function getProperties(className)
            local class = Classes[className]
            local properties = {}
            if not class then
                return properties
            end
            while class do
                for _, property in pairs(class.Properties) do
                    table.insert(properties, property)
                end
                class = Classes[class.Superclass]
            end
            sortAlphabetic(properties, "Name")
            return properties
        end
        for _, item in pairs(apiDump) do
            local itemType = item.type
            if (itemType == "Class") then
                Classes[item.Name] = item
                item.Properties = {}
                item.Functions = {}
                item.YieldFunctions = {}
                item.Events = {}
                item.Callbacks = {}
            elseif (itemType == "Property") then
                table.insert(Classes[item.Class].Properties, item)
            elseif (itemType == "Function") then
                table.insert(Classes[item.Class].Functions, item)
            elseif (itemType == "YieldFunction") then
                table.insert(Classes[item.Class].YieldFunctions, item)
            elseif (itemType == "Event") then
                table.insert(Classes[item.Class].Events, item)
            elseif (itemType == "Callback") then
                table.insert(Classes[item.Class].Callbacks, item)
            elseif (itemType == "Enum") then
                Enums[item.Name] = item
                item.EnumItems = {}
            elseif (itemType == "EnumItem") then
                Enums[item.Enum].EnumItems[item.Name] = item
            end
        end
        return {
            Classes = Classes,
            Enums = Enums,
            GetProperties = getProperties,
            IsEnum = isEnum
        }
    end
    local Permissions = {
        CanEdit = true
    }
    local RbxApi = getRbxApi()

    local function CreateColor3(r, g, b)
        return Color3.new(r / 255, g / 255, b / 255)
    end
    local Styles = {
        Font = Enum.Font.Arial,
        Margin = 5,
        Black = CreateColor3(0, 0, 0),
        Black2 = CreateColor3(24, 24, 24),
        White = CreateColor3(244, 244, 244),
        Hover = CreateColor3(2, 128, 144),
        Hover2 = CreateColor3(5, 102, 141)
    }
    local Row = {
        Font = Styles.Font,
        FontSize = Enum.FontSize.Size14,
        TextXAlignment = Enum.TextXAlignment.Left,
        TextColor = Styles.White,
        TextColorOver = Styles.White,
        TextLockedColor = CreateColor3(155, 155, 155),
        Height = 24,
        BorderColor = CreateColor3(216 / 4, 216 / 4, 216 / 4),
        BackgroundColor = Styles.Black2,
        BackgroundColorAlternate = CreateColor3(32, 32, 32),
        BackgroundColorMouseover = CreateColor3(40, 40, 40),
        TitleMarginLeft = 15
    }
    local DropDown = {
        Font = Styles.Font,
        FontSize = Enum.FontSize.Size14,
        TextColor = CreateColor3(255, 255, 255),
        TextColorOver = Styles.White,
        TextXAlignment = Enum.TextXAlignment.Left,
        Height = 16,
        BackColor = Styles.Black2,
        BackColorOver = Styles.Hover2,
        BorderColor = CreateColor3(45, 45, 45),
        BorderSizePixel = 2,
        ArrowColor = CreateColor3(160 / 2, 160 / 2, 160 / 2),
        ArrowColorOver = Styles.Hover
    }
    local BrickColors = {
        BoxSize = 13,
        BorderSizePixel = 1,
        BorderColor = CreateColor3(160 / 3, 160 / 3, 160 / 3),
        FrameColor = CreateColor3(160 / 3, 160 / 3, 160 / 3),
        Size = 20,
        Padding = 4,
        ColorsPerRow = 8,
        OuterBorder = 1,
        OuterBorderColor = Styles.Black
    }
    wait(1)
    local bindGetSelection = ExplorerFrame.GetSelection
    local bindSelectionObjectChanged = ExplorerFrame.SelectionObjectChanged
    local bindGetApi = PropertiesFrame.GetApi
    local bindGetAwait = PropertiesFrame.GetAwaiting
    local bindSetAwait = PropertiesFrame.SetAwaiting
    local ContentUrl = ContentProvider.BaseUrl .. "asset/?id="
    local SettingsRemote = Gui:WaitForChild("SettingsPanel"):WaitForChild("GetSetting")
    local propertiesSearch = PropertiesFrame.Header.TextBox
    local AwaitingObjectValue = false
    local AwaitingObjectObj
    local AwaitingObjectProp
    function searchingProperties()
        if propertiesSearch.Text ~= "" and propertiesSearch.Text ~= "Search Properties" then
            return true
        end
        return false
    end
    local function GetSelection()
        local selection = bindGetSelection:Invoke()
        if #selection == 0 then
            return nil
        else
            return selection
        end
    end
    local function Round(number, decimalPlaces)
        return tonumber(string.format("%." .. (decimalPlaces or 0) .. "f", number))
    end
    local function Split(str, delimiter)
        local start = 1
        local t = {}
        while true do
            local pos = string.find(str, delimiter, start, true)
            if not pos then
                break
            end
            table.insert(t, string.sub(str, start, pos - 1))
            start = pos + string.len(delimiter)
        end
        table.insert(t, string.sub(str, start))
        return t
    end
    local function ToString(value, type)
        if type == "float" then
            return tostring(Round(value, 2))
        elseif type == "Content" then
            if string.find(value, "/asset") then
                local match = string.find(value, "=") + 1
                local id = string.sub(value, match)
                return id
            else
                return tostring(value)
            end
        elseif type == "Vector2" then
            local x = value.x
            local y = value.y
            return string.format("%g, %g", x, y)
        elseif type == "Vector3" then
            local x = value.x
            local y = value.y
            local z = value.z
            return string.format("%g, %g, %g", x, y, z)
        elseif type == "Color3" then
            local r = value.r
            local g = value.g
            local b = value.b
            return string.format("%d, %d, %d", r * 255, g * 255, b * 255)
        elseif type == "UDim2" then
            local xScale = value.X.Scale
            local xOffset = value.X.Offset
            local yScale = value.Y.Scale
            local yOffset = value.Y.Offset
            return string.format("{%d, %d}, {%d, %d}", xScale, xOffset, yScale, yOffset)
        else
            return tostring(value)
        end
    end
    local function ToValue(value, type)
        if type == "Vector2" then
            local list = Split(value, ",")
            if #list < 2 then
                return nil
            end
            local x = tonumber(list[1]) or 0
            local y = tonumber(list[2]) or 0
            return Vector2.new(x, y)
        elseif type == "Vector3" then
            local list = Split(value, ",")
            if #list < 3 then
                return nil
            end
            local x = tonumber(list[1]) or 0
            local y = tonumber(list[2]) or 0
            local z = tonumber(list[3]) or 0
            return Vector3.new(x, y, z)
        elseif type == "Color3" then
            local list = Split(value, ",")
            if #list < 3 then
                return nil
            end
            local r = tonumber(list[1]) or 0
            local g = tonumber(list[2]) or 0
            local b = tonumber(list[3]) or 0
            return Color3.new(r / 255, g / 255, b / 255)
        elseif type == "UDim2" then
            local list = Split(string.gsub(string.gsub(value, "{", ""), "}", ""), ",")
            if #list < 4 then
                return nil
            end
            local xScale = tonumber(list[1]) or 0
            local xOffset = tonumber(list[2]) or 0
            local yScale = tonumber(list[3]) or 0
            local yOffset = tonumber(list[4]) or 0
            return UDim2.new(xScale, xOffset, yScale, yOffset)
        elseif type == "Content" then
            if tonumber(value) ~= nil then
                value = ContentUrl .. value
            end
            return value
        elseif type == "float" or type == "int" or type == "double" then
            return tonumber(value)
        elseif type == "string" then
            return value
        elseif type == "NumberRange" then
            local list = Split(value, ",")
            if #list == 1 then
                if tonumber(list[1]) == nil then
                    return nil
                end
                local newVal = tonumber(list[1]) or 0
                return NumberRange.new(newVal)
            end
            if #list < 2 then
                return nil
            end
            local x = tonumber(list[1]) or 0
            local y = tonumber(list[2]) or 0
            return NumberRange.new(x, y)
        else
            return nil
        end
    end
    local function CopyTable(T)
        local t2 = {}
        for k, v in pairs(T) do
            t2[k] = v
        end
        return t2
    end
    local function SortTable(T)
        table.sort(T, function(x, y)
            return x.Name < y.Name
        end)
    end
    local Sprite = {
        Width = 13,
        Height = 13
    }
    local Spritesheet = {
        Image = "http://www.roblox.com/asset/?id=128896947",
        Height = 256,
        Width = 256
    }
    local Images = {"unchecked", "checked", "unchecked_over", "checked_over", "unchecked_disabled", "checked_disabled"}
    local function SpritePosition(spriteName)
        local x = 0
        local y = 0
        for i, v in pairs(Images) do
            if (v == spriteName) then
                return {x, y}
            end
            x = x + Sprite.Height
            if (x + Sprite.Width) > Spritesheet.Width then
                x = 0
                y = y + Sprite.Height
            end
        end
    end
    local function GetCheckboxImageName(checked, readOnly, mouseover)
        if checked then
            if readOnly then
                return "checked_disabled"
            elseif mouseover then
                return "checked_over"
            else
                return "checked"
            end
        else
            if readOnly then
                return "unchecked_disabled"
            elseif mouseover then
                return "unchecked_over"
            else
                return "unchecked"
            end
        end
    end
    local MAP_ID = 418720155
    local Icon
    do
        local iconMap = "http://www.roblox.com/asset/?id=" .. MAP_ID
        game:GetService("ContentProvider"):Preload(iconMap)
        local iconDehash
        do
            local f = math.floor
            function iconDehash(h)
                return f(h / 14 % 14), f(h % 14)
            end
        end
        function Icon(IconFrame, index)
            local row, col = iconDehash(index)
            local mapSize = Vector2.new(256, 256)
            local pad, border = 2, 1
            local iconSize = 16
            local class = "Frame"
            if type(IconFrame) == "string" then
                class = IconFrame
                IconFrame = nil
            end
            if not IconFrame then
                IconFrame = Create(class, {
                    Name = "Icon",
                    BackgroundTransparency = 1,
                    ClipsDescendants = true,
                    Create("ImageLabel", {
                        Name = "IconMap",
                        Active = false,
                        BackgroundTransparency = 1,
                        Image = iconMap,
                        Size = UDim2.new(mapSize.x / iconSize, 0, mapSize.y / iconSize, 0),
                        Parent = IconFrame
                    })
                })
            end
            IconFrame.IconMap.Position = UDim2.new(-col - (pad * (col + 1) + border) / iconSize, 0,
                -row - (pad * (row + 1) + border) / iconSize, 0)
            return IconFrame
        end
    end
    local function CreateCell()
        local tableCell = Instance.new("Frame")
        tableCell.Size = UDim2.new(0.5, -1, 1, 0)
        tableCell.BackgroundColor3 = Row.BackgroundColor
        tableCell.BorderColor3 = Row.BorderColor
        return tableCell
    end
    local function CreateLabel(readOnly)
        local label = Instance.new("TextLabel")
        label.Font = Row.Font
        label.FontSize = Row.FontSize
        label.TextXAlignment = Row.TextXAlignment
        label.BackgroundTransparency = 1
        if readOnly then
            label.TextColor3 = Row.TextLockedColor
        else
            label.TextColor3 = Row.TextColor
        end
        return label
    end
    local function CreateTextButton(readOnly, onClick)
        local button = Instance.new("TextButton")
        button.Font = Row.Font
        button.FontSize = Row.FontSize
        button.TextXAlignment = Row.TextXAlignment
        button.BackgroundTransparency = 1
        if readOnly then
            button.TextColor3 = Row.TextLockedColor
        else
            button.TextColor3 = Row.TextColor
            button.MouseButton1Click:connect(function()
                onClick()
            end)
        end
        return button
    end
    local function CreateObject(readOnly)
        local button = Instance.new("TextButton")
        button.Font = Row.Font
        button.FontSize = Row.FontSize
        button.TextXAlignment = Row.TextXAlignment
        button.BackgroundTransparency = 1
        if readOnly then
            button.TextColor3 = Row.TextLockedColor
        else
            button.TextColor3 = Row.TextColor
        end
        local cancel = Create(Icon("ImageButton", 177), {
            Name = "Cancel",
            Visible = false,
            Position = UDim2.new(1, -20, 0, 0),
            Size = UDim2.new(0, 20, 0, 20),
            Parent = button
        })
        return button
    end
    local function CreateTextBox(readOnly)
        if readOnly then
            local box = CreateLabel(readOnly)
            return box
        else
            local box = Instance.new("TextBox")
            if not SettingsRemote:Invoke("ClearProps") then
                box.ClearTextOnFocus = false
            end
            box.Font = Row.Font
            box.FontSize = Row.FontSize
            box.TextXAlignment = Row.TextXAlignment
            box.BackgroundTransparency = 1
            box.TextColor3 = Row.TextColor
            return box
        end
    end
    local function CreateDropDownItem(text, onClick)
        local button = Instance.new("TextButton")
        button.Font = DropDown.Font
        button.FontSize = DropDown.FontSize
        button.TextColor3 = DropDown.TextColor
        button.TextXAlignment = DropDown.TextXAlignment
        button.BackgroundColor3 = DropDown.BackColor
        button.AutoButtonColor = false
        button.BorderSizePixel = 0
        button.Active = true
        button.Text = text
        button.MouseEnter:connect(function()
            button.TextColor3 = DropDown.TextColorOver
            button.BackgroundColor3 = DropDown.BackColorOver
        end)
        button.MouseLeave:connect(function()
            button.TextColor3 = DropDown.TextColor
            button.BackgroundColor3 = DropDown.BackColor
        end)
        button.MouseButton1Click:connect(function()
            onClick(text)
        end)
        return button
    end
    local function CreateDropDown(choices, currentChoice, readOnly, onClick)
        local frame = Instance.new("Frame")
        frame.Name = "DropDown"
        frame.Size = UDim2.new(1, 0, 1, 0)
        frame.BackgroundTransparency = 1
        frame.Active = true
        local menu = nil
        local arrow = nil
        local expanded = false
        local margin = DropDown.BorderSizePixel
        local button = Instance.new("TextButton")
        button.Font = Row.Font
        button.FontSize = Row.FontSize
        button.TextXAlignment = Row.TextXAlignment
        button.BackgroundTransparency = 1
        button.TextColor3 = Row.TextColor
        if readOnly then
            button.TextColor3 = Row.TextLockedColor
        end
        button.Text = currentChoice
        button.Size = UDim2.new(1, -2 * Styles.Margin, 1, 0)
        button.Position = UDim2.new(0, Styles.Margin, 0, 0)
        button.Parent = frame
        local function showArrow(color)
            if arrow then
                arrow:Destroy()
            end
            local graphicTemplate = Create("Frame", {
                Name = "Graphic",
                BorderSizePixel = 0,
                BackgroundColor3 = color
            })
            local graphicSize = 16 / 2
            arrow = ArrowGraphic(graphicSize, "Down", true, graphicTemplate)
            arrow.Position = UDim2.new(1, -graphicSize * 2, 0.5, -graphicSize / 2)
            arrow.Parent = frame
        end
        local function hideMenu()
            expanded = false
            showArrow(DropDown.ArrowColor)
            if menu then
                menu:Destroy()
            end
        end
        local function showMenu()
            expanded = true
            menu = Instance.new("Frame")
            menu.Size = UDim2.new(1, -2 * margin, 0, #choices * DropDown.Height)
            menu.Position = UDim2.new(0, margin, 0, Row.Height + margin)
            menu.BackgroundTransparency = 0
            menu.BackgroundColor3 = DropDown.BackColor
            menu.BorderColor3 = DropDown.BorderColor
            menu.BorderSizePixel = DropDown.BorderSizePixel
            menu.Active = true
            menu.ZIndex = 5
            menu.Parent = frame
            local parentFrameHeight = menu.Parent.Parent.Parent.Parent.Size.Y.Offset
            local rowHeight = menu.Parent.Parent.Parent.Position.Y.Offset
            if (rowHeight + menu.Size.Y.Offset) > math.max(parentFrameHeight, PropertiesFrame.AbsoluteSize.y) then
                menu.Position = UDim2.new(0, margin, 0, -1 * (#choices * DropDown.Height) - margin)
            end
            local function choice(name)
                onClick(name)
                hideMenu()
            end
            for i, name in pairs(choices) do
                local option = CreateDropDownItem(name, function()
                    choice(name)
                end)
                option.Size = UDim2.new(1, 0, 0, 16)
                option.Position = UDim2.new(0, 0, 0, (i - 1) * DropDown.Height)
                option.ZIndex = menu.ZIndex
                option.Parent = menu
            end
        end
        showArrow(DropDown.ArrowColor)
        if not readOnly then
            button.MouseEnter:connect(function()
                button.TextColor3 = Row.TextColor
                showArrow(DropDown.ArrowColorOver)
            end)
            button.MouseLeave:connect(function()
                button.TextColor3 = Row.TextColor
                if not expanded then
                    showArrow(DropDown.ArrowColor)
                end
            end)
            button.MouseButton1Click:connect(function()
                if expanded then
                    hideMenu()
                else
                    showMenu()
                end
            end)
        end
        return frame, button
    end
    local function CreateBrickColor(readOnly, onClick)
        local frame = Instance.new("Frame")
        frame.Size = UDim2.new(1, 0, 1, 0)
        frame.BackgroundTransparency = 1
        local colorPalette = Instance.new("Frame")
        colorPalette.BackgroundTransparency = 0
        colorPalette.SizeConstraint = Enum.SizeConstraint.RelativeXX
        colorPalette.Size = UDim2.new(1, -2 * BrickColors.OuterBorder, 1, -2 * BrickColors.OuterBorder)
        colorPalette.BorderSizePixel = BrickColors.BorderSizePixel
        colorPalette.BorderColor3 = BrickColors.BorderColor
        colorPalette.Position = UDim2.new(0, BrickColors.OuterBorder, 0, BrickColors.OuterBorder + Row.Height)
        colorPalette.ZIndex = 5
        colorPalette.Visible = false
        colorPalette.BorderSizePixel = BrickColors.OuterBorder
        colorPalette.BorderColor3 = BrickColors.OuterBorderColor
        colorPalette.Parent = frame
        local function show()
            colorPalette.Visible = true
        end
        local function hide()
            colorPalette.Visible = false
        end
        local function toggle()
            colorPalette.Visible = not colorPalette.Visible
        end
        local colorBox = Instance.new("TextButton", frame)
        colorBox.Position = UDim2.new(0, Styles.Margin, 0, Styles.Margin)
        colorBox.Size = UDim2.new(0, BrickColors.BoxSize, 0, BrickColors.BoxSize)
        colorBox.Text = ""
        colorBox.MouseButton1Click:connect(function()
            if not readOnly then
                toggle()
            end
        end)
        if readOnly then
            colorBox.AutoButtonColor = false
        end
        local spacingBefore = (Styles.Margin * 2) + BrickColors.BoxSize
        local propertyLabel = CreateTextButton(readOnly, function()
            if not readOnly then
                toggle()
            end
        end)
        propertyLabel.Size = UDim2.new(1, (-1 * spacingBefore) - Styles.Margin, 1, 0)
        propertyLabel.Position = UDim2.new(0, spacingBefore, 0, 0)
        propertyLabel.Parent = frame
        local size = (1 / BrickColors.ColorsPerRow)
        for index = 0, 127 do
            local brickColor = BrickColor.palette(index)
            local color3 = brickColor.Color
            local x = size * (index % BrickColors.ColorsPerRow)
            local y = size * math.floor(index / BrickColors.ColorsPerRow)
            local brickColorBox = Instance.new("TextButton")
            brickColorBox.Text = ""
            brickColorBox.Size = UDim2.new(size, 0, size, 0)
            brickColorBox.BackgroundColor3 = color3
            brickColorBox.Position = UDim2.new(x, 0, y, 0)
            brickColorBox.ZIndex = colorPalette.ZIndex
            brickColorBox.Parent = colorPalette
            brickColorBox.MouseButton1Click:connect(function()
                hide()
                onClick(brickColor)
            end)
        end
        return frame, propertyLabel, colorBox
    end
    local function CreateColor3Control(readOnly, onClick)
        local frame = Instance.new("Frame")
        frame.Size = UDim2.new(1, 0, 1, 0)
        frame.BackgroundTransparency = 1
        local colorBox = Instance.new("TextButton", frame)
        colorBox.Position = UDim2.new(0, Styles.Margin, 0, Styles.Margin)
        colorBox.Size = UDim2.new(0, BrickColors.BoxSize, 0, BrickColors.BoxSize)
        colorBox.Text = ""
        colorBox.AutoButtonColor = false
        local spacingBefore = (Styles.Margin * 2) + BrickColors.BoxSize
        local box = CreateTextBox(readOnly)
        box.Size = UDim2.new(1, (-1 * spacingBefore) - Styles.Margin, 1, 0)
        box.Position = UDim2.new(0, spacingBefore, 0, 0)
        box.Parent = frame
        return frame, box, colorBox
    end
    function CreateCheckbox(value, readOnly, onClick)
        local checked = value
        local mouseover = false
        local checkboxFrame = Instance.new("ImageButton")
        checkboxFrame.Size = UDim2.new(0, Sprite.Width, 0, Sprite.Height)
        checkboxFrame.BackgroundTransparency = 1
        checkboxFrame.ClipsDescendants = true
        local spritesheetImage = Instance.new("ImageLabel", checkboxFrame)
        spritesheetImage.Name = "SpritesheetImageLabel"
        spritesheetImage.Size = UDim2.new(0, Spritesheet.Width, 0, Spritesheet.Height)
        spritesheetImage.Image = Spritesheet.Image
        spritesheetImage.BackgroundTransparency = 1
        local function updateSprite()
            local spriteName = GetCheckboxImageName(checked, readOnly, mouseover)
            local spritePosition = SpritePosition(spriteName)
            spritesheetImage.Position = UDim2.new(0, -1 * spritePosition[1], 0, -1 * spritePosition[2])
        end
        local function setValue(val)
            checked = val
            updateSprite()
        end
        if not readOnly then
            checkboxFrame.MouseEnter:connect(function()
                mouseover = true
                updateSprite()
            end)
            checkboxFrame.MouseLeave:connect(function()
                mouseover = false
                updateSprite()
            end)
            checkboxFrame.MouseButton1Click:connect(function()
                onClick(checked)
            end)
        end
        updateSprite()
        return checkboxFrame, setValue
    end
    local Controls = {}
    Controls["default"] = function(object, propertyData, readOnly)
        local propertyName = propertyData["Name"]
        local propertyType = propertyData["ValueType"]
        local box = CreateTextBox(readOnly)
        box.Size = UDim2.new(1, -2 * Styles.Margin, 1, 0)
        box.Position = UDim2.new(0, Styles.Margin, 0, 0)
        local function update()
            local value = object[propertyName]
            box.Text = ToString(value, propertyType)
        end
        if not readOnly then
            box.FocusLost:connect(function(enterPressed)
                Set(object, propertyData, ToValue(box.Text, propertyType))
                update()
            end)
        end
        update()
        object.Changed:connect(function(property)
            if (property == propertyName) then
                update()
            end
        end)
        return box
    end
    Controls["bool"] = function(object, propertyData, readOnly)
        local propertyName = propertyData["Name"]
        local checked = object[propertyName]
        local checkbox, setValue = CreateCheckbox(checked, readOnly, function(value)
            Set(object, propertyData, not checked)
        end)
        checkbox.Position = UDim2.new(0, Styles.Margin, 0, Styles.Margin)
        setValue(checked)
        local function update()
            checked = object[propertyName]
            setValue(checked)
        end
        object.Changed:connect(function(property)
            if (property == propertyName) then
                update()
            end
        end)
        if object:IsA("BoolValue") then
            object.Changed:connect(function(val)
                update()
            end)
        end
        update()
        return checkbox
    end
    Controls["BrickColor"] = function(object, propertyData, readOnly)
        local propertyName = propertyData["Name"]
        local frame, label, brickColorBox = CreateBrickColor(readOnly, function(brickColor)
            Set(object, propertyData, brickColor)
        end)
        local function update()
            local value = object[propertyName]
            brickColorBox.BackgroundColor3 = value.Color
            label.Text = tostring(value)
        end
        update()
        object.Changed:connect(function(property)
            if (property == propertyName) then
                update()
            end
        end)
        return frame
    end
    Controls["Color3"] = function(object, propertyData, readOnly)
        local propertyName = propertyData["Name"]
        local frame, textBox, colorBox = CreateColor3Control(readOnly)
        textBox.FocusLost:connect(function(enterPressed)
            Set(object, propertyData, ToValue(textBox.Text, "Color3"))
            local value = object[propertyName]
            colorBox.BackgroundColor3 = value
            textBox.Text = ToString(value, "Color3")
        end)
        local function update()
            local value = object[propertyName]
            colorBox.BackgroundColor3 = value
            textBox.Text = ToString(value, "Color3")
        end
        update()
        object.Changed:connect(function(property)
            if (property == propertyName) then
                update()
            end
        end)
        return frame
    end
    Controls["Enum"] = function(object, propertyData, readOnly)
        local propertyName = propertyData["Name"]
        local propertyType = propertyData["ValueType"]
        local enumName = object[propertyName].Name
        local enumNames = {}
        for _, enum in pairs(Enum[tostring(propertyType)]:GetEnumItems()) do
            table.insert(enumNames, enum.Name)
        end
        local dropdown, propertyLabel = CreateDropDown(enumNames, enumName, readOnly, function(value)
            Set(object, propertyData, value)
        end)
        local function update()
            local value = object[propertyName].Name
            propertyLabel.Text = tostring(value)
        end
        update()
        object.Changed:connect(function(property)
            if (property == propertyName) then
                update()
            end
        end)
        return dropdown
    end
    Controls["Object"] = function(object, propertyData, readOnly)
        local propertyName = propertyData["Name"]
        local propertyType = propertyData["ValueType"]
        local box = CreateObject(readOnly, function()
        end)
        box.Size = UDim2.new(1, -2 * Styles.Margin, 1, 0)
        box.Position = UDim2.new(0, Styles.Margin, 0, 0)
        local function update()
            if AwaitingObjectObj == object then
                if AwaitingObjectValue == true then
                    box.Text = "Select an Object"
                    return
                end
            end
            local value = object[propertyName]
            box.Text = ToString(value, propertyType)
        end
        if not readOnly then
            box.MouseButton1Click:connect(function()
                if AwaitingObjectValue then
                    AwaitingObjectValue = false
                    update()
                    return
                end
                AwaitingObjectValue = true
                AwaitingObjectObj = object
                AwaitingObjectProp = propertyData
                box.Text = "Select an Object"
            end)
            box.Cancel.Visible = true
            box.Cancel.MouseButton1Click:connect(function()
                object[propertyName] = nil
            end)
        end
        update()
        object.Changed:connect(function(property)
            if (property == propertyName) then
                update()
            end
        end)
        if object:IsA("ObjectValue") then
            object.Changed:connect(function(val)
                update()
            end)
        end
        return box
    end
    function GetControl(object, propertyData, readOnly)
        local propertyType = propertyData["ValueType"]
        local control = nil
        if Controls[propertyType] then
            control = Controls[propertyType](object, propertyData, readOnly)
        elseif RbxApi.IsEnum(propertyType) then
            control = Controls["Enum"](object, propertyData, readOnly)
        elseif RbxApi.Classes[propertyType] then
            control = Controls["Object"](object, propertyData, readOnly)
        else
            control = Controls["default"](object, propertyData, readOnly)
        end
        return control
    end
    function CanEditObject(object)
        local player = Players.LocalPlayer
        local character = player.Character
        return Permissions.CanEdit
    end
    function CanEditProperty(object, propertyData)
        local tags = propertyData["tags"]
        for _, name in pairs(tags) do
            if name == "readonly" then
                return false
            end
        end
        return CanEditObject(object)
    end
    local function PropertyIsHidden(propertyData)
        local tags = propertyData["tags"]
        for _, name in pairs(tags) do
            if name == "deprecated" or name == "hidden" or name == "writeonly" then
                return true
            end
        end
        return false
    end
    function Set(object, propertyData, value)
        local propertyName = propertyData["Name"]
        local propertyType = propertyData["ValueType"]
        if value == nil then
            return
        end
        for i, v in pairs(GetSelection()) do
            if CanEditProperty(v, propertyData) then
                pcall(function()
                    v[propertyName] = value
                end)
            end
        end
    end
    function CreateRow(object, propertyData, isAlternateRow)
        local propertyName = propertyData["Name"]
        local propertyType = propertyData["ValueType"]
        local propertyValue = object[propertyName]
        local backColor = Row.BackgroundColor
        if (isAlternateRow) then
            backColor = Row.BackgroundColorAlternate
        end
        local readOnly = not CanEditProperty(object, propertyData)
        local rowFrame = Instance.new("Frame")
        rowFrame.Size = UDim2.new(1, 0, 0, Row.Height)
        rowFrame.BackgroundTransparency = 1
        rowFrame.Name = "Row"
        local propertyLabelFrame = CreateCell()
        propertyLabelFrame.Parent = rowFrame
        propertyLabelFrame.ClipsDescendants = true
        local propertyLabel = CreateLabel(readOnly)
        propertyLabel.Text = propertyName
        propertyLabel.Size = UDim2.new(1, -1 * Row.TitleMarginLeft, 1, 0)
        propertyLabel.Position = UDim2.new(0, Row.TitleMarginLeft, 0, 0)
        propertyLabel.Parent = propertyLabelFrame
        local propertyValueFrame = CreateCell()
        propertyValueFrame.Size = UDim2.new(0.5, -1, 1, 0)
        propertyValueFrame.Position = UDim2.new(0.5, 0, 0, 0)
        propertyValueFrame.Parent = rowFrame
        local control = GetControl(object, propertyData, readOnly)
        control.Parent = propertyValueFrame
        rowFrame.MouseEnter:connect(function()
            propertyLabelFrame.BackgroundColor3 = Row.BackgroundColorMouseover
            propertyValueFrame.BackgroundColor3 = Row.BackgroundColorMouseover
        end)
        rowFrame.MouseLeave:connect(function()
            propertyLabelFrame.BackgroundColor3 = backColor
            propertyValueFrame.BackgroundColor3 = backColor
        end)
        rowFrame.InputEnded:connect(function(input)
            if input.UserInputType.Name == "MouseButton1" and UIS:IsKeyDown "LeftControl" then
                if input.Position.X > rowFrame.AbsolutePosition.X and input.Position.Y > rowFrame.AbsolutePosition.Y and
                    input.Position.X < rowFrame.AbsolutePosition.X + rowFrame.AbsoluteSize.X and input.Position.Y <
                    rowFrame.AbsolutePosition.Y + rowFrame.AbsoluteSize.Y then
                    print(pcall(setclipboard, tostring(object[propertyName])))
                end
            end
        end)
        propertyLabelFrame.BackgroundColor3 = backColor
        propertyValueFrame.BackgroundColor3 = backColor
        return rowFrame
    end
    function ClearPropertiesList()
        for _, instance in pairs(ContentFrame:GetChildren()) do
            instance:Destroy()
        end
    end
    local selection = Gui:FindFirstChild("Selection", 1)
    print(selection)
    function displayProperties(props)
        for i, v in pairs(props) do
            pcall(function()
                local a = CreateRow(v.object, v.propertyData, ((numRows % 2) == 0))
                a.Position = UDim2.new(0, 0, 0, numRows * Row.Height)
                a.Parent = ContentFrame
                numRows = numRows + 1
            end)
        end
    end
    function checkForDupe(prop, props)
        for i, v in pairs(props) do
            if v.propertyData.Name == prop.Name and v.propertyData.ValueType == prop.ValueType then
                return true
            end
        end
        return false
    end
    function sortProps(t)
        table.sort(t, function(x, y)
            return x.propertyData.Name < y.propertyData.Name
        end)
    end
    function showProperties(obj)
        ClearPropertiesList()
        if obj == nil then
            return
        end
        local propHolder = {}
        local foundProps = {}
        numRows = 0
        for _, nextObj in pairs(obj) do
            if not foundProps[nextObj.className] then
                foundProps[nextObj.className] = true
                for i, v in pairs(RbxApi.GetProperties(nextObj.className)) do
                    local suc, err = pcall(function()
                        if not (PropertyIsHidden(v)) and not checkForDupe(v, propHolder) then
                            if string.find(string.lower(v.Name), string.lower(propertiesSearch.Text)) or
                                not searchingProperties() then
                                table.insert(propHolder, {
                                    propertyData = v,
                                    object = nextObj
                                })
                            end
                        end
                    end)
                end
            end
        end
        sortProps(propHolder)
        displayProperties(propHolder)
        ContentFrame.Size = UDim2.new(1, 0, 0, numRows * Row.Height)
        scrollBar.ScrollIndex = 0
        scrollBar.TotalSpace = numRows * Row.Height
        scrollBar.Update()
    end
    local ScrollBarWidth = 16
    local ScrollStyles = {
        Background = Color3.fromRGB(43, 43, 43),
        Border = Color3.fromRGB(20, 20, 20),
        Selected = Color3.fromRGB(5, 102, 141),
        BorderSelected = Color3.fromRGB(2, 128, 144),
        Text = Color3.fromRGB(245, 245, 245),
        TextDisabled = Color3.fromRGB(188, 188, 188),
        TextSelected = Color3.fromRGB(255, 255, 255),
        Button = Color3.fromRGB(33, 33, 33),
        ButtonBorder = Color3.fromRGB(133, 133, 133),
        ButtonSelected = Color3.fromRGB(0, 168, 150),
        Field = Color3.fromRGB(43, 43, 43),
        FieldBorder = Color3.fromRGB(50, 50, 50),
        TitleBackground = Color3.fromRGB(11, 11, 11)
    }
    do
        local ZIndexLock = {}
        function SetZIndex(object, z)
            if not ZIndexLock[object] then
                ZIndexLock[object] = true
                if object:IsA "GuiObject" then
                    object.ZIndex = z
                end
                local children = object:GetChildren()
                for i = 1, #children do
                    SetZIndex(children[i], z)
                end
                ZIndexLock[object] = nil
            end
        end
    end
    function SetZIndexOnChanged(object)
        return object.Changed:connect(function(p)
            if p == "ZIndex" then
                SetZIndex(object, object.ZIndex)
            end
        end)
    end
    function Create(ty, data)
        local obj
        if type(ty) == "string" then
            obj = Instance.new(ty)
        else
            obj = ty
        end
        for k, v in pairs(data) do
            if type(k) == "number" then
                v.Parent = obj
            else
                obj[k] = v
            end
        end
        return obj
    end
    function GetScreen(screen)
        if screen == nil then
            return nil
        end
        while not screen:IsA("ScreenGui") do
            screen = screen.Parent
            if screen == nil then
                return nil
            end
        end
        return screen
    end
    function ResetButtonColor(button)
        local active = button.Active
        button.Active = not active
        button.Active = active
    end
    function ArrowGraphic(size, dir, scaled, template)
        local Frame = Create("Frame", {
            Name = "Arrow Graphic",
            BorderSizePixel = 0,
            Size = UDim2.new(0, size, 0, size),
            Transparency = 1
        })
        if not template then
            template = Instance.new("Frame")
            template.BorderSizePixel = 0
        end
        template.BackgroundColor3 = Color3.new(1, 1, 1)
        local transform
        if dir == nil or dir == "Up" then
            function transform(p, s)
                return p, s
            end
        elseif dir == "Down" then
            function transform(p, s)
                return UDim2.new(0, p.X.Offset, 0, size - p.Y.Offset - 1), s
            end
        elseif dir == "Left" then
            function transform(p, s)
                return UDim2.new(0, p.Y.Offset, 0, p.X.Offset), UDim2.new(0, s.Y.Offset, 0, s.X.Offset)
            end
        elseif dir == "Right" then
            function transform(p, s)
                return UDim2.new(0, size - p.Y.Offset - 1, 0, p.X.Offset), UDim2.new(0, s.Y.Offset, 0, s.X.Offset)
            end
        end
        local scale
        if scaled then
            function scale(p, s)
                return UDim2.new(p.X.Offset / size, 0, p.Y.Offset / size, 0),
                    UDim2.new(s.X.Offset / size, 0, s.Y.Offset / size, 0)
            end
        else
            function scale(p, s)
                return p, s
            end
        end
        local o = math.floor(size / 4)
        if size % 2 == 0 then
            local n = size / 2 - 1
            for i = 0, n do
                local t = template:Clone()
                local p, s = scale(transform(UDim2.new(0, n - i, 0, o + i), UDim2.new(0, (i + 1) * 2, 0, 1)))
                t.Position = p
                t.Size = s
                t.Parent = Frame
            end
        else
            local n = (size - 1) / 2
            for i = 0, n do
                local t = template:Clone()
                local p, s = scale(transform(UDim2.new(0, n - i, 0, o + i), UDim2.new(0, i * 2 + 1, 0, 1)))
                t.Position = p
                t.Size = s
                t.Parent = Frame
            end
        end
        if size % 4 > 1 then
            local t = template:Clone()
            local p, s = scale(transform(UDim2.new(0, 0, 0, size - o - 1), UDim2.new(0, size, 0, 1)))
            t.Position = p
            t.Size = s
            t.Parent = Frame
        end
        for i, v in pairs(Frame:GetChildren()) do
            v.BackgroundColor3 = Color3.new(1, 1, 1)
        end
        return Frame
    end
    function GripGraphic(size, dir, spacing, scaled, template)
        local Frame = Create("Frame", {
            Name = "Grip Graphic",
            BorderSizePixel = 0,
            Size = UDim2.new(0, size.x, 0, size.y),
            Transparency = 1
        })
        if not template then
            template = Instance.new("Frame")
            template.BorderSizePixel = 0
        end
        spacing = spacing or 2
        local scale
        if scaled then
            function scale(p)
                return UDim2.new(p.X.Offset / size.x, 0, p.Y.Offset / size.y, 0)
            end
        else
            function scale(p)
                return p
            end
        end
        if dir == "Vertical" then
            for i = 0, size.x - 1, spacing do
                local t = template:Clone()
                t.Size = scale(UDim2.new(0, 1, 0, size.y))
                t.Position = scale(UDim2.new(0, i, 0, 0))
                t.Parent = Frame
            end
        elseif dir == nil or dir == "Horizontal" then
            for i = 0, size.y - 1, spacing do
                local t = template:Clone()
                t.Size = scale(UDim2.new(0, size.x, 0, 1))
                t.Position = scale(UDim2.new(0, 0, 0, i))
                t.Parent = Frame
            end
        end
        return Frame
    end
    do
        local mt = {
            __index = {
                GetScrollPercent = function(self)
                    return self.ScrollIndex / (self.TotalSpace - self.VisibleSpace)
                end,
                CanScrollDown = function(self)
                    return self.ScrollIndex + self.VisibleSpace < self.TotalSpace
                end,
                CanScrollUp = function(self)
                    return self.ScrollIndex > 0
                end,
                ScrollDown = function(self)
                    self.ScrollIndex = self.ScrollIndex + self.PageIncrement
                    self:Update()
                end,
                ScrollUp = function(self)
                    self.ScrollIndex = self.ScrollIndex - self.PageIncrement
                    self:Update()
                end,
                ScrollTo = function(self, index)
                    self.ScrollIndex = index
                    self:Update()
                end,
                SetScrollPercent = function(self, percent)
                    self.ScrollIndex = math.floor((self.TotalSpace - self.VisibleSpace) * percent + 0.5)
                    self:Update()
                end
            }
        }
        mt.__index.CanScrollRight = mt.__index.CanScrollDown
        mt.__index.CanScrollLeft = mt.__index.CanScrollUp
        mt.__index.ScrollLeft = mt.__index.ScrollUp
        mt.__index.ScrollRight = mt.__index.ScrollDown
        function ScrollBar(horizontal)
            local ScrollFrame = Create("Frame", {
                Name = "ScrollFrame",
                Position = horizontal and UDim2.new(0, 0, 1, -ScrollBarWidth) or UDim2.new(1, -ScrollBarWidth, 0, 0),
                Size = horizontal and UDim2.new(1, 0, 0, ScrollBarWidth) or UDim2.new(0, ScrollBarWidth, 1, 0),
                BackgroundTransparency = 1,
                Create("ImageButton", {
                    Name = "ScrollDown",
                    Position = horizontal and UDim2.new(1, -ScrollBarWidth, 0, 0) or UDim2.new(0, 0, 1, -ScrollBarWidth),
                    Size = UDim2.new(0, ScrollBarWidth, 0, ScrollBarWidth),
                    BackgroundColor3 = ScrollStyles.Button,
                    BorderColor3 = ScrollStyles.Border,
                    ImageColor3 = Styles.White
                }),
                Create("ImageButton", {
                    Name = "ScrollUp",
                    Size = UDim2.new(0, ScrollBarWidth, 0, ScrollBarWidth),
                    BackgroundColor3 = ScrollStyles.Button,
                    BorderColor3 = ScrollStyles.Border,
                    ImageColor3 = Styles.White
                }),
                Create("ImageButton", {
                    Name = "ScrollBar",
                    Size = horizontal and UDim2.new(1, -ScrollBarWidth * 2, 1, 0) or
                        UDim2.new(1, 0, 1, -ScrollBarWidth * 2),
                    Position = horizontal and UDim2.new(0, ScrollBarWidth, 0, 0) or UDim2.new(0, 0, 0, ScrollBarWidth),
                    AutoButtonColor = false,
                    BackgroundColor3 = Color3.new(1 / 4, 1 / 4, 1 / 4),
                    BorderColor3 = ScrollStyles.Border,
                    Create("ImageButton", {
                        Name = "ScrollThumb",
                        AutoButtonColor = false,
                        Size = UDim2.new(0, ScrollBarWidth, 0, ScrollBarWidth),
                        BackgroundColor3 = ScrollStyles.Button,
                        BorderColor3 = ScrollStyles.Border,
                        ImageColor3 = Styles.White
                    })
                })
            })
            local graphicTemplate = Create("Frame", {
                Name = "Graphic",
                BorderSizePixel = 0,
                BackgroundColor3 = Color3.new(1, 1, 1)
            })
            local graphicSize = ScrollBarWidth / 2
            local ScrollDownFrame = ScrollFrame.ScrollDown
            local ScrollDownGraphic = ArrowGraphic(graphicSize, horizontal and "Right" or "Down", true, graphicTemplate)
            ScrollDownGraphic.Position = UDim2.new(0.5, -graphicSize / 2, 0.5, -graphicSize / 2)
            ScrollDownGraphic.Parent = ScrollDownFrame
            local ScrollUpFrame = ScrollFrame.ScrollUp
            local ScrollUpGraphic = ArrowGraphic(graphicSize, horizontal and "Left" or "Up", true, graphicTemplate)
            ScrollUpGraphic.Position = UDim2.new(0.5, -graphicSize / 2, 0.5, -graphicSize / 2)
            ScrollUpGraphic.Parent = ScrollUpFrame
            local ScrollBarFrame = ScrollFrame.ScrollBar
            local ScrollThumbFrame = ScrollBarFrame.ScrollThumb
            do
                local size = ScrollBarWidth * 3 / 8
                local Decal = GripGraphic(Vector2.new(size, size), horizontal and "Vertical" or "Horizontal", 2,
                    graphicTemplate)
                Decal.Position = UDim2.new(0.5, -size / 2, 0.5, -size / 2)
                Decal.Parent = ScrollThumbFrame
            end
            local MouseDrag = Create("ImageButton", {
                Name = "MouseDrag",
                Position = UDim2.new(-0.25, 0, -0.25, 0),
                Size = UDim2.new(1.5, 0, 1.5, 0),
                Transparency = 1,
                AutoButtonColor = false,
                Active = true,
                ZIndex = 10
            })
            local Class = setmetatable({
                GUI = ScrollFrame,
                ScrollIndex = 0,
                VisibleSpace = 0,
                TotalSpace = 0,
                PageIncrement = 1
            }, mt)
            local UpdateScrollThumb
            if horizontal then
                function UpdateScrollThumb()
                    ScrollThumbFrame.Size = UDim2.new(Class.VisibleSpace / Class.TotalSpace, 0, 0, ScrollBarWidth)
                    if ScrollThumbFrame.AbsoluteSize.x < ScrollBarWidth then
                        ScrollThumbFrame.Size = UDim2.new(0, ScrollBarWidth, 0, ScrollBarWidth)
                    end
                    local barSize = ScrollBarFrame.AbsoluteSize.x
                    ScrollThumbFrame.Position = UDim2.new(Class:GetScrollPercent() *
                                                              (barSize - ScrollThumbFrame.AbsoluteSize.x) / barSize, 0,
                        0, 0)
                end
            else
                function UpdateScrollThumb()
                    ScrollThumbFrame.Size = UDim2.new(0, ScrollBarWidth, Class.VisibleSpace / Class.TotalSpace, 0)
                    if ScrollThumbFrame.AbsoluteSize.y < ScrollBarWidth then
                        ScrollThumbFrame.Size = UDim2.new(0, ScrollBarWidth, 0, ScrollBarWidth)
                    end
                    local barSize = ScrollBarFrame.AbsoluteSize.y
                    ScrollThumbFrame.Position = UDim2.new(0, 0, Class:GetScrollPercent() *
                        (barSize - ScrollThumbFrame.AbsoluteSize.y) / barSize, 0)
                end
            end
            local lastDown
            local lastUp
            local scrollStyle = {
                BackgroundColor3 = Color3.new(1, 1, 1),
                BackgroundTransparency = 0
            }
            local scrollStyle_ds = {
                BackgroundColor3 = Color3.new(1, 1, 1),
                BackgroundTransparency = 0.7
            }
            local function Update()
                local t = Class.TotalSpace
                local v = Class.VisibleSpace
                local s = Class.ScrollIndex
                if v <= t then
                    if s > 0 then
                        if s + v > t then
                            Class.ScrollIndex = t - v
                        end
                    else
                        Class.ScrollIndex = 0
                    end
                else
                    Class.ScrollIndex = 0
                end
                if Class.UpdateCallback then
                    if Class.UpdateCallback(Class) == false then
                        return
                    end
                end
                local down = Class:CanScrollDown()
                local up = Class:CanScrollUp()
                if down ~= lastDown then
                    lastDown = down
                    ScrollDownFrame.Active = down
                    ScrollDownFrame.AutoButtonColor = down
                    local children = ScrollDownGraphic:GetChildren()
                    local style = down and scrollStyle or scrollStyle_ds
                    for i = 1, #children do
                        Create(children[i], style)
                    end
                end
                if up ~= lastUp then
                    lastUp = up
                    ScrollUpFrame.Active = up
                    ScrollUpFrame.AutoButtonColor = up
                    local children = ScrollUpGraphic:GetChildren()
                    local style = up and scrollStyle or scrollStyle_ds
                    for i = 1, #children do
                        Create(children[i], style)
                    end
                end
                ScrollThumbFrame.Visible = down or up
                UpdateScrollThumb()
            end
            Class.Update = Update
            SetZIndexOnChanged(ScrollFrame)
            local scrollEventID = 0
            ScrollDownFrame.MouseButton1Down:connect(function()
                scrollEventID = tick()
                local current = scrollEventID
                local up_con
                up_con = MouseDrag.MouseButton1Up:connect(function()
                    scrollEventID = tick()
                    MouseDrag.Parent = nil
                    ResetButtonColor(ScrollDownFrame)
                    up_con:disconnect()
                    drag = nil
                end)
                MouseDrag.Parent = GetScreen(ScrollFrame)
                Class:ScrollDown()
                wait(0.2)
                while scrollEventID == current do
                    Class:ScrollDown()
                    if not Class:CanScrollDown() then
                        break
                    end
                    wait()
                end
            end)
            ScrollDownFrame.MouseButton1Up:connect(function()
                scrollEventID = tick()
            end)
            ScrollUpFrame.MouseButton1Down:connect(function()
                scrollEventID = tick()
                local current = scrollEventID
                local up_con
                up_con = MouseDrag.MouseButton1Up:connect(function()
                    scrollEventID = tick()
                    MouseDrag.Parent = nil
                    ResetButtonColor(ScrollUpFrame)
                    up_con:disconnect()
                    drag = nil
                end)
                MouseDrag.Parent = GetScreen(ScrollFrame)
                Class:ScrollUp()
                wait(0.2)
                while scrollEventID == current do
                    Class:ScrollUp()
                    if not Class:CanScrollUp() then
                        break
                    end
                    wait()
                end
            end)
            ScrollUpFrame.MouseButton1Up:connect(function()
                scrollEventID = tick()
            end)
            if horizontal then
                ScrollBarFrame.MouseButton1Down:connect(function(x, y)
                    scrollEventID = tick()
                    local current = scrollEventID
                    local up_con
                    up_con = MouseDrag.MouseButton1Up:connect(function()
                        scrollEventID = tick()
                        MouseDrag.Parent = nil
                        ResetButtonColor(ScrollUpFrame)
                        up_con:disconnect()
                        drag = nil
                    end)
                    MouseDrag.Parent = GetScreen(ScrollFrame)
                    if x > ScrollThumbFrame.AbsolutePosition.x then
                        Class:ScrollTo(Class.ScrollIndex + Class.VisibleSpace)
                        wait(0.2)
                        while scrollEventID == current do
                            if x < ScrollThumbFrame.AbsolutePosition.x + ScrollThumbFrame.AbsoluteSize.x then
                                break
                            end
                            Class:ScrollTo(Class.ScrollIndex + Class.VisibleSpace)
                            wait()
                        end
                    else
                        Class:ScrollTo(Class.ScrollIndex - Class.VisibleSpace)
                        wait(0.2)
                        while scrollEventID == current do
                            if x > ScrollThumbFrame.AbsolutePosition.x then
                                break
                            end
                            Class:ScrollTo(Class.ScrollIndex - Class.VisibleSpace)
                            wait()
                        end
                    end
                end)
            else
                ScrollBarFrame.MouseButton1Down:connect(function(x, y)
                    scrollEventID = tick()
                    local current = scrollEventID
                    local up_con
                    up_con = MouseDrag.MouseButton1Up:connect(function()
                        scrollEventID = tick()
                        MouseDrag.Parent = nil
                        ResetButtonColor(ScrollUpFrame)
                        up_con:disconnect()
                        drag = nil
                    end)
                    MouseDrag.Parent = GetScreen(ScrollFrame)
                    if y > ScrollThumbFrame.AbsolutePosition.y then
                        Class:ScrollTo(Class.ScrollIndex + Class.VisibleSpace)
                        wait(0.2)
                        while scrollEventID == current do
                            if y < ScrollThumbFrame.AbsolutePosition.y + ScrollThumbFrame.AbsoluteSize.y then
                                break
                            end
                            Class:ScrollTo(Class.ScrollIndex + Class.VisibleSpace)
                            wait()
                        end
                    else
                        Class:ScrollTo(Class.ScrollIndex - Class.VisibleSpace)
                        wait(0.2)
                        while scrollEventID == current do
                            if y > ScrollThumbFrame.AbsolutePosition.y then
                                break
                            end
                            Class:ScrollTo(Class.ScrollIndex - Class.VisibleSpace)
                            wait()
                        end
                    end
                end)
            end
            if horizontal then
                ScrollThumbFrame.MouseButton1Down:connect(function(x, y)
                    scrollEventID = tick()
                    local mouse_offset = x - ScrollThumbFrame.AbsolutePosition.x
                    local drag_con
                    local up_con
                    drag_con = MouseDrag.MouseMoved:connect(function(x, y)
                        local bar_abs_pos = ScrollBarFrame.AbsolutePosition.x
                        local bar_drag = ScrollBarFrame.AbsoluteSize.x - ScrollThumbFrame.AbsoluteSize.x
                        local bar_abs_one = bar_abs_pos + bar_drag
                        x = x - mouse_offset
                        x = x < bar_abs_pos and bar_abs_pos or x > bar_abs_one and bar_abs_one or x
                        x = x - bar_abs_pos
                        Class:SetScrollPercent(x / (bar_drag))
                    end)
                    up_con = MouseDrag.MouseButton1Up:connect(function()
                        scrollEventID = tick()
                        MouseDrag.Parent = nil
                        ResetButtonColor(ScrollThumbFrame)
                        drag_con:disconnect()
                        drag_con = nil
                        up_con:disconnect()
                        drag = nil
                    end)
                    MouseDrag.Parent = GetScreen(ScrollFrame)
                end)
            else
                ScrollThumbFrame.MouseButton1Down:connect(function(x, y)
                    scrollEventID = tick()
                    local mouse_offset = y - ScrollThumbFrame.AbsolutePosition.y
                    local drag_con
                    local up_con
                    drag_con = MouseDrag.MouseMoved:connect(function(x, y)
                        local bar_abs_pos = ScrollBarFrame.AbsolutePosition.y
                        local bar_drag = ScrollBarFrame.AbsoluteSize.y - ScrollThumbFrame.AbsoluteSize.y
                        local bar_abs_one = bar_abs_pos + bar_drag
                        y = y - mouse_offset
                        y = y < bar_abs_pos and bar_abs_pos or y > bar_abs_one and bar_abs_one or y
                        y = y - bar_abs_pos
                        Class:SetScrollPercent(y / (bar_drag))
                    end)
                    up_con = MouseDrag.MouseButton1Up:connect(function()
                        scrollEventID = tick()
                        MouseDrag.Parent = nil
                        ResetButtonColor(ScrollThumbFrame)
                        drag_con:disconnect()
                        drag_con = nil
                        up_con:disconnect()
                        drag = nil
                    end)
                    MouseDrag.Parent = GetScreen(ScrollFrame)
                end)
            end
            function Class:Destroy()
                ScrollFrame:Destroy()
                MouseDrag:Destroy()
                for k in pairs(Class) do
                    Class[k] = nil
                end
                setmetatable(Class, nil)
            end
            Update()
            return Class
        end
    end
    local MainFrame = Instance.new("Frame")
    MainFrame.Name = "MainFrame"
    MainFrame.Size = UDim2.new(1, -1 * ScrollBarWidth, 1, 0)
    MainFrame.Position = UDim2.new(0, 0, 0, 0)
    MainFrame.BackgroundTransparency = 1
    MainFrame.ClipsDescendants = true
    MainFrame.Parent = PropertiesFrame
    ContentFrame = Instance.new("Frame")
    ContentFrame.Name = "ContentFrame"
    ContentFrame.Size = UDim2.new(1, 0, 0, 0)
    ContentFrame.BackgroundTransparency = 1
    ContentFrame.Parent = MainFrame
    scrollBar = ScrollBar(false)
    scrollBar.PageIncrement = 1
    Create(scrollBar.GUI, {
        Position = UDim2.new(1, -ScrollBarWidth, 0, 0),
        Size = UDim2.new(0, ScrollBarWidth, 1, 0),
        Parent = PropertiesFrame
    })
    scrollBarH = ScrollBar(true)
    scrollBarH.PageIncrement = ScrollBarWidth
    Create(scrollBarH.GUI, {
        Position = UDim2.new(0, 0, 1, -ScrollBarWidth),
        Size = UDim2.new(1, -ScrollBarWidth, 0, ScrollBarWidth),
        Visible = false,
        Parent = PropertiesFrame
    })
    do
        local listEntries = {}
        local nameConnLookup = {}
        function scrollBar.UpdateCallback(self)
            scrollBar.TotalSpace = ContentFrame.AbsoluteSize.Y
            scrollBar.VisibleSpace = MainFrame.AbsoluteSize.Y
            ContentFrame.Position = UDim2.new(ContentFrame.Position.X.Scale, ContentFrame.Position.X.Offset, 0,
                -1 * scrollBar.ScrollIndex)
        end
        function scrollBarH.UpdateCallback(self)
        end
        MainFrame.Changed:connect(function(p)
            if p == "AbsoluteSize" then
                scrollBarH.VisibleSpace = math.ceil(MainFrame.AbsoluteSize.x)
                scrollBarH:Update()
                scrollBar.VisibleSpace = math.ceil(MainFrame.AbsoluteSize.y)
                scrollBar:Update()
            end
        end)
        local wheelAmount = Row.Height
        PropertiesFrame.MouseWheelForward:connect(function()
            if UIS:IsKeyDown "LeftShift" then
                if scrollBarH.VisibleSpace - 1 > wheelAmount then
                    scrollBarH:ScrollTo(scrollBarH.ScrollIndex - wheelAmount)
                else
                    scrollBarH:ScrollTo(scrollBarH.ScrollIndex - scrollBarH.VisibleSpace)
                end
            else
                if scrollBar.VisibleSpace - 1 > wheelAmount then
                    scrollBar:ScrollTo(scrollBar.ScrollIndex - wheelAmount)
                else
                    scrollBar:ScrollTo(scrollBar.ScrollIndex - scrollBar.VisibleSpace)
                end
            end
        end)
        PropertiesFrame.MouseWheelBackward:connect(function()
            if UIS:IsKeyDown "LeftShift" then
                if scrollBarH.VisibleSpace - 1 > wheelAmount then
                    scrollBarH:ScrollTo(scrollBarH.ScrollIndex + wheelAmount)
                else
                    scrollBarH:ScrollTo(scrollBarH.ScrollIndex + scrollBarH.VisibleSpace)
                end
            else
                if scrollBar.VisibleSpace - 1 > wheelAmount then
                    scrollBar:ScrollTo(scrollBar.ScrollIndex + wheelAmount)
                else
                    scrollBar:ScrollTo(scrollBar.ScrollIndex + scrollBar.VisibleSpace)
                end
            end
        end)
    end
    scrollBar.VisibleSpace = math.ceil(MainFrame.AbsoluteSize.y)
    scrollBar:Update()
    showProperties(GetSelection())
    bindSelectionObjectChanged.Event:connect(function()
        showProperties(GetSelection())
    end)
    bindSetAwait.Event:connect(function(obj)
        if AwaitingObjectValue then
            AwaitingObjectValue = false
            local mySel = obj
            if mySel then
                pcall(function()
                    Set(AwaitingObjectObj, AwaitingObjectProp, mySel)
                end)
            end
        end
    end)
    propertiesSearch.Changed:connect(function(prop)
        if prop == "Text" then
            showProperties(GetSelection())
        end
    end)
    bindGetApi.OnInvoke = function()
        return RbxApi
    end
    bindGetAwait.OnInvoke = function()
        return AwaitingObjectValue
    end
end)

-- // Script Editor
task.spawn(function()
    local editor = ScriptEditor
    local bindable = editor:WaitForChild("OpenScript")
    local SaveScript = editor:WaitForChild("TopBar"):WaitForChild("Other"):WaitForChild("SaveScript")
    local CopyScript = editor:WaitForChild("TopBar"):WaitForChild("Other"):WaitForChild("CopyScript")
    local ClearScript = editor:WaitForChild("TopBar"):WaitForChild("Other"):WaitForChild("ClearScript")
    local CloseEditor = editor:WaitForChild("TopBar"):WaitForChild("Close")

    CloseEditor.MouseButton1Down:Connect(function()
        editor.Visible = false
    end)

    local FileName = editor:WaitForChild("TopBar"):WaitForChild("Other"):WaitForChild("FileName")
    local Title = editor:WaitForChild("TopBar"):WaitForChild("title")
    local cache = {}
    local GetDebugId = game.GetDebugId
    local dragger = {}
    do
        local mouse = game:GetService("Players").LocalPlayer:GetMouse()
        local inputService = game:GetService("UserInputService")
        local heartbeat = game:GetService("RunService").Heartbeat
        function dragger.new(frame)
            frame.Draggable = false
            local s, event = pcall(function()
                return frame.MouseEnter
            end)
            if s then
                frame.Active = true
                event:connect(function()
                    local input = frame.InputBegan:connect(function(key)
                        if key.UserInputType == Enum.UserInputType.MouseButton1 then
                            local objectPosition = Vector2.new(mouse.X - frame.AbsolutePosition.X,
                                mouse.Y - frame.AbsolutePosition.Y)
                            while heartbeat:wait() and
                                inputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
                                pcall(function()
                                    frame.Position = UDim2.new(0, mouse.X - objectPosition.X +
                                        (frame.Size.X.Offset * frame.AnchorPoint.X), 0, mouse.Y - objectPosition.Y +
                                        (frame.Size.Y.Offset * frame.AnchorPoint.Y))
                                end)
                            end
                        end
                    end)
                    local leave
                    leave = frame.MouseLeave:connect(function()
                        input:disconnect()
                        leave:disconnect()
                    end)
                end)
            end
        end
    end
    dragger.new(editor)
    local newline, tab = "\n", "\t"
    local TabText = (" "):rep(4)
    local min, max, floor, ceil = math.min, math.max, math.floor, math.ceil
    local sub, gsub, match, gmatch, find = string.sub, string.gsub, string.match, string.gmatch, string.find
    local toNumber = tonumber
    local udim2 = UDim2.new
    local newInst = Instance.new
    local SplitCacheResult, SplitCacheStr, SplitCacheDel
    function Split(str, del)
        if SplitCacheStr == str and SplitCacheDel == del then
            return SplitCacheResult
        end
        local res = {}
        if #del == 0 then
            for i in gmatch(str, ".") do
                res[#res + 1] = i
            end
        else
            local i = 0
            local Si = 1
            local si
            str = str .. del
            while i do
                si, Si, i = i, find(str, del, i + 1, true)
                if i == nil then
                    return res
                end
                res[#res + 1] = sub(str, si + 1, Si - 1)
            end
        end
        SplitCacheResult, SplitCacheStr, SplitCacheDel = res, str, del
        return res
    end
    local Place = {}
    function Place.new(X, Y)
        return {
            X = X,
            Y = Y
        }
    end
    local Lexer
    do
        local find, match, rep, sub = string.find, string.match, string.rep, string.sub
        local lua_builtin = {"assert", "collectgarbage", "error", "_G", "gcinfo", "getfenv", "getmetatable", "ipairs",
                             "loadstring", "newproxy", "next", "pairs", "pcall", "print", "rawequal", "rawget",
                             "rawset", "select", "setfenv", "setmetatable", "tonumber", "tostring", "type", "unpack",
                             "_VERSION", "xpcall", "delay", "elapsedTime", "require", "spawn", "tick", "time", "typeof",
                             "UserSettings", "wait", "warn", "game", "Enum", "script", "shared", "workspace", "Axes",
                             "BrickColor", "CFrame", "Color3", "ColorSequence", "ColorSequenceKeypoint", "Faces",
                             "Instance", "NumberRange", "NumberSequence", "NumberSequenceKeypoint",
                             "PhysicalProperties", "Random", "Ray", "Rect", "Region3", "Region3int16", "TweenInfo",
                             "UDim", "UDim2", "Vector2", "Vector3", "Vector3int16", "next", "os", "os.time", "os.date",
                             "os.difftime", "debug", "debug.traceback", "debug.profilebegin", "debug.profileend",
                             "math", "math.abs", "math.acos", "math.asin", "math.atan", "math.atan2", "math.ceil",
                             "math.clamp", "math.cos", "math.cosh", "math.deg", "math.exp", "math.floor", "math.fmod",
                             "math.frexp", "math.ldexp", "math.log", "math.log10", "math.max", "math.min", "math.modf",
                             "math.noise", "math.pow", "math.rad", "math.random", "math.randomseed", "math.sign",
                             "math.sin", "math.sinh", "math.sqrt", "math.tan", "math.tanh", "coroutine",
                             "coroutine.create", "coroutine.resume", "coroutine.running", "coroutine.status",
                             "coroutine.wrap", "coroutine.yield", "string", "string.byte", "string.char", "string.dump",
                             "string.find", "string.format", "string.len", "string.lower", "string.match", "string.rep",
                             "string.reverse", "string.sub", "string.upper", "string.gmatch", "string.gsub", "table",
                             "table.concat", "table.insert", "table.remove", "table.sort"}
        local Keywords = {
            ["and"] = true,
            ["break"] = true,
            ["do"] = true,
            ["else"] = true,
            ["elseif"] = true,
            ["end"] = true,
            ["false"] = true,
            ["for"] = true,
            ["function"] = true,
            ["if"] = true,
            ["in"] = true,
            ["local"] = true,
            ["nil"] = true,
            ["not"] = true,
            ["or"] = true,
            ["repeat"] = true,
            ["return"] = true,
            ["then"] = true,
            ["true"] = true,
            ["until"] = true,
            ["while"] = true,
            ["self"] = true
        }
        local Tokens = {
            Comment = 1,
            Keyword = 2,
            Number = 3,
            Operator = 4,
            String = 5,
            Identifier = 6,
            Builtin = 7,
            Symbol = 19400
        }
        local Stream
        do
            local sub, newline = string.sub, "\n"
            function Stream(Input, FileName)
                local Index = 1
                local Line = 1
                local Column = 0
                FileName = FileName or "{none}"
                local cols = {}
                local function Back()
                    Index = Index - 1
                    local Char = sub(Input, Index, Index)
                    if Char == newline then
                        Line = Line - 1
                        Column = cols[#cols]
                        cols[#cols] = nil
                    else
                        Column = Column - 1
                    end
                end
                local function Next()
                    local Char = sub(Input, Index, Index)
                    Index = Index + 1
                    if Char == newline then
                        Line = Line + 1
                        cols[#cols + 1] = Column
                        Column = 0
                    else
                        Column = Column + 1
                    end
                    return Char, {
                        Index = Index,
                        Line = Line,
                        Column = Column,
                        File = FileName
                    }
                end
                local function Peek(length)
                    return sub(Input, Index, Index + (length or 1) - 1)
                end
                local function EOF()
                    return Index > #Input
                end
                local function Fault(Error)
                    error(Error .. " (col " .. Column .. ", ln " .. Line .. ", file " .. FileName .. ")", 0)
                end
                return {
                    Back = Back,
                    Next = Next,
                    Peek = Peek,
                    EOF = EOF,
                    Fault = Fault
                }
            end
        end
        local idenCheck, numCheck, opCheck = "abcdefghijklmnopqrstuvwxyz_", "0123456789", "+-*/%^#~=<>(){}[];:,."
        local blank, dot, equal, openbrak, closebrak, newline, backslash, dash, quote, apos = "", ".", "=", "[", "]",
            "\n", "\\", "-", '"', "'"
        function Lexer(Code)
            local Input = Stream(Code)
            local Current, LastToken, self
            local Clone = function(Table)
                local R = {}
                for K, V in pairs(Table) do
                    R[K] = V
                end
                return R
            end
            for Key, Value in pairs(Clone(Tokens)) do
                Tokens[Value] = Key
            end
            local function Check(Value, Type, Start)
                if Type == Tokens.Identifier then
                    return find(idenCheck, Value:lower(), 1, true) ~= nil or not Start and
                               find(numCheck, Value, 1, true) ~= nil
                elseif Type == Tokens.Keyword then
                    if Keywords[Value] then
                        return true
                    end
                    return false
                elseif Type == Tokens.Number then
                    if Value == "." and not Start then
                        return true
                    end
                    return find(numCheck, Value, 1, true) ~= nil
                elseif Type == Tokens.Operator then
                    return find(opCheck, Value, 1, true) ~= nil
                end
            end
            local function Next()
                if Current ~= nil then
                    local Token = Current
                    Current = nil
                    return Token
                end
                if Input.EOF() then
                    return nil
                end
                local Char, DebugInfo = Input.Next()
                local Result = {
                    Type = Tokens.Symbol
                }
                local sValue = Char
                for i = 0, 256 do
                    local open = openbrak .. rep(equal, i) .. openbrak
                    if Char .. Input.Peek(#open - 1) == open then
                        self.StringDepth = i + 1
                        break
                    end
                end
                local resulting = false
                if 0 < self.StringDepth then
                    local closer = closebrak .. rep(equal, self.StringDepth - 1) .. closebrak
                    Input.Back()
                    local Value = blank
                    while not Input.EOF() and Input.Peek(#closer) ~= closer do
                        Char, DebugInfo = Input.Next()
                        Value = Value .. Char
                    end
                    if Input.Peek(#closer) == closer then
                        for i = 1, #closer do
                            Value = Value .. Input.Next()
                        end
                        self.StringDepth = 0
                    end
                    Result.Value = Value
                    Result.Type = Tokens.String
                    resulting = true
                elseif 0 < self.CommentDepth then
                    local closer = closebrak .. rep(equal, self.CommentDepth - 1) .. closebrak
                    Input.Back()
                    local Value = blank
                    while not Input.EOF() and Input.Peek(#closer) ~= closer do
                        Char, DebugInfo = Input.Next()
                        Value = Value .. Char
                    end
                    if Input.Peek(#closer) == closer then
                        for i = 1, #closer do
                            Value = Value .. Input.Next()
                        end
                        self.CommentDepth = 0
                    end
                    Result.Value = Value
                    Result.Type = Tokens.Comment
                    resulting = true
                end
                local skip = 1
                for i = 1, #lua_builtin do
                    local k = lua_builtin[i]
                    if Input.Peek(#k - 1) == sub(k, 2) and Char == sub(k, 1, 1) and skip < #k then
                        Result.Type = Tokens.Builtin
                        Result.Value = k
                        skip = #k
                        resulting = true
                    end
                end
                for i = 1, skip - 1 do
                    Char, DebugInfo = Input.Next()
                end
                if resulting then
                elseif Check(Char, Tokens.Identifier, true) then
                    local Value = Char
                    while Check(Input.Peek(), Tokens.Identifier) and not Input.EOF() do
                        Value = Value .. Input.Next()
                    end
                    if Check(Value, Tokens.Keyword) then
                        Result.Type = Tokens.Keyword
                    else
                        Result.Type = Tokens.Identifier
                    end
                    Result.Value = Value
                elseif Char == dash and Input.Peek() == dash then
                    local Value = Char .. Input.Next()
                    for i = 0, 256 do
                        local open = openbrak .. rep(equal, i) .. openbrak
                        if Input.Peek(#open) == open then
                            self.CommentDepth = i + 1
                            break
                        end
                    end
                    if 0 < self.CommentDepth then
                        local closer = closebrak .. rep(equal, self.CommentDepth - 1) .. closebrak
                        while not Input.EOF() and Input.Peek(#closer) ~= closer do
                            Char, DebugInfo = Input.Next()
                            Value = Value .. Char
                        end
                        if Input.Peek(#closer) == closer then
                            for i = 1, #closer do
                                Value = Value .. Input.Next()
                            end
                            self.CommentDepth = 0
                        end
                    else
                        while not Input.EOF() and not find(newline, Char, 1, true) do
                            Char, DebugInfo = Input.Next()
                            Value = Value .. Char
                        end
                    end
                    Result.Value = Value
                    Result.Type = Tokens.Comment
                elseif Check(Char, Tokens.Number, true) or Char == dot and Check(Input.Peek(), Tokens.Number, true) then
                    local Value = Char
                    while Check(Input.Peek(), Tokens.Number) and not Input.EOF() do
                        Value = Value .. Input.Next()
                    end
                    Result.Value = Value
                    Result.Type = Tokens.Number
                elseif Char == quote then
                    local Escaped = false
                    local String = blank
                    Result.Value = quote
                    while not Input.EOF() do
                        local Char = Input.Next()
                        Result.Value = Result.Value .. Char
                        if Escaped then
                            String = String .. Char
                            Escaped = false
                        elseif Char == backslash then
                            Escaped = true
                        elseif Char == quote or Char == newline then
                            break
                        else
                            String = String .. Char
                        end
                    end
                    Result.Type = Tokens.String
                elseif Char == apos then
                    local Escaped = false
                    local String = blank
                    Result.Value = apos
                    while not Input.EOF() do
                        local Char = Input.Next()
                        Result.Value = Result.Value .. Char
                        if Escaped then
                            String = String .. Char
                            Escaped = false
                        elseif Char == backslash then
                            Escaped = true
                        elseif Char == apos or Char == newline then
                            break
                        else
                            String = String .. Char
                        end
                    end
                    Result.Type = Tokens.String
                elseif Check(Char, Tokens.Operator) then
                    Result.Value = Char
                    Result.Type = Tokens.Operator
                else
                    Result.Value = Char
                end
                Result.TypeName = Tokens[Result.Type]
                LastToken = Result
                return Result
            end
            local function Peek()
                local Result = Next()
                Current = Result
                return Result
            end
            local function EOF()
                return Peek() == nil
            end
            local function GetLast()
                return LastToken
            end
            self = {
                Next = Next,
                Peek = Peek,
                EOF = EOF,
                GetLast = GetLast,
                CommentDepth = 0,
                StringDepth = 0
            }
            return self
        end
    end
    function Place.fromIndex(CodeEditor, Index)
        local cache = CodeEditor.PlaceCache
        local fromCache
        if cache.fromIndex then
            fromCache = cache.fromIndex
        else
            fromCache = {}
            cache.fromIndex = fromCache
        end
        if fromCache[Index] then
        end
        local Content = CodeEditor.Content
        local ContentUpto = sub(Content, 1, Index)
        if Index == 0 then
            return Place.new(0, 0)
        end
        local Lines = Split(ContentUpto, newline)
        local res = Place.new(#gsub(Lines[#Lines], tab, TabText), #Lines - 1)
        fromCache[Index] = res
        return res
    end
    function Place.toIndex(CodeEditor, Place)
        local cache = CodeEditor.PlaceCache
        local toCache
        if cache.toIndex then
            toCache = cache.toIndex
        else
            toCache = {}
            cache.toIndex = toCache
        end
        local Content = CodeEditor.Content
        if Place.X == 0 and Place.Y == 0 then
            return 0
        end
        local Lines = CodeEditor.Lines
        local Index = 0
        for I = 1, Place.Y do
            Index = Index + #Lines[I] + 1
        end
        local line = Lines[Place.Y + 1]
        local roundedX = Place.X
        local ix = 0
        for i = 1, #line do
            local c = sub(line, i, i)
            local pix = ix
            if c == tab then
                ix = ix + #TabText
            else
                ix = ix + 1
            end
            if Place.X == ix then
                roundedX = i
            elseif pix < Place.X and ix > Place.X then
                if Place.X - pix < ix - Place.X then
                    roundedX = i - 1
                else
                    roundedX = i
                end
            end
        end
        local res = Index + min(#line, roundedX)
        toCache[Place.X .. "-$-" .. Place.Y] = res
        return res
    end
    local Selection = {}
    local Side = {
        Left = 1,
        Right = 2
    }
    function Selection.new(Start, End, CaretSide)
        return {
            Start = Start,
            End = End,
            Side = CaretSide
        }
    end
    local Themes = {
        Plain = {
            LineSelection = Color3.fromRGB(46, 46, 46),
            SelectionBackground = Color3.fromRGB(118, 118, 118),
            SelectionColor = Color3.fromRGB(10, 10, 10),
            SelectionGentle = Color3.fromRGB(46, 46, 46),
            Background = Color3.fromRGB(40, 41, 35),
            Comment = Color3.fromRGB(117, 113, 94),
            Keyword = Color3.fromRGB(249, 38, 114),
            Builtin = Color3.fromRGB(83, 220, 205),
            Number = Color3.fromRGB(174, 129, 255),
            Operator = Color3.fromRGB(182, 151, 135),
            String = Color3.fromRGB(230, 219, 116),
            Text = Color3.fromRGB(255, 255, 255),
            SelectionBackground = Color3.fromRGB(150, 150, 150),
            SelectionColor = Color3.fromRGB(0, 0, 0),
            SelectionGentle = Color3.fromRGB(65, 65, 65)
        }
    }
    local EditorLib = {}
    EditorLib.Place = Place
    EditorLib.Selection = Selection
    function EditorLib.NewTheme(Name, Theme)
        Themes[Name] = Theme
    end
    local TextCursor = {
        Image = "rbxassetid://1188942192",
        HotspotX = 3,
        HotspotY = 8,
        Size = udim2(0, 7, 0, 17)
    }
    function EditorLib.Initialize(Frame, Options)
        local themestuff = {}
        local function ThemeSet(obj, prop, val)
            themestuff[obj] = themestuff[obj] or {}
            themestuff[obj][prop] = val
        end
        local baseZIndex = Frame.ZIndex
        Options.CaretBlinkingRate = toNumber(Options.CaretBlinkingRate) or 0.25
        Options.FontSize = toNumber(Options.FontSize or Options.TextSize) or 14
        Options.CaretFocusedOpacity = toNumber(Options.CaretOpacity and Options.CaretOpacity.Focused or
                                                   Options.CaretFocusedOpacity) or 1
        Options.CaretUnfocusedOpacity = toNumber(Options.CaretOpacity and Options.CaretOpacity.Unfocused or
                                                     Options.CaretUnfocusedOpacity) or 0
        Options.Theme = type(Options.Theme) == "string" and Options.Theme or "Plain"
        local SizeDot = game:GetService("TextService"):GetTextSize(".", Options.FontSize, Options.Font,
            Vector2.new(1000, 1000))
        local SizeM = game:GetService("TextService"):GetTextSize("m", Options.FontSize, Options.Font,
            Vector2.new(1000, 1000))
        local SizeAV = game:GetService("TextService"):GetTextSize("AV", Options.FontSize, Options.Font,
            Vector2.new(1000, 1000))
        local Editor = {
            Content = "",
            Lines = {""},
            Focused = false,
            PlaceCache = {},
            Selection = Selection.new(0, 0, Side.Left),
            StartingSelection = Selection.new(0, 0, Side.Left),
            LastKeyCode = false,
            UndoStack = {},
            RedoStack = {}
        }
        local CharWidth = SizeM.X
        local CharHeight = SizeM.Y + 4
        if (SizeDot.X ~= SizeM.X or SizeDot.Y ~= SizeM.Y) and SizeAV.X ~= SizeM.X + SizeDot.X then
            return error("CodeEditor requires a monospace font with no currying", 2)
        end
        local ContentChangedEvent = newInst("BindableEvent")
        local FocusLostEvent = newInst("BindableEvent")
        local PlayerGui = game:GetService("Players").LocalPlayer:FindFirstChildOfClass("PlayerGui")
        local Container = newInst("Frame")
        Container.Name = "Container"
        Container.BorderSizePixel = 0
        Container.BackgroundColor3 = Themes[Options.Theme].Background
        ThemeSet(Container, "BackgroundColor3", "Background")
        Container.Size = udim2(1, 0, 1, 0)
        Container.ClipsDescendants = true
        local GutterSize = CharWidth * 4
        local TextArea = newInst("ScrollingFrame")
        TextArea.Name = "TextArea"
        TextArea.BackgroundTransparency = 1
        TextArea.BorderSizePixel = 0
        TextArea.Size = udim2(1, -GutterSize, 1, 0)
        TextArea.Position = udim2(0, GutterSize, 0, 0)
        TextArea.ScrollBarThickness = 10
        TextArea.ScrollBarImageTransparency = 0
        TextArea.ScrollBarImageColor3 = Color3.fromRGB(20, 20, 20)
        TextArea.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
        TextArea.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
        TextArea.ZIndex = 3
        local Gutter = newInst("Frame")
        Gutter.Name = "Gutter"
        Gutter.ZIndex = baseZIndex
        Gutter.BorderSizePixel = 0
        Gutter.BackgroundTransparency = 0.96
        Gutter.Size = udim2(0, GutterSize - 5, 1.5, 0)
        local GoodMouseDetector = newInst("TextButton")
        GoodMouseDetector.Text = ""
        GoodMouseDetector.BackgroundTransparency = 1
        GoodMouseDetector.Size = udim2(1, 0, 1, 0)
        GoodMouseDetector.Position = udim2(0, 0, 0, 0)
        GoodMouseDetector.Visible = false
        local Mouse = game:GetService("Players").LocalPlayer:GetMouse()
        local Scroll = newInst("TextButton")
        Scroll.Name = "VertScroll"
        Scroll.Size = udim2(0, 10, 1, 0)
        Scroll.Position = udim2(1, -10, 0, 0)
        Scroll.BackgroundTransparency = 1
        Scroll.Text = ""
        Scroll.ZIndex = 1000
        Scroll.Parent = Container
        local ScrollBar = newInst("TextButton")
        ScrollBar.Name = "ScrollBar"
        ScrollBar.Size = udim2(1, 0, 0, 36)
        ScrollBar.Position = udim2(0, 0, 0, 0)
        ScrollBar.Text = ""
        ScrollBar.BackgroundColor3 = Themes[Options.Theme].ScrollBar or Color3.fromRGB(120, 120, 120)
        ScrollBar.BackgroundTransparency = 0.75
        ScrollBar.BorderSizePixel = 0
        ScrollBar.AutoButtonColor = false
        ScrollBar.ZIndex = 3 + baseZIndex
        ScrollBar.Parent = Scroll
        local CaretIndicator = newInst("Frame")
        CaretIndicator.Name = "CaretIndicator"
        CaretIndicator.Size = udim2(1, 0, 0, 2)
        CaretIndicator.Position = udim2(0, 0, 0, 0)
        CaretIndicator.BorderSizePixel = 0
        CaretIndicator.BackgroundColor3 = Themes[Options.Theme].Text
        ThemeSet(CaretIndicator, "BackgroundColor3", "Text")
        CaretIndicator.BackgroundTransparency = 0.29803921568627456
        CaretIndicator.ZIndex = 4 + baseZIndex
        CaretIndicator.Parent = Scroll
        local MarkersFolder = newInst("Folder", Scroll)
        local markers = {}
        local updateMarkers
        do
            local lerp = function(a, b, r)
                return a + r * (b - a)
            end
            function updateMarkers()
                MarkersFolder:ClearAllChildren()
                local ra = Themes[Options.Theme].Background.r
                local ga = Themes[Options.Theme].Background.g
                local ba = Themes[Options.Theme].Background.b
                local rb = Themes[Options.Theme].Text.r
                local gb = Themes[Options.Theme].Text.g
                local bb = Themes[Options.Theme].Text.b
                local r = lerp(ra, rb, 0.2980392156862745)
                local g = lerp(ga, gb, 0.2980392156862745)
                local b = lerp(ba, bb, 0.2980392156862745)
                local color = Color3.new(r, g, b)
                for i, v in ipairs(markers) do
                    local Marker = newInst("Frame")
                    Marker.BorderSizePixel = 0
                    Marker.BackgroundColor3 = color
                    Marker.Size = udim2(0, 4, 0, 6)
                    Marker.Position = udim2(0, 4, v * CharHeight / TextArea.CanvasSize.Y.Offset, 0)
                    Marker.ZIndex = 4 + baseZIndex
                    Marker.Parent = MarkersFolder
                end
            end
        end
        do
            TextArea.Changed:Connect(function(property)
                if property == "CanvasSize" or property == "CanvasPosition" then
                    Gutter.Position = udim2(0, 0, 0, -TextArea.CanvasPosition.Y)
                end
            end)
        end
        local ScrollBorder = newInst("Frame")
        ScrollBorder.Name = "ScrollBorder"
        ScrollBorder.Position = udim2(0, -1, 0, 0)
        ScrollBorder.Size = udim2(0, 1, 1, 0)
        ScrollBorder.BorderSizePixel = 0
        ScrollBorder.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
        ScrollBorder.Parent = Scroll
        do
            TextArea.Changed:Connect(function(property)
                if property == "CanvasSize" or property == "CanvasPosition" then
                    local percent = TextArea.AbsoluteWindowSize.X / TextArea.CanvasSize.X.Offset
                    ScrollBar.Size = udim2(percent, 0, 1, 0)
                    local max = max(TextArea.CanvasSize.X.Offset - TextArea.AbsoluteWindowSize.X, 0)
                    local percent = max == 0 and 0 or TextArea.CanvasPosition.X / max
                    local x = percent * (Scroll.AbsoluteSize.X - ScrollBar.AbsoluteSize.X)
                    ScrollBar.Position = udim2(0, x, 0, 0)
                    Scroll.Visible = false
                end
            end)
        end
        local LineSelection = newInst("Frame")
        LineSelection.Name = "LineSelection"
        LineSelection.BackgroundColor3 = Themes[Options.Theme].Background
        ThemeSet(LineSelection, "BackgroundColor3", "Background")
        LineSelection.BorderSizePixel = 2
        LineSelection.BorderColor3 = Themes[Options.Theme].LineSelection
        ThemeSet(LineSelection, "BorderColor3", "LineSelection")
        LineSelection.Size = udim2(1, -4, 0, CharHeight - 4)
        LineSelection.Position = udim2(0, 2, 0, 2)
        LineSelection.ZIndex = -1 + baseZIndex
        LineSelection.Parent = TextArea
        LineSelection.Visible = false
        local ErrorHighlighter = newInst("Frame")
        ErrorHighlighter.Name = "ErrorHighlighter"
        ErrorHighlighter.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
        ErrorHighlighter.BackgroundTransparency = 0.9
        ErrorHighlighter.BorderSizePixel = 0
        ErrorHighlighter.Size = udim2(1, -4, 0, CharHeight - 4)
        ErrorHighlighter.Position = udim2(0, 2, 0, 2)
        ErrorHighlighter.ZIndex = 5 + baseZIndex
        ErrorHighlighter.Visible = false
        ErrorHighlighter.Parent = TextArea
        local ErrorMessage = newInst("TextLabel")
        ErrorMessage.Name = "ErrorMessage"
        ErrorMessage.BackgroundColor3 = Themes[Options.Theme].Background:lerp(Color3.new(1, 1, 1), 0.1)
        ErrorMessage.TextColor3 = Color3.fromRGB(255, 152, 152)
        ErrorMessage.BorderSizePixel = 0
        ErrorMessage.Visible = false
        ErrorMessage.Size = udim2(0, 150, 0, CharHeight - 4)
        ErrorMessage.Position = udim2(0, 2, 0, 2)
        ErrorMessage.ZIndex = 6 + baseZIndex
        ErrorMessage.Parent = Container
        local Tokens = newInst("Frame", TextArea)
        Tokens.BackgroundTransparency = 1
        Tokens.Name = "Tokens"
        local Selection = newInst("Frame", TextArea)
        Selection.BackgroundTransparency = 1
        Selection.Name = "Selection"
        Selection.ZIndex = baseZIndex
        local TextBox = newInst("TextBox")
        TextBox.BackgroundTransparency = 1
        TextBox.Size = udim2(0, 0, 0, 0)
        TextBox.Position = udim2(-1, 0, -1, 0)
        TextBox.Text = ""
        TextBox.ShowNativeInput = false
        TextBox.MultiLine = true
        TextBox.ClearTextOnFocus = true
        local Caret = newInst("Frame")
        Caret.Name = "Caret"
        Caret.BorderSizePixel = 0
        Caret.BackgroundColor3 = Themes[Options.Theme].Text
        ThemeSet(Caret, "BackgroundColor3", "Text")
        Caret.Size = udim2(0, 2, 0, CharHeight)
        Caret.Position = udim2(0, 0, 0, 0)
        Caret.ZIndex = 100
        Caret.Visible = false
        local selectedword
        local tokens = {}
        local function NewToken(Content, Color, Position, Parent)
            local Token = newInst("TextLabel")
            Token.BorderSizePixel = 0
            Token.TextColor3 = Themes[Options.Theme][Color]
            Token.BackgroundTransparency = 1
            Token.BackgroundColor3 = Themes[Options.Theme].SelectionGentle
            if Content == selectedword then
                Token.BackgroundTransparency = 0
            end
            Token.Size = udim2(0, CharWidth * #Content, 0, CharHeight)
            Token.Position = udim2(0, Position.X * CharWidth, 0, Position.Y * CharHeight)
            Token.Font = Options.Font
            Token.TextSize = Options.FontSize
            Token.Text = Content
            Token.TextXAlignment = "Left"
            Token.ZIndex = baseZIndex
            Token.Parent = Parent
            tokens[#tokens + 1] = Token
        end
        local function updateselected()
            for i, v in ipairs(tokens) do
                if v.Text == selectedword then
                    v.BackgroundTransparency = 0
                else
                    v.BackgroundTransparency = 1
                end
            end
            markers = {}
            if selectedword and selectedword ~= "" and selectedword ~= tab then
                for LineNumber = 1, #Editor.Lines do
                    local line = Editor.Lines[LineNumber]
                    local Dnable = "[^A-Za-z0-9_]"
                    local has = false
                    if sub(line, 1, #selectedword) == selectedword then
                        has = true
                    elseif sub(line, #line - #selectedword + 1) == selectedword then
                        has = true
                    elseif line:match(Dnable .. gsub(selectedword, "%W", "%%%1") .. Dnable) then
                        has = true
                    end
                    if has then
                        markers[#markers + 1] = LineNumber - 1
                    end
                end
            end
            updateMarkers()
        end
        local DrawnLines = {}
        local depth = {}
        local sdepth = {}
        local function DrawTokens()
            local LineBegin = floor(TextArea.CanvasPosition.Y / CharHeight)
            local LineEnd = ceil((TextArea.CanvasPosition.Y + TextArea.AbsoluteWindowSize.Y) / CharHeight)
            LineEnd = min(LineEnd, #Editor.Lines)
            for LineNumber = 1, LineBegin - 1 do
                if not depth[LineNumber] then
                    local line = Editor.Lines[LineNumber] or ""
                    if line:match("%[%=+%[") or line:match("%]%=+%]") then
                        local LexerStream = Lexer(line)
                        LexerStream.CommentDepth = depth[LineNumber - 1] or 0
                        LexerStream.StringDepth = sdepth[LineNumber - 1] or 0
                        while not LexerStream.EOF() do
                            LexerStream.Next()
                        end
                        sdepth[LineNumber] = LexerStream.StringDepth
                        depth[LineNumber] = LexerStream.CommentDepth
                    else
                        sdepth[LineNumber] = sdepth[LineNumber - 1] or 0
                        depth[LineNumber] = depth[LineNumber - 1] or 0
                    end
                end
            end
            for LineNumber = LineBegin, LineEnd do
                if not DrawnLines[LineNumber] then
                    DrawnLines[LineNumber] = true
                    local X, Y = 0, LineNumber - 1
                    local LineLabel = newInst("TextLabel")
                    LineLabel.BorderSizePixel = 0
                    LineLabel.TextColor3 = Color3.fromRGB(144, 145, 139)
                    LineLabel.BackgroundTransparency = 1
                    LineLabel.Size = udim2(1, 0, 0, CharHeight)
                    LineLabel.Position = udim2(0, 0, 0, Y * CharHeight)
                    LineLabel.Font = Options.Font
                    LineLabel.TextSize = Options.FontSize
                    LineLabel.TextXAlignment = Enum.TextXAlignment.Right
                    LineLabel.Text = LineNumber
                    LineLabel.Parent = Gutter
                    LineLabel.ZIndex = baseZIndex
                    if Editor.Lines[Y + 1] then
                        local LexerStream = Lexer(Editor.Lines[Y + 1])
                        LexerStream.CommentDepth = depth[LineNumber - 1] or 0
                        LexerStream.StringDepth = sdepth[LineNumber - 1] or 0
                        while not LexerStream.EOF() do
                            local Token = LexerStream.Next()
                            local Value = Token.Value
                            local TokenType = Token.TypeName
                            if TokenType == "Identifier" or TokenType == "Symbol" then
                                TokenType = "Text"
                            end
                            if (" \t\r\n"):find(Value, 1, true) == nil then
                                NewToken(gsub(Value, tab, TabText), TokenType, Place.new(X, Y), Tokens)
                            end
                            X = X + #gsub(Value, tab, TabText)
                        end
                        depth[LineNumber] = LexerStream.CommentDepth
                        sdepth[LineNumber] = LexerStream.StringDepth
                    end
                end
            end
        end
        TextArea.Changed:Connect(function(Property)
            if Property == "CanvasPosition" or Property == "AbsoluteWindowSize" then
                DrawTokens()
            end
        end)
        local function ClearTokensAndSelection()
            depth = {}
            Tokens:ClearAllChildren()
            Selection:ClearAllChildren()
            Gutter:ClearAllChildren()
        end
        local function Write(Content, Start, End)
            local InBetween = sub(Editor.Content, Start + 1, End)
            local NoLN = find(InBetween, newline, 1, true) == nil and find(Content, newline, 1, true) == nil
            local StartPlace, EndPlace
            if NoLN then
                StartPlace, EndPlace = Place.fromIndex(Editor, Start), Place.fromIndex(Editor, End)
            end
            Editor.Content = sub(Editor.Content, 1, Start) .. Content .. sub(Editor.Content, End + 1)
            ContentChangedEvent:Fire(Editor.Content)
            Editor.PlaceCache = {}
            local CanvasWidth = TextArea.CanvasSize.X.Offset - 14
            Editor.Lines = Split(Editor.Content, newline)
            for _, Res in ipairs(Editor.Lines) do
                local width = #gsub(Res, tab, TabText) * CharWidth
                if CanvasWidth < width then
                    CanvasWidth = width
                end
            end
            ClearTokensAndSelection()
            TextArea.CanvasSize = udim2(0, 3000, 0, select(2, gsub(Editor.Content, newline, "")) * CharHeight +
                TextArea.AbsoluteWindowSize.Y)
            DrawnLines = {}
            DrawTokens()
        end
        local function SetContent(Content)
            Editor.Content = Content
            ContentChangedEvent:Fire(Editor.Content)
            Editor.PlaceCache = {}
            Editor.Lines = Split(Editor.Content, newline)
            ClearTokensAndSelection()
            local CanvasWidth = TextArea.CanvasSize.X.Offset - 14
            for _, Res in ipairs(Editor.Lines) do
                if CanvasWidth < #Res then
                    CanvasWidth = #Res * CharWidth
                end
            end
            TextArea.CanvasSize = udim2(0, 3000, 0, select(2, gsub(Editor.Content, newline, "")) * CharHeight +
                TextArea.AbsoluteWindowSize.Y)
            DrawnLines = {}
            DrawTokens()
        end
        local function UpdateSelection()
            Selection:ClearAllChildren()
            if Themes[Options.Theme].SelectionColor then
                Selection.ZIndex = 2 + baseZIndex
                Tokens.ZIndex = 1 + baseZIndex
            else
                Selection.ZIndex = 1 + baseZIndex
                Tokens.ZIndex = 2 + baseZIndex
            end
            if Editor.Selection.Start == Editor.Selection.End then
                LineSelection.Visible = true
                local CaretPlace = Place.fromIndex(Editor, Editor.Selection.Start)
                LineSelection.Position = UDim2.new(0, 2, 0, CharHeight * CaretPlace.Y + 2)
            else
                LineSelection.Visible = false
            end
            local Index = 0
            local Start = #gsub(sub(Editor.Content, 1, Editor.Selection.Start), tab, TabText)
            local End = #gsub(sub(Editor.Content, 1, Editor.Selection.End), tab, TabText)
            for LineNumber, Line in ipairs(Editor.Lines) do
                Line = gsub(Line, tab, TabText)
                local StartX = Start - Index
                local EndX = End - Index
                local Y = LineNumber - 1
                local GoesOverLine = false
                if StartX < 0 then
                    StartX = 0
                end
                if EndX > #Line then
                    GoesOverLine = true
                    EndX = #Line
                end
                local Width = EndX - StartX
                if GoesOverLine then
                    Width = Width + 0.5
                end
                if Width > 0 then
                    local color = Themes[Options.Theme].SelectionColor
                    local SelectionSegment = newInst(color and "TextLabel" or "Frame")
                    SelectionSegment.BorderSizePixel = 0
                    if color then
                        SelectionSegment.TextColor3 = color
                        SelectionSegment.Font = Options.Font
                        SelectionSegment.TextSize = Options.FontSize
                        SelectionSegment.Text = sub(Line, StartX + 1, EndX)
                        SelectionSegment.TextXAlignment = "Left"
                        SelectionSegment.ZIndex = baseZIndex
                    else
                        SelectionSegment.BorderSizePixel = 0
                    end
                    SelectionSegment.BackgroundColor3 = Themes[Options.Theme].SelectionBackground
                    SelectionSegment.Size = udim2(0, CharWidth * Width, 0, CharHeight)
                    SelectionSegment.Position = udim2(0, StartX * CharWidth, 0, Y * CharHeight)
                    SelectionSegment.Parent = Selection
                end
                Index = Index + #Line + 1
            end
            local NewY = Caret.Position.Y.Offset
            local MinBoundsY = TextArea.CanvasPosition.Y
            local MaxBoundsY = TextArea.CanvasPosition.Y + TextArea.AbsoluteWindowSize.Y - CharHeight
            if NewY < MinBoundsY then
                TextArea.CanvasPosition = Vector2.new(0, NewY)
            end
            if NewY > MaxBoundsY then
                TextArea.CanvasPosition = Vector2.new(0, NewY - TextArea.AbsoluteWindowSize.Y + CharHeight)
            end
        end
        TextBox.Parent = TextArea
        Caret.Parent = TextArea
        TextArea.Parent = Container
        Gutter.Parent = Container
        Container.Parent = Frame
        local function updateCaret(CaretPlace)
            Caret.Position = udim2(0, CaretPlace.X * CharWidth, 0, CaretPlace.Y * CharHeight)
            local percent = CaretPlace.Y * CharHeight / TextArea.CanvasSize.Y.Offset
            CaretIndicator.Position = udim2(0, 0, percent, -1)
        end
        local PressedKey, WorkingKey, LeftShift, RightShift, Shift, LeftCtrl, RightCtrl, Ctrl
        local UIS = game:GetService("UserInputService")
        local MovementTimeout = tick()
        local BeginSelect, MoveCaret
        local function SetVisibility(Visible)
            Editor.Visible = Visible
        end
        local function selectWord()
            local Index = Editor.Selection.Start
            if Editor.Selection.Side == Side.Right then
                Index = Editor.Selection.End
            end
            local code = Editor.Content
            local left = max(Index - 1, 0)
            local right = min(Index + 1, #code)
            local Dable = "[A-Za-z0-9_]"
            while left ~= 0 and match(sub(code, left + 1, left + 1), Dable) do
                left = left - 1
            end
            while right ~= #code and match(sub(code, right, right), Dable) do
                right = right + 1
            end
            if not match(sub(code, left + 1, left + 1), Dable) then
                left = left + 1
            end
            if not match(sub(code, right, right), Dable) then
                right = right - 1
            end
            if left < right then
                Editor.Selection.Start = left
                Editor.Selection.End = right
            else
                Editor.Selection.Start = Index
                Editor.Selection.End = Index
            end
        end
        local settledAt
        local lastClick = 0
        local lastCaretPos = 0
        local function PushToUndoStack()
            Editor.UndoStack[#Editor.UndoStack + 1] = {
                Content = Editor.Content,
                Selection = {
                    Start = Editor.Selection.Start,
                    End = Editor.Selection.End,
                    Side = Editor.Selection.Side
                },
                LastKeyCode = false
            }
            if #Editor.RedoStack > 0 then
                Editor.RedoStack = {}
            end
        end
        local function Undo()
            if #Editor.UndoStack > 1 then
                local Thing = Editor.UndoStack[#Editor.UndoStack - 1]
                for Key, Value in pairs(Thing) do
                    Editor[Key] = Value
                end
                Editor.SetContent(Thing.Content)
                Editor.RedoStack[#Editor.RedoStack + 1] = Editor.UndoStack[#Editor.UndoStack]
                Editor.UndoStack[#Editor.UndoStack] = nil
            end
        end
        local function Redo()
            if #Editor.RedoStack > 0 then
                local Thing = Editor.RedoStack[#Editor.RedoStack]
                for Key, Value in pairs(Thing) do
                    Editor[Key] = Value
                end
                Editor.SetContent(Thing.Content)
                Editor.UndoStack[#Editor.UndoStack + 1] = Thing
                Editor.RedoStack[#Editor.RedoStack] = nil
            end
        end
        Mouse.Move:Connect(function()
            if BeginSelect then
                local Index = GetIndexAtMouse()
                if type(BeginSelect) == "number" then
                    BeginSelect = {BeginSelect, BeginSelect}
                end
                Editor.Selection.Start = min(BeginSelect[1], Index)
                Editor.Selection.End = max(BeginSelect[2], Index)
                if Editor.Selection.Start ~= Editor.Selection.End then
                    if Editor.Selection.Start == Index then
                        Editor.Selection.Side = Side.Left
                    else
                        Editor.Selection.Side = Side.Right
                    end
                end
                if BeginSelect[3] then
                    selectWord()
                    Editor.Selection.Start = min(BeginSelect[1], Editor.Selection.Start)
                    Editor.Selection.End = max(BeginSelect[2], Editor.Selection.End)
                end
                local Ind = Editor.Selection.Start
                if Editor.Selection.Side == Side.Right then
                    Ind = Editor.Selection.End
                end
                local CaretPlace = Place.fromIndex(Editor, Ind)
                updateCaret(CaretPlace)
                UpdateSelection()
            end
        end)
        TextBox.Focused:Connect(function()
            Editor.Focused = true
        end)
        TextBox.FocusLost:Connect(function()
            Editor.Focused = false
            FocusLostEvent:Fire()
            PressedKey = nil
            WorkingKey = nil
        end)
        function MoveCaret(Amount)
            local Direction = Amount < 0 and -1 or 1
            if Amount < 0 then
                Amount = -Amount
            end
            for Index = 1, Amount do
                if Direction == -1 then
                    local Start = Editor.Selection.Start
                    local End = Editor.Selection.End
                    if Shift then
                        if Start == End then
                            if Start > 0 then
                                Editor.Selection.Start = Start - 1
                                Editor.Selection.Side = Side.Left
                            end
                        elseif Editor.Selection.Side == Side.Left then
                            if Start > 0 then
                                Editor.Selection.Start = Start - 1
                            end
                        elseif Editor.Selection.Side == Side.Right then
                            Editor.Selection.End = End - 1
                        end
                    elseif Start ~= End then
                        Editor.Selection.End = Start
                    elseif Start > 0 then
                        Editor.Selection.Start = Start - 1
                        Editor.Selection.End = End - 1
                    end
                elseif Direction == 1 then
                    local Start = Editor.Selection.Start
                    local End = Editor.Selection.End
                    if Shift then
                        if Start == End then
                            if Start < #Editor.Content then
                                Editor.Selection.End = End + 1
                                Editor.Selection.Side = Side.Right
                            end
                        elseif Editor.Selection.Side == Side.Left then
                            Editor.Selection.Start = Start + 1
                        elseif Editor.Selection.Side == Side.Right and End < #Editor.Content then
                            Editor.Selection.End = End + 1
                        end
                    elseif Start ~= End then
                        Editor.Selection.Start = End
                    elseif Start < #Editor.Content then
                        Editor.Selection.Start = Start + 1
                        Editor.Selection.End = End + 1
                    end
                end
            end
        end
        local LastKeyCode
        local function ProcessInput(Type, Data)
            MovementTimeout = tick() + 0.25
            if Type == "Control+Key" then
                LastKeyCode = nil
            elseif Type == "KeyPress" then
                local Dat = Data
                if Dat == Enum.KeyCode.Up then
                    Dat = Enum.KeyCode.Down
                end
                if LastKeyCode ~= Dat then
                    Editor.StartingSelection.Start = Editor.Selection.Start
                    Editor.StartingSelection.End = Editor.Selection.End
                    Editor.StartingSelection.Side = Editor.Selection.Side
                end
                LastKeyCode = Dat
            elseif Type == "StringInput" then
                local Start = Editor.Selection.Start
                local End = Editor.Selection.End
                if Data == newline then
                    local CaretPlaceInd = Editor.Selection.Start
                    if Editor.Selection.Side == Side.Right then
                        CaretPlaceInd = Editor.Selection.End
                    end
                    local CaretPlace = Place.fromIndex(Editor, CaretPlaceInd)
                    local CaretLine = Editor.Lines
                    CaretLine = CaretLine[CaretPlace.Y + 1]
                    CaretLine = sub(CaretLine, 1, CaretPlace.X)
                    local TabAmount = 0
                    while sub(CaretLine, TabAmount + 1, TabAmount + 1) == tab do
                        TabAmount = TabAmount + 1
                    end
                    Data = Data .. tab:rep(TabAmount)
                    local SpTabAmount = 0
                    while CaretLine:sub(SpTabAmount + 1, SpTabAmount + 1) == " " do
                        SpTabAmount = SpTabAmount + 1
                    end
                    Data = Data .. gsub((" "):rep(SpTabAmount), TabText, tab)
                    Write(Data, Start, End)
                    Editor.Selection.Start = Start + #Data
                    Editor.Selection.End = Editor.Selection.Start
                    PushToUndoStack()
                elseif Data == tab and Editor.Selection.Start ~= Editor.Selection.End then
                    local lstart = Place.fromIndex(Editor, Editor.Selection.Start)
                    local lend = Place.fromIndex(Editor, Editor.Selection.End)
                    local changes = 0
                    local change1 = 0
                    for i = lstart.Y + 1, lend.Y + 1 do
                        local line = Editor.Lines[i]
                        local change = 0
                        if Shift then
                            if sub(line, 1, 1) == tab then
                                line = sub(line, 2)
                                change = -1
                            end
                        else
                            line = tab .. line
                            change = 1
                        end
                        changes = changes + change
                        if i == lstart.Y + 1 then
                            change1 = change
                        end
                        Editor.Lines[i] = line
                    end
                    SetContent(table.concat(Editor.Lines, newline))
                    Editor.Selection.Start = Editor.Selection.Start + change1
                    Editor.Selection.End = Editor.Selection.End + changes
                    PushToUndoStack()
                else
                    Write(Data, Start, End)
                    Editor.Selection.Start = Start + #Data
                    Editor.Selection.End = Editor.Selection.Start
                    PushToUndoStack()
                end
            end
            local CaretPlaceInd = Editor.Selection.Start
            if Editor.Selection.Side == Side.Right then
                CaretPlaceInd = Editor.Selection.End
            end
            local CaretPlace = Place.fromIndex(Editor, CaretPlaceInd)
            updateCaret(CaretPlace)
            UpdateSelection()
        end
        TextBox:GetPropertyChangedSignal("Text"):Connect(function()
            if TextBox.Text ~= "" then
                ProcessInput("StringInput", (gsub(TextBox.Text, "\r", "")))
                TextBox.Text = ""
            end
        end)
        UIS.InputBegan:Connect(function(Input)
            if UIS:GetFocusedTextBox() == TextBox and Input.UserInputType ~= Enum.UserInputType.MouseButton1 then
                local KeyCode = Input.KeyCode
                if KeyCode == Enum.KeyCode.LeftShift then
                    LeftShift = true
                    Shift = true
                elseif KeyCode == Enum.KeyCode.RightShift then
                    RightShift = true
                    Shift = true
                elseif KeyCode == Enum.KeyCode.LeftControl then
                    LeftCtrl = true
                    Ctrl = true
                elseif KeyCode == Enum.KeyCode.RightControl then
                    RightCtrl = true
                    Ctrl = true
                else
                    PressedKey = KeyCode
                    ProcessInput(not (not Ctrl or Shift) and "Control+Key" or "KeyPress", KeyCode)
                    local UniqueID = newproxy(false)
                    WorkingKey = UniqueID
                    wait(0.25)
                    if WorkingKey == UniqueID then
                        WorkingKey = true
                    end
                end
            end
        end)
        UIS.InputEnded:Connect(function(Input)
            if Input.UserInputType == Enum.UserInputType.MouseButton1 then
                BeginSelect = nil
            end
            if Input.KeyCode == Enum.KeyCode.LeftShift then
                LeftShift = false
            end
            if Input.KeyCode == Enum.KeyCode.RightShift then
                RightShift = false
            end
            if Input.KeyCode == Enum.KeyCode.LeftControl then
                LeftCtrl = false
            end
            if Input.KeyCode == Enum.KeyCode.RightControl then
                RightCtrl = false
            end
            Shift = LeftShift or RightShift
            Ctrl = LeftCtrl or RightCtrl
            if PressedKey == Input.KeyCode then
                PressedKey = nil
                WorkingKey = nil
            end
        end)
        local Count = 0
        game:GetService("RunService").Heartbeat:Connect(function()
            if Count == 0 and WorkingKey == true then
                ProcessInput(not (not Ctrl or Shift) and "Control+Key" or "KeyPress", PressedKey)
            end
            Count = (Count + 1) % 2
        end)
        Editor.Write = Write
        Editor.SetContent = SetContent
        Editor.SetVisibility = SetVisibility
        Editor.PushToUndoStack = PushToUndoStack
        Editor.Undo = Undo
        Editor.Redo = Redo
        function Editor.UpdateTheme(theme)
            for obj, v in pairs(themestuff) do
                for key, value in pairs(v) do
                    obj[key] = Themes[theme][value]
                end
            end
            Options.Theme = theme
            ClearTokensAndSelection()
            updateMarkers()
        end
        function Editor.HighlightError(Visible, Line, Msg)
            if Visible then
                ErrorHighlighter.Position = udim2(0, 2, 0, CharHeight * Line + 2 - CharHeight)
                ErrorMessage.Text = "Line " .. Line .. " - " .. Msg
                ErrorMessage.Size = udim2(0, ErrorMessage.TextBounds.X + 15, 0, ErrorMessage.TextBounds.Y + 8)
            else
                ErrorMessage.Visible = false
            end
            ErrorHighlighter.Visible = Visible
        end
        Editor.ContentChanged = ContentChangedEvent.Event
        Editor.FocusLost = FocusLostEvent.Event
        TextArea.CanvasPosition = Vector2.new(0, 0)
        return Editor, TextBox, ClearTokensAndSelection, TextArea
    end
    local ScriptEditor, EditorGrid, Clear, TxtArea = EditorLib.Initialize(editor:FindFirstChild("Editor"), {
        Font = Enum.Font.Code,
        TextSize = 16,
        Language = "Lua",
        CaretBlinkingRate = 0.5
    })
    local function openScript(o)
        EditorGrid.Text = ""
        local id = GetDebugId(o)
        if cache[id] then
            ScriptEditor.SetContent(cache[id])
        else
            local decompiled = decompile(o)
            cache[id] = decompiled
            game:GetService("RunService").Heartbeat:wait()
            ScriptEditor.SetContent(cache[id])
        end
        Title.Text = "[Better Script Viewer] Viewing: " .. o.Name
    end
    bindable.Event:connect(function(object)
        editor.Visible = true
        openScript(object)
    end)
    SaveScript.MouseButton1Click:connect(function()
        if ScriptEditor.Content ~= "" then
            local fileName = FileName.Text
            if fileName == "File Name" or FileName == "" then
                fileName = "LocalScript_" .. math.random(100000, 999999)
            end
            fileName = fileName .. ".lua"
            writefile(fileName, ScriptEditor.Content)
        end
    end)
    CopyScript.MouseButton1Click:connect(function()
        local txt = ScriptEditor.Content
        if Clipboard then
            Clipboard.set(txt)
        else
            setclipboard(txt)
        end
    end)
    ClearScript.MouseButton1Click:connect(function()
        ScriptEditor.SetContent("")
        TxtArea.CanvasPosition = Vector2.new(0, 0)
        Title.Text = "[Better Script Viewer]"
        Clear()
    end)
end)

-- // Patches
if identifyexecutor() == "ScriptWare" then
    local function decomp(a)
        return tostring(disassemble(getscriptbytecode(a)))
    end
    getgenv().decompile = decomp
end

-- // RobloxGui
if game:GetService("CoreGui"):FindFirstChild("RobloxGui") == nil then
    local cloneref = cloneref or function(ref)
        return ref
    end
    local CoreGui = cloneref(game:GetService("CoreGui"))
    local RobloxGui = cloneref(CoreGui:WaitForChild("RobloxGui"))
    local Folder = cloneref(Instance.new("Folder"))
    local HideInMe
    function nCreate()
        local nString = ""
        for _ = 1, 20 do
            nString = string.upper(nString .. string.char(math.random(97, 122)))
            task.wait()
        end
        return nString
    end
    if gethui and identifyexecutor() == "ScriptWare" then
        HideInMe = cloneref(gethui())
    else
        HideInMe = cloneref(RobloxGui)
    end
    Folder.Name = nCreate()
    local function gethiddengui()
        return Folder
    end
    getgenv().gethiddengui = gethiddengui
    pcall(function()
        CoreGui.RobloxGui:FindFirstChild("SaveInstance", true).Parent.Parent:Destroy()
        task.wait()
    end)
    task.spawn(function()
        pcall(function()
            if getconnections then
                for i, v in next, getconnections(CoreGui.ChildAdded) do
                    v:Disable()
                end
                task.wait()
                for i, v in next, getconnections(CoreGui.ChildRemoved) do
                    v:Disable()
                end
                task.wait()
                for i, v in next, getconnections(CoreGui.DescendantAdded) do
                    v:Disable()
                end
                task.wait()
                for i, v in next, getconnections(CoreGui.DescendantRemoving) do
                    v:Disable()
                end
                task.wait()
                for i, v in next, getconnections(CoreGui.childAdded) do
                    v:Disable()
                end
                task.wait()
                for i, v in next, getconnections(CoreGui.Destroying) do
                    v:Disable()
                end
                task.wait()
                for i, v in next, getconnections(CoreGui.Changed) do
                    v:Disable()
                end
                task.wait()
                for i, v in next, getconnections(CoreGui.AncestryChanged) do
                    v:Disable()
                end
                task.wait()
                for i, v in next, getconnections(RobloxGui.DescendantAdded) do
                    v:Disable()
                end
                task.wait()
                for i, v in next, getconnections(RobloxGui.DescendantRemoving) do
                    v:Disable()
                end
                task.wait()
                for i, v in next, getconnections(RobloxGui.ChildAdded) do
                    v:Disable()
                end
                task.wait()
                for i, v in next, getconnections(RobloxGui.ChildRemoved) do
                    v:Disable()
                end
                task.wait()
                for i, v in next, getconnections(RobloxGui.Destroying) do
                    v:Disable()
                end
                task.wait()
                for i, v in next, getconnections(RobloxGui.Changed) do
                    v:Disable()
                end
                task.wait()
                for i, v in next, getconnections(RobloxGui.AncestryChanged) do
                    v:Disable()
                end
                task.wait()
                for i, v in next, getconnections(Folder.ChildAdded) do
                    v:Disable()
                end
                task.wait()
                for i, v in next, getconnections(Folder.ChildRemoved) do
                    v:Disable()
                end
                task.wait()
                for i, v in next, getconnections(Folder.DescendantAdded) do
                    v:Disable()
                end
                task.wait()
                for i, v in next, getconnections(Folder.DescendantRemoving) do
                    v:Disable()
                end
                task.wait()
                for i, v in next, getconnections(Folder.childAdded) do
                    v:Disable()
                end
                task.wait()
                for i, v in next, getconnections(Folder.Destroying) do
                    v:Disable()
                end
                task.wait()
                for i, v in next, getconnections(Folder.Changed) do
                    v:Disable()
                end
                task.wait()
                for i, v in next, getconnections(Folder.AncestryChanged) do
                    v:Disable()
                end
                task.wait()
            end
        end)
    end)
    task.spawn(function()
        pcall(function()
            if syn and syn.protect_gui then
                syn.protect_gui(Folder)
                task.wait()
                syn.protect_gui(CoreGui)
                task.wait()
                syn.protect_gui(RobloxGui)
                task.wait()
            end
        end)
    end)
    Folder.Parent = HideInMe
    task.wait()
end

-- // Finalization
task.spawn(function()
pcall(function()
if identifyexecutor() == "SynapseX" or identifyexecutor() == "Synapse X" or identifyexecutor() == "Synapse" then
    while true do
        game:GetService("RunService").Heartbeat:Wait()
        for _, Descendant in pairs(game:GetDescendants()) do
            if Descendant:IsA("BaseWrap") then
                Descendant:Destroy()
            end
        end
    end
    game.DescendantAdded:Connect(function(Added)
        if Added:IsA("BaseWrap") then
            Added:Destroy()
        end
    end
    end)
    end)
end) 
for _, Child in next, game:GetService("CoreGui"):GetDescendants() do
    if Child.Name:lower():find("bdd") or Child.Name:lower():find("dex") then
        Child:Destroy()
    end
end
pcall(function()
if gethui then
for _, Child in next, gethui():GetDescendants() do
    if Child.Name:lower():find("bdd") or Child.Name:lower():find("dex") then
        Child:Destroy()
    end
end
end)
BetterDarkDex.Name = "BDD_"
task.spawn(function()
pcall(function() syn.protect_gui(BetterDarkDex) end)
pcall(function() syn.secure_gui(BetterDarkDex) end)
end)
BetterDarkDex.Parent = gethui and gethui() or game:GetService("CoreGui"):WaitForChild("RobloxGui") or game:GetService("CoreGui"):FindFirstChildOfClass("ScreenGui")
for Counter = 1, 20 do
    BetterDarkDex.Name = BetterDarkDex.Name .. string.upper(string.char(math.random(97, 122)))
end
