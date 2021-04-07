#
# Replace the regeneration potion from the player's inventory
#
# Entity: The player
# Location: The location of the player
#

tag @s remove regen_potion

# Regular potion
execute store success score @s uhcRegenPotion run clear @s minecraft:potion{Potion:"minecraft:regeneration"} 1
execute if score @s uhcRegenPotion matches 1 run give @s minecraft:potion{Potion:"minecraft:healing"}
execute if score @s uhcRegenPotion matches 1 run tag @s add regen_potion
execute store success score @s uhcRegenPotion run clear @s minecraft:potion{Potion:"minecraft:long_regeneration"} 1
execute if score @s uhcRegenPotion matches 1 run give @s minecraft:potion{Potion:"minecraft:healing"}
execute if score @s uhcRegenPotion matches 1 run tag @s add regen_potion
execute store success score @s uhcRegenPotion run clear @s minecraft:potion{Potion:"minecraft:strong_regeneration"} 1
execute if score @s uhcRegenPotion matches 1 run give @s minecraft:potion{Potion:"minecraft:healing"}
execute if score @s uhcRegenPotion matches 1 run tag @s add regen_potion

# Splash potion
execute store success score @s uhcRegenPotion run clear @s minecraft:splash_potion{Potion:"minecraft:regeneration"} 1
execute if score @s uhcRegenPotion matches 1 run give @s minecraft:splash_potion{Potion:"minecraft:healing"}
execute if score @s uhcRegenPotion matches 1 run tag @s add regen_potion
execute store success score @s uhcRegenPotion run clear @s minecraft:splash_potion{Potion:"minecraft:long_regeneration"} 1
execute if score @s uhcRegenPotion matches 1 run give @s minecraft:splash_potion{Potion:"minecraft:healing"}
execute if score @s uhcRegenPotion matches 1 run tag @s add regen_potion
execute store success score @s uhcRegenPotion run clear @s minecraft:splash_potion{Potion:"minecraft:strong_regeneration"} 1
execute if score @s uhcRegenPotion matches 1 run give @s minecraft:splash_potion{Potion:"minecraft:healing"}
execute if score @s uhcRegenPotion matches 1 run tag @s add regen_potion

# Lingering potion
execute store success score @s uhcRegenPotion run clear @s minecraft:lingering_potion{Potion:"minecraft:regeneration"} 1
execute if score @s uhcRegenPotion matches 1 run give @s minecraft:lingering_potion{Potion:"minecraft:healing"}
execute if score @s uhcRegenPotion matches 1 run tag @s add regen_potion
execute store success score @s uhcRegenPotion run clear @s minecraft:lingering_potion{Potion:"minecraft:long_regeneration"} 1
execute if score @s uhcRegenPotion matches 1 run give @s minecraft:lingering_potion{Potion:"minecraft:healing"}
execute if score @s uhcRegenPotion matches 1 run tag @s add regen_potion
execute store success score @s uhcRegenPotion run clear @s minecraft:lingering_potion{Potion:"minecraft:strong_regeneration"} 1
execute if score @s uhcRegenPotion matches 1 run give @s minecraft:lingering_potion{Potion:"minecraft:healing"}
execute if score @s uhcRegenPotion matches 1 run tag @s add regen_potion

tag @s[tag=regen_potion] add any_regen_potion
execute if entity @s[tag=regen_potion] run function uhc_pack:running/regen_potions/replace_loop
tag @s remove regen_potion