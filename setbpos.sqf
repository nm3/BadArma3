_bid = _this select 0;
_index = _this select 1;
_obj = _this select 2;

_building = (getpos _obj) nearestObject _bid;
_obj setPos (_building buildingPos _index);
