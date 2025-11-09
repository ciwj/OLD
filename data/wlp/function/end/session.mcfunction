#
# End session
#

execute as @s if score $gameState gameState matches 2 run title @a title ["Session ended!"]
execute as @s if score $gameState gameState matches 2 run scoreboard players set $gameState gameState 1
