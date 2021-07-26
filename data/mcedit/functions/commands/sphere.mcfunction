#
execute as @s[scores={sphere=3..}] run tellraw @s [{"text": "[ChibiEdit]: ", "color": "#1BDF8A"}, {"text": "Creating Sphere! ", "color": "#8D86F9"}]
execute as @s[scores={sphere=3}] run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b, NoGravity:1b, Tags:["sphere", "sphere_3"]}
execute as @s[scores={sphere=5}] run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b, NoGravity:1b, Tags:["sphere", "sphere_5"]}
execute as @s[scores={sphere=7}] run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b, NoGravity:1b, Tags:["sphere", "sphere_7"]}
execute as @s[scores={sphere=9}] run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b, NoGravity:1b, Tags:["sphere", "sphere_9"]}

#
scoreboard players set @s sphere 0