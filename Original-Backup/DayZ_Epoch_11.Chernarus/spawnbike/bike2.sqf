if (dayz_combat == 1) then {
    cutText [format["You are in Combat and cannot re-build your bike."], "PLAIN DOWN"];
} else {
	player removeAction s_player_deploybike2;
	player playActionNow "Medic";
	r_interrupt = false;
	player addWeapon "ItemToolbox";
	deleteVehicle cursorTarget;

	[player,"repair",0,false,10] call dayz_zombieSpeak;
	[player,10,true,(getPosATL player)] spawn player_alertZombies;

	sleep 6;

	cutText [format["You have packed your bike and been given back your toolbox"], "PLAIN DOWN"];

	r_interrupt = false;
	player switchMove "";
	player playActionNow "stop";
};