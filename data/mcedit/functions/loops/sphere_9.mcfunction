#
tp @s ~ ~ ~ ~-2 ~


# Top Layer
setblock ^ ^7 ^ minecraft:light_blue_terracotta
setblock ^ ^7 ^2 minecraft:light_blue_terracotta
setblock ^ ^6 ^3 minecraft:light_blue_terracotta
setblock ^ ^5 ^4 minecraft:light_blue_terracotta
setblock ^ ^4 ^5 minecraft:light_blue_terracotta
setblock ^ ^3 ^6 minecraft:light_blue_terracotta
setblock ^ ^2 ^7 minecraft:light_blue_terracotta
setblock ^ ^1 ^8 minecraft:light_blue_terracotta


# Middle Layer
setblock ^ ^ ^9 minecraft:light_blue_terracotta
setblock ^ ^-1 ^9 minecraft:light_blue_terracotta
setblock ^ ^-2 ^9 minecraft:light_blue_terracotta
setblock ^ ^-3 ^9 minecraft:light_blue_terracotta
setblock ^ ^-4 ^9 minecraft:light_blue_terracotta




# Bottom Layer:
setblock ^ ^-5 ^8 minecraft:light_blue_terracotta
setblock ^ ^-6 ^7 minecraft:light_blue_terracotta
setblock ^ ^-7 ^6 minecraft:light_blue_terracotta
setblock ^ ^-8 ^5 minecraft:light_blue_terracotta
setblock ^ ^-9 ^4 minecraft:light_blue_terracotta
setblock ^ ^-10 ^3 minecraft:light_blue_terracotta
setblock ^ ^-11 ^2 minecraft:light_blue_terracotta
setblock ^ ^-11 ^1 minecraft:light_blue_terracotta


# Remove Armorstand:
execute as @s[y_rotation=0] at @s run tellraw @p [{"text": "[ChibiEdit]: ", "color": "#1BDF8A"}, {"text": "Removed Sphere! ", "color": "#8D86F9"}]
execute as @s[y_rotation=0] at @s run kill @s