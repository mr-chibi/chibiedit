#
execute as @a at @s run scoreboard players enable @s pos1
execute as @a at @s run scoreboard players enable @s pos2
execute as @a at @s run scoreboard players enable @s sel
execute as @a at @s run scoreboard players enable @s rotate
execute as @a at @s run scoreboard players enable @s save
execute as @a at @s run scoreboard players enable @s load
execute as @a at @s run scoreboard players enable @s paste
execute as @a at @s run scoreboard players enable @s walls

#
execute as @a at @s[scores={pos1=1..}] run function mcedit:commands/pos1
execute as @a at @s[scores={pos2=1..}] run function mcedit:commands/pos2
execute as @a at @s[scores={sel=1..}] run function mcedit:commands/sel
execute as @a at @s[scores={rotate=1..}] run function mcedit:commands/rotate
execute as @a at @s[scores={save=1..}] run function mcedit:commands/save
execute as @a at @s[scores={load=1..}] run function mcedit:commands/load
execute as @a at @s[scores={paste=1..}] run function mcedit:commands/paste
execute as @a at @s[scores={walls=1..}] run function mcedit:commands/walls


#
execute as @a at @s run function mcedit:tags/wand

#
execute as @e[type=minecraft:armor_stand,tag=test,tag=walls_1] at @s run function mcedit:loops/walls_1
execute as @e[type=minecraft:armor_stand,tag=test,tag=walls_2] at @s run function mcedit:loops/walls_2
execute as @e[type=minecraft:armor_stand,tag=test,tag=walls_3] at @s run function mcedit:loops/walls_3
execute as @e[type=minecraft:armor_stand,tag=test,tag=walls_4] at @s run function mcedit:loops/walls_4