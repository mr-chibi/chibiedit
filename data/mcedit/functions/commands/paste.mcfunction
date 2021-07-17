#
tellraw @s [{"text": "[ChibiEdit]: ", "color": "#1BDF8A"}, {"text": "Pasting Structure... ", "color": "#8D86F9"}, {"text": "minecraft:structure_block", "color": "#8863FE"}]

#
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b, Small:1b, Tags:["paste"]}

# WEST
execute as @s[y_rotation=-135..-45] run setblock ~ ~-1 ~-1 minecraft:structure_block{mode:"LOAD", name:"chibiedit:structures/file", rotation:"CLOCKWISE_90", mirror:"LEFT_RIGHT"}
execute as @s[y_rotation=-135..-45] run setblock ~ ~-1 ~ minecraft:redstone_block

# SOUTH
execute as @s[y_rotation=135..-135] run setblock ~-1 ~-1 ~ minecraft:structure_block{mode:"LOAD", name:"chibiedit:structures/file", rotation:"NONE", mirror:"LEFT_RIGHT"}
execute as @s[y_rotation=135..-135] run setblock ~ ~-1 ~ minecraft:redstone_block

# EAST
execute as @s[y_rotation=45..135] run setblock ~ ~-1 ~1 minecraft:structure_block{mode:"LOAD", name:"chibiedit:structures/file", rotation:"COUNTERCLOCKWISE_90", mirror: "LEFT_RIGHT"}
execute as @s[y_rotation=45..135] run setblock ~ ~-1 ~ minecraft:redstone_block

# NORTH
execute as @s[y_rotation=-45..45] run setblock ~-1 ~-1 ~ minecraft:structure_block{mode:"LOAD", name:"chibiedit:structures/file", rotation:"COUNTERCLOCKWISE_180", mirror: "NONE"}
execute as @s[y_rotation=-45..45] run setblock ~ ~-1 ~ minecraft:redstone_block

#
execute as @e[type=minecraft:armor_stand,tag=paste] at @s run kill @s

#
scoreboard players set @s paste 0