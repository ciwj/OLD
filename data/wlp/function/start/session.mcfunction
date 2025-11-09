#
# Start session
#

# Set gameState
execute as @s if score $gameState gameState matches 1 run scoreboard players set $gameState gameState 2
#Announce to players
execute as @s if score $gameState gameState matches 1 run title @a title ["Session started!"]