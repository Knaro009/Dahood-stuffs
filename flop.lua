--Could use some fixing but am "busy"
local uis = game:GetService("UserInputService")
local lp = game.Players.LocalPlayer
_G.PowerX = 0 
_G.PowerY = 99
_G.PowerZ = 0
local g = Instance.new("BodyThrust")
g.Parent = lp.Character.HumanoidRootPart
g.Location = lp.Character.HumanoidRootPart.Position 

while task.wait() do
    if uis:IsKeyDown(Enum.KeyCode.Q) then
        lp.Character.Humanoid:ChangeState(Enum.HumanoidStateType.FallingDown)
        if g.Force ~= Vector3.new(_G.PowerX ,_G.PowerY,_G.PowerZ) then
            g.Force = Vector3.new(_G.PowerX ,_G.PowerY,_G.PowerZ)
        end
    else
        if g.Force ~= Vector3.new(0, 0, 0) then
            g.Force = Vector3.new(0, 0, 0)
        end
    end
end
