Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/dump-aabfeca2ed74a9fb.dump.2d0df727840c2dbc-cgu.0?download=true
inline.NumInlined: 31028
inline.NumDeleted: 13504
loop-unroll.NumCompletelyUnrolled: 125
loop-unroll.NumRuntimeUnrolled: 228
loop-unroll.NumUnrolled: 353
loop-unroll.NumUnrolledNotLatch: 9
begin_hunk_0
@1804 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17he43b439804203a9aE" }>, align 8
@1805 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h733589fb05f43358E" }>, align 8
@1806 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h5883a91228eae366E" }>, align 8
@1807 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17hf44c8381fe39c488E" }>, align 8
@1808 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17hb021d6427e619ea0E" }>, align 8
@1809 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h0f81a0a1d042d7b0E" }>, align 8
@1810 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h65130db551db4e1fE" }>, align 8
@1811 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h87aca881bf200706E" }>, align 8
@1812 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17hebeb0d9470a22dfbE" }>, align 8
@1813 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17he850a3610aceadbeE" }>, align 8
@1814 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17he0386f47255d02acE" }>, align 8
@1815 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h3c3603d7a5d35325E" }>, align 8
@1816 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h4d6d5925d24b48c1E" }>, align 8
@1817 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17ha83461a191c9152fE" }>, align 8
@1818 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h7df73f1b7a6a0304E" }>, align 8
@1819 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17he8752c12e23a0f1eE" }>, align 8
@1820 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h18db0c7ea5a93494E" }>, align 8
@1821 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h5f26caf4c03247e6E" }>, align 8
@1822 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h8e09bf7d8d70efe7E" }>, align 8
@1823 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17he1eb246e06b7a77fE" }>, align 8
@1824 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17he8daae69076ec996E" }>, align 8
@1825 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h34f1758002417ddfE" }>, align 8
@1826 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17hd0103a42b7cf3c71E" }>, align 8
@1827 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h2e3c365da98174f9E" }>, align 8
@1828 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h123c91186aa032bdE" }>, align 8
@1829 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h0de632fc4ead6131E" }>, align 8
@1830 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h6e5155ade889cb0dE" }>, align 8
@1831 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17hed88724734601bc1E" }>, align 8
@1832 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h5a18cccd47b27f46E" }>, align 8
@1833 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h5344f4b841d2e396E" }>, align 8
@1834 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17he1d8260333173f4fE" }>, align 8
@1835 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17hb54d776b3243532cE" }>, align 8
@1836 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h6629714d084ac0d6E" }>, align 8
@1837 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h796cbda801c2d0c0E" }>, align 8
@1838 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h0790c7061712e64dE" }>, align 8
@1839 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17ha51c8f74fcb4f501E" }>, align 8
@1840 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h230acfdcfc00c60aE" }>, align 8
@1841 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h0cb6798efd96971cE" }>, align 8
@1842 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17hddf7deda1c267e35E" }>, align 8
@1843 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17hb735d1d55b4d31d1E" }>, align 8
@1844 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h290922f708a686e2E" }>, align 8
@1845 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h643a0f3641a62cabE" }>, align 8
@1846 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17ha3e73aef97e565ffE" }>, align 8
@1847 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h0d24b85a80870c25E" }>, align 8
@1848 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h237c345b00f54e01E" }>, align 8
@1849 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h2d29848705f78c1aE" }>, align 8
@1850 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h63785bdc4a844441E" }>, align 8
@1851 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17ha26eb293badcbb46E" }>, align 8
@1852 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17hab33771524e11f47E" }>, align 8
@1853 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h6f3d82852e4680baE" }>, align 8
@1854 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h94096b602493ad93E" }>, align 8
@1855 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h6b521d81c80c5258E" }>, align 8
@1856 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h6741bbc60692dc7dE" }>, align 8
@1857 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17hd0bd728b94766923E" }>, align 8
@1858 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h98bcf4ce4ed6d663E" }>, align 8
@1859 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h90778d392a215adaE" }>, align 8
@1860 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h73ba494e9d5be640E" }>, align 8
@1861 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h1441c901668e9c87E" }>, align 8
@1862 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h5488d2d6ff190ec9E" }>, align 8
@1863 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17hc2330796d504299bE" }>, align 8
@1864 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h48bce299c5ce93b8E" }>, align 8
@1865 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h02efcdaf8a450db1E" }>, align 8
@1866 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17hf652237ae39f96e1E" }>, align 8
@1867 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17hc5de2c2c4cdb2da2E" }>, align 8
@1868 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h7743d49ade7d4330E" }>, align 8
@1869 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h9e6bbac5c8cbb8d5E" }>, align 8
@1870 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h5e6b4a74b1aaa48fE" }>, align 8
@1871 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17hb5905facf4ab0508E" }>, align 8
@1872 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17hf5a73974460939dcE" }>, align 8
@1873 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17hd97171db4ce86476E" }>, align 8
@1874 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h926b974586f7f237E" }>, align 8
@1875 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h8b0e581e7e3a5989E" }>, align 8
@1876 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h3e13ac3cbfa8bf92E" }>, align 8
@1877 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17hf0bebc81380c5d57E" }>, align 8
@1878 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17hae09f325b5a4a4b4E" }>, align 8
@1879 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h05dbb6480c1bfc73E" }>, align 8
@1880 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17ha5324cd9aa10e67aE" }>, align 8
@1881 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17heb7b86d8810eab91E" }>, align 8
@1882 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h9eec468d119a413eE" }>, align 8
@1883 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h916d0387c02537e6E" }>, align 8
@1884 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17hc322311bd21ba304E" }>, align 8
@1885 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17hcb1cc7841f5249bdE" }>, align 8
@1886 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17hce7a4a7391271b5cE" }>, align 8
@1887 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h8dc46bb1dd122e79E" }>, align 8
@1888 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h5541484ed30d014fE" }>, align 8
@1889 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17hfd34fc81ab9511daE" }>, align 8
@1890 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h44889819256969cbE" }>, align 8
@1891 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17hc714c4b3e8bf6b32E" }>, align 8
@1892 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17hdba32a490893246eE" }>, align 8
@1893 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h5775a694ae5d177fE" }>, align 8
@1894 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17hb72284988d446991E" }>, align 8
@1895 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h8704b441d19d8377E" }>, align 8
@1896 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h3c127df72efc2ea7E" }>, align 8
@1897 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h1a5402d45f30bb32E" }>, align 8
@1898 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h7fc5a99dc0c15142E" }>, align 8
@1899 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h70d4ba838dea803bE" }>, align 8
@1900 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h7444f2a98543577aE" }>, align 8
@1901 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17ha5686c26630c3364E" }>, align 8
@1902 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h4a2263147294a110E" }>, align 8
@1903 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17hedcb12a705bebcd6E" }>, align 8
@1904 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h0d303c64bae501c3E" }>, align 8
@1905 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17hd85cc9ab3fc226b6E" }>, align 8
@1906 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17hb733e043121c2ad1E" }>, align 8
@1907 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h78f2ed3c881078b8E" }>, align 8
@1908 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17hdd1a63e9798a4615E" }>, align 8
@1909 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17hcef2c4e12ee8ce58E" }>, align 8
@1910 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h3deb4f161fa42d53E" }>, align 8
@1911 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h4968abe897f79279E" }>, align 8
@1912 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h5eaa8f75e4dba39eE" }>, align 8
@1913 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17hbe467a98e50cb255E" }>, align 8
@1914 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17hd0e95f129c572aa2E" }>, align 8
@1915 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17hfe8f86900b66e01aE" }>, align 8
@1916 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h79b82e24e64564b2E" }>, align 8
@1917 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17he1beaa751daf40f2E" }>, align 8
@1918 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h1cacaa5a9f29f69aE" }>, align 8
@1919 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h06f4089ed115afbaE" }>, align 8
@1920 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h88494b7b1b6d5ac4E" }>, align 8
@1921 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17hebbf92bb83ff1aedE" }>, align 8
@1922 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17hdf40ecb161553248E" }>, align 8
@1923 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h406ce1b813c99b85E" }>, align 8
@1924 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h68dd75030ac41edaE" }>, align 8
@1925 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17hf3425124b362ab1bE" }>, align 8
@1926 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h262972c92e9277dcE" }>, align 8
@1927 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17hda94a9099c45abbdE" }>, align 8
@1928 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h4b3db359070de777E" }>, align 8
@1929 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h90d1b4a32d56aa5bE" }>, align 8
@1930 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17hcf19bcdb863d5fbfE" }>, align 8
@1931 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17hacd927e4e5c4893fE" }>, align 8
@1932 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17hd0f3674c357380feE" }>, align 8
@1933 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h42e60bada85d47a3E" }>, align 8
@1934 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17he27c663f2e29b1a0E" }>, align 8
@1935 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h323ac3f689e69d3aE" }>, align 8
@1936 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17hfeef95af042d87a0E" }>, align 8
@1937 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17hfb60b916b0536a8bE" }>, align 8
@1938 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17hf49c50cc5ba5d3a4E" }>, align 8
@1939 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17hfd80d251dfd191f3E" }>, align 8
@1940 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17ha63aa12101e846deE" }>, align 8
@1941 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17ha8fcf3be2c866f2dE" }>, align 8
@1942 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h7cf700ab3152a7d4E" }>, align 8
@1943 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h3c055e7fe74bc468E" }>, align 8
@1944 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h0d92c7ee98d6eb49E" }>, align 8
@1945 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h13e1c7e70be3f37cE" }>, align 8
@1946 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h0eaf3276700c8c66E" }>, align 8
@1947 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h0e386e0f7ca4153aE" }>, align 8
@1948 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h3402d6c713aa0df2E" }>, align 8
@1949 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h602da41bb77808d3E" }>, align 8
@1950 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h659a717becc5c9b4E" }>, align 8
@1951 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h2888afdc479609ebE" }>, align 8
@1952 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h6cfd9ae0f9d0f10cE" }>, align 8
@1953 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17hcec5f39c889306ffE" }>, align 8
@1954 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h926a16c03735515bE" }>, align 8
@1955 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h8833ee174ec1932cE" }>, align 8
@1956 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h6d4bb5561b8e4180E" }>, align 8
@1957 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h880bf4272c0ef68dE" }>, align 8
@1958 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h86aff4014e2dae90E" }>, align 8
@1959 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h7e195e28f9660abcE" }>, align 8
@1960 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17he470d691753607efE" }>, align 8
@1961 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h0eb2dec1ba35b18eE" }>, align 8
@1962 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h588effcad80e5492E" }>, align 8
@1963 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17hce2b37f733b2363fE" }>, align 8
@1964 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17hfbd25a18c68593eeE" }>, align 8
@1965 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17hb8feb6f70a0f1195E" }>, align 8
@1966 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h7dd540f50019a1c5E" }>, align 8
@1967 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17he32963713ef7ae5bE" }>, align 8
@1968 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h9c81dac80cb9a904E" }>, align 8
@1969 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h5e1577c6aee198cfE" }>, align 8
@1970 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h1a25e7c9a8d9f36dE" }>, align 8
@1971 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17hdc9a7853e4468339E" }>, align 8
@1972 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h47946806151508bcE" }>, align 8
@1973 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h4f2547e3570bfa03E" }>, align 8
@1974 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17ha732c02aef3e70beE" }>, align 8
@1975 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h5e3d85a28ea59058E" }>, align 8
@1976 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h78abf8e4a2ef6a2aE" }>, align 8
@1977 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h9daddb80d7e9ba62E" }>, align 8
@1978 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h17f33caf48752337E" }>, align 8
@1979 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h48f33b28e4d06383E" }>, align 8
@1980 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @205, [16 x i8] c"b\00\00\00\00\00\00\00\EB\02\00\00*\00\00\00" }>, align 8
@1981 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @205, [16 x i8] c"b\00\00\00\00\00\00\00\00\03\00\00*\00\00\00" }>, align 8
@1982 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c"d\00\00\00\00\00\00\00\B4\06\00\00\1F\00\00\00" }>, align 8
@1983 = private unnamed_addr constant <{ [2 x i8], [14 x i8], [2 x i8], [14 x i8], [12 x i8], [4 x i8] }> <{ [2 x i8] c"\02\00", [14 x i8] undef, [2 x i8] c"\02\00", [14 x i8] undef, [12 x i8] c"\00\00\00\00\00\00\00\00 \00\80\E0", [4 x i8] undef }>, align 8
@1984 = private unnamed_addr constant <{ [24 x i8], ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hf0449193807e3e9eE", ptr @"_ZN9once_cell3imp17OnceCell$LT$T$GT$10initialize28_$u7b$$u7b$closure$u7d$$u7d$17h6b250fa3a41393f0E" }>, align 8
@1985 = private unnamed_addr constant [42 x i8] c"Lazy instance has previously been poisoned", align 1
@1986 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @1985, [8 x i8] c"*\00\00\00\00\00\00\00" }>, align 8
@1987 = private unnamed_addr constant [97 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/once_cell-1.21.4/src/lib.rs\00", align 1
@1988 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1987, [16 x i8] c"`\00\00\00\00\00\00\00)\05\00\00\19\00\00\00" }>, align 8
@switch.table._ZN3std2io5error5Error4kind17hcef9c5606d2f7459E = private unnamed_addr constant [122 x i8] c"\01\00)#))\22)))\0D&\01))\1C\0C\1F)\0E\0F\14)))\1D\1B\18\19\11 \0B))\1E!)$\10\12))))))))))))))))))))))))))))))))))))))))))))))))))))))$))\08\09\0A\05)\06\03))\07))\16\02)\04)'\13)))))\1A", align 1
@"switch.table._ZN4dump6reader2v28V2Reader5tasks28_$u7b$$u7b$closure$u7d$$u7d$17h6cd4065f35160f0aE" = private unnamed_addr constant [4 x i8] c"\08\08\18\08", align 8
@switch.table._ZN4dump6reader2v46errors4Code4http17he3f39a3956f7c3a7E = private unnamed_addr constant [44 x i16] [i16 500, i16 409, i16 404, i16 400, i16 400, i16 500, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 500, i16 404, i16 500, i16 400, i16 400, i16 500, i16 403, i16 401, i16 500, i16 404, i16 404, i16 413, i16 400, i16 400, i16 415, i16 409, i16 500, i16 415, i16 415, i16 400, i16 400, i16 404, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400], align 2
@switch.table._ZN4dump6reader2v46errors4Code4name17ha58ab1f8c19244a6E = private unnamed_addr constant [44 x ptr] [ptr @1379, ptr @1380, ptr @1381, ptr @1382, ptr @1383, ptr @1384, ptr @1385, ptr @1386, ptr @1387, ptr @1388, ptr @1389, ptr @1390, ptr @1391, ptr @1392, ptr @1393, ptr @1394, ptr @1395, ptr @1396, ptr @1397, ptr @1398, ptr @1399, ptr @1400, ptr @1401, ptr @1402, ptr @1403, ptr @1404, ptr @1405, ptr @1406, ptr @1407, ptr @1408, ptr @1409, ptr @1410, ptr @1411, ptr @1412, ptr @1413, ptr @1414, ptr @1415, ptr @1416, ptr @1417, ptr @1418, ptr @1419, ptr @1420, ptr @1421, ptr @1422], align 8
@switch.table._ZN4dump6reader2v46errors4Code4name17ha58ab1f8c19244a6E.4696 = private unnamed_addr constant [44 x i8] c"\15\14\0F\11 \0D\1C \19\13\13\0E\0C\0D\0B\1B\12\08\11\14\12\0F\1C\17\0E\0E\11\16\0C\16\17\13\14\14\11\0F\11\11\17\17\1A\1B\18\0E", align 8
@switch.table._ZN4dump6reader2v46errors4Code5type_17h6149f9fc51a4527eE = private unnamed_addr constant [44 x ptr] [ptr @1396, ptr @1716, ptr @1716, ptr @1716, ptr @1716, ptr @1396, ptr @1716, ptr @1716, ptr @1716, ptr @1716, ptr @1716, ptr @1716, ptr @1716, ptr @1716, ptr @1716, ptr @1396, ptr @1716, ptr @1396, ptr @1716, ptr @1716, ptr @1396, ptr @1717, ptr @1717, ptr @1396, ptr @1716, ptr @1716, ptr @1716, ptr @1396, ptr @1396, ptr @1716, ptr @1716, ptr @1396, ptr @1716, ptr @1716, ptr @1716, ptr @1716, ptr @1716, ptr @1716, ptr @1716, ptr @1716, ptr @1716, ptr @1716, ptr @1716, ptr @1716], align 8
@switch.table._ZN4dump6reader2v46errors4Code5type_17h6149f9fc51a4527eE.4697 = private unnamed_addr constant [44 x i8] c"\08\0F\0F\0F\0F\08\0F\0F\0F\0F\0F\0F\0F\0F\0F\08\0F\08\0F\0F\08\04\04\08\0F\0F\0F\08\08\0F\0F\08\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F", align 8
@switch.table._ZN4dump6reader2v56errors13ResponseError8from_msg17h23f8f1669cbd8a60E = private unnamed_addr constant [47 x ptr] [ptr @1396, ptr @1716, ptr @1716, ptr @1716, ptr @1716, ptr @1396, ptr @1716, ptr @1716, ptr @1716, ptr @1716, ptr @1716, ptr @1716, ptr @1716, ptr @1716, ptr @1716, ptr @1396, ptr @1716, ptr @1396, ptr @1716, ptr @1716, ptr @1396, ptr @1717, ptr @1717, ptr @1396, ptr @1716, ptr @1716, ptr @1716, ptr @1396, ptr @1396, ptr @1716, ptr @1716, ptr @1396, ptr @1716, ptr @1716, ptr @1716, ptr @1716, ptr @1716, ptr @1716, ptr @1716, ptr @1716, ptr @1716, ptr @1716, ptr @1716, ptr @1716, ptr @1716, ptr @1716, ptr @1716], align 8
@switch.table._ZN4dump6reader2v56errors13ResponseError8from_msg17h23f8f1669cbd8a60E.4698 = private unnamed_addr constant [47 x i8] c"\08\0F\0F\0F\0F\08\0F\0F\0F\0F\0F\0F\0F\0F\0F\08\0F\08\0F\0F\08\04\04\08\0F\0F\0F\08\08\0F\0F\08\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F", align 8
@switch.table._ZN4dump6reader2v56errors13ResponseError8from_msg17h23f8f1669cbd8a60E.4699 = private unnamed_addr constant [47 x ptr] [ptr @1379, ptr @1380, ptr @1381, ptr @1382, ptr @1383, ptr @1384, ptr @1385, ptr @1386, ptr @1387, ptr @1388, ptr @1389, ptr @1390, ptr @1391, ptr @1392, ptr @1393, ptr @1394, ptr @1395, ptr @1396, ptr @1397, ptr @1398, ptr @1399, ptr @1400, ptr @1401, ptr @1402, ptr @1403, ptr @1404, ptr @1405, ptr @1406, ptr @1407, ptr @1408, ptr @1409, ptr @1410, ptr @1411, ptr @1412, ptr @1413, ptr @1414, ptr @1415, ptr @1416, ptr @1417, ptr @1418, ptr @1419, ptr @1420, ptr @1431, ptr @1432, ptr @1433, ptr @1434, ptr @1421], align 8
@switch.table._ZN4dump6reader2v56errors13ResponseError8from_msg17h23f8f1669cbd8a60E.4700 = private unnamed_addr constant [47 x i8] c"\15\14\0F\11 \0D\1C \19\13\13\0E\0C\0D\0B\1B\12\08\11\14\12\0F\1C\17\0E\0E\11\16\0C\16\17\13\14\14\11\0F\11\11\17\17\1A\1B\14\13\0F\16\18", align 8
@"switch.table._ZN4dump6reader6compat8v3_to_v412CompatV3ToV45tasks28_$u7b$$u7b$closure$u7d$$u7d$17hd01aa88b6b3ee584E" = private unnamed_addr constant [37 x i8] c"\00\01\02\03\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#+*", align 1
@"switch.table._ZN4dump6reader6compat8v5_to_v612CompatV5ToV64keys28_$u7b$$u7b$closure$u7d$$u7d$17h9b6531e7a8288159E" = private unnamed_addr constant [27 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0C\0F\10\11\12\13\14\15\16\17\18\1B\1C\1D\1E\1F", align 1
@switch.table._ZN4dump6writer29ChatCompletionsSettingsWriter13push_settings17ha22433ccec9c7d92E = private unnamed_addr constant [4 x ptr] [ptr @709, ptr @710, ptr @711, ptr @712], align 8
@switch.table._ZN4dump6writer29ChatCompletionsSettingsWriter13push_settings17ha22433ccec9c7d92E.4701 = private unnamed_addr constant [4 x i8] c"\06\0B\07\04", align 8
@"switch.table._ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hbbca3428cd9ac104E" = private unnamed_addr constant [256 x i8] [i8 -128, i8 -127, i8 -126, i8 -125, i8 -124, i8 -123, i8 -122, i8 -121, i8 -120, i8 -119, i8 -118, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31, i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47, i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63, i8 64, i8 65, i8 66, i8 67, i8 68, i8 69, i8 70, i8 71, i8 72, i8 73, i8 74, i8 75, i8 76, i8 77, i8 78, i8 79, i8 80, i8 81, i8 82, i8 83, i8 84, i8 85, i8 86, i8 87, i8 88, i8 89, i8 90, i8 91, i8 92, i8 93, i8 94, i8 95, i8 96, i8 97, i8 98, i8 99, i8 100, i8 101, i8 102, i8 103, i8 104, i8 105, i8 106, i8 107, i8 108, i8 109, i8 110, i8 111, i8 112, i8 113, i8 114, i8 115, i8 116, i8 117, i8 118, i8 119, i8 120, i8 121, i8 122, i8 123, i8 124, i8 125, i8 126, i8 127], align 1

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef align 8 ptr @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17h178f89ae18fbdcc8E"(ptr %.0.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [2 x i8], align 1                 ; 5 uses
  %i.d = alloca [6 x i8], align 4                 ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  br label %.outer.i.i

.outer.i.i:                                       ; preds = %bb.d, %bb.a
  %.sroa.0.042.i.ph.i.i = phi ptr [ %i.ae, %bb.d ], [ @208, %bb.a ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !145
  %i.g = tail call { i64, ptr } @"_ZN48_$LT$std..fs..File$u20$as$u20$std..io..Write$GT$5write17h3e2a2b9d0b3d6134E"(ptr noalias noundef nonnull align 4 dereferenceable(4) %.0.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.042.i.ph.i.i, i64 noundef 1) ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.g, 0        ; 2 uses
  %i.i = extractvalue { i64, ptr } %i.g, 1        ; 4 uses
  store i64 %i.h, ptr %i.e, align 8, !noalias !145
  store ptr %i.i, ptr %i.f, align 8, !noalias !145
  %i.j = trunc nuw i64 %i.h to i1
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  br i1 %i.j, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.outer.i.i, %.thread.i.i.i
  %i.l = phi i64 [ %i.ad, %.thread.i.i.i ], [ %i.k, %.outer.i.i ] ; 3 uses
  %i.m = phi ptr [ %i.ab, %.thread.i.i.i ], [ %i.i, %.outer.i.i ] ; 8 uses
  %i.n = and i64 %i.l, 3
  switch i64 %i.n, label %.lr.ph.i.unreachabledefault [
    i64 2, label %.split.i.i.i
    i64 3, label %bb.c
    i64 0, label %.split36.i.i.i
    i64 1, label %.split35.i.i.i
  ], !prof !18

.lr.ph.i.unreachabledefault:                      ; preds = %.lr.ph.i
  unreachable

default.unreachable:                              ; preds = %bb.t, %bb.k, %.lr.ph64.i
  unreachable

._crit_edge.i:                                    ; preds = %.thread.i.i.i, %.outer.i.i
  %.lcssa59.i = phi ptr [ %i.i, %.outer.i.i ], [ %i.ab, %.thread.i.i.i ] ; 3 uses
  %.lcssa53.i = phi i64 [ %i.k, %.outer.i.i ], [ %i.ad, %.thread.i.i.i ] ; 2 uses
  %i.o = icmp eq ptr %.lcssa59.i, null
  br i1 %i.o, label %_ZN10serde_json3ser9Formatter12begin_string17h77cc10ab446a3389E.exit.thread3.i, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i
  %i.p = icmp ugt ptr %.lcssa59.i, inttoptr (i64 1 to ptr)
  br i1 %i.p, label %.noexc.i.i.i, label %bb.d, !prof !19

.noexc.i.i.i:                                     ; preds = %bb.b
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %.lcssa53.i, i64 noundef 1, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1309) #41
  unreachable

.split.i.i.i:                                     ; preds = %.lr.ph.i
  %.mask37.i.i.i = and i64 %i.l, -4294967296
  %i.q = icmp eq i64 %.mask37.i.i.i, 17179869184
  br i1 %i.q, label %.thread.i.i.i, label %_ZN10serde_json3ser9Formatter12begin_string17h77cc10ab446a3389E.exit.i

.split36.i.i.i:                                   ; preds = %.lr.ph.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m) ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.s = load i8, ptr %i.r, align 8, !range !20, !noundef !21
  %i.t = icmp eq i8 %i.s, 35
  br i1 %i.t, label %.thread.i.i.i, label %_ZN10serde_json3ser9Formatter12begin_string17h77cc10ab446a3389E.exit.thread3.i

