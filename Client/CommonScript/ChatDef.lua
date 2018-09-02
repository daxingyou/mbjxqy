Require("CommonScript/DegreeCtrl.lua")
ChatMgr.ChannelType = {
  Public = 1,
  Color = 2,
  Map = 3,
  Team = 4,
  Kin = 5,
  Private = 6,
  Nearby = 7,
  Friend = 8,
  System = 9,
  Cross = 10
}
ChatMgr.SystemMsgType = {
  System = 1,
  Tip = 2,
  TimeTips = 3,
  Kin = 4,
  Team = 5,
  Boss = 6,
  Friend = 7
}
ChatMgr.LinkType = {
  None = 0,
  Item = 1,
  Position = 2,
  Partner = 3,
  Team = 4,
  Achievement = 5,
  LuaPacker = 6,
  KinDrink = 7,
  KinQuestion = 8,
  Commerce = 9,
  KinRedBag = 10,
  OpenUrl = 11,
  OpenWnd = 12,
  HyperText = 13,
  OpenUrlLunTanJiuLou = 14
}
ChatMgr.ForbidType = {
  None = 0,
  Public = 1,
  All = 2
}
ChatMgr.RoomType = {
  emKin = 0,
  emTeam = 1,
  emCrossHost = 2
}
ChatMgr.RoomPrivilege = {
  emNone = 0,
  emSpeaker = 1,
  emAudience = 2
}
ChatMgr.ChatCrossAuthType = {emNone = 0, emHost = 1}
ChatMgr.szNamePrefixPowerTop10TimeFrame = "OpenDay2D"
ChatMgr.nSpeakerColorItemId = 1413
ChatMgr.nSpeakerPublicItemId = 1412
ChatMgr.nSpeakerCrossItemId = 3571
ChatMgr.nChannelMail = 97
ChatMgr.nChannelFriendName = 98
ChatMgr.nChannelBlackList = 99
ChatMgr.nDynChannelBegin = 100
ChatMgr.nMaxMsgLengh = 50
ChatMgr.nMaxBubbleMsgLen = 40
ChatMgr.nBubbleLastingTime = 6
ChatMgr.nMaxSystemMsgLength = 90
ChatMgr.nMaxChannelMsgCount = 300
ChatMgr.nMaxMsgHistoryCount = 20
if version_vn or version_th then
  ChatMgr.nMaxMsgLengh = 100
