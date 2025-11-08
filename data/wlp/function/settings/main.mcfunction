#
# Settings menu
#


tellraw @s [{"text":"----------\nwrpt's Life Pack Settings","bold":true},"\n\n"]
# Boogey toggle
tellraw @s ["Boogey: ",{"text":"Enabled","color":"green","click_event":{"action":"run_command","command":"function wlp:boogey/enable"}}," | ",{"text":"Disabled","color":"red","click_event":{"action":"run_command","command":"function wlp:boogey/disable"}}," (",{"score":{"name":"$boogeyEnabled","objective":"boogeyEnabled"},"hover_event":{"action":"show_text","value":"0 - Disabled, 1 - Enabled"}},")"]
# Alternative recipes menu
tellraw @s ["Alternative Recipes: ",{"text":"[Click Here]","click_event":{"action":"run_command","command":"function wlp:settings/alt_recipes_menu"}}]
# Set lives
tellraw @a [{"text":"Lives","hover_event":{"action":"show_text","value":"Enter number of lives. 0 = random."}},": [",{"text":"Click Here","click_event":{"action":"suggest_command","command":"/scoreboard players set $lives lives "}},"]"]
# Set game players
tellraw @a ["Players:\n[",{"text":"Add All Online","click_event":{"action":"run_command","command":"/function wlp:utils/add_player {username:\"@a\"}"}},"] [",{"text":"Remove All Online","click_event":{"action":"run_command","command":"/function wlp:utils/add_spectator {username:\"@a\"}"}},"]\n[",{"text":"Add Player","click_event":{"action":"suggest_command","command":"/function wlp:utils/add_player {username:\"ENTERUSERNAME\"}"},"hover_event":{"action":"show_text","value":"Replace ENTERUSERNAME with player username."}},"] [",{"text":"Add Spectator","click_event":{"action":"suggest_command","command":"/function wlp:utils/add_spectator {username:\"ENTERUSERNAME\"}"},"hover_event":{"action":"show_text","value":"Replace ENTERUSERNAME with player username."}},"]"]