local tbNpc = Npc:GetClass("BattleNpc")
function tbNpc:OnDeath(pKiller)
  Battle:OnNpcDeath(him, pKiller)
end
function tbNpc:OnEarlyDeath(pKiller)
  Battle:OnEarlyDeath(him, pKiller)
end
