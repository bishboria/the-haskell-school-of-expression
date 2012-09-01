Given:

> data Shape = Rectangle Side Side
>            | Ellipse Radius Radius
>            | RtTriangle Side Side
>            | Polygon [Vertex]
>            deriving (Show)
> 
> type Radius = Float
> type Side   = Float
> type Vertex = (Float, Float)
>
> square s = Rectangle s s
> circle r = Ellipse r r

Define functions rectangle and rtTriangle in terms of Polygon

> rectangle  w h = Polygon [(0,0),(w,0),(w,h),(h,0)]
> rtTriangle b h = Polygon [(0,0),(b,0),(0,h)]
