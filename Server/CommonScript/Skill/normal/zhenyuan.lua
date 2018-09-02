
local tb    = {
	zhenyuan_1= --冰清玉润
    { 
		lifecurmax_p={{{1,10},{7,22},{8,25}}},
		autoskill={100,{{1,1},{10,10}}},
		userdesc_101={{{1,15*60},{3,15*50},{8,15*40}}},				--假描述，触发间隔，实际触发间隔查看aotuskill.tab中的清技能CD
		skill_statetime={{{1,-1},{10,-1}}},
    },
	zhenyuan_1_child=  --冰清玉润_子
    { 
		allfactionskill_cd={{{1,-15*60},{10,-15*60}}},		--减少主动技能CD时间
		skill_statetime={1},
    },
    zhenyuan_2 = --穆如清风
    { 
		enhance_final_damage_p={{{1,10},{7,22},{8,25}}},
		ignoreattackontime={{{1,15*60},{3,15*50},{8,15*40}},{{1,15*0.5},{2,15*0.5},{3,15*0.6},{5,15*0.6},{6,15*0.7},{7,15*0.8},{8,15*1}},1},		--每间隔多少秒，闪避多少秒攻击，闪避编号（因为逍遥也有这个属性，填编号才能让技能同时生效）
		skill_statetime={{{1,-1},{10,-1}}},
    },
    zhenyuan_3 = --逆水行舟
    { 
		enhance_final_damage_p={{{1,10},{7,22},{8,25}}},
		autoskill={101,{{1,1},{10,10}}},
		skill_statetime={{{1,-1},{10,-1}}},
		userdesc_000={3805},	
    },
    zhenyuan_3_child = --逆水行舟_子
    { 
		ignore_series_state={},	
		ignore_abnor_state={},
		userdesc_101={{{1,15*50},{3,15*40},{8,15*30}}}, 			--假描述，实际触发间隔需对应autoskill.tab中的免疫状态
		skill_statetime={{{1,15*1},{3,15*1},{4,15*1.2},{6,15*1.2},{7,15*1.3},{8,15*1.5}}},
    },
    zhenyuan_4 = --天地归心
    { 
		enhance_final_damage_p={{{1,10},{7,22},{8,25}}},				--最终攻击放大%
		attackrate_p={{{1,20},{6,30},{7,35},{8,40}}},					--基础命中
		deadlystrike_p={{{1,20},{6,30},{7,35},{8,40}}},					--基础会心
		defense_p={{{1,20},{6,30},{7,35},{8,40}}},						--基础闪避
		all_series_resist_p={{{1,20},{6,30},{7,35},{8,40}}},			--基础全抗
		skill_statetime={{{1,-1},{10,-1}}},	
    },
    zhenyuan_5 = --铜肤铁骨
    { 
		lifecurmax_p={{{1,10},{7,22},{8,25}}},
		reduce_final_damage_p={{{1,5},{4,8},{6,12},{7,13},{8,15}}},
		skill_statetime={{{1,-1},{10,-1}}},
    },
}

FightSkill:AddMagicData(tb)