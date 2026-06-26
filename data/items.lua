return {

	-- ===== ไอเทมอาหารไทยและของใช้ =====

	['patongko'] = {
		label = 'ปาท่องโก๋',
		weight = 150,
		stack = true,
		close = true,
		degrade = 30,
		decay = true,
		description = 'ปาท่องโก๋กรอบๆ ร้อนๆ อร่อยมาก (หมดอายุใน 30 นาที)',
		client = {
			image = 'patongko.png',
			status = { hunger = 100000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2000,
		},
	},

	['pad_krapao'] = {
		label = 'ผัดกระเพรา',
		weight = 350,
		stack = true,
		close = true,
		degrade = 120,
		description = 'ผัดกระเพราหมูสับไข่ดาว เผ็ดร้อนกลมกล่อม (หมดอายุใน 2 ชั่วโมง)',
		client = {
			image = 'pad_krapao.png',
			status = { hunger = 250000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 3000,
		},
	},

	['yakult'] = {
		label = 'ยาคูลท์',
		weight = 65,
		stack = true,
		close = true,
		degrade = 30,
		decay = true,
		description = 'เครื่องดื่มโยเกิร์ตหมักบำรุงสุขภาพ (หมดอายุใน 30 นาที)',
		client = {
			image = 'yakult.png',
			status = { thirst = 150000 },
			anim = 'drinking',
			prop = 'beer',
			usetime = 1500,
		},
	},

	['fruit_smoothie'] = {
		label = 'น้ำผลไม้ปั่น',
		weight = 400,
		stack = true,
		close = true,
		degrade = 120,
		description = 'น้ำผลไม้ปั่นสดชื่น หวานเย็นชื่นใจ (หมดอายุใน 2 ชั่วโมง)',
		client = {
			image = 'fruit_smoothie.png',
			status = { thirst = 200000, hunger = 50000 },
			anim = 'drinking',
			prop = 'beer',
			usetime = 2000,
		},
	},

	['soap'] = {
		label = 'สบู่',
		weight = 120,
		stack = true,
		close = true,
		description = 'สบู่อาบน้ำหอมกลิ่นดอกไม้',
		client = {
			image = 'soap.png',
			usetime = 1500,
		},
	},

	-- ===== ไอเทมเกษตรกรรม =====

	['rice_seed'] = {
		label = 'เมล็ดข้าว',
		weight = 100,
		stack = true,
		close = true,
		description = 'เมล็ดข้าวสำหรับปลูก ต้องใช้คู่กับปุ๋ย',
		client = {
			image = 'rice_seed.png',
		},
	},

	['fertilizer'] = {
		label = 'ปุ๋ย',
		weight = 500,
		stack = true,
		close = true,
		description = 'ใช้ปลูกข้าวและเพิ่มความเร็วเติบโต 35%',
		client = {
			image = 'fertilizer.png',
		},
	},

	['water_bucket'] = {
		label = 'ถังน้ำ',
		weight = 800,
		stack = true,
		close = true,
		description = 'ใช้รดน้ำต้นข้าว',
		client = {
			image = 'water_bucket.png',
		},
	},

	['pesticide'] = {
		label = 'ยาฆ่าแมลง',
		weight = 300,
		stack = true,
		close = true,
		description = 'กำจัดแมลงก่อนต้นข้าวจะตาย',
		client = {
			image = 'pesticide.png',
		},
	},

	['rice'] = {
		label = 'ข้าวเปลือก',
		weight = 500,
		stack = true,
		close = true,
		description = 'ผลผลิตจากการเก็บเกี่ยวข้าว',
		client = { image = 'rice.png' },
	},

	-- ── เมล็ดพันธุ์เพิ่มเติม ──
	['banana_seed'] = {
		label = 'เมล็ดกล้วย',
		weight = 100,
		stack = true,
		close = true,
		description = 'หน่อกล้วยสำหรับปลูก',
		client = { image = 'banana_seed.png' },
	},
	['orange_seed'] = {
		label = 'เมล็ดส้ม',
		weight = 100,
		stack = true,
		close = true,
		description = 'เมล็ดส้มสำหรับปลูก',
		client = { image = 'orange_seed.png' },
	},
	['chili_seed'] = {
		label = 'เมล็ดพริก',
		weight = 100,
		stack = true,
		close = true,
		description = 'เมล็ดพริกสำหรับปลูก',
		client = { image = 'chili_seed.png' },
	},
	['basil_seed'] = {
		label = 'ต้นกล้ากะเพรา',
		weight = 100,
		stack = true,
		close = true,
		description = 'ต้นกล้ากะเพราสำหรับปลูก',
		client = { image = 'basil_seed.png' },
	},

	-- ── ผลผลิต ──
	-- ['corn'] = {
	-- 	label = 'ข้าวโพด',
	-- 	weight = 400,
	-- 	stack = true,
	-- 	close = true,
	-- 	description = 'ข้าวโพดสดจากไร่',
	-- 	client = { image = 'corn.png' },
	-- },
	-- ['potato'] = {
	-- 	label = 'มันฝรั่ง',
	-- 	weight = 400,
	-- 	stack = true,
	-- 	close = true,
	-- 	description = 'มันฝรั่งสดจากไร่',
	-- 	client = { image = 'potato.png' },
	-- },
	['banana'] = {
		label = 'กล้วย',
		weight = 500,
		stack = true,
		close = true,
		description = 'กล้วยสดจากสวน',
		client = { image = 'banana.png' },
	},
	['orange'] = {
		label = 'ส้ม',
		weight = 500,
		stack = true,
		close = true,
		description = 'ส้มสดจากสวน',
		client = { image = 'orange.png' },
	},
	['chili'] = {
		label = 'พริก',
		weight = 500,
		stack = true,
		close = true,
		description = 'พริกสดจากไร่',
		client = { image = 'chili.png' },
	},
	['basil'] = {
		label = 'ใบกะเพรา',
		weight = 500,
		stack = true,
		close = true,
		description = 'ใบกะเพราสดหอมกรุ่น',
		client = { image = 'basil.png' },
	},

	-- ===== ไอเทมดั้งเดิม =====

	-- น้ำมันดิบ
['crude_oil'] = {
    label = 'น้ำมันดิบ',
    weight = 2000,
    stack = true,
    close = false,
    description = 'น้ำมันดิบที่ขโมยมาจากเรือสินค้า ต้องนำไปกลั่นก่อนใช้งาน'
},

-- น้ำมันเถื่อน
-- อุปกรณ์สูบน้ำมัน
	['hemostatic_bandage'] = {
		label = 'อุปกรณ์ห้ามเลือด',
		weight = 100,
		server = {
			export = 'ND_Ambulance.treatment',
		},
		client = {
			anim = { dict = 'missheistdockssetup1clipboard@idle_a', clip = 'idle_a', flag = 49 },
			prop = { model = `prop_rolled_sock_02`, pos = vec3(-0.14, -0.14, -0.08), rot = vec3(-50.0, -50.0, 0.0) },
			disable = { move = true, car = true, combat = true },
			usetime = 3000,
		},
	},

	['miracle_syringe'] = {
		label = 'Miracle Syringe',
		weight = 100,
		stack = false,
		consume = 0,
		client = {
			export = 'ND_Ambulance.useMiracleSyringe',
		},
	},

	['bandage'] = {
		label = 'Bandage',
		weight = 115,
		client = {
			anim = { dict = 'missheistdockssetup1clipboard@idle_a', clip = 'idle_a', flag = 49 },
			prop = { model = `prop_rolled_sock_02`, pos = vec3(-0.14, -0.14, -0.08), rot = vec3(-50.0, -50.0, 0.0) },
			disable = { move = true, car = true, combat = true },
			usetime = 2500,
		}
	},

	['black_money'] = {
		label = 'Dirty Money',
	},

	['burger'] = {
		label = 'Burger',
		weight = 220,
		degrade = 30,
		decay = true,
		client = {
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			notification = 'You ate a delicious burger'
		},
	},

	['sprunk'] = {
		label = 'Sprunk',
		weight = 350,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ld_can_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'You quenched your thirst with a sprunk'
		}
	},

	['parachute'] = {
		label = 'Parachute',
		weight = 8000,
		stack = false,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 1500
		}
	},

	['garbage'] = {
		label = 'Garbage',
	},

	['paperbag'] = {
		label = 'Paper Bag',
		weight = 1,
		stack = false,
		close = false,
		consume = 0
	},

	['cop_gel'] = {
		label   = 'เจลตรวจสอบ',
		weight  = 100,
		stack   = false,
		consume = 0,
		close   = false,
	},

	['panties'] = {
		label = 'Knickers',
		weight = 10,
		consume = 0,
		client = {
			status = { thirst = -100000, stress = -25000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_cs_panties_02`, pos = vec3(0.03, 0.0, 0.02), rot = vec3(0.0, -13.5, -1.5) },
			usetime = 2500,
		}
	},

	['lockpick'] = {
		label = 'Lockpick',
		weight = 160,
	},

	['phone'] = {
		label = 'Phone',
		weight = 190,
		stack = false,
		consume = 0,
		client = {
			add = function(total)
				if total > 0 then
					pcall(function() return exports.npwd:setPhoneDisabled(false) end)
				end
			end,

			remove = function(total)
				if total < 1 then
					pcall(function() return exports.npwd:setPhoneDisabled(true) end)
				end
			end
		}
	},

	['money'] = {
		label = 'Money',
	},

	['mustard'] = {
		label = 'Mustard',
		weight = 500,
		client = {
			status = { hunger = 25000, thirst = 25000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_food_mustard`, pos = vec3(0.01, 0.0, -0.07), rot = vec3(1.0, 1.0, -1.5) },
			usetime = 2500,
			notification = 'You.. drank mustard'
		}
	},

	['water'] = {
		label = 'Water',
		weight = 500,
		degrade = 30,
		decay = true,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ld_flow_bottle`, pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5) },
			usetime = 2500,
			cancel = true,
			notification = 'You drank some refreshing water'
		}
	},

	['radio'] = {
		label = 'Radio',
		weight = 1000,
		stack = false,
		allowArmed = true
	},

	['armour'] = {
		label = 'Bulletproof Vest',
		weight = 3000,
		stack = false,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 3500
		}
	},

	['scrapmetal'] = {
		label = 'Scrap Metal',
		weight = 80,
	},

	['steel_part'] = {
		label  = 'ชิ้นส่วนเหล็ก',
		weight = 2000,
		stack  = true,
		close  = true,
	},

	["medikit"] = {
		label = "Medikit",
		weight = 2,
		stack = true,
		close = true,
	},

	-- ===== ปศุสัตว์ =====

	['piglet'] = {
		label       = 'ลูกหมู',
		weight      = 3000,
		stack       = false,
		close       = true,
		image       = 'piglet',
		description = 'ลูกหมูสำหรับเลี้ยงในคอก',
	},

	['chick'] = {
		label       = 'ลูกเจี๊ยบ',
		weight      = 500,
		stack       = false,
		close       = true,
		image       = 'chick',
		description = 'ลูกไก่สำหรับเลี้ยงในคอก',
	},

	['pig_food'] = {
		label       = 'อาหารหมู',
		weight      = 1000,
		stack       = true,
		close       = true,
		image       = 'pig_food',
		description = 'อาหารสำหรับเลี้ยงหมู',
	},

	['chicken_food'] = {
		label       = 'อาหารไก่',
		weight      = 800,
		stack       = true,
		close       = true,
		image       = 'chicken_food',
		description = 'อาหารสำหรับเลี้ยงไก่',
	},

	['pig_vaccine'] = {
		label       = 'วัคซีนหมู',
		weight      = 200,
		stack       = true,
		close       = true,
		image       = 'pig_vaccine',
		description = 'เข็มวัคซีนสำหรับรักษาหมูที่ติดเชื้อ',
	},

	['hen_vaccine'] = {
		label       = 'วัคซีนไก่',
		weight      = 200,
		stack       = true,
		close       = true,
		image       = 'hen_vaccine',
		description = 'เข็มวัคซีนสำหรับรักษาไก่ที่ติดเชื้อ',
	},

	-- ===== ผลผลิต =====

	['pork_meat'] = {
		label       = 'เนื้อหมู',
		weight      = 1500,
		stack       = true,
		close       = true,
		image       = 'pork_meat',
		description = 'เนื้อหมูสดจากการชำแหละ',
	},

	['chicken_meat'] = {
		label       = 'เนื้อไก่',
		weight      = 800,
		stack       = true,
		close       = true,
		image       = 'chicken_meat',
		description = 'เนื้อไก่สดจากการชำแหละ',
	},

	['egg'] = {
		label       = 'ไข่ไก่',
		weight      = 300,
		stack       = true,
		close       = true,
		image       = 'egg',
		description = 'ไข่ไก่สดจากคอกเลี้ยง',
	},

	['wild_meat'] = {
		label       = 'เนื้อสัตว์ป่า',
		weight      = 2000,
		stack       = true,
		close       = true,
		image       = 'wild_meat',
		description = 'เนื้อจากสัตว์ป่าที่ล่าได้',
	},

	['animal_hide'] = {
		label       = 'หนังสัตว์',
		weight      = 1000,
		stack       = true,
		close       = true,
		image       = 'animal_hide',
		description = 'หนังสัตว์ป่า — ใช้เย็บชุดเกราะ',
	},

	-- ===== อุปกรณ์ล่าสัตว์ =====

	['hunting_rifle'] = {
		label       = 'ปืนล่าสัตว์',
		weight      = 5000,
		stack       = false,
		close       = true,
		image       = 'hunting_rifle',
		description = 'ปืนสำหรับล่าสัตว์ป่า',
	},

	['hunting_knife'] = {
		label       = 'มีดล่าสัตว์',
		weight      = 500,
		stack       = false,
		close       = true,
		image       = 'hunting_knife',
		description = 'มีดสำหรับใช้ในป่า',
	},

	-- ===== Repair Kits =====

	['standard_kit'] = {
		label       = 'ชุดซ่อมมาตรฐาน',
		weight      = 2000,
		stack       = false,
		close       = true,
		image       = 'standard_kit',
		description = 'ชุดซ่อมรถยนต์ทั่วไป',
	},
	['advanced_kit'] = {
		label       = 'ชุดซ่อมขั้นสูง',
		weight      = 4000,
		stack       = false,
		close       = true,
		image       = 'advanced_kit',
		description = 'ชุดซ่อมรถยนต์ขั้นสูง',
	},
	['helicopter_kit'] = {
		label       = 'ชุดซ่อมเฮลิคอปเตอร์',
		weight      = 6000,
		stack       = false,
		close       = true,
		image       = 'helicopter_kit',
		description = 'ชุดซ่อมเฮลิคอปเตอร์โดยเฉพาะ',
	},

	-- ===== Wax =====

	['basic_wax'] = {
		label       = 'แว็กซ์พื้นฐาน',
		weight      = 500,
		stack       = true,
		close       = false,
		image       = 'basic_wax',
		description = 'แว็กซ์เคลือบสีรถขั้นพื้นฐาน',
	},
	['advanced_wax'] = {
		label       = 'แว็กซ์ขั้นสูง',
		weight      = 500,
		stack       = true,
		close       = false,
		image       = 'advanced_wax',
		description = 'แว็กซ์เคลือบสีรถขั้นสูง',
	},
	['premium_wax'] = {
		label       = 'แว็กซ์พรีเมียม',
		weight      = 500,
		stack       = true,
		close       = false,
		image       = 'premium_wax',
		description = 'แว็กซ์เคลือบสีรถระดับพรีเมียม',
	},

	-- ===== Cleaning =====

	['cleaning_sponge'] = {
		label       = 'ฟองน้ำล้างรถ',
		weight      = 200,
		stack       = true,
		close       = false,
		image       = 'cleaning_sponge',
		description = 'ฟองน้ำสำหรับล้างรถ',
	},
	['car_soap'] = {
		label       = 'แชมพูล้างรถ',
		weight      = 300,
		stack       = true,
		close       = false,
		image       = 'car_soap',
		description = 'แชมพูสำหรับล้างรถ',
	},

	-- ===== Nitro =====

	['nitro_canister'] = {
		label       = 'ถังไนโตรเจน',
		weight      = 5000,
		stack       = false,
		close       = false,
		image       = 'nitro_canister',
		description = 'ถังไนโตรสำหรับเพิ่มความเร็ว',
	},

	-- ===== Turbos =====

	['turbo_27mm'] = {
		label       = 'เทอร์โบ 27mm',
		weight      = 8000,
		stack       = false,
		close       = false,
		image       = 'turbo_27mm',
		description = 'เทอร์โบขนาด 27mm สำหรับรถเล็ก',
	},
	['turbo_33mm'] = {
		label       = 'เทอร์โบ 33mm',
		weight      = 9000,
		stack       = false,
		close       = false,
		image       = 'turbo_33mm',
		description = 'เทอร์โบขนาด 33mm',
	},
	['turbo_43mm'] = {
		label       = 'เทอร์โบ 43mm',
		weight      = 10000,
		stack       = false,
		close       = false,
		image       = 'turbo_43mm',
		description = 'เทอร์โบขนาด 43mm สำหรับรถกลาง',
	},
	['turbo_52mm'] = {
		label       = 'เทอร์โบ 52mm',
		weight      = 12000,
		stack       = false,
		close       = false,
		image       = 'turbo_52mm',
		description = 'เทอร์โบขนาด 52mm สำหรับรถแรงสูง',
	},

	-- ===== Electronics =====

	['tcs_module'] = {
		label       = 'โมดูล TCS',
		weight      = 500,
		stack       = false,
		close       = false,
		image       = 'tcs_module',
		description = 'โมดูลควบคุมการยึดเกาะถนน',
	},
	['esc_module'] = {
		label       = 'โมดูล ESC',
		weight      = 500,
		stack       = false,
		close       = false,
		image       = 'esc_module',
		description = 'โมดูลระบบควบคุมเสถียรภาพ',
	},

	-- ===== Anti-Lag =====

	['antilag_kit'] = {
		label       = 'ชุดแอนตี้แล็ก',
		weight      = 3000,
		stack       = false,
		close       = false,
		image       = 'antilag_kit',
		description = 'ชุดป้องกันเทอร์โบแล็ก',
	},

	-- ===== Tuning Chip =====

	['tuning_chip'] = {
		label       = 'ชิปจูนนิ่ง',
		weight      = 100,
		stack       = false,
		close       = false,
		image       = 'tuning_chip',
		description = 'ชิปปรับแต่งสมรรถนะเครื่องยนต์',
	},

	-- ===== Engine Parts =====

	['piston'] = {
		label       = 'ลูกสูบ',
		weight      = 1000,
		stack       = true,
		close       = false,
		image       = 'piston',
		description = 'ลูกสูบสำหรับซ่อมหรืออัพเกรดเครื่องยนต์',
	},
	['valve'] = {
		label       = 'วาล์ว',
		weight      = 300,
		stack       = true,
		close       = false,
		image       = 'valve',
		description = 'วาล์วเครื่องยนต์',
	},
	['crankshaft'] = {
		label       = 'เพลาข้อเหวี่ยง',
		weight      = 5000,
		stack       = true,
		close       = false,
		image       = 'crankshaft',
		description = 'เพลาข้อเหวี่ยงสำหรับเครื่องยนต์',
	},
	['engine_box'] = {
		label       = 'กล่องเครื่องยนต์',
		weight      = 20000,
		stack       = false,
		close       = false,
		image       = 'engine_box',
		description = 'กล่องเครื่องยนต์สมบูรณ์',
	},

	-- ===== Engine Stages =====

	['stage1_engine'] = {
		label       = 'เครื่องยนต์ Stage 1',
		weight      = 30000,
		stack       = false,
		close       = false,
		image       = 'stage1_engine',
		description = 'เครื่องยนต์อัพเกรด Stage 1',
	},
	['stage2_engine'] = {
		label       = 'เครื่องยนต์ Stage 2',
		weight      = 35000,
		stack       = false,
		close       = false,
		image       = 'stage2_engine',
		description = 'เครื่องยนต์อัพเกรด Stage 2',
	},
	['stage3_engine'] = {
		label       = 'เครื่องยนต์ Stage 3',
		weight      = 40000,
		stack       = false,
		close       = false,
		image       = 'stage3_engine',
		description = 'เครื่องยนต์อัพเกรด Stage 3 สมรรถนะสูงสุด',
	},

	-- ===== Gearboxes =====

	['gearbox_auto'] = {
		label       = 'เกียร์อัตโนมัติ',
		weight      = 15000,
		stack       = false,
		close       = false,
		image       = 'gearbox_auto',
		description = 'ชุดเกียร์อัตโนมัติ',
	},
	['gearbox_manual'] = {
		label       = 'เกียร์ธรรมดา',
		weight      = 15000,
		stack       = false,
		close       = false,
		image       = 'gearbox_manual',
		description = 'ชุดเกียร์ธรรมดา',
	},
	['gearbox_sequential'] = {
		label       = 'เกียร์ลำดับ (DCT)',
		weight      = 15000,
		stack       = false,
		close       = false,
		image       = 'gearbox_sequential',
		description = 'ชุดเกียร์ลำดับแบบ DCT',
	},

	-- ===== Exhausts =====

	['exhaust_standard'] = {
		label       = 'ท่อไอเสียมาตรฐาน',
		weight      = 8000,
		stack       = false,
		close       = false,
		image       = 'exhaust_standard',
		description = 'ท่อไอเสียมาตรฐานทั่วไป',
	},
	['exhaust_italian'] = {
		label       = 'ท่อไอเสียอิตาลี',
		weight      = 8000,
		stack       = false,
		close       = false,
		image       = 'exhaust_italian',
		description = 'ท่อไอเสียสไตล์อิตาลีเสียงเดือด',
	},
	['exhaust_sequential'] = {
		label       = 'ท่อไอเสียซีเควน',
		weight      = 8000,
		stack       = false,
		close       = false,
		image       = 'exhaust_sequential',
		description = 'ท่อไอเสียแบบซีเควนเชียล',
	},
	['exhaust_muscle'] = {
		label       = 'ท่อไอเสียมัสเซิล',
		weight      = 8000,
		stack       = false,
		close       = false,
		image       = 'exhaust_muscle',
		description = 'ท่อไอเสียแบบ Muscle car',
	},

	-- ===== Tires =====

	['tire_standard'] = {
		label       = 'ยางมาตรฐาน',
		weight      = 5000,
		stack       = true,
		close       = false,
		image       = 'tire_standard',
		description = 'ยางรถยนต์มาตรฐาน',
	},
	['tire_sport'] = {
		label       = 'ยางสปอร์ต',
		weight      = 5000,
		stack       = true,
		close       = false,
		image       = 'tire_sport',
		description = 'ยางรถยนต์สปอร์ต',
	},
	['tire_race'] = {
		label       = 'ยางเรซซิ่ง',
		weight      = 5000,
		stack       = true,
		close       = false,
		image       = 'tire_race',
		description = 'ยางแข่งสมรรถนะสูง',
	},
	['tire_drift'] = {
		label       = 'ยางดริฟท์',
		weight      = 5000,
		stack       = true,
		close       = false,
		image       = 'tire_drift',
		description = 'ยางดริฟท์ลื่นพิเศษ',
	},
	['tire_slick'] = {
		label       = 'ยางสลิก',
		weight      = 5000,
		stack       = true,
		close       = false,
		image       = 'tire_slick',
		description = 'ยางสลิกสำหรับสนามแข่ง',
	},
	['tire_offroad'] = {
		label       = 'ยางออฟโรด',
		weight      = 5000,
		stack       = true,
		close       = false,
		image       = 'tire_offroad',
		description = 'ยางออฟโรดสำหรับภูมิประเทศขรุขระ',
	},

	-- ===== ระบบซ่อมบำรุงรถยนต์ (Mechanic System) =====

	['nitrous'] = {
		label       = 'ไนตรัส',
		weight      = 2000,
		stack       = true,
		close       = true,
		image       = 'nitrous',
		description = 'ถังไนตรัสออกไซด์สำหรับเพิ่มความเร็ว',
	},
	['spark_plugs'] = {
		label       = 'หัวเทียน',
		weight      = 100,
		stack       = true,
		close       = true,
		image       = 'spark_plugs',
		description = 'หัวเทียนมาตรฐานสำหรับบำรุงรักษาเครื่องยนต์',
	},
	['engine_oil'] = {
		label       = 'น้ำมันเครื่อง',
		weight      = 500,
		stack       = true,
		close       = true,
		image       = 'engine_oil',
		description = 'น้ำมันเครื่องคุณภาพสูง',
	},
	['oil_filter'] = {
		label       = 'กรองน้ำมัน',
		weight      = 200,
		stack       = true,
		close       = true,
		image       = 'oil_filter',
		description = 'ไส้กรองน้ำมันเครื่องสำหรับเปลี่ยนทดแทน',
	},
	['air_filter'] = {
		label       = 'กรองอากาศ',
		weight      = 300,
		stack       = true,
		close       = true,
		image       = 'air_filter',
		description = 'กรองอากาศไหลสูงเพื่อสมรรถนะเครื่องยนต์ที่ดีขึ้น',
	},
	['tires'] = {
		label       = 'ยางรถยนต์',
		weight      = 5000,
		stack       = true,
		close       = true,
		image       = 'tires',
		description = 'ชุดยางรถยนต์สำหรับเปลี่ยนทดแทน',
	},
	['brakeparts'] = {
		label       = 'ชิ้นส่วนเบรก',
		weight      = 1500,
		stack       = true,
		close       = true,
		image       = 'brakeparts',
		description = 'ชิ้นส่วนสำคัญสำหรับซ่อมระบบเบรก',
	},
	['suspension_parts'] = {
		label       = 'ชิ้นส่วนช่วงล่าง',
		weight      = 2500,
		stack       = true,
		close       = true,
		image       = 'suspension_parts',
		description = 'ชิ้นส่วนช่วงล่างแบบทนทาน',
	},
	['clutch'] = {
		label       = 'คลัตช์',
		weight      = 3000,
		stack       = true,
		close       = true,
		image       = 'clutch',
		description = 'ชุดคลัตช์แบบ Heavy-duty',
	},
	['engine_pistons'] = {
		label       = 'ลูกสูบเครื่องยนต์',
		weight      = 2000,
		stack       = true,
		close       = true,
		image       = 'engine_pistons',
		description = 'ลูกสูบเครื่องยนต์อลูมิเนียมหล่อขึ้นรูป',
	},
	['radiator'] = {
		label       = 'หม้อน้ำ',
		weight      = 4000,
		stack       = true,
		close       = true,
		image       = 'radiator',
		description = 'หม้อน้ำเครื่องยนต์สมรรถนะสูง',
	},
	['fuel_pump'] = {
		label       = 'ปั๊มน้ำมัน',
		weight      = 1000,
		stack       = true,
		close       = true,
		image       = 'fuel_pump',
		description = 'ปั๊มน้ำมันแรงดันสูง',
	},
	['alternator_battery'] = {
		label       = 'ไดชาร์จ / แบตเตอรี่',
		weight      = 5000,
		stack       = true,
		close       = true,
		image       = 'alternator_battery',
		description = 'ระบบไดชาร์จและแบตเตอรี่รถยนต์',
	},

	-- ===== ชุดซ่อม (Repair Kits) =====

	['repair_kit'] = {
		label       = 'ชุดซ่อมพื้นฐาน',
		weight      = 1000,
		stack       = true,
		close       = true,
		image       = 'repair_kit',
		description = 'ชุดซ่อมรถยนต์ขั้นพื้นฐาน',
	},
	['advanced_repair_kit'] = {
		label       = 'ชุดซ่อมขั้นสูง',
		weight      = 2000,
		stack       = true,
		close       = true,
		image       = 'advanced_repair_kit',
		description = 'ชุดซ่อมรถยนต์ขั้นสูง',
	},
	['heli_repair_kit'] = {
		label       = 'ชุดซ่อมเฮลิคอปเตอร์',
		weight      = 2500,
		stack       = true,
		close       = true,
		image       = 'heli_repair_kit',
		description = 'ชุดซ่อมเฮลิคอปเตอร์โดยเฉพาะ',
	},
	['cleaning_kit'] = {
		label       = 'ชุดทำความสะอาดรถ',
		weight      = 1000,
		stack       = true,
		close       = true,
		image       = 'cleaning_kit',
		description = 'ชุดอุปกรณ์ทำความสะอาดรถยนต์',
	},
	['piston_repair_kit'] = {
		label       = 'ชุดซ่อมลูกสูบ',
		weight      = 500,
		stack       = true,
		close       = true,
		image       = 'piston_repair_kit',
		description = 'เครื่องมือและชิ้นส่วนสำหรับซ่อมลูกสูบ',
	},
	['radiator_repair_kit'] = {
		label       = 'ชุดซ่อมหม้อน้ำ',
		weight      = 500,
		stack       = true,
		close       = true,
		image       = 'radiator_repair_kit',
		description = 'เครื่องมือและชิ้นส่วนสำหรับซ่อมหม้อน้ำ',
	},
	['fuel_pump_repair_kit'] = {
		label       = 'ชุดซ่อมปั๊มน้ำมัน',
		weight      = 500,
		stack       = true,
		close       = true,
		image       = 'fuel_pump_repair_kit',
		description = 'เครื่องมือและชิ้นส่วนสำหรับซ่อมปั๊มน้ำมัน',
	},
	['alternator_repair_kit'] = {
		label       = 'ชุดซ่อมไดชาร์จ',
		weight      = 500,
		stack       = true,
		close       = true,
		image       = 'alternator_repair_kit',
		description = 'เครื่องมือและชิ้นส่วนสำหรับซ่อมไดชาร์จ',
	},
	['body_repair_kit'] = {
		label       = 'ชุดซ่อมตัวถัง',
		weight      = 1000,
		stack       = true,
		close       = true,
		image       = 'body_repair_kit',
		description = 'เครื่องมือและวัสดุสำหรับซ่อมตัวถังรถ',
	},
	['brake_pads_repair'] = {
		label       = 'ชุดซ่อมผ้าเบรก',
		weight      = 400,
		stack       = true,
		close       = true,
		image       = 'brake_pads_repair',
		description = 'ชุดเปลี่ยนผ้าเบรกที่สึกหรอ',
	},
	['suspension_repair'] = {
		label       = 'ชุดซ่อมช่วงล่าง',
		weight      = 800,
		stack       = true,
		close       = true,
		image       = 'suspension_repair',
		description = 'เครื่องมือและชิ้นส่วนสำหรับซ่อมช่วงล่าง',
	},
	['clutch_repair'] = {
		label       = 'ชุดซ่อมคลัตช์',
		weight      = 800,
		stack       = true,
		close       = true,
		image       = 'clutch_repair',
		description = 'เครื่องมือและชิ้นส่วนสำหรับซ่อมคลัตช์',
	},
	['turbo_repair_kit'] = {
		label       = 'ชุดซ่อมเทอร์โบ',
		weight      = 500,
		stack       = true,
		close       = true,
		image       = 'turbo_repair_kit',
		description = 'เครื่องมือและชิ้นส่วนสำหรับซ่อมเทอร์โบ',
	},
	['gearbox_repair_kit'] = {
		label       = 'ชุดซ่อมเกียร์',
		weight      = 500,
		stack       = true,
		close       = true,
		image       = 'gearbox_repair_kit',
		description = 'เครื่องมือและชิ้นส่วนสำหรับซ่อมเกียร์',
	},

	-- ===== กล่องเครื่องยนต์ (Engine Boxes) =====

	['engine_box_tier1'] = {
		label       = 'กล่องเครื่องยนต์ Tier 1',
		weight      = 10000,
		stack       = true,
		close       = true,
		image       = 'engine_box_tier1',
		description = 'กล่องชิ้นส่วนเครื่องยนต์ระดับ Tier 1',
	},
	['engine_box_tier2'] = {
		label       = 'กล่องเครื่องยนต์ Tier 2',
		weight      = 12000,
		stack       = true,
		close       = true,
		image       = 'engine_box_tier2',
		description = 'กล่องชิ้นส่วนเครื่องยนต์ระดับ Tier 2',
	},
	['engine_box_tier3'] = {
		label       = 'กล่องเครื่องยนต์ Tier 3',
		weight      = 15000,
		stack       = true,
		close       = true,
		image       = 'engine_box_tier3',
		description = 'กล่องชิ้นส่วนเครื่องยนต์ระดับ Tier 3',
	},
	-- ===== ลูกสูบ (Pistons) =====

	['piston_s1'] = { label = 'ลูกสูบ S1', weight = 2000, stack = true, close = true, image = 'engine_pistons', description = 'ลูกสูบสมรรถนะสูง Stage 1' },
	['piston_s2'] = { label = 'ลูกสูบ S2', weight = 2100, stack = true, close = true, image = 'engine_pistons', description = 'ลูกสูบสมรรถนะสูง Stage 2' },
	['piston_s3'] = { label = 'ลูกสูบ S3', weight = 2200, stack = true, close = true, image = 'engine_pistons', description = 'ลูกสูบสมรรถนะสูง Stage 3' },

	-- ===== เพลาข้อเหวี่ยง (Crankshafts) =====

	['crankshaft_s1'] = { label = 'เพลาข้อเหวี่ยง S1', weight = 5000, stack = true, close = true, image = 'crankshaft', description = 'เพลาข้อเหวี่ยงน้ำหนักเบา Stage 1' },
	['crankshaft_s2'] = { label = 'เพลาข้อเหวี่ยง S2', weight = 5100, stack = true, close = true, image = 'crankshaft', description = 'เพลาข้อเหวี่ยงน้ำหนักเบา Stage 2' },
	['crankshaft_s3'] = { label = 'เพลาข้อเหวี่ยง S3', weight = 5200, stack = true, close = true, image = 'crankshaft', description = 'เพลาข้อเหวี่ยงน้ำหนักเบา Stage 3' },

	-- ===== วาล์ว (Valves) =====

	['valves_s1'] = { label = 'วาล์ว S1', weight = 100,  stack = true, close = true, image = 'valve', description = 'วาล์วเครื่องยนต์สมรรถนะสูง Stage 1' },
	['valves_s2'] = { label = 'วาล์ว S2', weight = 110,  stack = true, close = true, image = 'valve', description = 'วาล์วเครื่องยนต์สมรรถนะสูง Stage 2' },
	['valves_s3'] = { label = 'วาล์ว S3', weight = 120,  stack = true, close = true, image = 'valve', description = 'วาล์วเครื่องยนต์สมรรถนะสูง Stage 3' },

	-- ===== ซูเปอร์ชาร์จเจอร์ (Superchargers) =====

	['supercharger_s3'] = {
		label       = 'ซูเปอร์ชาร์จเจอร์ S3',
		weight      = 5000,
		stack       = true,
		close       = true,
		image       = 'supercharger_s3',
		description = 'ซูเปอร์ชาร์จเจอร์ระดับสูง Stage 3',
	},
	-- ===== เครื่องยนต์ Stage (Engine Stages) =====

	['engine_stage1'] = { label = 'เครื่องยนต์ Stage 1', weight = 50000, stack = false, close = true, image = 'engine_stage1', description = 'เครื่องยนต์สมรรถนะสูง Stage 1 สมบูรณ์' },
	['engine_stage2'] = { label = 'เครื่องยนต์ Stage 2', weight = 55000, stack = false, close = true, image = 'engine_stage2', description = 'เครื่องยนต์สมรรถนะสูง Stage 2 สมบูรณ์' },
	['engine_stage3'] = { label = 'เครื่องยนต์ Stage 3', weight = 60000, stack = false, close = true, image = 'engine_stage3', description = 'เครื่องยนต์สมรรถนะสูง Stage 3 สมบูรณ์' },
	['engine_stage4'] = { label = 'เครื่องยนต์ Stage 4', weight = 65000, stack = false, close = true, image = 'engine_stage4', description = 'เครื่องยนต์สมรรถนะสูง Stage 4 สมบูรณ์' },

	-- ===== เกียร์ (Gearboxes) =====

	['trans_manual'] = {
		label       = 'เกียร์ธรรมดา',
		weight      = 15000,
		stack       = false,
		close       = true,
		image       = 'trans_manual',
		description = 'ชุดเกียร์ธรรมดาแบบ Heavy-duty',
	},
	['trans_auto_race'] = {
		label       = 'เกียร์อัตโนมัติ Race',
		weight      = 16000,
		stack       = false,
		close       = true,
		image       = 'trans_auto_race',
		description = 'ชุดเกียร์อัตโนมัติความเร็วสูงสำหรับแข่ง',
	},
	['trans_semi_dct'] = {
		label       = 'เกียร์ Semi-DCT',
		weight      = 16000,
		stack       = false,
		close       = true,
		image       = 'trans_semi_dct',
		description = 'ชุดเกียร์ Semi-automatic Dual-Clutch',
	},
	['gearbox_parts'] = {
		label       = 'ชิ้นส่วนเกียร์',
		weight      = 1000,
		stack       = true,
		close       = true,
		image       = 'gearbox_parts',
		description = 'ชิ้นส่วนภายในสำหรับซ่อมชุดเกียร์',
	},

	-- ===== เสียงเกียร์ (Gear Sounds) =====

	['gear_sound_german']   = { label = 'เสียงเกียร์เยอรมัน',      weight = 10, stack = true, close = true, image = 'gear_sound', description = 'ไฟล์เสียงสไตล์เยอรมัน' },
	['gear_sound_italian']  = { label = 'เสียงเกียร์อิตาลี',       weight = 10, stack = true, close = true, image = 'gear_sound', description = 'ไฟล์เสียงสไตล์อิตาลี' },
	['gear_sound_race']     = { label = 'เสียงเกียร์ Race',         weight = 10, stack = true, close = true, image = 'gear_sound', description = 'ไฟล์เสียงสไตล์สนามแข่ง' },
	['gear_sound_muscle']   = { label = 'เสียงเกียร์ Muscle',       weight = 10, stack = true, close = true, image = 'gear_sound', description = 'ไฟล์เสียงสไตล์ Muscle car' },
	['gear_sound_vintage']  = { label = 'เสียงเกียร์ Vintage',      weight = 10, stack = true, close = true, image = 'gear_sound', description = 'ไฟล์เสียงสไตล์คลาสสิก' },
	['gear_sound_race_seq'] = { label = 'เสียงเกียร์ Sequential',   weight = 10, stack = true, close = true, image = 'gear_sound', description = 'ไฟล์เสียงแบบ Sequential' },

	-- ===== เทอร์โบ (Turbos) =====

	['turbo'] = {
		label       = 'เทอร์โบ',
		weight      = 2000,
		stack       = true,
		close       = true,
		image       = 'turbo',
		description = 'เทอร์โบชาร์จเจอร์สมรรถนะสูง',
	},
	['turbo_35mm'] = {
		label       = 'เทอร์โบ 35mm',
		weight      = 2500,
		stack       = true,
		close       = true,
		image       = 'turbo',
		description = 'เทอร์โบขนาดกลาง 35mm',
	},
	['turbo_42mm'] = {
		label       = 'เทอร์โบ 42mm',
		weight      = 3000,
		stack       = true,
		close       = true,
		image       = 'turbo',
		description = 'เทอร์โบขนาดใหญ่ 42mm',
	},
	['turbo_100mm'] = {
		label       = 'เทอร์โบ 100mm',
		weight      = 5000,
		stack       = true,
		close       = true,
		image       = 'turbo',
		description = 'เทอร์โบสมรรถนะสุดขีด 100mm',
	},
	['wheel_weights'] = {
		label       = 'ตุ้มถ่วงล้อ',
		weight      = 50,
		stack       = true,
		close       = true,
		image       = 'wheel_weights',
		description = 'ตุ้มถ่วงสำหรับบาลานซ์ล้อรถยนต์',
	},

	-- ===== แว็กซ์/ยาขัด (Car Polish) =====

	['carpolish_low'] = {
		label       = 'ยาขัดพื้นฐาน',
		weight      = 500,
		stack       = true,
		close       = false,
		image       = 'carpolish_low',
		description = 'ยาขัดสีรถขั้นพื้นฐาน',
	},
	['carpolish_medium'] = {
		label       = 'ยาขัดขั้นสูง',
		weight      = 500,
		stack       = true,
		close       = false,
		image       = 'carpolish_medium',
		description = 'ยาขัดสีรถขั้นสูง',
	},
	['carpolish_high'] = {
		label       = 'ยาขัดพรีเมียม',
		weight      = 500,
		stack       = true,
		close       = false,
		image       = 'carpolish_high',
		description = 'ยาขัดสีรถระดับพรีเมียม',
	},

	-- ===== ยางประเภทต่างๆ (Tire Types) =====

	['tire_street']   = { label = 'ยาง Street',    weight = 2000, stack = true, close = true, image = 'tire_street',   description = 'ยางสำหรับใช้งานบนถนนทั่วไป' },
	['tire_semislick'] = { label = 'ยาง Semi-Slick', weight = 2000, stack = true, close = true, image = 'tire_semislick', description = 'ยาง Semi-slick สำหรับสนามแข่ง' },

	-- ===== อุปกรณ์จูนรถ (Tuning) =====

	['tuning_tablet'] = {
		label       = 'แท็บเล็ตจูน',
		weight      = 500,
		stack       = false,
		close       = true,
		image       = 'tuning_tablet',
		description = 'แท็บเล็ตพกพาสำหรับเข้าถึง ECU ของรถยนต์',
	},
	['management_tablet'] = {
		label       = 'แท็บเล็ตจัดการ',
		weight      = 500,
		stack       = false,
		close       = true,
		image       = 'management_tablet',
		description = 'แท็บเล็ตระดับมืออาชีพสำหรับเจ้าของอู่',
	},
	['dyno_paper'] = {
		label       = 'กระดาษ Dyno',
		weight      = 5,
		stack       = true,
		close       = true,
		image       = 'dyno_paper',
		description = 'ผลการวัดแรงม้าจากเครื่อง Dynamometer',
	},
	['mod_report'] = {
		label       = 'รายงานการแต่งรถ',
		weight      = 10,
		stack       = true,
		close       = true,
		image       = 'mod_report',
		description = 'รายงานอย่างเป็นทางการรายละเอียดการดัดแปลงรถ',
	},
	['mechanical_receipt'] = {
		label       = 'ใบเสร็จช่าง',
		weight      = 10,
		stack       = true,
		close       = true,
		image       = 'mechanical_receipt',
		description = 'ใบเสร็จสำหรับงานซ่อมและบริการ',
	},

	-- ===== ชิ้นส่วนตกแต่ง (Mod Parts) =====

	['spoiler_part']        = { label = 'สปอยเลอร์',          weight = 1500, stack = true, close = true, image = 'spoiler_part',        description = 'ชุดอัพเกรดสปอยเลอร์' },
	['front_bumper_part']   = { label = 'กันชนหน้า',           weight = 3000, stack = true, close = true, image = 'front_bumper_part',   description = 'ชุดอัพเกรดกันชนหน้า' },
	['rear_bumper_part']    = { label = 'กันชนหลัง',           weight = 3000, stack = true, close = true, image = 'rear_bumper_part',    description = 'ชุดอัพเกรดกันชนหลัง' },
	['side_skirt_part']     = { label = 'กระโปรงข้าง',         weight = 2000, stack = true, close = true, image = 'side_skirt_part',     description = 'ชุดอัพเกรดกระโปรงข้าง' },
	['exhaust_part']        = { label = 'ท่อไอเสีย',           weight = 1500, stack = true, close = true, image = 'exhaust_part',        description = 'ชุดอัพเกรดท่อไอเสีย' },
	['frame_part']          = { label = 'โรลเคจ/โครงรถ',       weight = 4000, stack = true, close = true, image = 'frame_part',          description = 'ชุดอัพเกรดโรลเคจและโครงรถ' },
	['grille_part']         = { label = 'กระจังหน้า',          weight = 1000, stack = true, close = true, image = 'grille_part',         description = 'ชุดอัพเกรดกระจังหน้า' },
	['hood_part']           = { label = 'ฝากระโปรงหน้า',       weight = 2500, stack = true, close = true, image = 'hood_part',           description = 'ชุดอัพเกรดฝากระโปรงหน้า' },
	['roof_part']           = { label = 'หลังคา',              weight = 2000, stack = true, close = true, image = 'roof_part',           description = 'ชุดอัพเกรดหลังคา' },
	['horn_part']           = { label = 'แตร',                 weight = 500,  stack = true, close = true, image = 'horn_part',           description = 'ชุดอัพเกรดแตร' },
	['plate_holder']        = { label = 'กรอบป้ายทะเบียน',     weight = 500,  stack = true, close = true, image = 'plate_holder',        description = 'ชุดอัพเกรดกรอบป้ายทะเบียน' },
	['livery_wrap']         = { label = 'ฟิล์มลาย Livery',     weight = 500,  stack = true, close = true, image = 'livery_wrap',         description = 'ฟิล์มลายสำหรับติดตกแต่งรถ' },
	['paint_can']           = { label = 'กระป๋องสีรถ',         weight = 1000, stack = true, close = true, image = 'paint_can',           description = 'กระป๋องสีสำหรับพ่นรถยนต์' },
	['rim_set']             = { label = 'ชุดล้อแม็ก',          weight = 2500, stack = true, close = true, image = 'rim_set',             description = 'ชุดล้อแม็กแต่งรถ' },
	['xenon_kit']           = { label = 'ชุดไฟ Xenon',         weight = 1000, stack = true, close = true, image = 'xenon_kit',           description = 'ชุดไฟ Xenon สำหรับรถยนต์' },
	['neon_kit']            = { label = 'ชุดไฟ Neon ใต้ท้อง',  weight = 1500, stack = true, close = true, image = 'neon_kit',            description = 'ชุดไฟ Neon ติดใต้ท้องรถ' },
	['armor_plate']         = { label = 'แผ่นเกราะรถ',         weight = 5000, stack = true, close = true, image = 'armor_plate',         description = 'แผ่นเกราะเสริมสำหรับรถยนต์' },

	['weed_seed'] = {
		label = 'เมล็ดกัญชา',
		weight = 10,
		stack = true,
		close = true,
		description = 'เมล็ดกัญชาสำหรับปลูก',
		client = {
			image = 'weed_seed.png',
		},
	},

	['water_bottle'] = {
		label = 'น้ำ',
		weight = 500,
		stack = true,
		close = true,
		description = 'ขวดน้ำดื่ม',
		client = {
			image = 'water_bottle.png',
		},
	},

	['weed'] = {
		label = 'กัญชา',
		weight = 50,
		stack = true,
		close = true,
		description = 'กัญชาแห้ง',
		client = {
			image = 'weed.png',
		},
	},

	-- ===== Amulet Items =====

	['amulet'] = {
		label = 'Amulet',
		weight = 50,
		stack = false,
		close = true,
		noGive = true,
		description = 'เครื่องราง Amulet',
		consume = 0,
		client = {
			image = 'amulet.png',
		},
	},

	['amulet_genuine'] = {
		label = 'Amulet แท้',
		weight = 50,
		stack = false,
		close = true,
		noGive = true,
		description = 'เครื่องราง Amulet ที่แท้จริง - พลัง +50%',
		consume = 0,
		client = {
			image = 'amulet_genuine.png',
		},
	},

	['amulet_fake'] = {
		label = 'Amulet ปลอม',
		weight = 50,
		stack = false,
		close = true,
		noGive = true,
		description = 'เครื่องราง Amulet ปลอม - อาจจะแท้',
		consume = 0,
		client = {
			image = 'amulet_fake.png',
		},
	},

	['amulet_cursed'] = {
		label = 'Amulet สาป',
		weight = 50,
		stack = false,
		close = true,
		noGive = true,
		description = 'เครื่องราง Amulet ถูกสาป - ระวัง!',
		consume = 0,
		client = {
			image = 'amulet_cursed.png',
		},
	},

	-- ===== Currency Items =====

	['parah'] = {
		label = 'Parah Money',
		weight = 10,
		stack = true,
		close = false,
		description = 'เงิน Parah สำหรับการซื้อขาย',
		consume = 0,
		client = {
			image = 'parah.png',
		},
	},

	-- ===== Amulet Materials =====

	['amulet_stone'] = {
		label = 'หินประกอบ Amulet',
		weight = 100,
		stack = true,
		close = true,
		description = 'วัสดุสำหรับสร้าง Amulet',
		consume = 0,
		client = {
			image = 'amulet_stone.png',
		},
	},

	['amulet_dust'] = {
		label = 'ผงขาด Amulet',
		weight = 50,
		stack = true,
		close = true,
		description = 'ผงขาดจาก Amulet เก่า',
		consume = 0,
		client = {
			image = 'amulet_dust.png',
		},
	},

	-- ===== กล้องส่องเพชรพลอย =====

	['loupe_beginner'] = {
		label = 'กล้องนักส่องมือใหม่ (10x)',
		weight = 200,
		stack = false,
		close = false,
		description = 'กล้องขยาย 10 เท่า สำหรับผู้เริ่มต้นตรวจสอบอัญมณี',
		consume = 0,
		client = {
			image = 'loupe_beginner.png',
		},
	},

	['loupe_pro'] = {
		label = 'กล้องระดับมืออาชีพ (20x)',
		weight = 300,
		stack = false,
		close = false,
		description = 'กล้องขยาย 20 เท่า คุณภาพระดับมืออาชีพ',
		consume = 0,
		client = {
			image = 'loupe_pro.png',
		},
	},

	['loupe_master'] = {
		label = 'กล้องมาสเตอร์โกลด์ (100x)',
		weight = 500,
		stack = false,
		close = false,
		description = 'กล้องขยาย 100 เท่า ระดับมาสเตอร์ สำหรับผู้เชี่ยวชาญ',
		consume = 0,
		client = {
			image = 'loupe_master.png',
		},
	},

	-- ===== ปศุสัตว์โตเต็มวัย =====

	['pig_full'] = {
		label = 'หมู (โตเต็มวัย)',
		weight = 5000,
		stack = false,
		close = true,
		client = {
			image = 'pig_full.png',
		},
	},

	['chicken_full'] = {
		label = 'ไก่ (โตเต็มวัย)',
		weight = 5000,
		stack = false,
		close = true,
		client = {
			image = 'chicken_full.png',
		},
	},

	-- ===== Animal Carcass =====

	['deer_carcass'] = {
		label = 'ซากกวาง',
		weight = 5000,
		stack = false,
		close = true,
		description = 'ซากกวางที่ล่าได้ สามารถนำไปชำแหละเพื่อเอาเนื้อและหนัง',
		consume = 0,
		client = {
			image = 'deer_carcass.png',
		},
	},

	['wolf_carcass'] = {
		label = 'ซากหมาป่า',
		weight = 5000,
		stack = false,
		close = true,
		description = 'ซากหมาป่าที่ล่าได้ สามารถนำไปชำแหละเพื่อเอาหนังและเขี้ยว',
		consume = 0,
		client = {
			image = 'wolf_carcass.png',
		},
	},

	['mtlion_carcass'] = {
		label = 'ซากสิงห์เขา',
		weight = 6000,
		stack = false,
		close = true,
		description = 'ซากสิงห์เขาที่ล่าได้ หายาก มีค่ามาก',
		consume = 0,
		client = {
			image = 'mtlion_carcass.png',
		},
	},

	['boar_carcass'] = {
		label = 'ซากหมูป่า',
		weight = 5000,
		stack = false,
		close = true,
		description = 'ซากหมูป่าที่ล่าได้ สามารถนำไปชำแหละเพื่อเอาเนื้อและเขี้ยว',
		consume = 0,
		client = {
			image = 'boar_carcass.png',
		},
	},

	['meata5'] = {
		label = 'เนื้อสัตว์ป่า',
		weight = 250,
		stack = true,
		close = true,
		description = 'เนื้อสัตว์ป่าที่ได้จากการล่าสัตว์ สามารถนำไปปรุงอาหารได้',
		client = {
			image = 'meata5.png',
		},
	},

	['stretcher'] = {
		label = 'รถเข็นผู้ป่วย',
		weight = 15000,
		stack = false,
		consume = 1,
		server = {
			export = 'ND_Ambulance.createStretcher'
		},
	},

	['defib'] = {
		label = 'Defibrillator',
		weight = 2000,
		stack = false,
		close = true,
		consume = 1,
		client = {
			export = 'ND_Ambulance.useDefib',
			add = function(total)
				if total > 0 then
					pcall(function() return exports['ND_Ambulance']:hasDefib(true) end)
				end
			end,
			remove = function(total)
				if total < 1 then
					pcall(function() return exports['ND_Ambulance']:hasDefib(false) end)
				end
			end,
		},
	},

	['medbag'] = {
		label = 'Medical Bag',
		weight = 1500,
		stack = false,
		close = true,
		consume = 1,
		server = {
			export = 'ND_Ambulance.useBag'
		},
		client = {
			export = 'ND_Ambulance.useBag',
			add = function(total)
				if total > 0 then
					pcall(function() return exports['ND_Ambulance']:bag(true) end)
				end
			end,
			remove = function(total)
				if total < 1 then
					pcall(function() return exports['ND_Ambulance']:bag(false) end)
				end
			end,
		},
	},

	['tourniquet'] = {
		label = 'Tourniquet',
		weight = 100,
		stack = true,
		close = true,
	},

	['gauze'] = {
		label = 'Gauze',
		weight = 50,
		stack = true,
		close = true,
	},

	['burndressing'] = {
		label = 'Burn Dressing',
		weight = 80,
		stack = true,
		close = true,
	},

	['splint'] = {
		label = 'Splint',
		weight = 300,
		stack = true,
		close = true,
	},

	-- ===== Weapons =====

	['weapon_musket'] = {
		label = 'ปืนคาบศิลา',
		weight = 2000,
		stack = false,
		close = false,
	},

	-- ===== Hunting Drops =====

	['wolf_meat'] = {
		label = 'เนื้อหมาป่า',
		weight = 500,
		stack = true,
		close = true,
	},

	['wolf_pelt'] = {
		label = 'หนังหมาป่า',
		weight = 1000,
		stack = true,
		close = true,
	},

	['lion_meat'] = {
		label = 'เนื้อสิงโตภูเขา',
		weight = 500,
		stack = true,
		close = true,
	},

	['lion_pelt'] = {
		label = 'หนังสิงโตภูเขา',
		weight = 1000,
		stack = true,
		close = true,
	},

	['boar_meat'] = {
		label = 'เนื้อหมูป่า',
		weight = 500,
		stack = true,
		close = true,
	},

	['boar_tusk'] = {
		label = 'งาหมูป่า',
		weight = 300,
		stack = true,
		close = true,
	},

	['deer_a'] = {
		label = 'เนื้อกวาง',
		weight = 500,
		stack = true,
		close = true,
	},

	['deer_b'] = {
		label = 'หนังกวาง',
		weight = 1000,
		stack = true,
		close = true,
	},

	-- ===== kartik-mechanic items =====

	['engine_box_tier4'] = { label = 'กล่องเครื่องยนต์ระดับ 4', weight = 5000, stack = false, close = true },
	['piston_s4']        = { label = 'ลูกสูบ S4',               weight = 1000, stack = true,  close = true },
	['crankshaft_s4']    = { label = 'เพลาข้อเหวี่ยง S4',       weight = 2000, stack = true,  close = true },
	['valves_s4']        = { label = 'วาล์ว S4',                weight = 500,  stack = true,  close = true },
	['supercharger_s4']  = { label = 'ซูเปอร์ชาร์จ S4',         weight = 3000, stack = false, close = true },
	['engine_stage4']    = { label = 'เครื่องยนต์ Stage 4',     weight = 5000, stack = false, close = true },
	['fender_part']      = { label = 'บังโคลน',                 weight = 1000, stack = true,  close = true },
	['trim_part']        = { label = 'ชิ้นส่วนตกแต่ง',          weight = 300,  stack = true,  close = true },
	['ornament_part']    = { label = 'เครื่องประดับรถ',          weight = 200,  stack = true,  close = true },
	['dial_design_part'] = { label = 'หน้าปัดมาตรวัด',          weight = 200,  stack = true,  close = true },
	['steering_wheel_part'] = { label = 'พวงมาลัย',             weight = 500,  stack = true,  close = true },
	['shifter_part']     = { label = 'หัวเกียร์',               weight = 300,  stack = true,  close = true },
	['plaque_part']      = { label = 'แผ่นป้าย',                weight = 200,  stack = true,  close = true },
	['hydraulic_kit']    = { label = 'ชุดไฮดรอลิก',             weight = 2000, stack = false, close = true },
	['harness']          = { label = 'สายรัดนิรภัย',            weight = 500,  stack = false, close = true },

	-- ===== phra items =====

	['phra_khrueang'] = {
		label = 'พระเครื่อง',
		weight = 100,
		stack = false,
		close = true,
		noGive = true,
	},

	['phra_genuine'] = {
		label = 'พระแท้',
		weight = 100,
		stack = false,
		close = false,
		noGive = true,
	},

	['phra_fake'] = {
		label = 'พระเก๊',
		weight = 100,
		stack = false,
		close = false,
		noGive = true,
	},

	['phra_certificate'] = {
		label = 'ใบเซอร์พระแท้',
		weight = 50,
		stack = false,
		close = true,
		noGive = true,
	},

	['magnify_lv1'] = {
		label = 'กล้องส่องพระ Lv1',
		weight = 200,
		stack = false,
		close = false,
		noGive = true,
	},

	['magnify_lv2'] = {
		label = 'กล้องส่องพระ Lv2',
		weight = 300,
		stack = false,
		close = false,
		noGive = true,
	},

	['magnify_lv3'] = {
		label = 'กล้องส่องพระ Lv3',
		weight = 500,
		stack = false,
		close = false,
		noGive = true,
	},

	['amulet_cleanse'] = {
		label = 'น้ำมนต์ล้างบัฟ',
		weight = 100,
		stack = true,
		close = true,
		description = 'ใช้ล้างบัฟพระของผู้เล่นในระยะ 3 เมตร (ตำรวจ/หมอ/แอดมินเท่านั้น)',
	},

	-- ===== mechanic / car parts (new) =====

	['harness'] = {
		label = 'Harness',
		weight = 200,
		stack = true,
		close = true,
		description = 'A high-performance racing harness to keep you in your seat during impacts.',
	},

	['piston_s4'] = {
		label = 'Piston (S4)',
		weight = 2300,
		stack = true,
		close = true,
		description = 'Stage 4 performance pistons.',
	},

	['crankshaft_s4'] = {
		label = 'Crankshaft (S4)',
		weight = 5300,
		stack = true,
		close = true,
		description = 'Stage 4 lightweight crankshaft.',
	},

	['valves_s4'] = {
		label = 'Valves (S4)',
		weight = 130,
		stack = true,
		close = true,
		description = 'High-performance engine valves Stage 4.',
	},

	['supercharger_s4'] = {
		label = 'Supercharger (S4)',
		weight = 5500,
		stack = true,
		close = true,
		description = 'Extreme turbo supercharger Stage 4.',
	},

	['tire_street'] = {
		label = 'Street Tires',
		weight = 2000,
		stack = true,
		close = true,
		description = 'Street performance tire profile.',
	},

	['gear_sound_german'] = { label = 'German Gear Sound',  weight = 10, stack = true, close = true },
	['gear_sound_italian'] = { label = 'Italian Gear Sound', weight = 10, stack = true, close = true },
	['gear_sound_race']    = { label = 'Race Gear Sound',    weight = 10, stack = true, close = true },
	['gear_sound_muscle']  = { label = 'Muscle Gear Sound',  weight = 10, stack = true, close = true },
	['gear_sound_vintage'] = { label = 'Vintage Gear Sound', weight = 10, stack = true, close = true },

	['spoiler_part']      = { label = 'Spoiler Upgrade',           weight = 1500, stack = true, close = true },
	['front_bumper_part'] = { label = 'Front Bumper Upgrade',      weight = 3000, stack = true, close = true },
	['rear_bumper_part']  = { label = 'Rear Bumper Upgrade',       weight = 3000, stack = true, close = true },
	['side_skirt_part']   = { label = 'Side Skirt Upgrade',        weight = 2000, stack = true, close = true },
	['exhaust_part']      = { label = 'Exhaust Upgrade',           weight = 1500, stack = true, close = true },
	['frame_part']        = { label = 'Rollcage & Frame Upgrade',  weight = 4000, stack = true, close = true },
	['grille_part']       = { label = 'Grille Upgrade',            weight = 1000, stack = true, close = true },
	['hood_part']         = { label = 'Hood Upgrade',              weight = 2500, stack = true, close = true },
	['roof_part']         = { label = 'Roof Upgrade',              weight = 2000, stack = true, close = true },
	['horn_part']         = { label = 'Horn Upgrade',              weight = 500,  stack = true, close = true },
	['plate_holder']      = { label = 'Plate Holder Upgrade',      weight = 500,  stack = true, close = true },
	['shifter_part']      = { label = 'Shifter Upgrade',           weight = 800,  stack = true, close = true },
	['livery_wrap']       = { label = 'Livery Wrap',               weight = 500,  stack = true, close = true },
	['paint_can']         = { label = 'Paint Can',                 weight = 1000, stack = true, close = true },
	['rim_set']           = { label = 'Aftermarket Rim Set',       weight = 2500, stack = true, close = true },
	['xenon_kit']         = { label = 'Xenon Lights Kit',          weight = 1000, stack = true, close = true },
	['neon_kit']          = { label = 'Neon Underglow Kit',        weight = 1500, stack = true, close = true },
	['armor_plate']       = { label = 'Armor Plate',               weight = 5000, stack = true, close = true },

	-- ===== ไอเทม Documents =====

	['id_card'] = {
		label       = 'บัตรประชาชน',
		weight      = 10,
		stack       = false,
		close       = true,
		client      = { image = 'id_card.png' },
	},

	-- ===== ไอเทม Consumables =====

	['cigarette'] = {
		label       = 'บุหรี่',
		weight      = 10,
		stack       = true,
		close       = true,
		description = 'เพิ่มค่าสมอง',
		client      = { image = 'cigarette.png' },
	},
	['whiskey'] = {
		label       = 'เหล้าขาว',
		weight      = 300,
		stack       = true,
		close       = true,
		description = 'เพิ่มค่าสมองมาก',
		client      = { image = 'whiskey.png' },
	},
	['yakult'] = {
		label       = 'ยาคูล',
		weight      = 65,
		stack       = true,
		close       = true,
		description = 'เพิ่มค่าสมอง (หมดอายุ 3 ชม.)',
		client      = { image = 'yakult.png' },
	},
	['snack'] = {
		label       = 'ขนม',
		weight      = 50,
		stack       = true,
		close       = true,
		degrade     = 30,
		decay       = true,
		description = 'ขนม (หมดอายุใน 30 นาที)',
		client      = { image = 'snack.png' },
	},


	['gun_license'] = {
		label  = 'ใบอนุญาตพกพาอาวุธ',
		weight = 10,
		stack  = false,
		close  = true,
		client = { image = 'gun_license.png' },
	},


	['driver_license'] = {
		label       = 'ใบขับขี่',
		weight      = 50,
		stack       = false,
		close       = false,
		description = 'ใบขับขี่รถยนต์',
		client      = { image = 'driver_license.png' },
	},


	['purchase_order'] = {
		label       = 'ใบออเดอร์ต่างประเทศ',
		weight      = 200,
		stack       = true,
		close       = true,
		description = 'ใบออเดอร์ต่างประเทศ',
		client      = { image = 'purchase_order.png' },
	},

	-- ===== ไอเทม Gathering =====

	['gathering_basket'] = {
		label       = 'ตะกร้าเก็บของ',
		weight      = 500,
		stack       = false,
		close       = false,
		description = 'อุปกรณ์สำหรับเก็บของป่า มีโอกาสพัง 15% ต่อการใช้งาน',
		client      = { image = 'gathering_basket.png' },
	},

	-- ===== ไอเทม Tools =====

	['steel_ingot'] = {
		label  = 'แท่งเหล็กดิบ',
		weight = 3000,
		stack  = true,
		close  = true,
		client = { image = 'steel_ingot.png' },
	},
	['steel_blank'] = {
		label  = 'เหล็กกึ่งสำเร็จ',
		weight = 2500,
		stack  = true,
		close  = true,
		client = { image = 'steel_blank.png' },
	},

	['tool_crowbar'] = {
		label       = 'ประแจงัดรถ',
		weight      = 2000,
		stack       = true,
		close       = true,
		description = 'อุปกรณ์งัดชิ้นส่วนรถ',
		client      = { image = 'tool_crowbar.png' },
	},

	-- ===== ไอเทมกัญชา =====

	['weed_plant'] = {
		label       = 'ต้นกัญชาดิบ',
		weight      = 500,
		stack       = true,
		close       = true,
		description = 'ต้นกัญชาดิบ ยังไม่ผ่านการแปรรูป',
		client      = { image = 'weed_plant.png' },
	},

	-- ===== ไอเทมตกปลา =====

	['fishing_rod'] = {
		label       = 'เบ็ดตกปลา',
		weight      = 1000,
		stack       = false,
		close       = false,
		description = 'เบ็ดสำหรับตกปลา มีโอกาสพังหลังใช้งาน',
		client      = { image = 'fishing_rod.png' },
	},
	['fishing_bait'] = {
		label       = 'เหยื่อตกปลา',
		weight      = 50,
		stack       = true,
		close       = false,
		description = 'เหยื่อสำหรับล่อปลา ใช้ 1 ชิ้นต่อการตกครั้ง',
		client      = { image = 'fishing_bait.png' },
	},

	-- ปลา
	['fish_plamor'] = {
		label       = 'ปลาหมอ',
		weight      = 500,
		stack       = true,
		close       = false,
		description = 'ปลาหมอ ปลาธรรมดาพบได้ทั่วไป',
		client      = { image = 'fish_plamor.png' },
	},
	['fish_plachon'] = {
		label       = 'ปลาช่อน',
		weight      = 500,
		stack       = true,
		close       = false,
		description = 'ปลาช่อน รสชาติดี',
		client      = { image = 'fish_plachon.png' },
	},
	['fish_pladuk'] = {
		label       = 'ปลาดุก',
		weight      = 500,
		stack       = true,
		close       = false,
		description = 'ปลาดุก ต้องระดับ 4 ขึ้นไป',
		client      = { image = 'fish_pladuk.png' },
	},
	['fish_plagod'] = {
		label       = 'ปลากด',
		weight      = 500,
		stack       = true,
		close       = false,
		description = 'ปลากด ต้องระดับ 7 ขึ้นไป',
		client      = { image = 'fish_plagod.png' },
	},
	['fish_plasaad'] = {
		label       = 'ปลาสาด',
		weight      = 500,
		stack       = true,
		close       = false,
		description = 'ปลาสาด ต้องระดับ 10 ขึ้นไป',
		client      = { image = 'fish_plasaad.png' },
	},
	['fish_planing'] = {
		label       = 'ปลานิล',
		weight      = 500,
		stack       = true,
		close       = false,
		description = 'ปลานิล ต้องระดับ 12 ขึ้นไป',
		client      = { image = 'fish_planing.png' },
	},
	['fish_platong'] = {
		label       = 'ปลาทอง',
		weight      = 500,
		stack       = true,
		close       = false,
		description = 'ปลาทอง หายาก ต้องระดับ 14 ขึ้นไป',
		client      = { image = 'fish_platong.png' },
	},
	['fish_plakrapha'] = {
		label       = 'ปลากระพง',
		weight      = 500,
		stack       = true,
		close       = false,
		description = 'ปลากระพง ปลาพรีเมียม ต้องระดับ 16 ขึ้นไป',
		client      = { image = 'fish_plakrapha.png' },
	},
	['fish_plakota'] = {
		label       = 'ปลาโกตา',
		weight      = 500,
		stack       = true,
		close       = false,
		description = 'ปลาโกตา หายากมาก ต้องระดับ 18 ขึ้นไป',
		client      = { image = 'fish_plakota.png' },
	},
	['fish_plamangkon'] = {
		label       = 'ปลามังกร',
		weight      = 500,
		stack       = true,
		close       = false,
		description = 'ปลามังกร ตำนานแห่งท้องทะเล ต้องระดับสูงสุด 20',
		client      = { image = 'fish_plamangkon.png' },
	},
	['part_wheel'] = {
		label  = 'ล้อรถ',
		weight = 15000,
		stack  = false,
		close  = false,
		client = { image = 'part_wheel.png' },
	},
	['part_door'] = {
		label  = 'ประตูรถ',
		weight = 20000,
		stack  = false,
		close  = false,
		client = { image = 'part_door.png' },
	},
	['part_hood'] = {
		label  = 'ฝากระโปรง',
		weight = 12000,
		stack  = false,
		close  = false,
		client = { image = 'part_hood.png' },
	},
	['part_bumper'] = {
		label  = 'กันชน',
		weight = 8000,
		stack  = false,
		close  = false,
		client = { image = 'part_bumper.png' },
	},
	['part_headlight'] = {
		label  = 'ไฟหน้า',
		weight = 3000,
		stack  = false,
		close  = false,
		client = { image = 'part_headlight.png' },
	},
	['part_mirror'] = {
		label  = 'กระจกข้าง',
		weight = 2000,
		stack  = false,
		close  = false,
		client = { image = 'part_mirror.png' },
	},
	['part_engine'] = {
		label  = 'เครื่องยนต์',
		weight = 80000,
		stack  = false,
		close  = false,
		client = { image = 'part_engine.png' },
	},
	['dirty_money'] = {
		label  = 'เงินแดง',
		weight = 0,
		stack  = true,
		close  = false,
		client = { image = 'dirty_money.png' },
	},
	['mushroom'] = {
		label  = 'เห็ด',
		weight = 500,
		stack  = true,
		close  = true,
		client = { image = 'mushroom.png' },
	},
	['bamboo_shoot'] = {
		label  = 'หน่อไม้',
		weight = 500,
		stack  = true,
		close  = true,
		client = { image = 'bamboo_shoot.png' },
	},
	['phlua'] = {
		label  = 'พลั่ว',
		weight = 1000,
		stack  = false,
		close  = false,
		client = { image = 'phlua.png' },
	},
	['krapong'] = {
		label  = 'กระป๋อง',
		weight = 500,
		stack  = false,
		close  = false,
		client = { image = 'krapong.png' },
	},
	['hoi'] = {
		label  = 'หอย',
		weight = 500,
		stack  = true,
		close  = true,
		client = { image = 'hoi.png' },
	},
	['sleeping_mat'] = {
		label       = 'เสื่อปูพื้น',
		weight      = 500,
		stack       = true,
		close       = true,
		client      = { image = 'sleeping_mat.png' },
	},
	['pokdeng_mat'] = {
		label       = 'ผ้าปูไพ่',
		weight      = 500,
		stack       = true,
		close       = true,
		description = 'ปูไว้เปิดโต๊ะป๊อกเด้ง',
		server      = { event = 'ox_inventory:useItem' },
		client      = { image = 'pokdeng_mat.png' },
	},

	['item_t20'] = {
		label       = 'รถ T20',
		weight      = 1,
		stack       = false,
		close       = true,
		description = 'ใช้เพื่อรับรถ T20 เข้า garage',
		server      = { event = 'ox_inventory:useItem' },
		client      = { image = 'item_t20.png' },
	},

	['gachav1'] = {
		label       = 'กาชา V1',
		weight      = 1,
		stack       = true,
		close       = true,
		description = 'กาชาลุ้นโชค รุ่น V1',
		client      = { image = 'gachav1.png' },
	},

	-- ===== ประมง =====

	['fishing_rod'] = {
		label       = 'เบ็ดตกปลา',
		weight      = 500,
		stack       = false,
		close       = false,
		description = 'เบ็ดตกปลาสำหรับหาปลา',
		client      = { image = 'fishing_rod.png' },
	},

	['fishing_bait'] = {
		label       = 'เหยื่อตกปลา',
		weight      = 50,
		stack       = true,
		close       = false,
		description = 'เหยื่อสำหรับตกปลา',
		client      = { image = 'fishing_bait.png' },
	},

	-- ปลาทั้งหมด
	['fish_sardine'] = {
		label       = 'ปลาซาร์ดีน',
		weight      = 200,
		stack       = true,
		close       = false,
		description = 'ปลาซาร์ดีน ปลาทะเลพื้นฐาน',
		client      = { image = 'fish_sardine.png' },
	},

	['fish_mackerel'] = {
		label       = 'ปลาทู',
		weight      = 300,
		stack       = true,
		close       = false,
		description = 'ปลาทู ปลาทะเลยอดนิยม',
		client      = { image = 'fish_mackerel.png' },
	},

	['fish_squid'] = {
		label       = 'หมึกกล้วย',
		weight      = 350,
		stack       = true,
		close       = false,
		description = 'หมึกกล้วย ต้องระดับ 4 ขึ้นไป',
		client      = { image = 'fish_squid.png' },
	},

	['fish_seabass'] = {
		label       = 'ปลากะพง',
		weight      = 500,
		stack       = true,
		close       = false,
		description = 'ปลากะพง ต้องระดับ 7 ขึ้นไป',
		client      = { image = 'fish_seabass.png' },
	},

	['fish_grouper'] = {
		label       = 'ปลาเก๋า',
		weight      = 700,
		stack       = true,
		close       = false,
		description = 'ปลาเก๋า ต้องระดับ 10 ขึ้นไป',
		client      = { image = 'fish_grouper.png' },
	},

	['fish_stingray'] = {
		label       = 'ปลากระเบน',
		weight      = 900,
		stack       = true,
		close       = false,
		description = 'ปลากระเบน ต้องระดับ 12 ขึ้นไป',
		client      = { image = 'fish_stingray.png' },
	},

	['fish_puffer'] = {
		label       = 'ปลาปักเป้า',
		weight      = 400,
		stack       = true,
		close       = false,
		description = 'ปลาปักเป้า ต้องระดับ 14 ขึ้นไป',
		client      = { image = 'fish_puffer.png' },
	},

	['fish_barracuda'] = {
		label       = 'ปลาบาร์ราคูด้า',
		weight      = 1200,
		stack       = true,
		close       = false,
		description = 'ปลาบาร์ราคูด้า ต้องระดับ 16 ขึ้นไป',
		client      = { image = 'fish_barracuda.png' },
	},

	['fish_bullshark'] = {
		label       = 'ฉลามหัวบาตร',
		weight      = 2000,
		stack       = true,
		close       = false,
		description = 'ฉลามหัวบาตร หายากมาก ต้องระดับ 18 ขึ้นไป',
		client      = { image = 'fish_bullshark.png' },
	},

	['fish_whaleshark'] = {
		label       = 'ฉลามวาฬ',
		weight      = 5000,
		stack       = true,
		close       = false,
		description = 'ฉลามวาฬ แรร์สุด ต้องระดับสูงสุด 20',
		client      = { image = 'fish_whaleshark.png' },
	},

	-- ===== ตำรวจ =====

	['handcuff'] = {
		label       = 'กุญแจมือ',
		weight      = 500,
		stack       = true,
		close       = true,
		description = 'กุญแจมือสำหรับจับกุมผู้ต้องสงสัย',
		client      = { image = 'handcuff.png' },
	},

	['keyhandcuff'] = {
		label       = 'กุญแจถอดมือ',
		weight      = 200,
		stack       = true,
		close       = true,
		description = 'กุญแจสำหรับถอดกุญแจมือ',
		client      = { image = 'keyhandcuff.png' },
	},

	['soap'] = {
		label       = 'สบู่',
		weight      = 100,
		stack       = true,
		close       = true,
		description = 'ใช้ในห้องอาบน้ำเพื่ออาบน้ำ',
		client      = { image = 'soap.png' },
	},

	['vehicle_key'] = {
		label       = 'กุญแจรถ',
		weight      = 0,
		stack       = false,
		close       = false,
		noGive      = true,
		description = 'กุญแจรถที่ซื้อจากโชว์รูม',
		client      = { image = 'carkey.png' },
	},

	['key_repair_kit'] = {
		label       = 'ชุดซ่อมกุญแจ',
		weight      = 200,
		stack       = true,
		close       = true,
		description = 'ใช้ซ่อมกุญแจรถที่เสียหาย ฟื้นฟูสภาพกลับ 100%',
		client      = { image = 'carkey.png' },
	},

	['shop_table'] = {
		label  = 'โต๊ะขายของ',
		weight = 5000,
		stack  = false,
		close  = true,
	},
}
