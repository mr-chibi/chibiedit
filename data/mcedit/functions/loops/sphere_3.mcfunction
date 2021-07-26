#
tp @s ~ ~ ~ ~-2 ~



# Top Layer:
setblock ^ ^1 ^2 minecraft:light_blue_terracotta
setblock ^ ^2 ^1 minecraft:light_blue_terracotta
setblock ^ ^2 ^ minecraft:light_blue_terracotta


# outline
setblock ^ ^ ^3 minecraft:light_blue_terracotta
setblock ^ ^-1 ^3 minecraft:light_blue_terracotta
setblock ^ ^-2 ^3 minecraft:light_blue_terracotta


# bottom Layer:
setblock ^ ^-3 ^2 minecraft:light_blue_terracotta
setblock ^ ^-4 ^1 minecraft:light_blue_terracotta
setblock ^ ^-4 ^ minecraft:light_blue_terracotta


#
execute as @s[y_rotation=0] at @s run tellraw @p [{"text": "[ChibiEdit]: ", "color": "#1BDF8A"}, {"text": "Removed Sphere! ", "color": "#8D86F9"}]
execute as @s[y_rotation=0] at @s run kill @s