end
ChatMgr.nColorMsgFreshTime = 9
ChatMgr.COLOR_MSG_USER_VALUE_GROUP = 21
ChatMgr.COLOR_MSG_USER_VALUE_KEY = 1
ChatMgr.CHAT_BACKGROUND_USERVAULE_GROUP = 21
ChatMgr.CHAT_BACKGROUND_USERVAULE_HEAD = 2
ChatMgr.CHAT_BACKGROUND_USERVAULE_CHAT = 3
ChatMgr.CHAT_NAME_PREFIRX_SAVE_GROUP = 126
ChatMgr.CHAT_NAME_PREFIRX_MAX_KEY = 200
ChatMgr.CHAT_NAME_PREFIRX_CURRUNT_SELECT_KEY = 255
ChatMgr.CHAT_CROSS_AUTH_GROUP = 21
ChatMgr.CHAT_CROSS_AUTH_KEY = 4
ChatMgr.CHAT_CROSS_HOST_FOLLOW_GROUP = 21
ChatMgr.CHAT_CROSS_HOST_FOLLOW_START = 5
ChatMgr.CHAT_CROSS_HOST_FOLLOW_END = 44
ChatMgr.MAX_CHAT_EMOTION_LEN = 71
ChatMgr.MAX_VOICE_TIME_DEFAULT = 15000
ChatMgr.tbMaxVoiceTimes = {
  [ChatMgr.ChannelType.Kin] = {
    tbCareer = {
      [Kin.Def.Career_Mascot] = 30000
    },
    tbVip = {
      [11] = 30000
    }
  }
}
ChatMgr.tbSpcialUserEmotion = {
  [101] = true,
  [102] = true,
  [103] = true,
  [104] = true,
  [105] = true,
  [106] = true,
  [971] = true,
  [940] = true
}
ChatMgr.EmotionLink = {}
ChatMgr.DiceEmtionMap = {
  "#101",
  "#102",
  "#103",
  "#104",
  "#105",
  "#106"
}
ChatMgr.ChannelEmotion = {
  [ChatMgr.ChannelType.Color] = "#83",
  [ChatMgr.ChannelType.System] = "#84",
  [ChatMgr.ChannelType.Kin] = "#88",
  [ChatMgr.ChannelType.Team] = "#85",
  [ChatMgr.ChannelType.Public] = "#87",
  [ChatMgr.ChannelType.Nearby] = "#109",
  [ChatMgr.ChannelType.Friend] = "#110",
  SystemMsgTip = "#86"
}
ChatMgr.SystemTypeChannel = {
  [ChatMgr.SystemMsgType.System] = ChatMgr.ChannelType.System,
  [ChatMgr.SystemMsgType.Tip] = ChatMgr.ChannelType.System,
  [ChatMgr.SystemMsgType.TimeTips] = ChatMgr.ChannelType.System,
  [ChatMgr.SystemMsgType.Boss] = ChatMgr.ChannelType.Kin,
  [ChatMgr.SystemMsgType.Kin] = ChatMgr.ChannelType.Kin,
  [ChatMgr.SystemMsgType.Team] = ChatMgr.ChannelType.Team,
  [ChatMgr.SystemMsgType.Friend] = ChatMgr.ChannelType.Friend
}
ChatMgr.NeedZoneFileServer = {
  [ChatMgr.ChannelType.Nearby] = {
    [3001] = true,
    [3002] = true
  },
  [ChatMgr.ChannelType.Team] = {
    [3001] = true,
    [3002] = true
  }
}
ChatMgr.DynamicColor = "ff940a"
ChatMgr.VOICE_END_DELAY = 2
function ChatMgr:LoadNamePrefixSetting()
  local tbSetting = LoadTabFile("Setting/Chat/ChatNamePrefix.tab", "dssds", "NamePrefixId", {
    "NamePrefixId",
    "Name",
    "Emotion",
    "Sort",
    "Desc"
  })
  local tbSortTable = {}
  self.NamePrefixType = {}
  for nPrefixId, tbInfo in pairs(tbSetting) do
    assert(nPrefixId <= ChatMgr.CHAT_NAME_PREFIRX_MAX_KEY)
    self.NamePrefixType[tbInfo.Name] = nPrefixId
    table.insert(tbSortTable, tbInfo)
  end
  if MODULE_GAMESERVER then
    table.sort(tbSortTable, function(a, b)
      return a.Sort < b.Sort
    end)
    for _, tbInfo in ipairs(tbSortTable) do
      KChat.AddNamePrefix(tbInfo.NamePrefixId, tbInfo.Name)
    end
  end
  self.tbNamePrefixSetting = tbSetting
end
ChatMgr:LoadNamePrefixSetting()
function ChatMgr:GetNamePrefixInfo(nPrefixId)
  return self.tbNamePrefixSetting[nPrefixId] or {}
end
function ChatMgr:GetSystemMsgChannel(nSystemType)
  return ChatMgr.SystemTypeChannel[nSystemType]
end
function ChatMgr:GetNamePrefixCurrentSelect(pPlayer)
  return pPlayer.GetUserValue(ChatMgr.CHAT_NAME_PREFIRX_SAVE_GROUP, ChatMgr.CHAT_NAME_PREFIRX_CURRUNT_SELECT_KEY)
end
function ChatMgr:GetNamePrefixExpireTimeById(pPlayer, nPrefixId)
  return pPlayer.GetUserValue(ChatMgr.CHAT_NAME_PREFIRX_SAVE_GROUP, nPrefixId)
end
ChatMgr.CHAT_COUNT_USER_VALUE_GROUP = 50
ChatMgr.PUBLIC_CHAT_USER_VALUE_KEY = 3
ChatMgr.CROSS_CHAT_USER_VALUE_KEY = 6
function ChatMgr:GetPublicChatLeftCount(pPlayer)
  local nLeftCount = pPlayer.GetUserValue(ChatMgr.CHAT_COUNT_USER_VALUE_GROUP, ChatMgr.PUBLIC_CHAT_USER_VALUE_KEY)
  local nLeftDegree = DegreeCtrl:GetDegree(pPlayer, "PublicChatCount")
  return nLeftCount + nLeftDegree
