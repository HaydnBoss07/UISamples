-- Gui to Lua


-- Version: 3.2



-- Instances:



local ScreenGui = Instance.new("ScreenGui")


local AlertSample = Instance.new("Frame")


local Title = Instance.new("TextLabel")


local UITextSizeConstraint = Instance.new("UITextSizeConstraint")


local Desc = Instance.new("TextLabel")


local Yes = Instance.new("TextButton")


local Flag = Instance.new("ImageLabel")


local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")


local FlagOwn = Instance.new("ImageLabel")


local UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint")



--Properties:



ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")


ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling



AlertSample.Name = "AlertSample"


AlertSample.Parent = ScreenGui


AlertSample.Active = true


AlertSample.AnchorPoint = Vector2.new(0.5, 0.5)


AlertSample.BackgroundColor3 = Color3.fromRGB(39, 47, 56)


AlertSample.BorderColor3 = Color3.fromRGB(30, 36, 43)


AlertSample.Draggable = true


AlertSample.Position = UDim2.new(0.5, 1, 0.5, 3)


AlertSample.Selectable = true


AlertSample.Size = UDim2.new(0, 300, 0, 107)



Title.Name = "Title"


Title.Parent = AlertSample


Title.AnchorPoint = Vector2.new(0.5, 0)


Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)


Title.BackgroundTransparency = 1.000


Title.Position = UDim2.new(0.5, 0, 0, 10)


Title.Size = UDim2.new(0.600000024, 0, 0, 30)


Title.ZIndex = 2


Title.Font = Enum.Font.SourceSansSemibold


Title.Text = "War Justified"


Title.TextColor3 = Color3.fromRGB(255, 255, 255)


Title.TextScaled = true


Title.TextSize = 18.000


Title.TextStrokeTransparency = 0.800


Title.TextWrapped = true



UITextSizeConstraint.Parent = Title


UITextSizeConstraint.MaxTextSize = 18


UITextSizeConstraint.MinTextSize = 1



Desc.Name = "Desc"


Desc.Parent = AlertSample


Desc.AnchorPoint = Vector2.new(0.5, 0)


Desc.BackgroundColor3 = Color3.fromRGB(255, 255, 255)


Desc.BackgroundTransparency = 1.000


Desc.BorderColor3 = Color3.fromRGB(27, 42, 53)


Desc.BorderMode = Enum.BorderMode.Outline


Desc.BorderSizePixel = 1


Desc.Position = UDim2.new(0.49666667, 0, -0.0186915882, 45)


Desc.SizeConstraint = Enum.SizeConstraint.RelativeXY


Desc.Size = UDim2.new(0.99333334, -10, 0.0280373823, 42)


Desc.Font = Enum.Font.SourceSansSemibold


Desc.AutomaticSize = Enum.AutomaticSize.None


Desc.Text = _G.country_name or "{country_name}" .. " is justifying against you!\n\nJustification Time: .. _G.global_seconds or "{seconds}"


Desc.TextColor3 = Color3.fromRGB(255, 255, 255)


Desc.TextScaled = true


Desc.TextSize = 14.000


Desc.TextStrokeTransparency = 0.800


--Desc.TextBounds = Vector2.new(209,42)


Desc.TextWrapped = true


Desc.TextXAlignment = Enum.TextXAlignment.Center


Desc.TextYAlignment = Enum.TextYAlignment.Top



Yes.Name = "Yes"


Yes.Parent = AlertSample


Yes.AnchorPoint = Vector2.new(0.5, 0)


Yes.BackgroundColor3 = Color3.fromRGB(39, 47, 56)


Yes.BorderColor3 = Color3.fromRGB(30, 36, 43)


Yes.Position = UDim2.new(0.5, 0, 1, 5)


Yes.Selectable = false


Yes.Size = UDim2.new(1, 0, 0, 25)


Yes.Font = Enum.Font.SourceSansSemibold


Yes.Text = "Fuck him"


Yes.TextColor3 = Color3.fromRGB(255, 255, 255)


Yes.TextSize = 16.000


Yes.TextStrokeTransparency = 0.800



Flag.Name = "Flag"


Flag.Parent = AlertSample


Flag.AnchorPoint = Vector2.new(1, 0)


Flag.BackgroundColor3 = Color3.fromRGB(255, 255, 255)


Flag.BackgroundTransparency = 1.000


Flag.BorderSizePixel = 0


Flag.Position = UDim2.new(1, -10, 0, 10)


Flag.Size = UDim2.new(1, 0, 0, 30)


Flag.Image = "rbxassetid://123797372"



UIAspectRatioConstraint.Parent = Flag


UIAspectRatioConstraint.AspectRatio = 1.500


UIAspectRatioConstraint.AspectType = Enum.AspectType.FitWithinMaxSize


UIAspectRatioConstraint.DominantAxis = Enum.DominantAxis.Height



FlagOwn.Name = "FlagOwn"


FlagOwn.Parent = AlertSample


FlagOwn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)


FlagOwn.BackgroundTransparency = 1.000


FlagOwn.BorderSizePixel = 0


FlagOwn.Position = UDim2.new(0, 10, 0, 10)


FlagOwn.Size = UDim2.new(1, 0, 0, 30)


FlagOwn.Image = "rbxassetid://334046681"



UIAspectRatioConstraint_2.Parent = FlagOwn


UIAspectRatioConstraint_2.AspectRatio = 1.500


UIAspectRatioConstraint_2.AspectType = Enum.AspectType.FitWithinMaxSize


UIAspectRatioConstraint_2.DominantAxis = Enum.DominantAxis.Height



-- Scripts:



local function YIFIY_fake_script() -- Yes.LocalScript 


	local script = Instance.new('LocalScript', Yes)



	local db = true



	task.wait(3)


	db = false



	script.Parent.MouseButton1Click:Connect(function()


		if db == false then


			script.Parent.Parent:Destroy()


		end


	end)


end


coroutine.wrap(YIFIY_fake_script)()


local function WBFTBO_fake_script() -- AlertSample.LocalScript 


	local script = Instance.new('LocalScript', AlertSample)



	script.Parent.Draggable = true


end


coroutine.wrap(WBFTBO_fake_script)()


