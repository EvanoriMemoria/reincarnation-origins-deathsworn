#teleport minions to you
execute at @a as @e[tag=carn.deathsworn_minion] if score @s[distance=18..] carn.deathswornID = @p carn.deathswornID run tp @s ~.3 ~ ~