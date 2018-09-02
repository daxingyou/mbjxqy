Kin.AuctionDef = {
  nAddRatePerTime = 10,
  nBidOverRate = 1000,
  nBidTimeOut = 30,
  nAuctionPrepareTime = 600,
  nKinAuctionLastingTime = 1800,
  nGlobalAuctionLastingTime = 43200,
  nPersonalAuctionWaitingTime = 0,
  nServerRestartLastingTime = 300,
  nRecycleRate = 0.8,
  nAuctionLevelLimit = 11,
  nMaxDealListNum = 100
}
local AuctionDef = Kin.AuctionDef
Kin.Auction = Kin.Auction or {}
local Auction = Kin.Auction
AuctionDef.tbSpecialBonusType = {
  ImperialTombEmperor = true,
  ImperialTombFemaleEmperor = true,
  DomainBattle = true,
  Boss = true,
  BossLeader_Boss = true
}
AuctionDef.tbSpecialBonusRule = {
  {nTotalBaseGold = 500000, nMinPlayer = 5},
  {nTotalBaseGold = 2000000, nMinPlayer = 6},
  {nTotalBaseGold = 3000000, nMinPlayer = 7},
  {nTotalBaseGold = 4000000, nMinPlayer = 8},
  {nTotalBaseGold = 5000000, nMinPlayer = 9},
  {nTotalBaseGold = 6000000, nMinPlayer = 10},
  {nTotalBaseGold = 8000000, nMinPlayer = 12},
  {nTotalBaseGold = 10000000, nMinPlayer = 15},
  {nTotalBaseGold = 15000000, nMinPlayer = 20},
  {nTotalBaseGold = 20000000, nMinPlayer = 25},
  {nTotalBaseGold = 25000000, nMinPlayer = 30},
  {nTotalBaseGold = 30000000, nMinPlayer = 35},
  {nTotalBaseGold = 35000000, nMinPlayer = 40},
  {nTotalBaseGold = 40000000, nMinPlayer = 45},
  {nTotalBaseGold = 50000000, nMinPlayer = 50}
}
AuctionDef.tbMinBonusForPlayer = {
  Default = 0,
  Boss = 0,
  BossLeader_Boss = 40,
  BossLeader_Leader = 0,
  DomainBattle = 60,
  KinTrain = 0,
  DomainBattleAct = 0,
  ImperialTombEmperor = 85,
  ImperialTombFemaleEmperor = 85,
  WhiteTigerFuben_Cross = 30,
  MonsterNianAuction = 0
}
Kin.AuctionName = {
  Global = "全服拍卖",
  Dealer = "行脚商人",
  Boss = "武林盟主",
  BossLeader_Boss = "历代名将",
  BossLeader_Leader = "野外首领",
  DomainBattle = "攻城战",
  KinTrain = "家族试炼",
  DomainBattleAct = "领地行商",
  ImperialTombEmperor = "始皇降世",
  ImperialTombFemaleEmperor = "女帝疑冢",
  WhiteTigerFuben_Cross = "白虎堂",
  MonsterNianAuction = "年兽拍卖"
}
Kin.AuctionItemTimeFrame = {
  Price1 = "OpenLevel49",
  Price2 = "OpenLevel59",
  Price3 = "OpenLevel69",
  Price4 = "OpenLevel79",
  Price5 = "OpenLevel89",
  Price6 = "OpenLevel99",
  Price7 = "OpenLevel109",
  Price8 = "OpenLevel119"
}
AuctionDef.DealerItemTimeFrame = {
  TimeFrame1 = "OpenLevel59",
  TimeFrame2 = "OpenLevel69",
  TimeFrame3 = "OpenLevel79",
  TimeFrame4 = "OpenLevel89",
  TimeFrame5 = "OpenLevel99",
  TimeFrame6 = "OpenLevel109",
  TimeFrame7 = "OpenLevel119",
  TimeFrame8 = "OpenLevel129"
}
AuctionDef.nDealerAutionOpenCount = 3
AuctionDef.tbDealerLuckybagGoldInfo = {
  {
    RedBagId = "travel_seller_1",
    Cost = 1000
  },
  {
    RedBagId = "travel_seller_2",
    Cost = 2000
  },
  {
    RedBagId = "travel_seller_3",
    Cost = 5000
  },
  {
    RedBagId = "travel_seller_4",
    Cost = 10000
  },
  {
    RedBagId = "travel_seller_5",
    Cost = 20000
  },
  {
    RedBagId = "travel_seller_6",
    Cost = 50000
  },
  {
    RedBagId = "travel_seller_7",
    Cost = 100000
  },
  {
    RedBagId = "travel_seller_8",
    Cost = 120000
  },
  {
    RedBagId = "travel_seller_9",
    Cost = 150000
  },
  {
    RedBagId = "travel_seller_10",
    Cost = 180000
  },
  {
    RedBagId = "travel_seller_11",
    Cost = 200000
  }
}
local tbAuctionMaxPriceRateTimeFrame = {
  MaxPriceRate1 = "OpenLevel39",
  MaxPriceRate2 = "OpenLevel49",
  MaxPriceRate3 = "OpenLevel59",
  MaxPriceRate4 = "OpenLevel69",
  MaxPriceRate5 = "OpenLevel79",
  MaxPriceRate6 = "OpenLevel89",
  MaxPriceRate7 = "OpenLevel99",
  MaxPriceRate8 = "OpenLevel109",
  MaxPriceRate9 = "OpenLevel119"
}
local function LoadAuctionSetting()
  local tbAuctionSetting = LoadTabFile("Setting/Auction/Auction.tab", "ddddddddddddssssssssss", "ItemId", {
    "ItemId",
    "MaxItemCount",
    "OrgPrice",
    "Price1",
    "Price2",
    "Price3",
    "Price4",
    "Price5",
    "Price6",
    "Price7",
    "Price8",
    "Price9",
    "TypeName",
    "MaxPriceRate1",
    "MaxPriceRate2",
    "MaxPriceRate3",
    "MaxPriceRate4",
    "MaxPriceRate5",
    "MaxPriceRate6",
    "MaxPriceRate7",
    "MaxPriceRate8",
    "MaxPriceRate9"
  })
  for _, tbItem in pairs(tbAuctionSetting) do
    tbItem.tbTimePrice = {}
    tbItem.tbTimeMaxPriceRate = {}
    for i = 1, 9 do
      local szPriceName = "Price" .. i
      local nPrice = tbItem[szPriceName]
      local szTimeFrame = Kin.AuctionItemTimeFrame[szPriceName]
      if nPrice and szTimeFrame then
        nPrice = tonumber(nPrice)
        table.insert(tbItem.tbTimePrice, {nPrice, szTimeFrame})
      end
      tbItem[szPriceName] = nil
      local szMaxPriceRateName = "MaxPriceRate" .. i
      local nMaxRate = tbItem[szMaxPriceRateName]
      local szTimeFrame = tbAuctionMaxPriceRateTimeFrame[szMaxPriceRateName]
      if nMaxRate and szTimeFrame then
        nMaxRate = tonumber(nMaxRate)
        assert(nMaxRate >= 1, "Auction Max Rate must >= 1")
        table.insert(tbItem.tbTimeMaxPriceRate, {nMaxRate, szTimeFrame})
      end
      tbItem[szMaxPriceRateName] = nil
    end
  end
  return tbAuctionSetting
