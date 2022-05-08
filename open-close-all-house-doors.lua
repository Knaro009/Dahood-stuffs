local lp = game.Players.LocalPlayer

local clickdtable = {}
local parentparttable = {}

function FindFirstDescendant(parent, name)
    local ar = {}
    for i,v in pairs(parent:GetDescendants()) do
        if v.Name == name then
            table.insert(ar, v)
        end
    end
    return ar
end


for i,v in pairs(game:GetService("Workspace").MAP.Map["Game-Houses"]:GetDescendants()) do
    if v.Name == "Door" and v.Parent.Name == "Door" and v.Parent.Parent.Parent:IsA("Model") then
        local q = FindFirstDescendant(v.Parent, "ClickDetector")[2]
        
        print(q, q.Parent)
        table.insert(clickdtable, q)
        table.insert(parentparttable, q.Parent)
    end
end

while task.wait() do
    for i = 1,#clickdtable do
        local d = clickdtable[i]
        local p = parentparttable[i]
        
        if (p.Position - lp.Character.HumanoidRootPart.Position).Magnitude < 15 then
            fireclickdetector(d)
        end
    end
end

