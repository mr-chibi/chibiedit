#######################################################################################
# Save coords:
#######################################################################################
execute store result score @s walls_x run data get entity @s Pos[0]
execute store result score @s walls_y run data get entity @s Pos[1]
execute store result score @s walls_z run data get entity @s Pos[2]


#######################################################################################
# Walls X & Z Coords:
#######################################################################################
execute as @s[tag=layer] run setblock ~ ~1 ~ minecraft:air
execute if score @s[tag=layer] walls_x = @e[type=minecraft:armor_stand,tag=pos1,limit=1] pos1_x run function mcedit:loops/layer/ids
execute if score @s[tag=layer] walls_z = @e[type=minecraft:armor_stand,tag=pos1,limit=1] pos1_z run function mcedit:loops/layer/ids
execute if score @s[tag=layer] walls_x = @e[type=minecraft:armor_stand,tag=pos2,limit=1] pos2_x run function mcedit:loops/layer/ids
execute if score @s[tag=layer] walls_z = @e[type=minecraft:armor_stand,tag=pos2,limit=1] pos2_z run function mcedit:loops/layer/ids