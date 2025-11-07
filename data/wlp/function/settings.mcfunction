#
# Settings menu
#

tellraw @s ["\n\nwrpt's life pack settings\n\nBoogey: ",{"text":"Enabled","color":"green","click_event":{"action":"run_command","command":"function wlp:boogey/enable_boogey"}}," ",{"text":"Disabled","color":"red","click_event":{"action":"run_command","command":"function wlp:boogey/disable_boogey"}}," (",{"score":{"name":"$boogeyEnabled","objective":"boogeyEnabled"},"hover_event":{"action":"show_text","value":"0 - Disabled, 1 - Enabled"}},")"]