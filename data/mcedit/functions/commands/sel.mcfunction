# SAVE POS:
execute as @s[y_rotation=135..-135] run execute as @e[type=minecraft:armor_stand,tag=pos1] at @s run setblock ~ ~ ~ minecraft:air
execute as @s[y_rotation=-135..-45] run execute as @e[type=minecraft:armor_stand,tag=pos1] at @s run setblock ~ ~ ~ minecraft:air
execute as @s[y_rotation=-45..45] run execute as @e[type=minecraft:armor_stand,tag=pos1] at @s run setblock ~ ~ ~ minecraft:air
execute as @s[y_rotation=45..135] run execute as @e[type=minecraft:armor_stand,tag=pos1] at @s run setblock ~ ~ ~ minecraft:air


# Redstone:
execute as @s[y_rotation=135..-135] run execute as @e[type=minecraft:armor_stand,tag=pos1] at @s run setblock ~-1 ~ ~ minecraft:air
execute as @s[y_rotation=-135..-45] run execute as @e[type=minecraft:armor_stand,tag=pos1] at @s run setblock ~ ~ ~-1 minecraft:air
execute as @s[y_rotation=-45..45] run execute as @e[type=minecraft:armor_stand,tag=pos1] at @s run setblock ~1 ~ ~ minecraft:air
execute as @s[y_rotation=45..135] run execute as @e[type=minecraft:armor_stand,tag=pos1] at @s run setblock ~ ~ ~1 minecraft:air


# POS 1 & 2:
execute as @e[type=minecraft:armor_stand,tag=pos1] at @s run setblock ~ ~ ~ minecraft:air
execute as @e[type=minecraft:armor_stand,tag=pos2] at @s run setblock ~ ~ ~ minecraft:air


#
execute as @e[type=minecraft:armor_stand,tag=pos1] at @s run kill @s
execute as @e[type=minecraft:armor_stand,tag=pos2] at @s run kill @s
execute as @e[type=minecraft:armor_stand,tag=set] at @s run kill @s
execute as @e[type=minecraft:armor_stand,tag=pillar] at @s run kill @s
execute as @e[type=minecraft:armor_stand,tag=fill] at @s run kill @s
execute as @e[type=minecraft:armor_stand,tag=walls] at @s run kill @s
execute as @e[type=minecraft:armor_stand,tag=paste] at @s run kill @s

#
tellraw @s [{"text": "[ChibiEdit]: ", "color": "#1BDF8A"}, {"text": "Cleared all selections!", "color": "#8D86F9"}]

#
scoreboard players set @s sel 0