#
execute as @e[type=minecraft:armor_stand,tag=test] at @s store result score test_pos1x position run data get entity @s Pos[0]
execute as @e[type=minecraft:armor_stand,tag=test] at @s store result score test_pos1y position run data get entity @s Pos[1]
execute as @e[type=minecraft:armor_stand,tag=test] at @s store result score test_pos1z position run data get entity @s Pos[2]

#
execute if score test_pos1y position >= pos2y position run execute as @e[type=minecraft:armor_stand,tag=test] at @s run data modify entity @s Tags set value ["remove_wall"]
execute if score test_pos1y position >= pos2y position run execute as @e[type=minecraft:armor_stand,tag=remove_wall] at @s run tellraw @a [{"text": "[ChibiEdit]: ", "color": "#1BDF8A"}, {"text": "Wall 3, Complete!", "color": "#8D86F9"}]
execute if score test_pos1y position >= pos2y position run execute as @a at @s run trigger sel
execute if score test_pos1y position >= pos2y position run execute as @e[type=minecraft:armor_stand,tag=remove_wall] at @s run kill @s


#
#
execute if score pos1z_corner position < pos1z position run execute as @e[type=minecraft:armor_stand,tag=test,tag=!step_10] at @s run setblock ~ ~1 ~ minecraft:red_concrete
execute if score pos1z_corner position < pos1z position run execute as @e[type=minecraft:armor_stand,tag=test,tag=!step_10] at @s run tp @s ~ ~ ~-1
execute if score test_pos1z position = pos1z_corner position run execute as @e[type=minecraft:armor_stand,tag=test,tag=!step_10] at @s run tag @s add step_10

#
execute if score pos1x_corner position < pos2x position run execute as @e[type=minecraft:armor_stand,tag=test,tag=step_10,tag=!step_11] at @s run setblock ~ ~1 ~ minecraft:green_concrete
execute if score pos1x_corner position < pos2x position run execute as @e[type=minecraft:armor_stand,tag=test,tag=step_10,tag=!step_11] at @s run tp @s ~1 ~ ~
execute if score test_pos1x position = pos2x position run execute as @e[type=minecraft:armor_stand,tag=test,tag=step_10,tag=!step_11] at @s run tag @s add step_11

# #
execute if score pos2z position < pos2z_corner position run execute as @e[type=minecraft:armor_stand,tag=test,tag=step_10,tag=step_11,tag=!step_12] at @s run setblock ~ ~1 ~ minecraft:orange_concrete
execute if score pos2z position < pos2z_corner position run execute as @e[type=minecraft:armor_stand,tag=test,tag=step_10,tag=step_11,tag=!step_12] at @s run tp @s ~ ~ ~1
execute if score test_pos1z position = pos2z_corner position run execute as @e[type=minecraft:armor_stand,tag=test,tag=step_10,tag=step_11,tag=!step_12] at @s run tag @s add step_12

# #
execute if score pos1x position < pos2x_corner position run execute as @e[type=minecraft:armor_stand,tag=test,tag=step_10,tag=step_11,tag=step_12,tag=!step_13] at @s run setblock ~ ~1 ~ minecraft:purple_concrete
execute if score pos1x position < pos2x_corner position run execute as @e[type=minecraft:armor_stand,tag=test,tag=step_10,tag=step_11,tag=step_12,tag=!step_13] at @s run tp @s ~-1 ~ ~
execute if score test_pos1x position = pos1x position run execute as @e[type=minecraft:armor_stand,tag=test,tag=step_10,tag=step_11,tag=step_12,tag=!step_13] at @s run tag @s add step_13
execute if score test_pos1x position = pos1x position run execute as @e[type=minecraft:armor_stand,tag=test,tag=step_10,tag=step_11,tag=step_12,tag=step_13] at @s run tp @s ~1 ~ ~
execute if score test_pos1x position = pos1x position run execute as @e[type=minecraft:armor_stand,tag=test,tag=step_10,tag=step_11,tag=step_12,tag=step_13] at @s run tp @s ~ ~1 ~
execute if score test_pos1x position = pos1x position run execute as @e[type=minecraft:armor_stand,tag=test,tag=step_10,tag=step_11,tag=step_12,tag=step_13] at @s run data modify entity @s Tags set value ["test", "walls_3"]