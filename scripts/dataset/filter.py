import os
import re

ROOT_DIR = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
DATA_DIR = os.path.join(ROOT_DIR, "data")

max_size = 40 * 1000000
keywords = {
    "git": ["^t-", "^test-", "^u-", "^unit-"],
}

for repo in os.listdir(DATA_DIR):
    original_dir = os.path.join(DATA_DIR, repo, "original")
    if not os.path.exists(original_dir):
        continue
    for file in os.listdir(original_dir):
        if not file.endswith(".ll"):
            continue
        file_path = os.path.join(original_dir, file)

        dead = False
        if repo in keywords:
            for k in keywords[repo]:
                if re.match(k, file):
                    dead = True
                    break
        if not dead and os.path.getsize(file_path) > max_size:
            dead = True
        if not dead:
            with open(file_path) as f:
                content = f.read()
                if "define" not in content:
                    dead = True

        if dead:
            print(file)
            os.remove(file_path)
            optimized_path = os.path.join(DATA_DIR, repo, "optimized", file)
            if os.path.exists(optimized_path):
                os.remove(optimized_path)
