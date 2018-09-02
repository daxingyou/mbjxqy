
QunYingHui.tbDefInfo = QunYingHui.tbDefInfo or {};
local tbDef = QunYingHui.tbDefInfo;

tbDef.szDegreeDay    = "QunYingHuiDay";
tbDef.nSaveGroupID   = 24;
tbDef.nSaveWinCount  = 5;
tbDef.nSaveTotalJoin = 6;
tbDef.nSaveDayTime   = 7;
tbDef.nSaveLastPK1   = 8;
tbDef.nSaveJiFen     = 9;
tbDef.nSaveDayWin    = 10;





--------下面策划填写--------
tbDef.nUpdateDmgTime       = 1; --每隔多少秒更新伤害
tbDef.nPrepareTempMapID    = 1008; --进入场景的地图
tbDef.fPlayerToNpcDmg      = 0.1; --玩家对Npc的伤害占得比例
tbDef.nGameTempMapID       = 1009; --比赛地图
tbDef.tbPrepareMapPos      =
{
    [1] = {2818, 6770}; --准备地图出生点
    [2] = {2746, 4812};
    [3] = {6996, 6777};
    [4] = {7025, 4638};
};


tbDef.tbGameMapPos         =  --比赛地图出生点
{
    [1] = {2158, 3097},
    [2] = {2164, 1199},
};

tbDef.nMinLevel            = 80; --最少等级
tbDef.nStartTimeMatch      = 3 * 60; --第一次开始匹配的时间
tbDef.nPerTimeMatch        = 2.5 * 60; --每隔多数秒进行匹配
tbDef.fDefWinRate          = 0.5; --默认胜率
tbDef.nMatchPlayerCount    = 2;  --匹配的玩家人数
tbDef.nPrepareGameTime     = 10; --准备时间
tbDef.nFightGameTime       = 100; --战斗时间
tbDef.nPartnerPos          = 4; --使用伙伴的位置
tbDef.nGameEndKickOutMapTime = 6; --比赛结束踢出地图的时间
tbDef.nWinCountNotice      = 6; --胜利多少场公告
tbDef.nTotalMatchCount     = 10; --总共匹配多场
tbDef.szWorldNotice        = "「%s」在群英會中獲得了%s場全勝！"
tbDef.szAchievementKey     = "QunYingHui_1";
tbDef.nWinJiFen            = 2; --胜利的积分
tbDef.nFailJiFen           = 1; --失败的积分


tbDef.MailConent = "恭喜你在今天的群英會中，累計達到 [FFFE0D]%s[-] 積分，對應獲得以下獎勵";
tbDef.nTotalExtRate = 10000;
tbDef.szWorldExtNotice = "「%s」在群英會中獲得了%s，真是鴻運當頭啊";