.split35.i.i.i:                                   ; preds = %.lr.ph.i
  %i.u = getelementptr i8, ptr %i.m, i64 15
  %i.v = load i8, ptr %i.u, align 8, !range !20, !noundef !21
  %i.w = icmp eq i8 %i.v, 35
  br i1 %i.w, label %.thread.i.i.i, label %_ZN10serde_json3ser9Formatter12begin_string17h77cc10ab446a3389E.exit.thread3.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.x = icmp ult ptr %i.m, inttoptr (i64 180388626432 to ptr)
  tail call void @llvm.assume(i1 %i.x)
  %.mask.i.i.i = and i64 %i.l, -4294967296
  %i.y = icmp eq i64 %.mask.i.i.i, 150323855360
  br i1 %i.y, label %.thread.i.i.i, label %_ZN10serde_json3ser9Formatter12begin_string17h77cc10ab446a3389E.exit.i

.thread.i.i.i:                                    ; preds = %bb.c, %.split35.i.i.i, %.split36.i.i.i, %.split.i.i.i
  call void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hbbd939ba801c9a27E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !145
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !145
  %i.z = tail call { i64, ptr } @"_ZN48_$LT$std..fs..File$u20$as$u20$std..io..Write$GT$5write17h3e2a2b9d0b3d6134E"(ptr noalias noundef nonnull align 4 dereferenceable(4) %.0.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.042.i.ph.i.i, i64 noundef 1) ; 2 uses
  %i.aa = extractvalue { i64, ptr } %i.z, 0       ; 2 uses
  %i.ab = extractvalue { i64, ptr } %i.z, 1       ; 4 uses
  store i64 %i.aa, ptr %i.e, align 8, !noalias !145
  store ptr %i.ab, ptr %i.f, align 8, !noalias !145
  %i.ac = trunc nuw i64 %i.aa to i1
  %i.ad = ptrtoint ptr %i.ab to i64               ; 2 uses
  br i1 %i.ac, label %.lr.ph.i, label %._crit_edge.i

bb.d:                                             ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.042.i.ph.i.i, i64 %.lcssa53.i
  %i.af = icmp eq ptr %.lcssa59.i, inttoptr (i64 1 to ptr)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !145
  br i1 %i.af, label %_ZN10serde_json3ser9Formatter12begin_string17h77cc10ab446a3389E.exit.thread.i, label %.outer.i.i

_ZN10serde_json3ser9Formatter12begin_string17h77cc10ab446a3389E.exit.thread3.i: ; preds = %._crit_edge.i, %.split35.i.i.i, %.split36.i.i.i
  %.sroa.05.1.i.i.ph.i = phi ptr [ %i.m, %.split35.i.i.i ], [ %i.m, %.split36.i.i.i ], [ @1308, %._crit_edge.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !145
  br label %_ZN10serde_json3ser18format_escaped_str17h7f68db694562f0e8E.exit

_ZN10serde_json3ser9Formatter12begin_string17h77cc10ab446a3389E.exit.i: ; preds = %bb.c, %.split.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !145
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %_ZN10serde_json3ser9Formatter12begin_string17h77cc10ab446a3389E.exit.thread.i, label %_ZN10serde_json3ser18format_escaped_str17h7f68db694562f0e8E.exit.thread

_ZN10serde_json3ser9Formatter12begin_string17h77cc10ab446a3389E.exit.thread.i: ; preds = %bb.d, %_ZN10serde_json3ser9Formatter12begin_string17h77cc10ab446a3389E.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 5
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br label %.outer.i10.i

.outer.i10.i:                                     ; preds = %_ZN10serde_json3ser9Formatter17write_char_escape17he37ff1d2884e5632E.exit.i.i, %_ZN10serde_json3ser9Formatter12begin_string17h77cc10ab446a3389E.exit.thread.i
  %.sroa.8.0.ph.i.i = phi i64 [ %i.au, %_ZN10serde_json3ser9Formatter17write_char_escape17he37ff1d2884e5632E.exit.i.i ], [ %1, %_ZN10serde_json3ser9Formatter12begin_string17h77cc10ab446a3389E.exit.thread.i ] ; 4 uses
  %.sroa.01.0.ph.i.i = phi ptr [ %i.as, %_ZN10serde_json3ser9Formatter17write_char_escape17he37ff1d2884e5632E.exit.i.i ], [ %0, %_ZN10serde_json3ser9Formatter12begin_string17h77cc10ab446a3389E.exit.thread.i ] ; 4 uses
  %cond = icmp eq i64 %.sroa.8.0.ph.i.i, 0
  br i1 %cond, label %_ZN10serde_json3ser27format_escaped_str_contents17hf118b3e394b985c2E.exit.thread8.i, label %.lr.ph

bb.e:                                             ; preds = %.lr.ph
  %i.ak = add i64 %.sroa.06.0.i.i208, 1           ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ak, %.sroa.8.0.ph.i.i
  br i1 %exitcond.not.i.i, label %_ZN10serde_json3ser27format_escaped_str_contents17hf118b3e394b985c2E.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %.outer.i10.i, %bb.e
  %.sroa.06.0.i.i208 = phi i64 [ %i.ak, %bb.e ], [ 0, %.outer.i10.i ] ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.01.0.ph.i.i, i64 %.sroa.06.0.i.i208
  %i.am = load i8, ptr %i.al, align 1, !alias.scope !147, !noundef !21 ; 3 uses
  %i.an = zext i8 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr @_ZN10serde_json3ser6ESCAPE17h0276473040442971E, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !noalias !147, !noundef !21 ; 3 uses
  %i.aq = icmp eq i8 %i.ap, 0
  br i1 %i.aq, label %bb.e, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.01.0.ph.i.i, i64 %.sroa.06.0.i.i208
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  %i.at = xor i64 %.sroa.06.0.i.i208, -1
  %i.au = add i64 %.sroa.8.0.ph.i.i, %i.at
  %i.av = icmp eq i64 %.sroa.06.0.i.i208, 0
  br i1 %i.av, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aw = call fastcc noundef ptr @_ZN3std2io5Write9write_all17h28acb055d4d75283E(ptr noalias noundef nonnull align 4 dereferenceable(4) %.0.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.01.0.ph.i.i, i64 noundef range(i64 1, 0) %.sroa.06.0.i.i208) ; 2 uses
  %.not21.i.i = icmp eq ptr %i.aw, null
  br i1 %.not21.i.i, label %bb.h, label %_ZN10serde_json3ser18format_escaped_str17h7f68db694562f0e8E.exit.thread

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ax = icmp eq i8 %i.ap, 117
  br i1 %i.ax, label %bb.i, label %bb.r

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !147
  %i.ay = and i8 %i.am, 15
  %i.az = zext nneg i8 %i.ay to i64
  %i.ba = lshr i8 %i.am, 4
  %i.bb = zext nneg i8 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr @_ZN10serde_json3ser9Formatter17write_char_escape10HEX_DIGITS17h3ef7aa5f51889305E, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !noalias !147, !noundef !21
  %i.be = getelementptr inbounds nuw i8, ptr @_ZN10serde_json3ser9Formatter17write_char_escape10HEX_DIGITS17h3ef7aa5f51889305E, i64 %i.az
  %i.bf = load i8, ptr %i.be, align 1, !noalias !147, !noundef !21
  store <4 x i8> <i8 92, i8 117, i8 48, i8 48>, ptr %i.d, align 4, !noalias !147
  store i8 %i.bd, ptr %i.ah, align 4, !noalias !147
  store i8 %i.bf, ptr %i.ai, align 1, !noalias !147
  br label %bb.j

bb.j:                                             ; preds = %bb.q, %bb.i
  %.sroa.0.042.i.i.i.i = phi ptr [ %i.d, %bb.i ], [ %.sroa.0.116.i.i.i.i, %bb.q ] ; 3 uses
  %.sroa.5.041.i.i.i.i = phi i64 [ 6, %bb.i ], [ %.sroa.5.114.i.i.i.i, %bb.q ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !148
  %i.bg = call { i64, ptr } @"_ZN48_$LT$std..fs..File$u20$as$u20$std..io..Write$GT$5write17h3e2a2b9d0b3d6134E"(ptr noalias noundef nonnull align 4 dereferenceable(4) %.0.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.042.i.i.i.i, i64 noundef %.sroa.5.041.i.i.i.i) ; 2 uses
  %i.bh = extractvalue { i64, ptr } %i.bg, 0      ; 2 uses
  %i.bi = extractvalue { i64, ptr } %i.bg, 1      ; 11 uses
  store i64 %i.bh, ptr %i.b, align 8, !noalias !148
  store ptr %i.bi, ptr %i.aj, align 8, !noalias !148
  %i.bj = trunc nuw i64 %i.bh to i1
  %i.bk = ptrtoint ptr %i.bi to i64               ; 7 uses
  br i1 %i.bj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bl = and i64 %i.bk, 3
  switch i64 %i.bl, label %default.unreachable [
    i64 2, label %.split.i.i.i.i
    i64 3, label %bb.p
    i64 0, label %.split36.i.i.i.i
    i64 1, label %.split35.i.i.i.i
  ], !prof !18

bb.l:                                             ; preds = %bb.j
  %i.bm = icmp eq ptr %i.bi, null
  br i1 %i.bm, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bn = icmp ult i64 %.sroa.5.041.i.i.i.i, %i.bk
end_hunk_0
begin_hunk_1_@"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h00c2b5f89cd75984E":bb.a
.noexc11.i.i.i:                                   ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !90336
  br label %_ZN10serde_core2de9SeqAccess12next_element17h9786859d739e1520E.exit.i.i.i.a

bb.ab:                                            ; preds = %bb.u
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cf, i64 88 ; 2 uses
  %i.di = load i8, ptr %i.dh, align 8, !range !42, !alias.scope !90332, !noalias !90333, !noundef !21
  %i.dj = trunc nuw i8 %i.di to i1
  br i1 %i.dj, label %bb.at, label %bb.as

bb.ac:                                            ; preds = %bb.u
  call void @llvm.experimental.noalias.scope.decl(metadata !90337)
  call void @llvm.experimental.noalias.scope.decl(metadata !90338)
  call void @llvm.experimental.noalias.scope.decl(metadata !90339)
  call void @llvm.experimental.noalias.scope.decl(metadata !90340)
  call void @llvm.experimental.noalias.scope.decl(metadata !90341)
  call void @llvm.experimental.noalias.scope.decl(metadata !90342)
  call void @llvm.experimental.noalias.scope.decl(metadata !90343)
  call void @llvm.experimental.noalias.scope.decl(metadata !90344)
  br label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h83771550cbef8e56E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h83771550cbef8e56E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h83771550cbef8e56E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.backedge", %bb.ac
  %i.dk = phi i8 [ 1, %bb.ac ], [ %.be, %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h83771550cbef8e56E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.backedge" ]
  call void @llvm.experimental.noalias.scope.decl(metadata !90345)
  %i.dl = trunc nuw i8 %i.dk to i1
  br i1 %i.dl, label %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ad

.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:          ; preds = %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h83771550cbef8e56E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.dm = load i8, ptr %i.ci, align 1, !alias.scope !90346, !noalias !90347, !noundef !21
  br label %bb.ae

bb.ad:                                            ; preds = %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h83771550cbef8e56E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !90348
  invoke fastcc void @"_ZN101_$LT$serde_json..iter..LineColIterator$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd8e19cf1e210051eE"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.n, ptr noalias noundef align 8 dereferenceable(32) %i.cj)
          to label %.noexc12.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !90316

.noexc12.i.i.i:                                   ; preds = %bb.ad
  %i.dn = load i8, ptr %i.n, align 8, !range !30, !noalias !90348, !noundef !21
  switch i8 %i.dn, label %bb.ai [
    i8 2, label %bb.ak
    i8 0, label %.thread30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  ], !prof !77

.thread30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:        ; preds = %.noexc12.i.i.i
  %i.do = load i8, ptr %i.br, align 1, !noalias !90348, !noundef !21 ; 2 uses
  store i8 1, ptr %i.ch, align 8, !alias.scope !90346, !noalias !90347
  store i8 %i.do, ptr %i.ci, align 1, !alias.scope !90346, !noalias !90347
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !90348
  br label %bb.ae

bb.ae:                                            ; preds = %.thread30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dp = phi i8 [ %i.dm, %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.do, %.thread30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  switch i8 %i.dp, label %bb.aj [
    i8 32, label %bb.af
    i8 10, label %bb.af
    i8 9, label %bb.af
    i8 13, label %bb.af
  ]

bb.af:                                            ; preds = %bb.ae, %bb.ae, %bb.ae, %bb.ae
  store i8 0, ptr %i.ch, align 8, !alias.scope !90349, !noalias !90350
  %i.dq = load i64, ptr %i.cg, align 8, !range !34, !alias.scope !90349, !noalias !90350 ; 2 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.dq, -9223372036854775808
  br i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h83771550cbef8e56E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.backedge", label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dr = load i64, ptr %i.ck, align 8, !alias.scope !90351, !noalias !90352, !noundef !21 ; 3 uses
  %i.ds = icmp eq i64 %i.dr, %i.dq
  br i1 %i.ds, label %bb.ah, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h6569782c65035c47E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

bb.ah:                                            ; preds = %bb.ag
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17ha41f396e8ea6efa1E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.cg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1725)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h6569782c65035c47E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !90316

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h6569782c65035c47E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.ah, %bb.ag
  %i.dt = load ptr, ptr %i.cl, align 8, !alias.scope !90351, !noalias !90352, !nonnull !21, !noundef !21
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.dr
  store i8 %i.dp, ptr %i.du, align 1, !noalias !90353
  %i.dv = add i64 %i.dr, 1
  store i64 %i.dv, ptr %i.ck, align 8, !alias.scope !90351, !noalias !90352
  %.pre.pre.i.i.i.i.i.i.i.i = load i8, ptr %i.ch, align 8, !range !42, !alias.scope !90346, !noalias !90347
  br label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h83771550cbef8e56E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.backedge"

"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h83771550cbef8e56E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.backedge": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h6569782c65035c47E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.af
  %.be = phi i8 [ %.pre.pre.i.i.i.i.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h6569782c65035c47E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ 0, %bb.af ]
  br label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h83771550cbef8e56E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

bb.ai:                                            ; preds = %.noexc12.i.i.i
  %i.dw = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8, !noalias !90348, !nonnull !21, !noundef !21
  %i.dy = invoke noundef nonnull align 8 ptr @_ZN10serde_json5error5Error2io17hee74e472dc93099bE(ptr noundef nonnull %i.dx)
          to label %.noexc14.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i, !noalias !90316

.noexc14.i.i.i:                                   ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !90348
  br label %bb.ar

bb.aj:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !90354
  %i.dz = icmp eq i8 %i.dp, 34
  br i1 %i.dz, label %bb.al, label %bb.ao, !prof !26

bb.ak:                                            ; preds = %.noexc12.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !90348
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cf, i64 56
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ea, align 8, !alias.scope !90355, !noalias !90356, !noundef !21
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cf, i64 64
  %.val13.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.eb, align 8, !alias.scope !90355, !noalias !90356, !noundef !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !90357
  store i64 5, ptr %i.m, align 8, !noalias !90354
  %i.ec = invoke noundef nonnull align 8 ptr @_ZN10serde_json5error5Error6syntax17hd0fb411d419d3392E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.m, i64 noundef %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val13.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
          to label %.noexc15.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i, !noalias !90316

.noexc15.i.i.i:                                   ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !90357
  br label %bb.ar

bb.al:                                            ; preds = %bb.aj
  store i8 0, ptr %i.ch, align 8, !alias.scope !90358, !noalias !90356
  %i.ed = load i64, ptr %i.cg, align 8, !range !34, !alias.scope !90358, !noalias !90356 ; 2 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ed, -9223372036854775808
  br i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h83771550cbef8e56E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ee = load i64, ptr %i.ck, align 8, !alias.scope !90359, !noalias !90360, !noundef !21 ; 3 uses
  %i.ef = icmp eq i64 %i.ee, %i.ed
  br i1 %i.ef, label %bb.an, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h6569782c65035c47E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

bb.an:                                            ; preds = %bb.am
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17ha41f396e8ea6efa1E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.cg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1725)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h6569782c65035c47E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !90316

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h6569782c65035c47E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.an, %bb.am
  %i.eg = load ptr, ptr %i.cl, align 8, !alias.scope !90359, !noalias !90360, !nonnull !21, !noundef !21
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.ee
  store i8 34, ptr %i.eh, align 1, !noalias !90361
  %i.ei = add i64 %i.ee, 1
  store i64 %i.ei, ptr %i.ck, align 8, !alias.scope !90359, !noalias !90360
  br label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h83771550cbef8e56E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h83771550cbef8e56E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h6569782c65035c47E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.al
  %i.ej = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  store i64 0, ptr %i.ej, align 8, !alias.scope !90355, !noalias !90356
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !90354
  invoke fastcc void @"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$9parse_str17h4bc67617f4f450afE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.o, ptr noalias noundef align 8 dereferenceable(64) %i.cg, ptr noalias noundef nonnull align 8 dereferenceable(96) %i.cf)
          to label %.noexc17.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !90316

.noexc17.i.i.i:                                   ; preds = %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h83771550cbef8e56E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.ek = load i64, ptr %i.o, align 8, !range !48, !noalias !90354, !noundef !21
  %i.el = icmp eq i64 %i.ek, 2
  %i.em = load ptr, ptr %i.bs, align 8, !noalias !90354 ; 3 uses
  br i1 %i.el, label %bb.ap, label %bb.aq

bb.ao:                                            ; preds = %bb.aj
  %i.en = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$17peek_invalid_type17hf27f99e66d649142E"(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.cf, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @89)
          to label %.noexc18.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i, !noalias !90316

bb.ap:                                            ; preds = %.noexc17.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !90354
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !90354
  br label %bb.ar

bb.aq:                                            ; preds = %.noexc17.i.i.i
  %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !90354
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.em) ]
  invoke fastcc void @"_ZN195_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h71781450ec8f4611E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.p, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.em, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
          to label %.noexc19.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !90316

