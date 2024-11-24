scoreboard players set booleen swapping 0
tellraw @a {"color":"gold","text":"Prepare for landing..."}
execute as @a at @s if score @s location_tracker matches 0 run scoreboard players set @s location_tracker 2
execute as @a at @s if score @s location_tracker matches 1 run scoreboard players set @s location_tracker 0
execute as @a at @s if score @s location_tracker matches 2 run scoreboard players set @s location_tracker 1
execute as @a at @s if score @s location_tracker matches 1 run team join planet
execute as @a at @s if score @s location_tracker matches 0 run team join ship
execute as @a at @s if score @s location_tracker matches 1 run function houston:world_entry
execute as @a at @s if score @s location_tracker matches 0 run function houston:ship_entry
scoreboard players set oxy_time timer 24000
scoreboard players set day_time timer 0
time set 0