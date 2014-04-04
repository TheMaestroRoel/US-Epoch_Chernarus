while {debugMonitor} do
{
 //Modify your debug starting here
	_pic = (gettext (configFile >> 'CfgVehicles' >> (typeof vehicle player) >> 'picture'));
        if (player == vehicle player) then
        {
            _pic = (gettext (configFile >> 'cfgWeapons' >> (currentWeapon player) >> 'picture'));
        }
            else
        {
            _pic = (gettext (configFile >> 'CfgVehicles' >> (typeof vehicle player) >> 'picture'));
        };
hintSilent parseText format ["
	<t size='1' font='Bitstream' align='center' color='#669933'>%1</t><br/>
	<img size='4' image='%9'/><br/>
        <t size='1' font='Bitstream' align='left'>Zombies Killed: </t><t color='#669933' size='1.2' font='Bitstream' align='right'>%2</t><br/>
        <t color='#ffffff' size='1' font='Bitstream' align='left'>Survivors Killed: </t><t color='#669933' size='1' font='Bitstream' align='right'>%4</t><br/>
        <t color='#ffffff' size='1' font='Bitstream' align='left'>Bandits Killed: </t><t color='#669933' size='1' font='Bitstream' align='right'>%5</t><br/>
        <t color='#ffffff' size='1' font='Bitstream' align='left'>FPS: </t><t color='#669933' size='1' font='Bitstream' align='right'>%8</t><br/>
        <t color='#ffffff' size='1' font='Bitstream' align='left'>Humanity: </t><t color='#5882FA' size='1' font='Bitstream' align='right'>%7</t><br/>
        <t color='#ffffff' size='1' font='Bitstream' align='left'>Blood: </t><t color='#ff5200' size='1' font='Bitstream' align='right'>%6</t><br/>
	<t size='1' font='Bitstream' align='center' color='#5882FA'>Visit: igamingsquad.com||</t>
	<t size='1' font='Bitstream' align='center' color='#ff5200'>For Live Help join TS: 5.9.226.69:9988||</t>
	<t size='1' font='Bitstream' align='center' color='#669933'>Restart Every 4 Hours||</t>
	<t size='1' font='Bitstream' align='center' color='#5882FA'>Press INSERT to toggle</t>
	",
        (name player),
        (player getVariable['zombieKills', 0]),
        (player getVariable['headShots', 0]),
        (player getVariable['humanKills', 0]),
        (player getVariable['banditKills', 0]),
        (player getVariable['USEC_BloodQty', r_player_blood]),
        (player getVariable['humanity', 0]),
        (round diag_fps),
        _pic];
//Don't modify below this line
	sleep 1;
};