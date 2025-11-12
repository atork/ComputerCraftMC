local base = "https://raw.githubusercontent.com/<user>/<repo>/main/"
shell.run("wget", base .. "files.txt", "files.txt")

local f = fs.open("files.txt", "r")
for line in f.readLine do
  local path = line
  if path ~= "" then
    local url = base .. path
    fs.makeDir(fs.getDir(path))
    if fs.exists(path) then fs.delete(path) end
    print("Downloading " .. path)
    shell.run("wget", url, path)
  end
end
f.close()
print("✅ All files downloaded!")