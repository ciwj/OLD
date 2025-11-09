#
# Add a life to a player other than the one running it
#


# Add life to counter
$execute as $(username) unless score $gameState gameState matches 0 run scoreboard players add @s lives 1

#Change life colour
$execute as $(username) if score $(username) lives matches 4.. unless score $gameState gameState matches 0 run tellraw @s[team=wlp.darkgreen] ["You now have ",{"color":"dark_green","score":{"name":"@s","objective":"lives"}}," lives!"]

$execute as $(username) if score $(username) lives matches 4.. unless score $gameState gameState matches 0 run tellraw @s[team=wlp.green] ["",{"text":"You are now have "},{"text":"4","color":"dark_green"},{"text":" lives!"}]
$execute as $(username) if score $(username) lives matches 4.. unless score $gameState gameState matches 0 run team join wlp.darkgreen

$execute as $(username) if score $(username) lives matches 3 unless score $gameState gameState matches 0 run tellraw @s ["",{"text":"You are now a "},{"text":"green","color":"green"},{"text":" life!"}]
$execute as $(username) if score $(username) lives matches 3 unless score $gameState gameState matches 0 run team join wlp.green

$execute as $(username) if score $(username) lives matches 2 unless score $gameState gameState matches 0 run tellraw @s ["",{"text":"You are now a "},{"text":"yellow","color":"yellow"},{"text":" life!"}]
$execute as $(username) if score $(username) lives matches 2 unless score $gameState gameState matches 0 run team join wlp.yellow

$execute as $(username) if score $(username) lives matches 1 run tellraw @s ["",{"text":"You are now a "},{"text":"red","color":"red"},{"text":" life!"}]
$execute as $(username) if score $(username) lives matches 1 run team join wlp.red
$execute as $(username) if score $(username) lives matches 1 run gamemode survival @s