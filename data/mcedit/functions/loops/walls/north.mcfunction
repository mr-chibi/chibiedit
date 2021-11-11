# Left, Step #1
execute if score @s[tag=!pause] walls_z > @e[type=minecraft:armor_stand,tag=pos2,limit=1] pos2_z run tp @s[tag=!step1] ~ ~ ~-1
execute if score @s[tag=!pause] walls_z = @e[type=minecraft:armor_stand,tag=pos2,limit=1] pos2_z run tp @s[tag=!step1] ~-1 ~ ~
execute if score @s[tag=!pause] walls_z = @e[type=minecraft:armor_stand,tag=pos2,limit=1] pos2_z run tag @s add step1

# Right, Step #2
execute if score @s[tag=!pause] walls_z < @e[type=minecraft:armor_stand,tag=pos1,limit=1] pos1_z run tp @s[tag=step1,tag=!step2] ~ ~ ~1
execute if score @s[tag=!pause] walls_z = @e[type=minecraft:armor_stand,tag=pos1,limit=1] pos1_z run tp @s[tag=step1,tag=!step2] ~1 ~ ~
execute if score @s[tag=!pause] walls_z = @e[type=minecraft:armor_stand,tag=pos1,limit=1] pos1_z run tag @s[tag=step1,tag=!step2] add step2


# Reset
data modify entity @s[tag=step1,tag=step2,tag=layer] Tags set value ["walls", "walls_north", "layer"]
data modify entity @s[tag=step1,tag=step2,tag=!layer] Tags set value ["walls", "walls_north"]


# Reset Teleport up 1:
execute if score @s[tag=!pause] walls_y < @e[type=minecraft:armor_stand,tag=pos2,limit=1] pos2_y run execute if score @s walls_x = @e[type=minecraft:armor_stand,tag=pos2,limit=1] pos2_x if score @s walls_z = @e[type=minecraft:armor_stand,tag=pos2,limit=1] pos2_z run tp @s ~ ~1 ~
execute if score @s[tag=!pause] walls_y > @e[type=minecraft:armor_stand,tag=pos2,limit=1] pos2_y run execute if score @s walls_x = @e[type=minecraft:armor_stand,tag=pos2,limit=1] pos2_x if score @s walls_z = @e[type=minecraft:armor_stand,tag=pos2,limit=1] pos2_z run tp @s ~ ~-1 ~

# Reset X & Z coords:
execute if score @s[tag=!pause] walls_x = @e[type=minecraft:armor_stand,tag=pos2,limit=1] pos2_x if score @s walls_z = @e[type=minecraft:armor_stand,tag=pos2,limit=1] pos2_z store result entity @s Pos[0] double 1 run scoreboard players get @e[type=minecraft:armor_stand,tag=pos1,limit=1] pos1_x
execute if score @s[tag=!pause] walls_x = @e[type=minecraft:armor_stand,tag=pos2,limit=1] pos2_x if score @s walls_z = @e[type=minecraft:armor_stand,tag=pos2,limit=1] pos2_z store result entity @s Pos[2] double 1 run scoreboard players get @e[type=minecraft:armor_stand,tag=pos1,limit=1] pos1_z


# Step #3
execute if score @s[tag=!pause] walls_x = @e[type=minecraft:armor_stand,tag=pos2,limit=1] pos2_x if score @s walls_z = @e[type=minecraft:armor_stand,tag=pos2,limit=1] pos2_z run tag @s add step3
execute if score @s[tag=!pause] walls_x = @e[type=minecraft:armor_stand,tag=pos2,limit=1] pos2_x if score @s walls_z = @e[type=minecraft:armor_stand,tag=pos2,limit=1] pos2_z run tp @s[tag=step1,tag=step2,tag=step3] ~-1 ~ ~


#######################################################################################
# [Continue] or [Change Block]:
#######################################################################################
execute unless score @s walls_y = @e[type=minecraft:armor_stand,tag=pos2,limit=1] pos2_y if entity @a[team=mcedit,nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] if score @s[tag=!pause] walls_x = @e[type=minecraft:armor_stand,tag=pos2,limit=1] pos2_x if score @s walls_z = @e[type=minecraft:armor_stand,tag=pos2,limit=1] pos2_z run tellraw @a[team=mcedit] [{"text": "[Continue]: ", "clickEvent":{"action":"run_command","value":"/execute as @e[type=minecraft:armor_stand,tag=walls,tag=walls_north] at @s run data modify entity @s Tags set value [\"walls\", \"walls_north\", \"layer\"]"}, "color": "green"}, {"text": "Continue with same block.", "color": "white"}]
execute unless score @s walls_y = @e[type=minecraft:armor_stand,tag=pos2,limit=1] pos2_y if entity @a[team=mcedit,nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] if score @s[tag=!pause] walls_x = @e[type=minecraft:armor_stand,tag=pos2,limit=1] pos2_x if score @s walls_z = @e[type=minecraft:armor_stand,tag=pos2,limit=1] pos2_z run tellraw @a[team=mcedit] [{"text": "[Change Block]: ", "color": "aqua"}, {"text": "/trigger layer set <id>", "color": "white"}]
execute unless score @s walls_y = @e[type=minecraft:armor_stand,tag=pos2,limit=1] pos2_y if entity @a[team=mcedit,nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] if score @s[tag=!pause] walls_x = @e[type=minecraft:armor_stand,tag=pos2,limit=1] pos2_x if score @s walls_z = @e[type=minecraft:armor_stand,tag=pos2,limit=1] pos2_z run scoreboard players enable @a[team=mcedit] layer


#######################################################################################
# Pause:
#######################################################################################
execute if entity @a[team=mcedit,nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] run data modify entity @s[tag=step3] Tags set value ["walls", "walls_north", "pause"]


#######################################################################################
# Override and continue:
#######################################################################################
execute if entity @a[team=mcedit,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] run data modify entity @s[tag=step3] Tags set value ["walls", "walls_north", "layer"]


# Remove Selection:
execute if score @s walls_x = @e[type=minecraft:armor_stand,tag=pos2,limit=1] pos2_x if score @s walls_y = @e[type=minecraft:armor_stand,tag=pos2,limit=1] pos2_y if score @s walls_z = @e[type=minecraft:armor_stand,tag=pos2,limit=1] pos2_z run tellraw @a[team=mcedit] [{"text": "[ChibiEdit]: ", "color": "#1BDF8A"}, {"text": "Completed walls!", "color": "#8D86F9"}]
execute if score @s walls_x = @e[type=minecraft:armor_stand,tag=pos2,limit=1] pos2_x if score @s walls_y = @e[type=minecraft:armor_stand,tag=pos2,limit=1] pos2_y if score @s walls_z = @e[type=minecraft:armor_stand,tag=pos2,limit=1] pos2_z run kill @s

