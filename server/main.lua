for drugName, _ in pairs(Config.Drugs) do
    RegisterUsableItem(drugName, function(source)
        local player = GetPlayer(source)
        local item = GetInventoryItem(player, drugName)
        
        if item.count > 0 then
            RemoveInventoryItem(player, drugName, 1)
            TriggerClientEvent('lsc_drugs:useDrug', source, drugName)
        end
    end)
end

lib.callback.register('lsc_drugs:checkItem', function(source, drugName)
    local player = GetPlayer(source)
    local item = GetInventoryItem(player, drugName)
    return item.count > 0
end)
