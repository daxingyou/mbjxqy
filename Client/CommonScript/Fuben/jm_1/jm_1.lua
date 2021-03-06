local tbFubenSetting = {}
Fuben:SetFubenSetting(6001, tbFubenSetting)
tbFubenSetting.szFubenClass = "PersonalFubenBase"
tbFubenSetting.szNpcPointFile = "Setting/Fuben/PersonalFuben/jm_1/NpcPos.tab"
tbFubenSetting.tbBeginPoint = {3310, 4250}
tbFubenSetting.nStartDir = 48
tbFubenSetting.NPC = {
  [1] = {
    nTemplate = 2506,
    nLevel = -1,
    nSeries = 0
  },
  [2] = {
    nTemplate = 2507,
    nLevel = -1,
    nSeries = 0
  }
}
tbFubenSetting.LOCK = {
  [1] = {
    nTime = 1,
    nNum = 0,
    tbPrelock = {},
    tbStartEvent = {
      {
        "BlackMsg",
        "此地貌似有些蹊跷"
      }
    },
    tbUnLockEvent = {
      {
        "SetFubenProgress",
        10,
        "一探究竟"
      },
      {
        "SetTargetPos",
        2261,
        4615
      }
    }
  },
  [2] = {
    nTime = 0,
    nNum = 1,
    tbPrelock = {1},
    tbStartEvent = {
      {
        "TrapUnlock",
        "TrapLock1",
        2
      }
    },
    tbUnLockEvent = {
      {
        "BlackMsg",
        "此处布置竟暗合易理"
      },
      {
        "AddNpc",
        1,
        1,
        0,
        "Circle_1",
        "qiyu_1",
        false,
        0,
        0,
        0,
        0
      },
      {
        "NpcFindEnemyUnlock",
        "Circle_1",
        3,
        0
      },
      {
        "SetFubenProgress",
        20,
        "踏入大有位"
      }
    }
  },
  [3] = {
    nTime = 0,
    nNum = 1,
    tbPrelock = {2},
    tbStartEvent = {},
    tbUnLockEvent = {
      {"DelNpc", "Circle_1"},
      {
        "SetFubenProgress",
        40,
        "踏入噬嗑位"
      },
      {
        "AddNpc",
        1,
        1,
        0,
        "Circle_2",
        "qiyu_2",
        false,
        0,
        0,
        0,
        0
      },
      {
        "NpcFindEnemyUnlock",
        "Circle_2",
        4,
        0
      }
    }
  },
  [4] = {
    nTime = 0,
    nNum = 1,
    tbPrelock = {3},
    tbStartEvent = {},
    tbUnLockEvent = {
      {"DelNpc", "Circle_2"},
      {
        "SetFubenProgress",
        60,
        "踏入未济位"
      },
      {
        "AddNpc",
        1,
        1,
        0,
        "Circle_3",
        "qiyu_3",
        false,
        0,
        0,
        0,
        0
      },
      {
        "NpcFindEnemyUnlock",
        "Circle_3",
        5,
        0
      }
    }
  },
  [5] = {
    nTime = 0,
    nNum = 1,
    tbPrelock = {4},
    tbStartEvent = {},
    tbUnLockEvent = {
      {"DelNpc", "Circle_3"},
      {
        "SetFubenProgress",
        80,
        "踏入同人位"
      },
      {
        "AddNpc",
        1,
        1,
        0,
        "Circle_4",
        "qiyu_4",
        false,
        0,
        0,
        0,
        0
      },
      {
        "NpcFindEnemyUnlock",
        "Circle_4",
        6,
        0
      }
    }
  },
  [6] = {
    nTime = 0,
    nNum = 1,
    tbPrelock = {5},
    tbStartEvent = {},
    tbUnLockEvent = {
      {"DelNpc", "Circle_4"},
      {
        "BlackMsg",
        "果然有所发现！"
      },
      {
        "AddNpc",
        2,
        1,
        7,
        "shibei",
        "qiyu_5",
        false,
        0,
        1,
        9011,
        1
      },
      {
        "SetFubenProgress",
        90,
        "调查石碑"
      }
    }
  },
  [7] = {
    nTime = 0,
    nNum = 1,
    tbPrelock = {6},
    tbStartEvent = {},
    tbUnLockEvent = {
      {
        "OpenWindowAutoClose",
        "JingMaiMapPanel"
      },
      {
        "RaiseEvent",
        "ShowTaskDialog",
        9,
        3207,
        true,
        1
      }
    }
  },
  [9] = {
    nTime = 0,
    nNum = 1,
    tbPrelock = {7},
    tbStartEvent = {},
    tbUnLockEvent = {
      {
        "CloseWindow",
        "JingMaiMapPanel"
      },
      {
        "SetFubenProgress",
        100,
        "离开山洞"
      },
      {"GameWin"}
    }
  },
  [18] = {
    nTime = 600,
    nNum = 0,
    tbPrelock = {1},
    tbStartEvent = {
      {
        "RaiseEvent",
        "RegisterTimeoutLock"
      },
      {
        "SetShowTime",
        18
      }
    },
    tbUnLockEvent = {
      {"GameLost"}
    }
  }
}
