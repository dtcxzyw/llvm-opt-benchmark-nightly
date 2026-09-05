import os

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))

repo_dir = os.path.join(ROOT, "repo")
data_dir = os.path.join(ROOT, "data")

repo_projects = {p for p in os.listdir(repo_dir) if os.path.isdir(os.path.join(repo_dir, p))}
data_projects = {p for p in os.listdir(data_dir) if os.path.isdir(os.path.join(data_dir, p))}

errors = 0


def report(msg):
    global errors
    errors += 1
    print(msg)


for project in sorted(repo_projects - data_projects):
    report(f"missing data/{project} (exists in repo only)")

for project in sorted(data_projects - repo_projects):
    report(f"missing repo/{project} (exists in data only)")

for project in sorted(data_projects & repo_projects):
    base = os.path.join(data_dir, project)
    if not os.path.isdir(base):
        continue

    for sub in ("original", "optimized"):
        sub_dir = os.path.join(base, sub)
        if not os.path.isdir(sub_dir):
            report(f"data/{project}: missing {sub}/ directory")
            continue

        bcs = sorted(f for f in os.listdir(sub_dir) if f.endswith(".bc"))
        if not bcs:
            report(f"data/{project}/{sub}: no .bc files")

    original_dir = os.path.join(base, "original")
    optimized_dir = os.path.join(base, "optimized")
    if not (os.path.isdir(original_dir) and os.path.isdir(optimized_dir)):
        continue

    original_bcs = set(f for f in os.listdir(original_dir) if f.endswith(".bc"))
    optimized_bcs = set(f for f in os.listdir(optimized_dir) if f.endswith(".bc"))

    for f in sorted(original_bcs - optimized_bcs):
        report(f"data/{project}: {f} exists in original but not optimized")
    for f in sorted(optimized_bcs - original_bcs):
        report(f"data/{project}: {f} exists in optimized but not original")

if errors == 0:
    print("no mismatches found")
else:
    print(f"{errors} mismatch(es) found")
    exit(1)
