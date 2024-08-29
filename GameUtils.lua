local GameUtils = {}

function GameUtils.getplayers()
    return game:GetService("Players"):GetPlayers()
end

function GameUtils.findpart(model, name)
    return model:FindFirstChild(name)
end

function GameUtils.teleport(char, pos)
    char:SetPrimaryPartCFrame(CFrame.new(pos))
end

function GameUtils.applydamage(hum, dmg)
    hum.Health = math.max(0, hum.Health - dmg)
end

function GameUtils.raycast(origin, dir, ignore)
    local params = RaycastParams.new()
    params.FilterDescendantsInstances = ignore
    params.FilterType = Enum.RaycastFilterType.Blacklist
    return workspace:Raycast(origin, dir, params)
end

return GameUtils