end
function ChatMgr:GetCrossChatLeftCount(pPlayer)
  local nLeftCount = pPlayer.GetUserValue(ChatMgr.CHAT_COUNT_USER_VALUE_GROUP, ChatMgr.CROSS_CHAT_USER_VALUE_KEY)
  local nLeftDegree = DegreeCtrl:GetDegree(pPlayer, "CrossChatCount")
  return nLeftCount + nLeftDegree
end
function ChatMgr:IsCrossHost(pPlayer)
  return pPlayer.GetUserValue(ChatMgr.CHAT_CROSS_AUTH_GROUP, ChatMgr.CHAT_CROSS_AUTH_KEY) == ChatMgr.ChatCrossAuthType.emHost
end
function ChatMgr:GetCrossHostFollowings(pPlayer)
  local tbFollowing = {}
  for key = ChatMgr.CHAT_CROSS_HOST_FOLLOW_START, ChatMgr.CHAT_CROSS_HOST_FOLLOW_END do
    local nHostId = pPlayer.GetUserValue(ChatMgr.CHAT_CROSS_HOST_FOLLOW_GROUP, key)
    if nHostId == 0 then
      break
    end
    table.insert(tbFollowing, nHostId)
  end
  return tbFollowing
end
function ChatMgr:GetCrossHostFollowMap(pPlayer)
  local tbFollowingMap = {}
  for key = ChatMgr.CHAT_CROSS_HOST_FOLLOW_START, ChatMgr.CHAT_CROSS_HOST_FOLLOW_END do
    local nHostId = pPlayer.GetUserValue(ChatMgr.CHAT_CROSS_HOST_FOLLOW_GROUP, key)
    if nHostId == 0 then
      break
    end
    tbFollowingMap[nHostId] = true
  end
  return tbFollowingMap
end
function ChatMgr:GetNamePrefix(nNamePrefix, bInSmall, nChannelId, nFaction, nSendId)
  if nChannelId == ChatMgr.ChannelType.Friend and SwornFriends:IsConnected(nSendId) then
    return bInSmall and "#949" or "#949  "
  end
  if not ChatMgr:CheckNamePrefixAvailable(nNamePrefix) then
    return ""
  end
  if nNamePrefix == ChatMgr.NamePrefixType.FactionMonkey then
    local szMonkeyPrefix = FactionBattle:GetMonkeyNamePrefix(nFaction)
    return bInSmall and szMonkeyPrefix or szMonkeyPrefix .. "  "
  end
  local szPrefix = ChatMgr:GetNamePrefixInfo(nNamePrefix).Emotion or ""
  return bInSmall and szPrefix or szPrefix .. "  "
end
function ChatMgr:CheckNamePrefixAvailable(nNamePrefix)
  if nNamePrefix == ChatMgr.NamePrefixType.PowerTop10 then
    return GetTimeFrameState(ChatMgr.szNamePrefixPowerTop10TimeFrame) == 1
  end
  return true
end
function ChatMgr:LoadActionBQSetting()
  self.tbActionBQSetting = {}
  local tbFileData = Lib:LoadTabFile("Setting/Chat/ChatActionBQ.tab", {
    ChatID = 1,
    ActionID = 1,
    ActionEvent = 1,
    ActionLoop = 1
  })
  for _, tbInfo in pairs(tbFileData) do
    local tbNpcType = Lib:SplitStr(string.gsub(tbInfo.NpcType, "\"", ""), "|")
    for _, szNpcType in pairs(tbNpcType) do
      if not Lib:IsEmptyStr(szNpcType) then
        local nNpcType = tonumber(szNpcType)
        self.tbActionBQSetting[nNpcType] = self.tbActionBQSetting[nNpcType] or {}
        self.tbActionBQSetting[nNpcType][tbInfo.ChatID] = tbInfo
      end
    end
  end
  Log("ChatMgr LoadActionBQSetting")
end
ChatMgr:LoadActionBQSetting()
function ChatMgr:GetActionBQInfo(nNpcType, nChatID)
  local tbTypeInfo = self:GetActionBQType(nNpcType)
  if not tbTypeInfo then
    return
  end
  return tbTypeInfo[nChatID]
end
function ChatMgr:GetActionBQType(nNpcType)
  nNpcType = nNpcType or 0
  local tbInfo = self.tbActionBQSetting[nNpcType]
  if tbInfo then
    return tbInfo
  end
  return self.tbActionBQSetting[0]
end
function ChatMgr:IsCrossHostChannelOpen()
  return true
end
