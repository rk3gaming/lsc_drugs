if GetResourceState('qb-core') ~= 'started' then return end

QBCore = exports['qb-core']:GetCoreObject()

function GetPlayer(source)
    return QBCore.Functions.GetPlayer(source)
end

function RegisterUsableItem(itemName, callback)
    QBCore.Functions.CreateUseableItem(itemName, callback)
end

function GetInventoryItem(Player, itemName)
    return Player.Functions.GetItemByName(itemName)
end

function RemoveInventoryItem(Player, itemName, count)
    Player.Functions.RemoveItem(itemName, count)
end
