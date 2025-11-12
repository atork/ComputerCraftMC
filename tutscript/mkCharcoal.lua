furnaces=4
s=0
f=0
print(s)
turtle.turnRight()
while s<furnaces do
turtle.select(1)
turtle.dropDown(1)
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
turtle.drop(1)
turtle.turnLeft()
turtle.forward()
f=f+1
end
turtle.turnRight()
turtle.up()
turtle.forward()
