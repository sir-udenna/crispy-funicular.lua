--[[
RunService = game:GetService('RunService')
Players = game:GetService('Players')
Player = Players.LocalPlayer
Mouse = Player:GetMouse()
Char = Player.Character
if not Char then
	Player.CharacterAdded:Wait()
	Char = Player.Character
end

RootPart = Char:WaitForChild('HumanoidRootPart')

RunService.Stepped:connect(function()
	
	local MousePos = Mouse.Hit.p
	
	local lookToPosVector = Vector3.new(MousePos.X,RootPart.CFrame.Y,MousePos.Z)
	
	RootPart.CFrame = CFrame.new(RootPart.CFrame.p,lookToPosVector)
	
end)
]]

RunService = game:GetService('RunService')
TweenService = game:GetService("TweenService")
Players = game:GetService('Players')
Player = Players.LocalPlayer
Mouse = Player:GetMouse()
Char = Player.Character
if not Char then
	Player.CharacterAdded:Wait()
	Char = Player.Character
end

RootPart = Char:WaitForChild('HumanoidRootPart')

RunService.Stepped:connect(function()
	
	local MousePos = Mouse.Hit.p
	local lookVector = Vector3.new(MousePos.X,RootPart.CFrame.Y,MousePos.Z)
	
	RootPart.CFrame = CFrame.new(RootPart.CFrame.p,lookVector)
	local goal = {}
	goal.CFrame = CFrame.new(RootPart.CFrame.p,lookVector)

	local tweenInfo = TweenInfo.new(1)
	local tween = TweenService:Create(RootPart, tweenInfo, goal)

	tween:Play()
end)

print("end")
