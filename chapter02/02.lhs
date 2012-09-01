Given:

> data Shape = Rectangle Side Side
>            | Ellipse Radius Radius
>            | RtTriangle Side Side
>            | Polygon [Vertex]
>            deriving (Show)
> 
> type Radius = Scalar
> type Side   = Scalar
> type Vertex = (Scalar, Scalar)
> type Scalar = Double
>
> square s = Rectangle s s
> circle r = Ellipse r r

Define a function:
<> regularPolygon :: Int -> Side -> Shape
such that regularPolygon n s is a regular polygon with n sides, each of
length s.

(Hint: Consider using some of Haskell's trigonometric functions, such as
<> sin :: Float -> Float
<> cos :: Float -> Float
<> tan :: Float -> Float

> regularPolygon :: Int -> Side -> Shape
> regularPolygon n s =
>     let m = fromIntegral n
>         angle k = 2 * pi * k / m
>         r = s * sin (angle 0.5) / sin (angle 1)
>         point x = (r * cos (angle x), r * sin (angle x))
>     in  Polygon [point (fromIntegral k) | k <- [1..n]]
