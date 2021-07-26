tag @s[nbt={SelectedItem:{id:"minecraft:golden_axe"}}] add chibi_edit
tag @s[nbt=!{SelectedItem:{id:"minecraft:golden_axe"}}] remove chibi_edit

#
title @s[y_rotation=135..-135,tag=chibi_edit] actionbar [{"text": "Direction: North"}]
title @s[y_rotation=-135..-45,tag=chibi_edit] actionbar [{"text": "Direction: East"}]
title @s[y_rotation=-45..45,tag=chibi_edit] actionbar [{"text": "Direction: South"}]
title @s[y_rotation=45..135,tag=chibi_edit] actionbar [{"text": "Direction: West"}]