end
Kin.tbAuctionSetting = LoadAuctionSetting()
local function LoadDealerItemsSetting()
  local tbSetting = {}
  local tbItems = LoadTabFile("Setting/Auction/DealerItems.tab", "dssssssssss", "ItemId", {
    "ItemId",
    "ItemCount1",
    "ItemCount2",
    "ItemCount3",
    "ItemCount4",
    "ItemCount5",
    "ItemCount6",
    "ItemCount7",
    "ItemCount8",
    "ItemCount9",
    "ItemCount10"
  })
  for _, szTimeFrame in pairs(AuctionDef.DealerItemTimeFrame) do
    tbSetting[szTimeFrame] = {}
  end
  for ItemId, tbItemInfo in pairs(tbItems) do
    for i = 1, 10 do
      local szTimeFrame = AuctionDef.DealerItemTimeFrame["TimeFrame" .. i] or ""
      if tbSetting[szTimeFrame] then
        local nCount = tonumber(tbItemInfo["ItemCount" .. i]) or 0
        if nCount > 0 then
          table.insert(tbSetting[szTimeFrame], {ItemId = ItemId, ItemCount = nCount})
        end
      end
    end
  end
  return tbSetting
end
if MODULE_GAMESERVER then
  AuctionDef.tbDealerItemsSetting = LoadDealerItemsSetting()
