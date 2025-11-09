#
# Add a player
#

$execute as $(username) run tag @s add player
$execute as $(username) run tag @s remove spec

####### Late join handling #######
# Set gamemode
$execute as $(username) unless score $gameState gameState matches 0 run gamemode survival @s
# Set lives
$execute unless score $gameState gameState matches 0 unless score $lives lives matches 0 run scoreboard players operation $(username) lives = $lives lives
$execute as $(username) unless score $gameState gameState matches 0 if score $lives lives matches 0 store result score $(username) lives run random value 2..7
# Set teams
$execute as $(username) unless score $gameState gameState matches 0 if score @s lives matches 1 run team join wlp.red @s
$execute as $(username) unless score $gameState gameState matches 0 if score @s lives matches 2 run team join wlp.yellow @s
$execute as $(username) unless score $gameState gameState matches 0 if score @s lives matches 3 run team join wlp.green @s
$execute as $(username) if score $(username) lives matches 4.. unless score $gameState gameState matches 0 run team join wlp.darkgreen @s 
# Announce life count
$execute as $(username) if score $(username) lives matches 4.. unless score $gameState gameState matches 0 run title @s subtitle ["You have ",{"color":"dark_green","score":{"name":"@s","objective":"lives"}}," lives"]
$execute as $(username) if score $(username) lives matches 3 unless score $gameState gameState matches 0 run title @s subtitle ["You have ",{"color":"green","score":{"name":"@s","objective":"lives"}}," lives"]
$execute as $(username) if score $(username) lives matches 2 unless score $gameState gameState matches 0 run title @s subtitle ["You have ",{"color":"yellow","score":{"name":"@s","objective":"lives"}}," lives"]
$execute as $(username) if score $(username) lives matches 1 unless score $gameState gameState matches 0 run title @s subtitle ["You have ",{"color":"red","score":{"name":"@s","objective":"lives"}}," life"]
