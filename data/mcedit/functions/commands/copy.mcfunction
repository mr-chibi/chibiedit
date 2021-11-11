# POS1 & POS2:
execute as @e[type=minecraft:armor_stand,tag=pos1] at @s run setblock ~ ~ ~ minecraft:structure_block{mode:"SAVE", name:"test:copy", powered:1b}
execute as @e[type=minecraft:armor_stand,tag=pos2] at @s run setblock ~ ~ ~ minecraft:structure_block{mode:"CORNER", name:"test:copy"}



# Redstone:
execute as @s[y_rotation=135..-135] run execute as @e[type=minecraft:armor_stand,tag=pos1] at @s run setblock ~-1 ~ ~ minecraft:redstone_block
execute as @s[y_rotation=-135..-45] run execute as @e[type=minecraft:armor_stand,tag=pos1] at @s run setblock ~ ~ ~-1 minecraft:redstone_block
execute as @s[y_rotation=-45..45] run execute as @e[type=minecraft:armor_stand,tag=pos1] at @s run setblock ~1 ~ ~ minecraft:redstone_block
execute as @s[y_rotation=45..135] run execute as @e[type=minecraft:armor_stand,tag=pos1] at @s run setblock ~ ~ ~1 minecraft:redstone_block


#
tellraw @s [{"text": "[ChibiEdit]: ", "color": "#1BDF8A"}, {"text": "Right Click, block next to redstone block and click, [detect]", "color": "#8D86F9"}]
tellraw @s [{"text": "[ChibiEdit]: ", "color": "#1BDF8A"}, {"text": "Next, break the redstone block and place it again.", "color": "#8D86F9"}]
tellraw @s [{"text": "[ChibiEdit]: ", "color": "#1BDF8A"}, {"text": "Finally, find a spot and do /trigger paste", "color": "#8D86F9"}]

#
scoreboard players set @s copy 0