end
function Auction:GetCurrentDealerItems()
  local szMaxTimeFrame = Lib:GetMaxTimeFrame(AuctionDef.tbDealerItemsSetting or {})
  local tbItems = AuctionDef.tbDealerItemsSetting[szMaxTimeFrame] or {}
  local tbAutionItems = {}
  for _, tbItemInfo in pairs(tbItems) do
    local nCount = math.floor(tbItemInfo.ItemCount)
    nCount = nCount + (tbItemInfo.ItemCount - nCount >= MathRandom() and 1 or 0)
    if nCount then
      table.insert(tbAutionItems, {
        tbItemInfo.ItemId,
        nCount
      })
    end
  end
  return tbAutionItems, szMaxTimeFrame
end
function Auction:GetDealerLuckybagIdByCost(nCostGold)
  local szRedBagId
  for _, tbInfo in ipairs(AuctionDef.tbDealerLuckybagGoldInfo) do
    if nCostGold >= tbInfo.Cost then
      szRedBagId = tbInfo.RedBagId
    else
      break
    end
  end
  if szRedBagId then
    return Kin.tbRedBagEvents[szRedBagId]
  end
end
function Kin:GetAuctionItemMaxCount(nItemId)
  return self.tbAuctionSetting[nItemId] and self.tbAuctionSetting[nItemId].MaxItemCount or 1
end
function Kin:GetAuctionItemPrice(nItemId)
  local tbItemInfo = self.tbAuctionSetting[nItemId]
  if not tbItemInfo then
    Log("ERROR:Auction:GetItemPrice:", nItemId)
    Log(debug.traceback())
    return 0
  end
  local nRealPrice = tbItemInfo.OrgPrice
  for _, tbPriceInfo in ipairs(tbItemInfo.tbTimePrice) do
    local nPrice, szTimeFrame = unpack(tbPriceInfo)
    if GetTimeFrameState(szTimeFrame) ~= 1 then
      break
    end
    nRealPrice = nPrice
  end
  return nRealPrice
end
function Kin:GetAuctionMaxPriceRate(nItemId)
  local nBidOverRate = Kin.AuctionDef.nBidOverRate
  local tbItemInfo = self.tbAuctionSetting[nItemId]
  if not tbItemInfo then
    return nBidOverRate
  end
  for _, tbMaxRateInfo in ipairs(tbItemInfo.tbTimeMaxPriceRate) do
    local nMaxRate, szTimeFrame = unpack(tbMaxRateInfo)
    if GetTimeFrameState(szTimeFrame) ~= 1 then
      break
    end
    nBidOverRate = nMaxRate
  end
  return nBidOverRate
end
function Kin:GetAuctionItemRealPrice(nItemId, nOrgPrice, nMaxPrice)
  if nMaxPrice <= nOrgPrice then
    return nMaxPrice * Kin.AuctionDef.nRecycleRate
  end
  return nOrgPrice
end
function Kin:AuctionGetItemType(nItemId)
  return self.tbAuctionSetting[nItemId] and self.tbAuctionSetting[nItemId].TypeName or "null"
end
function Kin:CalculateAuctionBonusCount(szAuctionType, nTotalBaseGold, nPlayerCount)
  if not AuctionDef.tbSpecialBonusType[szAuctionType] then
    return nPlayerCount
  end
  for _, tbRule in ipairs(AuctionDef.tbSpecialBonusRule) do
    if nTotalBaseGold > tbRule.nTotalBaseGold then
      nPlayerCount = math.max(nPlayerCount, tbRule.nMinPlayer)
    end
  end
  return nPlayerCount
end
function Kin:AuctionGetMinBonusPrice(szAuctionType)
  return AuctionDef.tbMinBonusForPlayer[szAuctionType] or AuctionDef.tbMinBonusForPlayer.Default
end
