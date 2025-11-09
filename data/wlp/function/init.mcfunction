#
# Datapack initialization
#

# Add teams

team add wlp.darkgreen DarkGreen
team modify wlp.darkgreen color dark_green
team add wlp.green Green
team modify wlp.green color green
team add wlp.yellow Yellow
team modify wlp.yellow color yellow
team add wlp.red Red
team modify wlp.red color red
team add wlp.spec Spectre
team modify wlp.spec color gray


# Add objectives

# Life counter - 0:random
scoreboard objectives add lives dummy
scoreboard players set $lives lives 3
# Game state check - 0:not started 1:game started/not in session 2: game started/in session
scoreboard objectives add gameState dummy
scoreboard players set $gameState gameState 0
# Boogey toggle
scoreboard objectives add boogeyEnabled dummy
scoreboard players set $boogeyEnabled boogeyEnabled 0
# Recipe management
gamerule doLimitedCrafting true
recipe give @a *
# Player handling
scoreboard objectives add playerHandled dummy

#
# Recipe objectives - enabled by default
#

scoreboard objectives add saddleRecipe dummy
scoreboard players set $saddleRecipe saddleRecipe 1

scoreboard objectives add tntRecipe dummy
scoreboard players set $tntRecipe saddleRecipe 1

scoreboard objectives add nametagRecipe dummy
scoreboard players set $nametagRecipe saddleRecipe 1

#
# Mob egg drop objectives - enabled by default
#

scoreboard objectives add creeperEggEnabled dummy
scoreboard players set $creeperEggEnabled creeperEggEnabled 1

scoreboard objectives add blazeEggEnabled dummy
scoreboard players set $blazeEggEnabled blazeEggEnabled 1

scoreboard objectives add breezeEggEnabled dummy
scoreboard players set $breezeEggEnabled breezeEggEnabled 1

scoreboard objectives add drownedEggEnabled dummy
scoreboard players set $drownedEggEnabled drownedEggEnabled 1

scoreboard objectives add endermanEggEnabled dummy
scoreboard players set $endermanEggEnabled endermanEggEnabled 1

scoreboard objectives add zombieEggEnabled dummy
scoreboard players set $zombieEggEnabled zombieEggEnabled 1

scoreboard objectives add skeletonEggEnabled dummy
scoreboard players set $skeletonEggEnabled skeletonEggEnabled 1

scoreboard objectives add slimeEggEnabled dummy
scoreboard players set $slimeEggEnabled slimeEggEnabled 1

scoreboard objectives add spiderEggEnabled dummy
scoreboard players set $spiderEggEnabled spiderEggEnabled 1

scoreboard objectives add witchEggEnabled dummy
scoreboard players set $witchEggEnabled witchEggEnabled 1

scoreboard objectives add cavespiderEggEnabled dummy
scoreboard players set $cavespiderEggEnabled cavespiderEggEnabled 1