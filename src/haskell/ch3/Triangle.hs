module Triangle (zeroTriangle) where

type Point    = (Integer, Integer, Integer)
type Triangle = (Point, Point, Point)

zeroPoint :: Point
zeroPoint = (0, 0, 0)

zeroTriangle :: Triangle
zeroTriangle = (zeroPoint, zeroPoint, zeroPoint)