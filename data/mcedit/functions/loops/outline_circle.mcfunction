#
tp @s ~ ~ ~ ~-2 ~

# outline
execute as @s[tag=outline_circle_3] run setblock ^ ^ ^3 minecraft:blue_terracotta
execute as @s[tag=outline_circle_5] run setblock ^ ^ ^5 minecraft:blue_terracotta
execute as @s[tag=outline_circle_7] run setblock ^ ^ ^7 minecraft:blue_terracotta
execute as @s[tag=outline_circle_9] run setblock ^ ^ ^9 minecraft:blue_terracotta
execute as @s[tag=outline_circle_11] run setblock ^ ^ ^11 minecraft:blue_terracotta
execute as @s[tag=outline_circle_13] run setblock ^ ^ ^13 minecraft:blue_terracotta
execute as @s[tag=outline_circle_15] run setblock ^ ^ ^15 minecraft:blue_terracotta
execute as @s[tag=outline_circle_17] run setblock ^ ^ ^17 minecraft:blue_terracotta
execute as @s[tag=outline_circle_19] run setblock ^ ^ ^19 minecraft:blue_terracotta
execute as @s[tag=outline_circle_21] run setblock ^ ^ ^21 minecraft:blue_terracotta

#
execute as @s[y_rotation=0] at @s run tellraw @p [{"text": "[ChibiEdit]: ", "color": "#1BDF8A"}, {"text": "Removed Circle Outline! ", "color": "#8D86F9"}]
execute as @s[y_rotation=0] at @s run kill @s