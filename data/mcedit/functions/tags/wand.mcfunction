#
tag @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] add mcedit_wand

#
title @s[y_rotation=135..-135,tag=mcedit_wand] actionbar [{"text": "North"}]
title @s[y_rotation=-135..-45,tag=mcedit_wand] actionbar [{"text": "East"}]
title @s[y_rotation=-45..45,tag=mcedit_wand] actionbar [{"text": "South"}]
title @s[y_rotation=45..135,tag=mcedit_wand] actionbar [{"text": "West"}]

#
execute as @s[tag=mcedit_wand,scores={mcedit_wand=1}] run trigger pos1
execute as @s[tag=mcedit_wand,scores={mcedit_wand=1}] run scoreboard players add @s mcedit_wand 1 

#
execute as @s[tag=mcedit_wand,scores={mcedit_wand=3}] run trigger pos2
execute as @s[tag=mcedit_wand,scores={mcedit_wand=3}] run scoreboard players add @s mcedit_wand 1 

#
execute as @s[tag=mcedit_wand,scores={mcedit_wand=5}] run trigger sel
execute as @s[tag=mcedit_wand,scores={mcedit_wand=5}] run scoreboard players reset @s mcedit_wand

#
tag @s[nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] remove mcedit_wand