#
# Datapack initialization
#

# Add teams

team add wlp.green Green
team modify wlp.green color green
team add wlp.yellow Yellow
team modify wlp.yellow color yellow
team add wlp.red Red
team modify wlp.red color red
team add wlp.spec Spectre
team modify wlp.spec color gray

team join wlp.green @a

# Add objectives

# Death checker
scoreboard objectives add deathCheck deathCount deathCheck
scoreboard players set @a deathCheck 0
# Game state check
scoreboard objectives add gameState dummy
scoreboard players set $gameState gameState 0
# Boogey toggle
scoreboard objectives add boogeyEnabled dummy
scoreboard players set $boogeyEnabled boogeyEnabled 0
