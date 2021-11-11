#######################################################################################
# Enable Commands
#######################################################################################
execute as @a at @s[team=mcedit] run scoreboard players enable @s sel
execute as @a at @s[team=mcedit] run scoreboard players enable @s set
execute as @a at @s[team=mcedit] run scoreboard players enable @s fill
execute as @a at @s[team=mcedit] run scoreboard players enable @s walls
execute as @a at @s[team=mcedit] run scoreboard players enable @s pillar
execute as @a at @s[team=mcedit] run scoreboard players enable @s pos1
execute as @a at @s[team=mcedit] run scoreboard players enable @s pos2
execute as @a at @s[team=mcedit] run scoreboard players enable @s copy
execute as @a at @s[team=mcedit] run scoreboard players enable @s paste


#######################################################################################
# Trigger Commands:
#######################################################################################
execute as @a at @s[team=mcedit,scores={sel=1..}] run function mcedit:commands/sel
execute as @a at @s[team=mcedit,scores={set=1..}] run function mcedit:commands/set
execute as @a at @s[team=mcedit,scores={fill=1..}] run function mcedit:commands/fill
execute as @a at @s[team=mcedit,scores={walls=1..}] run function mcedit:commands/walls
execute as @a at @s[team=mcedit,scores={pillar=1..}] run function mcedit:commands/pillar
execute as @a at @s[team=mcedit,scores={layer=1..}] run function mcedit:commands/layer
execute as @a at @s[team=mcedit,scores={pos1=1..}] run function mcedit:commands/pos1
execute as @a at @s[team=mcedit,scores={pos2=1..}] run function mcedit:commands/pos2
execute as @a at @s[team=mcedit,scores={copy=1..}] run function mcedit:commands/copy
execute as @a at @s[team=mcedit,scores={paste=1..}] run function mcedit:commands/paste


#######################################################################################
# Check if player has Wand:
#######################################################################################
execute as @a at @s[team=mcedit] run function mcedit:tags/wand


#######################################################################################
# Pillar Command Loop:
#######################################################################################
execute as @e[type=minecraft:armor_stand,tag=pillar] at @s run function mcedit:loops/pillar/init


#######################################################################################
# Walls Command Loop:
#######################################################################################
execute as @e[type=minecraft:armor_stand,tag=walls] at @s run function mcedit:loops/walls/init
execute as @e[type=minecraft:armor_stand,tag=walls,tag=walls_north] at @s run function mcedit:loops/walls/north
execute as @e[type=minecraft:armor_stand,tag=walls,tag=walls_east] at @s run function mcedit:loops/walls/east
execute as @e[type=minecraft:armor_stand,tag=walls,tag=walls_south] at @s run function mcedit:loops/walls/south
execute as @e[type=minecraft:armor_stand,tag=walls,tag=walls_west] at @s run function mcedit:loops/walls/west


#######################################################################################
# Fill Command Loop:
#######################################################################################
execute as @e[type=minecraft:armor_stand,tag=fill] at @s run function mcedit:loops/fill/init
execute as @e[type=minecraft:armor_stand,tag=fill,tag=fill_north] at @s run function mcedit:loops/fill/north
execute as @e[type=minecraft:armor_stand,tag=fill,tag=fill_east] at @s run function mcedit:loops/fill/east
execute as @e[type=minecraft:armor_stand,tag=fill,tag=fill_south] at @s run function mcedit:loops/fill/south
execute as @e[type=minecraft:armor_stand,tag=fill,tag=fill_west] at @s run function mcedit:loops/fill/west


#######################################################################################
# Set Command Loop:
#######################################################################################
execute as @e[type=minecraft:armor_stand,tag=set] at @s run function mcedit:loops/set/init
execute as @e[type=minecraft:armor_stand,tag=set,tag=set_north] at @s run function mcedit:loops/set/north
execute as @e[type=minecraft:armor_stand,tag=set,tag=set_east] at @s run function mcedit:loops/set/east
execute as @e[type=minecraft:armor_stand,tag=set,tag=set_south] at @s run function mcedit:loops/set/south
execute as @e[type=minecraft:armor_stand,tag=set,tag=set_west] at @s run function mcedit:loops/set/west


#######################################################################################
# Add Layers Tag:
#######################################################################################
execute as @e[type=minecraft:armor_stand,tag=walls,tag=layer] at @s run function mcedit:loops/layer/ids