import os

exclude_dirs = {".git", ".vscode", "__pycache__"}  # add any other folders to skip

with open("index.txt", "w") as f:
    for root, dirs, files in os.walk("."):
        # Remove unwanted dirs from walk
        dirs[:] = [d for d in dirs if d not in exclude_dirs and not d.startswith(".")]
        
        for file in files:
            # Skip hidden files starting with a dot
            if file.startswith("."):
                continue
            if file.endswith(".lua"):  # only include Lua files
                path = os.path.relpath(os.path.join(root, file), ".")
                f.write(path.replace("\\", "/") + "\n")

print("index.txt generated! ✅")
