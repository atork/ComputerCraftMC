local width=9
local length=9

for p = 1, length, 1 do
    turtle.forward()
    turtle.select(1)
    local state =turtle.inspectDown()


    local success, data = turtle.inspectDown()

    if success then
        if data.state.age >= 7 then
            turtle.placeDown()
            turtle.suckDown()
        end
    end
    
    turtle.turnLeft()
    for i=1, width, 1 do
        turtle.select(1)

        if success then
        if data.state.age >= 7 then
            turtle.placeDown()
            turtle.suckDown()
        end
        end

        turtle.forward()
        turtle.select(1)

        if success then
        if data.state.age >= 7 then
            turtle.placeDown()
            turtle.suckDown()
        end
        end
    end
    turtle.turnLeft()
    turtle.turnLeft()
    for i=1, width, 1 do
        turtle.forward()
    end
    turtle.turnLeft()
end
turtle.turnRight()
turtle.turnRight()

for i=1, length, 1 do

    turtle.forward()
end
turtle.turnLeft(2)