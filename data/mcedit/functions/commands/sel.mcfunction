tellraw @s [{"text": "[ChibiEdit]: ", "color": "#1BDF8A"}, {"text": "Cleared Selected, ", "color": "#8D86F9"}, {"text": "\"minecraft:structure_block\"", "color": "#8863FE"}]

#
execute as @e[type=minecraft:armor_stand,tag=pos1] at @s if block ~ ~ ~ minecraft:structure_block run setblock ~ ~ ~ minecraft:air
execute as @e[type=minecraft:armor_stand,name=pos2] at @s if block ~ ~ ~ minecraft:structure_block run setblock ~ ~ ~ minecraft:air
execute as @e[type=minecraft:armor_stand,tag=save] at @s if block ~ ~ ~ minecraft:structure_block run setblock ~ ~ ~ minecraft:air

#
execute as @e[type=minecraft:armor_stand,tag=pos1] at @s run kill @s
execute as @e[type=minecraft:armor_stand,name=pos2] at @s run kill @s
execute as @e[type=minecraft:armor_stand,tag=save] at @s run kill @s

#
execute as @e[type=armor_stand,tag=pos1x_corner] at @s run kill @s
execute as @e[type=armor_stand,tag=pos2x_corner] at @s run kill @s
execute as @e[type=armor_stand,tag=test] at @s run kill @s

#
scoreboard players reset pos1x position
scoreboard players reset pos1y position
scoreboard players reset pos1z position

#
scoreboard players reset pos2x position
scoreboard players reset pos2y position
scoreboard players reset pos2z position

#
scoreboard players reset test_pos1x position
scoreboard players reset test_pos1y position
scoreboard players reset test_pos1z position

#
scoreboard players reset pos1x_corner
scoreboard players reset pos1y_corner
scoreboard players reset pos1z_corner

#
scoreboard players reset pos2x_corner
scoreboard players reset pos2y_corner
scoreboard players reset pos2z_corner

#
scoreboard players set @s sel 0