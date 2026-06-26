return {
    -- Default trunk config by vehicle class (slots, maxWeight in grams)
    -- 1 kg = 1000 grams
    default = {
        [0]  = { slots = 5,  weight = 5000  },  -- Compact      100 kg
        [1]  = { slots = 5,  weight = 5000  },  -- Sedan        200 kg
        [2]  = { slots = 5,  weight = 5000  },  -- SUV          300 kg
        [3]  = { slots = 5,  weight = 5000  },  -- Coupe        150 kg
        [4]  = { slots = 5,  weight = 5000  },  -- Muscle       200 kg
        [5]  = { slots = 5,  weight = 5000  },  -- Sports Classic
        [6]  = { slots = 5,  weight = 5000  },  -- Sports
        [7]  = { slots = 5,  weight = 5000  },  -- Super
        [8]  = { slots = 5,  weight = 5000   },  -- Motorcycle   20 kg
        [9]  = { slots = 30,  weight = 70000  },  -- Offroad      400 kg
        [10] = { slots = 5,  weight = 5000  },  -- Industrial   500 kg
        [11] = { slots = 5,  weight = 5000  },  -- Utility      300 kg
        [12] = { slots = 5,  weight = 5000  },  -- Van          600 kg
        [17] = { slots = 5,  weight = 5000  },  -- Service
        [18] = { slots = 5,  weight = 5000  },  -- Emergency
        [19] = { slots = 5,  weight = 5000  },  -- Military
        [20] = { slots = 5,  weight = 5000  },  -- Commercial   800 kg
    },

    -- Per-model override (model name = config)
    -- ตั้งค่าตามรถแต่ละคัน
    models = {
        ['tuktuk']    = { slots = 70, weight = 150000 },   -- 400 kg
        -- ['ambulance'] = { slots = 80, weight = 600000 },   -- 600 kg
        -- ['insurgent'] = { slots = 100, weight = 2000000 }, -- 2000 kg
    },

    -- รถที่ไม่มีท้ายรถ (ปิดเลย)
    noTrunk = {
        -- ['adder'] = true,
        -- ['bullet'] = true,
    },
}
