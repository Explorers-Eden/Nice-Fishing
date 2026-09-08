function nice_fishing:apply_fish_values/get_data
data modify storage eden:temp nice_fishing.slot set value "weapon.offhand"
function nice_fishing:apply_fish_values/exec_slot with storage eden:temp nice_fishing
