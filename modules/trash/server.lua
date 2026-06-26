if not lib then return end

local Inventory = require 'modules.inventory.server'

RegisterServerEvent('ox_inventory:trashItem', function(itemName, count, metadata, slot)
    local src = source
    local inv  = Inventory(src)

    if not inv then return end

    local slotData = inv.items[slot]

    if not slotData
        or slotData.name ~= itemName
        or slotData.count < count
    then
        return
    end

    Inventory.RemoveItem(inv, itemName, count, nil, slot)
end)
