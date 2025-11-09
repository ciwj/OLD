#
# Start game and session
#

execute as @s if score $gameState gameState matches 0 run time set day
execute as @s if score $gameState gameState matches 0 run weather clear
execute as @s if score $gameState gameState matches 0 run effect give @a[tag=player] minecraft:saturation 5 5
execute as @s if score $gameState gameState matches 0 run effect give @a[tag=player] minecraft:instant_health 1 4

execute as @s if score $gameState gameState matches 0 run scoreboard players set $gameState gameState 2
# Set life count
execute if score $gameState gameState matches 0 unless score $lives lives matches 0 run scoreboard players operation @a[tag=player] lives = $lives lives
execute as @a[tag=player] if score $gameState gameState matches 0 if score $lives lives matches 0 store result score @s lives run random value 2..7

# Set teams
execute as @a[tag=player] if score $gameState gameState matches 0 if score @s lives matches 1 run team join wlp.red @s
execute as @a[tag=player] if score $gameState gameState matches 0 if score @s lives matches 2 run team join wlp.yellow @s
execute as @a[tag=player] if score $gameState gameState matches 0 if score @s lives matches 3 run team join wlp.green @s
execute as @a[tag=player,scores={lives=4..}] if score $gameState gameState matches 0 run team join wlp.darkgreen @s 
execute as @a[tag=spec] if score $gameState gameState matches 0 run team join wlp.spec

# Set gamemodes
execute as @s if score $gameState gameState matches 0 run gamemode survival @a[team=wlp.darkgreen]
execute as @s if score $gameState gameState matches 0 run gamemode survival @a[team=wlp.green]
execute as @s if score $gameState gameState matches 0 run gamemode survival @a[team=wlp.yellow]
execute as @s if score $gameState gameState matches 0 run gamemode survival @a[team=wlp.red]
execute as @s if score $gameState gameState matches 0 run gamemode spectator @a[team=wlp.spec]

# Death & kill checker
execute as @s if score $gameState gameState matches 0 run scoreboard objectives add deathCheck deathCount deathCheck
execute as @s if score $gameState gameState matches 0 run scoreboard players set @a deathCheck 0 
execute as @s if score $gameState gameState matches 0 run scoreboard objectives add killCheck playerKillCount
execute as @s if score $gameState gameState matches 0 run scoreboard players set @a[tag=player] killCheck 0

#Announce to players
execute as @s if score $gameState gameState matches 0 run title @a title ["Game started!"]

execute as @a[tag=player,scores={lives=4..}] if score $gameState gameState matches 0 run title @s subtitle ["You have ",{"color":"dark_green","score":{"name":"@s","objective":"lives"}}," lives"]
execute as @a[tag=player,scores={lives=3}] if score $gameState gameState matches 0 run title @s subtitle ["You have ",{"color":"green","score":{"name":"@s","objective":"lives"}}," lives"]
execute as @a[tag=player,scores={lives=2}] if score $gameState gameState matches 0 run title @s subtitle ["You have ",{"color":"yellow","score":{"name":"@s","objective":"lives"}}," lives"]
execute as @a[tag=player,scores={lives=1}] if score $gameState gameState matches 0 run title @s subtitle ["You have ",{"color":"red","score":{"name":"@s","objective":"lives"}}," lives"]