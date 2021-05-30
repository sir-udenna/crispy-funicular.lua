local UserInputService = game:GetService("UserInputService")
local Mouse = game:GetService("Players").LocalPlayer:GetMouse()
local Root = script.Parent:WaitForChild("HumanoidRootPart")

Mouse.Move:Connect(function()
	if not UserInputService:IsKeyDown(Enum.KeyCode.Q) then return end
	Root.CFrame = CFrame.new(Root.Position, Root.Position + Mouse.Hit.LookVector)
end)
