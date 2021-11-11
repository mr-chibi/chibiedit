#
execute as @e[type=minecraft:armor_stand,tag=pos2] at @s run kill @s

#
tellraw @s [{"text": "[ChibiEdit]: ", "color": "#1BDF8A"}, {"text": "Pos2 Set", "color": "#8D86F9"}]

#
execute as @s[y_rotation=135..-135] run summon minecraft:armor_stand ~ ~ ~ {Tags:["pos2"], Small:1b, NoGravity:1b, CustomName:"{\"text\": \"Pos2 north\"}", CustomNameVisible:1b, Rotation:[0f], Invisible:1b, ArmorItems:[{}, {}, {}, {id:"minecraft:player_head", Count:1b, tag:{SkullOwner:{Id:[I;-2020470216,1441549591,-1173595287,339813162],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTQ3MmM5ZDYyOGJiMzIyMWVmMzZiNGNiZDBiOWYxNWVkZDU4ZTU4NjgxODUxNGQ3ZTgyM2Q1NWM0OGMifX19"}]}}}}]}
execute as @s[y_rotation=-135..-45] run summon minecraft:armor_stand ~ ~ ~ {Tags:["pos2"], Small:1b, NoGravity:1b, CustomName:"{\"text\": \"Pos2 east\"}", CustomNameVisible:1b, Rotation:[90f], Invisible:1b, ArmorItems:[{}, {}, {}, {id:"minecraft:player_head", Count:1b, tag:{SkullOwner:{Id:[I;-2020470216,1441549591,-1173595287,339813162],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTQ3MmM5ZDYyOGJiMzIyMWVmMzZiNGNiZDBiOWYxNWVkZDU4ZTU4NjgxODUxNGQ3ZTgyM2Q1NWM0OGMifX19"}]}}}}]}
execute as @s[y_rotation=-45..45] run summon minecraft:armor_stand ~ ~ ~ {Tags:["pos2"], Small:1b, NoGravity:1b, CustomName:"{\"text\": \"Pos2 south\"}", CustomNameVisible:1b, Rotation:[180f], Invisible:1b, ArmorItems:[{}, {}, {}, {id:"minecraft:player_head", Count:1b, tag:{SkullOwner:{Id:[I;-2020470216,1441549591,-1173595287,339813162],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTQ3MmM5ZDYyOGJiMzIyMWVmMzZiNGNiZDBiOWYxNWVkZDU4ZTU4NjgxODUxNGQ3ZTgyM2Q1NWM0OGMifX19"}]}}}}]}
execute as @s[y_rotation=45..135] run summon minecraft:armor_stand ~ ~ ~ {Tags:["pos2"], Small:1b, NoGravity:1b, CustomName:"{\"text\": \"Pos2 west\"}", CustomNameVisible:1b, Rotation:[270f], Invisible:1b, ArmorItems:[{}, {}, {}, {id:"minecraft:player_head", Count:1b, tag:{SkullOwner:{Id:[I;-2020470216,1441549591,-1173595287,339813162],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTQ3MmM5ZDYyOGJiMzIyMWVmMzZiNGNiZDBiOWYxNWVkZDU4ZTU4NjgxODUxNGQ3ZTgyM2Q1NWM0OGMifX19"}]}}}}]}

#
execute as @e[type=minecraft:armor_stand,tag=pos2] at @s run tp @s ~ ~-1 ~

#
execute as @e[type=minecraft:armor_stand,tag=pos2] at @s store result score @s pos2_x run data get entity @s Pos[0]
execute as @e[type=minecraft:armor_stand,tag=pos2] at @s store result score @s pos2_y run data get entity @s Pos[1]
execute as @e[type=minecraft:armor_stand,tag=pos2] at @s store result score @s pos2_z run data get entity @s Pos[2]

#
tellraw @s [{"text": "X: ", "color": "gold"}, {"score":{"name": "@e[type=armor_stand,tag=pos2]", "objective": "pos2_x"}, "color": "#1BDF8A"}, {"text": " Y: "}, {"score":{"name": "@e[type=armor_stand,tag=pos2]", "objective": "pos2_y"}, "color": "#1BDF8A"}, {"text": " Z: "}, {"score":{"name": "@e[type=armor_stand,tag=pos2]", "objective": "pos2_z"}, "color": "#1BDF8A"}]


#
scoreboard players set @s pos2 0