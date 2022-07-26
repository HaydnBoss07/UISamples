local MouseOver = Instance.new("Frame")
local Label = Instance.new("TextLabel")
local SizeLimit = Instance.new("UISizeConstraint")

MouseOver.Name = "MouseOver"
MouseOver.Parent = game.StarterGui.ScreenGui
MouseOver.BackgroundColor3 = Color3.fromRGB(15, 18, 22)
MouseOver.BorderColor3 = Color3.fromRGB(30, 36, 43)
MouseOver.Position = UDim2.new(0.515384614, 0, 0.825598538, 0)
MouseOver.Size = UDim2.new(0, 5, 0, 5)
MouseOver.Visible = false
MouseOver.ZIndex = 2

Label.Name = "Label"
Label.Parent = MouseOver
Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Label.BackgroundTransparency = 1.000
Label.Position = UDim2.new(0, 5, 0, 5)
Label.Size = UDim2.new(1, -10, 1, -10)
Label.ZIndex = 2
Label.Font = Enum.Font.SourceSansSemibold
Label.Text = "You currently "
Label.TextColor3 = Color3.fromRGB(255, 255, 255)
Label.TextSize = 14.000
Label.TextWrapped = true
Label.TextXAlignment = Enum.TextXAlignment.Left
Label.TextYAlignment = Enum.TextYAlignment.Top

SizeLimit.Name = "SizeLimit"
SizeLimit.Parent = MouseOver
