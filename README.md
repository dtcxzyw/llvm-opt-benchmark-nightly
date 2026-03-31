# LLVM Opt Benchmark

[![CI](https://github.com/dtcxzyw/llvm-opt-benchmark-nightly/actions/workflows/sync.yml/badge.svg)](https://github.com/dtcxzyw/llvm-opt-benchmark-nightly/actions/workflows/sync.yml)
![GitHub repo size in bytes](https://img.shields.io/github/repo-size/dtcxzyw/llvm-opt-benchmark-nightly)

LLVM Opt Benchmark is an LLVM IR dataset for data-driven compiler optimization research. This repository is also used by LLVM developers to evaluate the impact of their patches on real-world applications.

Feel free to file an issue to request new open-source C/C++/Rust repos.

Please cite this work with the following BibTex entry:
```
@misc{opt-benchmark,
  title = {LLVM Opt Benchmark},
  url = {https://github.com/dtcxzyw/llvm-opt-benchmark-nightly},
  author = {Yingwei Zheng},
  year = {2023},
}
```

Original repo: https://github.com/dtcxzyw/llvm-opt-benchmark.

The IR files are now hosted on Hugging Face Buckets: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark.

## FAQs

LLVM developers use this corpus to assess the impact of your patches on real-world applications. If you see a link to this repository in your PR, it means that the target PR demonstrates some performance regressions or improvements caused by your changes. Here are some common questions you may have:

### How can I reproduce the regression locally?

You should be able to reproduce the regression locally in the following steps:

```
# Download the source IR. Note that you should replace `optimized` with `original`.
wget https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/<project_name>/original/<file_name>.bc?download=true -O <file_name>.bc
# You can also use huggingface cli to download the file:
hf buckets cp hf://buckets/llvm-opt-benchmark/llvm-opt-benchmark/<project_name>/original/<file_name>.bc .
# Apply your patch and rebuild opt.
...
# Run opt to generate the optimized IR.
bin/opt -O3 -S <file_name>.bc -o current.bc
# Compare the optimized IR with the baseline result. You can either download the optimized IR from Hugging Face (replace `original` with `optimized` in the URL) or generate it locally by using the same baseline version in the report.
llvm-dis baseline.bc -o baseline.ll ; Or adding -S to the opt command to generate the .ll file directly.
llvm-dis current.bc -o current.ll
diff -u baseline.ll current.ll > diff.txt
# To avoid the noise from instruction renaming, you can use the `llvm-relaxed-diff` tool provided in this repository. Unlike `llvm-diff`, it doesn't aim to provide a truly structural diff, but it use a heuristic name-remapping algorithm to reduce the noise.
llvm-relaxed-diff baseline.bc current.bc baseline.ll current.ll
diff -u baseline.ll current.ll > diff.txt
```

For compile-time regressions, please make sure ASLR is disabled and the LLVM build is built with `-DLLVM_ENABLE_ASSERTIONS=OFF`. Then you can use the following command to measure the compile time (in instruction count):
```
taskset -c <CORE_ID> perf stat -e instructions:u bin/opt -O3 <file_name>.bc --disable-output
```
The error margin is around 0.000001% for the instruction count.

For statistics results, you can use the following command to get the statistics changes:
```
; Build LLVM with `-DLLVM_FORCE_ENABLE_STATS=ON`
bin/opt -O3 <file_name>.bc --disable-output -stats --stats-json
```

For crash reports, the test report doesn't provide the stack trace. You should be able to reproduce the crash locally, with `-DLLVM_ENABLE_ASSERTIONS=ON -DLLVM_ABI_BREAKING_CHECKS=FORCE_OFF` passed to CMake.

### How can I evaluate my patch on this benchmark locally?

It is not recommended, as you can use the online service to evaluate your patch on GitHub if you have commit access to the LLVM repository.

Currently it doesn't provide a script to run the evaluation locally. You can have a look at `scripts/gen_optimized.py` and `scripts/ci.py` to see how the evaluation is conducted. It will be added in the future if there is a demand for it.

### The compile-time evaluation shows a huge impact on some files. What should I do?

Don't worry about it. If it doesn't affect the compile-time of the parent projects, it is generally acceptable. Otherwise, you may need to adjust the threshold or just handle simple cases.

### What should I do when I see a regression?

Don't panic. Perfect is the enemy of good. We never ask the contributors to fix all the regressions before landing their patches.

Please follow the [InstCombineContributorGuide](https://llvm.org/docs/InstCombineContributorGuide.html#generalization) to generalize your patch to cover the regression. If it doesn't work, try to find the pattern and file a separate issue. If it is hard to be caught by a separate transformation, try to bail out on the regression case. If we cannot make it better, the patch can still be accepted if the net effect is positive. Ask your reviewer to help you with the decision.

### My method is expensive in compile time. But it shows some optimization opportunities. Should I abandon it?

Though we cannot accept the patch, we still encourage you to explore alternative approaches to handle the exposed optimization opportunities. As the distribution of the real-world code is not uniform, in general, a simple heuristic is good enough to cover most of the cases.

### The evaluation result shows my patch has no effect on the benchmark. What does it mean?

We ask the issue reporter and the contributor to provide a motivating example from real-world scenarios. This benchmark only provides additional evidences to support the claim. It is highly recommended to run this benchmark if the real-world use case is missing, or it is found by fuzzers and super-optimizers. See also [InstCombineContributorGuide](https://llvm.org/docs/InstCombineContributorGuide.html#real-world-usefulness).

The following patches may not be suitable for this benchmark:
+ Sanitizer/Instrumentation/GPU patches. The related patterns are not included in this corpus.
+ Patches which handle scalable vectors. This corpus only contains fixed-width vectors (generated from X86 intrinsics).

### Do the regressions in IR diff imply the run-time performance regressions?

Not necessarily. The IR diff is only a proxy for the run-time performance. Generally fewer instructions at IR level implies better analysis result and less instructions at run-time. However, it depends on the target micro-architecture and the LLVM CodeGen components. For example, a canonicalization in InstCombine may cause the SelectionDAG to not recognize certain patterns, leading to bad codegen. Please refer to [llvm-codegen-benchmark](https://github.com/dtcxzyw/llvm-codegen-benchmark) for frequent isel patterns. Anyway, the run-time performance should be the golden metric. The IR diff only helps us to find the root cause of regressions.

In addition, most of IR snippets are not the hot paths in the real-world applications. I choose to keep all the source IR files instead of only keeping the hot spots, as it is useful for monitoring the code size changes, which is also critical for the frontend performance on modern devices. Another reason is that we cannot find the hot paths in large applications like LLVM and verilator-generated simulators. BTW the training data for PGO in some programs is unavailable or highly biased, you know :).

### The IR diff contains hundreds of file changes. How can I review it efficiently?

To fit the [GitHub's limit of diff rendering](https://docs.github.com/en/repositories/creating-and-managing-repositories/repository-limits#diff-limits), only part of the files are picked to be committed. It is chosen by a heuristic algorithm to improve the diversity of the dataset. 

In the diff mode, a summary of the diff is also provided. It contains some key information to allow you to quickly review the changes:

+ The number of files changed, lines added and removed. It is different from the numbers on the GitHub page, as it counts the statistics before diff reduction.
+ A summary of the top-10 LLVM statistics changes.
+ The number of line changes in each file. You can use this to quickly find the file with the most line additions or deletions. Changes are grouped into three commits (`add > sub`, `add < sub` and `add == sub`) to further improve the efficiency of the review.

From my own experience, the patterns are likely to be similar in the same project. So you can skip the whole project after you review the first few files in the same project. If your patch optimizes the C++/Rust standard library and other widely-used libraries, you can also skip the files with similar bb names in the hunk header (e.g., `_ZNSt6vector...`).

### The IR diff is totally unrelated to my patch. Why?

Your changes may break existing optimizations. Please reproduce it locally and try to provide a minimal phase-ordering regression test. Then follow the instructions for dealing with regressions above.

## Online services (previously hosted by PLCT Lab, ISCAS/currently hosted by SUSTech ARiSE Lab)

**Special Acknowledgement**: Thank @goldsteinn for providing additional computational resources to meet the growing demand for testing!

+ Middle-end optimization pre-commit testing

  Ping me if you want to see what is affected by your PR. It is useful for reviewers to find potential performance regressions and new optimization opportunities.

  For convenience, all llvm members are authorized to request pre-commit tests in https://github.com/dtcxzyw/llvm-opt-benchmark-nightly/issues/2.

+ Codegen pre-commit testing

  See also [llvm-codegen-benchmark](https://github.com/dtcxzyw/llvm-codegen-benchmark).
