local catNotification = {}

function catNotification:AddNotification(baseText, hoverText)
	local ResDef = Instance.new("TextButton")
	local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
	local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
	-------------------------------------------------------
	local MouseOverText = Instance.new("StringValue", ResDef)
	MouseOverText.Value = "You are currently losing {1} units per 5 days"
	MouseOverText.Name = "MouseOverText"
	-------------------------------------------------------
	ResDef.Name = "ResDef" .. getgenv().necessaryresource;
	ResDef.Parent = game.Players.LocalPlayer.PlayerGui.GameGui.MainFrame.StatsFrame.Stats.WarningFrame
	ResDef.AnchorPoint = Vector2.new(0.5, 1)
	ResDef.BackgroundColor3 = Color3.fromRGB(39, 47, 56)
	ResDef.BackgroundTransparency = 0.250
	ResDef.BorderColor3 = Color3.fromRGB(255, 170, 0)
	ResDef.BorderSizePixel = 0
	ResDef.Position = UDim2.new(0.573083341, 0, 1.07366478, 0)
	ResDef.Size = UDim2.new(1, -20, 1.5, 0)
	ResDef.Font = Enum.Font.SourceSansSemibold
	ResDef.Text = "{0} DEFICIT"
	ResDef.TextColor3 = Color3.fromRGB(255, 56, 56)
	ResDef.TextScaled = true
	ResDef.TextWrapped = true

	UIAspectRatioConstraint.Parent = ResDef
	UIAspectRatioConstraint.DominantAxis = Enum.DominantAxis.Height

	UITextSizeConstraint.Parent = ResDef
	UITextSizeConstraint.MaxTextSize = 16
	UITextSizeConstraint.MinTextSize = 12

	local function FEFCA_fake_script()
		local MouseOver = game.Players.LocalPlayer.PlayerGui.GameGui.MouseOver;
		local script = Instance.new('LocalScript', ResDef);

		script.Parent.MouseButton2Click:Connect(function()
			game.Players.LocalPlayer.PlayerGui.GameGui.MainFrame.CenterFrame.Visible = true;

			for i, v in pairs(game.Players.LocalPlayer.PlayerGui.GameGui.MainFrame.CenterFrame:GetChildren()) do
				if v.Name~= "EconomyFrame" and v.Name~= "ButtonFrame" and v:IsA("Frame") then v.Visible = false; elseif v.Name~= "ButtonFrame" then v.Visible = true; v.Main.Visible = false; v.Resources.Visible = true; end
			end

			for _, k in pairs(game.Players.LocalPlayer.PlayerGui.GameGui.MainFrame.CenterFrame.EconomyFrame.Resources.ResourceFrame:GetChildren()) do
				if k.Name == getgenv().necessaryresource --[[can change later]] then firesignal(k.Trade.MouseButton1Click); end
			end
		end)

		script.Parent.MouseEnter:Connect(function()
			MouseOver.Label.Text = MouseOverText.Value;
			MouseOver.Visible = true;
		end)

		script.Parent.MouseLeave:Connect(function()
			MouseOver.Visible = false;
		end)

		script.Parent.MouseMoved:Connect(function()
			MouseOver.Label.Text = MouseOverText.Value;
			MouseOver.Position = UDim2.fromOffset(game:GetService("UserInputService"):GetMouseLocation().X + 10, game:GetService("UserInputService"):GetMouseLocation().Y-25)
		end)
	end
	coroutine.wrap(FEFCA_fake_script)()
end

return catNotification
