#
tp @s ~ ~ ~ ~-2 ~


# Top Layer
setblock ^ ^5 ^ minecraft:light_blue_terracotta
setblock ^ ^5 ^2 minecraft:light_blue_terracotta
setblock ^ ^4 ^3 minecraft:light_blue_terracotta
setblock ^ ^3 ^4 minecraft:light_blue_terracotta
setblock ^ ^2 ^5 minecraft:light_blue_terracotta
setblock ^ ^1 ^6 minecraft:light_blue_terracotta


# Middle Layer
setblock ^ ^ ^7 minecraft:light_blue_terracotta
setblock ^ ^-1 ^7 minecraft:light_blue_terracotta
setblock ^ ^-2 ^7 minecraft:light_blue_terracotta
setblock ^ ^-3 ^7 minecraft:light_blue_terracotta
setblock ^ ^-4 ^7 minecraft:light_blue_terracotta

#
setblock ^ ^-5 ^6 minecraft:light_blue_terracotta
setblock ^ ^-6 ^5 minecraft:light_blue_terracotta


# Bottom Layer:
setblock ^ ^-7 ^4 minecraft:light_blue_terracotta
setblock ^ ^-8 ^3 minecraft:light_blue_terracotta
setblock ^ ^-9 ^2 minecraft:light_blue_terracotta
setblock ^ ^-9 ^1 minecraft:light_blue_terracotta


# Remove Armorstand:
execute as @s[y_rotation=0] at @s run tellraw @p [{"text": "[ChibiEdit]: ", "color": "#1BDF8A"}, {"text": "Removed Sphere! ", "color": "#8D86F9"}]
execute as @s[y_rotation=0] at @s run kill @s