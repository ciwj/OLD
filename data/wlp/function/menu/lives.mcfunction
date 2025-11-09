#
# Lives Menu
#

tellraw @a [{"text":"----------\nObviois Life Datapack - Lives Manager\n","bold":true}]
tellraw @a [{"text":"Add Life To Player","click_event":{"action":"suggest_command","command":"/function wlp:utils/add_life_to {username:\"ENTERUSERNAME\"}"},"hover_event":{"action":"show_text","value":"Replace ENTERUSERNAME with player username."}},"] [",{"text":"Remove Life From Player","click_event":{"action":"suggest_command","command":"/function wlp:utils/remove_life_from {username:\"ENTERUSERNAME\"}"},"hover_event":{"action":"show_text","value":"Replace ENTERUSERNAME with player username."}},"]\n[",{"text":"Add Life To Self","click_event":{"action":"run_command","command":"/function wlp:utils/add_life"}},"] [",{"text":"Remove Life From Self","click_event":{"action":"run_command","command":"/function wlp:utils/remove_life"}},"]"]
