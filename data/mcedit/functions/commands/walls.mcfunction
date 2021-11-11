#
execute as @e[type=minecraft:armor_stand,tag=walls] at @s run kill @s

#
tellraw @s [{"text": "[ChibiEdit]: ", "color": "#1BDF8A"}, {"text": "walls", "color": "#8D86F9"}]

#
execute as @s[y_rotation=135..-135] run summon minecraft:armor_stand ~ ~ ~ {Tags:["walls", "walls_north"], NoGravity:1b, CustomName:"{\"text\": \"walls north\"}", CustomNameVisible:1b, Rotation:[0f], Invisible:1b}
execute as @s[y_rotation=-135..-45] run summon minecraft:armor_stand ~ ~ ~ {Tags:["walls", "walls_east"], NoGravity:1b, CustomName:"{\"text\": \"walls east\"}", CustomNameVisible:1b, Rotation:[90f], Invisible:1b}
execute as @s[y_rotation=-45..45] run summon minecraft:armor_stand ~ ~ ~ {Tags:["walls", "walls_south"], NoGravity:1b, CustomName:"{\"text\": \"walls south\"}", CustomNameVisible:1b, Rotation:[180f], Invisible:1b}
execute as @s[y_rotation=45..135] run summon minecraft:armor_stand ~ ~ ~ {Tags:["walls", "walls_west"], NoGravity:1b, CustomName:"{\"text\": \"walls west\"}", CustomNameVisible:1b, Rotation:[270f], Invisible:1b}

#
execute as @e[type=minecraft:armor_stand,tag=walls] at @s run tp @s @e[type=minecraft:armor_stand,tag=pos1,limit=1]

#
execute as @e[type=minecraft:armor_stand,tag=walls] at @s store result score @s walls_x run data get entity @s Pos[0]
execute as @e[type=minecraft:armor_stand,tag=walls] at @s store result score @s walls_y run data get entity @s Pos[1]
execute as @e[type=minecraft:armor_stand,tag=walls] at @s store result score @s walls_z run data get entity @s Pos[2]

#
tellraw @s [{"text": "X: ", "color": "gold"}, {"score":{"name": "@e[type=armor_stand,tag=walls]", "objective": "walls_x"}, "color": "#1BDF8A"}, {"text": " Y: "}, {"score":{"name": "@e[type=armor_stand,tag=walls]", "objective": "walls_y"}, "color": "#1BDF8A"}, {"text": " Z: "}, {"score":{"name": "@e[type=armor_stand,tag=walls]", "objective": "walls_z"}, "color": "#1BDF8A"}]

#
scoreboard players operation @s layer = @s walls

#
execute if score @s walls matches 1.. run execute as @e[type=minecraft:armor_stand,tag=walls] at @s run tag @s add layer

#
scoreboard players set @s walls 0