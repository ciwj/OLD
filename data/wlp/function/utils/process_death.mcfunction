#
# On player death
# 

execute as @s[team=wlp.red] run tellraw @s ["",{"text":"RIP <3"},]
execute as @s[team=wlp.red] run team join wlp.spec

execute as @s[team=wlp.yellow] run tellraw @s ["",{"text":"You are now a "},{"text":"red","color":"red"},{"text":" life!"}]
execute as @s[team=wlp.yellow] run team join wlp.red

execute as @s[team=wlp.green] run tellraw @s[team=wlp.green] ["",{"text":"You are now a "},{"text":"yellow","color":"yellow"},{"text":" life!"}]
execute as @s[team=wlp.green] run team join wlp.yellow

gamemode survival @a[team=green]
gamemode survival @a[team=wlp.yellow]
gamemode survival @a[team=wlp.red]
gamemode spectator @a[team=wlp.spec]
