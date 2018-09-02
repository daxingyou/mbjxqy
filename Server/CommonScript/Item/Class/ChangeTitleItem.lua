
local tbItem = Item:GetClass("ChangeTitleItem");

function tbItem:ChangeTitle(nPlayerId, nItemId, szTitle)
	local pPlayer = KPlayer.GetPlayerObjById(nPlayerId);
	if not pPlayer then
		return;
	end

	local pItem = pPlayer.GetItemInBag(nItemId);
	if not pItem then
		return;
	end

	local nTitleId = KItem.GetItemExtParam(pItem.dwTemplateId, 1);
	if not nTitleId or nTitleId <= 0 then
		return;
	end

	local tbTitleData = PlayerTitle:GetPlayerTitleByID(pPlayer, nTitleId);
	if not tbTitleData then
		pPlayer.CenterMsg("無此稱號，不能使用！");
		return;
	end

	if version_vn then
		local nVNLen = string.len(szTitle);
		if nVNLen > BiWuZhaoQin.nVNTitleNameMax or nVNLen < BiWuZhaoQin.nVNTitleNameMin then
			pPlayer.CenterMsg(string.format("自訂稱號需在%d~%d字之間", BiWuZhaoQin.nVNTitleNameMin, BiWuZhaoQin.nVNTitleNameMax));
			return;
		end
	elseif version_th then
		local nNameLen = Lib:Utf8Len(szTitle);
		if nNameLen > BiWuZhaoQin.nTHTitleNameMax or nNameLen < BiWuZhaoQin.nTHTitleNameMin then
			pPlayer.CenterMsg(string.format("自訂稱號需在%d~%d字之間", BiWuZhaoQin.nTHTitleNameMin, BiWuZhaoQin.nTHTitleNameMax));
			return;
		end
	else
		local nNameLen = Lib:Utf8Len(szTitle);
		if nNameLen > BiWuZhaoQin.nTitleNameMax or nNameLen < BiWuZhaoQin.nTitleNameMin then
			pPlayer.CenterMsg(string.format("自訂稱號需在%d~%d字之間", BiWuZhaoQin.nTitleNameMin, BiWuZhaoQin.nTitleNameMax));
			return;
		end
	end

	if not CheckNameAvailable(szTitle) then
		pPlayer.CenterMsg("不允許的自訂稱號！");
		return;
	end

	if pPlayer.ConsumeItem(pItem, 1, Env.LogWay_ChangeTitleText) ~= 1 then
		pPlayer.CenterMsg("消耗道具失敗！", 1);
		return;
	end

	tbTitleData.szText = szTitle;
	pPlayer.CallClientScript("PlayerTitle:AddTitle", tbTitleData.nTitleID, tbTitleData.nEndTime, tbTitleData.szText);
	PlayerTitle:ActiveTitle(pPlayer, tbTitleData.nTitleID);
	pPlayer.CenterMsg("修改稱號成功！");
end

function tbItem:GetUseSetting(nItemTemplateId, nItemId)
	if nItemId and nItemId > 0 then
		local pItem = me.GetItemInBag(nItemId);
		if not pItem then
			return {};
		end

		local nTitleId = KItem.GetItemExtParam(pItem.dwTemplateId, 1);
		if not nTitleId then
			return {};
		end

		local function fnUse()
			local tbTitleData = PlayerTitle:GetPlayerTitleByID(nTitleId);
			if not tbTitleData then
				me.CenterMsg("無此稱號，不能使用！");
				return;
			end

			Ui:OpenWindow("InputBox", "輸入新的稱號", function (szTitle)
				if string.len(szTitle) >= 100 or string.len(szTitle) <= 0 then
					me.CenterMsg("稱號長度不符合要求");
				end
				RemoteServer.UseChangeTitleItem(nItemId, szTitle);
			end, true)
		end
		return {szFirstName = "使用", fnFirst = fnUse};
	else
		return {};
	end
end