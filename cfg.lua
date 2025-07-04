Config = {}
Config.Fuel = 'cdn-fuel'
Config.SaveSQL = true
Config.Payment = true
Config.CustomLivery = true
Config.ShowBadgeTime = 7500
Config.KeyEvent = 'vehiclekeys:client:SetOwner'

Config.Vehicles = {
    ['mrpd'] = {
        {
            model = 'nkbuffalos',
            label = 'Vapid Buffalo S',
            livery = 0,
            price = 1,
        }, {
            model = 'nkcruiser',
            label = 'Vapid Stanier',
            livery = 0,
            price = 1,
        }, { 
            model = 'nkscout2020',
            label = 'Vapid Scout',
            livery = 0,
            price = 1,
        }, {
            model = 'nkgauntlet4',
            label = 'Gauntlet Hellfire',
            livery = 0,
            price = 1,
        }, {
            model = 'nkcoquette',
            label = 'Invetero Coquette',
            livery = 0,
            price = 1,
        }, {
            model = '2015polstang',
            label = 'Ford Mustang',
            livery = 1,
            price = 1,
        }, {
            model = 'bearcat',
            label = 'Bear Cat',
            livery = 0,
            price = 1,
        },
    },
    /*['davis'] = {
        {
            model = 'nkbuffalos',
            label = 'Vapid Buffalo S',
            livery = 0,
            price = 1,
        }, {
            model = 'nkcruiser',
            label = 'Vapid Stanier',
            livery = 0,
            price = 1,
        }, { 
            model = 'nkscout2020',
            label = 'Vapid Scout',
            livery = 0,
            price = 1,
        }, {
            model = 'nkgauntlet4',
            label = 'Gauntlet Hellfire',
            livery = 0,
            price = 1,
        }, {
            model = 'nkcoquette',
            label = 'Invetero Coquette',
            livery = 0,
            price = 1,
        }, {
            model = '2015polstang',
            label = 'Ford Mustang',
            livery = 1,
            price = 1,
        }, {
            model = 'bearcat',
            label = 'Bear Cat',
            livery = 0,
            price = 1,
        },
    },
    ['paleto'] = {
        {
            model = 'npolchar',
            label = 'Dodge Charger',
            livery = 1,
            price = 1,
        }, {
            model = 'npolvic',
            label = 'Ford Victoria',
            livery = 1,
            price = 1,
        }, { 
            model = 'npolexp',
            label = 'Ford Explorer',
            livery = 1,
            price = 1,
        }, {
            model = 'npolchal',
            label = 'Dodge Challenger',
            livery = 1,
            price = 1,
        }, {
            model = 'npolvette',
            label = 'Chevrolet Corvette',
            livery = 1,
            price = 1,
        }, {
            model = 'npolstang',
            label = 'Ford Mustang',
            livery = 1,
            price = 1,
        }, {
            model = 'bcat',
            label = 'B Cat',
            livery = 1,
            price = 1,
        },
    },
    ['ranger'] = {
        { 
            model = 'npolexp',
            label = 'Ford Explorer',
            livery = 7,
            price = 1,
        },
    },
    ['pillbox'] = {
        { 
            model = 'clrgemsexp',
            label = 'Ford Explorer',
            livery = 0,
            price = 1,
        },
        { 
            model = 'clrgspeedo',
            label = 'Ford Speedo',
            livery = 0,
            price = 1,
        },
    },*/
}

Config.Locations = {
    ['mrpd'] = {
        label = 'Mission Row',
        jobname = 'police',
        pedlocation = {
            x = 459.82,
            y = -986.64,
            z = 25.7,
            w = 92.93
        },
        spawnlocation = vector4(458.95, -993.99, 25.7, 0.77),
        pedhash = 's_f_y_cop_01',
        officer = 'Officer Tiffany',
        targetLabel = Lang:t('cfg.targetLabel'),
        targetIcon = 'fas fa-comments',
    },
    /*['davis'] = {
        label = 'Davis',
        jobname = 'police',
        pedlocation = { -- vector4(378.25, -1621.45, 29.29, 230.98)
            x = 378.25,
            y = -1621.45,
            z = 29.29,
            w = 230.98
        },
        spawnlocation = vector4(380.33, -1625.25, 29.29, 316.86),
        pedhash = 's_m_y_hwaycop_01',
        officer = 'Officer Glen',
        targetLabel = Lang:t('cfg.targetLabel'),
        targetIcon = 'fas fa-comments',
    },
    ['paleto'] = {
        label = 'Paleto Bay',
        jobname = 'police',
        pedlocation = { -- -458.48, 6033.78, 31.34, 44.67
            x = -458.48,
            y = 6033.78,
            z = 31.34,
            w = 44.67
        },
        spawnlocation = vector4(-461.95, 6037.85, 31.34, 136.85),
        pedhash = 's_m_y_hwaycop_01',
        officer = 'Officer Neck',
        targetLabel = Lang:t('cfg.targetLabel'),
        targetIcon = 'fas fa-comments',
    },
    ['ranger'] = {
        label = 'Park Rangers',
        jobname = 'police',
        pedlocation = { -- 382.3, 781.05, 185.59, 205.7
            x = 382.3,
            y = 781.05,
            z = 185.59,
            w = 205.7
        },
        spawnlocation = vector4(387.26, 779.65, 185.97, 106.55),
        pedhash = 's_m_y_hwaycop_01',
        officer = 'Officer Neck',
        targetLabel = Lang:t('cfg.targetLabel'),
        targetIcon = 'fas fa-comments',
    },
    ['pillbox'] = {
        label = 'Pillbox',
        jobname = 'ambulance',
        pedlocation = { -- 319.25, -582.44, 28.8, 285.36
            x = 319.25,
            y = -582.44,
            z = 28.8,
            w = 285.36
        },
        spawnlocation = vector4(316.35, -578.17, 28.03, 248.39),
        pedhash = 's_m_m_doctor_01',
        officer = 'Paramedic Neck',
        targetLabel = Lang:t('cfg.targetLabel'),
        targetIcon = 'fas fa-comments',
    }*/
}
