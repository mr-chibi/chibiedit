#
execute as @e[type=minecraft:armor_stand,tag=pos1] at @s run kill @s

#
tellraw @s [{"text": "[ChibiEdit]: ", "color": "#1BDF8A"}, {"text": "Pos1 Set", "color": "#8D86F9"}]

#
execute as @s[y_rotation=135..-135] run summon minecraft:armor_stand ~ ~ ~ {Tags:["pos1"], Small:1b, NoGravity:1b, CustomName:"{\"text\": \"Pos1 north\"}", CustomNameVisible:1b, Rotation:[0f], Invisible:1b, ArmorItems:[{}, {}, {}, {id:"minecraft:player_head", Count:1b, tag:{SkullOwner:{Id:[I;354033137,-1352449574,-1202919363,-539751600],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTUxNDlkZGRhZGVkMjBkMjQ0ZTBiYjYyYTJkOWZhMGRjNmM2YTc4NjI1NTkzMjhhOTRmNzc3MjVmNTNjMzU4In19fQ=="}]}}}}]}
execute as @s[y_rotation=-135..-45] run summon minecraft:armor_stand ~ ~ ~ {Tags:["pos1"], Small:1b, NoGravity:1b, CustomName:"{\"text\": \"Pos1 east\"}", CustomNameVisible:1b, Rotation:[90f], Invisible:1b, ArmorItems:[{}, {}, {}, {id:"minecraft:player_head", Count:1b, tag:{SkullOwner:{Id:[I;354033137,-1352449574,-1202919363,-539751600],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTUxNDlkZGRhZGVkMjBkMjQ0ZTBiYjYyYTJkOWZhMGRjNmM2YTc4NjI1NTkzMjhhOTRmNzc3MjVmNTNjMzU4In19fQ=="}]}}}}]}
execute as @s[y_rotation=-45..45] run summon minecraft:armor_stand ~ ~ ~ {Tags:["pos1"], Small:1b, NoGravity:1b, CustomName:"{\"text\": \"Pos1 south\"}", CustomNameVisible:1b, Rotation:[180f], Invisible:1b, ArmorItems:[{}, {}, {}, {id:"minecraft:player_head", Count:1b, tag:{SkullOwner:{Id:[I;354033137,-1352449574,-1202919363,-539751600],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTUxNDlkZGRhZGVkMjBkMjQ0ZTBiYjYyYTJkOWZhMGRjNmM2YTc4NjI1NTkzMjhhOTRmNzc3MjVmNTNjMzU4In19fQ=="}]}}}}]}
execute as @s[y_rotation=45..135] run summon minecraft:armor_stand ~ ~ ~ {Tags:["pos1"], Small:1b, NoGravity:1b, CustomName:"{\"text\": \"Pos1 west\"}", CustomNameVisible:1b, Rotation:[270f], Invisible:1b, ArmorItems:[{}, {}, {}, {id:"minecraft:player_head", Count:1b, tag:{SkullOwner:{Id:[I;354033137,-1352449574,-1202919363,-539751600],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTUxNDlkZGRhZGVkMjBkMjQ0ZTBiYjYyYTJkOWZhMGRjNmM2YTc4NjI1NTkzMjhhOTRmNzc3MjVmNTNjMzU4In19fQ=="}]}}}}]}

#
execute as @e[type=minecraft:armor_stand,tag=pos1] at @s run tp @s ~ ~-1 ~

#
execute as @e[type=minecraft:armor_stand,tag=pos1] at @s store result score @s pos1_x run data get entity @s Pos[0]
execute as @e[type=minecraft:armor_stand,tag=pos1] at @s store result score @s pos1_y run data get entity @s Pos[1]
execute as @e[type=minecraft:armor_stand,tag=pos1] at @s store result score @s pos1_z run data get entity @s Pos[2]

#
tellraw @s [{"text": "X: ", "color": "gold"}, {"score":{"name": "@e[type=armor_stand,tag=pos1]", "objective": "pos1_x"}, "color": "#1BDF8A"}, {"text": " Y: "}, {"score":{"name": "@e[type=armor_stand,tag=pos1]", "objective": "pos1_y"}, "color": "#1BDF8A"}, {"text": " Z: "}, {"score":{"name": "@e[type=armor_stand,tag=pos1]", "objective": "pos1_z"}, "color": "#1BDF8A"}]

#
scoreboard players set @s pos1 0