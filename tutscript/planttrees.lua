--Turtel making json for item details
--n=turtle.getItemDetail()
--While loop checking slot and for dirt
--while n.name=="minecraft:oak_sapling" then
--turtle.forward()
data = turtle.inspectDown()
print(textutils.serialise(data.name))


