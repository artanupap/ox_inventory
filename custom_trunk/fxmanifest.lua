fx_version 'cerulean'
use_experimental_fxv2_oal 'yes'
lua54 'yes'
game 'gta5'
name 'custom_trunk'
author 'artanupap'

dependencies {
    'ox_inventory',
    'ox_lib',
    'ox_target',
}

shared_scripts {
    '@ox_lib/init.lua',
    'config/vehicles.lua',
}

client_script 'client.lua'
server_script 'server.lua'
