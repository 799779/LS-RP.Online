#include <a_samp>
#include <a_mysql>
#include <YSI_Coding\y_timers>
#include <streamer>
#include <ZCMD>
#include <sscanf2>
#include <YSI_Storage\y_ini>
#undef MAX_PLAYERS
#define MAX_PLAYERS 500

#pragma warning disable 213, 208

#define  			MYSQL_HOST				"localhost"
#define  			MYSQL_USER				"root"
#define  			MYSQL_PASS				""
#define  			MYSQL_DB				"newbase"

main()
{
	SetGameModeText("KhNguyen Dev");
	EnableStuntBonusForAll(0);
	DisableInteriorEnterExits();
	SetNameTagDrawDistance(25.0);
	ManualVehicleEngineAndLights();
	ShowPlayerMarkers(PLAYER_MARKERS_MODE_OFF);
	AddPlayerClass(265, 1958.3783, 1343.1572, 15.3746, 270.1425, 0, 0, 0, 0, -1, -1);
	
	if(GetMaxPlayers() > MAX_PLAYERS)
	{
		print("> Error FIX MAXPLAYERS.");
        SendRconCommand("exit");
	}
}
#include "./modules/mysql.pwn"
#include "./modules/_var.pwn"
#include "./modules/_defines.pwn"
#include "./modules/_functions.pwn"
#include "./modules/_callback.pwn"
#include "./modules/_core.pwn"
// login
#include "./modules/multi-account/logintxd.pwn"
// character
#include "./modules/characters/Core/character.pwn"
#include "./modules/characters/Core/character-select.pwn"
#include "./modules/characters/Admin/character-admin.pwn"
// core login
#include "./modules/multi-account/account.pwn"
// core server
#include "./modules/server/radio.pwn"
// dynamic
#include "./modules/dynamic/doors.pwn"

public OnGameModeExit()
{
	mysql_close(Handle());
	return 1;
}