.noexc19.i.i.i:                                   ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !90354
  %i.eo = load i8, ptr %i.p, align 8, !range !42, !noalias !90354, !noundef !21
  %i.ep = trunc nuw i8 %i.eo to i1
  br i1 %i.ep, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, label %switch.lookup, !prof !19

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %.noexc19.i.i.i
  %.phi.trans.insert.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.pre.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !90354
  br label %.noexc18.i.i.i

.noexc18.i.i.i:                                   ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i, %bb.ao
  %i.eq = phi ptr [ %.pre.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i ], [ %i.en, %bb.ao ]
  %i.er = getelementptr inbounds nuw i8, ptr %i.cf, i64 56
  %.val14.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.er, align 8, !alias.scope !90355, !noalias !90356
  %i.es = getelementptr inbounds nuw i8, ptr %i.cf, i64 64
  %.val15.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.es, align 8, !alias.scope !90355, !noalias !90356
  %i.et = invoke fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17he6c9c9fa132f9ae3E(ptr noalias noundef nonnull align 8 %i.eq, i64 %.val14.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.val15.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
          to label %.noexc20.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i, !noalias !90316

.noexc20.i.i.i:                                   ; preds = %.noexc18.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !90354
  br label %bb.ar

bb.ar:                                            ; preds = %.noexc20.i.i.i, %bb.ap, %.noexc15.i.i.i, %.noexc14.i.i.i
  %.sroa.121.0.ph.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.dy, %.noexc14.i.i.i ], [ %i.ec, %.noexc15.i.i.i ], [ %i.et, %.noexc20.i.i.i ], [ %i.em, %bb.ap ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.121.0.ph.i.i.i.i.i.i.i.i.i.i.i) ]
  br label %_ZN10serde_core2de9SeqAccess12next_element17h9786859d739e1520E.exit.i.i.i.a

switch.lookup:                                    ; preds = %.noexc19.i.i.i
  %i.eu = load i8, ptr %i.bt, align 1, !range !110, !noalias !90354, !noundef !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !90354
  %switch.tableidx = xor i8 %i.eu, -128
  %2 = zext i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @"switch.table._ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hbbca3428cd9ac104E", i64 %2
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %.thread.i38.i.i

default.unreachable:                              ; preds = %.noexc33.i.i.i
  unreachable

bb.as:                                            ; preds = %bb.ab
  %i.ev = getelementptr inbounds nuw i8, ptr %i.cf, i64 89 ; 2 uses
  %i.ew = load i8, ptr %i.ev, align 1, !alias.scope !90332, !noalias !90333, !noundef !21
  %i.ex = add i8 %i.ew, -1                        ; 2 uses
  store i8 %i.ex, ptr %i.ev, align 1, !alias.scope !90332, !noalias !90333
  %i.ey = icmp eq i8 %i.ex, 0
  br i1 %i.ey, label %bb.mc, label %bb.at, !prof !19

bb.at:                                            ; preds = %bb.as, %bb.ab
  store i8 0, ptr %i.ch, align 8, !alias.scope !90362, !noalias !90333
  %i.ez = load i64, ptr %i.cg, align 8, !range !34, !alias.scope !90362, !noalias !90333 ; 2 uses
  %.not.i.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.ez, -9223372036854775808
  br i1 %.not.i.not.i.i.i.i.i.i.i.i, label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h83771550cbef8e56E.exit.i.i.i.i.i.i.i.i", label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fa = load i64, ptr %i.ck, align 8, !alias.scope !90363, !noalias !90364, !noundef !21 ; 3 uses
  %i.fb = icmp eq i64 %i.fa, %i.ez
  br i1 %i.fb, label %bb.av, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h6569782c65035c47E.exit.i.i.i.i.i.i.i.i.i"

bb.av:                                            ; preds = %bb.au
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17ha41f396e8ea6efa1E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.cg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1725)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h6569782c65035c47E.exit.i.i.i.i.i.i.i.i.i" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !90316

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h6569782c65035c47E.exit.i.i.i.i.i.i.i.i.i": ; preds = %bb.av, %bb.au
  %i.fc = load ptr, ptr %i.cl, align 8, !alias.scope !90363, !noalias !90364, !nonnull !21, !noundef !21
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.fa
  store i8 123, ptr %i.fd, align 1, !noalias !90365
  %i.fe = add i64 %i.fa, 1
  store i64 %i.fe, ptr %i.ck, align 8, !alias.scope !90363, !noalias !90364
  br label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h83771550cbef8e56E.exit.i.i.i.i.i.i.i.i"

"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h83771550cbef8e56E.exit.i.i.i.i.i.i.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h6569782c65035c47E.exit.i.i.i.i.i.i.i.i.i", %bb.at
  call void @llvm.experimental.noalias.scope.decl(metadata !90366)
  call void @llvm.experimental.noalias.scope.decl(metadata !90367)
  call void @llvm.experimental.noalias.scope.decl(metadata !90368)
  call void @llvm.experimental.noalias.scope.decl(metadata !90369)
  br label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h83771550cbef8e56E.exit.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h83771550cbef8e56E.exit.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h83771550cbef8e56E.exit.i.i.i.i.i.i.i.i.i.i.i.i.backedge", %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h83771550cbef8e56E.exit.i.i.i.i.i.i.i.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !90370)
  %i.ff = load i8, ptr %i.ch, align 8, !range !42, !alias.scope !90371, !noalias !90372, !noundef !21
  %i.fg = trunc nuw i8 %i.ff to i1
  br i1 %i.fg, label %.thread.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.aw

.thread.i.i.i.i.i.i.i.i.i.i.i.i:                  ; preds = %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h83771550cbef8e56E.exit.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.fh = load i8, ptr %i.ci, align 1, !alias.scope !90371, !noalias !90372, !noundef !21
  br label %bb.ax

bb.aw:                                            ; preds = %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h83771550cbef8e56E.exit.i.i.i.i.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !90373
  invoke fastcc void @"_ZN101_$LT$serde_json..iter..LineColIterator$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd8e19cf1e210051eE"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.k, ptr noalias noundef align 8 dereferenceable(32) %i.cj)
          to label %.noexc22.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i, !noalias !90316

.noexc22.i.i.i:                                   ; preds = %bb.aw
  %i.fi = load i8, ptr %i.k, align 8, !range !30, !noalias !90373, !noundef !21
  switch i8 %i.fi, label %bb.bb [
    i8 2, label %bb.bc
    i8 0, label %.thread30.i.i.i.i.i.i.i.i.i.i.i.i
  ], !prof !77

.thread30.i.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %.noexc22.i.i.i
  %i.fj = load i8, ptr %i.bu, align 1, !noalias !90373, !noundef !21 ; 2 uses
  store i8 1, ptr %i.ch, align 8, !alias.scope !90371, !noalias !90372
  store i8 %i.fj, ptr %i.ci, align 1, !alias.scope !90371, !noalias !90372
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !90373
  br label %bb.ax

bb.ax:                                            ; preds = %.thread30.i.i.i.i.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fk = phi i8 [ %i.fh, %.thread.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.fj, %.thread30.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  switch i8 %i.fk, label %bb.bd [
    i8 32, label %bb.ay
    i8 10, label %bb.ay
    i8 9, label %bb.ay
    i8 13, label %bb.ay
    i8 34, label %bb.be
    i8 125, label %bb.bh
  ], !prof !80

bb.ay:                                            ; preds = %bb.ax, %bb.ax, %bb.ax, %bb.ax
  store i8 0, ptr %i.ch, align 8, !alias.scope !90374, !noalias !90375
  %i.fl = load i64, ptr %i.cg, align 8, !range !34, !alias.scope !90374, !noalias !90375 ; 2 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.fl, -9223372036854775808
  br i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h83771550cbef8e56E.exit.i.i.i.i.i.i.i.i.i.i.i.i.backedge", label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fm = load i64, ptr %i.ck, align 8, !alias.scope !90376, !noalias !90377, !noundef !21 ; 3 uses
  %i.fn = icmp eq i64 %i.fm, %i.fl
  br i1 %i.fn, label %bb.ba, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h6569782c65035c47E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"

bb.ba:                                            ; preds = %bb.az
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17ha41f396e8ea6efa1E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.cg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1725)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h6569782c65035c47E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" unwind label %.loopexit.split-lp.loopexit.i.i.i, !noalias !90316

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h6569782c65035c47E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.ba, %bb.az
  %i.fo = load ptr, ptr %i.cl, align 8, !alias.scope !90376, !noalias !90377, !nonnull !21, !noundef !21
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.fm
  store i8 %i.fk, ptr %i.fp, align 1, !noalias !90378
  %i.fq = add i64 %i.fm, 1
  store i64 %i.fq, ptr %i.ck, align 8, !alias.scope !90376, !noalias !90377
  br label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h83771550cbef8e56E.exit.i.i.i.i.i.i.i.i.i.i.i.i.backedge"

"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h83771550cbef8e56E.exit.i.i.i.i.i.i.i.i.i.i.i.i.backedge": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h6569782c65035c47E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.ay
  br label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h83771550cbef8e56E.exit.i.i.i.i.i.i.i.i.i.i.i.i"

bb.bb:                                            ; preds = %.noexc22.i.i.i
  %i.fr = load ptr, ptr %i.bv, align 8, !noalias !90373, !nonnull !21, !noundef !21
  %i.fs = invoke noundef nonnull align 8 ptr @_ZN10serde_json5error5Error2io17hee74e472dc93099bE(ptr noundef nonnull %i.fr)
          to label %.noexc24.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !90316

.noexc24.i.i.i:                                   ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !90373
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17hb5f850663226f507E.exit.i.i.i.i.i.i.i.i"

bb.bc:                                            ; preds = %.noexc22.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !90373
  %i.ft = getelementptr inbounds nuw i8, ptr %i.cf, i64 56
  %.val.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ft, align 8, !alias.scope !90379, !noalias !90380, !noundef !21
  %i.fu = getelementptr inbounds nuw i8, ptr %i.cf, i64 64
  %.val7.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.fu, align 8, !alias.scope !90379, !noalias !90380, !noundef !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !90381
  store i64 3, ptr %i.j, align 8, !noalias !90382
  %i.fv = invoke noundef nonnull align 8 ptr @_ZN10serde_json5error5Error6syntax17hd0fb411d419d3392E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.j, i64 noundef %.val.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val7.i.i.i.i.i.i.i.i.i.i.i)
          to label %.noexc25.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !90316

.noexc25.i.i.i:                                   ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !90381
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17hb5f850663226f507E.exit.i.i.i.i.i.i.i.i"

bb.bd:                                            ; preds = %bb.ax
  %i.fw = getelementptr inbounds nuw i8, ptr %i.cf, i64 56
  %.val8.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.fw, align 8, !alias.scope !90379, !noalias !90380, !noundef !21
  %i.fx = getelementptr inbounds nuw i8, ptr %i.cf, i64 64
  %.val9.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.fx, align 8, !alias.scope !90379, !noalias !90380, !noundef !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !90383
  store i64 17, ptr %i.i, align 8, !noalias !90382
  %i.fy = invoke noundef nonnull align 8 ptr @_ZN10serde_json5error5Error6syntax17hd0fb411d419d3392E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.i, i64 noundef %.val8.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val9.i.i.i.i.i.i.i.i.i.i.i)
          to label %.noexc26.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !90316

.noexc26.i.i.i:                                   ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !90383
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17hb5f850663226f507E.exit.i.i.i.i.i.i.i.i"

bb.be:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !90382
  call void @llvm.experimental.noalias.scope.decl(metadata !90384)
  call void @llvm.experimental.noalias.scope.decl(metadata !90385)
  call void @llvm.experimental.noalias.scope.decl(metadata !90386)
  call void @llvm.experimental.noalias.scope.decl(metadata !90387)
  store i8 0, ptr %i.ch, align 8, !alias.scope !90388, !noalias !90389
  %i.fz = load i64, ptr %i.cg, align 8, !range !34, !alias.scope !90388, !noalias !90389 ; 2 uses
  %.not.i.i.i.i.i.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.fz, -9223372036854775808
  br i1 %.not.i.i.i.i.i.not.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h83771550cbef8e56E.exit.i.i.i.i.i.i.i22.i.i.i.i.i.i.i.i", label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ga = load i64, ptr %i.ck, align 8, !alias.scope !90390, !noalias !90391, !noundef !21 ; 3 uses
  %i.gb = icmp eq i64 %i.ga, %i.fz
  br i1 %i.gb, label %bb.bg, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h6569782c65035c47E.exit.i.i.i.i.i.i.i.i21.i.i.i.i.i.i.i.i"

bb.bg:                                            ; preds = %bb.bf
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17ha41f396e8ea6efa1E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.cg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1725)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h6569782c65035c47E.exit.i.i.i.i.i.i.i.i21.i.i.i.i.i.i.i.i" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !90316

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h6569782c65035c47E.exit.i.i.i.i.i.i.i.i21.i.i.i.i.i.i.i.i": ; preds = %bb.bg, %bb.bf
  %i.gc = load ptr, ptr %i.cl, align 8, !alias.scope !90390, !noalias !90391, !nonnull !21, !noundef !21
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.ga
  store i8 34, ptr %i.gd, align 1, !noalias !90392
  %i.ge = add i64 %i.ga, 1
  store i64 %i.ge, ptr %i.ck, align 8, !alias.scope !90390, !noalias !90391
  br label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h83771550cbef8e56E.exit.i.i.i.i.i.i.i22.i.i.i.i.i.i.i.i"

"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h83771550cbef8e56E.exit.i.i.i.i.i.i.i22.i.i.i.i.i.i.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h6569782c65035c47E.exit.i.i.i.i.i.i.i.i21.i.i.i.i.i.i.i.i", %bb.be
  %i.gf = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  store i64 0, ptr %i.gf, align 8, !alias.scope !90393, !noalias !90389
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !90394
  invoke fastcc void @"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$9parse_str17h4bc67617f4f450afE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef align 8 dereferenceable(64) %i.cg, ptr noalias noundef nonnull align 8 dereferenceable(96) %i.cf)
          to label %.noexc28.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !90316

.noexc28.i.i.i:                                   ; preds = %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h83771550cbef8e56E.exit.i.i.i.i.i.i.i22.i.i.i.i.i.i.i.i"
  %i.gg = load i64, ptr %i.h, align 8, !range !48, !noalias !90394, !noundef !21
  %i.gh = icmp eq i64 %i.gg, 2
  %i.gi = load ptr, ptr %i.bw, align 8, !noalias !90394, !nonnull !21, !noundef !21 ; 2 uses
  br i1 %i.gh, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h367c41bed5e5f1c5E.exit.thread.i.i.i.i.i.i.i.i.i.i.i", label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h367c41bed5e5f1c5E.exit.i.i.i.i.i.i.i.i.i.i.i", !prof !61

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h367c41bed5e5f1c5E.exit.thread.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc28.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !90394
  br label %bb.bi

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h367c41bed5e5f1c5E.exit.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc28.i.i.i
  %.sroa.4.0.copyload.i.i.i.i.i.i.i24.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i23.i.i.i.i.i.i.i.i, align 8, !noalias !90394
  invoke fastcc void @"_ZN195_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h71781450ec8f4611E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.l, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.gi, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i.i.i24.i.i.i.i.i.i.i.i)
          to label %.noexc29.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !90316

.noexc29.i.i.i:                                   ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h367c41bed5e5f1c5E.exit.i.i.i.i.i.i.i.i.i.i.i"
  %.pre.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.l, align 8, !range !42, !noalias !90382
  %i.gj = trunc nuw i8 %.pre.i.i.i.i.i.i.i.i.i.i.i to i1
end_hunk_1
begin_hunk_2_@"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h00c2b5f89cd75984E":bb.a
  %i.gv = trunc nuw i8 %i.gu to i1
  br i1 %i.gv, label %bb.me, label %bb.md

bb.mc:                                            ; preds = %bb.as
  %i.gw = getelementptr inbounds nuw i8, ptr %i.cf, i64 56
  %.val18.i.i.i.i.i.i.i.i = load i64, ptr %i.gw, align 8, !alias.scope !90332, !noalias !90333, !noundef !21
  %i.gx = getelementptr inbounds nuw i8, ptr %i.cf, i64 64
  %.val19.i.i.i.i.i.i.i.i = load i64, ptr %i.gx, align 8, !alias.scope !90332, !noalias !90333, !noundef !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !90396
  store i64 24, ptr %i.f, align 8, !noalias !90335
  %i.gy = invoke noundef nonnull align 8 ptr @_ZN10serde_json5error5Error6syntax17hd0fb411d419d3392E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.f, i64 noundef %.val18.i.i.i.i.i.i.i.i, i64 noundef %.val19.i.i.i.i.i.i.i.i)
          to label %.noexc34.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i, !noalias !90316

.noexc34.i.i.i:                                   ; preds = %bb.mc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !90396
  br label %_ZN10serde_core2de9SeqAccess12next_element17h9786859d739e1520E.exit.i.i.i.a

bb.md:                                            ; preds = %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17hb5f850663226f507E.exit.i.i.i.i.i.i.i.i"
  %i.gz = getelementptr inbounds nuw i8, ptr %i.cf, i64 89 ; 2 uses
  %i.ha = load i8, ptr %i.gz, align 1, !alias.scope !90332, !noalias !90333, !noundef !21
  %i.hb = add i8 %i.ha, 1
  store i8 %i.hb, ptr %i.gz, align 1, !alias.scope !90332, !noalias !90333
  br i1 %.sink.i20.i.i.i.i.i.i.i.i, label %_ZN10serde_core2de9SeqAccess12next_element17h9786859d739e1520E.exit.i.i.i.a, label %bb.mf

