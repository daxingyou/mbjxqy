local tbCommonStoneDebris = Item:GetClass("CommonStoneDebris")
tbCommonStoneDebris.COMBINE_COUNT = 5
function tbCommonStoneDebris:OnUse(it)
  if it.nCount < self.COMBINE_COUNT then
    me.CenterMsg(XT(string.format("数量不足%d个", self.COMBINE_COUNT)))
    return 0
  end
  if me.CheckNeedArrangeBag() then
    me.CenterMsg(XT("背包道具数量过多，请整理一下！"))
    return 0
  end
  self:OnCreateStone(1)
  return 5
end
function tbCommonStoneDebris:OnUseAll(it)
  if it.nCount < self.COMBINE_COUNT then
    me.CenterMsg(XT(string.format("数量不足%d个", self.COMBINE_COUNT)))
    return 0
  end
  if me.CheckNeedArrangeBag() then
    me.CenterMsg(XT("背包道具数量过多，请整理一下！"))
    return 0
  end
  local nCreateCount = math.floor(it.nCount / self.COMBINE_COUNT)
  self:OnCreateStone(nCreateCount)
  return nCreateCount * self.COMBINE_COUNT
end
function tbCommonStoneDebris:OnCreateStone(nCreateCount)
  local tbLevelStone = StoneMgr:GetLevel1Stone()
  local nLevelCount = #tbLevelStone
  local tbRan = {}
  for i = 1, nCreateCount do
    local nIndex = MathRandom(1, nLevelCount)
    local nStoneTemplateId = tbLevelStone[nIndex]
    if not tbRan[nStoneTemplateId] then
      tbRan[nStoneTemplateId] = 1
    else
      tbRan[nStoneTemplateId] = tbRan[nStoneTemplateId] + 1
    end
  end
  local tbAward = {}
  local szInfo = ""
  for nStoneTemplateId, nCount in pairs(tbRan) do
    local tbBaseInfo = KItem.GetItemBaseProp(nStoneTemplateId)
    szInfo = szInfo .. " " .. tbBaseInfo.szName .. "x" .. tostring(nCount)
    table.insert(tbAward, {
      "Item",
      nStoneTemplateId,
      nCount
    })
  end
  me.CenterMsg(XT(string.format("恭喜你获得:%s", szInfo)))
  me.SendAward(tbAward, nil, nil, Env.LogWay_DebrisCreateStone)
end
