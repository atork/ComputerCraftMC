local base = "https://raw.githubusercontent.com/atork/ComputerCraftMC/main/"

-- Attempt to download files.txt
shell.run("wget", base .. "index.txt", "index.txt")

-- Check that files.txt exists
if not fs.exists("index.txt") then
    print("❌ index.txt not found! Download may have failed.")
    return
end

local f = fs.open("index.txt", "r")
local line = f.readLine()
while line do
    local path = line
    if path ~= "" then
        local url = base .. path

        -- Create directory if needed
        local dir = fs.getDir(path)
        if dir ~= "" and not fs.exists(dir) then
            fs.makeDir(dir)
        end

        -- Remove existing file
        if fs.exists(path) then
            fs.delete(path)
        end

        print("Downloading " .. path)
        local success = shell.run("wget", url, path)
        if not success then
            print("❌ Failed to download " .. path)
        end
    end
    line = f.readLine()
end
f.close()

print("✅ All files downloaded!")

