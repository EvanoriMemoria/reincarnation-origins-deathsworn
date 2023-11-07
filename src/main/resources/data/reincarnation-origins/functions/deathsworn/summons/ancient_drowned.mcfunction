# Spawn Entity
summon drowned ^ ^ ^ {CustomNameVisible:0b,DeathLootTable:"minecraft:empty",Team:"carn.all_summoners_team",PersistenceRequired:1b,CanPickUpLoot:0b,Tags:["carn.deathsworn_minion","Ancient_Drowned","carn.temp"],CustomName:'{"text":"Ancient Drowned","color":"dark_gray","bold":true}',HandItems:[{id:"minecraft:trident",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:vanishing_curse",lvl:1s}]}},{}],ArmorItems:[{},{},{},{id:"minecraft:diamond_helmet",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:depth_strider",lvl:20s},{id:"minecraft:vanishing_curse",lvl:1s}]}}],Attributes:[{Name:generic.follow_range,Base:32},{Name:generic.knockback_resistance,Base:1},{Name:generic.armor,Base:20},{Name:generic.armor_toughness,Base:12}]}
advancement grant @s only reincarnation-origins:deathsworn/ancient_drowned

# Set Mob Stats from Petrified Heart
function reincarnation-origins:deathsworn/give_stats

# Consume Item and SOUL
function reincarnation-origins:deathsworn/summons/consume_resources

# Add Minion Powers
power grant @e[tag=carn.deathsworn_minion,type=minecraft:drowned,distance=..1,sort=nearest,limit=1] reincarnation-origins:deathsworn/minions/ancient_drowned_powers