#
# Handle new players
#

execute as @s[scores={playerHandled=0}] run recipe give @s *
execute as @s[scores={playerHandled=0}] run gamemode spectator @s
execute as @s[scores={playerHandled=0}] run tag @s add spec
execute as @s[scores={playerHandled=0}] run team join wlp.spec @s
execute as @s[scores={playerHandled=0}] run tag @s remove player
execute as @s[scores={playerHandled=0}] run scoreboard players set @s cursedToDeath 0

execute as @s[scores={playerHandled=0}] run scoreboard players set @s playerHandled 1

