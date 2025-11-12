import os

with open("index.txt", "w") as f:
    for root, dirs, files in os.walk("."):
        # Skip hidden directories like .git
        if ".git" in root:
            continue
        for file in files:
            if file.endswith(".lua"):  # only include Lua files
                # Construct path relative to repo root
                path = os.path.relpath(os.path.join(root, file), ".")
                f.write(path.replace("\\", "/") + "\n")
print("index.txt generated!")