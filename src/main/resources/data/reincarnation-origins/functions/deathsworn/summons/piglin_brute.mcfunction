# Spawn Entity
summon piglin_brute ^ ^ ^ {DeathLootTable:"minecraft:empty",Team:"carn.all_summoners_team",PersistenceRequired:1b,CanPickUpLoot:0b,Tags:["carn.deathsworn_minion","carn.temp"],HandItems:[{id:"minecraft:golden_axe",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:vanishing_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:7,Operation:0,UUID:[I;206735503,-1587330073,-1472235154,900978469]}]}},{}],ArmorItems:[{},{},{},{id:"minecraft:iron_helmet",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:10s},{id:"minecraft:fire_protection",lvl:20s},{id:"minecraft:blast_protection",lvl:10s},{id:"minecraft:projectile_protection",lvl:10s},{id:"minecraft:vanishing_curse",lvl:1s}]}}],Attributes:[{Name:generic.follow_range,Base:32},{Name:generic.knockback_resistance,Base:1},{Name:generic.armor,Base:16},{Name:generic.armor_toughness,Base:16}]}
advancement grant @s only reincarnation-origins:deathsworn/piglin_brute

# Set Mob Stats from Item
function reincarnation-origins:deathsworn/give_stats

# Consume Resources
function reincarnation-origins:deathsworn/summons/consume_resources

# Add Minion Powers
power grant @e[tag=carn.deathsworn_minion,type=minecraft:piglin_brute,distance=..1,sort=nearest,limit=1] reincarnation-origins:deathsworn/minions/piglin_brute_powers