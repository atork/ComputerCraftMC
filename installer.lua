local base = "https://raw.githubusercontent.com/atork/ComputerCraftMC/main/"

-- Download index.txt
shell.run("wget", base .. "index.txt", "index.txt")

-- Wait until file exists (up to 5 seconds)
local timeout = os.clock() + 5
while not fs.exists("index.txt") and os.clock() < timeout do
    sleep(0.1) -- wait 0.1 seconds
end

-- Final check
if not fs.exists("index.txt") then
    print("index.txt not found! Download may have failed.")
    return
end

-- Open file safely
local f = fs.open("index.txt", "r")
if not f then
    print("Unable to open index.txt")
    return
end

-- Proceed with downloading listed files
local line = f.readLine()
while line do
    local path = line
    if path ~= "" then
        local url = base .. path
        local dir = fs.getDir(path)

        -- Create directory if it doesn't exist
        if dir ~= "" and not fs.exists(dir) then
            fs.makeDir(dir)
        end

        -- Delete existing file if present
        if fs.exists(path) then
            fs.delete(path)
        end

        print("Downloading " .. path)
        shell.run("wget", url, path)
    end
    line = f.readLine()
end

f.close()
print("All files downloaded!")
