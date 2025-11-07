#
# Add player life
# 

# Add life to counter
execute as @s run scoreboard players add @s lives 1

#Change life colour
execute as @s[team=wlp.darkgreen] run tellraw @s[team=wlp.darkgreen] ["You now have ",{"color":"dark_green","score":{"name":"@s","objective":"lives"}}," lives!"]

execute as @s[team=wlp.green] run tellraw @s[team=wlp.green] ["",{"text":"You are now have "},{"text":"4","color":"dark_green"},{"text":" lives!"}]
execute as @s[team=wlp.green] run team join wlp.darkgreen

execute as @s[team=wlp.yellow] run tellraw @s ["",{"text":"You are now a "},{"text":"green","color":"green"},{"text":" life!"}]
execute as @s[team=wlp.yellow] run team join wlp.green

execute as @s[team=wlp.red] run tellraw @s ["",{"text":"You are now a "},{"text":"yellow","color":"yellow"},{"text":" life!"}]
execute as @s[team=wlp.red] run team join wlp.yellow

execute as @s[team=wlp.spec,tag=player] run tellraw @s ["",{"text":"You are now a "},{"text":"red","color":"red"},{"text":" life!"}]
execute as @s[team=wlp.spec,tag=player] run team join wlp.red

