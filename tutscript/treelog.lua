--Break move forward one
turtle.dig()
turtle.forward()
--When above log break
while turtle.detectUp() do 
turtle.digUp()
turtle.up()
end
while not turtle.detectDown() do
turtle.down()
end