bb.me:                                            ; preds = %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17hb5f850663226f507E.exit.i.i.i.i.i.i.i.i"
  br i1 %.sink.i20.i.i.i.i.i.i.i.i, label %_ZN10serde_core2de9SeqAccess12next_element17h9786859d739e1520E.exit.i.i.i.a, label %bb.mf

bb.mf:                                            ; preds = %bb.me, %bb.md
  call void @llvm.experimental.noalias.scope.decl(metadata !90397)
  br label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h83771550cbef8e56E.exit.i32.i.i.i.i.i.i.i.i"

"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h83771550cbef8e56E.exit.i32.i.i.i.i.i.i.i.i": ; preds = %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h83771550cbef8e56E.exit.i32.i.i.i.i.i.i.i.i.backedge", %bb.mf
  call void @llvm.experimental.noalias.scope.decl(metadata !90398)
  %i.hc = load i8, ptr %i.ch, align 8, !range !42, !alias.scope !90399, !noalias !90400, !noundef !21
  %i.hd = trunc nuw i8 %i.hc to i1
  br i1 %i.hd, label %.thread.i41.i.i.i.i.i.i.i.i, label %bb.mg

.thread.i41.i.i.i.i.i.i.i.i:                      ; preds = %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h83771550cbef8e56E.exit.i32.i.i.i.i.i.i.i.i"
  %i.he = load i8, ptr %i.ci, align 1, !alias.scope !90399, !noalias !90400, !noundef !21
  br label %bb.mh

bb.mg:                                            ; preds = %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h83771550cbef8e56E.exit.i32.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !90401
  invoke fastcc void @"_ZN101_$LT$serde_json..iter..LineColIterator$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd8e19cf1e210051eE"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.e, ptr noalias noundef align 8 dereferenceable(32) %i.cj)
          to label %.noexc35.i.i.i unwind label %.loopexit.i39.i.i, !noalias !90316

.noexc35.i.i.i:                                   ; preds = %bb.mg
  %i.hf = load i8, ptr %i.e, align 8, !range !30, !noalias !90401, !noundef !21
  switch i8 %i.hf, label %bb.ml [
    i8 2, label %bb.mm
    i8 0, label %.thread30.i29.i.i.i.i.i.i.i.i
  ], !prof !77

.thread30.i29.i.i.i.i.i.i.i.i:                    ; preds = %.noexc35.i.i.i
  %i.hg = load i8, ptr %i.by, align 1, !noalias !90401, !noundef !21 ; 2 uses
  store i8 1, ptr %i.ch, align 8, !alias.scope !90399, !noalias !90400
  store i8 %i.hg, ptr %i.ci, align 1, !alias.scope !90399, !noalias !90400
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !90401
  br label %bb.mh

bb.mh:                                            ; preds = %.thread30.i29.i.i.i.i.i.i.i.i, %.thread.i41.i.i.i.i.i.i.i.i
  %i.hh = phi i8 [ %i.he, %.thread.i41.i.i.i.i.i.i.i.i ], [ %i.hg, %.thread30.i29.i.i.i.i.i.i.i.i ] ; 2 uses
  switch i8 %i.hh, label %bb.mq [
    i8 32, label %bb.mi
    i8 10, label %bb.mi
    i8 9, label %bb.mi
    i8 13, label %bb.mi
    i8 125, label %bb.mn
  ], !prof !49

bb.mi:                                            ; preds = %bb.mh, %bb.mh, %bb.mh, %bb.mh
  store i8 0, ptr %i.ch, align 8, !alias.scope !90402, !noalias !90403
  %i.hi = load i64, ptr %i.cg, align 8, !range !34, !alias.scope !90402, !noalias !90403 ; 2 uses
  %.not.i.not.i30.i.i.i.i.i.i.i.i = icmp eq i64 %i.hi, -9223372036854775808
  br i1 %.not.i.not.i30.i.i.i.i.i.i.i.i, label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h83771550cbef8e56E.exit.i32.i.i.i.i.i.i.i.i.backedge", label %bb.mj

bb.mj:                                            ; preds = %bb.mi
  %i.hj = load i64, ptr %i.ck, align 8, !alias.scope !90404, !noalias !90405, !noundef !21 ; 3 uses
  %i.hk = icmp eq i64 %i.hj, %i.hi
  br i1 %i.hk, label %bb.mk, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h6569782c65035c47E.exit.i.i31.i.i.i.i.i.i.i.i"

bb.mk:                                            ; preds = %bb.mj
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17ha41f396e8ea6efa1E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.cg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1725)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h6569782c65035c47E.exit.i.i31.i.i.i.i.i.i.i.i" unwind label %.loopexit.i39.i.i, !noalias !90316

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h6569782c65035c47E.exit.i.i31.i.i.i.i.i.i.i.i": ; preds = %bb.mk, %bb.mj
  %i.hl = load ptr, ptr %i.cl, align 8, !alias.scope !90404, !noalias !90405, !nonnull !21, !noundef !21
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 %i.hj
  store i8 %i.hh, ptr %i.hm, align 1, !noalias !90406
  %i.hn = add i64 %i.hj, 1
  store i64 %i.hn, ptr %i.ck, align 8, !alias.scope !90404, !noalias !90405
  br label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h83771550cbef8e56E.exit.i32.i.i.i.i.i.i.i.i.backedge"

"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h83771550cbef8e56E.exit.i32.i.i.i.i.i.i.i.i.backedge": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h6569782c65035c47E.exit.i.i31.i.i.i.i.i.i.i.i", %bb.mi
  br label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h83771550cbef8e56E.exit.i32.i.i.i.i.i.i.i.i"

bb.ml:                                            ; preds = %.noexc35.i.i.i
  %i.ho = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.hp = load ptr, ptr %i.ho, align 8, !noalias !90401, !nonnull !21, !noundef !21
  %i.hq = invoke noundef nonnull align 8 ptr @_ZN10serde_json5error5Error2io17hee74e472dc93099bE(ptr noundef nonnull %i.hp)
          to label %.noexc37.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i, !noalias !90316

.noexc37.i.i.i:                                   ; preds = %bb.ml
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !90401
  br label %_ZN10serde_core2de9SeqAccess12next_element17h9786859d739e1520E.exit.i.i.i.a

bb.mm:                                            ; preds = %.noexc35.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !90401
  %i.hr = getelementptr inbounds nuw i8, ptr %i.cf, i64 56
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.hr, align 8, !alias.scope !90332, !noalias !90333, !noundef !21
  %i.hs = getelementptr inbounds nuw i8, ptr %i.cf, i64 64
  %.val11.i.i.i.i.i.i.i.i = load i64, ptr %i.hs, align 8, !alias.scope !90332, !noalias !90333, !noundef !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !90407
  store i64 3, ptr %i.d, align 8, !noalias !90335
  %i.ht = invoke noundef nonnull align 8 ptr @_ZN10serde_json5error5Error6syntax17hd0fb411d419d3392E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.d, i64 noundef %.val.i.i.i.i.i.i.i.i, i64 noundef %.val11.i.i.i.i.i.i.i.i)
          to label %.noexc38.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i, !noalias !90316

.noexc38.i.i.i:                                   ; preds = %bb.mm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !90407
  br label %_ZN10serde_core2de9SeqAccess12next_element17h9786859d739e1520E.exit.i.i.i.a

bb.mn:                                            ; preds = %bb.mh
  store i8 0, ptr %i.ch, align 8, !alias.scope !90408, !noalias !90333
  %i.hu = load i64, ptr %i.cg, align 8, !range !34, !alias.scope !90408, !noalias !90333 ; 2 uses
  %.not.i43.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.hu, -9223372036854775808
  br i1 %.not.i43.not.i.i.i.i.i.i.i.i, label %.thread.i38.i.i, label %bb.mo

bb.mo:                                            ; preds = %bb.mn
  %i.hv = load i64, ptr %i.ck, align 8, !alias.scope !90409, !noalias !90410, !noundef !21 ; 3 uses
  %i.hw = icmp eq i64 %i.hv, %i.hu
  br i1 %i.hw, label %bb.mp, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h6569782c65035c47E.exit.i45.i.i.i.i.i.i.i.i"

bb.mp:                                            ; preds = %bb.mo
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17ha41f396e8ea6efa1E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.cg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1725)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h6569782c65035c47E.exit.i45.i.i.i.i.i.i.i.i" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !90316

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h6569782c65035c47E.exit.i45.i.i.i.i.i.i.i.i": ; preds = %bb.mp, %bb.mo
  %i.hx = load ptr, ptr %i.cl, align 8, !alias.scope !90409, !noalias !90410, !nonnull !21, !noundef !21
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.hv
  store i8 125, ptr %i.hy, align 1, !noalias !90365
  %i.hz = add i64 %i.hv, 1
  store i64 %i.hz, ptr %i.ck, align 8, !alias.scope !90409, !noalias !90410
  br label %.thread.i38.i.i

bb.mq:                                            ; preds = %bb.mh
  %i.ia = getelementptr inbounds nuw i8, ptr %i.cf, i64 56
  %.val12.i.i.i.i.i.i.i.i = load i64, ptr %i.ia, align 8, !alias.scope !90332, !noalias !90333, !noundef !21
  %i.ib = getelementptr inbounds nuw i8, ptr %i.cf, i64 64
  %.val13.i.i.i.i.i.i.i.i = load i64, ptr %i.ib, align 8, !alias.scope !90332, !noalias !90333, !noundef !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !90411
  store i64 10, ptr %i.c, align 8, !noalias !90335
  %i.ic = invoke noundef nonnull align 8 ptr @_ZN10serde_json5error5Error6syntax17hd0fb411d419d3392E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.c, i64 noundef %.val12.i.i.i.i.i.i.i.i, i64 noundef %.val13.i.i.i.i.i.i.i.i)
          to label %.noexc40.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i, !noalias !90316

.noexc40.i.i.i:                                   ; preds = %bb.mq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !90411
  br label %_ZN10serde_core2de9SeqAccess12next_element17h9786859d739e1520E.exit.i.i.i.a

.loopexit.i39.i.i:                                ; preds = %bb.mk, %bb.mg
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.loopexit.i.i.i:                ; preds = %bb.ba, %bb.aw
  %lpad.loopexit54.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i: ; preds = %bb.ah, %bb.ad
  %lpad.loopexit57.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i: ; preds = %bb.x, %bb.t
  %lpad.loopexit59.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i: ; preds = %bb.mt, %bb.mp, %_ZN10serde_core2de10EnumAccess7variant17h5d58e139cc7436a6E.exit.i.i.i.i.i.i.i.i.i, %bb.bj, %bb.bi, %bb.bh, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h367c41bed5e5f1c5E.exit.i.i.i.i.i.i.i.i.i.i.i", %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h83771550cbef8e56E.exit.i.i.i.i.i.i.i22.i.i.i.i.i.i.i.i", %bb.bg, %bb.bd, %bb.bc, %bb.bb, %bb.av, %bb.aq, %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h83771550cbef8e56E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.an, %bb.p
  %lpad.loopexit62.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i: ; preds = %bb.mq, %bb.mm, %bb.ml, %bb.mc, %.noexc18.i.i.i, %bb.ao, %bb.ak, %bb.ai, %bb.aa, %bb.z, %bb.y
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.i.i.i:                         ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, %.loopexit.split-lp.loopexit.i.i.i, %.loopexit.i39.i.i
  %lpad.phi.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i, %.loopexit.i39.i.i ], [ %lpad.loopexit54.i.i.i, %.loopexit.split-lp.loopexit.i.i.i ], [ %lpad.loopexit57.i.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i ], [ %lpad.loopexit59.i.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i ], [ %lpad.loopexit62.i.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i ] ; 2 uses
  %.val5.i.i.i = load i64, ptr %i.u, align 8, !noalias !90312 ; 2 uses
  %i.id = icmp eq i64 %.val5.i.i.i, 0
  br i1 %i.id, label %common.resume.i.i, label %bb.mr

bb.mr:                                            ; preds = %.loopexit.split-lp.i.i.i
  %.val6.i.i.i = load ptr, ptr %i.bn, align 8, !noalias !90312, !nonnull !21, !noundef !21
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i.i.i, i64 noundef %.val5.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !90316
  br label %common.resume.i.i

_ZN10serde_core2de9SeqAccess12next_element17h9786859d739e1520E.exit.i.i.i.a: ; preds = %bb.me, %bb.md, %.noexc40.i.i.i, %.noexc38.i.i.i, %.noexc37.i.i.i, %.noexc34.i.i.i, %bb.ar, %.noexc11.i.i.i, %.noexc10.i.i.i, %.noexc9.i.i.i, %bb.q
  %.sroa.1243.0.i.i.i = phi ptr [ %i.cc, %bb.q ], [ %i.dd, %.noexc10.i.i.i ], [ %i.da, %.noexc9.i.i.i ], [ %i.dg, %.noexc11.i.i.i ], [ %.sroa.121.0.ph.i.i.i.i.i.i.i.i.i.i.i, %bb.ar ], [ %i.ic, %.noexc40.i.i.i ], [ %i.gy, %.noexc34.i.i.i ], [ %i.hq, %.noexc37.i.i.i ], [ %i.ht, %.noexc38.i.i.i ], [ %.sroa.1459.0.i.i.i.i.i.i.i.i, %bb.md ], [ %.sroa.1459.0.i.i.i.i.i.i.i.i, %bb.me ] ; 2 uses
  %.val.i.i.i = load i64, ptr %i.u, align 8, !noalias !90312 ; 2 uses
  %i.ie = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.ie, label %"_ZN182_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$..deserialize..VecVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17h7a887634caef27caE.exit.i.i", label %bb.ms

bb.ms:                                            ; preds = %_ZN10serde_core2de9SeqAccess12next_element17h9786859d739e1520E.exit.i.i.i.a
  %.val4.i.i.i = load ptr, ptr %i.bn, align 8, !noalias !90312, !nonnull !21, !noundef !21
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !90316
  br label %"_ZN182_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$..deserialize..VecVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17h7a887634caef27caE.exit.i.i"

.thread.i38.i.i:                                  ; preds = %switch.lookup, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h6569782c65035c47E.exit.i45.i.i.i.i.i.i.i.i", %bb.mn
  %.sroa.9.0.ph50.i.i.i = phi i8 [ %switch.load, %switch.lookup ], [ %.sroa.5.0.i.i.i.i.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h6569782c65035c47E.exit.i45.i.i.i.i.i.i.i.i" ], [ %.sroa.5.0.i.i.i.i.i.i.i.i, %bb.mn ]
  call void @llvm.experimental.noalias.scope.decl(metadata !90412)
  %i.if = load i64, ptr %i.bo, align 8, !alias.scope !90412, !noalias !90312, !noundef !21 ; 3 uses
  %i.ig = load i64, ptr %i.u, align 8, !range !23, !alias.scope !90412, !noalias !90312, !noundef !21
  %i.ih = icmp eq i64 %i.if, %i.ig
  br i1 %i.ih, label %bb.mt, label %bb.mu

bb.mt:                                            ; preds = %.thread.i38.i.i
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h4731b467761b7e7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @823)
          to label %bb.mu unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !90316

.thread51.i.i.i:                                  ; preds = %bb.r
  %.sroa.044.0.copyload45.i.i = load i64, ptr %i.u, align 8, !noalias !90413
  br label %"_ZN182_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$..deserialize..VecVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17h7a887634caef27caE.exit.i.i"

bb.mu:                                            ; preds = %bb.mt, %.thread.i38.i.i
  %i.ii = load ptr, ptr %i.bn, align 8, !alias.scope !90412, !noalias !90312, !nonnull !21, !noundef !21 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 %i.if
  store i8 %.sroa.9.0.ph50.i.i.i, ptr %i.ij, align 1, !noalias !90414
  %i.ik = add i64 %i.if, 1
  br label %bb.p

"_ZN182_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$..deserialize..VecVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17h7a887634caef27caE.exit.i.i": ; preds = %.thread51.i.i.i, %bb.ms, %_ZN10serde_core2de9SeqAccess12next_element17h9786859d739e1520E.exit.i.i.i.a
  %.sroa.7.0.i.i = phi ptr [ %.sroa.1243.0.i.i.i, %_ZN10serde_core2de9SeqAccess12next_element17h9786859d739e1520E.exit.i.i.i.a ], [ %.sroa.1243.0.i.i.i, %bb.ms ], [ %.sroa.7.0.copyload47.i.i, %.thread51.i.i.i ] ; 7 uses
  %.sroa.044.0.i.i = phi i64 [ -9223372036854775808, %_ZN10serde_core2de9SeqAccess12next_element17h9786859d739e1520E.exit.i.i.i.a ], [ -9223372036854775808, %bb.ms ], [ %.sroa.044.0.copyload45.i.i, %.thread51.i.i.i ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !90312
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !90307
  %i.il = load i8, ptr %i.ay, align 8, !range !42, !alias.scope !90304, !noalias !90305, !noundef !21
  %i.im = trunc nuw i8 %i.il to i1
  br i1 %i.im, label %bb.mx, label %bb.mw

bb.mv:                                            ; preds = %bb.l
  %i.in = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val30.i.i = load i64, ptr %i.in, align 8, !alias.scope !90304, !noalias !90305, !noundef !21
  %i.io = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val31.i.i = load i64, ptr %i.io, align 8, !alias.scope !90304, !noalias !90305, !noundef !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !90415
  store i64 24, ptr %i.b, align 8, !noalias !90307
  %i.ip = call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error6syntax17hd0fb411d419d3392E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b, i64 noundef %.val30.i.i, i64 noundef %.val31.i.i), !noalias !90416
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !90415
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ip, ptr %i.iq, align 8, !alias.scope !90305, !noalias !90304
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !90305, !noalias !90304
  br label %"_ZN10serde_core2de5impls82_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$11deserialize17hd019295947159947E.exit"

bb.mw:                                            ; preds = %"_ZN182_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$..deserialize..VecVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17h7a887634caef27caE.exit.i.i"
  %i.ir = getelementptr inbounds nuw i8, ptr %1, i64 89 ; 2 uses
  %i.is = load i8, ptr %i.ir, align 1, !alias.scope !90304, !noalias !90305, !noundef !21
  %i.it = add i8 %i.is, 1
  store i8 %i.it, ptr %i.ir, align 1, !alias.scope !90304, !noalias !90305
  br label %bb.mx

bb.mx:                                            ; preds = %bb.mw, %"_ZN182_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$..deserialize..VecVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17h7a887634caef27caE.exit.i.i"
  %i.iu = invoke fastcc noundef align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$7end_seq17h430b63a5a58d7e1dE"(ptr noalias noundef nonnull align 8 dereferenceable(96) %1)
          to label %bb.mz unwind label %bb.my, !noalias !90305 ; 10 uses

bb.my:                                            ; preds = %bb.mx
  %i.iv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr133drop_in_place$LT$core..result..Result$LT$alloc..vec..Vec$LT$meilisearch_types..locales..Locale$GT$$C$serde_json..error..Error$GT$$GT$17hb63947ea72fdb6cfE"(i64 %.sroa.044.0.i.i, ptr %.sroa.7.0.i.i) #43
          to label %common.resume.i.i unwind label %bb.ne, !noalias !90305

bb.mz:                                            ; preds = %bb.mx
  %i.iw = icmp eq i64 %.sroa.044.0.i.i, -9223372036854775808
  br i1 %i.iw, label %bb.nb, label %bb.na

bb.na:                                            ; preds = %bb.mz
  %.not.i.i = icmp eq ptr %i.iu, null
  br i1 %.not.i.i, label %bb.nj, label %bb.nc

bb.nb:                                            ; preds = %bb.mz
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.i.i) ]
  %.not88.i.i = icmp eq ptr %i.iu, null
  br i1 %.not88.i.i, label %.thread79.i.i, label %bb.nf

bb.nc:                                            ; preds = %bb.na
  %i.ix = icmp eq i64 %.sroa.044.0.i.i, 0
  br i1 %i.ix, label %.thread79.i.i, label %bb.nd

bb.nd:                                            ; preds = %bb.nc
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.i.i, i64 noundef %.sroa.044.0.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !90305
  br label %.thread79.i.i

bb.ne:                                            ; preds = %bb.my
  %i.iy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #44, !noalias !90305
  unreachable

