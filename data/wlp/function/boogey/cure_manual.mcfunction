#
# Manually cure boogey
#

$execute as $(username) if entity @s[tag=boogey] run title @s title ["You've been ",{"text":"cured","color":"green"}]
$execute as $(username) if entity @s[tag=boogey] run title @s subtitle ["of the boogey curse!"]

$execute as $(username) if entity @s[tag=boogey] run tag @s remove boogey