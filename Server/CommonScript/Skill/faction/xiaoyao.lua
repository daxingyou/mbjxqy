
local tb    = {
    xy_qf1 = --逍遥枪法-普攻1式--20级
    { 
		attack_attackrate_v={{{1,100},{20,100},{30,100},{32,100}}},
		attack_usebasedamage_p={{{1,60},{20,90},{30,130},{32,140}}},
		attack_wooddamage_v={
			[1]={{1,30*1},{20,150*0.95},{30,500*0.95},{32,600*0.95}},
			[3]={{1,30*1},{20,150*1.05},{30,500*1.05},{32,600*1.05}}
			},	
		state_zhican_attack={{{1,40},{20,40},{30,40},{32,40}},{{1,4},{20,4},{30,4},{32,4}}},
		state_npcknock_attack={100,7,50},	
		spe_knock_param={6 , 4, 9},
    }, 
    xy_qf2 = --逍遥枪法-普攻2式--20级
    { 
		attack_attackrate_v={{{1,100},{20,100},{30,100},{32,100}}},
		attack_usebasedamage_p={{{1,60},{20,90},{30,130},{32,140}}},
		attack_wooddamage_v={
			[1]={{1,30*1},{20,150*0.95},{30,500*0.95},{32,600*0.95}},
			[3]={{1,30*1},{20,150*1.05},{30,500*1.05},{32,600*1.05}}
			},	
		state_zhican_attack={{{1,60},{20,60},{30,60},{32,60}},{{1,4},{20,4},{30,4},{32,4}}},
		state_npcknock_attack={100,7,40},	
		spe_knock_param={6 , 4, 9},		
    }, 
    xy_qf3 = --逍遥枪法-普攻3式--20级
    { 
		attack_attackrate_v={{{1,100},{20,100},{30,100},{32,100}}},
		attack_usebasedamage_p={{{1,70},{20,90},{30,140},{32,150}}},
		attack_wooddamage_v={
			[1]={{1,60*1},{20,180*0.95},{30,500*0.95},{32,600*0.95}},
			[3]={{1,60*1},{20,180*1.05},{30,500*1.05},{32,600*1.05}}
			},
		state_zhican_attack={{{1,80},{20,80},{30,80},{32,80}},{{1,6},{20,6},{30,6},{32,6}}},
		state_npcknock_attack={100,7,40},
		spe_knock_param={6 , 4, 9},
    }, 
    xy_qf3_jt = --逍遥枪法-普攻3式击退用--20级
    { 
		attack_attackrate_v={{{1,100},{20,100},{30,100},{32,100}}},
		state_npcknock_attack={100,7,40},
		spe_knock_param={6 , 4, 9},
    }, 
    xy_qf4 = --逍遥枪法-普攻4式--20级
    { 
		attack_attackrate_v={{{1,100},{20,100},{30,100},{32,100}}},
		attack_usebasedamage_p={{{1,90},{20,140},{30,200},{32,220}}},
		attack_wooddamage_v={
			[1]={{1,90*1},{20,300*0.95},{30,600*0.95},{32,700*0.95}},
			[3]={{1,90*1},{20,300*1.05},{30,600*1.05},{32,700*1.05}}
			},
		state_zhican_attack={{{1,100},{20,100},{30,100},{32,100}},{{1,6},{20,6},{30,6},{32,6}}},	
		spe_knock_param1={1},
		state_npcknock_attack={100,14,30},
		spe_knock_param={11 , 4, 26},
    }, 
    xy_bhgr = --白虹贯日-1级主动--10级
    { 
		userdesc_000={511},
		skill_mintimepercast_v={{{1,15*15},{15,12*15},{16,12*15},{21,12*15}}},
    },
    xy_bhgr_child1 = --白虹贯日_子1--10级
    { 
		attack_usebasedamage_p={{{1,150},{15,240},{16,246},{21,276}}},
		attack_wooddamage_v={
			[1]={{1,200*0.9},{15,700*0.9},{16,735*0.9},{21,910*0.9}},
			[3]={{1,200*1.1},{15,700*1.1},{16,735*1.1},{21,910*1.1}}
			},
		state_zhican_attack={{{1,50},{15,50},{16,50},{21,50}},{{1,15*1.5},{15,15*1.5},{16,15*1.5},{21,15*1.5}}},
		state_npcknock_attack={100,12,10},
		spe_knock_param={9 , 4, 26},
		
    },
    xy_bhgr_child2 = --白虹贯日_子2--10级
    { 
		addpowerwhencol={511,{{1,25},{15,50},{16,52},{21,62}},{{1,50},{15,150},{16,156},{21,186}}},
		skill_statetime={{{1,-1},{15,-1},{16,-1},{21,-1}}},
    },	
    xy_qtsp = --七探蛇盘-4级主动2--10级
    { 
		userdesc_000={508},
		skill_mintimepercast_v={{{1,30*15},{15,25*15},{16,25*15},{21,25*15}}},
    },
    xy_qtsp_child1 = --七探蛇盘_子--10级
    { 
		attack_usebasedamage_p={{{1,120},{15,180},{16,184},{21,204}}},
		attack_wooddamage_v={
			[1]={{1,150*0.9},{15,500*0.95},{16,525*0.95},{21,650*0.95}},
			[3]={{1,150*1.1},{15,500*1.05},{16,525*1.05},{21,650*1.05}}
			},
		state_npchurt_attack={100,6},
    },
	xy_qtsp_child2 = --七探蛇盘_子4(免疫)--10级
    { 
		ignore_series_state={},		--免疫属性效果
		ignore_abnor_state={},		--免疫负面效果
		invincible_b={1},			--无敌
		skill_statetime={{{1,15*5},{15,15*5},{16,15*5},{21,15*5}}},
    },	
	xy_dzxy = --斗转星移-10级主动3--15级
    { 
		attack_usebasedamage_p={{{1,240},{15,300},{16,304},{21,324}}},
		attack_wooddamage_v={
			[1]={{1,200*0.9},{15,500*0.9},{16,520*0.9},{21,620*0.9}},
			[3]={{1,200*1.1},{15,500*1.1},{16,520*1.1},{21,620*1.1}}
			},
		state_drag_attack={{{1,100},{15,100},{16,100},{21,100}},8,70},
		skill_drag_npclen={70},
		skill_mintimepercast_v={{{1,15*15},{15,10*15},{16,10*15},{21,10*15}}},
    },
	xy_dzxy_child = --斗转星移_子--15级
    { 
		state_zhican_attack={{{1,100},{15,100},{16,100},{21,100}},{{1,15*1.5},{15,15*1.5},{16,15*1.5},{21,15*1.5}}},
    },
    xy_xwxg = --小无相功-20级被动1--10级
    { 
		attackspeed_v={{{1,1},{10,30},{11,33}}},
		runspeed_v={{{1,10},{10,40},{11,44}}},
		state_stun_resistrate={{{1,10},{10,100},{11,110}}},
		physics_potentialdamage_p={{{1,35},{10,50},{11,52}}},
		skill_statetime={{{1,-1},{10,-1},{11,-1}}},
    },
    xy_fjcy = --风卷残云-30级主动4--15级
    { 
		dotdamage_wood={{{1,70},{15,90},{16,95},{21,120}},{{1,250},{15,400},{16,410},{21,460}},{{1,5},{15,5},{16,5},{21,5}}},
		state_float_attack={{{1,100},{15,100},{16,100},{21,100}},{{1,15*3},{15,15*3},{16,15*3},{21,15*3}}},
		skill_statetime={{{1,15*3},{15,15*3},{16,15*3},{21,15*3}}},
		missile_hitcount={{{1,3},{15,3},{16,3},{21,3}}}, 
		skill_mintimepercast_v={{{1,45*15},{15,40*15},{16,40*15},{21,40*15}}},
    },
    xy_sygy = --三元归一-40级被动2--10级
    { 
		autoskill={51,{{1,1},{10,10},{11,11}}},
		skill_statetime={{{1,-1},{10,-1},{11,-1}}},
		userdesc_000={523},	
    },
    xy_sygy_child1 = --三元归一_子1--10级
    { 
		autoskill={52,{{1,1},{10,10},{11,11}}},
		physics_potentialdamage_p={{{1,20},{10,60},{11,64}}},
		superposemagic={{{1,3},{10,5},{11,5}}},
		skill_statetime={{{1,15*12},{10,15*12},{11,15*12}}},
    },
    xy_sygy_child2 = --三元归一_子2--10级
    { 
		ignore_skillstate1={523},
		skill_statetime={{{1,15*3},{10,15*3},{11,15*3}}},
    },
    xy_gjqf = --高级枪法-50级被动3--10级
    {
		add_skill_level={501,{{1,1},{10,10},{11,11}},0},
		add_skill_level2={502,{{1,1},{10,10},{11,11}},0},
		add_skill_level3={503,{{1,1},{10,10},{11,11}},0},
		add_skill_level4={504,{{1,1},{10,10},{11,11}},0},
		deadlystrike_v={{{1,10},{10,100},{11,110}}},	
		userdesc_000={533},	
		skill_statetime={{{1,-1},{10,-1},{11,-1}}},
    },
    xy_gjqf_child = --高级枪法_子（仅用作显示，无实际效果加成。实际效果查看普攻的21-30级）--10级
    { 
		attack_usebasedamage_p={{{1,3},{10,30},{11,34}}},
		attack_wooddamage_v={
			[1]={{1,12},{10,120},{11,132}},
			[3]={{1,12},{10,120},{11,132}}
			},
		deadlystrike_v={{{1,10},{10,100},{11,110}}},	 
    }, 
    xy_lbwb = --凌波微步-60级被动4--10级
    { 
		ignoreattackontime={{{1,15*30},{10,15*20},{11,15*19}},{{1,15*0.5},{10,15*0.5},{11,15*0.5}}},
		skill_statetime={{{1,-1},{10,-1},{11,-1}}},
    },
    xy_xyyf = --逍遥御风-70级被动5--10级
    {
		autoskill={53,{{1,1},{10,10},{11,11}}},
		userdesc_000={542},
		userdesc_101={{{1,40},{10,90},{11,95}}},			--描述用，实际触发几率请查看autoskill.tab中的逍遥御风
		userdesc_102={{{1,15*30},{10,15*30},{11,15*30}}},		--描述用，实际触发几率请查看autoskill.tab中的逍遥御风
		skill_statetime={{{1,-1},{10,-1},{11,-1}}},
    },
    xy_xyyf_child  = --逍遥御风_子--10级
    {
		defense_p={{{1,50},{10,150},{11,180}}},
		physics_potentialdamage_p={{{1,50},{10,80},{11,85}}},
		attackspeed_v={{{1,10},{10,40},{11,45}}},
		deadlystrike_p={{{1,20},{10,70},{11,80}}},
		runspeed_v={{{1,20},{10,40},{11,45}}},
		skill_statetime={{{1,15*10},{10,15*10},{11,15*10}}},
    },
    xy_wwdz = --唯我独尊-80级被动6--20级
    {
		physics_potentialdamage_p={{{1,20},{20,30},{21,40}}},
		lifemax_p={{{1,10},{20,30},{21,35}}},
		attackspeed_v={{{1,5},{20,20},{21,21}}},
		state_zhican_attackrate={{{1,80},{20,200},{21,220}}},
		skill_statetime={{{1,-1},{20,-1},{21,-1}}},
    },
    xy_90_bsqf = --悲酥清风-90级被动7--10级
    {
		add_mult_proc_sate1={562,{{1,6},{10,6},{11,6}},60},  --技能ID,叠加层数，自身为圆心格子半径
		skill_statetime={{{1,-1},{10,-1},{11,-1}}},
		userdesc_000={562},
    },
    xy_90_bsqf_child = --悲酥清风_子--10级
    {
		skill_mult_relation={1}, --对应的NPC类型，从skillsetting.ini上查看
		all_series_resist_p={{{1,30},{10,60},{11,70}}},
		physics_potentialdamage_p={{{1,10},{10,25},{11,27}}},
		skill_statetime={{{1,15*8},{10,15*8},{11,15*8}}},		
    },
    xy_hyxyy = --寰宇逍遥游-怒气
    { 
		attack_usebasedamage_p={{{1,600},{30,600}}},
		attack_wooddamage_v={
			[1]={{1,2000*0.9},{30,2000*0.9},{31,2000*0.9}},
			[3]={{1,2000*1.1},{30,2000*1.1},{31,2000*1.1}}
			},
    },
	xy_hyxyy_child1 = --寰宇逍遥游_子
    { 
		ignore_series_state={},		--免疫属性效果
		ignore_abnor_state={},		--免疫负面效果
		skill_statetime={{{1,15*2},{30,15*2}}},
    },	
    xy_hyxyy_child2 = --寰宇逍遥游_伤害
    { 
		attack_usebasedamage_p={{{1,1000},{30,1000}}},
		attack_wooddamage_v={
			[1]={{1,2000*0.9},{30,2000*0.9},{31,2000*0.9}},
			[3]={{1,2000*1.1},{30,2000*1.1},{31,2000*1.1}}
			},
    },
}

FightSkill:AddMagicData(tb)