#
execute as @e[type=minecraft:armor_stand,tag=set] at @s run kill @s

#
tellraw @s [{"text": "[ChibiEdit]: ", "color": "#1BDF8A"}, {"text": "Set", "color": "#8D86F9"}]

#
execute as @s[y_rotation=135..-135] run summon minecraft:armor_stand ~ ~ ~ {Tags:["set", "set_north"], NoGravity:1b, CustomName:"{\"text\": \"set north\"}", CustomNameVisible:1b, Rotation:[0f], Invisible:1b}
execute as @s[y_rotation=-135..-45] run summon minecraft:armor_stand ~ ~ ~ {Tags:["set", "set_east"], NoGravity:1b, CustomName:"{\"text\": \"set east\"}", CustomNameVisible:1b, Rotation:[90f], Invisible:1b}
execute as @s[y_rotation=-45..45] run summon minecraft:armor_stand ~ ~ ~ {Tags:["set", "set_south"], NoGravity:1b, CustomName:"{\"text\": \"set south\"}", CustomNameVisible:1b, Rotation:[180f], Invisible:1b}
execute as @s[y_rotation=45..135] run summon minecraft:armor_stand ~ ~ ~ {Tags:["set", "set_west"], NoGravity:1b, CustomName:"{\"text\": \"set west\"}", CustomNameVisible:1b, Rotation:[270f], Invisible:1b}

#
execute as @e[type=minecraft:armor_stand,tag=set] at @s run tp @s @e[type=minecraft:armor_stand,tag=pos1,limit=1]

#
execute as @e[type=minecraft:armor_stand,tag=set] at @s store result score @s set_x run data get entity @s Pos[0]
execute as @e[type=minecraft:armor_stand,tag=set] at @s store result score @s set_y run data get entity @s Pos[1]
execute as @e[type=minecraft:armor_stand,tag=set] at @s store result score @s set_z run data get entity @s Pos[2]

#
tellraw @s [{"text": "X: ", "color": "gold"}, {"score":{"name": "@e[type=armor_stand,tag=set]", "objective": "set_x"}, "color": "#1BDF8A"}, {"text": " Y: "}, {"score":{"name": "@e[type=armor_stand,tag=set]", "objective": "set_y"}, "color": "#1BDF8A"}, {"text": " Z: "}, {"score":{"name": "@e[type=armor_stand,tag=set]", "objective": "set_z"}, "color": "#1BDF8A"}]

#
scoreboard players operation @s layer = @s set

#
execute if score @s set matches 1.. run execute as @e[type=minecraft:armor_stand,tag=set] at @s run tag @s add layer

#
scoreboard players set @s set 0