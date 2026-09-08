schedule function nice_fishing:apply_fish_values/init 1s

execute as @a at @s if items entity @s hotbar.* minecraft:music_disc_5[minecraft:custom_data={nice_fishing:{"item":"fish"}}] run function nice_fishing:apply_fish_values/hotbar/init
execute as @a at @s if items entity @s weapon.offhand minecraft:music_disc_5[minecraft:custom_data={nice_fishing:{"item":"fish"}}] run function nice_fishing:apply_fish_values/offhand/init
execute as @a at @s if items entity @s inventory.* minecraft:music_disc_5[minecraft:custom_data={nice_fishing:{"item":"fish"}}] run function nice_fishing:apply_fish_values/inventory/init
