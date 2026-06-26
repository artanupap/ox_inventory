return {

	-- General shop ปิดแล้ว ใช้ convenience_store resource แทน

	-- ══════════════════════════════════════
	--  ร้านเหล้า (NPC พนักงานบาร์)
	-- ══════════════════════════════════════
	Liquor = {
		name = 'ร้านเหล้า',
		icon = 'fas fa-wine-bottle',
		blip = {
			id = 93, colour = 69, scale = 0.8
		},
		inventory = {
			{ name = 'water',  price = 10 },
			{ name = 'phone',  price = 10 },
			{ name = 'burger', price = 15 },
		},
		targets = {
			{
				loc      = vec3(-52.83, 6507.88, 35.47),
				heading  = 44.43,
				ped      = 'a_m_m_business_01',
				scenario = 'WORLD_HUMAN_STAND_IMPATIENT',
				label    = 'ซื้อเครื่องดื่ม',
				distance = 2.0,
			},
		}
	},

-- ══════════════════════════════════════
	--  ตู้ยา (NPC พยาบาล)
	-- ══════════════════════════════════════
	Medicine = {
		name = 'ห้องพยาบาล',
		icon = 'fas fa-kit-medical',
		groups = { ['ambulance'] = 0 },
		blip = {
			id = 403, colour = 69, scale = 0.8
		},
		inventory = {
			{ name = 'medikit', price = 26 },
			{ name = 'bandage', price = 5  },
		},
		targets = {
			{
				loc     = vec3(306.3687, -601.5139, 43.28406),
				heading = 340.0,
				ped     = 's_f_y_scrubs_01',
				scenario = 'WORLD_HUMAN_CLIPBOARD',
				label   = 'รับอุปกรณ์การแพทย์',
				distance = 2.0,
			},
		}
	},

-- ══════════════════════════════════════
	--  ตู้น้ำอัตโนมัติ (ใช้ model แทน NPC)
	-- ══════════════════════════════════════
	VendingMachineDrinks = {
		name = 'ตู้น้ำอัตโนมัติ',
		icon = 'fas fa-droplet',
		inventory = {
			{ name = 'water', price = 10 },
			{ name = 'cola',  price = 10 },
		},
		model = {
			`prop_vend_soda_02`, `prop_vend_fridge01`, `prop_vend_water_01`, `prop_vend_soda_01`
		}
	},

}
