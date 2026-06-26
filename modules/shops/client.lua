if not lib then return end

local shopTypes = {}
local shops = {}
local spawnedPeds = {}
local createBlip = require 'modules.utils.client'.CreateBlip
local hasOxTarget = GetResourceState('ox_target') == 'started'

for shopType, shopData in pairs(lib.load('data.shops') or {} --[[@as table<string, OxShop>]]) do
	local shop = {
		name      = shopData.name,
		groups    = shopData.groups or shopData.jobs,
		blip      = shopData.blip,
		label     = shopData.label,
		icon      = shopData.icon,
		model     = shopData.model,
		targets   = shopData.targets,
		locations = shopData.locations,
	}

	shopTypes[shopType] = shop

	local blip = shop.blip
	if blip then
		blip.name = ('ox_shop_%s'):format(shopType)
		AddTextEntry(blip.name, ('<font face="font4thai">%s</font>'):format(shop.name or shopType))
	end
end

local Utils = require 'modules.utils.client'

-- ══════════════════════════════════════
--  Spawn NPC ตรงๆ ทันที
-- ══════════════════════════════════════
local function spawnShopPed(target, shopType, invId, label, icon, groups)
	CreateThread(function()
		local ok, model = pcall(lib.requestModel, target.ped)
		if not ok or not model then
			print(('[ox_inventory] Failed to load ped model: %s — %s'):format(target.ped, tostring(model)))
			return
		end

		local loc = target.loc
		local entity = CreatePed(4, model, loc.x, loc.y, loc.z - 1.0, target.heading or 0.0, false, true)

		SetModelAsNoLongerNeeded(model)
		FreezeEntityPosition(entity, true)
		SetEntityInvincible(entity, true)
		SetBlockingOfNonTemporaryEvents(entity, true)
		SetEntityAsMissionEntity(entity, true, true)
		PlaceObjectOnGroundProperly(entity)

		if target.scenario then
			TaskStartScenarioInPlace(entity, target.scenario, 0, true)
		else
			TaskStartScenarioInPlace(entity, 'WORLD_HUMAN_STAND_IMPATIENT', 0, true)
		end

		if hasOxTarget then
			exports.ox_target:addLocalEntity(entity, {
				{
					icon     = icon or 'fas fa-shopping-basket',
					label    = label or 'ซื้อสินค้า',
					groups   = groups,
					distance = target.distance or 2.0,
					onSelect = function()
						client.openInventory('shop', { id = invId, type = shopType })
					end,
				}
			})
		end

		spawnedPeds[#spawnedPeds + 1] = entity
	end)
end

-- ══════════════════════════════════════
--  wipeShops
-- ══════════════════════════════════════
local function wipeShops()
	-- ลบ NPC ทั้งหมด
	for i = 1, #spawnedPeds do
		local ped = spawnedPeds[i]
		if DoesEntityExist(ped) then
			if hasOxTarget then
				exports.ox_target:removeLocalEntity(ped)
			end
			DeleteEntity(ped)
		end
	end
	table.wipe(spawnedPeds)

	-- ลบ point/zone
	for i = 1, #shops do
		local shop = shops[i]

		if shop.zoneId and hasOxTarget then
			exports.ox_target:removeZone(shop.zoneId)
			shop.zoneId = nil
		end

		if shop.remove then
			shop:remove()
		end

		if shop.blip then
			RemoveBlip(shop.blip)
		end
	end

	table.wipe(shops)
end

local markerColour = { 30, 150, 30 }

-- ══════════════════════════════════════
--  refreshShops
-- ══════════════════════════════════════
local function refreshShops()
	wipeShops()

	local id = 0

	for type, shop in pairs(shopTypes) do
		local blip  = shop.blip
		local label = shop.label or locale('open_label', shop.name)

		-- ── Model-based shops ──
		if shop.model and hasOxTarget then
			if not (not shop.groups or client.hasGroup(shop.groups)) then goto skipLoop end

			exports.ox_target:removeModel(shop.model, shop.name)
			exports.ox_target:addModel(shop.model, {
				{
					name     = shop.name,
					icon     = shop.icon or 'fas fa-shopping-basket',
					label    = label,
					distance = 2,
					onSelect = function()
						client.openInventory('shop', { type = type })
					end,
				},
			})

		-- ── Target-based shops ──
		elseif shop.targets then
			if not (not shop.groups or client.hasGroup(shop.groups)) then goto skipLoop end

			for i = 1, #shop.targets do
				local target = shop.targets[i]
				local shopid = ('%s-%s'):format(type, i)

				if target.ped then
					-- Spawn NPC ทันที
					spawnShopPed(target, type, i, target.label or label, shop.icon, shop.groups)

					-- Marker + prompt สำหรับกด E (fallback ถ้าไม่มี ox_target)
					if not hasOxTarget and target.loc then
						id += 1
						local shopPrompt = { icon = shop.icon or 'fas fa-shopping-basket' }
						shops[id] = lib.points.new(target.loc, 16, {
							coords   = target.loc,
							distance = 16,
							inv      = 'shop',
							invId    = i,
							type     = type,
							marker   = markerColour,
							prompt   = {
								options = shopPrompt,
								message = ('**%s**  \n%s'):format(
									target.label or label,
									locale('interact_prompt', GetControlInstructionalButton(0, 38, true):sub(3))
								),
							},
							nearby = Utils.nearbyMarker,
						})
					end

					-- Blip
					if blip then
						id += 1
						shops[id] = { blip = createBlip(blip, target.loc) }
					end

				elseif hasOxTarget then
					id += 1
					shops[id] = {
						zoneId = Utils.CreateBoxZone(target, {
							{
								name      = shopid,
								icon      = shop.icon or 'fas fa-shopping-basket',
								label     = label,
								groups    = shop.groups,
								iconColor = target.iconColor,
								distance  = target.distance or 2.0,
								onSelect  = function()
									client.openInventory('shop', { id = i, type = type })
								end,
							}
						}),
						blip = blip and createBlip(blip, target.coords),
					}
				end
			end

		-- ── Location-based shops (กด E fallback) ──
		elseif shop.locations then
			if not (not shop.groups or client.hasGroup(shop.groups)) then goto skipLoop end

			local shopPrompt = { icon = shop.icon or 'fas fa-shopping-basket' }

			for i = 1, #shop.locations do
				local coords = shop.locations[i]
				id += 1

				shops[id] = lib.points.new(coords, 16, {
					coords   = coords,
					distance = 16,
					inv      = 'shop',
					invId    = i,
					type     = type,
					marker   = markerColour,
					prompt   = {
						options = shopPrompt,
						message = ('**%s**  \n%s'):format(
							label,
							locale('interact_prompt', GetControlInstructionalButton(0, 38, true):sub(3))
						),
					},
					nearby = Utils.nearbyMarker,
					blip   = blip and createBlip(blip, coords),
				})
			end
		end

		::skipLoop::
	end
end

return {
	refreshShops = refreshShops,
	wipeShops    = wipeShops,
}
