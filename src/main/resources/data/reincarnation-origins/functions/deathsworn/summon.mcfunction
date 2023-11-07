# Zombie
execute if entity @s[advancements={reincarnation-origins:deathsworn/petri=true},nbt={SelectedItem:{tag:{mob:"Zombie"}}}] run function reincarnation-origins:deathsworn/summons/zombie

# Drowned
execute if entity @s[advancements={reincarnation-origins:deathsworn/zombie=true},nbt={SelectedItem:{tag:{mob:"Drowned"}}}] run function reincarnation-origins:deathsworn/summons/drowned
execute if entity @s[advancements={reincarnation-origins:deathsworn/zombie=false},nbt={SelectedItem:{tag:{mob:"Drowned"}}}] run title @s actionbar {"translate":"reincarnation-origins.deathsworn.zombie_requirement","color":"red","bold":true}

# Mighty Drowned
execute if entity @s[advancements={reincarnation-origins:deathsworn/drowned=true},nbt={SelectedItem:{tag:{mob:"Mighty_Drowned"}}}] run function reincarnation-origins:deathsworn/summons/mighty_drowned
execute if entity @s[advancements={reincarnation-origins:deathsworn/drowned=false},nbt={SelectedItem:{tag:{mob:"Mighty_Drowned"}}}] run title @s actionbar {"translate":"reincarnation-origins.deathsworn.drowned_requirement","color":"red","bold":true}

# Ancient Drowned
execute if entity @s[advancements={reincarnation-origins:deathsworn/mighty_drowned=true},nbt={SelectedItem:{tag:{mob:"Ancient_Drowned"}}}] run function reincarnation-origins:deathsworn/summons/ancient_drowned
execute if entity @s[advancements={reincarnation-origins:deathsworn/mighty_drowned=false},nbt={SelectedItem:{tag:{mob:"Ancient_Drowned"}}}] run title @s actionbar {"translate":"reincarnation-origins.deathsworn.mighty_drowned_requirement","color":"red","bold":true}

# Husk
execute if entity @s[advancements={reincarnation-origins:deathsworn/zombie=true},nbt={SelectedItem:{tag:{mob:"Husk"}}}] run function reincarnation-origins:deathsworn/summons/husk
execute if entity @s[advancements={reincarnation-origins:deathsworn/zombie=false},nbt={SelectedItem:{tag:{mob:"Husk"}}}] run title @s actionbar {"translate":"reincarnation-origins.deathsworn.zombie_requirement","color":"red","bold":true}

# Zombified Piglin
execute if entity @s[advancements={reincarnation-origins:deathsworn/zombie=true},nbt={SelectedItem:{tag:{mob:"Zombified_Piglin"}}}] run function reincarnation-origins:deathsworn/summons/zombified_piglin
execute if entity @s[advancements={reincarnation-origins:deathsworn/zombie=false},nbt={SelectedItem:{tag:{mob:"Zombified_Piglin"}}}] run title @s actionbar {"translate":"reincarnation-origins.deathsworn.zombie_requirement","color":"red","bold":true}

# Piglin Brute
execute if entity @s[advancements={reincarnation-origins:deathsworn/zombified_piglin=true},nbt={SelectedItem:{tag:{mob:"Piglin_Brute"}}}] run function reincarnation-origins:deathsworn/summons/piglin_brute
execute if entity @s[advancements={reincarnation-origins:deathsworn/zombified_piglin=false},nbt={SelectedItem:{tag:{mob:"Piglin_Brute"}}}] run title @s actionbar {"translate":"reincarnation-origins.deathsworn.zombified_piglin_requirement","color":"red","bold":true}

# Skeleton
execute if entity @s[advancements={reincarnation-origins:deathsworn/petri=true},nbt={SelectedItem:{tag:{mob:"Skeleton"}}}] run function reincarnation-origins:deathsworn/summons/skeleton

# Stray
execute if entity @s[advancements={reincarnation-origins:deathsworn/skeleton=true},nbt={SelectedItem:{tag:{mob:"Stray"}}}] run function reincarnation-origins:deathsworn/summons/stray
execute if entity @s[advancements={reincarnation-origins:deathsworn/skeleton=false},nbt={SelectedItem:{tag:{mob:"Stray"}}}] run title @s actionbar {"translate":"reincarnation-origins.deathsworn.skeleton_requirement","color":"red","bold":true}

# Wither Skeleton
execute if entity @s[advancements={reincarnation-origins:deathsworn/skeleton=true},nbt={SelectedItem:{tag:{mob:"Wither_Skeleton"}}}] run function reincarnation-origins:deathsworn/summons/wither_skeleton
execute if entity @s[advancements={reincarnation-origins:deathsworn/skeleton=false},nbt={SelectedItem:{tag:{mob:"Wither_Skeleton"}}}] run title @s actionbar {"translate":"reincarnation-origins.deathsworn.skeleton_requirement","color":"red","bold":true}

# All minions get these powers
power grant @e[tag=carn.deathsworn_minion,distance=..1,sort=nearest,limit=1] reincarnation-origins:deathsworn/minions/kill
power grant @e[tag=carn.deathsworn_minion,distance=..1,sort=nearest,limit=1] reincarnation-origins:deathsworn/minions/deathsworn_minion_powers

# Store executing player's current deathswornID
scoreboard players operation carn.player_start_value carn.deathswornID = @s carn.deathswornID

# Set executing player's deathswornID to the current deathswornCounter
scoreboard players operation @s carn.deathswornID = carn.deathswornCounter carn.deathswornID

# Update all existing minion's deathswornID to the current deathswornCounter
execute as @e[tag=carn.deathsworn_minion,limit=10] if score @s carn.deathswornID = carn.player_start_value carn.deathswornID run scoreboard players operation @s carn.deathswornID = carn.deathswornCounter carn.deathswornID

# Set new minion deathswornID equal to executing player's deathswornID
execute as @e[tag=carn.temp,tag=carn.deathsworn_minion,limit=1] run scoreboard players operation @s carn.deathswornID = carn.deathswornCounter carn.deathswornID

# Remove the carn.temp tag
execute as @e[tag=carn.temp,tag=carn.deathsworn_minion,limit=1] run tag @s remove carn.temp

# Add 1 to the deathsworn counter
scoreboard players add carn.deathswornCounter carn.deathswornID 1