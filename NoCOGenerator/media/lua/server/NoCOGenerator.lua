Events.OnTick.Add(function()
    local generators = IsoWorld.instance:getCell():getGenerators()
    if generators then
        for i=0, generators:size()-1 do
            local gen = generators:get(i)
            if gen:isActivated() then
            end
        end
    end
end)
