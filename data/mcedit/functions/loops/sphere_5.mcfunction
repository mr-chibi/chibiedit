#
tp @s ~ ~ ~ ~-2 ~


# Top Layer
setblock ^ ^3 ^1 minecraft:light_blue_terracotta
setblock ^ ^3 ^2 minecraft:light_blue_terracotta
setblock ^ ^2 ^3 minecraft:light_blue_terracotta
setblock ^ ^1 ^4 minecraft:light_blue_terracotta


# Middle Layer
setblock ^ ^ ^5 minecraft:light_blue_terracotta
setblock ^ ^-1 ^5 minecraft:light_blue_terracotta
setblock ^ ^-2 ^5 minecraft:light_blue_terracotta
setblock ^ ^-3 ^5 minecraft:light_blue_terracotta
setblock ^ ^-4 ^5 minecraft:light_blue_terracotta


# Bottom Layer:
setblock ^ ^-5 ^4 minecraft:light_blue_terracotta
setblock ^ ^-6 ^3 minecraft:light_blue_terracotta
setblock ^ ^-7 ^2 minecraft:light_blue_terracotta
setblock ^ ^-7 ^1 minecraft:light_blue_terracotta


# Remove Armorstand:
execute as @s[y_rotation=0] at @s run tellraw @p [{"text": "[ChibiEdit]: ", "color": "#1BDF8A"}, {"text": "Removed Sphere! ", "color": "#8D86F9"}]
execute as @s[y_rotation=0] at @s run kill @s