#pragma semicolon 1
#pragma newdecls required

public Plugin myinfo =  {
	name = "Wide win panel",
	author = "babka68",
	description = "Скрывает стандартную панель с командой, которая выиграла в раунде.",
	version = "1.0",
	url = "https://vk.com/zakazserver68"
};

public void OnPluginStart() {
	HookEvent("cs_win_panel_round", Win_Panel_Round, EventHookMode_Pre);
}
public Action Win_Panel_Round(Event event, const char[] name, bool dontBroadcast) {
	if (!dontBroadcast) {
		SetEventBroadcast(event, true);
	}
	return Plugin_Continue;
} 
