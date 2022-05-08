local lp = game.Players.LocalPlayer
local oldCF = lp.Character.HumanoidRootPart.CFrame
local q = game:GetService("Workspace").Ignored.Shop:FindFirstChild("[Surgeon Mask] - $25")
local g = nil

while g == nil do
    lp.Character.HumanoidRootPart.CFrame = q.Head.CFrame
    task.wait(0.3)
    fireclickdetector(q.ClickDetector)
    task.wait(0.25)
    g = lp.Backpack:FindFirstChild("Mask") or lp.Character:FindFirstChild("Mask") or nil
end
lp.Character.HumanoidRootPart.CFrame = oldCF
g.Parent = lp.Character
g:Activate()
task.wait(0.4)
if lp.Character:FindFirstChild("In-gameMask") then
    lp.Character:FindFirstChild("In-gameMask").Handle.AccessoryWeld:Destroy()
end
g.Parent = lp.Backpack
