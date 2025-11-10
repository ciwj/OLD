#
# Remove a life from a player other than the one running it
#


# Change life colour
$execute as $(username) if score $(username) lives matches 1 unless score $gameState gameState matches 0 run tellraw @s ["",{"text":"RIP <3"},]
$execute as $(username) if score $(username) lives matches 1 unless score $gameState gameState matches 0 run summon lightning_bolt ~ ~ ~
$execute as $(username) if score $(username) lives matches 1 unless score $gameState gameState matches 0 run team join wlp.spec

$execute as $(username) if score $(username) lives matches 2 unless score $gameState gameState matches 0 run tag @s remove boogey
$execute as $(username) if score $(username) lives matches 2 unless score $gameState gameState matches 0 run tellraw @s ["",{"text":"You are now a "},{"text":"red","color":"red"},{"text":" life!"}]
$execute as $(username) if score $(username) lives matches 2 unless score $gameState gameState matches 0 run team join wlp.red

$execute as $(username) if score $(username) lives matches 3 unless score $gameState gameState matches 0 run tellraw @s[team=wlp.green] ["",{"text":"You are now a "},{"text":"yellow","color":"yellow"},{"text":" life!"}]
$execute as $(username) if score $(username) lives matches 3 unless score $gameState gameState matches 0 run team join wlp.yellow

# Remove life from counter
$execute as $(username) unless score $gameState gameState matches 0 run scoreboard players remove @s lives 1

# Change dark green life colour if required
$execute as $(username) if score $(username) lives matches 3 unless score $gameState gameState matches 0 run tellraw @s ["",{"text":"You are now a "},{"text":"green","color":"green"},{"text":" life!"}]
$execute as $(username) if score $(username) lives matches 3 unless score $gameState gameState matches 0 run team join wlp.green

$execute as $(username) if score $(username) lives matches 3 unless score $gameState gameState matches 0 run tellraw @s[team=wlp.darkgreen] ["You now have ",{"color":"dark_green","score":{"name":"@s","objective":"lives"}}," lives!"]


#Update gamemodes
gamemode survival @a[team=wlp.darkgreen]
gamemode survival @a[team=wlp.green]
gamemode survival @a[team=wlp.yellow]
gamemode survival @a[team=wlp.red]
gamemode spectator @a[team=wlp.spec]