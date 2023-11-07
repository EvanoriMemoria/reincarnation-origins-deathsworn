particle minecraft:totem_of_undying ~ ~ ~ 2 3 2 0.1 2000 force
playsound minecraft:item.totem.use player @s ~ ~ ~ 20
execute as @e[tag=carn.deathsworn_minion,sort=nearest,limit=2,distance=..10] if score @s carn.deathswornID = @p carn.deathswornID run kill @s
advancement grant @s only reincarnation-origins:deathsworn/immortal