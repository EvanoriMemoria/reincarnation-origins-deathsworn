# Spawn Entity
summon stray ^ ^ ^ {DeathLootTable:"minecraft:empty",Team:"carn.all_summoners_team",PersistenceRequired:1b,CanPickUpLoot:0b,Tags:["carn.deathsworn_minion","carn.temp"],HandItems:[{id:"minecraft:bow",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:infinity",lvl:1s},{id:"minecraft:vanishing_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:2,Operation:0,UUID:[I;-941819065,1243170736,-1852349559,-1912876868]}]}},{}],ArmorItems:[{},{},{},{id:"minecraft:iron_helmet",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:10s},{id:"minecraft:fire_protection",lvl:10s},{id:"minecraft:vanishing_curse",lvl:1s}]}}],Attributes:[{Name:generic.follow_range,Base:32},{Name:generic.knockback_resistance,Base:1},{Name:generic.armor,Base:15},{Name:generic.armor_toughness,Base:12}]}
advancement grant @s only reincarnation-origins:deathsworn/stray

# Set Mob Stats from Item
function reincarnation-origins:deathsworn/give_stats

# Consume Resources
function reincarnation-origins:deathsworn/summons/consume_resources

# Add Minion Powers
power grant @e[tag=carn.deathsworn_minion,type=minecraft:stray,distance=..1,sort=nearest,limit=1] reincarnation-origins:deathsworn/minions/stray_powers