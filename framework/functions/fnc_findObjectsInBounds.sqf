/*

Input:

Array of objects
X min
X max
Y min
Y max

Output:

Array of objects with coordinates within bounds

*/
//change this to take input as args
_list =  [3000,5000] nearObjects ["House", 100000];   
  
_objectsArr = [];  
xMin = 3300;  
xMax = 4400;  
yMin = 5800;  
yMax = 6900;  
  
{   
  _objectsArr append [_x];  
} forEach _list;   
  
  
_objectsInBoundsArr = [];  
  
{  
  private _pos = getPos _x;  
  private _xPos = _pos select 0;  
  private _yPos = _pos select 1;  
  
  if (  
    _xPos >= xMin && _xPos < xMax &&  
    _yPos >= yMin && _yPos < yMax  
  ) then {  
    _objectsInBoundsArr append [_x];  
  };  
}forEach _objectsArr;  
  
_objectsInBoundsArr;
