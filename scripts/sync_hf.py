import huggingface_hub
import os
import json

HF_URL = "hf://buckets/llvm-opt-benchmark/llvm-opt-benchmark"
ROOT_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
DATA_DIR = os.path.join(ROOT_DIR, "data")

huggingface_hub.sync_bucket(HF_URL, DATA_DIR, plan="/tmp/sync-plan.jsonl", quiet=True)
# Workaround for https://github.com/huggingface/huggingface_hub/issues/3995
with open("/tmp/sync-plan.jsonl", "r") as f:
    for line in f:
        item = json.loads(line.strip())
        if (
            isinstance(item, dict)
            and item.get("type") == "operation"
            and item.get("action") == "download"
        ):
            path = os.path.join(DATA_DIR, item.get("path"))
            if os.path.exists(path):
                size = item.get("size")
                if os.path.getsize(path) > size:
                    os.truncate(path, size)
huggingface_hub.sync_bucket(apply="/tmp/sync-plan.jsonl")
huggingface_hub.sync_bucket(DATA_DIR, HF_URL)
