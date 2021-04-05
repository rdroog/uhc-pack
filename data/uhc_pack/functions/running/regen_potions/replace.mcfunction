#
# Replace the regeneration potion from the player's inventory
#
# Entity: The player
# Location: The location of the player
#

tag @s remove any_regen_potion

function uhc_pack:running/regen_potions/replace_loop

playsound minecraft:entity.witch.drink player @s[tag=any_regen_potion] ~ ~ ~ 1 0.9
tellraw @s[tag=any_regen_potion] [{"text":""},{"text":"UHC","color":"light_purple"},{"text":" \u2503 "},{"text":"Regeneration potions","color":"gray"},{"text":" \u2503 "},{"text":"Disabled","color":"red"}]
tag @s remove any_regen_potion

