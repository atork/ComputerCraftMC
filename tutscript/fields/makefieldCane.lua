local fieldlen=15
while fieldlen>0 do
    turtle.digDown()
    turtle.select(1)
    turtle.placeDown()
    turtle.forward()
    fieldlen=fieldlen-1

    if fieldlen==8 then
        turtle.turnLeft()
        turtle.forward()
        turtle.select(2)
        turtle.digDown()
        turtle.placeDown()
        turtle.turnLeft()
        turtle.turnLeft()
        turtle.forward()
        turtle.turnLeft()
    end
end
turtle.turnLeft()
turtle.forward()
turtle.turnLeft()
turtle.forward()
fieldlen=15
while fieldlen>0 do
    turtle.digDown()
    turtle.forward()
    fieldlen=fieldlen-1
end