function houston:timer
execute as @a at @s if entity @s[y=-70,dy=-190] run function houston:voidfall
execute if score secondcount timer matches 17 run gamerule fallDamage true

execute as @r at @s if score booleen swapping matches 1 if score secondcount timer matches 3 run function houston:swaplogic
execute if score oxy_time timer matches 24000 run tellraw @a {"color":"green","text":"20 Minutes of oxy remain."}
execute if score oxy_time timer matches 24000 run playsound minecraft:block.note_block.bit master @a ~ ~ ~ 1 1 1
execute if score oxy_time timer matches 12000 run tellraw @a {"color":"green","text":"10 Minutes of oxy remain."}
execute if score oxy_time timer matches 12000 run playsound minecraft:block.note_block.bit master @a ~ ~ ~ 1 1 1
execute if score oxy_time timer matches 6000 run tellraw @a {"color":"green","text":"5 Minutes of oxy remain."}
execute if score oxy_time timer matches 6000 run playsound minecraft:block.note_block.bit master @a ~ ~ ~ 1 1 1
execute if score oxy_time timer matches 1200 run tellraw @a {"color":"green","text":"1 Minute of oxy remains."}
execute if score oxy_time timer matches 1200 run playsound minecraft:block.note_block.bit master @a ~ ~ ~ 1 1 1
execute if score oxy_time timer matches 60 run tellraw @a {"color":"green","text":"3 seconds of oxy remain."}
execute if score oxy_time timer matches 60 run playsound minecraft:block.note_block.bit master @a ~ ~ ~ 1 1 1
execute if score oxy_time timer matches 40 run tellraw @a {"color":"green","text":"2 seconds of oxy remain."}
execute if score oxy_time timer matches 40 run playsound minecraft:block.note_block.bit master @a ~ ~ ~ 1 1 1
execute if score oxy_time timer matches 20 run tellraw @a {"color":"green","text":"1 second of oxy remains."}
execute if score oxy_time timer matches 20 run playsound minecraft:block.note_block.bit master @a ~ ~ ~ 1 1 1
execute if score oxy_time timer matches 0 run tellraw @a {"color":"green","text":"No oxy remains. Shift Rollover Called."}
execute if score oxy_time timer matches 0 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 1 1
execute if score oxy_time timer matches 0 run function houston:rollover

execute if score oxy_time timer matches -200 run scoreboard players set oxy_time timer 1

scoreboard players enable @a CourseCorrect
execute as @a[scores={CourseCorrect=1..}] run function houston:coursecorrect
scoreboard players set @a CourseCorrect 0

execute if score worldtick timer matches 1 run tellraw @a[team=debug] {"color":"dark_green","text":"Houston Ticking"}

execute as @a at @s if score @s playtime matches 1 if score planetmembers datastore matches 1 run function houston:join_planet_team
execute as @a at @s if score @s playtime matches 2 if score planetmembers datastore matches 0 run function houston:join_planet_team