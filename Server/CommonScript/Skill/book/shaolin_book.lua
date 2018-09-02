
local tb    = {
    book_sl_forxlg = --降龙棍
    {
		add_deadlystrike_v1={266,{{1,50},{10,100}}},  		--增加会心一击
		userdesc_101={266,{{1,50},{10,100}}},  				--描述用：增加会心一击
		add_hurt_r={266,{{1,5},{10,20}}},  				--增加受伤几率
		userdesc_102={266,{{1,5},{10,20}}},  				--描述用：增加受伤几率
		skill_statetime={{{1,-1},{10,-1}}},
    },
    book_sl_fordljgz = --大力金刚指
    {
		addpowerwhencol={268,{{1,10},{10,40}},{{1,50},{10,100}}},				--技能ID，每次增加%，最大增加%
		addms_hittotal_c1={268,{{1,1},{10,3}}},  								--增加子弹最大攻击人数
		userdesc_101={268,{{1,1},{10,3}}},  									--描述用：增加子弹最大攻击人数
		add_hurt_r={268,{{1,5},{10,10}}},  									--增加受伤几率
		userdesc_102={268,{{1,5},{10,10}}},  									--描述用：增加受伤几率
		add_hurt_t={268,{{1,15*1},{10,15*1}}},  								--增加受伤时间
		userdesc_103={268,{{1,15*1},{10,15*1}}},  								--描述用：增加受伤时间
		skill_statetime={{{1,-1},{10,-1}}},
    },
    book_sl_forjgfm = --金刚伏魔
    { 
		addstartskill={270,295,{{1,1},{10,10}}},
		userdesc_000={295},
		skill_statetime={{{1,-1},{10,-1}}},		
    },
    book_sl_forjgfm_child = --金刚伏魔_子
    { 
		defuse_damage={{{1,20},{10,100}},50},					--抵御点数，最多不超过原伤害%
		recover_life_v={{{1,100},{10,500}},15*5},
		skill_statetime={{{1,15*15},{10,15*15}}},
    },
    book_sl_forseql = --十二擒龙手
    { 
		addstartskill={272,297,{{1,1},{10,10}}},
		userdesc_000={297},
		skill_statetime={{{1,-1},{10,-1}}},		
    },
    book_sl_forseql_child = --十二擒龙手子
    { 
		state_forceatk_attack={{{1,50},{10,90}},{{1,15*1.5},{10,15*3.5}}},					--抵御点数，最多不超过原伤害%
		missile_hitcount={0,0,6},
    },
    book_sl_mid_forxlg = --中级降龙棍
    {
		add_usebasedmg_p1={266,{{1,0},{10,0},{11,5},{15,30}}},		--增加降龙棍攻击力
		userdesc_103={266,{{1,0},{10,0},{11,5},{15,30}}},			--描述用：增加降龙棍攻击力
		add_deadlystrike_v1={266,{{1,50},{10,100},{15,200}}},  		--增加忽闪
		userdesc_101={266,{{1,50},{10,100},{15,200}}},  			--描述用：增加忽闪
		add_hurt_r={266,{{1,5},{10,20},{15,25}}},  				--增加受伤几率
		userdesc_102={266,{{1,5},{10,20},{15,25}}},  				--描述用：增加受伤几率
		skill_statetime={{{1,-1},{10,-1}}},
    },
    book_sl_mid_fordljgz = --中级大力金刚指
    {
		add_usebasedmg_p1={268,{{1,0},{10,0},{11,10},{15,40}}},							--增加大力金刚指攻击力
		userdesc_104={268,{{1,0},{10,0},{11,10},{15,40}}},								--描述用：增加大力金刚指攻击力		
		addpowerwhencol={268,{{1,10},{10,40},{15,60}},{{1,50},{10,100},{15,150}}},		--技能ID，每次增加%，最大增加%
		addms_hittotal_c1={268,{{1,1},{10,3},{15,4}}},  								--增加子弹最大攻击人数
		userdesc_101={268,{{1,1},{10,3},{15,4}}},  										--描述用：增加子弹最大攻击人数
		add_hurt_r={268,{{1,5},{10,10},{15,15}}},  									--增加受伤几率
		userdesc_102={268,{{1,5},{10,10},{15,15}}},  									--描述用：增加受伤几率
		add_hurt_t={268,{{1,15*1},{10,15*1},{15,15*1.5}}},  								--增加受伤时间
		userdesc_103={268,{{1,15*1},{10,15*1},{15,15*1.5}}},  							--描述用：增加受伤时间
		skill_statetime={{{1,-1},{10,-1}}},
    },
    book_sl_mid_forjgfm = --中级金刚伏魔
    { 
		add_state_time1={270,{{1,0},{10,0},{11,15*1},{15,15*5}}},  			--增加金刚伏魔持续时间
		userdesc_101={270,{{1,0},{10,0},{11,15*1},{15,15*5}}}, 				--描述用：增加金刚伏魔持续时间
		addstartskill={270,2294,{{1,1},{10,10},{15,15}}},
		userdesc_000={2294},
		skill_statetime={{{1,-1},{10,-1}}},		
    },
    book_sl_mid_forjgfm_child = --中级金刚伏魔_子
    { 
		defuse_damage={{{1,20},{10,100},{15,150}},50},					--抵御点数，最多不超过原伤害%
		recover_life_v={{{1,100},{10,500},{15,600}},15*5},
		skill_statetime={{{1,15*15},{10,15*15},{11,15*16},{15,15*20}}},
    },
    book_sl_mid_forseql = --中级十二擒龙手
    { 
		deccdtime={272,{{1,0},{10,0},{11,15*1},{15,15*5}}},	
		addstartskill={272,2296,{{1,1},{10,10},{15,15}}},
		userdesc_000={2296},
		skill_statetime={{{1,-1},{10,-1}}},		
    },
    book_sl_mid_forseql_child = --中级十二擒龙手_子
    { 
		state_forceatk_attack={{{1,50},{10,90},{15,100}},{{1,15*1.5},{10,15*3.5},{15,15*4}}},					--抵御点数，最多不超过原伤害%
		missile_hitcount={0,0,6},
    },
    book_sl_high_forxlg = --高级降龙棍
    {
		add_usebasedmg_p1={266,{{1,0},{10,0},{11,5},{15,30},{20,40}}},		--增加降龙棍攻击力
		add_deadlystrike_v1={266,{{1,50},{10,100},{15,200},{20,300}}},  	--增加会心一击
		add_hurt_r={266,{{1,5},{10,20},{15,25},{20,30}}},  					--增加受伤几率
		add_hurt_t={266,{{1,0},{15,0},{16,15*0.2},{20,15*1}}},  			--增加受伤时间
		skill_statetime={{{1,-1},{10,-1}}},
    },
    book_sl_high_fordljgz = --高级大力金刚指
    {
		add_usebasedmg_p1={268,{{1,0},{10,0},{11,10},{15,40},{20,50}}},									--增加大力金刚指攻击力		
		addpowerwhencol={268,{{1,10},{10,40},{15,60},{20,70}},{{1,50},{10,100},{15,150},{20,200}}},		--技能ID，每次增加%，最大增加%
		addms_hittotal_c1={268,{{1,1},{10,3},{15,4},{20,5}}},  											--增加子弹最大攻击人数
		add_hurt_r={268,{{1,5},{10,10},{15,15},{20,20}}},  												--增加受伤几率
		add_hurt_t={268,{{1,15*1},{10,15*1},{15,15*1.5},{20,15*2}}},  									--增加受伤时间
		add_adddmgbydist={268,{{1,0},{15,0},{16,10},{20,50}}},											--放大%=(min(（距离-参数3）*参数1，参数2)/1000)%
		skill_statetime={{{1,-1},{10,-1}}},
    },
    book_sl_high_forjgfm = --高级金刚伏魔
    { 
		add_state_time1={270,{{1,0},{10,0},{11,15*1},{15,15*5},{20,15*6}}},  				--增加金刚伏魔持续时间
		addstartskill={270,3458,{{1,1},{10,10},{15,15},{20,20}}},
		userdesc_000={3458},
		skill_statetime={{{1,-1},{10,-1}}},		
    },
    book_sl_high_forjgfm_child = --高级金刚伏魔_子
    { 
		defuse_damage={{{1,20},{10,100},{15,150},{20,200}},50},							--抵御点数，最多不超过原伤害%
		recover_life_v={{{1,100},{10,500},{15,600},{20,700}},15*5},
		resist_allspecialstate_rate_v={{{1,0},{15,0},{16,40},{20,120}}},				--抗负面效果几率
		skill_statetime={{{1,15*15},{10,15*15},{11,15*16},{15,15*20},{20,15*21}}},
    },
    book_sl_high_forseql = --高级十二擒龙手
    { 
		deccdtime={272,{{1,0},{10,0},{11,15*1},{15,15*5},{15,15*6}}},	
		addstartskill={272,3460,{{1,1},{10,10},{15,15},{20,20}}},
		userdesc_000={3460},
		add_fixed_t={272,{{1,0},{15,0},{16,15*0.2},{20,15*1}}},					--增加造成定身的时间
		userdesc_101={272,{{1,0},{15,0},{16,15*0.2},{20,15*1}}},				--描述用，增加造成定身的时间
		skill_statetime={{{1,-1},{10,-1}}},		
    },
    book_sl_high_forseql_child = --高级十二擒龙手_子
    { 
		state_forceatk_attack={{{1,50},{10,90},{15,100},{20,100}},{{1,15*1.5},{10,15*3.5},{15,15*4},{20,15*4.5}}},					--抵御点数，最多不超过原伤害%
		missile_hitcount={0,0,6},
    },
}

FightSkill:AddMagicData(tb)