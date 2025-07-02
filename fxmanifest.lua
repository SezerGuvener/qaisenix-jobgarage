fx_version 'cerulean'
game 'gta5'

author 'nkowashere, qaisenix'
description 'Law Enforcement Garage'
version '2.0'

shared_scripts {
    '@qb-core/shared/locale.lua',
    'locales/en.lua',
    'cfg.lua'
}

client_scripts {
    'client.lua'
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server.lua'
}

lua54 'yes'