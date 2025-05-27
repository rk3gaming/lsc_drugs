if GetResourceState('es_extended') ~= 'started' then return end

ESX = exports.es_extended:getSharedObject()

function GetPlayer(source)
    return ESX.GetPlayerFromId(source)
end

function RegisterUsableItem(itemName, callback)
    ESX.RegisterUsableItem(itemName, callback)
end

function GetInventoryItem(xPlayer, itemName)
    return xPlayer.getInventoryItem(itemName)
end

function RemoveInventoryItem(xPlayer, itemName, count)
    xPlayer.removeInventoryItem(itemName, count)
end
