#
execute as @e[type=minecraft:armor_stand,tag=pos1] at @s if block ~ ~ ~ minecraft:structure_block run setblock ~ ~ ~ minecraft:air
execute as @e[type=minecraft:armor_stand,tag=pos1] at @s run kill @s

#
tellraw @s [{"text": "[ChibiEdit]: ", "color": "#1BDF8A"}, {"text": "Pos1 Set, ", "color": "#8D86F9"}, {"text": "\"minecraft:structure_block\"", "color": "#8863FE"}]

#
summon minecraft:armor_stand ~ ~-1 ~ {NoGravity:1b, CustomName:"{\"text\": \"pos1\"}", CustomNameVisible:1b, Invisible:1b, Invulnerable:1b, Small:1b, Tags:["pos1"]}

#
setblock ~ ~-1 ~ minecraft:structure_block{mode:"CORNER", name:"chibiedit:structures/file"}

#
execute as @e[type=minecraft:armor_stand,tag=pos1] at @s store result score pos1x position run data get entity @s Pos[0]
execute as @e[type=minecraft:armor_stand,tag=pos1] at @s store result score pos1y position run data get entity @s Pos[1]
execute as @e[type=minecraft:armor_stand,tag=pos1] at @s store result score pos1z position run data get entity @s Pos[2]

#
scoreboard players set @s pos1 0