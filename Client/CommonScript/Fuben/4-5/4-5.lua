local tbFubenSetting = {}
Fuben:SetFubenSetting(41, tbFubenSetting)
tbFubenSetting.szFubenClass = "PersonalFubenBase"
tbFubenSetting.szName = "测试副本"
tbFubenSetting.szNpcPointFile = "Setting/Fuben/PersonalFuben/4_5/NpcPos.tab"
tbFubenSetting.szPathFile = "Setting/Fuben/PersonalFuben/4_5/NpcPath.tab"
tbFubenSetting.tbBeginPoint = {2559, 2789}
tbFubenSetting.nStartDir = 8
tbFubenSetting.ANIMATION = {
  [1] = "Scenes/Maps/yw_luoyegu/Main Camera.controller"
}
tbFubenSetting.NPC = {
  [1] = {
    nTemplate = 524,
    nLevel = 40,
    nSeries = -1
  },
  [2] = {
    nTemplate = 658,
    nLevel = 40,
    nSeries = -1
  },
  [3] = {
    nTemplate = 747,
    nLevel = 42,
    nSeries = 0
  },
  [4] = {
    nTemplate = 1373,
    nLevel = 42,
    nSeries = 0
  },
  [5] = {
    nTemplate = 1226,
    nLevel = 42,
    nSeries = 0
  },
  [6] = {
    nTemplate = 853,
    nLevel = 42,
    nSeries = 0
  },
  [9] = {
    nTemplate = 104,
    nLevel = -1,
    nSeries = 0
  }
}
tbFubenSetting.LOCK = {
  [1] = {
    nTime = 0,
    nNum = 1,
    tbPrelock = {},
    tbStartEvent = {
      {
        "RaiseEvent",
        "ShowTaskDialog",
        1,
        1053,
        false
      }
    },
    tbUnLockEvent = {
      {
        "SetShowTime",
        2
      }
    }
  },
  [2] = {
    nTime = 600,
    nNum = 0,
    tbPrelock = {1},
    tbStartEvent = {
      {
        "RaiseEvent",
        "RegisterTimeoutLock"
      }
    },
    tbUnLockEvent = {
      {"GameLost"}
    }
  },
  [3] = {
    nTime = 0,
    nNum = 1,
    tbPrelock = {1},
    tbStartEvent = {
      {
        "ChangeFightState",
        1
      },
      {
        "TrapUnlock",
        "trap1",
        3
      },
      {
        "SetTargetPos",
        2924,
        3222
      },
      {
        "AddNpc",
        9,
        1,
        0,
        "wall",
        "men1",
        false,
        32
      }
    },
    tbUnLockEvent = {
      {
        "ClearTargetPos"
      }
    }
  },
  [4] = {
    nTime = 0,
    nNum = 8,
    tbPrelock = {3},
    tbStartEvent = {
      {
        "AddNpc",
        2,
        4,
        4,
        "gw",
        "guaiwu1",
        false,
        0,
        0.5,
        9005,
        0.5
      },
      {
        "AddNpc",
        1,
        4,
        4,
        "gw",
        "guaiwu2",
        false,
        0,
        2,
        0,
        0
      },
      {
        "BlackMsg",
        "击败忽然出现的江湖人士！"
      }
    },
    tbUnLockEvent = {
      {
        "OpenDynamicObstacle",
        "obs1"
      },
      {"DoDeath", "wall"}
    }
  },
  [5] = {
    nTime = 0,
    nNum = 1,
    tbPrelock = {4},
    tbStartEvent = {
      {
        "TrapUnlock",
        "trap2",
        5
      },
      {
        "SetTargetPos",
        5420,
        3266
      },
      {
        "BlackMsg",
        "唉，想不到此处已被江湖草莽占据！"
      }
    },
    tbUnLockEvent = {
      {
        "ClearTargetPos"
      },
      {
        "AddNpc",
        9,
        1,
        0,
        "wall",
        "men2",
        false,
        16
      }
    }
  },
  [6] = {
    nTime = 0,
    nNum = 8,
    tbPrelock = {5},
    tbStartEvent = {
      {
        "AddNpc",
        2,
        4,
        6,
        "gw",
        "guaiwu3",
        false,
        0,
        0.5,
        9005,
        0.5
      },
      {
        "AddNpc",
        1,
        4,
        6,
        "gw",
        "guaiwu4",
        false,
        0,
        2,
        0,
        0
      }
    },
    tbUnLockEvent = {
      {
        "OpenDynamicObstacle",
        "obs2"
      },
      {"DoDeath", "wall"}
    }
  },
  [7] = {
    nTime = 0,
    nNum = 1,
    tbPrelock = {6},
    tbStartEvent = {
      {
        "TrapUnlock",
        "trap3",
        7
      },
      {
        "SetTargetPos",
        6238,
        6142
      }
    },
    tbUnLockEvent = {
      {
        "ClearTargetPos"
      },
      {
        "AddNpc",
        9,
        1,
        0,
        "wall",
        "men3",
        false,
        30
      }
    }
  },
  [8] = {
    nTime = 0,
    nNum = 8,
    tbPrelock = {7},
    tbStartEvent = {
      {
        "BlackMsg",
        "胆大妄为的宵小之徒！"
      },
      {
        "AddNpc",
        1,
        4,
        8,
        "gw",
        "guaiwu5",
        false,
        0,
        0,
        0,
        0
      },
      {
        "AddNpc",
        1,
        4,
        8,
        "gw",
        "guaiwu6",
        false,
        0,
        2,
        0,
        0
      }
    },
    tbUnLockEvent = {
      {
        "OpenDynamicObstacle",
        "obs3"
      },
      {"DoDeath", "wall"},
      {"DoDeath", "gw"}
    }
  },
  [9] = {
    nTime = 0,
    nNum = 1,
    tbPrelock = {8},
    tbStartEvent = {
      {
        "BlackMsg",
        "前方应该就是他二人打斗之处！"
      },
      {
        "TrapUnlock",
        "trap4",
        9
      },
      {
        "SetTargetPos",
        3566,
        5666
      }
    },
    tbUnLockEvent = {
      {
        "ClearTargetPos"
      }
    }
  },
  [10] = {
    nTime = 0,
    nNum = 1,
    tbPrelock = {9},
    tbStartEvent = {
      {
        "MoveCameraToPosition",
        10,
        1.5,
        2845,
        5850,
        5
      },
      {
        "AddNpc",
        3,
        1,
        0,
        "npc",
        "dugujian",
        false,
        32,
        0,
        0,
        0
      },
      {
        "AddNpc",
        4,
        1,
        0,
        "npc1",
        "zhangrumeng",
        false,
        64,
        0,
        0,
        0
      },
      {
        "SetNpcBloodVisable",
        "npc",
        false,
        0
      },
      {
        "SetNpcBloodVisable",
        "npc1",
        false,
        0
      },
      {
        "SetForbiddenOperation",
        true
      },
      {
        "SetAllUiVisiable",
        false
      }
    },
    tbUnLockEvent = {}
  },
  [11] = {
    nTime = 0,
    nNum = 1,
    tbPrelock = {10},
    tbStartEvent = {
      {
        "RaiseEvent",
        "ShowTaskDialog",
        11,
        1054,
        false
      }
    },
    tbUnLockEvent = {
      {
        "SetForbiddenOperation",
        true
      }
    }
  },
  [12] = {
    nTime = 3,
    nNum = 0,
    tbPrelock = {11},
    tbStartEvent = {
      {
        "CastSkillCycle",
        "cycle",
        "npc",
        1,
        2380,
        1,
        2710,
        5650
      },
      {
        "CastSkillCycle",
        "cycle1",
        "npc1",
        1,
        2383,
        1,
        2825,
        6059
      },
      {
        "DoCommonAct",
        "npc",
        16,
        0,
        1,
        0
      },
      {
        "DoCommonAct",
        "npc1",
        16,
        0,
        1,
        0
      }
    },
    tbUnLockEvent = {}
  },
  [13] = {
    nTime = 0,
    nNum = 1,
    tbPrelock = {12},
    tbStartEvent = {
      {"CloseCycle", "cycle"},
      {"CloseCycle", "cycle1"},
      {
        "DoCommonAct",
        "npc1",
        36,
        0,
        1,
        0
      },
      {
        "DoCommonAct",
        "npc",
        1,
        0,
        0,
        0
      },
      {
        "ChangeNpcAi",
        "npc",
        "Move",
        "path1",
        13,
        1,
        1,
        0,
        0
      }
    },
    tbUnLockEvent = {}
  },
  [14] = {
    nTime = 2,
    nNum = 0,
    tbPrelock = {13},
    tbStartEvent = {
      {
        "NpcBubbleTalk",
        "npc",
        "张大哥，小弟得罪了。",
        4,
        0,
        1
      },
      {
        "NpcBubbleTalk",
        "npc1",
        "好……好剑法！张某佩……佩服！",
        4,
        2,
        1
      }
    },
    tbUnLockEvent = {}
  },
  [15] = {
    nTime = 1,
    nNum = 0,
    tbPrelock = {14},
    tbStartEvent = {
      {
        "AddNpc",
        5,
        1,
        0,
        "npc2",
        "nangongcaihong",
        false,
        32,
        0.5,
        9005,
        0.5
      },
      {
        "AddNpc",
        6,
        1,
        0,
        "npc3",
        "zhanglinxin",
        false,
        40,
        0,
        0,
        0
      },
      {
        "SetNpcBloodVisable",
        "npc2",
        false,
        0.6
      },
      {
        "SetNpcBloodVisable",
        "npc3",
        false,
        0
      },
      {
        "ChangeNpcAi",
        "npc3",
        "Move",
        "path2",
        0,
        1,
        1,
        0,
        0
      },
      {
        "NpcBubbleTalk",
        "npc3",
        "不要！",
        4,
        0.2,
        1
      }
    },
    tbUnLockEvent = {}
  },
  [16] = {
    nTime = 0.5,
    nNum = 0,
    tbPrelock = {15},
    tbStartEvent = {
      {
        "DoCommonAct",
        "npc2",
        16,
        0,
        0,
        0
      },
      {
        "CastSkill",
        "npc2",
        53,
        1,
        2762,
        5829
      }
    },
    tbUnLockEvent = {
      {
        "DoCommonAct",
        "npc",
        36,
        0,
        0,
        0
      },
      {
        "NpcBubbleTalk",
        "npc",
        "啊！",
        3,
        0,
        1
      }
    }
  },
  [17] = {
    nTime = 1,
    nNum = 0,
    tbPrelock = {16},
    tbStartEvent = {},
    tbUnLockEvent = {
      {
        "DoCommonAct",
        "npc",
        37,
        0,
        1,
        0
      }
    }
  },
  [18] = {
    nTime = 2,
    nNum = 0,
    tbPrelock = {17},
    tbStartEvent = {},
    tbUnLockEvent = {}
  },
  [19] = {
    nTime = 5,
    nNum = 0,
    tbPrelock = {18},
    tbStartEvent = {
      {
        "OpenWindowAutoClose",
        "StoryBlackBg",
        "南宫彩虹忽然出现将独孤剑击晕在地，然后救走了张如梦......",
        nil,
        2,
        2,
        1
      }
    },
    tbUnLockEvent = {
      {
        "SetForbiddenOperation",
        false
      },
      {
        "SetAllUiVisiable",
        true
      },
      {"GameWin"}
    }
  }
}
