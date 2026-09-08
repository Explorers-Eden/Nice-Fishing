execute store result storage eden:temp nice_fishing.size int 1 run random value 1..200

execute store result storage eden:temp nice_fishing.x int 1 run data get entity @s Pos[0]
execute store result storage eden:temp nice_fishing.y int 1 run data get entity @s Pos[1]
execute store result storage eden:temp nice_fishing.z int 1 run data get entity @s Pos[2]

data modify storage eden:temp nice_fishing.dimension set from entity @s Dimension
data modify storage eden:temp nice_fishing.dimension_color set value "white"
execute if data storage eden:temp nice_fishing{dimension:"minecraft:overworld"} run data modify storage eden:temp nice_fishing.dimension_color set value "green"
execute if data storage eden:temp nice_fishing{dimension:"minecraft:overworld"} run data modify storage eden:temp nice_fishing.dimension set value "Overworld"
execute if data storage eden:temp nice_fishing{dimension:"minecraft:the_nether"} run data modify storage eden:temp nice_fishing.dimension_color set value "red"
execute if data storage eden:temp nice_fishing{dimension:"minecraft:the_nether"} run data modify storage eden:temp nice_fishing.dimension set value "The Nether"
execute if data storage eden:temp nice_fishing{dimension:"minecraft:the_end"} run data modify storage eden:temp nice_fishing.dimension_color set value "purple"
execute if data storage eden:temp nice_fishing{dimension:"minecraft:the_end"} run data modify storage eden:temp nice_fishing.dimension set value "The End"

execute as @p run loot spawn ~ ~ ~ loot {"type": "minecraft:command","pools":[{"rolls": 1,"entries":[{"type": "minecraft:item","name": "minecraft:player_head","modifier":[{"type": "minecraft:fill_player_head","entity": "this"}]}]}]}
data modify storage eden:temp nice_fishing.player set from entity @n[type=item,nbt={Item:{id:"minecraft:player_head"}},distance=..8] Item.components.minecraft:profile.name
kill @n[type=item,nbt={Item:{id:"minecraft:player_head"}},distance=..8]

# ⭑       50.0%  (1..500)
# ⭑⭑      25.0%  (501..750)
# ⭑⭑⭑     12.0%  (751..870)
# ⭑⭑⭑⭑     8.0%  (871..950)
# ⭑⭑⭑⭑⭑    5.0%  (951..1000)
execute store result score $quality nice_fishing.technical run random value 1..1000
execute if score $quality nice_fishing.technical matches 1..500 run data modify storage eden:temp nice_fishing.quality set value "⭑"
execute if score $quality nice_fishing.technical matches 1..500 run data modify storage eden:temp nice_fishing.nutrition set value 1
execute if score $quality nice_fishing.technical matches 1..500 run data modify storage eden:temp nice_fishing.saturation set value 0.2f

execute if score $quality nice_fishing.technical matches 501..750 run data modify storage eden:temp nice_fishing.quality set value "⭑⭑"
execute if score $quality nice_fishing.technical matches 501..750 run data modify storage eden:temp nice_fishing.nutrition set value 2
execute if score $quality nice_fishing.technical matches 501..750 run data modify storage eden:temp nice_fishing.saturation set value 0.6f

execute if score $quality nice_fishing.technical matches 751..870 run data modify storage eden:temp nice_fishing.quality set value "⭑⭑⭑"
execute if score $quality nice_fishing.technical matches 751..870 run data modify storage eden:temp nice_fishing.nutrition set value 4
execute if score $quality nice_fishing.technical matches 751..870 run data modify storage eden:temp nice_fishing.saturation set value 1.2f

execute if score $quality nice_fishing.technical matches 871..950 run data modify storage eden:temp nice_fishing.quality set value "⭑⭑⭑⭑"
execute if score $quality nice_fishing.technical matches 871..950 run data modify storage eden:temp nice_fishing.nutrition set value 6
execute if score $quality nice_fishing.technical matches 871..950 run data modify storage eden:temp nice_fishing.saturation set value 2.0f

execute if score $quality nice_fishing.technical matches 951..1000 run data modify storage eden:temp nice_fishing.quality set value "⭑⭑⭑⭑⭑"
execute if score $quality nice_fishing.technical matches 951..1000 run data modify storage eden:temp nice_fishing.nutrition set value 8
execute if score $quality nice_fishing.technical matches 951..1000 run data modify storage eden:temp nice_fishing.saturation set value 3.2f

# common    60.0%  (1..600)
# uncommon  25.0%  (601..850)
# rare      10.0%  (851..950)
# epic       5.0%  (951..1000)
execute store result score $rarity nice_fishing.technical run random value 1..1000
execute if score $rarity nice_fishing.technical matches 1..600 run data modify storage eden:temp nice_fishing.rarity set value "common"
execute if score $rarity nice_fishing.technical matches 601..850 run data modify storage eden:temp nice_fishing.rarity set value "uncommon"
execute if score $rarity nice_fishing.technical matches 851..950 run data modify storage eden:temp nice_fishing.rarity set value "rare"
execute if score $rarity nice_fishing.technical matches 951..1000 run data modify storage eden:temp nice_fishing.rarity set value "epic"