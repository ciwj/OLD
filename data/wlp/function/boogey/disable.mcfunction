#
# Disable boogeyman
#

scoreboard players set $boogeyEnabled boogeyEnabled 0
tellraw @s ["",{"text":"Boogeyman "},{"text":"disabled","color":"red"},{"text":"!"}]

function wlp:settings