bb.nf:                                            ; preds = %bb.nb
  call void @llvm.experimental.noalias.scope.decl(metadata !90417)
  call void @llvm.experimental.noalias.scope.decl(metadata !90418)
  %i.iz = load i64, ptr %i.iu, align 8, !range !47, !alias.scope !90419, !noalias !90305, !noundef !21
  switch i64 %i.iz, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h5462876ad9a9693dE.exit.i.i" [
    i64 0, label %bb.ng
    i64 1, label %bb.nh
  ]

bb.ng:                                            ; preds = %bb.nf
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iu, i64 16
  %.val1.i.i.i.i.i.i = load i64, ptr %i.ja, align 8, !alias.scope !90419, !noalias !90305, !noundef !21 ; 2 uses
  %i.jb = icmp eq i64 %.val1.i.i.i.i.i.i, 0
  br i1 %i.jb, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h5462876ad9a9693dE.exit.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i": ; preds = %bb.ng
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iu, i64 8
  %.val.i.i.i.i.i.i = load ptr, ptr %i.jc, align 8, !alias.scope !90419, !noalias !90305, !nonnull !21, !noundef !21
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %.val1.i.i.i.i.i.i, i64 noundef 1) #42, !noalias !90420
  br label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h5462876ad9a9693dE.exit.i.i"

bb.nh:                                            ; preds = %bb.nf
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iu, i64 8
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hbbd939ba801c9a27E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.jd)
          to label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h5462876ad9a9693dE.exit.i.i" unwind label %bb.ni, !noalias !90305

bb.ni:                                            ; preds = %bb.nh
  %i.je = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.iu, i64 noundef 40, i64 noundef 8) #42, !noalias !90305
  br label %common.resume.i.i

"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h5462876ad9a9693dE.exit.i.i": ; preds = %bb.nh, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i", %bb.ng, %bb.nf
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.iu, i64 noundef 40, i64 noundef 8) #42, !noalias !90305
  br label %.thread79.i.i

.thread79.i.i:                                    ; preds = %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h5462876ad9a9693dE.exit.i.i", %bb.nd, %bb.nc, %bb.nb, %bb.k
  %.sroa.9.2.i.i = phi ptr [ %.sroa.7.0.i.i, %bb.nb ], [ %i.bb, %bb.k ], [ %.sroa.7.0.i.i, %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h5462876ad9a9693dE.exit.i.i" ], [ %i.iu, %bb.nc ], [ %i.iu, %bb.nd ]
  %i.jf = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val36.i.i = load i64, ptr %i.jf, align 8, !alias.scope !90304, !noalias !90305
  %i.jg = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val37.i.i = load i64, ptr %i.jg, align 8, !alias.scope !90304, !noalias !90305
  %i.jh = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17he6c9c9fa132f9ae3E(ptr noalias noundef nonnull align 8 %.sroa.9.2.i.i, i64 %.val36.i.i, i64 %.val37.i.i), !noalias !90305
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.jh, ptr %i.ji, align 8, !alias.scope !90305, !noalias !90304
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !90305, !noalias !90304
  br label %"_ZN10serde_core2de5impls82_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$11deserialize17hd019295947159947E.exit"

bb.nj:                                            ; preds = %bb.na
  store i64 %.sroa.044.0.i.i, ptr %0, align 8, !alias.scope !90305, !noalias !90304
  %.sroa.218.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.7.0.i.i, ptr %.sroa.218.0..sroa_idx.i.i, align 8, !alias.scope !90305, !noalias !90304
  %.sroa.319.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %storemerge.i.i.i, ptr %.sroa.319.0..sroa_idx.i.i, align 8, !alias.scope !90305, !noalias !90304
  br label %"_ZN10serde_core2de5impls82_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$11deserialize17hd019295947159947E.exit"

"_ZN10serde_core2de5impls82_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$11deserialize17hd019295947159947E.exit": ; preds = %bb.i, %bb.mv, %.thread79.i.i, %bb.nj
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h01574a641f968451E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(304) %0, ptr noalias noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [16 x i8], align 8                ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [304 x i8], align 8               ; 10 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90499)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90500)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90501)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90502)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !90503
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90504)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 8 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !90505, !noalias !90506, !noundef !21 ; 3 uses
  %.promoted.i.i.i = load i64, ptr %i.p, align 8, !alias.scope !90507, !noalias !90508 ; 2 uses
  %i.s = icmp ult i64 %.promoted.i.i.i, %i.r
  br i1 %i.s, label %.lr.ph.i.i.i, label %.loopexit9.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !90505, !noalias !90506, !nonnull !21, !align !32, !noundef !21 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.v = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.y, %bb.c ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90509)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90510)
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !noalias !90511, !noundef !21
  switch i8 %i.x, label %bb.d [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 123, label %bb.e
    i8 34, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i
  ], !prof !45

end_hunk_2
begin_hunk_3_@"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hbbca3428cd9ac104E":bb.a
  %.phi.trans.insert.i.i15.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  br label %bb.h

common.resume.i.i:                                ; preds = %bb.lz, %bb.lp, %bb.lh, %bb.lg
  %common.resume.op.i.i = phi { ptr, i32 } [ %lpad.phi.i.i.i, %bb.lg ], [ %i.fg, %bb.lz ], [ %lpad.phi.i.i.i, %bb.lh ], [ %i.ex, %bb.lp ]
  resume { ptr, i32 } %common.resume.op.i.i

bb.h:                                             ; preds = %bb.ll, %bb.g
  %.sroa.735.0.copyload37.i.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.g ], [ %i.em, %bb.ll ]
  %storemerge.i.i.i = phi i64 [ 0, %bb.g ], [ %i.eo, %bb.ll ] ; 5 uses
  store i64 %storemerge.i.i.i, ptr %i.as, align 8, !noalias !124140
  call void @llvm.experimental.noalias.scope.decl(metadata !124141)
  call void @llvm.experimental.noalias.scope.decl(metadata !124142)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !124143
  invoke fastcc void @"_ZN80_$LT$serde_json..de..SeqAccess$LT$R$GT$$u20$as$u20$serde_core..de..SeqAccess$GT$17next_element_seed16has_next_element17h5529a3dcab0463daE"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.q, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.s)
          to label %.noexc.i.i.i unwind label %.loopexit.i.i.i, !noalias !124144

.noexc.i.i.i:                                     ; preds = %bb.h
  %i.ay = load i8, ptr %i.q, align 8, !range !42, !noalias !124143, !noundef !21
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.noexc.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !noalias !124143, !nonnull !21, !align !22, !noundef !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !124143
  br label %_ZN10serde_core2de9SeqAccess12next_element17h20cb0ca7ed4e4ad0E.exit.i.i.i.a

bb.j:                                             ; preds = %.noexc.i.i.i
  %i.bc = load i8, ptr %i.at, align 1, !range !42, !noalias !124143, !noundef !21
  %i.bd = trunc nuw i8 %i.bc to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !124143
  br i1 %i.bd, label %bb.k, label %.thread36.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.be = load ptr, ptr %i.s, align 8, !alias.scope !124145, !noalias !124146, !nonnull !21, !align !22, !noundef !21 ; 25 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !124147)
  call void @llvm.experimental.noalias.scope.decl(metadata !124148)
  call void @llvm.experimental.noalias.scope.decl(metadata !124149)
  call void @llvm.experimental.noalias.scope.decl(metadata !124150)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 40 ; 13 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 32 ; 3 uses
  %i.bh = load i64, ptr %i.bg, align 8, !alias.scope !124151, !noalias !124152, !noundef !21 ; 5 uses
  %.promoted.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bf, align 8, !alias.scope !124153, !noalias !124154 ; 2 uses
  %i.bi = icmp ult i64 %.promoted.i.i.i.i.i.i.i.i.i, %i.bh
  br i1 %i.bi, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %.loopexit19.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.k
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 24 ; 5 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !alias.scope !124151, !noalias !124152, !nonnull !21, !align !32, !noundef !21 ; 3 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.bl = phi i64 [ %.promoted.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.bo, %bb.m ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !124155)
  call void @llvm.experimental.noalias.scope.decl(metadata !124156)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !noalias !124157, !noundef !21
  switch i8 %i.bn, label %bb.n [
    i8 32, label %bb.m
    i8 10, label %bb.m
    i8 9, label %bb.m
    i8 13, label %bb.m
    i8 123, label %bb.o
    i8 34, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i.i.i
  ], !prof !45

bb.m:                                             ; preds = %bb.l, %bb.l, %bb.l, %bb.l
  %i.bo = add i64 %i.bl, 1                        ; 3 uses
  store i64 %i.bo, ptr %i.bf, align 8, !alias.scope !124158, !noalias !124154
  %exitcond.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bo, %i.bh
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i, label %.loopexit19.i.i.i.i.i.i.i.i, label %bb.l

.loopexit19.i.i.i.i.i.i.i.i:                      ; preds = %bb.k, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !124159
  store i64 5, ptr %i.l, align 8, !noalias !124159
  %i.bp = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h4bcb1ec0631805b8E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.be, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.l)
          to label %.noexc7.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !124144

.noexc7.i.i.i:                                    ; preds = %.loopexit19.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !124159
  br label %_ZN10serde_core2de9SeqAccess12next_element17h20cb0ca7ed4e4ad0E.exit.i.i.i.a

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !124159
  store i64 10, ptr %i.m, align 8, !noalias !124159
  %i.bq = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h4bcb1ec0631805b8E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.be, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.m)
          to label %.noexc8.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !124144

.noexc8.i.i.i:                                    ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !124159
  br label %_ZN10serde_core2de9SeqAccess12next_element17h20cb0ca7ed4e4ad0E.exit.i.i.i.a

bb.o:                                             ; preds = %bb.l
  %i.br = getelementptr inbounds nuw i8, ptr %i.be, i64 72 ; 2 uses
  %i.bs = load i8, ptr %i.br, align 8, !range !42, !alias.scope !124160, !noalias !124161, !noundef !21
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %bb.w, label %bb.v

.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i.i.i: ; preds = %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !124162)
  call void @llvm.experimental.noalias.scope.decl(metadata !124163)
  call void @llvm.experimental.noalias.scope.decl(metadata !124164)
  call void @llvm.experimental.noalias.scope.decl(metadata !124165)
  call void @llvm.experimental.noalias.scope.decl(metadata !124166)
  call void @llvm.experimental.noalias.scope.decl(metadata !124167)
  call void @llvm.experimental.noalias.scope.decl(metadata !124168)
  call void @llvm.experimental.noalias.scope.decl(metadata !124169)
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %bb.p, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i.i.i
  %i.bu = phi i64 [ %i.bx, %bb.p ], [ %i.bl, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i.i.i ] ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !noalias !124170, !noundef !21 ; 2 uses
  switch i8 %i.bw, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h2d54aad932fd9e08E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" [
    i8 32, label %bb.p
    i8 10, label %bb.p
    i8 9, label %bb.p
    i8 13, label %bb.p
  ]

bb.p:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bx = add i64 %i.bu, 1                        ; 3 uses
  store i64 %i.bx, ptr %i.bf, align 8, !alias.scope !124171, !noalias !124172
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bx, %i.bh
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h2d54aad932fd9e08E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !124173
  %i.by = icmp eq i8 %i.bw, 34
  br i1 %i.by, label %bb.q, label %bb.r, !prof !26

.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:          ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !124173
  store i64 5, ptr %i.k, align 8, !noalias !124173
  %i.bz = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h4bcb1ec0631805b8E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.be, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.k)
          to label %.noexc9.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !124144

.noexc9.i.i.i:                                    ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !124173
  br label %bb.u

bb.q:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h2d54aad932fd9e08E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.ca = add i64 %i.bu, 1
  store i64 %i.ca, ptr %i.bf, align 8, !alias.scope !124174, !noalias !124175
  %i.cb = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store i64 0, ptr %i.cb, align 8, !alias.scope !124176, !noalias !124175
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !124173
  invoke void @"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17hb363ba977b6810eaE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.bj, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.be)
          to label %.noexc10.i.i.i unwind label %.loopexit.i.i.i, !noalias !124144

.noexc10.i.i.i:                                   ; preds = %bb.q
  %i.cc = load i64, ptr %i.i, align 8, !range !48, !noalias !124173, !noundef !21
  %i.cd = icmp eq i64 %i.cc, 2
  %i.ce = load ptr, ptr %i.au, align 8, !noalias !124173 ; 3 uses
  br i1 %i.cd, label %bb.s, label %bb.t

bb.r:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h2d54aad932fd9e08E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.cf = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$17peek_invalid_type17h8f339b226a3438dcE"(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.be, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @89)
          to label %.noexc11.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !124144

bb.s:                                             ; preds = %.noexc10.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !124173
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !124173
  br label %bb.u

bb.t:                                             ; preds = %.noexc10.i.i.i
  %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !124173
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ce) ]
  invoke fastcc void @"_ZN195_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h71781450ec8f4611E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.j, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ce, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
          to label %.noexc12.i.i.i unwind label %.loopexit.i.i.i, !noalias !124144

.noexc12.i.i.i:                                   ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !124173
  %i.cg = load i8, ptr %i.j, align 8, !range !42, !noalias !124173, !noundef !21
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, label %switch.lookup, !prof !19

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %.noexc12.i.i.i
  %.phi.trans.insert.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.pre.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !124173
  br label %.noexc11.i.i.i

.noexc11.i.i.i:                                   ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i, %bb.r
  %i.ci = phi ptr [ %.pre.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i ], [ %i.cf, %bb.r ]
  %i.cj = invoke fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h07299f01aaf065d0E(ptr noalias noundef nonnull align 8 %i.ci, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.be)
          to label %.noexc13.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !124144

.noexc13.i.i.i:                                   ; preds = %.noexc11.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !124173
  br label %bb.u

bb.u:                                             ; preds = %.noexc13.i.i.i, %bb.s, %.noexc9.i.i.i
  %.sroa.121.0.ph.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bz, %.noexc9.i.i.i ], [ %i.cj, %.noexc13.i.i.i ], [ %i.ce, %bb.s ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.121.0.ph.i.i.i.i.i.i.i.i.i.i.i) ]
  br label %_ZN10serde_core2de9SeqAccess12next_element17h20cb0ca7ed4e4ad0E.exit.i.i.i.a

switch.lookup:                                    ; preds = %.noexc12.i.i.i
  %i.ck = load i8, ptr %i.av, align 1, !range !110, !noalias !124173, !noundef !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !124173
  %switch.tableidx = xor i8 %i.ck, -128
  %2 = zext i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @"switch.table._ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hbbca3428cd9ac104E", i64 %2
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %.thread.i.i.i

default.unreachable:                              ; preds = %.noexc22.i.i.i
  unreachable

bb.v:                                             ; preds = %bb.o
  %i.cl = getelementptr inbounds nuw i8, ptr %i.be, i64 73 ; 2 uses
  %i.cm = load i8, ptr %i.cl, align 1, !alias.scope !124160, !noalias !124161, !noundef !21
  %i.cn = add i8 %i.cm, -1                        ; 2 uses
  store i8 %i.cn, ptr %i.cl, align 1, !alias.scope !124160, !noalias !124161
  %i.co = icmp eq i8 %i.cn, 0
  br i1 %i.co, label %bb.kz, label %bb.w, !prof !19

bb.w:                                             ; preds = %bb.v, %bb.o
  %i.cp = add i64 %i.bl, 1                        ; 3 uses
  store i64 %i.cp, ptr %i.bf, align 8, !alias.scope !124177, !noalias !124161
  call void @llvm.experimental.noalias.scope.decl(metadata !124178)
  call void @llvm.experimental.noalias.scope.decl(metadata !124179)
  call void @llvm.experimental.noalias.scope.decl(metadata !124180)
  call void @llvm.experimental.noalias.scope.decl(metadata !124181)
  %i.cq = icmp ult i64 %i.cp, %i.bh
  br i1 %i.cq, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.w, %bb.x
  %i.cr = phi i64 [ %i.cu, %bb.x ], [ %i.cp, %bb.w ] ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !noalias !124182, !noundef !21
  switch i8 %i.ct, label %bb.y [
    i8 32, label %bb.x
    i8 10, label %bb.x
    i8 9, label %bb.x
    i8 13, label %bb.x
    i8 34, label %bb.z
    i8 125, label %bb.aa
  ], !prof !80

bb.x:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cu = add i64 %i.cr, 1                        ; 3 uses
  store i64 %i.cu, ptr %i.bf, align 8, !alias.scope !124183, !noalias !124184
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.cu, %i.bh
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !124185
  store i64 3, ptr %i.f, align 8, !noalias !124185
  %i.cv = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h4bcb1ec0631805b8E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.be, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f)
          to label %.noexc14.i.i.i unwind label %.loopexit.i.i.i, !noalias !124144

.noexc14.i.i.i:                                   ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !124185
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17he0f54469085288f3E.exit.i.i.i.i.i.i.i.i"

bb.y:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !124185
  store i64 17, ptr %i.g, align 8, !noalias !124185
  %i.cw = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h4bcb1ec0631805b8E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.be, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g)
          to label %.noexc15.i.i.i unwind label %.loopexit.i.i.i, !noalias !124144

.noexc15.i.i.i:                                   ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !124185
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17he0f54469085288f3E.exit.i.i.i.i.i.i.i.i"

bb.z:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !124185
  call void @llvm.experimental.noalias.scope.decl(metadata !124186)
  call void @llvm.experimental.noalias.scope.decl(metadata !124187)
  call void @llvm.experimental.noalias.scope.decl(metadata !124188)
  call void @llvm.experimental.noalias.scope.decl(metadata !124189)
  %i.cx = add i64 %i.cr, 1
  store i64 %i.cx, ptr %i.bf, align 8, !alias.scope !124190, !noalias !124191
  %i.cy = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store i64 0, ptr %i.cy, align 8, !alias.scope !124192, !noalias !124191
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !124193
  invoke void @"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17hb363ba977b6810eaE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.bj, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.be)
          to label %.noexc16.i.i.i unwind label %.loopexit.i.i.i, !noalias !124144

.noexc16.i.i.i:                                   ; preds = %bb.z
  %i.cz = load i64, ptr %i.d, align 8, !range !48, !noalias !124193, !noundef !21
  %i.da = icmp eq i64 %i.cz, 2
  %i.db = load ptr, ptr %i.aw, align 8, !noalias !124193, !nonnull !21, !noundef !21 ; 2 uses
  br i1 %i.da, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17ha2b23dcee91ae9d3E.exit.thread.i.i.i.i.i.i.i.i.i.i.i", label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17ha2b23dcee91ae9d3E.exit.i.i.i.i.i.i.i.i.i.i.i", !prof !61

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17ha2b23dcee91ae9d3E.exit.thread.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc16.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !124193
  br label %bb.ab

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17ha2b23dcee91ae9d3E.exit.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc16.i.i.i
  %.sroa.4.0.copyload.i.i.i.i.i.i.i13.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i12.i.i.i.i.i.i.i.i, align 8, !noalias !124193
  invoke fastcc void @"_ZN195_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h71781450ec8f4611E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.e, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.db, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i.i.i13.i.i.i.i.i.i.i.i)
          to label %.noexc17.i.i.i unwind label %.loopexit.i.i.i, !noalias !124144

.noexc17.i.i.i:                                   ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17ha2b23dcee91ae9d3E.exit.i.i.i.i.i.i.i.i.i.i.i"
  %.pre.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.e, align 8, !range !42, !noalias !124185
  %i.dc = trunc nuw i8 %.pre.i.i.i.i.i.i.i.i.i.i.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !124193
  br i1 %i.dc, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17ha2b23dcee91ae9d3E.exit.i._crit_edge.i.i.i.i.i.i.i.i.i.i", label %bb.ac, !prof !28

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17ha2b23dcee91ae9d3E.exit.i._crit_edge.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc17.i.i.i
  %.pre.i.i16.i.i.i.i.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i15.i.i.i.i.i.i.i.i, align 8, !noalias !124185
  br label %bb.ab

bb.aa:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !124185
  store i64 10, ptr %i.h, align 8, !noalias !124185
  %i.dd = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h4bcb1ec0631805b8E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.be, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.h)
          to label %.noexc18.i.i.i unwind label %.loopexit.i.i.i, !noalias !124144

.noexc18.i.i.i:                                   ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !124185
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17he0f54469085288f3E.exit.i.i.i.i.i.i.i.i"

