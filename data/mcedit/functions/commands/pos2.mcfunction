#
execute as @e[type=minecraft:armor_stand,tag=pos2] at @s if block ~ ~ ~ minecraft:structure_block run setblock ~ ~ ~ minecraft:air
execute as @e[type=minecraft:armor_stand,tag=save] at @s if block ~ ~ ~ minecraft:structure_block run setblock ~ ~ ~ minecraft:air
execute as @e[type=minecraft:armor_stand,tag=pos2] at @s run kill @s
execute as @e[type=minecraft:armor_stand,tag=save] at @s run kill @s
execute as @e[type=minecraft:armor_stand,tag=front_build] at @s run kill @s


#
tellraw @s [{"text": "[ChibiEdit]: ", "color": "#1BDF8A"}, {"text": "Pos2 Set, ", "color": "#8D86F9"}, {"text": "\"minecraft:structure_block\"", "color": "#8863FE"}]
tellraw @s [{"text": "[ChibiEdit]: ", "color": "#1BDF8A"}, {"text": "Save Set, ", "color": "#8D86F9"}, {"text": "\"minecraft:structure_block\"", "color": "#8863FE"}]

# WEST
execute as @s[y_rotation=-135..-45] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b, CustomName:"{\"text\": \"pos2\"}", CustomNameVisible:1b, Invisible:1b, Invulnerable:1b, Small:1b, Tags:["pos2"]}
execute as @s[y_rotation=-135..-45] run summon minecraft:armor_stand ~ ~ ~1 {NoGravity:1b, CustomName:"{\"text\": \"save\"}", CustomNameVisible:1b, Invisible:1b, Invulnerable:1b, Small:1b, Tags:["save"]}
execute as @s[y_rotation=-135..-45] run setblock ~ ~ ~ minecraft:structure_block{mode:"CORNER", name:"chibiedit:structures/file"}
execute as @s[y_rotation=-135..-45] run setblock ~ ~ ~1 minecraft:structure_block{mode:"SAVE", name:"chibiedit:structures/file", showboundingbox:1b}

# SOUTH
execute as @s[y_rotation=135..-135] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b, CustomName:"{\"text\": \"pos2\"}", CustomNameVisible:1b, Invisible:1b, Invulnerable:1b, Small:1b, Tags:["pos2"]}
execute as @s[y_rotation=135..-135] run summon minecraft:armor_stand ~1 ~ ~ {NoGravity:1b, CustomName:"{\"text\": \"save\"}", CustomNameVisible:1b, Invisible:1b, Invulnerable:1b, Small:1b, Tags:["save"]}
execute as @s[y_rotation=135..-135] run setblock ~ ~ ~ minecraft:structure_block{mode:"CORNER", name:"chibiedit:structures/file"}
execute as @s[y_rotation=135..-135] run setblock ~1 ~ ~ minecraft:structure_block{mode:"SAVE", name:"chibiedit:structures/file", showboundingbox:1b}


# EAST
execute as @s[y_rotation=45..135] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b, CustomName:"{\"text\": \"pos2\"}", CustomNameVisible:1b, Invisible:1b, Invulnerable:1b, Small:1b, Tags:["pos2"]}
execute as @s[y_rotation=45..135] run summon minecraft:armor_stand ~ ~ ~-1 {NoGravity:1b, CustomName:"{\"text\": \"save\"}", CustomNameVisible:1b, Invisible:1b, Invulnerable:1b, Small:1b, Tags:["save"]}
execute as @s[y_rotation=45..135] run setblock ~ ~ ~ minecraft:structure_block{mode:"CORNER", name:"chibiedit:structures/file"}
execute as @s[y_rotation=45..135] run setblock ~ ~ ~-1 minecraft:structure_block{mode:"SAVE", name:"chibiedit:structures/file", showboundingbox:1b}


# NORTH
execute as @s[y_rotation=-45..45] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b, CustomName:"{\"text\": \"pos2\"}", CustomNameVisible:1b, Invisible:1b, Invulnerable:1b, Small:1b, Tags:["pos2"]}
execute as @s[y_rotation=-45..45] run summon minecraft:armor_stand ~-1 ~ ~ {NoGravity:1b, CustomName:"{\"text\": \"save\"}", CustomNameVisible:1b, Invisible:1b, Invulnerable:1b, Small:1b, Tags:["save"]}
execute as @s[y_rotation=-45..45] run setblock ~ ~ ~ minecraft:structure_block{mode:"CORNER", name:"chibiedit:structures/file"}
execute as @s[y_rotation=-45..45] run setblock ~-1 ~ ~ minecraft:structure_block{mode:"SAVE", name:"chibiedit:structures/file", showboundingbox:1b}


#
execute as @e[type=minecraft:armor_stand,tag=pos2] at @s store result score pos2x position run data get entity @s Pos[0]
execute as @e[type=minecraft:armor_stand,tag=pos2] at @s store result score pos2y position run data get entity @s Pos[1]
execute as @e[type=minecraft:armor_stand,tag=pos2] at @s store result score pos2z position run data get entity @s Pos[2]

#
scoreboard players set @s pos2 0


