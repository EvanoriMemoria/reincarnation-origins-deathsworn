# Spawn Entity
summon minecraft:zombie ^ ^ ^ {DeathLootTable:"minecraft:empty",Team:"carn.all_summoners_team",PersistenceRequired:1b,CanPickUpLoot:0b,Tags:["carn.deathsworn_minion","carn.temp"],ArmorItems:[{},{},{},{id:"minecraft:iron_helmet",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:10s},{id:"minecraft:fire_protection",lvl:10s},{id:"minecraft:blast_protection",lvl:10s},{id:"minecraft:projectile_protection",lvl:10s},{id:"minecraft:vanishing_curse",lvl:1s}]}}],Attributes:[{Name:generic.follow_range,Base:32},{Name:generic.knockback_resistance,Base:1},{Name:generic.movement_speed,Base:.18},{Name:generic.attack_damage,Base:1},{Name:generic.armor,Base:20},{Name:generic.armor_toughness,Base:10}]}
advancement grant @s only reincarnation-origins:deathsworn/zombie
advancement grant @s only reincarnation-origins:deathsworn/summon

# Set Mob Stats from Item
function reincarnation-origins:deathsworn/give_stats

# Consume Resources
function reincarnation-origins:deathsworn/summons/consume_resources

# Add Minion Powers
power grant @e[tag=carn.deathsworn_minion,type=minecraft:zombie,distance=..1,sort=nearest,limit=1] reincarnation-origins:deathsworn/minions/zombie_powers