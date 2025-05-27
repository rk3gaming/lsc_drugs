fx_version 'adamant'
game 'gta5'
lua54 'yes'

author 'LSC Development'
description 'A text-based drug script.'

shared_scripts {
	'@ox_lib/init.lua',
	'config.lua',
}

client_script {
	'client/*.lua'
}

server_scripts {
	'bridge/server/*.lua',
	'server/*.lua',
}
