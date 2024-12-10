scoreboard players add worldtick timer 1
execute if score worldtick timer matches 21 run scoreboard players set worldtick timer 1

execute if score worldtick timer matches 20 run scoreboard players add secondcount timer 1
execute if score secondcount timer matches 60 run scoreboard players set secondcount timer 0

scoreboard players remove oxy_time timer 1

execute store result score day_time timer run time query day
execute if score day_time timer matches 1 run function houston:rollover

execute if score ticker datastore matches 0 run scoreboard players set ticker datastore 1
execute if score ticker datastore matches 1 run scoreboard players set ticker datastore 0
