local FRACTIONS = {
    ["Красная Линия"] = "[КРАСНЫЕ]",
    ["Четвёртый Рейх"] = "[4 РЕЙХ]",
    ["Орден"] = "[ОРДЕН]",
    ["Ганза"] = "[ГАНЗА]",
    ["Полис"] = "[ПОЛИС]",
    ["Независимые"] = "[НЕЙТРАЛ]"
}

local function assignFraction(player)
    if not player or not player:getDescriptor() then return end

    local spawnRegion = player:getCurrentSquare() and player:getCurrentSquare():getZone() and player:getCurrentSquare():getZone():getName() or "Независимые"
    local fractionName = "Независимые"

    for name,_ in pairs(FRACTIONS) do
        if string.find(spawnRegion, name) then
            fractionName = name
            break
        end
    end

    local newName = FRACTIONS[fractionName] .. " " .. player:getUsername()
    player:setUsername(newName)

    player:getModData().fraction = fractionName
end

Events.OnCreatePlayer.Add(assignFraction)
