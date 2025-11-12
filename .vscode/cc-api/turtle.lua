---@class turtle
turtle = {}

---@return boolean, string|nil
function turtle.dig() end

---@return boolean
function turtle.forward() end

---@return boolean
function turtle.up() end

---@return boolean
function turtle.down() end

---@return boolean
function turtle.back() end

---@return boolean
function turtle.turnLeft() end

---@return boolean
function turtle.turnRight() end

---@param slot number
---@return boolean
function turtle.select(slot) end

---@return number
function turtle.getSelectedSlot() end

---@return number
function turtle.getFuelLevel() end

---@return boolean
function turtle.refuel() end

--return boolean
function turtle.suckDown() end
