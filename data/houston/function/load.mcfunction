time set 0

scoreboard objectives add timer dummy
scoreboard objectives add location_tracker dummy
scoreboard objectives add swapping dummy
scoreboard objectives add CourseCorrect trigger
scoreboard objectives add playtime minecraft.custom:minecraft.play_time
scoreboard objectives add datastore dummy

team add planet
team add ship
team add debug

team modify planet prefix "[Planet Side] "
team modify ship prefix "[Ship Side] "
team modify debug prefix "[Debugging] "

execute in houston:houston/ship run forceload add 0 0 0 0

scoreboard players set worldtick timer 0
scoreboard players set secondcount timer 0
scoreboard players set shipmembers datastore 0
scoreboard players set planetmembers datastore 0
scoreboard players set ticker datastore 0
scoreboard players set oxy_time timer 24000


execute in houston:houston/ship run setblock 0 61 0 bedrock

tellraw @a {"color":"yellow","text":"Houston we have landing"}