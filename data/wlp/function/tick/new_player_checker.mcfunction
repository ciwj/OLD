#
# Check for new players
#

execute as @a unless score @s playerHandled matches 1 run function wlp:utils/handle_new_player

