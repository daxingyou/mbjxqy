
local tb    = {
    book_gb_klyh = --亢龙有悔
    {  
		add_usebasedmg_p1={4206,{{1,1},{10,15}}},				--增加亢龙有悔攻击力
		add_attackrating_v1={4206,{{1,50},{10,300}}},			--增加亢龙有悔的命中值
		skill_statetime={{{1,-1},{10,-1}}},		
    },
    book_gb_klg = --困龙功
    { 
		add_fixed_t={4209,{{1,15*0.1},{10,15*1}}},				--增加造成定身的时间
		skill_statetime={{{1,-1},{10,-1}}},		
    },
    book_gb_zdkw = --醉碟狂舞
    { 
		addstartskill={4211,4241,{{1,1},{10,10}}},
		userdesc_000={4241},
		skill_statetime={{{1,-1},{10,-1}}},	
    },
    book_gb_zdkw_child = --醉碟狂舞_子
    { 
		runspeed_v={{{1,5},{10,20}}},						--增加跑速
		defense_p={{{1,100},{10,400}}},						--增加闪避%
		skill_statetime={{{1,15*8},{10,15*8}}},	
    },
    book_gb_lzyy = --龙战于野
    {
		add_usebasedmg_p1={4214,{{1,1},{10,5}}},				--增加龙战于野群体火圈攻击力
		add_usebasedmg_p2={4217,{{1,1},{10,5}}},				--增加龙战于野单体火球攻击力
		skill_statetime={{{1,-1},{10,-1}}},
    },
    book_gb_mid_klyh = --中级亢龙有悔
    {  
		add_usebasedmg_p1={4206,{{1,1},{10,15},{15,20}}},							--增加亢龙有悔攻击力
		add_attackrating_v1={4206,{{1,50},{10,300},{15,400}}},						--增加亢龙有悔的命中值
		add_skill_point1={4206,{{1,0},{10,0},{11,100},{14,100},{15,200}}},			--增加累计次数，100=1次
		skill_statetime={{{1,-1},{10,-1}}},		
    },
    book_gb_mid_klg = --中级困龙功
    { 
		add_fixed_t={4209,{{1,15*0.1},{10,15*1},{15,15*1}}},				--增加造成定身的时间
		deccdtime={4208,{{1,0},{10,0},{11,15*1},{15,15*5}}},				--减少困龙功CD时间		
		skill_statetime={{{1,-1},{10,-1}}},		
    },
    book_gb_mid_zdkw = --中级醉碟狂舞
    { 
		addstartskill={4211,4246,{{1,1},{10,10},{15,15}}},
		userdesc_000={4246},
		add_state_time1={4211,{{1,0},{10,0},{11,15*1},{15,15*5}}},  			--增加醉蝶狂舞持续时间
		skill_statetime={{{1,-1},{10,-1}}},	
    },
    book_gb_mid_zdkw_child = --中级醉碟狂舞_子
    { 
		runspeed_v={{{1,2},{10,20},{15,30}}},							--增加跑速
		defense_p={{{1,100},{10,400},{15,600}}},						--增加基础闪避%
		skill_statetime={{{1,15*8},{10,15*8},{11,15*9},{15,15*13}}},	
    },
    book_gb_mid_lzyy = --中级龙战于野
    {
		add_usebasedmg_p1={4214,{{1,1},{10,5},{15,10}}},					--增加龙战于野群体火圈攻击力
		add_usebasedmg_p2={4217,{{1,1},{10,5},{15,10}}},					--增加龙战于野单体火球攻击力
		add_deadlystrike_v1={4214,{{1,0},{10,0},{11,20},{15,100}}},			--增加龙战于野群体火圈会心一击点数
		add_deadlystrike_v2={4217,{{1,0},{10,0},{11,20},{15,100}}},			--增加龙战于野单体火球会心一击点数
		skill_statetime={{{1,-1},{10,-1}}},
    },
    book_gb_high_klyh = --高级亢龙有悔
    {  
		add_usebasedmg_p1={4206,{{1,1},{10,15},{15,20},{20,25}}},							--增加亢龙有悔攻击力
		add_attackrating_v1={4206,{{1,50},{10,300},{15,400},{20,400}}},						--增加亢龙有悔的命中值
		add_skill_point1={4206,{{1,0},{10,0},{11,100},{14,100},{15,200},{20,200}}},			--增加累计次数，100=1次
		add_palsy_r={4206,{{1,0},{15,0},{16,5},{20,20}}},									--增加麻痹几率	
		skill_statetime={{{1,-1},{10,-1}}},		
    },
    book_gb_high_klg = --高级困龙功
    { 
		add_fixed_t={4209,{{1,15*0.1},{10,15*1},{15,15*1},{20,15*1}}},				--增加造成定身的时间
		deccdtime={4208,{{1,0},{10,0},{11,15*1},{15,15*5},{20,15*5}}},				--减少困龙功CD时间	
		add_hitskill1={4209,4250,{{1,1},{10,10},{20,20}}},	
		userdesc_000={4250},
		userdesc_101={{{1,15*8},{15,15*8},{20,15*8}}},								--描述用，减少抗性的持续时间，要跟book_gb_high_klg_child的一致	
		skill_statetime={{{1,-1},{10,-1}}},		
    },    
    book_gb_high_klg_child = --高级困龙功_子
    {
		all_series_resist_p={{{1,0},{15,0},{16,-20},{20,-70}}},		--减抗%
		skill_statetime={{{1,15*8},{15,15*8},{20,15*8}}},
    },
    book_gb_high_zdkw = --高级醉碟狂舞
    { 
		addstartskill={4211,4252,{{1,1},{10,10},{15,15},{20,20}}},
		userdesc_000={4252},
		add_state_time1={4211,{{1,0},{10,0},{11,15*1},{15,15*5},{20,15*5}}},  			--增加醉蝶狂舞持续时间
		skill_statetime={{{1,-1},{10,-1}}},	
    },
    book_gb_high_child = --高级醉碟狂舞_子
    { 
		runspeed_v={{{1,2},{10,20},{15,30},{20,30}}},							--增加跑速
		defense_p={{{1,100},{10,400},{15,600},{20,800}}},						--增加基础闪避%
		vitality_recover_life={{{1,0},{15,0},{16,20*2},{20,20*5}},15},			--回复生命
	--	recover_life_v={{{1,0},{15,0},{16,100},{20,300}},15},					--回复生命		
		skill_statetime={{{1,15*8},{10,15*8},{11,15*9},{15,15*13},{20,15*13}}},	
    },
    book_gb_high_lzyy = --高级龙战于野
    {
		add_usebasedmg_p1={4214,{{1,1},{10,5},{15,10},{20,15}}},					--增加龙战于野群体火圈攻击力
		add_usebasedmg_p2={4217,{{1,1},{10,5},{15,10},{20,15}}},					--增加龙战于野单体火球攻击力
		add_deadlystrike_v1={4214,{{1,0},{10,0},{11,20},{15,100},{20,150}}},		--增加龙战于野群体火圈会心一击点数
		add_deadlystrike_v2={4217,{{1,0},{10,0},{11,20},{15,100},{20,150}}},		--增加龙战于野单体火球会心一击点数
		add_hitskill1={4214,4254,{{1,1},{10,10},{20,20}}},		
		add_hitskill2={4217,4254,{{1,1},{10,10},{20,20}}},	
		userdesc_000={4254},			
		skill_statetime={{{1,-1},{10,-1}}},
    },
    book_gb_high_lzyy_child = --高级龙战于野_子
    { 
		rand_ignoreskill={{{1,0},{15,0},{16,10},{20,40}},1,1},		--概率，数量，类型（skillsetting下定义类型）
		missile_hitcount={0,0,1}, 
    },

}

FightSkill:AddMagicData(tb)