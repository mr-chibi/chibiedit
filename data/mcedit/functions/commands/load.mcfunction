#
tellraw @s [{"text": "[ChibiEdit]: ", "color": "#1BDF8A"}, {"text": "Updated ", "color": "#8D86F9"}, {"text": "minecraft:structure_block, to load mode!", "color": "#8863FE"}]

#
execute as @e[type=minecraft:armor_stand,tag=save] at @s run data modify entity @s CustomName set value "{\"text\": \"Load\"}"
execute as @e[type=minecraft:armor_stand,tag=save] at @s run data modify block ~ ~ ~ mode set value "LOAD"

#
scoreboard players set @s load 0