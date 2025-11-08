#
# Enable boogeyman
#

scoreboard players set $boogeyEnabled boogeyEnabled 1
tellraw @s ["",{"text":"Boogeyman "},{"text":"enabled","color":"green"},{"text":"!"}]

function wlp:settings