bb.ab:                                            ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17ha2b23dcee91ae9d3E.exit.i._crit_edge.i.i.i.i.i.i.i.i.i.i", %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17ha2b23dcee91ae9d3E.exit.thread.i.i.i.i.i.i.i.i.i.i.i"
  %i.de = phi ptr [ %.pre.i.i16.i.i.i.i.i.i.i.i, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17ha2b23dcee91ae9d3E.exit.i._crit_edge.i.i.i.i.i.i.i.i.i.i" ], [ %i.db, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17ha2b23dcee91ae9d3E.exit.thread.i.i.i.i.i.i.i.i.i.i.i" ]
  %i.df = invoke fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h07299f01aaf065d0E(ptr noalias noundef nonnull align 8 %i.de, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.be)
          to label %.noexc19.i.i.i unwind label %.loopexit.i.i.i, !noalias !124144

.noexc19.i.i.i:                                   ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !124185
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17he0f54469085288f3E.exit.i.i.i.i.i.i.i.i"

bb.ac:                                            ; preds = %.noexc17.i.i.i
  %i.dg = load i8, ptr %i.ax, align 1, !range !110, !noalias !124185, !noundef !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !124185
  call void @llvm.experimental.noalias.scope.decl(metadata !124194)
  call void @llvm.experimental.noalias.scope.decl(metadata !124195)
  %i.dh = load i64, ptr %i.bg, align 8, !alias.scope !124196, !noalias !124197, !noundef !21 ; 2 uses
  %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bf, align 8, !alias.scope !124198, !noalias !124199 ; 2 uses
  %i.di = icmp ult i64 %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.dh
  br i1 %i.di, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.ac
  %i.dj = load ptr, ptr %i.bj, align 8, !alias.scope !124196, !noalias !124197, !nonnull !21, !align !32, !noundef !21
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ae, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dk = phi i64 [ %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.dn, %bb.ae ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !124200)
  call void @llvm.experimental.noalias.scope.decl(metadata !124201)
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.dk
  %i.dm = load i8, ptr %i.dl, align 1, !noalias !124202, !noundef !21
  switch i8 %i.dm, label %bb.af [
    i8 32, label %bb.ae
    i8 10, label %bb.ae
    i8 9, label %bb.ae
    i8 13, label %bb.ae
    i8 58, label %bb.ag
  ], !prof !49

bb.ae:                                            ; preds = %bb.ad, %bb.ad, %bb.ad, %bb.ad
  %i.dn = add i64 %i.dk, 1                        ; 3 uses
  store i64 %i.dn, ptr %i.bf, align 8, !alias.scope !124203, !noalias !124199
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.dn, %i.dh
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ad

.loopexit.i.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %bb.ae, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !124204
  store i64 3, ptr %i.b, align 8, !noalias !124204
  %i.do = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h4bcb1ec0631805b8E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.be, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b)
          to label %.noexc20.i.i.i unwind label %.loopexit.i.i.i, !noalias !124144

.noexc20.i.i.i:                                   ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !124204
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17he0f54469085288f3E.exit.i.i.i.i.i.i.i.i"

bb.af:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !124204
  store i64 6, ptr %i.c, align 8, !noalias !124204
  %i.dp = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h4bcb1ec0631805b8E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.be, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c)
          to label %.noexc21.i.i.i unwind label %.loopexit.i.i.i, !noalias !124144

.noexc21.i.i.i:                                   ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !124204
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17he0f54469085288f3E.exit.i.i.i.i.i.i.i.i"

bb.ag:                                            ; preds = %bb.ad
  %i.dq = add i64 %i.dk, 1
  store i64 %i.dq, ptr %i.bf, align 8, !alias.scope !124205, !noalias !124206
  %i.dr = invoke fastcc noundef align 8 ptr @"_ZN88_$LT$serde_json..de..VariantAccess$LT$R$GT$$u20$as$u20$serde_core..de..VariantAccess$GT$12unit_variant17he7fae45c389739fdE"(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.be)
          to label %.noexc22.i.i.i unwind label %.loopexit.i.i.i, !noalias !124144 ; 140 uses

