if !("PartGeneric" in magazines player && "PartVRotor" in magazines player) exitWith {cutText [format["You need Scrap Metal and a Main Rotor Assembly to upgrade your Motorcycle"], "PLAIN DOWN"];};
if (dayz_combat == 1) then { 
    cutText [format["You are in Combat!! You can't build your Mozzie....no patiens soldier?"], "PLAIN DOWN"];
} else {
	player removeAction s_player_deploybike;
	player playActionNow "Medic";
	r_interrupt = false;
	player removeMagazine "PartGeneric";
	player removeMagazine "PartVRotor";
	deletevehicle cursortarget;
	_dis=10;
	_sfx = "repair";
	[player,_sfx,0,false,_dis] call dayz_zombieSpeak;
	[player,_dis,true,(getPosATL player)] spawn player_alertZombies;
	
	sleep 6;
	
	_object = "CSJ_GyroC" createVehicle (position player);
	_object setVariable ["ObjectID", "1", true];
	_object setVariable ["ObjectUID", "1", true];
	
	_object attachto [player,[0.0,3.0,2.5]];
	_object setfuel 0.5;
	sleep 3;
	detach _object;
	player reveal _object;

	cutText [format["You've converted your Motorcyle into a Mozzie....wait can you fly??"], "PLAIN DOWN"];
	
	r_interrupt = false;
	player switchMove "";
	player playActionNow "stop";
	
	sleep 10;
	
	cutText [format["Warning: Spawned Mozzies DO NOT SAVE after server restart!"], "PLAIN DOWN"];
	
};