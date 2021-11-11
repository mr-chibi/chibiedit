#
execute store result score @s set_x run data get entity @s Pos[0]
execute store result score @s set_y run data get entity @s Pos[1]
execute store result score @s set_z run data get entity @s Pos[2]

#
function mcedit:loops/layer/ids