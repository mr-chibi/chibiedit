#
execute as @e[type=minecraft:armor_stand,tag=test] at @s store result score test_pos1x position run data get entity @s Pos[0]
execute as @e[type=minecraft:armor_stand,tag=test] at @s store result score test_pos1y position run data get entity @s Pos[1]
execute as @e[type=minecraft:armor_stand,tag=test] at @s store result score test_pos1z position run data get entity @s Pos[2]

#
execute if score test_pos1y position >= pos2y position run execute as @e[type=minecraft:armor_stand,tag=test] at @s run data modify entity @s Tags set value ["remove_wall"]
execute if score test_pos1y position >= pos2y position run execute as @e[type=minecraft:armor_stand,tag=remove_wall] at @s run tellraw @a [{"text": "[ChibiEdit]: ", "color": "#1BDF8A"}, {"text": "Wall 4, Complete!", "color": "#8D86F9"}]
execute if score test_pos1y position >= pos2y position run execute as @a at @s run trigger sel
execute if score test_pos1y position >= pos2y position run execute as @e[type=minecraft:armor_stand,tag=remove_wall] at @s run kill @s



#
execute if score pos2x_corner position < pos1x position run execute as @e[type=minecraft:armor_stand,tag=test,tag=!step_14] at @s run setblock ~ ~1 ~ minecraft:red_concrete
execute if score pos2x_corner position < pos1x position run execute as @e[type=minecraft:armor_stand,tag=test,tag=!step_14] at @s run tp @s ~-1 ~ ~
execute if score test_pos1x position = pos2x_corner position run execute as @e[type=minecraft:armor_stand,tag=test,tag=!step_14] at @s run tag @s add step_14

# #
execute if score pos2z position < pos2z_corner position run execute as @e[type=minecraft:armor_stand,tag=test,tag=step_14,tag=!step_15] at @s run setblock ~ ~1 ~ minecraft:green_concrete
execute if score pos2z position < pos2z_corner position run execute as @e[type=minecraft:armor_stand,tag=test,tag=step_14,tag=!step_15] at @s run tp @s ~ ~ ~-1
execute if score test_pos1z position = pos2z position run execute as @e[type=minecraft:armor_stand,tag=test,tag=step_14,tag=!step_15] at @s run tag @s add step_15
execute if score test_pos1z position = pos2z position run execute as @e[type=minecraft:armor_stand,tag=test,tag=step_14,tag=!step_15] at @s run tp @s ~-1 ~ ~

# #
execute if score pos2x position < pos1x_corner position run execute as @e[type=minecraft:armor_stand,tag=test,tag=step_14,tag=step_15,tag=!step_16] at @s run setblock ~ ~1 ~ minecraft:orange_concrete
execute if score pos2x position < pos1x_corner position run execute as @e[type=minecraft:armor_stand,tag=test,tag=step_14,tag=step_15,tag=!step_16] at @s run tp @s ~1 ~ ~
execute if score test_pos1x position = pos1x_corner position run execute as @e[type=minecraft:armor_stand,tag=test,tag=step_14,tag=step_15,tag=!step_16] at @s run tag @s add step_16

# #
execute if score pos1z_corner position < pos1z position run execute as @e[type=minecraft:armor_stand,tag=test,tag=step_14,tag=step_15,tag=step_16,tag=!step_17] at @s run setblock ~ ~1 ~ minecraft:purple_concrete
execute if score pos1z_corner position < pos1z position run execute as @e[type=minecraft:armor_stand,tag=test,tag=step_14,tag=step_15,tag=step_16,tag=!step_17] at @s run tp @s ~ ~ ~1
execute if score test_pos1z position = pos1z position run execute as @e[type=minecraft:armor_stand,tag=test,tag=step_14,tag=step_15,tag=step_16,tag=!step_17] at @s run tag @s add step_17

execute if score test_pos1z position = pos1z position run execute as @e[type=minecraft:armor_stand,tag=test,tag=step_14,tag=step_15,tag=step_16,tag=step_17] at @s run tp @s ~ ~ ~-1
execute if score test_pos1z position = pos1z position run execute as @e[type=minecraft:armor_stand,tag=test,tag=step_14,tag=step_15,tag=step_16,tag=step_17] at @s run tp @s ~ ~1 ~
execute if score test_pos1z position = pos1z position run execute as @e[type=minecraft:armor_stand,tag=test,tag=step_14,tag=step_15,tag=step_16,tag=step_17] at @s run data modify entity @s Tags set value ["test", "walls_4"]