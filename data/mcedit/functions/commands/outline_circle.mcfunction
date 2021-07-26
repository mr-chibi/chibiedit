#
execute as @s[scores={outline_circle=3..}] run tellraw @s [{"text": "[ChibiEdit]: ", "color": "#1BDF8A"}, {"text": "Creating Outline Circle! ", "color": "#8D86F9"}]

#
execute as @s[scores={outline_circle=3}] run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b, NoGravity:1b, Tags:["outline_circle", "outline_circle_3"]}
execute as @s[scores={outline_circle=5}] run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b, NoGravity:1b, Tags:["outline_circle", "outline_circle_5"]}
execute as @s[scores={outline_circle=7}] run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b, NoGravity:1b, Tags:["outline_circle", "outline_circle_7"]}
execute as @s[scores={outline_circle=9}] run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b, NoGravity:1b, Tags:["outline_circle", "outline_circle_9"]}
execute as @s[scores={outline_circle=11}] run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b, NoGravity:1b, Tags:["outline_circle", "outline_circle_11"]}
execute as @s[scores={outline_circle=13}] run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b, NoGravity:1b, Tags:["outline_circle", "outline_circle_13"]}
execute as @s[scores={outline_circle=15}] run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b, NoGravity:1b, Tags:["outline_circle", "outline_circle_15"]}
execute as @s[scores={outline_circle=17}] run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b, NoGravity:1b, Tags:["outline_circle", "outline_circle_17"]}
execute as @s[scores={outline_circle=19}] run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b, NoGravity:1b, Tags:["outline_circle", "outline_circle_19"]}
execute as @s[scores={outline_circle=21}] run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b, NoGravity:1b, Tags:["outline_circle", "outline_circle_21"]}

#
scoreboard players set @s outline_circle 0