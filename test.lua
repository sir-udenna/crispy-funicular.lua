-- local UserInputService = game:GetService("UserInputService")
-- local Mouse = game:GetService("Players").LocalPlayer:GetMouse()
-- local Root = script.Parent:WaitForChild("HumanoidRootPart")

-- Mouse.Move:Connect(function()
-- 	if not UserInputService:IsKeyDown(Enum.KeyCode.Q) then return end
-- 	Root.CFrame = CFrame.new(Root.Position, Root.Position + Mouse.Hit.LookVector)
-- end)

print('ran')

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
