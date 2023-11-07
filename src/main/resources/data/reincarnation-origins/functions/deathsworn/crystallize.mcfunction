data modify entity @s ArmorDropChances set value [1.0F,1.0F,1.0F,1.0F]
data modify entity @s HandDropChances set value [1.0F,1.0F]
summon minecraft:item ~ ~ ~ {Tags:["Petrified_Heart"],Glowing:1b,PickupDelay:1,Item:{id:"minecraft:heart_of_the_sea",Count:1b,tag:{CustomModelData:1,lnc:1}}}

# Skeleton
execute if entity @s[type=minecraft:skeleton] run function reincarnation-origins:deathsworn/crystallize_entities/skeleton

# Stray
execute if entity @s[type=minecraft:stray] run function reincarnation-origins:deathsworn/crystallize_entities/stray

# Wither Skeleton
execute if entity @s[type=minecraft:wither_skeleton] run function reincarnation-origins:deathsworn/crystallize_entities/wither_skeleton

# Zombie
execute if entity @s[type=minecraft:zombie] run function reincarnation-origins:deathsworn/crystallize_entities/zombie

# Drowned
execute if entity @s[type=minecraft:drowned,tag=!Mighty_Drowned,tag=!Ancient_Drowned] run function reincarnation-origins:deathsworn/crystallize_entities/drowned

# Mighty Drowned (Guardian Drop)
execute if entity @s[type=minecraft:drowned,tag=Mighty_Drowned,tag=!Ancient_Drowned] run function reincarnation-origins:deathsworn/crystallize_entities/guardian
execute if entity @s[type=minecraft:guardian] run function reincarnation-origins:deathsworn/crystallize_entities/guardian

# Ancient Drowned (Elder Guardian Drop)
execute if entity @s[type=minecraft:drowned,tag=!Mighty_Drowned,tag=Ancient_Drowned] run function reincarnation-origins:deathsworn/crystallize_entities/elder_guardian
execute if entity @s[type=minecraft:elder_guardian] run function reincarnation-origins:deathsworn/crystallize_entities/elder_guardian

# Husk
execute if entity @s[type=minecraft:husk] run function reincarnation-origins:deathsworn/crystallize_entities/husk

# Zombified Piglin
execute if entity @s[type=minecraft:zombified_piglin] run function reincarnation-origins:deathsworn/crystallize_entities/zombified_piglin

# Undead Piglin Brute
execute if entity @s[type=minecraft:piglin_brute] run function reincarnation-origins:deathsworn/crystallize_entities/piglin_brute

# Heart Cost Lore Data
data modify entity @e[tag=Petrified_Heart,distance=..1,nbt={Item:{tag:{carn_heart_tier:1}}},sort=nearest,limit=1] Item.tag.display.Lore set value ['{"text":"Tier 1","color":"white","italic":"false"}']
data modify entity @e[tag=Petrified_Heart,distance=..1,nbt={Item:{tag:{carn_heart_tier:2}}},sort=nearest,limit=1] Item.tag.display.Lore set value ['{"text":"Tier 2","color":"aqua","italic":"false"}']
data modify entity @e[tag=Petrified_Heart,distance=..1,nbt={Item:{tag:{carn_heart_tier:3}}},sort=nearest,limit=1] Item.tag.display.Lore set value ['{"text":"Tier 3","color":"light_purple","italic":"false"}']
data modify entity @e[tag=Petrified_Heart,distance=..1,nbt={Item:{tag:{carn_heart_tier:4}}},sort=nearest,limit=1] Item.tag.display.Lore set value ['{"text":"Tier 4","color":"dark_purple","italic":"false"}']
data modify entity @e[tag=Petrified_Heart,distance=..1,nbt={Item:{tag:{carn_heart_tier:5}}},sort=nearest,limit=1] Item.tag.display.Lore set value ['{"text":"Tier 4","color":"gold","italic":"false"}']

# Enchantment Glint for tier 4 and 5
data modify entity @e[tag=Petrified_Heart,distance=..1,nbt={Item:{tag:{carn_heart_tier:4}}},sort=nearest,limit=1] Item.tag.Enchantments set value [{}]
data modify entity @e[tag=Petrified_Heart,distance=..1,nbt={Item:{tag:{carn_heart_tier:5}}},sort=nearest,limit=1] Item.tag.Enchantments set value [{}]

# Heart Cost Lore Data
data modify entity @e[tag=Petrified_Heart,distance=..1,nbt={Item:{tag:{carn_heart_cost:0}}},sort=nearest,limit=1] Item.tag.display.Lore append value '{"text":"Heart Cost: 0","color":"red","italic":"false"}'
data modify entity @e[tag=Petrified_Heart,distance=..1,nbt={Item:{tag:{carn_heart_cost:1}}},sort=nearest,limit=1] Item.tag.display.Lore append value '{"text":"Heart Cost: 1","color":"red","italic":"false"}'
data modify entity @e[tag=Petrified_Heart,distance=..1,nbt={Item:{tag:{carn_heart_cost:2}}},sort=nearest,limit=1] Item.tag.display.Lore append value '{"text":"Heart Cost: 2","color":"red","italic":"false"}'
data modify entity @e[tag=Petrified_Heart,distance=..1,nbt={Item:{tag:{carn_heart_cost:3}}},sort=nearest,limit=1] Item.tag.display.Lore append value '{"text":"Heart Cost: 3","color":"red","italic":"false"}'
data modify entity @e[tag=Petrified_Heart,distance=..1,nbt={Item:{tag:{carn_heart_cost:4}}},sort=nearest,limit=1] Item.tag.display.Lore append value '{"text":"Heart Cost: 4","color":"red","italic":"false"}'

# Heart Tier Data
data modify entity @e[tag=Petrified_Heart,distance=..1,nbt={Item:{tag:{carn_heart_tier:1}}},sort=nearest,limit=1] Item.tag.CustomModelData set value 1
data modify entity @e[tag=Petrified_Heart,distance=..1,nbt={Item:{tag:{carn_heart_tier:2}}},sort=nearest,limit=1] Item.tag.CustomModelData set value 6
data modify entity @e[tag=Petrified_Heart,distance=..1,nbt={Item:{tag:{carn_heart_tier:3}}},sort=nearest,limit=1] Item.tag.CustomModelData set value 7
data modify entity @e[tag=Petrified_Heart,distance=..1,nbt={Item:{tag:{carn_heart_tier:4}}},sort=nearest,limit=1] Item.tag.CustomModelData set value 8

execute store result entity @e[tag=Petrified_Heart,distance=..1,sort=nearest,limit=1] Item.tag.carn_minion_health_tag float 1 run scoreboard players get @s carn.minion_health