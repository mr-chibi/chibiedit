#
execute as @e[type=minecraft:armor_stand,tag=pos1x_corner] at @s run kill @s
execute as @e[type=minecraft:armor_stand,tag=pos2x_corner] at @s run kill @s
execute as @e[type=minecraft:armor_stand,tag=test] at @s run kill @s

#
summon minecraft:armor_stand ~ ~ ~ {Tags:["pos1x_corner"], CustomName:"{\"text\": \"pos1x_corner\"}", CustomNameVisible:1b}
summon minecraft:armor_stand ~ ~ ~ {Tags:["pos2x_corner"], CustomName:"{\"text\": \"pos2x_corner\"}", CustomNameVisible:1b}

#
execute as @s[y_rotation=-45..45, scores={walls=1}] run summon minecraft:armor_stand ~ ~ ~ {Tags:["test","walls_1"], CustomName:"{\"text\": \"Wall South\"}", CustomNameVisible:1b}
execute as @s[y_rotation=-135..-45, scores={walls=2}] run summon minecraft:armor_stand ~ ~ ~ {Tags:["test","walls_2"], CustomName:"{\"text\": \"Wall East\"}", CustomNameVisible:1b}
execute as @s[y_rotation=135..-135, scores={walls=3}] run summon minecraft:armor_stand ~ ~ ~ {Tags:["test","walls_3"], CustomName:"{\"text\": \"Wall North\"}", CustomNameVisible:1b}
execute as @s[y_rotation=45..135, scores={walls=4}] run summon minecraft:armor_stand ~ ~ ~ {Tags:["test","walls_4"], CustomName:"{\"text\": \"Wall West\"}", CustomNameVisible:1b}


# execute as @s[y_rotation=135..-135] run say North /trigger walls set 3
# execute as @s[y_rotation=-135..-45] run say East /trigger walls set 2
# execute as @s[y_rotation=-45..45] run say South /trigger walls set 1
# execute as @s[y_rotation=45..135] run say West /trigger walls set 4

#
execute as @e[type=minecraft:armor_stand,tag=test] at @s run tp @s @e[type=minecraft:armor_stand,limit=1,tag=pos1]


# [Pos1, Corner]:
execute if score pos1x position > pos2x position run scoreboard players operation pos1x_corner position = pos2x position
execute if score pos1x position > pos2x position run scoreboard players operation pos1y_corner position = pos1y position
execute if score pos1x position > pos2x position run scoreboard players operation pos1z_corner position = pos2z position

# [Pos2, Corner]:
execute if score pos2x position < pos1x position run scoreboard players operation pos2x_corner position = pos1x position
execute if score pos2x position < pos1x position run scoreboard players operation pos2y_corner position = pos1y position
execute if score pos2x position < pos1x position run scoreboard players operation pos2z_corner position = pos1z position


# [Pos3, Corner]:
execute if score pos1x position < pos2x position run scoreboard players operation pos1x_corner position = pos2x position
execute if score pos1x position < pos2x position run scoreboard players operation pos1y_corner position = pos1y position
execute if score pos1x position < pos2x position run scoreboard players operation pos1z_corner position = pos2z position

# [Pos4, Corner]:
execute if score pos2x position > pos1x position run scoreboard players operation pos2x_corner position = pos1x position
execute if score pos2x position > pos1x position run scoreboard players operation pos2y_corner position = pos1y position
execute if score pos2x position > pos1x position run scoreboard players operation pos2z_corner position = pos1z position



# [Pos 1]:
execute if score pos1x position > pos2x position run execute as @e[type=minecraft:armor_stand,tag=pos1x_corner] at @s store result entity @s Pos[0] double 1 run scoreboard players get pos2x_corner position
execute if score pos1x position > pos2x position run execute as @e[type=minecraft:armor_stand,tag=pos1x_corner] at @s store result entity @s Pos[1] double 1 run scoreboard players get pos1y_corner position
execute if score pos1x position > pos2x position run execute as @e[type=minecraft:armor_stand,tag=pos1x_corner] at @s store result entity @s Pos[2] double 1 run scoreboard players get pos1z_corner position

# [Pos 2]:
execute if score pos2x position < pos1x position run execute as @e[type=minecraft:armor_stand,tag=pos2x_corner] at @s store result entity @s Pos[0] double 1 run scoreboard players get pos1x_corner position
execute if score pos2x position < pos1x position run execute as @e[type=minecraft:armor_stand,tag=pos2x_corner] at @s store result entity @s Pos[1] double 1 run scoreboard players get pos2y_corner position
execute if score pos2x position < pos1x position run execute as @e[type=minecraft:armor_stand,tag=pos2x_corner] at @s store result entity @s Pos[2] double 1 run scoreboard players get pos2z_corner position


# [Pos 3]:
execute if score pos1x position < pos2x position run execute as @e[type=minecraft:armor_stand,tag=pos1x_corner] at @s store result entity @s Pos[0] double 1 run scoreboard players get pos2x_corner position
execute if score pos1x position < pos2x position run execute as @e[type=minecraft:armor_stand,tag=pos1x_corner] at @s store result entity @s Pos[1] double 1 run scoreboard players get pos1y_corner position
execute if score pos1x position < pos2x position run execute as @e[type=minecraft:armor_stand,tag=pos1x_corner] at @s store result entity @s Pos[2] double 1 run scoreboard players get pos1z_corner position

# [Pos 4]:
execute if score pos2x position > pos1x position run execute as @e[type=minecraft:armor_stand,tag=pos2x_corner] at @s store result entity @s Pos[0] double 1 run scoreboard players get pos1x_corner position
execute if score pos2x position > pos1x position run execute as @e[type=minecraft:armor_stand,tag=pos2x_corner] at @s store result entity @s Pos[1] double 1 run scoreboard players get pos2y_corner position
execute if score pos2x position > pos1x position run execute as @e[type=minecraft:armor_stand,tag=pos2x_corner] at @s store result entity @s Pos[2] double 1 run scoreboard players get pos2z_corner position

 

#
execute as @e[type=minecraft:armor_stand,tag=pos1x_corner] at @s store result score pos1x_corner position run data get entity @s Pos[0]
execute as @e[type=minecraft:armor_stand,tag=pos2x_corner] at @s store result score pos2x_corner position run data get entity @s Pos[0]


#
scoreboard players set @s walls 0