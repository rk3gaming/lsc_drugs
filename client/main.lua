RegisterNetEvent('lsc_drugs:useDrug', function(drugName)
    if not drugName or not Config.Drugs[drugName] then return end
    
    local drugConfig = Config.Drugs[drugName]

    local hasItem = lib.callback.await('lsc_drugs:checkItem', false, drugName)
    if not hasItem then return end

    if lib.progressCircle({
        duration = drugConfig.duration,
        position = 'bottom',
        useWhileDead = false,
        canCancel = true,
        disable = {
            car = true,
        },
        anim = drugConfig.anim,
        prop = drugConfig.prop
    }) then
        if drugConfig.effect and drugConfig.effect.name then
            local effectDuration = drugConfig.effect.EffectLast * 60000
            AnimpostfxPlay(drugConfig.effect.name, effectDuration, true)

            Citizen.SetTimeout(effectDuration, function()
                AnimpostfxStop(drugConfig.effect.name)
            end)
        end

        if drugConfig.effect.health then
            local currentHealth = GetEntityHealth(cache.ped)
            SetEntityHealth(cache.ped, math.min(currentHealth + drugConfig.effect.health, GetEntityMaxHealth(cache.ped)))
        end

        if drugConfig.effect.armour then
            local currentArmor = GetPedArmour(cache.ped)
            SetPedArmour(cache.ped, math.min(currentArmor + drugConfig.effect.armour, 100))
        end

        if Config.Messages and drugConfig.message then
            TriggerEvent('chat:addMessage', {
                args = { '[ ! ]:', drugConfig.message },
                color = { 255, 70, 70 }
            })
        end
    end
end)
