import os

SIZE_THRESHOLD = 3e7

for repo in os.listdir("data"):
    original_dir = f"data/{repo}/original"
    if not os.path.exists(original_dir):
        continue
    for file in os.listdir(original_dir):
        if file.endswith(".bc"):
            full_path = original_dir + "/" + file
            if os.path.getsize(full_path) > SIZE_THRESHOLD:
                print(full_path)
                os.remove(full_path)
                optimized_path = f"data/{repo}/optimized/{file}"
                if os.path.exists(optimized_path):
                    print(optimized_path)
                    os.remove(optimized_path)
