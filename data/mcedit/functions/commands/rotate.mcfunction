#
execute as @a at @s[scores={rotate=1}] run tellraw @s [{"text": "[ChibiEdit]: ", "color": "#1BDF8A"}, {"text": "Updated ", "color": "#8D86F9"}, {"text": "minecraft:structure_block, to rotate mode!", "color": "#8863FE"}]
execute as @a at @s[scores={rotate=1}] run execute as @e[type=minecraft:armor_stand,tag=save] at @s run data modify entity @s CustomName set value "{\"text\": \"Rotate\"}"
execute as @a at @s[scores={rotate=1}] run execute as @e[type=minecraft:armor_stand,tag=save] at @s run data modify block ~ ~ ~ mode set value "LOAD"

#
execute as @a at @s[scores={rotate=90}] run tellraw @s [{"text": "[ChibiEdit]: ", "color": "#1BDF8A"}, {"text": "Rotate Set, ", "color": "#8D86F9"}, {"text": "Rotate 90!", "color": "#8863FE"}]
execute as @a at @s[scores={rotate=90}] run execute as @e[type=minecraft:armor_stand,tag=save] at @s run data modify entity @s CustomName set value "{\"text\": \"Rotate 90\"}"
execute as @a at @s[scores={rotate=90}] run execute as @e[type=minecraft:armor_stand,tag=save] at @s run data modify block ~ ~ ~ mode set value "LOAD"
execute as @a at @s[scores={rotate=90}] run execute as @e[type=minecraft:armor_stand,tag=save] at @s run data modify block ~ ~ ~ rotation set value "CLOCKWISE_90"

#
execute as @a at @s[scores={rotate=180}] run tellraw @s [{"text": "[ChibiEdit]: ", "color": "#1BDF8A"}, {"text": "Rotate Set, ", "color": "#8D86F9"}, {"text": "Rotate 180", "color": "#8863FE"}]
execute as @a at @s[scores={rotate=180}] run execute as @e[type=minecraft:armor_stand,tag=save] at @s run data modify entity @s CustomName set value "{\"text\": \"Rotate 180\"}"
execute as @a at @s[scores={rotate=180}] run execute as @e[type=minecraft:armor_stand,tag=save] at @s run data modify block ~ ~ ~ mode set value "LOAD"
execute as @a at @s[scores={rotate=180}] run execute as @e[type=minecraft:armor_stand,tag=save] at @s run data modify block ~ ~ ~ rotation set value "CLOCKWISE_180"

#
execute as @a at @s[scores={rotate=270}] run tellraw @s [{"text": "[ChibiEdit]: ", "color": "#1BDF8A"}, {"text": "Rotate Set, ", "color": "#8D86F9"}, {"text": "Rotate 270", "color": "#8863FE"}]
execute as @a at @s[scores={rotate=270}] run execute as @e[type=minecraft:armor_stand,tag=save] at @s run data modify entity @s CustomName set value "{\"text\": \"Rotate 270\"}"
execute as @a at @s[scores={rotate=270}] run execute as @e[type=minecraft:armor_stand,tag=save] at @s run data modify block ~ ~ ~ mode set value "LOAD"
execute as @a at @s[scores={rotate=270}] run execute as @e[type=minecraft:armor_stand,tag=save] at @s run data modify block ~ ~ ~ rotation set value "COUNTERCLOCKWISE_90"

#
execute as @a at @s[scores={rotate=360}] run tellraw @s [{"text": "[ChibiEdit]: ", "color": "#1BDF8A"}, {"text": "Rotate Set, ", "color": "#8D86F9"}, {"text": "Rotate 360", "color": "#8863FE"}]
execute as @a at @s[scores={rotate=360}] run execute as @e[type=minecraft:armor_stand,tag=save] at @s run data modify entity @s CustomName set value "{\"text\": \"Rotate 360\"}"
execute as @a at @s[scores={rotate=360}] run execute as @e[type=minecraft:armor_stand,tag=save] at @s run data modify block ~ ~ ~ mode set value "LOAD"
execute as @a at @s[scores={rotate=360}] run execute as @e[type=minecraft:armor_stand,tag=save] at @s run data modify block ~ ~ ~ rotation set value "COUNTERCLOCKWISE_180"

#
scoreboard players set @s rotate 0