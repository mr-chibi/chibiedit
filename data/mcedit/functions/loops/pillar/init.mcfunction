#
execute store result score @s pillar_x run data get entity @s Pos[0]
execute store result score @s pillar_y run data get entity @s Pos[1]
execute store result score @s pillar_z run data get entity @s Pos[2]

#
function mcedit:loops/layer/ids

#
execute if score @s pillar_y < @e[type=minecraft:armor_stand,tag=pos2,limit=1] pos2_y run tp @s ~ ~1 ~
execute if score @s pillar_y > @e[type=minecraft:armor_stand,tag=pos2,limit=1] pos2_y run tp @s ~ ~-1 ~

#
execute if score @s pillar_x = @e[type=minecraft:armor_stand,tag=pos2,limit=1] pos2_x if score @s pillar_y = @e[type=minecraft:armor_stand,tag=pos2,limit=1] pos2_y if score @s pillar_z = @e[type=minecraft:armor_stand,tag=pos2,limit=1] pos2_z run tellraw @a[team=mcedit] [{"text": "[ChibiEdit]: ", "color": "#1BDF8A"}, {"text": "Completed pillar!", "color": "#8D86F9"}]
execute if score @s pillar_x = @e[type=minecraft:armor_stand,tag=pos2,limit=1] pos2_x if score @s pillar_y = @e[type=minecraft:armor_stand,tag=pos2,limit=1] pos2_y if score @s pillar_z = @e[type=minecraft:armor_stand,tag=pos2,limit=1] pos2_z run kill @s
