if not lib then return end

local trashModels = {
    'prop_bin_07b',
    'prop_dumpster_3a',
    'prop_bin_01a',
    'prop_dumpster_4b',
    'prop_recyclebin_05_a',
    'zprop_bin_01a_old',
    'prop_bin_07c',
    'prop_bin_10b',
    'prop_bin_10a',
    'prop_bin_11a',
    'prop_bin_11b',
    'prop_bin_04a',
    'prop_dumpster_4a',
    'prop_dumpster_01a',
    'prop_bin_08a',
    'prop_bin_02a',
    'prop_bin_03a',
    'prop_dumpster_02b',
    'prop_bin_08open',
    'prop_bin_14b',
    'prop_dumpster_02a',
    'prop_bin_05a',
    'prop_bin_07a',
}

local hasOxTarget = GetResourceState('ox_target') == 'started'

local function openTrashMenu()
    local inventory = PlayerData.inventory
    if not inventory then return end

    local options = {}

    for _, item in pairs(inventory) do
        if item and item.name then
            local slot = item.slot
            local count = item.count or 1

            options[#options + 1] = {
                title    = ('%s  x%s'):format(item.label or item.name, count),
                icon     = 'fas fa-trash',
                onSelect = function()
                    local input
                    if count > 1 then
                        input = lib.inputDialog('ทิ้งขยะ - ' .. (item.label or item.name), {
                            { type = 'number', label = ('จำนวน (สูงสุด %s)'):format(count), default = 1, min = 1, max = count, required = true },
                        })
                        if not input then return end
                    end

                    local amount = (input and input[1]) or 1
                    if amount < 1 or amount > count then return end

                    TriggerServerEvent('ox_inventory:trashItem', item.name, amount, item.metadata, slot)
                end,
            }
        end
    end

    if #options == 0 then
        return lib.notify({ type = 'inform', description = 'ไม่มีของในกระเป๋า' })
    end

    table.sort(options, function(a, b) return a.title < b.title end)

    lib.registerContext({
        id      = 'trash_menu',
        title   = 'ทิ้งขยะ',
        options = options,
    })
    lib.showContext('trash_menu')
end

if hasOxTarget then
    exports.ox_target:addModel(trashModels, {
        {
            name     = 'trash_bin',
            icon     = 'fas fa-trash',
            label    = 'ทิ้งขยะ',
            distance = 2.0,
            onSelect = openTrashMenu,
        },
    })
else
    -- Fallback: proximity + textUI
    local nearBin = false

    CreateThread(function()
        while true do
            local ped    = PlayerPedId()
            local coords = GetEntityCoords(ped)
            local found  = false

            for _, modelName in ipairs(trashModels) do
                local model  = joaat(modelName)
                local entity = GetClosestObjectOfType(coords.x, coords.y, coords.z, 2.0, model, false, false, false)

                if entity ~= 0 then
                    found = true
                    break
                end
            end

            if found ~= nearBin then
                nearBin = found
                if found then
                    lib.showTextUI('[E] ทิ้งขยะ', { position = 'left-center', icon = 'trash' })
                else
                    lib.hideTextUI()
                end
            end

            if found and IsControlJustPressed(0, 38) then -- E
                openTrashMenu()
            end

            Wait(found and 0 or 500)
        end
    end)
end
