#
# Replace the regeneration potion in the players inventory if
# the game state is running and regeneration potions are disabled
#
# Entity: The player who just obtained regeneration potion
#

advancement revoke @s only uhc_pack:running/obtain_regen_potion

execute if score UHC uhcState matches 4 if score UHCRegenPotion uhcEnabled matches 0 run function uhc_pack:running/regen_potions/replace