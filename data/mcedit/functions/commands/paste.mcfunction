#
execute as @s[y_rotation=135..-135] run setblock ~-1 ~ ~ minecraft:structure_block{powered:1b, name:"test:copy", mode:"LOAD", rotation:"CLOCKWISE_180", showboundingbox:1b}
execute as @s[y_rotation=-135..-45] run setblock ~ ~ ~-1 minecraft:structure_block{powered:1b, name:"test:copy", mode:"LOAD", rotation:"COUNTERCLOCKWISE_90", showboundingbox:1b}
execute as @s[y_rotation=-45..45] run setblock ~1 ~ ~ minecraft:structure_block{powered:1b, name:"test:copy", mode:"LOAD", rotation:"NONE", showboundingbox:1b}
execute as @s[y_rotation=45..135] run setblock ~ ~ ~1 minecraft:structure_block{powered:1b, name:"test:copy", mode:"LOAD", rotation:"CLOCKWISE_90", mirror:"NONE", showboundingbox:1b}

#
execute as @s[y_rotation=135..-135] run setblock ~-2 ~ ~ minecraft:redstone_block
execute as @s[y_rotation=-135..-45] run setblock ~ ~ ~-2 minecraft:redstone_block
execute as @s[y_rotation=-45..45] run setblock ~2 ~ ~ minecraft:redstone_block
execute as @s[y_rotation=45..135] run setblock ~ ~ ~2 minecraft:redstone_block

#
tellraw @s [{"text": "[ChibiEdit]: ", "color": "#1BDF8A"}, {"text": "Break redstone block and replace to paste!", "color": "#8D86F9"}]

#
scoreboard players set @s paste 0