scoreboard objectives add timer dummy
scoreboard objectives add location_tracker dummy
scoreboard objectives add swapping dummy
scoreboard objectives add CourseCorrect trigger

team add planet
team add ship
team add debug

team modify planet prefix "[Planet Side] "
team modify ship prefix "[Ship Side] "
team modify debug prefix "[Debugging] "

execute as @a at @s if score @s location_tracker matches 1 run team join planet
execute as @a at @s if score @s location_tracker matches 0 run team join ship

scoreboard players set worldtick timer 0
scoreboard players set secondcount timer 0
scoreboard players set @a location_tracker 1
scoreboard players remove @r location_tracker 1

execute in houston:houston/ship run setblock 0 60 0 bedrock

tellraw @a {"color":"yellow","text":"Houston we have landing"}