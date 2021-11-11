#
execute if score @s set_x > @e[type=minecraft:armor_stand,tag=pos2,limit=1] pos2_x run tp @s[tag=!step1] ~-1 ~ ~
execute if score @s set_y < @e[type=minecraft:armor_stand,tag=pos2,limit=1] pos2_y if score @s set_x = @e[type=minecraft:armor_stand,tag=pos2,limit=1] pos2_x run tp @s[tag=!step1] ~-0.5 ~1 ~
execute if score @s set_y > @e[type=minecraft:armor_stand,tag=pos2,limit=1] pos2_y if score @s set_x = @e[type=minecraft:armor_stand,tag=pos2,limit=1] pos2_x run tp @s[tag=!step1] ~-0.5 ~-1 ~
execute if score @s set_x = @e[type=minecraft:armor_stand,tag=pos2,limit=1] pos2_x run tag @s add step1

#
execute if score @s set_x < @e[type=minecraft:armor_stand,tag=pos1,limit=1] pos1_x run tp @s[tag=step1,tag=!step2] ~1 ~ ~
execute if score @s set_y < @e[type=minecraft:armor_stand,tag=pos2,limit=1] pos2_y if score @s set_x = @e[type=minecraft:armor_stand,tag=pos1,limit=1] pos1_x run tp @s[tag=step1,tag=!step2] ~0.5 ~1 ~
execute if score @s set_y > @e[type=minecraft:armor_stand,tag=pos2,limit=1] pos2_y if score @s set_x = @e[type=minecraft:armor_stand,tag=pos1,limit=1] pos1_x run tp @s[tag=step1,tag=!step2] ~0.5 ~-1 ~
execute if score @s set_x = @e[type=minecraft:armor_stand,tag=pos1,limit=1] pos1_x run tag @s[tag=step1,tag=!step2] add step2

#
data modify entity @s[tag=step1,tag=step2] Tags set value ["set", "set_west"]


#
execute if score @s set_x = @e[type=minecraft:armor_stand,tag=pos2,limit=1] pos2_x if score @s set_z = @e[type=minecraft:armor_stand,tag=pos2,limit=1] pos2_z store result entity @s Pos[0] double 1 run scoreboard players get @e[type=minecraft:armor_stand,tag=pos1,limit=1] pos1_x
execute if score @s set_x = @e[type=minecraft:armor_stand,tag=pos2,limit=1] pos2_x if score @s set_z = @e[type=minecraft:armor_stand,tag=pos2,limit=1] pos2_z store result entity @s Pos[2] double 1 run scoreboard players get @e[type=minecraft:armor_stand,tag=pos1,limit=1] pos1_z

#
execute if score @s set_x = @e[type=minecraft:armor_stand,tag=pos2,limit=1] pos2_x if score @s set_y = @e[type=minecraft:armor_stand,tag=pos2,limit=1] pos2_y if score @s set_z = @e[type=minecraft:armor_stand,tag=pos2,limit=1] pos2_z run tellraw @a[team=mcedit] [{"text": "[ChibiEdit]: ", "color": "#1BDF8A"}, {"text": "Completed Set!", "color": "#8D86F9"}]
execute if score @s set_x = @e[type=minecraft:armor_stand,tag=pos2,limit=1] pos2_x if score @s set_y = @e[type=minecraft:armor_stand,tag=pos2,limit=1] pos2_y if score @s set_z = @e[type=minecraft:armor_stand,tag=pos2,limit=1] pos2_z run kill @s