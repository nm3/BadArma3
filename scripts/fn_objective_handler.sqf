if (isdedicated) exitwith {};

_respawn_side = _this select 1;
_player_side = side group player;

if !(alive player) then 
{
	if (_respawn_side == _player_side) then 
	{
		systemchat "Respawn wave incomming...";
		setPlayerRespawnTime 1;
		WaitUntil {sleep 1; playerRespawnTime <= 0};
		sleep 0.5;
		setPlayerRespawnTime 1e10;
	};
}
else
{
	if (_respawn_side == _player_side) then 
	{
		systemchat "Respawn wave incomming...";
		setPlayerRespawnTime 1;
		sleep 5;
		setPlayerRespawnTime 1e10;
	};
};