local furnaces=4
local Samount = 16
local s=0
local f=0
print(s)
turtle.turnRight()
while s<furnaces do
turtle.select(1)
turtle.dropDown(Samount)
s=s+1
print(s)
turtle.forward()
end
turtle.down()
turtle.turnRight()
turtle.forward()
turtle.turnRight()
turtle.forward()
while f<4 do
turtle.select(2)
turtle.turnRight()
turtle.drop(Samount)
turtle.turnLeft()
if f<3 then
turtle.forward()    
end
f=f+1
end
turtle.turnRight()
turtle.up()
turtle.forward()
