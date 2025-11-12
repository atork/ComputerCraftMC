local args={...}
local depth=0
local laddercount=tonumber(args[1])

while laddercount>0 do
    turtle.digDown()
    turtle.down()
    turtle.dig()
    turtle.select(1)
    turtle.place()
    laddercount=laddercount-1
    depth=depth+1
    local currentfuel=turtle.refuel(0)

    if currentfuel==depth then
        break
    end
end
while depth>0 do
    turtle.up()
    depth=depth-1
end
