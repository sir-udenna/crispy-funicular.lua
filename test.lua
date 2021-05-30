-- local UserInputService = game:GetService("UserInputService")
-- local Mouse = game:GetService("Players").LocalPlayer:GetMouse()
-- local Root = script.Parent:WaitForChild("HumanoidRootPart")

-- Mouse.Move:Connect(function()
-- 	if not UserInputService:IsKeyDown(Enum.KeyCode.Q) then return end
-- 	Root.CFrame = CFrame.new(Root.Position, Root.Position + Mouse.Hit.LookVector)
-- end)

game:GetService("RunService").RenderStepped:Connect(function()
    local forwardVector = (character.HumanoidRootPart.Position - mouse.hit.Position).Unit
    local rightVector = forwardVector:Cross(Vector3.new(0,1,0))
    local cframe = CFrame.fromMatrix(character.HumanoidRootPart.Position, -rightVector, Vector3.new(0, 1, 0))
	
    character.HumanoidRootPart.CFrame = cframe
end)