.noexc22.i.i.i:                                   ; preds = %bb.ag
  %.not835.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.dr, null ; 139 uses
  switch i8 %i.dg, label %default.unreachable [
    i8 0, label %bb.ah
    i8 1, label %bb.ai
    i8 2, label %bb.aj
    i8 3, label %bb.ak
    i8 4, label %bb.al
    i8 5, label %bb.am
    i8 6, label %bb.an
    i8 7, label %bb.ao
    i8 8, label %bb.ap
    i8 9, label %bb.aq
    i8 10, label %bb.ar
    i8 11, label %bb.as
    i8 12, label %bb.at
    i8 13, label %bb.au
    i8 14, label %bb.av
    i8 15, label %bb.aw
    i8 16, label %bb.ax
end_hunk_3
begin_hunk_4_@"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hbbca3428cd9ac104E":bb.a
bb.js:                                            ; preds = %bb.ej
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17he0f54469085288f3E.exit.i.i.i.i.i.i.i.i"

bb.jt:                                            ; preds = %bb.ek
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17he0f54469085288f3E.exit.i.i.i.i.i.i.i.i"

bb.ju:                                            ; preds = %bb.el
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17he0f54469085288f3E.exit.i.i.i.i.i.i.i.i"

bb.jv:                                            ; preds = %bb.em
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17he0f54469085288f3E.exit.i.i.i.i.i.i.i.i"

bb.jw:                                            ; preds = %bb.en
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17he0f54469085288f3E.exit.i.i.i.i.i.i.i.i"

bb.jx:                                            ; preds = %bb.eo
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17he0f54469085288f3E.exit.i.i.i.i.i.i.i.i"

bb.jy:                                            ; preds = %bb.ep
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17he0f54469085288f3E.exit.i.i.i.i.i.i.i.i"

bb.jz:                                            ; preds = %bb.eq
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17he0f54469085288f3E.exit.i.i.i.i.i.i.i.i"

bb.ka:                                            ; preds = %bb.er
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17he0f54469085288f3E.exit.i.i.i.i.i.i.i.i"

bb.kb:                                            ; preds = %bb.es
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17he0f54469085288f3E.exit.i.i.i.i.i.i.i.i"

bb.kc:                                            ; preds = %bb.et
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17he0f54469085288f3E.exit.i.i.i.i.i.i.i.i"

bb.kd:                                            ; preds = %bb.eu
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17he0f54469085288f3E.exit.i.i.i.i.i.i.i.i"

bb.ke:                                            ; preds = %bb.ev
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17he0f54469085288f3E.exit.i.i.i.i.i.i.i.i"

bb.kf:                                            ; preds = %bb.ew
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17he0f54469085288f3E.exit.i.i.i.i.i.i.i.i"

bb.kg:                                            ; preds = %bb.ex
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17he0f54469085288f3E.exit.i.i.i.i.i.i.i.i"

bb.kh:                                            ; preds = %bb.ey
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17he0f54469085288f3E.exit.i.i.i.i.i.i.i.i"

bb.ki:                                            ; preds = %bb.ez
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17he0f54469085288f3E.exit.i.i.i.i.i.i.i.i"

bb.kj:                                            ; preds = %bb.fa
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17he0f54469085288f3E.exit.i.i.i.i.i.i.i.i"

bb.kk:                                            ; preds = %bb.fb
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17he0f54469085288f3E.exit.i.i.i.i.i.i.i.i"

bb.kl:                                            ; preds = %bb.fc
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17he0f54469085288f3E.exit.i.i.i.i.i.i.i.i"

bb.km:                                            ; preds = %bb.fd
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17he0f54469085288f3E.exit.i.i.i.i.i.i.i.i"

bb.kn:                                            ; preds = %bb.fe
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17he0f54469085288f3E.exit.i.i.i.i.i.i.i.i"

bb.ko:                                            ; preds = %bb.ff
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17he0f54469085288f3E.exit.i.i.i.i.i.i.i.i"

bb.kp:                                            ; preds = %bb.fg
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17he0f54469085288f3E.exit.i.i.i.i.i.i.i.i"

bb.kq:                                            ; preds = %bb.fh
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17he0f54469085288f3E.exit.i.i.i.i.i.i.i.i"

bb.kr:                                            ; preds = %bb.fi
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17he0f54469085288f3E.exit.i.i.i.i.i.i.i.i"

bb.ks:                                            ; preds = %bb.fj
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17he0f54469085288f3E.exit.i.i.i.i.i.i.i.i"

bb.kt:                                            ; preds = %bb.fk
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17he0f54469085288f3E.exit.i.i.i.i.i.i.i.i"

bb.ku:                                            ; preds = %bb.fl
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17he0f54469085288f3E.exit.i.i.i.i.i.i.i.i"

bb.kv:                                            ; preds = %bb.fm
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17he0f54469085288f3E.exit.i.i.i.i.i.i.i.i"

bb.kw:                                            ; preds = %bb.fn
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17he0f54469085288f3E.exit.i.i.i.i.i.i.i.i"

bb.kx:                                            ; preds = %bb.fo
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17he0f54469085288f3E.exit.i.i.i.i.i.i.i.i"

bb.ky:                                            ; preds = %bb.fp
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17he0f54469085288f3E.exit.i.i.i.i.i.i.i.i"

"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17he0f54469085288f3E.exit.i.i.i.i.i.i.i.i": ; preds = %bb.ky, %bb.kx, %bb.kw, %bb.kv, %bb.ku, %bb.kt, %bb.ks, %bb.kr, %bb.kq, %bb.kp, %bb.ko, %bb.kn, %bb.km, %bb.kl, %bb.kk, %bb.kj, %bb.ki, %bb.kh, %bb.kg, %bb.kf, %bb.ke, %bb.kd, %bb.kc, %bb.kb, %bb.ka, %bb.jz, %bb.jy, %bb.jx, %bb.jw, %bb.jv, %bb.ju, %bb.jt, %bb.js, %bb.jr, %bb.jq, %bb.jp, %bb.jo, %bb.jn, %bb.jm, %bb.jl, %bb.jk, %bb.jj, %bb.ji, %bb.jh, %bb.jg, %bb.jf, %bb.je, %bb.jd, %bb.jc, %bb.jb, %bb.ja, %bb.iz, %bb.iy, %bb.ix, %bb.iw, %bb.iv, %bb.iu, %bb.it, %bb.is, %bb.ir, %bb.iq, %bb.ip, %bb.io, %bb.in, %bb.im, %bb.il, %bb.ik, %bb.ij, %bb.ii, %bb.ih, %bb.ig, %bb.if, %bb.ie, %bb.id, %bb.ic, %bb.ib, %bb.ia, %bb.hz, %bb.hy, %bb.hx, %bb.hw, %bb.hv, %bb.hu, %bb.ht, %bb.hs, %bb.hr, %bb.hq, %bb.hp, %bb.ho, %bb.hn, %bb.hm, %bb.hl, %bb.hk, %bb.hj, %bb.hi, %bb.hh, %bb.hg, %bb.hf, %bb.he, %bb.hd, %bb.hc, %bb.hb, %bb.ha, %bb.gz, %bb.gy, %bb.gx, %bb.gw, %bb.gv, %bb.gu, %bb.gt, %bb.gs, %bb.gr, %bb.gq, %bb.gp, %bb.go, %bb.gn, %bb.gm, %bb.gl, %bb.gk, %bb.gj, %bb.gi, %bb.gh, %bb.gg, %bb.gf, %bb.ge, %bb.gd, %bb.gc, %bb.gb, %bb.ga, %bb.fz, %bb.fy, %bb.fx, %bb.fw, %bb.fv, %bb.fu, %bb.ft, %bb.fs, %bb.fr, %bb.fq, %bb.fp, %bb.fo, %bb.fn, %bb.fm, %bb.fl, %bb.fk, %bb.fj, %bb.fi, %bb.fh, %bb.fg, %bb.ff, %bb.fe, %bb.fd, %bb.fc, %bb.fb, %bb.fa, %bb.ez, %bb.ey, %bb.ex, %bb.ew, %bb.ev, %bb.eu, %bb.et, %bb.es, %bb.er, %bb.eq, %bb.ep, %bb.eo, %bb.en, %bb.em, %bb.el, %bb.ek, %bb.ej, %bb.ei, %bb.eh, %bb.eg, %bb.ef, %bb.ee, %bb.ed, %bb.ec, %bb.eb, %bb.ea, %bb.dz, %bb.dy, %bb.dx, %bb.dw, %bb.dv, %bb.du, %bb.dt, %bb.ds, %bb.dr, %bb.dq, %bb.dp, %bb.do, %bb.dn, %bb.dm, %bb.dl, %bb.dk, %bb.dj, %bb.di, %bb.dh, %bb.dg, %bb.df, %bb.de, %bb.dd, %bb.dc, %bb.db, %bb.da, %bb.cz, %bb.cy, %bb.cx, %bb.cw, %bb.cv, %bb.cu, %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.cp, %bb.co, %bb.cn, %bb.cm, %bb.cl, %bb.ck, %bb.cj, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %.noexc21.i.i.i, %.noexc20.i.i.i, %.noexc19.i.i.i, %.noexc18.i.i.i, %.noexc15.i.i.i, %.noexc14.i.i.i
  %.sroa.1458.0.i.i.i.i.i.i.i.i = phi ptr [ %i.dr, %bb.fo ], [ undef, %bb.fq ], [ %i.cw, %.noexc15.i.i.i ], [ undef, %bb.fr ], [ %i.dr, %bb.ah ], [ undef, %bb.fs ], [ %i.dr, %bb.ai ], [ undef, %bb.ft ], [ %i.dr, %bb.aj ], [ undef, %bb.fu ], [ %i.dr, %bb.ak ], [ undef, %bb.fv ], [ %i.dr, %bb.al ], [ undef, %bb.fw ], [ %i.dr, %bb.am ], [ undef, %bb.fx ], [ %i.dr, %bb.an ], [ undef, %bb.fy ], [ %i.dr, %bb.ao ], [ undef, %bb.fz ], [ %i.dr, %bb.ap ], [ undef, %bb.ga ], [ %i.dr, %bb.aq ], [ undef, %bb.gb ], [ %i.dr, %bb.ar ], [ undef, %bb.gc ], [ %i.dr, %bb.as ], [ undef, %bb.gd ], [ %i.dr, %bb.at ], [ undef, %bb.ge ], [ %i.dr, %bb.au ], [ undef, %bb.gf ], [ %i.dr, %bb.av ], [ undef, %bb.gg ], [ %i.dr, %bb.aw ], [ undef, %bb.gh ], [ %i.dr, %bb.ax ], [ undef, %bb.gi ], [ %i.dr, %bb.ay ], [ undef, %bb.gj ], [ %i.dr, %bb.az ], [ undef, %bb.gk ], [ %i.dr, %bb.ba ], [ undef, %bb.gl ], [ %i.dr, %bb.bb ], [ undef, %bb.gm ], [ %i.dr, %bb.bc ], [ undef, %bb.gn ], [ %i.dr, %bb.bd ], [ undef, %bb.go ], [ %i.dr, %bb.be ], [ undef, %bb.gp ], [ %i.dr, %bb.bf ], [ undef, %bb.gq ], [ %i.dr, %bb.bg ], [ undef, %bb.gr ], [ %i.dr, %bb.bh ], [ undef, %bb.gs ], [ %i.dr, %bb.bi ], [ undef, %bb.gt ], [ %i.dr, %bb.bj ], [ undef, %bb.gu ], [ %i.dr, %bb.bk ], [ undef, %bb.gv ], [ %i.dr, %bb.bl ], [ undef, %bb.gw ], [ %i.dr, %bb.bm ], [ undef, %bb.gx ], [ %i.dr, %bb.bn ], [ undef, %bb.gy ], [ %i.dr, %bb.bo ], [ undef, %bb.gz ], [ %i.dr, %bb.bp ], [ undef, %bb.ha ], [ %i.dr, %bb.bq ], [ undef, %bb.hb ], [ %i.dr, %bb.br ], [ undef, %bb.hc ], [ %i.dr, %bb.bs ], [ undef, %bb.hd ], [ %i.dr, %bb.bt ], [ undef, %bb.he ], [ %i.dr, %bb.bu ], [ undef, %bb.hf ], [ %i.dr, %bb.bv ], [ undef, %bb.hg ], [ %i.dr, %bb.bw ], [ undef, %bb.hh ], [ %i.dr, %bb.bx ], [ undef, %bb.hi ], [ %i.dr, %bb.by ], [ undef, %bb.hj ], [ %i.dr, %bb.bz ], [ undef, %bb.hk ], [ %i.dr, %bb.ca ], [ undef, %bb.hl ], [ %i.dr, %bb.cb ], [ undef, %bb.hm ], [ %i.dr, %bb.cc ], [ undef, %bb.hn ], [ %i.dr, %bb.cd ], [ undef, %bb.ho ], [ %i.dr, %bb.ce ], [ undef, %bb.hp ], [ %i.dr, %bb.cf ], [ undef, %bb.hq ], [ %i.dr, %bb.cg ], [ undef, %bb.hr ], [ %i.dr, %bb.ch ], [ undef, %bb.hs ], [ %i.dr, %bb.ci ], [ undef, %bb.ht ], [ %i.dr, %bb.cj ], [ undef, %bb.hu ], [ %i.dr, %bb.ck ], [ undef, %bb.hv ], [ %i.dr, %bb.cl ], [ undef, %bb.hw ], [ %i.dr, %bb.cm ], [ undef, %bb.hx ], [ %i.dr, %bb.cn ], [ undef, %bb.hy ], [ %i.dr, %bb.co ], [ undef, %bb.hz ], [ %i.dr, %bb.cp ], [ undef, %bb.ia ], [ %i.dr, %bb.cq ], [ undef, %bb.ib ], [ %i.dr, %bb.cr ], [ undef, %bb.ic ], [ %i.dr, %bb.cs ], [ undef, %bb.id ], [ %i.dr, %bb.ct ], [ undef, %bb.ie ], [ %i.dr, %bb.cu ], [ undef, %bb.if ], [ %i.dr, %bb.cv ], [ undef, %bb.ig ], [ %i.dr, %bb.cw ], [ undef, %bb.ih ], [ %i.dr, %bb.cx ], [ undef, %bb.ii ], [ %i.dr, %bb.cy ], [ undef, %bb.ij ], [ %i.dr, %bb.cz ], [ undef, %bb.ik ], [ %i.dr, %bb.da ], [ undef, %bb.il ], [ %i.dr, %bb.db ], [ undef, %bb.im ], [ %i.dr, %bb.dc ], [ undef, %bb.in ], [ %i.dr, %bb.dd ], [ undef, %bb.io ], [ %i.dr, %bb.de ], [ undef, %bb.ip ], [ %i.dr, %bb.df ], [ undef, %bb.iq ], [ %i.dr, %bb.dg ], [ undef, %bb.ir ], [ %i.dr, %bb.dh ], [ undef, %bb.is ], [ %i.dr, %bb.di ], [ undef, %bb.it ], [ %i.dr, %bb.dj ], [ undef, %bb.iu ], [ %i.dr, %bb.dk ], [ undef, %bb.iv ], [ %i.dr, %bb.dl ], [ undef, %bb.iw ], [ %i.dr, %bb.dm ], [ undef, %bb.ix ], [ %i.dr, %bb.dn ], [ undef, %bb.iy ], [ %i.dr, %bb.do ], [ undef, %bb.iz ], [ %i.dr, %bb.dp ], [ undef, %bb.ja ], [ %i.dr, %bb.dq ], [ undef, %bb.jb ], [ %i.dr, %bb.dr ], [ undef, %bb.jc ], [ %i.dr, %bb.ds ], [ undef, %bb.jd ], [ %i.dr, %bb.dt ], [ undef, %bb.je ], [ %i.dr, %bb.du ], [ undef, %bb.jf ], [ %i.dr, %bb.dv ], [ undef, %bb.jg ], [ %i.dr, %bb.dw ], [ undef, %bb.jh ], [ %i.dr, %bb.dx ], [ undef, %bb.ji ], [ %i.dr, %bb.dy ], [ undef, %bb.jj ], [ %i.dr, %bb.dz ], [ undef, %bb.jk ], [ %i.dr, %bb.ea ], [ undef, %bb.jl ], [ %i.dr, %bb.eb ], [ undef, %bb.jm ], [ %i.dr, %bb.ec ], [ undef, %bb.jn ], [ %i.dr, %bb.ed ], [ undef, %bb.jo ], [ %i.dr, %bb.ee ], [ undef, %bb.jp ], [ %i.dr, %bb.ef ], [ undef, %bb.jq ], [ %i.dr, %bb.eg ], [ undef, %bb.jr ], [ %i.dr, %bb.eh ], [ undef, %bb.js ], [ %i.dr, %bb.ei ], [ undef, %bb.jt ], [ %i.dr, %bb.ej ], [ undef, %bb.ju ], [ %i.dr, %bb.ek ], [ undef, %bb.jv ], [ %i.dr, %bb.el ], [ undef, %bb.jw ], [ %i.dr, %bb.em ], [ undef, %bb.jx ], [ %i.dr, %bb.en ], [ undef, %bb.jy ], [ %i.dr, %bb.eo ], [ undef, %bb.jz ], [ %i.dr, %bb.ep ], [ undef, %bb.ka ], [ %i.dr, %bb.eq ], [ undef, %bb.kb ], [ %i.dr, %bb.er ], [ undef, %bb.kc ], [ %i.dr, %bb.es ], [ undef, %bb.kd ], [ %i.dr, %bb.et ], [ undef, %bb.ke ], [ %i.dr, %bb.eu ], [ undef, %bb.kf ], [ %i.dr, %bb.ev ], [ undef, %bb.kg ], [ %i.dr, %bb.ew ], [ undef, %bb.kh ], [ %i.dr, %bb.ex ], [ undef, %bb.ki ], [ %i.dr, %bb.ey ], [ undef, %bb.kj ], [ %i.dr, %bb.ez ], [ undef, %bb.kk ], [ %i.dr, %bb.fa ], [ undef, %bb.kl ], [ %i.dr, %bb.fb ], [ undef, %bb.km ], [ %i.dr, %bb.fc ], [ undef, %bb.kn ], [ %i.dr, %bb.fd ], [ undef, %bb.ko ], [ %i.dr, %bb.fe ], [ undef, %bb.kp ], [ %i.dr, %bb.ff ], [ undef, %bb.kq ], [ %i.dr, %bb.fg ], [ undef, %bb.kr ], [ %i.dr, %bb.fh ], [ undef, %bb.ks ], [ %i.dr, %bb.fi ], [ undef, %bb.kt ], [ %i.dr, %bb.fj ], [ undef, %bb.ku ], [ %i.dr, %bb.fk ], [ undef, %bb.kv ], [ %i.dr, %bb.fl ], [ undef, %bb.kw ], [ %i.dr, %bb.fm ], [ undef, %bb.kx ], [ %i.dr, %bb.fn ], [ undef, %bb.ky ], [ %i.dp, %.noexc21.i.i.i ], [ %i.do, %.noexc20.i.i.i ], [ %i.dd, %.noexc18.i.i.i ], [ %i.df, %.noexc19.i.i.i ], [ %i.cv, %.noexc14.i.i.i ], [ %i.dr, %bb.fp ] ; 2 uses
  %.sroa.5.0.i.i.i.i.i.i.i.i = phi i8 [ undef, %bb.fo ], [ 0, %bb.fq ], [ undef, %.noexc15.i.i.i ], [ 1, %bb.fr ], [ undef, %bb.ah ], [ 2, %bb.fs ], [ undef, %bb.ai ], [ 3, %bb.ft ], [ undef, %bb.aj ], [ 4, %bb.fu ], [ undef, %bb.ak ], [ 5, %bb.fv ], [ undef, %bb.al ], [ 6, %bb.fw ], [ undef, %bb.am ], [ 7, %bb.fx ], [ undef, %bb.an ], [ 8, %bb.fy ], [ undef, %bb.ao ], [ 9, %bb.fz ], [ undef, %bb.ap ], [ 10, %bb.ga ], [ undef, %bb.aq ], [ 11, %bb.gb ], [ undef, %bb.ar ], [ 12, %bb.gc ], [ undef, %bb.as ], [ 13, %bb.gd ], [ undef, %bb.at ], [ 14, %bb.ge ], [ undef, %bb.au ], [ 15, %bb.gf ], [ undef, %bb.av ], [ 16, %bb.gg ], [ undef, %bb.aw ], [ 17, %bb.gh ], [ undef, %bb.ax ], [ 18, %bb.gi ], [ undef, %bb.ay ], [ 19, %bb.gj ], [ undef, %bb.az ], [ 20, %bb.gk ], [ undef, %bb.ba ], [ 21, %bb.gl ], [ undef, %bb.bb ], [ 22, %bb.gm ], [ undef, %bb.bc ], [ 23, %bb.gn ], [ undef, %bb.bd ], [ 24, %bb.go ], [ undef, %bb.be ], [ 25, %bb.gp ], [ undef, %bb.bf ], [ 26, %bb.gq ], [ undef, %bb.bg ], [ 27, %bb.gr ], [ undef, %bb.bh ], [ 28, %bb.gs ], [ undef, %bb.bi ], [ 29, %bb.gt ], [ undef, %bb.bj ], [ 30, %bb.gu ], [ undef, %bb.bk ], [ 31, %bb.gv ], [ undef, %bb.bl ], [ 32, %bb.gw ], [ undef, %bb.bm ], [ 33, %bb.gx ], [ undef, %bb.bn ], [ 34, %bb.gy ], [ undef, %bb.bo ], [ 35, %bb.gz ], [ undef, %bb.bp ], [ 36, %bb.ha ], [ undef, %bb.bq ], [ 37, %bb.hb ], [ undef, %bb.br ], [ 38, %bb.hc ], [ undef, %bb.bs ], [ 39, %bb.hd ], [ undef, %bb.bt ], [ 40, %bb.he ], [ undef, %bb.bu ], [ 41, %bb.hf ], [ undef, %bb.bv ], [ 42, %bb.hg ], [ undef, %bb.bw ], [ 43, %bb.hh ], [ undef, %bb.bx ], [ 44, %bb.hi ], [ undef, %bb.by ], [ 45, %bb.hj ], [ undef, %bb.bz ], [ 46, %bb.hk ], [ undef, %bb.ca ], [ 47, %bb.hl ], [ undef, %bb.cb ], [ 48, %bb.hm ], [ undef, %bb.cc ], [ 49, %bb.hn ], [ undef, %bb.cd ], [ 50, %bb.ho ], [ undef, %bb.ce ], [ 51, %bb.hp ], [ undef, %bb.cf ], [ 52, %bb.hq ], [ undef, %bb.cg ], [ 53, %bb.hr ], [ undef, %bb.ch ], [ 54, %bb.hs ], [ undef, %bb.ci ], [ 55, %bb.ht ], [ undef, %bb.cj ], [ 56, %bb.hu ], [ undef, %bb.ck ], [ 57, %bb.hv ], [ undef, %bb.cl ], [ 58, %bb.hw ], [ undef, %bb.cm ], [ 59, %bb.hx ], [ undef, %bb.cn ], [ 60, %bb.hy ], [ undef, %bb.co ], [ 61, %bb.hz ], [ undef, %bb.cp ], [ 62, %bb.ia ], [ undef, %bb.cq ], [ 63, %bb.ib ], [ undef, %bb.cr ], [ 64, %bb.ic ], [ undef, %bb.cs ], [ 65, %bb.id ], [ undef, %bb.ct ], [ 66, %bb.ie ], [ undef, %bb.cu ], [ 67, %bb.if ], [ undef, %bb.cv ], [ 68, %bb.ig ], [ undef, %bb.cw ], [ 69, %bb.ih ], [ undef, %bb.cx ], [ 70, %bb.ii ], [ undef, %bb.cy ], [ 71, %bb.ij ], [ undef, %bb.cz ], [ 72, %bb.ik ], [ undef, %bb.da ], [ 73, %bb.il ], [ undef, %bb.db ], [ 74, %bb.im ], [ undef, %bb.dc ], [ 75, %bb.in ], [ undef, %bb.dd ], [ 76, %bb.io ], [ undef, %bb.de ], [ 77, %bb.ip ], [ undef, %bb.df ], [ 78, %bb.iq ], [ undef, %bb.dg ], [ 79, %bb.ir ], [ undef, %bb.dh ], [ 80, %bb.is ], [ undef, %bb.di ], [ 81, %bb.it ], [ undef, %bb.dj ], [ 82, %bb.iu ], [ undef, %bb.dk ], [ 83, %bb.iv ], [ undef, %bb.dl ], [ 84, %bb.iw ], [ undef, %bb.dm ], [ 85, %bb.ix ], [ undef, %bb.dn ], [ 86, %bb.iy ], [ undef, %bb.do ], [ 87, %bb.iz ], [ undef, %bb.dp ], [ 88, %bb.ja ], [ undef, %bb.dq ], [ 89, %bb.jb ], [ undef, %bb.dr ], [ 90, %bb.jc ], [ undef, %bb.ds ], [ 91, %bb.jd ], [ undef, %bb.dt ], [ 92, %bb.je ], [ undef, %bb.du ], [ 93, %bb.jf ], [ undef, %bb.dv ], [ 94, %bb.jg ], [ undef, %bb.dw ], [ 95, %bb.jh ], [ undef, %bb.dx ], [ 96, %bb.ji ], [ undef, %bb.dy ], [ 97, %bb.jj ], [ undef, %bb.dz ], [ 98, %bb.jk ], [ undef, %bb.ea ], [ 99, %bb.jl ], [ undef, %bb.eb ], [ 100, %bb.jm ], [ undef, %bb.ec ], [ 101, %bb.jn ], [ undef, %bb.ed ], [ 102, %bb.jo ], [ undef, %bb.ee ], [ 103, %bb.jp ], [ undef, %bb.ef ], [ 104, %bb.jq ], [ undef, %bb.eg ], [ 105, %bb.jr ], [ undef, %bb.eh ], [ 106, %bb.js ], [ undef, %bb.ei ], [ 107, %bb.jt ], [ undef, %bb.ej ], [ 108, %bb.ju ], [ undef, %bb.ek ], [ 109, %bb.jv ], [ undef, %bb.el ], [ 110, %bb.jw ], [ undef, %bb.em ], [ 111, %bb.jx ], [ undef, %bb.en ], [ 112, %bb.jy ], [ undef, %bb.eo ], [ 113, %bb.jz ], [ undef, %bb.ep ], [ 114, %bb.ka ], [ undef, %bb.eq ], [ 115, %bb.kb ], [ undef, %bb.er ], [ 116, %bb.kc ], [ undef, %bb.es ], [ 117, %bb.kd ], [ undef, %bb.et ], [ 118, %bb.ke ], [ undef, %bb.eu ], [ 119, %bb.kf ], [ undef, %bb.ev ], [ 120, %bb.kg ], [ undef, %bb.ew ], [ 121, %bb.kh ], [ undef, %bb.ex ], [ 122, %bb.ki ], [ undef, %bb.ey ], [ 123, %bb.kj ], [ undef, %bb.ez ], [ 124, %bb.kk ], [ undef, %bb.fa ], [ 125, %bb.kl ], [ undef, %bb.fb ], [ 126, %bb.km ], [ undef, %bb.fc ], [ 127, %bb.kn ], [ undef, %bb.fd ], [ -128, %bb.ko ], [ undef, %bb.fe ], [ -127, %bb.kp ], [ undef, %bb.ff ], [ -126, %bb.kq ], [ undef, %bb.fg ], [ -125, %bb.kr ], [ undef, %bb.fh ], [ -124, %bb.ks ], [ undef, %bb.fi ], [ -123, %bb.kt ], [ undef, %bb.fj ], [ -122, %bb.ku ], [ undef, %bb.fk ], [ -121, %bb.kv ], [ undef, %bb.fl ], [ -120, %bb.kw ], [ undef, %bb.fm ], [ -119, %bb.kx ], [ undef, %bb.fn ], [ -118, %bb.ky ], [ undef, %.noexc21.i.i.i ], [ undef, %.noexc20.i.i.i ], [ undef, %.noexc18.i.i.i ], [ undef, %.noexc19.i.i.i ], [ undef, %.noexc14.i.i.i ], [ undef, %bb.fp ]
  %.sink.i11.i.i.i.i.i.i.i.i = phi i1 [ true, %bb.fo ], [ false, %bb.fq ], [ true, %.noexc15.i.i.i ], [ false, %bb.fr ], [ true, %bb.ah ], [ false, %bb.fs ], [ true, %bb.ai ], [ false, %bb.ft ], [ true, %bb.aj ], [ false, %bb.fu ], [ true, %bb.ak ], [ false, %bb.fv ], [ true, %bb.al ], [ false, %bb.fw ], [ true, %bb.am ], [ false, %bb.fx ], [ true, %bb.an ], [ false, %bb.fy ], [ true, %bb.ao ], [ false, %bb.fz ], [ true, %bb.ap ], [ false, %bb.ga ], [ true, %bb.aq ], [ false, %bb.gb ], [ true, %bb.ar ], [ false, %bb.gc ], [ true, %bb.as ], [ false, %bb.gd ], [ true, %bb.at ], [ false, %bb.ge ], [ true, %bb.au ], [ false, %bb.gf ], [ true, %bb.av ], [ false, %bb.gg ], [ true, %bb.aw ], [ false, %bb.gh ], [ true, %bb.ax ], [ false, %bb.gi ], [ true, %bb.ay ], [ false, %bb.gj ], [ true, %bb.az ], [ false, %bb.gk ], [ true, %bb.ba ], [ false, %bb.gl ], [ true, %bb.bb ], [ false, %bb.gm ], [ true, %bb.bc ], [ false, %bb.gn ], [ true, %bb.bd ], [ false, %bb.go ], [ true, %bb.be ], [ false, %bb.gp ], [ true, %bb.bf ], [ false, %bb.gq ], [ true, %bb.bg ], [ false, %bb.gr ], [ true, %bb.bh ], [ false, %bb.gs ], [ true, %bb.bi ], [ false, %bb.gt ], [ true, %bb.bj ], [ false, %bb.gu ], [ true, %bb.bk ], [ false, %bb.gv ], [ true, %bb.bl ], [ false, %bb.gw ], [ true, %bb.bm ], [ false, %bb.gx ], [ true, %bb.bn ], [ false, %bb.gy ], [ true, %bb.bo ], [ false, %bb.gz ], [ true, %bb.bp ], [ false, %bb.ha ], [ true, %bb.bq ], [ false, %bb.hb ], [ true, %bb.br ], [ false, %bb.hc ], [ true, %bb.bs ], [ false, %bb.hd ], [ true, %bb.bt ], [ false, %bb.he ], [ true, %bb.bu ], [ false, %bb.hf ], [ true, %bb.bv ], [ false, %bb.hg ], [ true, %bb.bw ], [ false, %bb.hh ], [ true, %bb.bx ], [ false, %bb.hi ], [ true, %bb.by ], [ false, %bb.hj ], [ true, %bb.bz ], [ false, %bb.hk ], [ true, %bb.ca ], [ false, %bb.hl ], [ true, %bb.cb ], [ false, %bb.hm ], [ true, %bb.cc ], [ false, %bb.hn ], [ true, %bb.cd ], [ false, %bb.ho ], [ true, %bb.ce ], [ false, %bb.hp ], [ true, %bb.cf ], [ false, %bb.hq ], [ true, %bb.cg ], [ false, %bb.hr ], [ true, %bb.ch ], [ false, %bb.hs ], [ true, %bb.ci ], [ false, %bb.ht ], [ true, %bb.cj ], [ false, %bb.hu ], [ true, %bb.ck ], [ false, %bb.hv ], [ true, %bb.cl ], [ false, %bb.hw ], [ true, %bb.cm ], [ false, %bb.hx ], [ true, %bb.cn ], [ false, %bb.hy ], [ true, %bb.co ], [ false, %bb.hz ], [ true, %bb.cp ], [ false, %bb.ia ], [ true, %bb.cq ], [ false, %bb.ib ], [ true, %bb.cr ], [ false, %bb.ic ], [ true, %bb.cs ], [ false, %bb.id ], [ true, %bb.ct ], [ false, %bb.ie ], [ true, %bb.cu ], [ false, %bb.if ], [ true, %bb.cv ], [ false, %bb.ig ], [ true, %bb.cw ], [ false, %bb.ih ], [ true, %bb.cx ], [ false, %bb.ii ], [ true, %bb.cy ], [ false, %bb.ij ], [ true, %bb.cz ], [ false, %bb.ik ], [ true, %bb.da ], [ false, %bb.il ], [ true, %bb.db ], [ false, %bb.im ], [ true, %bb.dc ], [ false, %bb.in ], [ true, %bb.dd ], [ false, %bb.io ], [ true, %bb.de ], [ false, %bb.ip ], [ true, %bb.df ], [ false, %bb.iq ], [ true, %bb.dg ], [ false, %bb.ir ], [ true, %bb.dh ], [ false, %bb.is ], [ true, %bb.di ], [ false, %bb.it ], [ true, %bb.dj ], [ false, %bb.iu ], [ true, %bb.dk ], [ false, %bb.iv ], [ true, %bb.dl ], [ false, %bb.iw ], [ true, %bb.dm ], [ false, %bb.ix ], [ true, %bb.dn ], [ false, %bb.iy ], [ true, %bb.do ], [ false, %bb.iz ], [ true, %bb.dp ], [ false, %bb.ja ], [ true, %bb.dq ], [ false, %bb.jb ], [ true, %bb.dr ], [ false, %bb.jc ], [ true, %bb.ds ], [ false, %bb.jd ], [ true, %bb.dt ], [ false, %bb.je ], [ true, %bb.du ], [ false, %bb.jf ], [ true, %bb.dv ], [ false, %bb.jg ], [ true, %bb.dw ], [ false, %bb.jh ], [ true, %bb.dx ], [ false, %bb.ji ], [ true, %bb.dy ], [ false, %bb.jj ], [ true, %bb.dz ], [ false, %bb.jk ], [ true, %bb.ea ], [ false, %bb.jl ], [ true, %bb.eb ], [ false, %bb.jm ], [ true, %bb.ec ], [ false, %bb.jn ], [ true, %bb.ed ], [ false, %bb.jo ], [ true, %bb.ee ], [ false, %bb.jp ], [ true, %bb.ef ], [ false, %bb.jq ], [ true, %bb.eg ], [ false, %bb.jr ], [ true, %bb.eh ], [ false, %bb.js ], [ true, %bb.ei ], [ false, %bb.jt ], [ true, %bb.ej ], [ false, %bb.ju ], [ true, %bb.ek ], [ false, %bb.jv ], [ true, %bb.el ], [ false, %bb.jw ], [ true, %bb.em ], [ false, %bb.jx ], [ true, %bb.en ], [ false, %bb.jy ], [ true, %bb.eo ], [ false, %bb.jz ], [ true, %bb.ep ], [ false, %bb.ka ], [ true, %bb.eq ], [ false, %bb.kb ], [ true, %bb.er ], [ false, %bb.kc ], [ true, %bb.es ], [ false, %bb.kd ], [ true, %bb.et ], [ false, %bb.ke ], [ true, %bb.eu ], [ false, %bb.kf ], [ true, %bb.ev ], [ false, %bb.kg ], [ true, %bb.ew ], [ false, %bb.kh ], [ true, %bb.ex ], [ false, %bb.ki ], [ true, %bb.ey ], [ false, %bb.kj ], [ true, %bb.ez ], [ false, %bb.kk ], [ true, %bb.fa ], [ false, %bb.kl ], [ true, %bb.fb ], [ false, %bb.km ], [ true, %bb.fc ], [ false, %bb.kn ], [ true, %bb.fd ], [ false, %bb.ko ], [ true, %bb.fe ], [ false, %bb.kp ], [ true, %bb.ff ], [ false, %bb.kq ], [ true, %bb.fg ], [ false, %bb.kr ], [ true, %bb.fh ], [ false, %bb.ks ], [ true, %bb.fi ], [ false, %bb.kt ], [ true, %bb.fj ], [ false, %bb.ku ], [ true, %bb.fk ], [ false, %bb.kv ], [ true, %bb.fl ], [ false, %bb.kw ], [ true, %bb.fm ], [ false, %bb.kx ], [ true, %bb.fn ], [ false, %bb.ky ], [ true, %.noexc21.i.i.i ], [ true, %.noexc20.i.i.i ], [ true, %.noexc18.i.i.i ], [ true, %.noexc19.i.i.i ], [ true, %.noexc14.i.i.i ], [ true, %bb.fp ] ; 2 uses
  %i.ds = load i8, ptr %i.br, align 8, !range !42, !alias.scope !124160, !noalias !124161, !noundef !21
  %i.dt = trunc nuw i8 %i.ds to i1
  br i1 %i.dt, label %bb.lb, label %bb.la

bb.kz:                                            ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !124159
  store i64 24, ptr %i.p, align 8, !noalias !124159
  %i.du = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h4bcb1ec0631805b8E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.be, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.p)
          to label %.noexc23.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !124144

