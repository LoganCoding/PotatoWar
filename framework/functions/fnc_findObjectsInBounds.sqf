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

objectsArr = []
xMin = 0
xMax = 0
yMin = 0
yMax = 0

private _objectsInBoundsArr = []

{
  private _pos = getPos _x;
  private _xPos = _pos select 0;
  private _yPos = _pos select 1;

  if (
    _xPos >= xMin && _xPos < xMax &&
    _yPos >= yMin && _yPos < yMax
  ) then (
    _objectsInBoundsArr pushBack _x;
  );
}forEach objectsArr;

_objectsInBoundsArr;
