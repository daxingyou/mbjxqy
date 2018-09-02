Kin.Snowman = Kin.Snowman or {}
local Snowman = Kin.Snowman
Snowman.JOIN_LEVEL = 1
Snowman.tbSnowmanNpcPos = {4800, 7250}
Snowman.tbSnowmanNpcId = {
  2206,
  2207,
  2208,
  2209,
  2210,
  2211,
  2212
}
Snowman.tbSnowmanLevel = {
  999,
  2499,
  4499,
  6999,
  9999,
  14999,
  15000
}
Snowman.tbColor = {
  "白",
  "绿",
  "蓝",
  "紫",
  "粉",
  "橙",
  "金"
}
Snowman.nSnowflakeItemId = 3943
Snowman.tbAnswerWrongBegin = 2
Snowman.tbAnswerWrongEnd = 4
Snowman.tbAnswerRightBegin = 4
Snowman.tbAnswerRightEnd = 6
Snowman.tbDayAward = {
  {
    "item",
    3533,
    1
  }
}
Snowman.nSnowFlakeExp = 20000
Snowman.tbMakinkAward = {
  [2] = {
    {
      "item",
      3961,
      1
    }
  },
  [3] = {
    {
      "item",
      3961,
      1
    }
  },
  [4] = {
    {
      "item",
      3961,
      2
    }
  },
  [5] = {
    {
      "item",
      3961,
      2
    }
  },
  [6] = {
    {
      "item",
      3961,
      3
    }
  },
  [7] = {
    {
      "item",
      3961,
      4
    }
  }
}
Snowman.nFireWorksSkill = 2315
Snowman.nSnowmanDir = 16
Snowman.Process_Type = {MAKING = 1}
Snowman.nBoxOpenCount = 20
Snowman.SAVE_ONHOOK_GROUP = 123
Snowman.Update_Time = 4
Snowman.Award_Count = 5
Snowman.nTrueEndTime = Lib:ParseDateTime("2017-3-16")
assert(#Snowman.tbSnowmanNpcId == #Snowman.tbSnowmanLevel, "[Snowman] Setting Error")
function Snowman:GetLevelBySnowflake(nSnowflake)
  nSnowflake = nSnowflake or 0
  local nSnowmanLevel = 1
  for nLevel, nCount in ipairs(self.tbSnowmanLevel) do
    nSnowmanLevel = nLevel
    if nCount >= nSnowflake then
      break
    end
  end
  return nSnowmanLevel, self.tbSnowmanNpcId[nSnowmanLevel]
end
function Snowman:IsRunning()
  return Activity:__IsActInProcessByType("SnowmanAct")
end
function Snowman:CheckLevel(pPlayer)
  return pPlayer.nLevel >= self.JOIN_LEVEL
end
function Snowman:MakeWish()
  Ui:OpenWindow("WishingPanel")
end
function Snowman:CheckAlive()
  return GetTime() < self.nTrueEndTime
end