.noexc23.i.i.i:                                   ; preds = %bb.kz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !124159
  br label %_ZN10serde_core2de9SeqAccess12next_element17h20cb0ca7ed4e4ad0E.exit.i.i.i.a

bb.la:                                            ; preds = %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17he0f54469085288f3E.exit.i.i.i.i.i.i.i.i"
  %i.dv = getelementptr inbounds nuw i8, ptr %i.be, i64 73 ; 2 uses
  %i.dw = load i8, ptr %i.dv, align 1, !alias.scope !124160, !noalias !124161, !noundef !21
  %i.dx = add i8 %i.dw, 1
  store i8 %i.dx, ptr %i.dv, align 1, !alias.scope !124160, !noalias !124161
  br i1 %.sink.i11.i.i.i.i.i.i.i.i, label %_ZN10serde_core2de9SeqAccess12next_element17h20cb0ca7ed4e4ad0E.exit.i.i.i.a, label %bb.lc

bb.lb:                                            ; preds = %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17he0f54469085288f3E.exit.i.i.i.i.i.i.i.i"
  br i1 %.sink.i11.i.i.i.i.i.i.i.i, label %_ZN10serde_core2de9SeqAccess12next_element17h20cb0ca7ed4e4ad0E.exit.i.i.i.a, label %bb.lc

bb.lc:                                            ; preds = %bb.lb, %bb.la
  call void @llvm.experimental.noalias.scope.decl(metadata !124207)
  %i.dy = load i64, ptr %i.bg, align 8, !alias.scope !124208, !noalias !124209, !noundef !21 ; 2 uses
  %.promoted.i17.i.i.i.i.i.i.i.i = load i64, ptr %i.bf, align 8, !alias.scope !124210, !noalias !124211 ; 2 uses
  %i.dz = icmp ult i64 %.promoted.i17.i.i.i.i.i.i.i.i, %i.dy
  br i1 %i.dz, label %.lr.ph.i22.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i

.lr.ph.i22.i.i.i.i.i.i.i.i:                       ; preds = %bb.lc
  %i.ea = load ptr, ptr %i.bj, align 8, !alias.scope !124208, !noalias !124209, !nonnull !21, !align !32, !noundef !21
  br label %bb.ld

bb.ld:                                            ; preds = %bb.le, %.lr.ph.i22.i.i.i.i.i.i.i.i
  %i.eb = phi i64 [ %.promoted.i17.i.i.i.i.i.i.i.i, %.lr.ph.i22.i.i.i.i.i.i.i.i ], [ %i.ee, %bb.le ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !124212)
  call void @llvm.experimental.noalias.scope.decl(metadata !124213)
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.eb
  %i.ed = load i8, ptr %i.ec, align 1, !noalias !124214, !noundef !21
  switch i8 %i.ed, label %bb.lf [
    i8 32, label %bb.le
    i8 10, label %bb.le
    i8 9, label %bb.le
    i8 13, label %bb.le
    i8 125, label %bb.lj
  ], !prof !49

bb.le:                                            ; preds = %bb.ld, %bb.ld, %bb.ld, %bb.ld
  %i.ee = add i64 %i.eb, 1                        ; 3 uses
  store i64 %i.ee, ptr %i.bf, align 8, !alias.scope !124215, !noalias !124211
  %exitcond.not.i23.i.i.i.i.i.i.i.i = icmp eq i64 %i.ee, %i.dy
  br i1 %exitcond.not.i23.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i, label %bb.ld

.loopexit.i.i.i.i.i.i.i.i:                        ; preds = %bb.lc, %bb.le
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !124159
  store i64 3, ptr %i.n, align 8, !noalias !124159
  %i.ef = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17hc41d812516ce183cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.be, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.n)
          to label %.noexc24.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !124144

.noexc24.i.i.i:                                   ; preds = %.loopexit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !124159
  br label %_ZN10serde_core2de9SeqAccess12next_element17h20cb0ca7ed4e4ad0E.exit.i.i.i.a

bb.lf:                                            ; preds = %bb.ld
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !124159
  store i64 10, ptr %i.o, align 8, !noalias !124159
  %i.eg = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17hc41d812516ce183cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.be, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.o)
          to label %.noexc25.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !124144

.noexc25.i.i.i:                                   ; preds = %bb.lf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !124159
  br label %_ZN10serde_core2de9SeqAccess12next_element17h20cb0ca7ed4e4ad0E.exit.i.i.i.a

.loopexit.i.i.i:                                  ; preds = %bb.lk, %bb.ag, %bb.af, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ab, %bb.aa, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17ha2b23dcee91ae9d3E.exit.i.i.i.i.i.i.i.i.i.i.i", %bb.z, %bb.y, %.loopexit.i.i.i.i.i.i.i.i.i.i.i, %bb.t, %bb.q, %bb.h
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.lg

.loopexit.split-lp.i.i.i:                         ; preds = %bb.lf, %.loopexit.i.i.i.i.i.i.i.i, %bb.kz, %.noexc11.i.i.i, %bb.r, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.n, %.loopexit19.i.i.i.i.i.i.i.i
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.lg

bb.lg:                                            ; preds = %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i
  %lpad.phi.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ] ; 2 uses
  %.val5.i.i.i = load i64, ptr %i.r, align 8, !noalias !124140 ; 2 uses
  %i.eh = icmp eq i64 %.val5.i.i.i, 0
  br i1 %i.eh, label %common.resume.i.i, label %bb.lh

bb.lh:                                            ; preds = %bb.lg
  %.val6.i.i.i = load ptr, ptr %i.ar, align 8, !noalias !124140, !nonnull !21, !noundef !21
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i.i.i, i64 noundef %.val5.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !124144
  br label %common.resume.i.i

_ZN10serde_core2de9SeqAccess12next_element17h20cb0ca7ed4e4ad0E.exit.i.i.i.a: ; preds = %bb.lb, %bb.la, %.noexc25.i.i.i, %.noexc24.i.i.i, %.noexc23.i.i.i, %bb.u, %.noexc8.i.i.i, %.noexc7.i.i.i, %bb.i
  %.sroa.1228.0.i.i.i = phi ptr [ %i.bb, %bb.i ], [ %i.ef, %.noexc24.i.i.i ], [ %i.du, %.noexc23.i.i.i ], [ %i.bq, %.noexc8.i.i.i ], [ %i.bp, %.noexc7.i.i.i ], [ %.sroa.121.0.ph.i.i.i.i.i.i.i.i.i.i.i, %bb.u ], [ %i.eg, %.noexc25.i.i.i ], [ %.sroa.1458.0.i.i.i.i.i.i.i.i, %bb.la ], [ %.sroa.1458.0.i.i.i.i.i.i.i.i, %bb.lb ] ; 2 uses
  %.val.i.i.i = load i64, ptr %i.r, align 8, !noalias !124140 ; 2 uses
  %i.ei = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.ei, label %"_ZN182_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$..deserialize..VecVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17hd8338cebe1f8be48E.exit.i.i", label %bb.li

bb.li:                                            ; preds = %_ZN10serde_core2de9SeqAccess12next_element17h20cb0ca7ed4e4ad0E.exit.i.i.i.a
  %.val4.i.i.i = load ptr, ptr %i.ar, align 8, !noalias !124140, !nonnull !21, !noundef !21
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !124144
  br label %"_ZN182_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$..deserialize..VecVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17hd8338cebe1f8be48E.exit.i.i"

bb.lj:                                            ; preds = %bb.ld
  %i.ej = add i64 %i.eb, 1
  store i64 %i.ej, ptr %i.bf, align 8, !alias.scope !124216, !noalias !124161
  br label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %switch.lookup, %bb.lj
  %.sroa.9.0.ph35.i.i.i = phi i8 [ %.sroa.5.0.i.i.i.i.i.i.i.i, %bb.lj ], [ %switch.load, %switch.lookup ]
  call void @llvm.experimental.noalias.scope.decl(metadata !124217)
  %i.ek = load i64, ptr %i.r, align 8, !range !23, !alias.scope !124217, !noalias !124140, !noundef !21
  %i.el = icmp eq i64 %storemerge.i.i.i, %i.ek
  br i1 %i.el, label %bb.lk, label %bb.ll

bb.lk:                                            ; preds = %.thread.i.i.i
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h4731b467761b7e7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @823)
          to label %bb.ll unwind label %.loopexit.i.i.i, !noalias !124144

.thread36.i.i.i:                                  ; preds = %bb.j
  %.sroa.033.0.copyload34.i.i = load i64, ptr %i.r, align 8, !noalias !124218
  br label %"_ZN182_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$..deserialize..VecVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17hd8338cebe1f8be48E.exit.i.i"

bb.ll:                                            ; preds = %bb.lk, %.thread.i.i.i
  %i.em = load ptr, ptr %i.ar, align 8, !alias.scope !124217, !noalias !124140, !nonnull !21, !noundef !21 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 %storemerge.i.i.i
  store i8 %.sroa.9.0.ph35.i.i.i, ptr %i.en, align 1, !noalias !124219
  %i.eo = add i64 %storemerge.i.i.i, 1
  br label %bb.h

"_ZN182_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$..deserialize..VecVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17hd8338cebe1f8be48E.exit.i.i": ; preds = %.thread36.i.i.i, %bb.li, %_ZN10serde_core2de9SeqAccess12next_element17h20cb0ca7ed4e4ad0E.exit.i.i.i.a
  %.sroa.735.0.i.i = phi ptr [ %.sroa.1228.0.i.i.i, %_ZN10serde_core2de9SeqAccess12next_element17h20cb0ca7ed4e4ad0E.exit.i.i.i.a ], [ %.sroa.1228.0.i.i.i, %bb.li ], [ %.sroa.735.0.copyload37.i.i, %.thread36.i.i.i ] ; 7 uses
  %.sroa.033.0.i.i = phi i64 [ -9223372036854775808, %_ZN10serde_core2de9SeqAccess12next_element17h20cb0ca7ed4e4ad0E.exit.i.i.i.a ], [ -9223372036854775808, %bb.li ], [ %.sroa.033.0.copyload34.i.i, %.thread36.i.i.i ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !124140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !124136
  %i.ep = load i8, ptr %i.ah, align 8, !range !42, !alias.scope !124138, !noalias !124137, !noundef !21
  %i.eq = trunc nuw i8 %i.ep to i1
  br i1 %i.eq, label %bb.lo, label %bb.ln

bb.lm:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !124136
  store i64 24, ptr %i.t, align 8, !noalias !124136
  %i.er = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h4bcb1ec0631805b8E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.t), !noalias !124137
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !124136
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.er, ptr %i.es, align 8, !alias.scope !124137, !noalias !124138
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !124137, !noalias !124138
  br label %"_ZN10serde_core2de5impls82_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$11deserialize17h15213da8a868043cE.exit"

bb.ln:                                            ; preds = %"_ZN182_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$..deserialize..VecVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17hd8338cebe1f8be48E.exit.i.i"
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 73 ; 2 uses
  %i.eu = load i8, ptr %i.et, align 1, !alias.scope !124138, !noalias !124137, !noundef !21
  %i.ev = add i8 %i.eu, 1
  store i8 %i.ev, ptr %i.et, align 1, !alias.scope !124138, !noalias !124137
  br label %bb.lo

bb.lo:                                            ; preds = %bb.ln, %"_ZN182_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$..deserialize..VecVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17hd8338cebe1f8be48E.exit.i.i"
  %i.ew = invoke fastcc noundef align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$7end_seq17h258a7df2ee407306E"(ptr noalias noundef nonnull align 8 dereferenceable(80) %1)
          to label %bb.lq unwind label %bb.lp, !noalias !124137 ; 10 uses

bb.lp:                                            ; preds = %bb.lo
  %i.ex = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr133drop_in_place$LT$core..result..Result$LT$alloc..vec..Vec$LT$meilisearch_types..locales..Locale$GT$$C$serde_json..error..Error$GT$$GT$17hb63947ea72fdb6cfE"(i64 %.sroa.033.0.i.i, ptr %.sroa.735.0.i.i) #43
          to label %common.resume.i.i unwind label %bb.lv, !noalias !124137

bb.lq:                                            ; preds = %bb.lo
  %i.ey = icmp eq i64 %.sroa.033.0.i.i, -9223372036854775808
  br i1 %i.ey, label %bb.ls, label %bb.lr

bb.lr:                                            ; preds = %bb.lq
  %.not.i.i = icmp eq ptr %i.ew, null
  br i1 %.not.i.i, label %bb.ma, label %bb.lt

bb.ls:                                            ; preds = %bb.lq
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.735.0.i.i) ]
  %.not70.i.i = icmp eq ptr %i.ew, null
  br i1 %.not70.i.i, label %.thread61.i.i, label %bb.lw

bb.lt:                                            ; preds = %bb.lr
  %i.ez = icmp eq i64 %.sroa.033.0.i.i, 0
  br i1 %i.ez, label %.thread61.i.i, label %bb.lu

bb.lu:                                            ; preds = %bb.lt
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.735.0.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.735.0.i.i, i64 noundef %.sroa.033.0.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !124137
  br label %.thread61.i.i

bb.lv:                                            ; preds = %bb.lp
  %i.fa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #44, !noalias !124137
  unreachable

bb.lw:                                            ; preds = %bb.ls
  call void @llvm.experimental.noalias.scope.decl(metadata !124220)
  call void @llvm.experimental.noalias.scope.decl(metadata !124221)
  %i.fb = load i64, ptr %i.ew, align 8, !range !47, !alias.scope !124222, !noalias !124137, !noundef !21
  switch i64 %i.fb, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h5462876ad9a9693dE.exit.i.i" [
    i64 0, label %bb.lx
    i64 1, label %bb.ly
  ]

bb.lx:                                            ; preds = %bb.lw
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %.val1.i.i.i.i.i.i = load i64, ptr %i.fc, align 8, !alias.scope !124222, !noalias !124137, !noundef !21 ; 2 uses
  %i.fd = icmp eq i64 %.val1.i.i.i.i.i.i, 0
  br i1 %i.fd, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h5462876ad9a9693dE.exit.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i": ; preds = %bb.lx
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %.val.i.i.i.i.i.i = load ptr, ptr %i.fe, align 8, !alias.scope !124222, !noalias !124137, !nonnull !21, !noundef !21
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %.val1.i.i.i.i.i.i, i64 noundef 1) #42, !noalias !124223
  br label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h5462876ad9a9693dE.exit.i.i"

bb.ly:                                            ; preds = %bb.lw
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hbbd939ba801c9a27E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.ff)
          to label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h5462876ad9a9693dE.exit.i.i" unwind label %bb.lz, !noalias !124137

bb.lz:                                            ; preds = %bb.ly
  %i.fg = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ew, i64 noundef 40, i64 noundef 8) #42, !noalias !124137
  br label %common.resume.i.i

"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h5462876ad9a9693dE.exit.i.i": ; preds = %bb.ly, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i", %bb.lx, %bb.lw
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ew, i64 noundef 40, i64 noundef 8) #42, !noalias !124137
  br label %.thread61.i.i

.thread61.i.i:                                    ; preds = %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h5462876ad9a9693dE.exit.i.i", %bb.lu, %bb.lt, %bb.ls, %bb.e
  %.sroa.9.2.i.i = phi ptr [ %.sroa.735.0.i.i, %bb.ls ], [ %i.ak, %bb.e ], [ %.sroa.735.0.i.i, %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h5462876ad9a9693dE.exit.i.i" ], [ %i.ew, %bb.lt ], [ %i.ew, %bb.lu ]
  %i.fh = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h07299f01aaf065d0E(ptr noalias noundef nonnull align 8 %.sroa.9.2.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1), !noalias !124137
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fh, ptr %i.fi, align 8, !alias.scope !124137, !noalias !124138
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !124137, !noalias !124138
  br label %"_ZN10serde_core2de5impls82_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$11deserialize17h15213da8a868043cE.exit"

bb.ma:                                            ; preds = %bb.lr
  store i64 %.sroa.033.0.i.i, ptr %0, align 8, !alias.scope !124137, !noalias !124138
  %.sroa.218.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.735.0.i.i, ptr %.sroa.218.0..sroa_idx.i.i, align 8, !alias.scope !124137, !noalias !124138
  %.sroa.319.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %storemerge.i.i.i, ptr %.sroa.319.0..sroa_idx.i.i, align 8, !alias.scope !124137, !noalias !124138
  br label %"_ZN10serde_core2de5impls82_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$11deserialize17h15213da8a868043cE.exit"

"_ZN10serde_core2de5impls82_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$11deserialize17h15213da8a868043cE.exit": ; preds = %.loopexit.i.i, %bb.lm, %.thread61.i.i, %bb.ma
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hbe1a5b68d88e51a4E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull align 8 dereferenceable(96) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %i.d = alloca [72 x i8], align 8                ; 13 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  %i.f = alloca [72 x i8], align 8                ; 13 uses
  %.sroa.5.i.i.i.i126.sroa.4.i.i.i.i.i.i = alloca [16 x i8], align 8 ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %.sroa.5.i.i.i.i.sroa.4.i.i.i.i.i.i = alloca [16 x i8], align 8 ; 4 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [16 x i8], align 8                ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %i.k = alloca [16 x i8], align 8                ; 7 uses
  %i.l = alloca [16 x i8], align 8                ; 7 uses
  %.sroa.570.i.i.i.i.i.i = alloca [24 x i8], align 8 ; 5 uses
  %.sroa.564.i.sroa.4.i.i.i.i.i = alloca [16 x i8], align 8 ; 5 uses
  %i.m = alloca [16 x i8], align 8                ; 7 uses
  %i.n = alloca [32 x i8], align 8                ; 10 uses
  %i.o = alloca [32 x i8], align 8                ; 17 uses
  %i.p = alloca [16 x i8], align 8                ; 6 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 9 uses
  %i.s = alloca [72 x i8], align 8                ; 13 uses
  %.sroa.5.i.i.sroa.4.i.i63.i.i.i.i.i.i = alloca [16 x i8], align 8 ; 5 uses
  %i.t = alloca [32 x i8], align 8                ; 7 uses
  %i.u = alloca [16 x i8], align 8                ; 7 uses
  %.sroa.5.i.i.sroa.4.i.i.i.i.i.i.i.i = alloca [16 x i8], align 8 ; 4 uses
  %i.v = alloca [32 x i8], align 8                ; 7 uses
  %i.w = alloca [16 x i8], align 8                ; 7 uses
  %i.x = alloca [16 x i8], align 8                ; 7 uses
  %i.y = alloca [16 x i8], align 8                ; 7 uses
  %i.z = alloca [16 x i8], align 8                ; 7 uses
  %i.aa = alloca [16 x i8], align 8               ; 7 uses
  %i.ab = alloca [32 x i8], align 8               ; 10 uses
  %i.ac = alloca [16 x i8], align 8               ; 12 uses
  %i.ad = alloca [24 x i8], align 8               ; 4 uses
  %i.ae = alloca [16 x i8], align 8               ; 8 uses
  %i.af = alloca [72 x i8], align 8               ; 12 uses
  %i.ag = alloca [80 x i8], align 8               ; 9 uses
  %i.ah = alloca [72 x i8], align 8               ; 13 uses
  %i.ai = alloca [80 x i8], align 8               ; 9 uses
  %.sroa.14.i.i.i.i.i = alloca [16 x i8], align 8 ; 6 uses
  %.sroa.18.i.i.i.i.i = alloca [56 x i8], align 8 ; 7 uses
  %i.aj = alloca [16 x i8], align 8               ; 8 uses
  %.sroa.5.sroa.4.i = alloca [56 x i8], align 8   ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124452)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124453)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124454)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124455)
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 10 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 9 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 81 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 10 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  br label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h3a386fa51ded757fE.exit.i.i.i"
end_hunk_4
