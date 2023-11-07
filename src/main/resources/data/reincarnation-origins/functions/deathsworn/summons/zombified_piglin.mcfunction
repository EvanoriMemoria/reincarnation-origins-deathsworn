# Spawn Entity
summon minecraft:zombified_piglin ^ ^ ^ {DeathLootTable:"minecraft:empty",Team:"carn.all_summoners_team",PersistenceRequired:1b,CanPickUpLoot:0b,Tags:["carn.deathsworn_minion","carn.temp"],HandItems:[{id:"minecraft:golden_sword",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:fire_aspect",lvl:3s},{id:"minecraft:looting",lvl:3s},{id:"minecraft:sweeping",lvl:3s},{id:"minecraft:vanishing_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:8,Operation:0,UUID:[I;60497186,-1734458739,-1563589324,589953930]}]}},{}],ArmorItems:[{},{},{},{id:"minecraft:iron_helmet",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:vanishing_curse",lvl:1s}]}}],Attributes:[{Name:generic.follow_range,Base:32},{Name:generic.knockback_resistance,Base:1},{Name:generic.armor,Base:18},{Name:generic.armor_toughness,Base:12}]}
advancement grant @s only reincarnation-origins:deathsworn/zombified_piglin

# Set Mob Stats from Item
function reincarnation-origins:deathsworn/give_stats

# Consume Resources
function reincarnation-origins:deathsworn/summons/consume_resources

# Add Minion Powers
power grant @e[tag=carn.deathsworn_minion,type=minecraft:zombified_piglin,distance=..1,sort=nearest,limit=1] reincarnation-origins:deathsworn/minions/zombified_piglin_powers