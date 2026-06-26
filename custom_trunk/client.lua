local Config = lib.load('config.vehicles')

-- Trash prop model hashes (GTA5 all trash bins/dumpsters)
local trashModels = {
    -- Dumpsters
    `prop_dumpster_01a`, `prop_dumpster_02a`, `prop_dumpster_02b`,
    `prop_dumpster_3a`,  `prop_dumpster_4a`,
    -- Trash bins / bins
    `prop_bin_01a`, `prop_bin_02a`, `prop_bin_03a`, `prop_bin_04a`,
    `prop_bin_05a`, `prop_bin_06a`, `prop_bin_07a`, `prop_bin_08a`,
    `prop_bin_09a`, `prop_bin_10a`, `prop_bin_11a`, `prop_bin_12a`,
    `prop_recyclebin_01a`, `prop_recyclebin_01b`,
    `prop_bin_beach_01a`,
    -- Wheelie bins
    `prop_wheeliebin_1a`,
    -- Trash bags/piles (optional)
    `prop_trashbag_01`, `prop_trashbag_02`,
}

local trashModelSet = {}
for _, hash in ipairs(trashModels) do
    trashModelSet[hash] = true
end

local TRASH_DISTANCE = 2.0

local function isNearTrash()
    local pedCoords = GetEntityCoords(cache.ped)
    local objects = GetGamePool('CObject')
    for i = 1, #objects do
        local obj = objects[i]
        if trashModelSet[GetEntityModel(obj)] then
            if #(pedCoords - GetEntityCoords(obj)) <= TRASH_DISTANCE then
                return true
            end
        end
    end
    return false
end

exports('IsNearTrash', isNearTrash)

local function getPlate(vehicle)
    return string.strtrim(GetVehicleNumberPlateText(vehicle))
end

local function canAccessTrunk(entity)
    if cache.vehicle then return false end
    if not NetworkGetEntityIsNetworked(entity) then return false end
    if IsEntityDead(entity) then return false end

    local model = GetEntityModel(entity)
    local modelName = string.lower(joaat and '' or '') -- resolved server-side
    local vehicleClass = GetVehicleClass(entity)

    -- Bikes, planes, boats don't have trunks
    local noTrunkClasses = { [13]=true, [14]=true, [15]=true, [16]=true, [21]=true }
    if noTrunkClasses[vehicleClass] then return false end

    -- Distance check to rear of vehicle
    local min, max = GetModelDimensions(model)
    local offset = GetOffsetFromEntityInWorldCoords(entity,
        (max.x + min.x) * 0.5,
        min.y,
        (max.z + min.z) * 0.5
    )

    if #(GetEntityCoords(cache.ped) - offset) > 2.5 then return false end

    return true
end

local function openTrunk(data)
    local entity = data.entity
    if not entity or entity == 0 then return end

    local plate = getPlate(entity)
    local model = GetEntityModel(entity)
    local vehicleClass = GetVehicleClass(entity)
    local netid = NetworkGetNetworkIdFromEntity(entity)

    TriggerServerEvent('custom_trunk:open', plate, model, vehicleClass, netid)
end

exports.ox_target:addGlobalVehicle({
    icon = 'fas fa-truck-ramp-box',
    label = 'เปิดท้ายรถ',
    distance = 2.5,
    canInteract = canAccessTrunk,
    onSelect = openTrunk,
})

-- Weight limit in grams (50 kg = 50000)
local OVERWEIGHT_LIMIT = 50000
local isOverweight = false
local notifyTimer = 0
local SLOW_CLIPSET = 'move_m@slow_walker'

CreateThread(function()
    -- Wait until player ped is valid
    while not cache.ped or cache.ped == 0 do Wait(500) end

    -- Load clipset
    RequestAnimSet(SLOW_CLIPSET)
    while not HasAnimSetLoaded(SLOW_CLIPSET) do Wait(0) end

    while true do
        local ped = PlayerPedId()
        local weight = exports.ox_inventory:GetPlayerWeight()
        local over = weight > OVERWEIGHT_LIMIT

        if over then
            -- Apply slow clipset every frame so GTA can't reset it
            SetPedMovementClipset(ped, SLOW_CLIPSET, 1.0)

            -- Block vehicle entry
            if cache.vehicle then
                TaskLeaveVehicle(ped, cache.vehicle, 0)
                local now = GetGameTimer()
                if now - notifyTimer > 4000 then
                    notifyTimer = now
                    lib.notify({ title = 'น้ำหนักเกิน', description = 'แบกของหนักเกินไป ขึ้นรถไม่ได้', type = 'error', duration = 3000 })
                end
            end

            isOverweight = true
            Wait(0)
        else
            if isOverweight then
                ResetPedMovementClipset(ped, 1.0)
                isOverweight = false
            end
            Wait(500)
        end
    end
end)

RegisterNetEvent('custom_trunk:openClient', function(plate)
    exports.ox_inventory:openInventory('stash', 'ctrunk_' .. plate)

    -- Open trunk door animation
    local vehicle = GetClosestVehicle(GetEntityCoords(cache.ped), 5.0, 0, 70)
    if vehicle and vehicle ~= 0 then
        if GetIsDoorValid(vehicle, 5) then
            SetVehicleDoorOpen(vehicle, 5, false, false)
        elseif GetIsDoorValid(vehicle, 2) then
            SetVehicleDoorOpen(vehicle, 2, false, false)
        end
    end
end)
