local base = "https://raw.githubusercontent.com/atorc/ComputerCraftMC/main/"
shell.run("wget", base .. "files.txt", "files.txt")

local f = fs.open("files.txt", "r")
local line = f.readLine()
while line do
    local path = line
    if path ~= "" then
        local url = base .. path

        local dir = fs.getDir(path)
        if dir ~= "" and not fs.exists(dir) then
            fs.makeDir(dir)
        end

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
