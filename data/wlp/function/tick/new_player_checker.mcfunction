#
# Check for new players
#

execute as @a if score @s playerHandled matches 0 run function wlp:utils/handle_new_player
execute as @a run scoreboard players set @s playerHandled 1

