#
# Remove lives until on red
#

# Clear effects and heal once on red
execute as @a[scores={cursedToDeath=1, lives=1}] run effect clear @s
execute as @a[scores={cursedToDeath=1, lives=1}] run effect give @s instant_health 1 5
# Remove tag once on red
execute as @a[scores={cursedToDeath=1, lives=1}] run scoreboard players set @s cursedToDeath 0

# Effects until red
execute as @a[scores={cursedToDeath=1, lives=2..}] run effect give @s minecraft:glowing 1 1
execute as @a[scores={cursedToDeath=1, lives=2..}] run effect give @s minecraft:instant_damage 1 1
execute as @a[scores={cursedToDeath=1, lives=2..}] run effect give @s minecraft:levitation 1 1

