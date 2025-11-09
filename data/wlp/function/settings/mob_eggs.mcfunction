#
# Mob eggs menu
#

tellraw @a [{"text":"----------\nObviois Life Datapack - Mob Egg Settings\n","bold":true}]
tellraw @a ["Creeper: ",{"text":"Enable","color":"green","click_event":{"action":"run_command","command":"scoreboard players set $creeperEggEnabled creeperEggEnabled 1"}}," | ",{"text":"Disable","color":"red","click_event":{"action":"run_command","command":"scoreboard players set $creeperEggEnabled creeperEggEnabled 0"}}," - (",{"score":{"name":"$creeperEggEnabled","objective":"creeperEggEnabled"},"hover_event":{"action":"show_text","value":"0 - Disabled, 1 - Enabled"}},")"]