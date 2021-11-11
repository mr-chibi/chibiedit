#
execute as @e[type=minecraft:armor_stand,tag=fill] at @s run kill @s

#
tellraw @s [{"text": "[ChibiEdit]: ", "color": "#1BDF8A"}, {"text": "fill", "color": "#8D86F9"}]

#
execute as @s[y_rotation=135..-135] run summon minecraft:armor_stand ~ ~ ~ {Tags:["fill", "fill_north"], NoGravity:1b, CustomName:"{\"text\": \"fill north\"}", CustomNameVisible:1b, Rotation:[0f], Invisible:1b}
execute as @s[y_rotation=-135..-45] run summon minecraft:armor_stand ~ ~ ~ {Tags:["fill", "fill_east"], NoGravity:1b, CustomName:"{\"text\": \"fill east\"}", CustomNameVisible:1b, Rotation:[90f], Invisible:1b}
execute as @s[y_rotation=-45..45] run summon minecraft:armor_stand ~ ~ ~ {Tags:["fill", "fill_south"], NoGravity:1b, CustomName:"{\"text\": \"fill south\"}", CustomNameVisible:1b, Rotation:[180f], Invisible:1b}
execute as @s[y_rotation=45..135] run summon minecraft:armor_stand ~ ~ ~ {Tags:["fill", "fill_west"], NoGravity:1b, CustomName:"{\"text\": \"fill west\"}", CustomNameVisible:1b, Rotation:[270f], Invisible:1b}

#
execute as @e[type=minecraft:armor_stand,tag=fill] at @s run tp @s @e[type=minecraft:armor_stand,tag=pos1,limit=1]

#
execute as @e[type=minecraft:armor_stand,tag=fill] at @s store result score @s fill_x run data get entity @s Pos[0]
execute as @e[type=minecraft:armor_stand,tag=fill] at @s store result score @s fill_y run data get entity @s Pos[1]
execute as @e[type=minecraft:armor_stand,tag=fill] at @s store result score @s fill_z run data get entity @s Pos[2]

#
tellraw @s [{"text": "X: ", "color": "gold"}, {"score":{"name": "@e[type=armor_stand,tag=fill]", "objective": "fill_x"}, "color": "#1BDF8A"}, {"text": " Y: "}, {"score":{"name": "@e[type=armor_stand,tag=fill]", "objective": "fill_y"}, "color": "#1BDF8A"}, {"text": " Z: "}, {"score":{"name": "@e[type=armor_stand,tag=fill]", "objective": "fill_z"}, "color": "#1BDF8A"}]

#
scoreboard players operation @s layer = @s fill

#
execute if score @s fill matches 1.. run execute as @e[type=minecraft:armor_stand,tag=fill] at @s run tag @s add layer


#
scoreboard players set @s fill 0