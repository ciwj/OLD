#
# Main Menu
#

tellraw @a [{"text":"----------\nObviois Life Datapack - Main Menu\n","bold":true}]
tellraw @a ["Manage Lives: [",{"text":"Click Here","click_event":{"action":"run_command","command":"function wlp:menu/lives"}},"]"]
tellraw @a ["Start: [",{"text":"Game","click_event":{"action":"run_command","command":"/function wlp:start/game"}},"] [",{"text":"Session","click_event":{"action":"run_command","command":"/function wlp:start/session"}},"]\nEnd: [",{"text":"Game","click_event":{"action":"suggest_command","command":"/function wlp:end/game"}},"] [",{"text":"Session","click_event":{"action":"suggest_command","command":"/function wlp:end/session"}},"]"]
tellraw @a ["Boogey: [",{"text":"Pick","click_event":{"action":"run_command","command":"/function wlp:boogey/pick"}},"] [",{"text":"Cure","click_event":{"action":"suggest_command","command":"/function wlp:boogey/cure_manual {username:\"ENTERUSERNAME\"}"},"hover_event":{"action":"show_text","value":"Replace ENTERUSERNAME with player username."}},"]"]