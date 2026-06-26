local Config = lib.load('config.vehicles')

local noGiveItems = {
    phra_khrueang = true,
    phra_genuine  = true,
    phra_fake     = true,
    phra_certificate = true,
    magnify_lv1   = true,
    magnify_lv2   = true,
    magnify_lv3   = true,
    vehicle_key   = true,
    amulet        = true,
    amulet_genuine = true,
    amulet_fake   = true,
    amulet_cursed = true,
}

exports.ox_inventory:registerHook('swapItems', function(payload)
    if payload.fromType == 'player' and payload.toType ~= 'player' then
        local itemName = payload.fromSlot and payload.fromSlot.name
        if itemName and noGiveItems[itemName] then
            return false
        end
    end
end)

local function getTrunkConfig(modelHash, vehicleClass)
    -- Check per-model override first
    for modelName, cfg in pairs(Config.models) do
        if joaat(modelName) == modelHash then
            return cfg
        end
    end

    -- Check noTrunk list
    for modelName in pairs(Config.noTrunk) do
        if joaat(modelName) == modelHash then
            return nil
        end
    end

    -- Fallback to class default
    return Config.default[vehicleClass]
end

RegisterNetEvent('custom_trunk:open', function(plate, modelHash, vehicleClass, netid)
    local src = source
    local cfg = getTrunkConfig(modelHash, vehicleClass)

    if not cfg then return end  -- รถนี้ไม่มีท้ายรถ

    local stashId = 'ctrunk_' .. plate

    -- Register stash ถ้ายังไม่มี (ox_inventory จะ ignore ถ้า registered แล้ว)
    exports.ox_inventory:RegisterStash(stashId, 'ท้ายรถ [' .. plate .. ']', cfg.slots, cfg.weight)

    TriggerClientEvent('custom_trunk:openClient', src, plate)
end)

RegisterNetEvent('custom_trunk:trashItem', function(slot, count)
    local src = source
    local item = exports.ox_inventory:GetSlot(src, slot)
    if not item then return end

    exports.ox_inventory:RemoveItem(src, item.name, count or item.count, nil, slot)
end)
