local width=9
local length=9

for i = 1, length, 1 do
    turtle.forward()
    turtle.digDown()
    turtle.select(1)
    turtle.placeDown()
    turtle.turnLeft()
    for i=1, width, 1 do
        turtle.forward()
        turtle.select(1)
        turtle.placeDown()
    end
    
    turtle.turnLeft()
    turtle.turnLeft()
    for i=1, width, 1 do
        turtle.forward()
    end
    turtle.turnLeft()
end