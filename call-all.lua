--my fren made this but i will put in this rep
local StarterGui = game:GetService("StarterGui")
for i,v in pairs(game.Players:GetChildren()) do
    if v.Name ~= game.Players.LocalPlayer.Name then
        game.Players.LocalPlayer.Backpack["[Phone]"].Parent = game.Players.LocalPlayer.Character
        game.ReplicatedStorage.MainEvent:FireServer("PhoneCall", tostring(v.Name))
        task.wait()
        game.Players.LocalPlayer.Character["[Phone]"].Parent = game.Players.LocalPlayer.Backpack
        task.wait()
        local success, result = pcall(StarterGui.SetCoreGuiEnabled, StarterGui, Enum.CoreGuiType.Backpack, true)
        task.wait(.2)
    end
end
