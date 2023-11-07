data modify entity @e[tag=carn.deathsworn_minion,distance=..1,sort=nearest,limit=1] Attributes[{Name:"minecraft:generic.max_health"}].Base set from entity @s SelectedItem.tag.carn_minion_health_tag
data modify entity @e[tag=carn.deathsworn_minion,distance=..1,sort=nearest,limit=1] Health set from entity @s SelectedItem.tag.carn_minion_health_tag
data modify entity @e[tag=carn.deathsworn_minion,distance=..1,sort=nearest,limit=1] IsImmuneToZombification set value 1

# Heart Costs
execute if entity @s[nbt={SelectedItem:{tag:{carn_heart_cost:0}}}] run tag @e[tag=carn.deathsworn_minion,distance=..1,sort=nearest,limit=1] add carn.deathsworn_minion_heart_cost_0
execute if entity @s[nbt={SelectedItem:{tag:{carn_heart_cost:1}}}] run tag @e[tag=carn.deathsworn_minion,distance=..1,sort=nearest,limit=1] add carn.deathsworn_minion_heart_cost_1
execute if entity @s[nbt={SelectedItem:{tag:{carn_heart_cost:2}}}] run tag @e[tag=carn.deathsworn_minion,distance=..1,sort=nearest,limit=1] add carn.deathsworn_minion_heart_cost_2
execute if entity @s[nbt={SelectedItem:{tag:{carn_heart_cost:3}}}] run tag @e[tag=carn.deathsworn_minion,distance=..1,sort=nearest,limit=1] add carn.deathsworn_minion_heart_cost_3
execute if entity @s[nbt={SelectedItem:{tag:{carn_heart_cost:4}}}] run tag @e[tag=carn.deathsworn_minion,distance=..1,sort=nearest,limit=1] add carn.deathsworn_minion_heart_cost_4

# Random Size by Tier
execute if entity @s[nbt={SelectedItem:{tag:{carn_heart_tier:1}}}] run power grant @e[tag=carn.deathsworn_minion,distance=..1,sort=nearest,limit=1] reincarnation-origins:deathsworn/minions/random_size_t1
execute if entity @s[nbt={SelectedItem:{tag:{carn_heart_tier:2}}}] run power grant @e[tag=carn.deathsworn_minion,distance=..1,sort=nearest,limit=1] reincarnation-origins:deathsworn/minions/random_size_t2
execute if entity @s[nbt={SelectedItem:{tag:{carn_heart_tier:3}}}] run power grant @e[tag=carn.deathsworn_minion,distance=..1,sort=nearest,limit=1] reincarnation-origins:deathsworn/minions/random_size_t3
execute if entity @s[nbt={SelectedItem:{tag:{carn_heart_tier:4}}}] run power grant @e[tag=carn.deathsworn_minion,distance=..1,sort=nearest,limit=1] reincarnation-origins:deathsworn/minions/random_size_t4
