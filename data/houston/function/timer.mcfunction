scoreboard players add worldtick timer 1
execute if score worldtick timer matches 21 run scoreboard players set worldtick timer 1

execute if score worldtick timer matches 20 run scoreboard players add secondcount timer 1
execute if score secondcount timer matches 60 run scoreboard players set secondcount timer 0

scoreboard players remove oxy_time timer 1
scoreboard players add day_time timer 1