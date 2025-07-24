Events.OnPreFillInventoryObjectContextMenu.Add(function(player, context, items)
    local fraction = getPlayer():getModData().fraction or "Независимые"
    context:addOption("Фракция: " .. fraction)
end)
