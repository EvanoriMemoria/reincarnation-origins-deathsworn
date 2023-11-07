# Spawn Entity
summon wither_skeleton ^ ^ ^ {DeathLootTable:"minecraft:empty",Team:"carn.all_summoners_team",PersistenceRequired:1b,CanPickUpLoot:0b,Tags:["carn.deathsworn_minion","no_crystalize","carn.temp"],HandItems:[{id:"minecraft:stone_sword",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:vanishing_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:10,Operation:0,UUID:[I;-1942851589,85606689,-1733146835,1172324392]}]}},{}],ArmorItems:[{},{},{},{id:"minecraft:iron_helmet",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:vanishing_curse",lvl:1s}]}}],Attributes:[{Name:generic.follow_range,Base:32},{Name:generic.knockback_resistance,Base:1},{Name:generic.movement_speed,Base:0.4},{Name:generic.armor,Base:50},{Name:generic.armor_toughness,Base:50}]}
advancement grant @s only reincarnation-origins:deathsworn/wither_skeleton

# Set Mob Stats from Item
function reincarnation-origins:deathsworn/give_stats

# Consume Resources
function reincarnation-origins:deathsworn/summons/consume_resources

# Add Minion Powers
power grant @e[tag=carn.deathsworn_minion,type=minecraft:wither_skeleton,distance=..1,sort=nearest,limit=1] reincarnation-origins:deathsworn/minions/wither_skeleton_powers
