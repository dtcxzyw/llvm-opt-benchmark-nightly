Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/cpu?download=true
inline.NumInlined: 224
inline.NumDeleted: 75
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0
@.str.826 = private unnamed_addr constant [13 x i8] c"SierraForest\00", align 1
@.str.827 = private unnamed_addr constant [36 x i8] c"Intel Xeon Processor (SierraForest)\00", align 1
@.str.828 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@.compoundliteral.829 = internal global [14 x %struct.PropValue] [%struct.PropValue { ptr @.str.25, ptr @.str.634 }, %struct.PropValue { ptr @.str.60, ptr @.str.634 }, %struct.PropValue { ptr @.str.104, ptr @.str.634 }, %struct.PropValue { ptr @.str.105, ptr @.str.634 }, %struct.PropValue { ptr @.str.106, ptr @.str.634 }, %struct.PropValue { ptr @.str.267, ptr @.str.634 }, %struct.PropValue { ptr @.str.268, ptr @.str.634 }, %struct.PropValue { ptr @.str.142, ptr @.str.634 }, %struct.PropValue { ptr @.str.388, ptr @.str.634 }, %struct.PropValue { ptr @.str.389, ptr @.str.634 }, %struct.PropValue { ptr @.str.390, ptr @.str.634 }, %struct.PropValue { ptr @.str.392, ptr @.str.634 }, %struct.PropValue { ptr @.str.508, ptr @.str.828 }, %struct.PropValue zeroinitializer], align 8
@.str.830 = private unnamed_addr constant [38 x i8] c"with srf-sp cache model and 0x1f leaf\00", align 1
@.compoundliteral.831 = internal global [2 x %struct.PropValue] [%struct.PropValue { ptr @.str.511, ptr @.str.634 }, %struct.PropValue zeroinitializer], align 8
@xeon_srf_cache_info = internal constant %struct.CPUCaches { ptr @.compoundliteral.934, ptr @.compoundliteral.935, ptr @.compoundliteral.936, ptr @.compoundliteral.937 }, align 8
@.compoundliteral.832 = internal global [5 x %struct.PropValue] [%struct.PropValue { ptr @.str.94, ptr @.str.634 }, %struct.PropValue { ptr @.str.117, ptr @.str.634 }, %struct.PropValue { ptr @.str.331, ptr @.str.634 }, %struct.PropValue { ptr @.str.341, ptr @.str.634 }, %struct.PropValue zeroinitializer], align 8
@.compoundliteral.833 = internal global [2 x %struct.PropValue] [%struct.PropValue { ptr @.str.270, ptr @.str.634 }, %struct.PropValue zeroinitializer], align 8
@.compoundliteral.834 = internal global [2 x %struct.PropValue] [%struct.PropValue { ptr @.str.313, ptr @.str.634 }, %struct.PropValue zeroinitializer], align 8
@.compoundliteral.835 = internal global [7 x { i32, [4 x i8], ptr, ptr, ptr, ptr }] [{ i32, [4 x i8], ptr, ptr, ptr, ptr } { i32 1, [4 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr null }, { i32, [4 x i8], ptr, ptr, ptr, ptr } { i32 2, [4 x i8] zeroinitializer, ptr null, ptr null, ptr @.compoundliteral.829, ptr null }, { i32, [4 x i8], ptr, ptr, ptr, ptr } { i32 3, [4 x i8] zeroinitializer, ptr null, ptr @.str.830, ptr @.compoundliteral.831, ptr @xeon_srf_cache_info }, { i32, [4 x i8], ptr, ptr, ptr, ptr } { i32 4, [4 x i8] zeroinitializer, ptr null, ptr @.str.804, ptr @.compoundliteral.832, ptr null }, { i32, [4 x i8], ptr, ptr, ptr, ptr } { i32 5, [4 x i8] zeroinitializer, ptr null, ptr @.str.806, ptr @.compoundliteral.833, ptr null }, { i32, [4 x i8], ptr, ptr, ptr, ptr } { i32 6, [4 x i8] zeroinitializer, ptr null, ptr @.str.759, ptr @.compoundliteral.834, ptr null }, { i32, [4 x i8], ptr, ptr, ptr, ptr } zeroinitializer], align 8
@.str.836 = private unnamed_addr constant [17 x i8] c"ClearwaterForest\00", align 1
@.str.837 = private unnamed_addr constant [40 x i8] c"Intel Xeon Processor (ClearwaterForest)\00", align 1
@.compoundliteral.838 = internal global [5 x %struct.PropValue] [%struct.PropValue { ptr @.str.94, ptr @.str.634 }, %struct.PropValue { ptr @.str.117, ptr @.str.634 }, %struct.PropValue { ptr @.str.331, ptr @.str.634 }, %struct.PropValue { ptr @.str.341, ptr @.str.634 }, %struct.PropValue zeroinitializer], align 8
@.str.839 = private unnamed_addr constant [46 x i8] c"with its-no, cwf-ap cache model and 0x1f leaf\00", align 1
@.compoundliteral.840 = internal global [3 x %struct.PropValue] [%struct.PropValue { ptr @.str.270, ptr @.str.634 }, %struct.PropValue { ptr @.str.511, ptr @.str.634 }, %struct.PropValue zeroinitializer], align 8
@xeon_cwf_cache_info = internal constant %struct.CPUCaches { ptr @.compoundliteral.938, ptr @.compoundliteral.939, ptr @.compoundliteral.940, ptr @.compoundliteral.941 }, align 8
@.compoundliteral.841 = internal global [2 x %struct.PropValue] [%struct.PropValue { ptr @.str.313, ptr @.str.634 }, %struct.PropValue zeroinitializer], align 8
@.compoundliteral.842 = internal global [5 x { i32, [4 x i8], ptr, ptr, ptr, ptr }] [{ i32, [4 x i8], ptr, ptr, ptr, ptr } { i32 1, [4 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr null }, { i32, [4 x i8], ptr, ptr, ptr, ptr } { i32 2, [4 x i8] zeroinitializer, ptr null, ptr @.str.804, ptr @.compoundliteral.838, ptr null }, { i32, [4 x i8], ptr, ptr, ptr, ptr } { i32 3, [4 x i8] zeroinitializer, ptr null, ptr @.str.839, ptr @.compoundliteral.840, ptr @xeon_cwf_cache_info }, { i32, [4 x i8], ptr, ptr, ptr, ptr } { i32 4, [4 x i8] zeroinitializer, ptr null, ptr @.str.759, ptr @.compoundliteral.841, ptr null }, { i32, [4 x i8], ptr, ptr, ptr, ptr } zeroinitializer], align 8
@.str.843 = private unnamed_addr constant [10 x i8] c"Denverton\00", align 1
@.str.844 = private unnamed_addr constant [33 x i8] c"Intel Atom Processor (Denverton)\00", align 1
@.str.845 = private unnamed_addr constant [19 x i8] c"no MPX, no MONITOR\00", align 1
@.compoundliteral.846 = internal global [3 x %struct.PropValue] [%struct.PropValue { ptr @.str.33, ptr @.str.712 }, %struct.PropValue { ptr @.str.72, ptr @.str.712 }, %struct.PropValue zeroinitializer], align 8
@.str.847 = private unnamed_addr constant [27 x i8] c"XSAVES, no MPX, no MONITOR\00", align 1
@.compoundliteral.848 = internal global [3 x %struct.PropValue] [%struct.PropValue { ptr @.str.249, ptr @.str.634 }, %struct.PropValue { ptr @.str.312, ptr @.str.634 }, %struct.PropValue zeroinitializer], align 8
@.compoundliteral.849 = internal global [4 x { i32, [4 x i8], ptr, ptr, ptr, ptr }] [{ i32, [4 x i8], ptr, ptr, ptr, ptr } { i32 1, [4 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr null }, { i32, [4 x i8], ptr, ptr, ptr, ptr } { i32 2, [4 x i8] zeroinitializer, ptr null, ptr @.str.845, ptr @.compoundliteral.846, ptr null }, { i32, [4 x i8], ptr, ptr, ptr, ptr } { i32 3, [4 x i8] zeroinitializer, ptr null, ptr @.str.847, ptr @.compoundliteral.848, ptr null }, { i32, [4 x i8], ptr, ptr, ptr, ptr } zeroinitializer], align 8
@.str.850 = private unnamed_addr constant [10 x i8] c"Snowridge\00", align 1
@.str.851 = private unnamed_addr constant [33 x i8] c"Intel Atom Processor (SnowRidge)\00", align 1
@.str.852 = private unnamed_addr constant [41 x i8] c"Intel Atom Processor (Snowridge, no MPX)\00", align 1
@.compoundliteral.853 = internal global [3 x %struct.PropValue] [%struct.PropValue { ptr @.str.72, ptr @.str.712 }, %struct.PropValue { ptr @.str.509, ptr @.str.852 }, %struct.PropValue zeroinitializer], align 8
@.str.854 = private unnamed_addr constant [15 x i8] c"XSAVES, no MPX\00", align 1
@.compoundliteral.855 = internal global [3 x %struct.PropValue] [%struct.PropValue { ptr @.str.249, ptr @.str.634 }, %struct.PropValue { ptr @.str.312, ptr @.str.634 }, %struct.PropValue zeroinitializer], align 8
@.str.856 = private unnamed_addr constant [41 x i8] c"no split lock detect, no core-capability\00", align 1
@.compoundliteral.857 = internal global [3 x %struct.PropValue] [%struct.PropValue { ptr @.str.271, ptr @.str.712 }, %struct.PropValue { ptr @.str.126, ptr @.str.712 }, %struct.PropValue zeroinitializer], align 8
@.compoundliteral.858 = internal global [5 x { i32, [4 x i8], ptr, ptr, ptr, ptr }] [{ i32, [4 x i8], ptr, ptr, ptr, ptr } { i32 1, [4 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr null }, { i32, [4 x i8], ptr, ptr, ptr, ptr } { i32 2, [4 x i8] zeroinitializer, ptr null, ptr null, ptr @.compoundliteral.853, ptr null }, { i32, [4 x i8], ptr, ptr, ptr, ptr } { i32 3, [4 x i8] zeroinitializer, ptr null, ptr @.str.854, ptr @.compoundliteral.855, ptr null }, { i32, [4 x i8], ptr, ptr, ptr, ptr } { i32 4, [4 x i8] zeroinitializer, ptr null, ptr @.str.856, ptr @.compoundliteral.857, ptr null }, { i32, [4 x i8], ptr, ptr, ptr, ptr } zeroinitializer], align 8
@.str.859 = private unnamed_addr constant [12 x i8] c"KnightsMill\00", align 1
@.str.860 = private unnamed_addr constant [40 x i8] c"Intel Xeon Phi Processor (Knights Mill)\00", align 1
@.str.861 = private unnamed_addr constant [11 x i8] c"Opteron_G1\00", align 1
@.str.862 = private unnamed_addr constant [38 x i8] c"AMD Opteron 240 (Gen 1 Class Opteron)\00", align 1
@.str.863 = private unnamed_addr constant [11 x i8] c"Opteron_G2\00", align 1
@.str.864 = private unnamed_addr constant [39 x i8] c"AMD Opteron 22xx (Gen 2 Class Opteron)\00", align 1
@.str.865 = private unnamed_addr constant [11 x i8] c"Opteron_G3\00", align 1
@.str.866 = private unnamed_addr constant [39 x i8] c"AMD Opteron 23xx (Gen 3 Class Opteron)\00", align 1
@.str.867 = private unnamed_addr constant [11 x i8] c"Opteron_G4\00", align 1
@.str.868 = private unnamed_addr constant [27 x i8] c"AMD Opteron 62xx class CPU\00", align 1
@.str.869 = private unnamed_addr constant [11 x i8] c"Opteron_G5\00", align 1
@.str.870 = private unnamed_addr constant [27 x i8] c"AMD Opteron 63xx class CPU\00", align 1
@.str.871 = private unnamed_addr constant [5 x i8] c"EPYC\00", align 1
@.str.872 = private unnamed_addr constant [19 x i8] c"AMD EPYC Processor\00", align 1
@epyc_cache_info = internal constant %struct.CPUCaches { ptr @.compoundliteral.942, ptr @.compoundliteral.943, ptr @.compoundliteral.944, ptr @.compoundliteral.945 }, align 8
@.str.873 = private unnamed_addr constant [10 x i8] c"EPYC-IBPB\00", align 1
@.str.874 = private unnamed_addr constant [31 x i8] c"AMD EPYC Processor (with IBPB)\00", align 1
@.compoundliteral.875 = internal global [3 x %struct.PropValue] [%struct.PropValue { ptr @.str.181, ptr @.str.634 }, %struct.PropValue { ptr @.str.509, ptr @.str.874 }, %struct.PropValue zeroinitializer], align 8
@.compoundliteral.876 = internal global [7 x %struct.PropValue] [%struct.PropValue { ptr @.str.181, ptr @.str.634 }, %struct.PropValue { ptr @.str.173, ptr @.str.634 }, %struct.PropValue { ptr @.str.178, ptr @.str.634 }, %struct.PropValue { ptr @.str.179, ptr @.str.634 }, %struct.PropValue { ptr @.str.249, ptr @.str.634 }, %struct.PropValue { ptr @.str.509, ptr @.str.872 }, %struct.PropValue zeroinitializer], align 8
@.str.877 = private unnamed_addr constant [22 x i8] c"AMD EPYC-v4 Processor\00", align 1
@.compoundliteral.878 = internal global [2 x %struct.PropValue] [%struct.PropValue { ptr @.str.509, ptr @.str.877 }, %struct.PropValue zeroinitializer], align 8
@epyc_v4_cache_info = internal global %struct.CPUCaches { ptr @.compoundliteral.946, ptr @.compoundliteral.947, ptr @.compoundliteral.948, ptr @.compoundliteral.949 }, align 8
@.str.879 = private unnamed_addr constant [22 x i8] c"AMD EPYC-v5 Processor\00", align 1
@.compoundliteral.880 = internal global [12 x %struct.PropValue] [%struct.PropValue { ptr @.str.175, ptr @.str.634 }, %struct.PropValue { ptr @.str.176, ptr @.str.634 }, %struct.PropValue { ptr @.str.231, ptr @.str.634 }, %struct.PropValue { ptr @.str.234, ptr @.str.634 }, %struct.PropValue { ptr @.str.235, ptr @.str.634 }, %struct.PropValue { ptr @.str.236, ptr @.str.634 }, %struct.PropValue { ptr @.str.238, ptr @.str.634 }, %struct.PropValue { ptr @.str.239, ptr @.str.634 }, %struct.PropValue { ptr @.str.241, ptr @.str.634 }, %struct.PropValue { ptr @.str.242, ptr @.str.634 }, %struct.PropValue { ptr @.str.509, ptr @.str.879 }, %struct.PropValue zeroinitializer], align 8
@epyc_v5_cache_info = internal global %struct.CPUCaches { ptr @.compoundliteral.950, ptr @.compoundliteral.951, ptr @.compoundliteral.952, ptr @.compoundliteral.953 }, align 8
@.compoundliteral.881 = internal global [6 x { i32, [4 x i8], ptr, ptr, ptr, ptr }] [{ i32, [4 x i8], ptr, ptr, ptr, ptr } { i32 1, [4 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr null }, { i32, [4 x i8], ptr, ptr, ptr, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.873, ptr null, ptr @.compoundliteral.875, ptr null }, { i32, [4 x i8], ptr, ptr, ptr, ptr } { i32 3, [4 x i8] zeroinitializer, ptr null, ptr null, ptr @.compoundliteral.876, ptr null }, { i32, [4 x i8], ptr, ptr, ptr, ptr } { i32 4, [4 x i8] zeroinitializer, ptr null, ptr null, ptr @.compoundliteral.878, ptr @epyc_v4_cache_info }, { i32, [4 x i8], ptr, ptr, ptr, ptr } { i32 5, [4 x i8] zeroinitializer, ptr null, ptr null, ptr @.compoundliteral.880, ptr @epyc_v5_cache_info }, { i32, [4 x i8], ptr, ptr, ptr, ptr } zeroinitializer], align 8
@.str.882 = private unnamed_addr constant [7 x i8] c"Dhyana\00", align 1
@.str.883 = private unnamed_addr constant [23 x i8] c"Hygon Dhyana Processor\00", align 1
@.compoundliteral.884 = internal global [2 x %struct.PropValue] [%struct.PropValue { ptr @.str.249, ptr @.str.634 }, %struct.PropValue zeroinitializer], align 8
@.compoundliteral.885 = internal global [3 x { i32, [4 x i8], ptr, ptr, ptr, ptr }] [{ i32, [4 x i8], ptr, ptr, ptr, ptr } { i32 1, [4 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr null }, { i32, [4 x i8], ptr, ptr, ptr, ptr } { i32 2, [4 x i8] zeroinitializer, ptr null, ptr @.str.779, ptr @.compoundliteral.884, ptr null }, { i32, [4 x i8], ptr, ptr, ptr, ptr } zeroinitializer], align 8
@.str.886 = private unnamed_addr constant [10 x i8] c"EPYC-Rome\00", align 1
@.str.887 = private unnamed_addr constant [24 x i8] c"AMD EPYC-Rome Processor\00", align 1
@epyc_rome_cache_info = internal constant %struct.CPUCaches { ptr @.compoundliteral.954, ptr @.compoundliteral.955, ptr @.compoundliteral.956, ptr @.compoundliteral.957 }, align 8
@.compoundliteral.888 = internal global [3 x %struct.PropValue] [%struct.PropValue { ptr @.str.182, ptr @.str.634 }, %struct.PropValue { ptr @.str.185, ptr @.str.634 }, %struct.PropValue zeroinitializer], align 8
@.str.889 = private unnamed_addr constant [27 x i8] c"AMD EPYC-Rome-v3 Processor\00", align 1
@.compoundliteral.890 = internal global [2 x %struct.PropValue] [%struct.PropValue { ptr @.str.509, ptr @.str.889 }, %struct.PropValue zeroinitializer], align 8
@epyc_rome_v3_cache_info = internal constant %struct.CPUCaches { ptr @.compoundliteral.958, ptr @.compoundliteral.959, ptr @.compoundliteral.960, ptr @.compoundliteral.961 }, align 8
@.str.891 = private unnamed_addr constant [39 x i8] c"AMD EPYC-Rome-v4 Processor (no XSAVES)\00", align 1
@.compoundliteral.892 = internal global [3 x %struct.PropValue] [%struct.PropValue { ptr @.str.509, ptr @.str.891 }, %struct.PropValue { ptr @.str.249, ptr @.str.712 }, %struct.PropValue zeroinitializer], align 8
@.str.893 = private unnamed_addr constant [27 x i8] c"AMD EPYC-Rome-v5 Processor\00", align 1
@.compoundliteral.894 = internal global [12 x %struct.PropValue] [%struct.PropValue { ptr @.str.175, ptr @.str.634 }, %struct.PropValue { ptr @.str.176, ptr @.str.634 }, %struct.PropValue { ptr @.str.231, ptr @.str.634 }, %struct.PropValue { ptr @.str.234, ptr @.str.634 }, %struct.PropValue { ptr @.str.235, ptr @.str.634 }, %struct.PropValue { ptr @.str.236, ptr @.str.634 }, %struct.PropValue { ptr @.str.238, ptr @.str.634 }, %struct.PropValue { ptr @.str.239, ptr @.str.634 }, %struct.PropValue { ptr @.str.241, ptr @.str.634 }, %struct.PropValue { ptr @.str.242, ptr @.str.634 }, %struct.PropValue { ptr @.str.509, ptr @.str.893 }, %struct.PropValue zeroinitializer], align 8
@epyc_rome_v5_cache_info = internal constant %struct.CPUCaches { ptr @.compoundliteral.962, ptr @.compoundliteral.963, ptr @.compoundliteral.964, ptr @.compoundliteral.965 }, align 8
@.compoundliteral.895 = internal global [6 x { i32, [4 x i8], ptr, ptr, ptr, ptr }] [{ i32, [4 x i8], ptr, ptr, ptr, ptr } { i32 1, [4 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr null }, { i32, [4 x i8], ptr, ptr, ptr, ptr } { i32 2, [4 x i8] zeroinitializer, ptr null, ptr null, ptr @.compoundliteral.888, ptr null }, { i32, [4 x i8], ptr, ptr, ptr, ptr } { i32 3, [4 x i8] zeroinitializer, ptr null, ptr null, ptr @.compoundliteral.890, ptr @epyc_rome_v3_cache_info }, { i32, [4 x i8], ptr, ptr, ptr, ptr } { i32 4, [4 x i8] zeroinitializer, ptr null, ptr null, ptr @.compoundliteral.892, ptr null }, { i32, [4 x i8], ptr, ptr, ptr, ptr } { i32 5, [4 x i8] zeroinitializer, ptr null, ptr null, ptr @.compoundliteral.894, ptr @epyc_rome_v5_cache_info }, { i32, [4 x i8], ptr, ptr, ptr, ptr } zeroinitializer], align 8
@.str.896 = private unnamed_addr constant [11 x i8] c"EPYC-Milan\00", align 1
@.str.897 = private unnamed_addr constant [25 x i8] c"AMD EPYC-Milan Processor\00", align 1
@epyc_milan_cache_info = internal constant %struct.CPUCaches { ptr @.compoundliteral.966, ptr @.compoundliteral.967, ptr @.compoundliteral.968, ptr @.compoundliteral.969 }, align 8
@.str.898 = private unnamed_addr constant [28 x i8] c"AMD EPYC-Milan-v2 Processor\00", align 1
@.compoundliteral.899 = internal global [9 x %struct.PropValue] [%struct.PropValue { ptr @.str.509, ptr @.str.898 }, %struct.PropValue { ptr @.str.96, ptr @.str.634 }, %struct.PropValue { ptr @.str.97, ptr @.str.634 }, %struct.PropValue { ptr @.str.184, ptr @.str.634 }, %struct.PropValue { ptr @.str.188, ptr @.str.634 }, %struct.PropValue { ptr @.str.189, ptr @.str.634 }, %struct.PropValue { ptr @.str.191, ptr @.str.634 }, %struct.PropValue { ptr @.str.193, ptr @.str.634 }, %struct.PropValue zeroinitializer], align 8
@epyc_milan_v2_cache_info = internal constant %struct.CPUCaches { ptr @.compoundliteral.970, ptr @.compoundliteral.971, ptr @.compoundliteral.972, ptr @.compoundliteral.973 }, align 8
@.str.900 = private unnamed_addr constant [28 x i8] c"AMD EPYC-Milan-v3 Processor\00", align 1
@.compoundliteral.901 = internal global [12 x %struct.PropValue] [%struct.PropValue { ptr @.str.175, ptr @.str.634 }, %struct.PropValue { ptr @.str.176, ptr @.str.634 }, %struct.PropValue { ptr @.str.231, ptr @.str.634 }, %struct.PropValue { ptr @.str.234, ptr @.str.634 }, %struct.PropValue { ptr @.str.235, ptr @.str.634 }, %struct.PropValue { ptr @.str.236, ptr @.str.634 }, %struct.PropValue { ptr @.str.238, ptr @.str.634 }, %struct.PropValue { ptr @.str.239, ptr @.str.634 }, %struct.PropValue { ptr @.str.241, ptr @.str.634 }, %struct.PropValue { ptr @.str.242, ptr @.str.634 }, %struct.PropValue { ptr @.str.509, ptr @.str.900 }, %struct.PropValue zeroinitializer], align 8
@epyc_milan_v3_cache_info = internal constant %struct.CPUCaches { ptr @.compoundliteral.974, ptr @.compoundliteral.975, ptr @.compoundliteral.976, ptr @.compoundliteral.977 }, align 8
@.str.902 = private unnamed_addr constant [28 x i8] c"AMD EPYC-Milan-v4 Processor\00", align 1
@.compoundliteral.903 = internal global [3 x %struct.PropValue] [%struct.PropValue { ptr @.str.243, ptr @.str.634 }, %struct.PropValue { ptr @.str.509, ptr @.str.902 }, %struct.PropValue zeroinitializer], align 8
@.compoundliteral.904 = internal global [5 x { i32, [4 x i8], ptr, ptr, ptr, ptr }] [{ i32, [4 x i8], ptr, ptr, ptr, ptr } { i32 1, [4 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr null }, { i32, [4 x i8], ptr, ptr, ptr, ptr } { i32 2, [4 x i8] zeroinitializer, ptr null, ptr null, ptr @.compoundliteral.899, ptr @epyc_milan_v2_cache_info }, { i32, [4 x i8], ptr, ptr, ptr, ptr } { i32 3, [4 x i8] zeroinitializer, ptr null, ptr null, ptr @.compoundliteral.901, ptr @epyc_milan_v3_cache_info }, { i32, [4 x i8], ptr, ptr, ptr, ptr } { i32 4, [4 x i8] zeroinitializer, ptr null, ptr null, ptr @.compoundliteral.903, ptr @epyc_milan_v3_cache_info }, { i32, [4 x i8], ptr, ptr, ptr, ptr } zeroinitializer], align 8
@.str.905 = private unnamed_addr constant [11 x i8] c"EPYC-Genoa\00", align 1
@.str.906 = private unnamed_addr constant [25 x i8] c"AMD EPYC-Genoa Processor\00", align 1
@epyc_genoa_cache_info = internal constant %struct.CPUCaches { ptr @.compoundliteral.978, ptr @.compoundliteral.979, ptr @.compoundliteral.980, ptr @.compoundliteral.981 }, align 8
@.str.907 = private unnamed_addr constant [28 x i8] c"AMD EPYC-Genoa-v2 Processor\00", align 1
@.compoundliteral.908 = internal global [14 x %struct.PropValue] [%struct.PropValue { ptr @.str.175, ptr @.str.634 }, %struct.PropValue { ptr @.str.176, ptr @.str.634 }, %struct.PropValue { ptr @.str.231, ptr @.str.634 }, %struct.PropValue { ptr @.str.234, ptr @.str.634 }, %struct.PropValue { ptr @.str.235, ptr @.str.634 }, %struct.PropValue { ptr @.str.236, ptr @.str.634 }, %struct.PropValue { ptr @.str.238, ptr @.str.634 }, %struct.PropValue { ptr @.str.239, ptr @.str.634 }, %struct.PropValue { ptr @.str.241, ptr @.str.634 }, %struct.PropValue { ptr @.str.242, ptr @.str.634 }, %struct.PropValue { ptr @.str.190, ptr @.str.634 }, %struct.PropValue { ptr @.str.203, ptr @.str.634 }, %struct.PropValue { ptr @.str.509, ptr @.str.907 }, %struct.PropValue zeroinitializer], align 8
@epyc_genoa_v2_cache_info = internal constant %struct.CPUCaches { ptr @.compoundliteral.982, ptr @.compoundliteral.983, ptr @.compoundliteral.984, ptr @.compoundliteral.985 }, align 8
@.str.909 = private unnamed_addr constant [28 x i8] c"AMD EPYC-Genoa-v3 Processor\00", align 1
@.compoundliteral.910 = internal global [3 x %struct.PropValue] [%struct.PropValue { ptr @.str.243, ptr @.str.634 }, %struct.PropValue { ptr @.str.509, ptr @.str.909 }, %struct.PropValue zeroinitializer], align 8
@.compoundliteral.911 = internal global [4 x { i32, [4 x i8], ptr, ptr, ptr, ptr }] [{ i32, [4 x i8], ptr, ptr, ptr, ptr } { i32 1, [4 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr null }, { i32, [4 x i8], ptr, ptr, ptr, ptr } { i32 2, [4 x i8] zeroinitializer, ptr null, ptr null, ptr @.compoundliteral.908, ptr @epyc_genoa_v2_cache_info }, { i32, [4 x i8], ptr, ptr, ptr, ptr } { i32 3, [4 x i8] zeroinitializer, ptr null, ptr null, ptr @.compoundliteral.910, ptr @epyc_genoa_v2_cache_info }, { i32, [4 x i8], ptr, ptr, ptr, ptr } zeroinitializer], align 8
@.str.912 = private unnamed_addr constant [9 x i8] c"YongFeng\00", align 1
@.str.913 = private unnamed_addr constant [27 x i8] c"Zhaoxin YongFeng Processor\00", align 1
@.str.914 = private unnamed_addr constant [30 x i8] c"with the correct model number\00", align 1
@.str.915 = private unnamed_addr constant [5 x i8] c"0x5b\00", align 1
@.compoundliteral.916 = internal global [2 x %struct.PropValue] [%struct.PropValue { ptr @.str.507, ptr @.str.915 }, %struct.PropValue zeroinitializer], align 8
@.str.917 = private unnamed_addr constant [35 x i8] c"with the cache model and 0x1f leaf\00", align 1
@.compoundliteral.918 = internal global [2 x %struct.PropValue] [%struct.PropValue { ptr @.str.511, ptr @.str.634 }, %struct.PropValue zeroinitializer], align 8
@yongfeng_cache_info = internal constant %struct.CPUCaches { ptr @.compoundliteral.986, ptr @.compoundliteral.987, ptr @.compoundliteral.988, ptr @.compoundliteral.989 }, align 8
@.compoundliteral.919 = internal global [4 x { i32, [4 x i8], ptr, ptr, ptr, ptr }] [{ i32, [4 x i8], ptr, ptr, ptr, ptr } { i32 1, [4 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr null }, { i32, [4 x i8], ptr, ptr, ptr, ptr } { i32 2, [4 x i8] zeroinitializer, ptr null, ptr @.str.914, ptr @.compoundliteral.916, ptr null }, { i32, [4 x i8], ptr, ptr, ptr, ptr } { i32 3, [4 x i8] zeroinitializer, ptr null, ptr @.str.917, ptr @.compoundliteral.918, ptr @yongfeng_cache_info }, { i32, [4 x i8], ptr, ptr, ptr, ptr } zeroinitializer], align 8
@.str.920 = private unnamed_addr constant [11 x i8] c"EPYC-Turin\00", align 1
@.str.921 = private unnamed_addr constant [25 x i8] c"AMD EPYC-Turin Processor\00", align 1
@epyc_turin_cache_info = internal constant %struct.CPUCaches { ptr @.compoundliteral.990, ptr @.compoundliteral.991, ptr @.compoundliteral.992, ptr @.compoundliteral.993 }, align 8
@.str.922 = private unnamed_addr constant [28 x i8] c"AMD EPYC-Turin-v2 Processor\00", align 1
@.compoundliteral.923 = internal global [3 x %struct.PropValue] [%struct.PropValue { ptr @.str.243, ptr @.str.634 }, %struct.PropValue { ptr @.str.509, ptr @.str.922 }, %struct.PropValue zeroinitializer], align 8
@.compoundliteral.924 = internal global [3 x { i32, [4 x i8], ptr, ptr, ptr, ptr }] [{ i32, [4 x i8], ptr, ptr, ptr, ptr } { i32 1, [4 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr null }, { i32, [4 x i8], ptr, ptr, ptr, ptr } { i32 2, [4 x i8] zeroinitializer, ptr null, ptr null, ptr @.compoundliteral.923, ptr @epyc_turin_cache_info }, { i32, [4 x i8], ptr, ptr, ptr, ptr } zeroinitializer], align 8
@builtin_x86_defs = internal constant <{ { ptr, i32, i32, [13 x i8], [3 x i8], i32, i32, i32, i8, i8, [2 x i8], <{ [8 x i64], [40 x i64] }>, ptr, ptr, ptr, ptr }, { ptr, i32, i32, [13 x i8], [3 x i8], i32, i32, i32, i8, i8, [2 x i8], <{ [19 x i64], [29 x i64] }>, ptr, ptr, ptr, ptr }, { ptr, i32, i32, [13 x i8], [3 x i8], i32, i32, i32, i8, i8, [2 x i8], <{ [34 x i64], [14 x i64] }>, ptr, ptr, ptr, ptr }, { ptr, i32, i32, [13 x i8], [3 x i8], i32, i32, i32, i8, i8, [2 x i8], <{ [32 x i64], [16 x i64] }>, ptr, ptr, ptr, ptr }, { ptr, i32, i32, [13 x i8], [3 x i8], i32, i32, i32, i8, i8, [2 x i8], <{ i64, i64, [46 x i64] }>, ptr, ptr, ptr, ptr }, { ptr, i32, i32, [13 x i8], [3 x i8], i32, i32, i32, i8, i8, [2 x i8], <{ [32 x i64], [16 x i64] }>, ptr, ptr, ptr, ptr }, { ptr, i32, i32, [13 x i8], [3 x i8], i32, i32, i32, i8, i8, [2 x i8], <{ [32 x i64], [16 x i64] }>, ptr, ptr, ptr, ptr }, { ptr, i32, i32, [13 x i8], [3 x i8], i32, i32, i32, i8, i8, [2 x i8], <{ i64, [47 x i64] }>, ptr, ptr, ptr, ptr }, { ptr, i32, i32, [13 x i8], [3 x i8], i32, i32, i32, i8, i8, [2 x i8], <{ i64, [47 x i64] }>, ptr, ptr, ptr, ptr }, { ptr, i32, i32, [13 x i8], [3 x i8], i32, i32, i32, i8, i8, [2 x i8], <{ i64, [47 x i64] }>, ptr, ptr, ptr, ptr }, { ptr, i32, i32, [13 x i8], [3 x i8], i32, i32, i32, i8, i8, [2 x i8], <{ i64, [47 x i64] }>, ptr, ptr, ptr, ptr }, { ptr, i32, i32, [13 x i8], [3 x i8], i32, i32, i32, i8, i8, [2 x i8], <{ i64, i64, i64, i64, i64, i64, i64, [41 x i64] }>, ptr, ptr, ptr, ptr }, { ptr, i32, i32, [13 x i8], [3 x i8], i32, i32, i32, i8, i8, [2 x i8], <{ [8 x i64], [40 x i64] }>, ptr, ptr, ptr, ptr }, { ptr, i32, i32, [13 x i8], [3 x i8], i32, i32, i32, i8, i8, [2 x i8], <{ [34 x i64], [14 x i64] }>, ptr, ptr, ptr, ptr }, { ptr, i32, i32, [13 x i8], [3 x i8], i32, i32, i32, i8, i8, [2 x i8], <{ [34 x i64], [14 x i64] }>, ptr, ptr, ptr, ptr }, { ptr, i32, i32, [13 x i8], [3 x i8], i32, i32, i32, i8, i8, [2 x i8], <{ [34 x i64], [14 x i64] }>, ptr, ptr, ptr, ptr }, { ptr, i32, i32, [13 x i8], [3 x i8], i32, i32, i32, i8, i8, [2 x i8], <{ [34 x i64], [14 x i64] }>, ptr, ptr, ptr, ptr }, { ptr, i32, i32, [13 x i8], [3 x i8], i32, i32, i32, i8, i8, [2 x i8], <{ [34 x i64], [14 x i64] }>, ptr, ptr, ptr, ptr }, { ptr, i32, i32, [13 x i8], [3 x i8], i32, i32, i32, i8, i8, [2 x i8], <{ [34 x i64], [14 x i64] }>, ptr, ptr, ptr, ptr }, { ptr, i32, i32, [13 x i8], [3 x i8], i32, i32, i32, i8, i8, [2 x i8], <{ [35 x i64], [13 x i64] }>, ptr, ptr, ptr, ptr }, { ptr, i32, i32, [13 x i8], [3 x i8], i32, i32, i32, i8, i8, [2 x i8], <{ [35 x i64], [13 x i64] }>, ptr, ptr, ptr, ptr }, { ptr, i32, i32, [13 x i8], [3 x i8], i32, i32, i32, i8, i8, [2 x i8], <{ [35 x i64], [13 x i64] }>, ptr, ptr, ptr, ptr }, { ptr, i32, i32, [13 x i8], [3 x i8], i32, i32, i32, i8, i8, [2 x i8], <{ [34 x i64], [14 x i64] }>, ptr, ptr, ptr, ptr }, { ptr, i32, i32, [13 x i8], [3 x i8], i32, i32, i32, i8, i8, [2 x i8], <{ [34 x i64], [14 x i64] }>, ptr, ptr, ptr, ptr }, { ptr, i32, i32, [13 x i8], [3 x i8], i32, i32, i32, i8, i8, [2 x i8], <{ [35 x i64], [13 x i64] }>, ptr, ptr, ptr, ptr }, { ptr, i32, i32, [13 x i8], [3 x i8], i32, i32, i32, i8, i8, [2 x i8], <{ [34 x i64], [14 x i64] }>, ptr, ptr, ptr, ptr }, { ptr, i32, i32, [13 x i8], [3 x i8], i32, i32, i32, i8, i8, [2 x i8], <{ [35 x i64], [13 x i64] }>, ptr, ptr, ptr, ptr }, { ptr, i32, i32, [13 x i8], [3 x i8], i32, i32, i32, i8, i8, [2 x i8], [48 x i64], ptr, ptr, ptr, ptr }, { ptr, i32, i32, [13 x i8], [3 x i8], i32, i32, i32, i8, i8, [2 x i8], [48 x i64], ptr, ptr, ptr, ptr }, { ptr, i32, i32, [13 x i8], [3 x i8], i32, i32, i32, i8, i8, [2 x i8], [48 x i64], ptr, ptr, ptr, ptr }, { ptr, i32, i32, [13 x i8], [3 x i8], i32, i32, i32, i8, i8, [2 x i8], [48 x i64], ptr, ptr, ptr, ptr }, { ptr, i32, i32, [13 x i8], [3 x i8], i32, i32, i32, i8, i8, [2 x i8], <{ [35 x i64], [13 x i64] }>, ptr, ptr, ptr, ptr }, { ptr, i32, i32, [13 x i8], [3 x i8], i32, i32, i32, i8, i8, [2 x i8], <{ [35 x i64], [13 x i64] }>, ptr, ptr, ptr, ptr }, { ptr, i32, i32, [13 x i8], [3 x i8], i32, i32, i32, i8, i8, [2 x i8], <{ [21 x i64], [27 x i64] }>, ptr, ptr, ptr, ptr }, { ptr, i32, i32, [13 x i8], [3 x i8], i32, i32, i32, i8, i8, [2 x i8], <{ i64, i64, i64, i64, i64, i64, i64, [41 x i64] }>, ptr, ptr, ptr, ptr }, { ptr, i32, i32, [13 x i8], [3 x i8], i32, i32, i32, i8, i8, [2 x i8], <{ [8 x i64], [40 x i64] }>, ptr, ptr, ptr, ptr }, { ptr, i32, i32, [13 x i8], [3 x i8], i32, i32, i32, i8, i8, [2 x i8], <{ [8 x i64], [40 x i64] }>, ptr, ptr, ptr, ptr }, { ptr, i32, i32, [13 x i8], [3 x i8], i32, i32, i32, i8, i8, [2 x i8], <{ [19 x i64], [29 x i64] }>, ptr, ptr, ptr, ptr }, { ptr, i32, i32, [13 x i8], [3 x i8], i32, i32, i32, i8, i8, [2 x i8], <{ [19 x i64], [29 x i64] }>, ptr, ptr, ptr, ptr }, { ptr, i32, i32, [13 x i8], [3 x i8], i32, i32, i32, i8, i8, [2 x i8], <{ [21 x i64], [27 x i64] }>, ptr, ptr, ptr, ptr }, { ptr, i32, i32, [13 x i8], [3 x i8], i32, i32, i32, i8, i8, [2 x i8], <{ [21 x i64], [27 x i64] }>, ptr, ptr, ptr, ptr }, { ptr, i32, i32, [13 x i8], [3 x i8], i32, i32, i32, i8, i8, [2 x i8], <{ [21 x i64], [27 x i64] }>, ptr, ptr, ptr, ptr }, { ptr, i32, i32, [13 x i8], [3 x i8], i32, i32, i32, i8, i8, [2 x i8], <{ [21 x i64], [27 x i64] }>, ptr, ptr, ptr, ptr }, { ptr, i32, i32, [13 x i8], [3 x i8], i32, i32, i32, i8, i8, [2 x i8], <{ [21 x i64], [27 x i64] }>, ptr, ptr, ptr, ptr }, { ptr, i32, i32, [13 x i8], [3 x i8], i32, i32, i32, i8, i8, [2 x i8], <{ [35 x i64], [13 x i64] }>, ptr, ptr, ptr, ptr }, { ptr, i32, i32, [13 x i8], [3 x i8], i32, i32, i32, i8, i8, [2 x i8], <{ [21 x i64], [27 x i64] }>, ptr, ptr, ptr, ptr } }> <{ { ptr, i32, i32, [13 x i8], [3 x i8], i32, i32, i32, i8, i8, [2 x i8], <{ [8 x i64], [40 x i64] }>, ptr, ptr, ptr, ptr } { ptr @.str.661, i32 13, i32 -2147483638, [13 x i8] c"AuthenticAMD\00", [3 x i8] zeroinitializer, i32 15, i32 107, i32 1, i8 0, i8 0, [2 x i8] zeroinitializer, <{ [8 x i64], [40 x i64] }> <{ [8 x i64] [i64 126614525, i64 8193, i64 0, i64 0, i64 0, i64 0, i64 537921536, i64 5], [40 x i64] zeroinitializer }>, ptr @.str.662, ptr null, ptr null, ptr null }, { ptr, i32, i32, [13 x i8], [3 x i8], i32, i32, i32, i8, i8, [2 x i8], <{ [19 x i64], [29 x i64] }>, ptr, ptr, ptr, ptr } { ptr @.str.663, i32 5, i32 -2147483622, [13 x i8] c"AuthenticAMD\00", [3 x i8] zeroinitializer, i32 16, i32 2, i32 3, i8 0, i8 0, [2 x i8] zeroinitializer, <{ [19 x i64], [29 x i64] }> <{ [19 x i64] [i64 126614527, i64 8396809, i64 0, i64 0, i64 0, i64 0, i64 3998222336, i64 101, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 1], [29 x i64] zeroinitializer }>, ptr @.str.664, ptr null, ptr null, ptr null }, { ptr, i32, i32, [13 x i8], [3 x i8], i32, i32, i32, i8, i8, [2 x i8], <{ [34 x i64], [14 x i64] }>, ptr, ptr, ptr, ptr } { ptr @.str.665, i32 10, i32 -2147483640, [13 x i8] c"GenuineIntel\00", [3 x i8] zeroinitializer, i32 6, i32 15, i32 11, i8 0, i8 0, [2 x i8] zeroinitializer, <{ [34 x i64], [14 x i64] }> <{ [34 x i64] [i64 265026559, i64 8713, i64 0, i64 0, i64 0, i64 0, i64 537921536, i64 1, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 4093124236, i64 1, i64 41, i64 32768, i64 512, i64 64, i64 0, i64 18014398509481984], [14 x i64] zeroinitializer }>, ptr @.str.666, ptr null, ptr null, ptr null }, { ptr, i32, i32, [13 x i8], [3 x i8], i32, i32, i32, i8, i8, [2 x i8], <{ [32 x i64], [16 x i64] }>, ptr, ptr, ptr, ptr } { ptr @.str.667, i32 13, i32 -2147483640, [13 x i8] c"GenuineIntel\00", [3 x i8] zeroinitializer, i32 15, i32 6, i32 1, i8 0, i8 0, [2 x i8] zeroinitializer, <{ [32 x i64], [16 x i64] }> <{ [32 x i64] [i64 126614527, i64 8193, i64 0, i64 0, i64 0, i64 0, i64 537921536, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 1673010828, i64 0, i64 9, i64 32768, i64 512, i64 64], [16 x i64] zeroinitializer }>, ptr @.str.668, ptr null, ptr null, ptr null }, { ptr, i32, i32, [13 x i8], [3 x i8], i32, i32, i32, i8, i8, [2 x i8], <{ i64, i64, [46 x i64] }>, ptr, ptr, ptr, ptr } { ptr @.str.669, i32 4, i32 -2147483644, [13 x i8] c"GenuineIntel\00", [3 x i8] zeroinitializer, i32 6, i32 6, i32 3, i8 0, i8 0, [2 x i8] zeroinitializer, <{ i64, i64, [46 x i64] }> <{ i64 125938685, i64 1, [46 x i64] zeroinitializer }>, ptr @.str.662, ptr null, ptr null, ptr null }, { ptr, i32, i32, [13 x i8], [3 x i8], i32, i32, i32, i8, i8, [2 x i8], <{ [32 x i64], [16 x i64] }>, ptr, ptr, ptr, ptr } { ptr @.str.670, i32 5, i32 -2147483640, [13 x i8] c"GenuineIntel\00", [3 x i8] zeroinitializer, i32 15, i32 6, i32 1, i8 0, i8 0, [2 x i8] zeroinitializer, <{ [32 x i64], [16 x i64] }> <{ [32 x i64] [i64 126614527, i64 1, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 1937776268, i64 0, i64 9, i64 32768, i64 512, i64 64], [16 x i64] zeroinitializer }>, ptr @.str.671, ptr null, ptr null, ptr null }, { ptr, i32, i32, [13 x i8], [3 x i8], i32, i32, i32, i8, i8, [2 x i8], <{ [32 x i64], [16 x i64] }>, ptr, ptr, ptr, ptr } { ptr @.str.672, i32 10, i32 -2147483640, [13 x i8] c"GenuineIntel\00", [3 x i8] zeroinitializer, i32 6, i32 14, i32 8, i8 0, i8 0, [2 x i8] zeroinitializer, <{ [32 x i64], [16 x i64] }> <{ [32 x i64] [i64 264895487, i64 9, i64 0, i64 0, i64 0, i64 0, i64 1048576, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 1937776268, i64 0, i64 9, i64 32768, i64 512, i64 64], [16 x i64] zeroinitializer }>, ptr @.str.673, ptr null, ptr null, ptr null }, { ptr, i32, i32, [13 x i8], [3 x i8], i32, i32, i32, i8, i8, [2 x i8], <{ i64, [47 x i64] }>, ptr, ptr, ptr, ptr } { ptr @.str.674, i32 1, i32 0, [13 x i8] c"GenuineIntel\00", [3 x i8] zeroinitializer, i32 4, i32 8, i32 0, i8 0, i8 0, [2 x i8] zeroinitializer, <{ i64, [47 x i64] }> <{ i64 11, [47 x i64] zeroinitializer }>, ptr @.str.411, ptr @legacy_intel_cpuid2_cache_info, ptr null, ptr null }, { ptr, i32, i32, [13 x i8], [3 x i8], i32, i32, i32, i8, i8, [2 x i8], <{ i64, [47 x i64] }>, ptr, ptr, ptr, ptr } { ptr @.str.675, i32 1, i32 0, [13 x i8] c"GenuineIntel\00", [3 x i8] zeroinitializer, i32 5, i32 4, i32 3, i8 0, i8 0, [2 x i8] zeroinitializer, <{ i64, [47 x i64] }> <{ i64 8389567, [47 x i64] zeroinitializer }>, ptr @.str.411, ptr @legacy_intel_cpuid2_cache_info, ptr null, ptr null }, { ptr, i32, i32, [13 x i8], [3 x i8], i32, i32, i32, i8, i8, [2 x i8], <{ i64, [47 x i64] }>, ptr, ptr, ptr, ptr } { ptr @.str.676, i32 2, i32 0, [13 x i8] c"GenuineIntel\00", [3 x i8] zeroinitializer, i32 6, i32 5, i32 2, i8 0, i8 0, [2 x i8] zeroinitializer, <{ i64, [47 x i64] }> <{ i64 25426943, [47 x i64] zeroinitializer }>, ptr @.str.411, ptr @legacy_intel_cpuid2_cache_info, ptr null, ptr null }, { ptr, i32, i32, [13 x i8], [3 x i8], i32, i32, i32, i8, i8, [2 x i8], <{ i64, [47 x i64] }>, ptr, ptr, ptr, ptr } { ptr @.str.677, i32 3, i32 0, [13 x i8] c"GenuineIntel\00", [3 x i8] zeroinitializer, i32 6, i32 7, i32 3, i8 0, i8 0, [2 x i8] zeroinitializer, <{ i64, [47 x i64] }> <{ i64 58981375, [47 x i64] zeroinitializer }>, ptr @.str.411, ptr @legacy_intel_cpuid2_cache_info, ptr null, ptr null }, { ptr, i32, i32, [13 x i8], [3 x i8], i32, i32, i32, i8, i8, [2 x i8], <{ i64, i64, i64, i64, i64, i64, i64, [41 x i64] }>, ptr, ptr, ptr, ptr } { ptr @.str.678, i32 2, i32 -2147483640, [13 x i8] c"AuthenticAMD\00", [3 x i8] zeroinitializer, i32 6, i32 2, i32 3, i8 0, i8 0, [2 x i8] zeroinitializer, <{ i64, i64, i64, i64, i64, i64, i64, [41 x i64] }> <{ i64 126090239, i64 0, i64 0, i64 0, i64 0, i64 0, i64 3225419776, [41 x i64] zeroinitializer }>, ptr @.str.662, ptr null, ptr null, ptr null }, { ptr, i32, i32, [13 x i8], [3 x i8], i32, i32, i32, i8, i8, [2 x i8], <{ [8 x i64], [40 x i64] }>, ptr, ptr, ptr, ptr } { ptr @.str.679, i32 10, i32 -2147483640, [13 x i8] c"GenuineIntel\00", [3 x i8] zeroinitializer, i32 6, i32 28, i32 2, i8 0, i8 0, [2 x i8] zeroinitializer, <{ [8 x i64], [40 x i64] }> <{ [8 x i64] [i64 264895487, i64 4194825, i64 0, i64 0, i64 0, i64 0, i64 1048576, i64 1], [40 x i64] zeroinitializer }>, ptr @.str.680, ptr null, ptr null, ptr null }, { ptr, i32, i32, [13 x i8], [3 x i8], i32, i32, i32, i8, i8, [2 x i8], <{ [34 x i64], [14 x i64] }>, ptr, ptr, ptr, ptr } { ptr @.str.681, i32 10, i32 -2147483640, [13 x i8] c"GenuineIntel\00", [3 x i8] zeroinitializer, i32 6, i32 15, i32 3, i8 0, i8 0, [2 x i8] zeroinitializer, <{ [34 x i64], [14 x i64] }> <{ [34 x i64] [i64 126614527, i64 513, i64 0, i64 0, i64 0, i64 0, i64 537921536, i64 1, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 4093124236, i64 1, i64 41, i64 32768, i64 512, i64 64, i64 0, i64 18014398509481984], [14 x i64] zeroinitializer }>, ptr @.str.682, ptr null, ptr null, ptr null }, { ptr, i32, i32, [13 x i8], [3 x i8], i32, i32, i32, i8, i8, [2 x i8], <{ [34 x i64], [14 x i64] }>, ptr, ptr, ptr, ptr } { ptr @.str.683, i32 10, i32 -2147483640, [13 x i8] c"GenuineIntel\00", [3 x i8] zeroinitializer, i32 6, i32 23, i32 3, i8 0, i8 0, [2 x i8] zeroinitializer, <{ [34 x i64], [14 x i64] }> <{ [34 x i64] [i64 126614527, i64 532993, i64 0, i64 0, i64 0, i64 0, i64 537921536, i64 1, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 4093124236, i64 65, i64 41, i64 36864, i64 8704, i64 64, i64 0, i64 18014398509481984], [14 x i64] zeroinitializer }>, ptr @.str.684, ptr null, ptr null, ptr null }, { ptr, i32, i32, [13 x i8], [3 x i8], i32, i32, i32, i8, i8, [2 x i8], <{ [34 x i64], [14 x i64] }>, ptr, ptr, ptr, ptr } { ptr @.str.685, i32 11, i32 -2147483640, [13 x i8] c"GenuineIntel\00", [3 x i8] zeroinitializer, i32 6, i32 26, i32 3, i8 0, i8 0, [2 x i8] zeroinitializer, <{ [34 x i64], [14 x i64] }> <{ [34 x i64] [i64 126614527, i64 9970177, i64 0, i64 0, i64 0, i64 0, i64 537921536, i64 1, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 4227440268, i64 127, i64 105, i64 8163332, i64 57860, i64 64, i64 16497071308865, i64 54043195528445952], [14 x i64] zeroinitializer }>, ptr @.str.686, ptr null, ptr @.compoundliteral.690, ptr null }, { ptr, i32, i32, [13 x i8], [3 x i8], i32, i32, i32, i8, i8, [2 x i8], <{ [34 x i64], [14 x i64] }>, ptr, ptr, ptr, ptr } { ptr @.str.691, i32 11, i32 -2147483640, [13 x i8] c"GenuineIntel\00", [3 x i8] zeroinitializer, i32 6, i32 44, i32 1, i8 0, i8 0, [2 x i8] zeroinitializer, <{ [34 x i64], [14 x i64] }> <{ [34 x i64] [i64 126614527, i64 43524611, i64 0, i64 0, i64 0, i64 0, i64 537921536, i64 1, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 4, i64 0, i64 0, i64 0, i64 0, i64 0, i64 4227440268, i64 255, i64 105, i64 8163332, i64 57860, i64 96, i64 16497071308865, i64 54043195528445952], [14 x i64] zeroinitializer }>, ptr @.str.692, ptr null, ptr @.compoundliteral.696, ptr null }, { ptr, i32, i32, [13 x i8], [3 x i8], i32, i32, i32, i8, i8, [2 x i8], <{ [34 x i64], [14 x i64] }>, ptr, ptr, ptr, ptr } { ptr @.str.697, i32 13, i32 -2147483640, [13 x i8] c"GenuineIntel\00", [3 x i8] zeroinitializer, i32 6, i32 42, i32 1, i8 0, i8 0, [2 x i8] zeroinitializer, <{ [34 x i64], [14 x i64] }> <{ [34 x i64] [i64 126614527, i64 397943299, i64 0, i64 0, i64 0, i64 0, i64 672139264, i64 1, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 1, i64 4, i64 0, i64 0, i64 0, i64 0, i64 0, i64 4227440268, i64 255, i64 105, i64 8163332, i64 57860, i64 96, i64 16497071308865, i64 54043195528445952], [14 x i64] zeroinitializer }>, ptr @.str.698, ptr null, ptr @.compoundliteral.702, ptr null }, { ptr, i32, i32, [13 x i8], [3 x i8], i32, i32, i32, i8, i8, [2 x i8], <{ [34 x i64], [14 x i64] }>, ptr, ptr, ptr, ptr } { ptr @.str.703, i32 13, i32 -2147483640, [13 x i8] c"GenuineIntel\00", [3 x i8] zeroinitializer, i32 6, i32 58, i32 9, i8 0, i8 0, [2 x i8] zeroinitializer, <{ [34 x i64], [14 x i64] }> <{ [34 x i64] [i64 126614527, i64 2008556035, i64 641, i64 0, i64 0, i64 0, i64 672139264, i64 1, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 1, i64 4, i64 0, i64 0, i64 0, i64 0, i64 0, i64 4227440268, i64 3071, i64 233, i64 8163332, i64 57860, i64 96, i64 16497071308865, i64 54043195528445952], [14 x i64] zeroinitializer }>, ptr @.str.704, ptr null, ptr @.compoundliteral.708, ptr null }, { ptr, i32, i32, [13 x i8], [3 x i8], i32, i32, i32, i8, i8, [2 x i8], <{ [35 x i64], [13 x i64] }>, ptr, ptr, ptr, ptr } { ptr @.str.709, i32 13, i32 -2147483640, [13 x i8] c"GenuineIntel\00", [3 x i8] zeroinitializer, i32 6, i32 60, i32 4, i8 0, i8 0, [2 x i8] zeroinitializer, <{ [35 x i64], [13 x i64] }> <{ [35 x i64] [i64 126614527, i64 2012885507, i64 4025, i64 0, i64 0, i64 0, i64 672139264, i64 33, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 1, i64 4, i64 0, i64 0, i64 0, i64 0, i64 0, i64 4227440268, i64 31743, i64 233, i64 8163332, i64 57860, i64 536871008, i64 16497073406017, i64 54043195528445952, i64 1], [13 x i64] zeroinitializer }>, ptr @.str.710, ptr null, ptr @.compoundliteral.723, ptr null }, { ptr, i32, i32, [13 x i8], [3 x i8], i32, i32, i32, i8, i8, [2 x i8], <{ [35 x i64], [13 x i64] }>, ptr, ptr, ptr, ptr } { ptr @.str.724, i32 13, i32 -2147483640, [13 x i8] c"GenuineIntel\00", [3 x i8] zeroinitializer, i32 6, i32 61, i32 2, i8 0, i8 0, [2 x i8] zeroinitializer, <{ [35 x i64], [13 x i64] }> <{ [35 x i64] [i64 126614527, i64 2012885507, i64 1839033, i64 0, i64 0, i64 0, i64 672139264, i64 289, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 1, i64 4, i64 0, i64 0, i64 0, i64 0, i64 0, i64 4227440268, i64 228351, i64 233, i64 8163332, i64 57860, i64 536871008, i64 16497073406017, i64 54043195528445952, i64 1], [13 x i64] zeroinitializer }>, ptr @.str.725, ptr null, ptr @.compoundliteral.735, ptr null }, { ptr, i32, i32, [13 x i8], [3 x i8], i32, i32, i32, i8, i8, [2 x i8], <{ [35 x i64], [13 x i64] }>, ptr, ptr, ptr, ptr } { ptr @.str.736, i32 13, i32 -2147483640, [13 x i8] c"GenuineIntel\00", [3 x i8] zeroinitializer, i32 6, i32 94, i32 3, i8 0, i8 0, [2 x i8] zeroinitializer, <{ [35 x i64], [13 x i64] }> <{ [35 x i64] [i64 126614527, i64 2012885507, i64 1839033, i64 0, i64 0, i64 0, i64 672139264, i64 289, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 7, i64 4, i64 0, i64 0, i64 0, i64 0, i64 0, i64 4227440268, i64 227567, i64 105, i64 8163332, i64 57860, i64 536871008, i64 16497073406017, i64 54043195528445952, i64 1], [13 x i64] zeroinitializer }>, ptr @.str.737, ptr null, ptr @.compoundliteral.746, ptr null }, { ptr, i32, i32, [13 x i8], [3 x i8], i32, i32, i32, i8, i8, [2 x i8], <{ [34 x i64], [14 x i64] }>, ptr, ptr, ptr, ptr } { ptr @.str.747, i32 13, i32 -2147483640, [13 x i8] c"GenuineIntel\00", [3 x i8] zeroinitializer, i32 6, i32 85, i32 4, i8 0, i8 0, [2 x i8] zeroinitializer, <{ [34 x i64], [14 x i64] }> <{ [34 x i64] [i64 126614527, i64 2012885507, i64 3516862393, i64 8, i64 0, i64 0, i64 739248128, i64 289, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 7, i64 4, i64 0, i64 0, i64 0, i64 0, i64 0, i64 4227440268, i64 228351, i64 233, i64 8163332, i64 57860, i64 536871008, i64 16497073406017, i64 54043195528445952], [14 x i64] zeroinitializer }>, ptr @.str.748, ptr null, ptr @.compoundliteral.761, ptr null }, { ptr, i32, i32, [13 x i8], [3 x i8], i32, i32, i32, i8, i8, [2 x i8], <{ [34 x i64], [14 x i64] }>, ptr, ptr, ptr, ptr } { ptr @.str.762, i32 13, i32 -2147483640, [13 x i8] c"GenuineIntel\00", [3 x i8] zeroinitializer, i32 6, i32 85, i32 6, i8 0, i8 0, [2 x i8] zeroinitializer, <{ [34 x i64], [14 x i64] }> <{ [34 x i64] [i64 126614527, i64 2012885507, i64 3516862393, i64 2056, i64 2214592512, i64 0, i64 739248128, i64 289, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 7, i64 4, i64 0, i64 0, i64 0, i64 0, i64 0, i64 4227440268, i64 228351, i64 233, i64 8163332, i64 57860, i64 536871008, i64 16497073406017, i64 54043195528445952], [14 x i64] zeroinitializer }>, ptr @.str.763, ptr null, ptr @.compoundliteral.776, ptr null }, { ptr, i32, i32, [13 x i8], [3 x i8], i32, i32, i32, i8, i8, [2 x i8], <{ [35 x i64], [13 x i64] }>, ptr, ptr, ptr, ptr } { ptr @.str.777, i32 13, i32 -2147483640, [13 x i8] c"GenuineIntel\00", [3 x i8] zeroinitializer, i32 6, i32 85, i32 10, i8 0, i8 0, [2 x i8] zeroinitializer, <{ [35 x i64], [13 x i64] }> <{ [35 x i64] [i64 126614527, i64 2012885507, i64 3516862393, i64 2056, i64 2885681152, i64 32, i64 739248128, i64 289, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 7, i64 4, i64 0, i64 0, i64 363, i64 0, i64 0, i64 4227440268, i64 228351, i64 233, i64 8163332, i64 57860, i64 536871008, i64 16497073406017, i64 54043195528445952, i64 1], [13 x i64] zeroinitializer }>, ptr @.str.778, ptr null, ptr @.compoundliteral.781, ptr null }, { ptr, i32, i32, [13 x i8], [3 x i8], i32, i32, i32, i8, i8, [2 x i8], <{ [34 x i64], [14 x i64] }>, ptr, ptr, ptr, ptr } { ptr @.str.782, i32 13, i32 -2147483640, [13 x i8] c"GenuineIntel\00", [3 x i8] zeroinitializer, i32 6, i32 134, i32 0, i8 0, i8 0, [2 x i8] zeroinitializer, <{ [34 x i64], [14 x i64] }> <{ [34 x i64] [i64 126614527, i64 2012885507, i64 3516862393, i64 89934, i64 2214592512, i64 0, i64 739248128, i64 289, i64 0, i64 0, i64 512, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 7, i64 4, i64 0, i64 0, i64 0, i64 0, i64 0, i64 4227440268, i64 31743, i64 233, i64 8163332, i64 57860, i64 536871008, i64 16497073406017, i64 54043195528445952], [14 x i64] zeroinitializer }>, ptr @.str.783, ptr null, ptr @.compoundliteral.797, ptr null }, { ptr, i32, i32, [13 x i8], [3 x i8], i32, i32, i32, i8, i8, [2 x i8], <{ [35 x i64], [13 x i64] }>, ptr, ptr, ptr, ptr } { ptr @.str.798, i32 32, i32 -2147483640, [13 x i8] c"GenuineIntel\00", [3 x i8] zeroinitializer, i32 6, i32 143, i32 4, i8 0, i8 0, [2 x i8] zeroinitializer, <{ [35 x i64], [13 x i64] }> <{ [35 x i64] [i64 126614527, i64 2012885507, i64 4055830457, i64 21061454, i64 2814459920, i64 7216, i64 739248128, i64 289, i64 0, i64 0, i64 512, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 31, i64 4, i64 0, i64 0, i64 363, i64 0, i64 0, i64 4227440268, i64 1276927, i64 233, i64 8163332, i64 57860, i64 536871008, i64 16497073406145, i64 54043195528445952, i64 1], [13 x i64] zeroinitializer }>, ptr @.str.799, ptr null, ptr @.compoundliteral.811, ptr null }, { ptr, i32, i32, [13 x i8], [3 x i8], i32, i32, i32, i8, i8, [2 x i8], [48 x i64], ptr, ptr, ptr, ptr } { ptr @.str.812, i32 32, i32 -2147483640, [13 x i8] c"GenuineIntel\00", [3 x i8] zeroinitializer, i32 6, i32 173, i32 0, i8 0, i8 0, [2 x i8] zeroinitializer, [48 x i64] [i64 126614527, i64 2012885507, i64 4055830457, i64 21061454, i64 2814459920, i64 2104368, i64 739248128, i64 289, i64 0, i64 0, i64 512, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 31, i64 4, i64 0, i64 0, i64 16834923, i64 0, i64 0, i64 4227440268, i64 1276927, i64 233, i64 8163332, i64 57860, i64 536871008, i64 16497073406145, i64 54043195528445952, i64 1, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 16384, i64 32, i64 0, i64 0, i64 0, i64 0], ptr @.str.813, ptr null, ptr @.compoundliteral.821, ptr null }, { ptr, i32, i32, [13 x i8], [3 x i8], i32, i32, i32, i8, i8, [2 x i8], [48 x i64], ptr, ptr, ptr, ptr } { ptr @.str.822, i32 41, i32 -2147483640, [13 x i8] c"GenuineIntel\00", [3 x i8] zeroinitializer, i32 19, i32 1, i32 0, i8 2, i8 1, [2 x i8] zeroinitializer, [48 x i64] [i64 260832255, i64 2012885507, i64 4055838715, i64 457269198, i64 3218162704, i64 2226003120, i64 739248128, i64 289, i64 0, i64 0, i64 512, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 31, i64 4, i64 0, i64 0, i64 219210091, i64 0, i64 0, i64 4227440268, i64 101940223, i64 233, i64 2424082948, i64 9495044, i64 536871392, i64 16497073406145, i64 342273571680157696, i64 1, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 2638128, i64 63, i64 0, i64 1, i64 479, i64 4], ptr @.str.823, ptr null, ptr @.compoundliteral.825, ptr null }, { ptr, i32, i32, [13 x i8], [3 x i8], i32, i32, i32, i8, i8, [2 x i8], [48 x i64], ptr, ptr, ptr, ptr } { ptr @.str.826, i32 35, i32 -2147483640, [13 x i8] c"GenuineIntel\00", [3 x i8] zeroinitializer, i32 6, i32 175, i32 0, i8 0, i8 0, [2 x i8] zeroinitializer, [48 x i64] [i64 126614527, i64 2012885507, i64 563873705, i64 20973324, i64 2751479824, i64 8390800, i64 739248128, i64 289, i64 0, i64 0, i64 512, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 15, i64 4, i64 0, i64 0, i64 16834667, i64 0, i64 0, i64 4227440268, i64 1276927, i64 233, i64 8163332, i64 57860, i64 536871008, i64 16497073406017, i64 54043195528445952, i64 1, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 48, i64 32, i64 0, i64 0, i64 0, i64 0], ptr @.str.827, ptr null, ptr @.compoundliteral.835, ptr null }, { ptr, i32, i32, [13 x i8], [3 x i8], i32, i32, i32, i8, i8, [2 x i8], [48 x i64], ptr, ptr, ptr, ptr } { ptr @.str.836, i32 35, i32 -2147483640, [13 x i8] c"GenuineIntel\00", [3 x i8] zeroinitializer, i32 6, i32 221, i32 0, i8 0, i8 0, [2 x i8] zeroinitializer, [48 x i64] [i64 260832255, i64 2012885507, i64 563873707, i64 457180940, i64 2751479824, i64 75499671, i64 739248128, i64 289, i64 0, i64 0, i64 512, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 15, i64 4, i64 0, i64 0, i64 219209835, i64 0, i64 0, i64 4227440268, i64 1276927, i64 233, i64 8163332, i64 57860, i64 536871008, i64 16497073406017, i64 54043195528445952, i64 1, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 17456, i64 63, i64 0, i64 0, i64 0, i64 0], ptr @.str.837, ptr null, ptr @.compoundliteral.842, ptr null }, { ptr, i32, i32, [13 x i8], [3 x i8], i32, i32, i32, i8, i8, [2 x i8], <{ [35 x i64], [13 x i64] }>, ptr, ptr, ptr, ptr } { ptr @.str.843, i32 21, i32 -2147483640, [13 x i8] c"GenuineIntel\00", [3 x i8] zeroinitializer, i32 6, i32 95, i32 1, i8 0, i8 0, [2 x i8] zeroinitializer, <{ [35 x i64], [13 x i64] }> <{ [35 x i64] [i64 126614527, i64 1207443979, i64 546587265, i64 0, i64 2751463424, i64 0, i64 739248128, i64 257, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 7, i64 4, i64 0, i64 0, i64 9, i64 0, i64 0, i64 4227440268, i64 228351, i64 233, i64 8163332, i64 57860, i64 536871008, i64 16497073406017, i64 54043195528445952, i64 1], [13 x i64] zeroinitializer }>, ptr @.str.844, ptr null, ptr @.compoundliteral.849, ptr null }, { ptr, i32, i32, [13 x i8], [3 x i8], i32, i32, i32, i8, i8, [2 x i8], <{ [35 x i64], [13 x i64] }>, ptr, ptr, ptr, ptr } { ptr @.str.850, i32 27, i32 -2147483640, [13 x i8] c"GenuineIntel\00", [3 x i8] zeroinitializer, i32 6, i32 134, i32 1, i8 0, i8 0, [2 x i8] zeroinitializer, <{ [35 x i64], [13 x i64] }> <{ [35 x i64] [i64 126614527, i64 1207443979, i64 563364481, i64 436207876, i64 3825205248, i64 0, i64 739248128, i64 257, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 7, i64 4, i64 0, i64 0, i64 0, i64 32, i64 0, i64 4227440268, i64 228351, i64 233, i64 8163332, i64 57860, i64 536871008, i64 16497073406017, i64 54043195528445952, i64 1], [13 x i64] zeroinitializer }>, ptr @.str.851, ptr null, ptr @.compoundliteral.858, ptr null }, { ptr, i32, i32, [13 x i8], [3 x i8], i32, i32, i32, i8, i8, [2 x i8], <{ [21 x i64], [27 x i64] }>, ptr, ptr, ptr, ptr } { ptr @.str.859, i32 13, i32 -2147483640, [13 x i8] c"GenuineIntel\00", [3 x i8] zeroinitializer, i32 6, i32 133, i32 0, i8 0, i8 0, [2 x i8] zeroinitializer, <{ [21 x i64], [27 x i64] }> <{ [21 x i64] [i64 260832255, i64 2012754435, i64 470614953, i64 16384, i64 12, i64 0, i64 739248128, i64 289, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 1, i64 4], [27 x i64] zeroinitializer }>, ptr @.str.860, ptr null, ptr null, ptr null }, { ptr, i32, i32, [13 x i8], [3 x i8], i32, i32, i32, i8, i8, [2 x i8], <{ i64, i64, i64, i64, i64, i64, i64, [41 x i64] }>, ptr, ptr, ptr, ptr } { ptr @.str.861, i32 5, i32 -2147483640, [13 x i8] c"AuthenticAMD\00", [3 x i8] zeroinitializer, i32 15, i32 6, i32 1, i8 0, i8 0, [2 x i8] zeroinitializer, <{ i64, i64, i64, i64, i64, i64, i64, [41 x i64] }> <{ i64 126614527, i64 1, i64 0, i64 0, i64 0, i64 0, i64 537921536, [41 x i64] zeroinitializer }>, ptr @.str.862, ptr null, ptr null, ptr null }, { ptr, i32, i32, [13 x i8], [3 x i8], i32, i32, i32, i8, i8, [2 x i8], <{ [8 x i64], [40 x i64] }>, ptr, ptr, ptr, ptr } { ptr @.str.863, i32 5, i32 -2147483640, [13 x i8] c"AuthenticAMD\00", [3 x i8] zeroinitializer, i32 15, i32 6, i32 1, i8 0, i8 0, [2 x i8] zeroinitializer, <{ [8 x i64], [40 x i64] }> <{ [8 x i64] [i64 126614527, i64 8193, i64 0, i64 0, i64 0, i64 0, i64 537921536, i64 5], [40 x i64] zeroinitializer }>, ptr @.str.864, ptr null, ptr null, ptr null }, { ptr, i32, i32, [13 x i8], [3 x i8], i32, i32, i32, i8, i8, [2 x i8], <{ [8 x i64], [40 x i64] }>, ptr, ptr, ptr, ptr } { ptr @.str.865, i32 5, i32 -2147483640, [13 x i8] c"AuthenticAMD\00", [3 x i8] zeroinitializer, i32 16, i32 2, i32 3, i8 0, i8 0, [2 x i8] zeroinitializer, <{ [8 x i64], [40 x i64] }> <{ [8 x i64] [i64 126614527, i64 8396809, i64 0, i64 0, i64 0, i64 0, i64 672139264, i64 229], [40 x i64] zeroinitializer }>, ptr @.str.866, ptr null, ptr null, ptr null }, { ptr, i32, i32, [13 x i8], [3 x i8], i32, i32, i32, i8, i8, [2 x i8], <{ [19 x i64], [29 x i64] }>, ptr, ptr, ptr, ptr } { ptr @.str.867, i32 13, i32 -2147483622, [13 x i8] c"AuthenticAMD\00", [3 x i8] zeroinitializer, i32 21, i32 1, i32 2, i8 0, i8 0, [2 x i8] zeroinitializer, <{ [19 x i64], [29 x i64] }> <{ [19 x i64] [i64 126614527, i64 379068931, i64 0, i64 0, i64 0, i64 0, i64 739248128, i64 68069, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 9], [29 x i64] zeroinitializer }>, ptr @.str.868, ptr null, ptr null, ptr null }, { ptr, i32, i32, [13 x i8], [3 x i8], i32, i32, i32, i8, i8, [2 x i8], <{ [19 x i64], [29 x i64] }>, ptr, ptr, ptr, ptr } { ptr @.str.869, i32 13, i32 -2147483622, [13 x i8] c"AuthenticAMD\00", [3 x i8] zeroinitializer, i32 21, i32 2, i32 0, i8 0, i8 0, [2 x i8] zeroinitializer, <{ [19 x i64], [29 x i64] }> <{ [19 x i64] [i64 126614527, i64 915943939, i64 0, i64 0, i64 0, i64 0, i64 739248128, i64 2165221, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 9], [29 x i64] zeroinitializer }>, ptr @.str.870, ptr null, ptr null, ptr null }, { ptr, i32, i32, [13 x i8], [3 x i8], i32, i32, i32, i8, i8, [2 x i8], <{ [21 x i64], [27 x i64] }>, ptr, ptr, ptr, ptr } { ptr @.str.871, i32 13, i32 -2147483618, [13 x i8] c"AuthenticAMD\00", [3 x i8] zeroinitializer, i32 23, i32 1, i32 2, i8 0, i8 0, [2 x i8] zeroinitializer, <{ [21 x i64], [27 x i64] }> <{ [21 x i64] [i64 126614527, i64 1993880075, i64 547094953, i64 0, i64 0, i64 0, i64 776996864, i64 4195317, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 9, i64 7, i64 4], [27 x i64] zeroinitializer }>, ptr @.str.872, ptr @epyc_cache_info, ptr @.compoundliteral.881, ptr null }, { ptr, i32, i32, [13 x i8], [3 x i8], i32, i32, i32, i8, i8, [2 x i8], <{ [21 x i64], [27 x i64] }>, ptr, ptr, ptr, ptr } { ptr @.str.882, i32 13, i32 -2147483618, [13 x i8] c"HygonGenuine\00", [3 x i8] zeroinitializer, i32 24, i32 0, i32 1, i8 0, i8 0, [2 x i8] zeroinitializer, <{ [21 x i64], [27 x i64] }> <{ [21 x i64] [i64 126614527, i64 1960325641, i64 10224041, i64 0, i64 0, i64 0, i64 776996864, i64 4195317, i64 0, i64 0, i64 4096, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 9, i64 7, i64 4], [27 x i64] zeroinitializer }>, ptr @.str.883, ptr @epyc_cache_info, ptr @.compoundliteral.885, ptr null }, { ptr, i32, i32, [13 x i8], [3 x i8], i32, i32, i32, i8, i8, [2 x i8], <{ [21 x i64], [27 x i64] }>, ptr, ptr, ptr, ptr } { ptr @.str.886, i32 13, i32 -2147483618, [13 x i8] c"AuthenticAMD\00", [3 x i8] zeroinitializer, i32 23, i32 49, i32 0, i8 0, i8 0, [2 x i8] zeroinitializer, <{ [21 x i64], [27 x i64] }> <{ [21 x i64] [i64 126614527, i64 1993880075, i64 563872169, i64 4194308, i64 0, i64 0, i64 776996864, i64 12583925, i64 0, i64 0, i64 37381, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 9, i64 15, i64 4], [27 x i64] zeroinitializer }>, ptr @.str.887, ptr @epyc_rome_cache_info, ptr @.compoundliteral.895, ptr null }, { ptr, i32, i32, [13 x i8], [3 x i8], i32, i32, i32, i8, i8, [2 x i8], <{ [21 x i64], [27 x i64] }>, ptr, ptr, ptr, ptr } { ptr @.str.896, i32 13, i32 -2147483618, [13 x i8] c"AuthenticAMD\00", [3 x i8] zeroinitializer, i32 25, i32 1, i32 1, i8 0, i8 0, [2 x i8] zeroinitializer, <{ [21 x i64], [27 x i64] }> <{ [21 x i64] [i64 126614527, i64 1994011147, i64 563873705, i64 4194316, i64 16, i64 0, i64 776996864, i64 12583925, i64 0, i64 0, i64 16830981, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 268435465, i64 15, i64 4], [27 x i64] zeroinitializer }>, ptr @.str.897, ptr @epyc_milan_cache_info, ptr @.compoundliteral.904, ptr null }, { ptr, i32, i32, [13 x i8], [3 x i8], i32, i32, i32, i8, i8, [2 x i8], <{ [21 x i64], [27 x i64] }>, ptr, ptr, ptr, ptr } { ptr @.str.905, i32 13, i32 -2147483614, [13 x i8] c"AuthenticAMD\00", [3 x i8] zeroinitializer, i32 25, i32 17, i32 0, i8 0, i8 0, [2 x i8] zeroinitializer, <{ [21 x i64], [27 x i64] }> <{ [21 x i64] [i64 126614527, i64 1994011147, i64 4055828393, i64 4284238, i64 16, i64 32, i64 776996864, i64 12583925, i64 0, i64 0, i64 285397509, i64 325, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 301989897, i64 15, i64 4], [27 x i64] zeroinitializer }>, ptr @.str.906, ptr @epyc_genoa_cache_info, ptr @.compoundliteral.911, ptr null }, { ptr, i32, i32, [13 x i8], [3 x i8], i32, i32, i32, i8, i8, [2 x i8], <{ [35 x i64], [13 x i64] }>, ptr, ptr, ptr, ptr } { ptr @.str.912, i32 31, i32 -2147483640, [13 x i8] c"CentaurHauls\00", [3 x i8] zeroinitializer, i32 7, i32 11, i32 3, i8 0, i8 0, [2 x i8] zeroinitializer, <{ [35 x i64], [13 x i64] }> <{ [35 x i64] [i64 265026559, i64 2012885515, i64 538707369, i64 4194316, i64 603979776, i64 0, i64 739248128, i64 289, i64 0, i64 256, i64 0, i64 0, i64 0, i64 0, i64 0, i64 15820, i64 0, i64 0, i64 0, i64 1, i64 0, i64 0, i64 0, i64 121, i64 0, i64 0, i64 4227440268, i64 162815, i64 233, i64 8163844, i64 57860, i64 536871008, i64 16497073406017, i64 54043195528445952, i64 1], [13 x i64] zeroinitializer }>, ptr @.str.913, ptr null, ptr @.compoundliteral.919, ptr null }, { ptr, i32, i32, [13 x i8], [3 x i8], i32, i32, i32, i8, i8, [2 x i8], <{ [21 x i64], [27 x i64] }>, ptr, ptr, ptr, ptr } { ptr @.str.920, i32 13, i32 -2147483614, [13 x i8] c"AuthenticAMD\00", [3 x i8] zeroinitializer, i32 26, i32 0, i32 0, i8 0, i8 0, [2 x i8] zeroinitializer, <{ [21 x i64], [27 x i64] }> <{ [21 x i64] [i64 126614527, i64 1994011147, i64 4055828393, i64 406937422, i64 272, i64 48, i64 776996864, i64 12583925, i64 3, i64 0, i64 285397509, i64 1477443911, i64 0, i64 0, i64 1, i64 0, i64 0, i64 0, i64 302093435, i64 15, i64 4], [27 x i64] zeroinitializer }>, ptr @.str.921, ptr @epyc_turin_cache_info, ptr @.compoundliteral.924, ptr null } }>, align 16
@.compoundliteral.926 = internal global { i32, i8, [3 x i8], i32, i16, i8, i8, i32, i8, i8, i8, i8, i8, [3 x i8], i32 } { i32 0, i8 1, [3 x i8] zeroinitializer, i32 49152, i16 64, i8 12, i8 1, i32 64, i8 0, i8 1, i8 0, i8 0, i8 0, [3 x i8] zeroinitializer, i32 1 }, align 4
@.compoundliteral.927 = internal global { i32, i8, [3 x i8], i32, i16, i8, i8, i32, i8, i8, i8, i8, i8, [3 x i8], i32 } { i32 1, i8 1, [3 x i8] zeroinitializer, i32 32768, i16 64, i8 8, i8 1, i32 64, i8 0, i8 1, i8 0, i8 0, i8 0, [3 x i8] zeroinitializer, i32 1 }, align 4
@.compoundliteral.928 = internal global { i32, i8, [3 x i8], i32, i16, i8, i8, i32, i8, i8, i8, i8, i8, [3 x i8], i32 } { i32 2, i8 2, [3 x i8] zeroinitializer, i32 2097152, i16 64, i8 16, i8 1, i32 2048, i8 0, i8 1, i8 0, i8 0, i8 0, [3 x i8] zeroinitializer, i32 1 }, align 4
@.compoundliteral.929 = internal global { i32, i8, [3 x i8], i32, i16, i8, i8, i32, i8, i8, i8, i8, i8, [3 x i8], i32 } { i32 2, i8 3, [3 x i8] zeroinitializer, i32 62914560, i16 64, i8 15, i8 1, i32 65536, i8 0, i8 1, i8 0, i8 0, i8 1, [3 x i8] zeroinitializer, i32 5 }, align 4
@.compoundliteral.930 = internal global { i32, i8, [3 x i8], i32, i16, i8, i8, i32, i8, i8, i8, i8, i8, [3 x i8], i32 } { i32 0, i8 1, [3 x i8] zeroinitializer, i32 49152, i16 64, i8 12, i8 1, i32 64, i8 0, i8 1, i8 0, i8 0, i8 0, [3 x i8] zeroinitializer, i32 1 }, align 4
@.compoundliteral.931 = internal global { i32, i8, [3 x i8], i32, i16, i8, i8, i32, i8, i8, i8, i8, i8, [3 x i8], i32 } { i32 1, i8 1, [3 x i8] zeroinitializer, i32 65536, i16 64, i8 16, i8 1, i32 64, i8 0, i8 1, i8 0, i8 0, i8 0, [3 x i8] zeroinitializer, i32 1 }, align 4
@.compoundliteral.932 = internal global { i32, i8, [3 x i8], i32, i16, i8, i8, i32, i8, i8, i8, i8, i8, [3 x i8], i32 } { i32 2, i8 2, [3 x i8] zeroinitializer, i32 2097152, i16 64, i8 16, i8 1, i32 2048, i8 0, i8 1, i8 0, i8 0, i8 0, [3 x i8] zeroinitializer, i32 1 }, align 4
@.compoundliteral.933 = internal global { i32, i8, [3 x i8], i32, i16, i8, i8, i32, i8, i8, i8, i8, i8, [3 x i8], i32 } { i32 2, i8 3, [3 x i8] zeroinitializer, i32 301989888, i16 64, i8 16, i8 1, i32 294912, i8 0, i8 1, i8 0, i8 0, i8 1, [3 x i8] zeroinitializer, i32 5 }, align 4
@.compoundliteral.934 = internal global { i32, i8, [3 x i8], i32, i16, i8, i8, i32, i8, i8, i8, i8, i8, [3 x i8], i32 } { i32 0, i8 1, [3 x i8] zeroinitializer, i32 32768, i16 64, i8 8, i8 1, i32 64, i8 0, i8 1, i8 0, i8 0, i8 0, [3 x i8] zeroinitializer, i32 1 }, align 4
@.compoundliteral.935 = internal global { i32, i8, [3 x i8], i32, i16, i8, i8, i32, i8, i8, i8, i8, i8, [3 x i8], i32 } { i32 1, i8 1, [3 x i8] zeroinitializer, i32 65536, i16 64, i8 8, i8 1, i32 128, i8 0, i8 1, i8 0, i8 0, i8 0, [3 x i8] zeroinitializer, i32 1 }, align 4
@.compoundliteral.936 = internal global { i32, i8, [3 x i8], i32, i16, i8, i8, i32, i8, i8, i8, i8, i8, [3 x i8], i32 } { i32 2, i8 2, [3 x i8] zeroinitializer, i32 4194304, i16 64, i8 16, i8 1, i32 4096, i8 0, i8 1, i8 0, i8 0, i8 0, [3 x i8] zeroinitializer, i32 2 }, align 4
@.compoundliteral.937 = internal global { i32, i8, [3 x i8], i32, i16, i8, i8, i32, i8, i8, i8, i8, i8, [3 x i8], i32 } { i32 2, i8 3, [3 x i8] zeroinitializer, i32 113246208, i16 64, i8 12, i8 1, i32 147456, i8 0, i8 1, i8 0, i8 0, i8 1, [3 x i8] zeroinitializer, i32 5 }, align 4
@.compoundliteral.938 = internal global { i32, i8, [3 x i8], i32, i16, i8, i8, i32, i8, i8, i8, i8, i8, [3 x i8], i32 } { i32 0, i8 1, [3 x i8] zeroinitializer, i32 32768, i16 64, i8 8, i8 1, i32 64, i8 0, i8 1, i8 0, i8 0, i8 0, [3 x i8] zeroinitializer, i32 1 }, align 4
@.compoundliteral.939 = internal global { i32, i8, [3 x i8], i32, i16, i8, i8, i32, i8, i8, i8, i8, i8, [3 x i8], i32 } { i32 1, i8 1, [3 x i8] zeroinitializer, i32 65536, i16 64, i8 8, i8 1, i32 128, i8 0, i8 1, i8 0, i8 0, i8 0, [3 x i8] zeroinitializer, i32 1 }, align 4
@.compoundliteral.940 = internal global { i32, i8, [3 x i8], i32, i16, i8, i8, i32, i8, i8, i8, i8, i8, [3 x i8], i32 } { i32 2, i8 2, [3 x i8] zeroinitializer, i32 4194304, i16 64, i8 16, i8 1, i32 4096, i8 0, i8 1, i8 0, i8 0, i8 0, [3 x i8] zeroinitializer, i32 2 }, align 4
@.compoundliteral.941 = internal global { i32, i8, [3 x i8], i32, i16, i8, i8, i32, i8, i8, i8, i8, i8, [3 x i8], i32 } { i32 2, i8 3, [3 x i8] zeroinitializer, i32 553648128, i16 64, i8 16, i8 1, i32 540672, i8 0, i8 1, i8 0, i8 0, i8 1, [3 x i8] zeroinitializer, i32 5 }, align 4
@.compoundliteral.942 = internal global { i32, i8, [3 x i8], i32, i16, i8, i8, i32, i8, i8, i8, i8, i8, [3 x i8], i32 } { i32 0, i8 1, [3 x i8] zeroinitializer, i32 32768, i16 64, i8 8, i8 1, i32 64, i8 1, i8 1, i8 1, i8 0, i8 0, [3 x i8] zeroinitializer, i32 1 }, align 4
@.compoundliteral.943 = internal global { i32, i8, [3 x i8], i32, i16, i8, i8, i32, i8, i8, i8, i8, i8, [3 x i8], i32 } { i32 1, i8 1, [3 x i8] zeroinitializer, i32 65536, i16 64, i8 4, i8 1, i32 256, i8 1, i8 1, i8 1, i8 0, i8 0, [3 x i8] zeroinitializer, i32 1 }, align 4
@.compoundliteral.944 = internal global { i32, i8, [3 x i8], i32, i16, i8, i8, i32, i8, i8, i8, i8, i8, [3 x i8], i32 } { i32 2, i8 2, [3 x i8] zeroinitializer, i32 524288, i16 64, i8 8, i8 1, i32 1024, i8 1, i8 0, i8 0, i8 0, i8 0, [3 x i8] zeroinitializer, i32 1 }, align 4
@.compoundliteral.945 = internal global { i32, i8, [3 x i8], i32, i16, i8, i8, i32, i8, i8, i8, i8, i8, [3 x i8], i32 } { i32 2, i8 3, [3 x i8] zeroinitializer, i32 8388608, i16 64, i8 16, i8 1, i32 8192, i8 1, i8 1, i8 0, i8 1, i8 1, [3 x i8] zeroinitializer, i32 4 }, align 4
@.compoundliteral.946 = internal global { i32, i8, [3 x i8], i32, i16, i8, i8, i32, i8, i8, i8, i8, i8, [3 x i8], i32 } { i32 0, i8 1, [3 x i8] zeroinitializer, i32 32768, i16 64, i8 8, i8 1, i32 64, i8 1, i8 1, i8 1, i8 0, i8 0, [3 x i8] zeroinitializer, i32 1 }, align 4
@.compoundliteral.947 = internal global { i32, i8, [3 x i8], i32, i16, i8, i8, i32, i8, i8, i8, i8, i8, [3 x i8], i32 } { i32 1, i8 1, [3 x i8] zeroinitializer, i32 65536, i16 64, i8 4, i8 1, i32 256, i8 1, i8 1, i8 1, i8 0, i8 0, [3 x i8] zeroinitializer, i32 1 }, align 4
@.compoundliteral.948 = internal global { i32, i8, [3 x i8], i32, i16, i8, i8, i32, i8, i8, i8, i8, i8, [3 x i8], i32 } { i32 2, i8 2, [3 x i8] zeroinitializer, i32 524288, i16 64, i8 8, i8 1, i32 1024, i8 1, i8 0, i8 0, i8 0, i8 0, [3 x i8] zeroinitializer, i32 1 }, align 4
@.compoundliteral.949 = internal global { i32, i8, [3 x i8], i32, i16, i8, i8, i32, i8, i8, i8, i8, i8, [3 x i8], i32 } { i32 2, i8 3, [3 x i8] zeroinitializer, i32 8388608, i16 64, i8 16, i8 1, i32 8192, i8 1, i8 1, i8 0, i8 1, i8 0, [3 x i8] zeroinitializer, i32 4 }, align 4
@.compoundliteral.950 = internal global { i32, i8, [3 x i8], i32, i16, i8, i8, i32, i8, i8, i8, i8, i8, [3 x i8], i32 } { i32 0, i8 1, [3 x i8] zeroinitializer, i32 32768, i16 64, i8 8, i8 1, i32 64, i8 1, i8 1, i8 0, i8 0, i8 0, [3 x i8] zeroinitializer, i32 1 }, align 4
@.compoundliteral.951 = internal global { i32, i8, [3 x i8], i32, i16, i8, i8, i32, i8, i8, i8, i8, i8, [3 x i8], i32 } { i32 1, i8 1, [3 x i8] zeroinitializer, i32 65536, i16 64, i8 4, i8 1, i32 256, i8 1, i8 1, i8 0, i8 0, i8 0, [3 x i8] zeroinitializer, i32 1 }, align 4
@.compoundliteral.952 = internal global { i32, i8, [3 x i8], i32, i16, i8, i8, i32, i8, i8, i8, i8, i8, [3 x i8], i32 } { i32 2, i8 2, [3 x i8] zeroinitializer, i32 524288, i16 64, i8 8, i8 1, i32 1024, i8 1, i8 1, i8 0, i8 1, i8 0, [3 x i8] zeroinitializer, i32 1 }, align 4
@.compoundliteral.953 = internal global { i32, i8, [3 x i8], i32, i16, i8, i8, i32, i8, i8, i8, i8, i8, [3 x i8], i32 } { i32 2, i8 3, [3 x i8] zeroinitializer, i32 8388608, i16 64, i8 16, i8 1, i32 8192, i8 1, i8 1, i8 1, i8 0, i8 0, [3 x i8] zeroinitializer, i32 4 }, align 4
@.compoundliteral.954 = internal global { i32, i8, [3 x i8], i32, i16, i8, i8, i32, i8, i8, i8, i8, i8, [3 x i8], i32 } { i32 0, i8 1, [3 x i8] zeroinitializer, i32 32768, i16 64, i8 8, i8 1, i32 64, i8 1, i8 1, i8 1, i8 0, i8 0, [3 x i8] zeroinitializer, i32 1 }, align 4
@.compoundliteral.955 = internal global { i32, i8, [3 x i8], i32, i16, i8, i8, i32, i8, i8, i8, i8, i8, [3 x i8], i32 } { i32 1, i8 1, [3 x i8] zeroinitializer, i32 32768, i16 64, i8 8, i8 1, i32 64, i8 1, i8 1, i8 1, i8 0, i8 0, [3 x i8] zeroinitializer, i32 1 }, align 4
@.compoundliteral.956 = internal global { i32, i8, [3 x i8], i32, i16, i8, i8, i32, i8, i8, i8, i8, i8, [3 x i8], i32 } { i32 2, i8 2, [3 x i8] zeroinitializer, i32 524288, i16 64, i8 8, i8 1, i32 1024, i8 1, i8 0, i8 0, i8 0, i8 0, [3 x i8] zeroinitializer, i32 1 }, align 4
@.compoundliteral.957 = internal global { i32, i8, [3 x i8], i32, i16, i8, i8, i32, i8, i8, i8, i8, i8, [3 x i8], i32 } { i32 2, i8 3, [3 x i8] zeroinitializer, i32 16777216, i16 64, i8 16, i8 1, i32 16384, i8 1, i8 1, i8 0, i8 1, i8 1, [3 x i8] zeroinitializer, i32 4 }, align 4
@.compoundliteral.958 = internal global { i32, i8, [3 x i8], i32, i16, i8, i8, i32, i8, i8, i8, i8, i8, [3 x i8], i32 } { i32 0, i8 1, [3 x i8] zeroinitializer, i32 32768, i16 64, i8 8, i8 1, i32 64, i8 1, i8 1, i8 1, i8 0, i8 0, [3 x i8] zeroinitializer, i32 1 }, align 4
@.compoundliteral.959 = internal global { i32, i8, [3 x i8], i32, i16, i8, i8, i32, i8, i8, i8, i8, i8, [3 x i8], i32 } { i32 1, i8 1, [3 x i8] zeroinitializer, i32 32768, i16 64, i8 8, i8 1, i32 64, i8 1, i8 1, i8 1, i8 0, i8 0, [3 x i8] zeroinitializer, i32 1 }, align 4
@.compoundliteral.960 = internal global { i32, i8, [3 x i8], i32, i16, i8, i8, i32, i8, i8, i8, i8, i8, [3 x i8], i32 } { i32 2, i8 2, [3 x i8] zeroinitializer, i32 524288, i16 64, i8 8, i8 1, i32 1024, i8 1, i8 0, i8 0, i8 0, i8 0, [3 x i8] zeroinitializer, i32 1 }, align 4
@.compoundliteral.961 = internal global { i32, i8, [3 x i8], i32, i16, i8, i8, i32, i8, i8, i8, i8, i8, [3 x i8], i32 } { i32 2, i8 3, [3 x i8] zeroinitializer, i32 16777216, i16 64, i8 16, i8 1, i32 16384, i8 1, i8 1, i8 0, i8 1, i8 0, [3 x i8] zeroinitializer, i32 4 }, align 4
@.compoundliteral.962 = internal global { i32, i8, [3 x i8], i32, i16, i8, i8, i32, i8, i8, i8, i8, i8, [3 x i8], i32 } { i32 0, i8 1, [3 x i8] zeroinitializer, i32 32768, i16 64, i8 8, i8 1, i32 64, i8 1, i8 1, i8 0, i8 0, i8 0, [3 x i8] zeroinitializer, i32 1 }, align 4
@.compoundliteral.963 = internal global { i32, i8, [3 x i8], i32, i16, i8, i8, i32, i8, i8, i8, i8, i8, [3 x i8], i32 } { i32 1, i8 1, [3 x i8] zeroinitializer, i32 32768, i16 64, i8 8, i8 1, i32 64, i8 1, i8 1, i8 0, i8 0, i8 0, [3 x i8] zeroinitializer, i32 1 }, align 4
@.compoundliteral.964 = internal global { i32, i8, [3 x i8], i32, i16, i8, i8, i32, i8, i8, i8, i8, i8, [3 x i8], i32 } { i32 2, i8 2, [3 x i8] zeroinitializer, i32 524288, i16 64, i8 8, i8 1, i32 1024, i8 1, i8 1, i8 0, i8 1, i8 0, [3 x i8] zeroinitializer, i32 1 }, align 4
@.compoundliteral.965 = internal global { i32, i8, [3 x i8], i32, i16, i8, i8, i32, i8, i8, i8, i8, i8, [3 x i8], i32 } { i32 2, i8 3, [3 x i8] zeroinitializer, i32 16777216, i16 64, i8 16, i8 1, i32 16384, i8 1, i8 1, i8 1, i8 0, i8 0, [3 x i8] zeroinitializer, i32 4 }, align 4
@.compoundliteral.966 = internal global { i32, i8, [3 x i8], i32, i16, i8, i8, i32, i8, i8, i8, i8, i8, [3 x i8], i32 } { i32 0, i8 1, [3 x i8] zeroinitializer, i32 32768, i16 64, i8 8, i8 1, i32 64, i8 1, i8 1, i8 1, i8 0, i8 0, [3 x i8] zeroinitializer, i32 1 }, align 4
@.compoundliteral.967 = internal global { i32, i8, [3 x i8], i32, i16, i8, i8, i32, i8, i8, i8, i8, i8, [3 x i8], i32 } { i32 1, i8 1, [3 x i8] zeroinitializer, i32 32768, i16 64, i8 8, i8 1, i32 64, i8 1, i8 1, i8 1, i8 0, i8 0, [3 x i8] zeroinitializer, i32 1 }, align 4
@.compoundliteral.968 = internal global { i32, i8, [3 x i8], i32, i16, i8, i8, i32, i8, i8, i8, i8, i8, [3 x i8], i32 } { i32 2, i8 2, [3 x i8] zeroinitializer, i32 524288, i16 64, i8 8, i8 1, i32 1024, i8 1, i8 0, i8 0, i8 0, i8 0, [3 x i8] zeroinitializer, i32 1 }, align 4
@.compoundliteral.969 = internal global { i32, i8, [3 x i8], i32, i16, i8, i8, i32, i8, i8, i8, i8, i8, [3 x i8], i32 } { i32 2, i8 3, [3 x i8] zeroinitializer, i32 33554432, i16 64, i8 16, i8 1, i32 32768, i8 1, i8 1, i8 0, i8 1, i8 1, [3 x i8] zeroinitializer, i32 4 }, align 4
@.compoundliteral.970 = internal global { i32, i8, [3 x i8], i32, i16, i8, i8, i32, i8, i8, i8, i8, i8, [3 x i8], i32 } { i32 0, i8 1, [3 x i8] zeroinitializer, i32 32768, i16 64, i8 8, i8 1, i32 64, i8 1, i8 1, i8 1, i8 0, i8 0, [3 x i8] zeroinitializer, i32 1 }, align 4
@.compoundliteral.971 = internal global { i32, i8, [3 x i8], i32, i16, i8, i8, i32, i8, i8, i8, i8, i8, [3 x i8], i32 } { i32 1, i8 1, [3 x i8] zeroinitializer, i32 32768, i16 64, i8 8, i8 1, i32 64, i8 1, i8 1, i8 1, i8 0, i8 0, [3 x i8] zeroinitializer, i32 1 }, align 4
@.compoundliteral.972 = internal global { i32, i8, [3 x i8], i32, i16, i8, i8, i32, i8, i8, i8, i8, i8, [3 x i8], i32 } { i32 2, i8 2, [3 x i8] zeroinitializer, i32 524288, i16 64, i8 8, i8 1, i32 1024, i8 1, i8 0, i8 0, i8 0, i8 0, [3 x i8] zeroinitializer, i32 1 }, align 4
@.compoundliteral.973 = internal global { i32, i8, [3 x i8], i32, i16, i8, i8, i32, i8, i8, i8, i8, i8, [3 x i8], i32 } { i32 2, i8 3, [3 x i8] zeroinitializer, i32 33554432, i16 64, i8 16, i8 1, i32 32768, i8 1, i8 1, i8 0, i8 1, i8 0, [3 x i8] zeroinitializer, i32 4 }, align 4
@.compoundliteral.974 = internal global { i32, i8, [3 x i8], i32, i16, i8, i8, i32, i8, i8, i8, i8, i8, [3 x i8], i32 } { i32 0, i8 1, [3 x i8] zeroinitializer, i32 32768, i16 64, i8 8, i8 1, i32 64, i8 1, i8 1, i8 0, i8 0, i8 0, [3 x i8] zeroinitializer, i32 1 }, align 4
@.compoundliteral.975 = internal global { i32, i8, [3 x i8], i32, i16, i8, i8, i32, i8, i8, i8, i8, i8, [3 x i8], i32 } { i32 1, i8 1, [3 x i8] zeroinitializer, i32 32768, i16 64, i8 8, i8 1, i32 64, i8 1, i8 1, i8 0, i8 0, i8 0, [3 x i8] zeroinitializer, i32 1 }, align 4
@.compoundliteral.976 = internal global { i32, i8, [3 x i8], i32, i16, i8, i8, i32, i8, i8, i8, i8, i8, [3 x i8], i32 } { i32 2, i8 2, [3 x i8] zeroinitializer, i32 524288, i16 64, i8 8, i8 1, i32 1024, i8 1, i8 1, i8 0, i8 1, i8 0, [3 x i8] zeroinitializer, i32 1 }, align 4
@.compoundliteral.977 = internal global { i32, i8, [3 x i8], i32, i16, i8, i8, i32, i8, i8, i8, i8, i8, [3 x i8], i32 } { i32 2, i8 3, [3 x i8] zeroinitializer, i32 33554432, i16 64, i8 16, i8 1, i32 32768, i8 1, i8 1, i8 1, i8 0, i8 0, [3 x i8] zeroinitializer, i32 4 }, align 4
@.compoundliteral.978 = internal global { i32, i8, [3 x i8], i32, i16, i8, i8, i32, i8, i8, i8, i8, i8, [3 x i8], i32 } { i32 0, i8 1, [3 x i8] zeroinitializer, i32 32768, i16 64, i8 8, i8 1, i32 64, i8 1, i8 1, i8 1, i8 0, i8 0, [3 x i8] zeroinitializer, i32 1 }, align 4
@.compoundliteral.979 = internal global { i32, i8, [3 x i8], i32, i16, i8, i8, i32, i8, i8, i8, i8, i8, [3 x i8], i32 } { i32 1, i8 1, [3 x i8] zeroinitializer, i32 32768, i16 64, i8 8, i8 1, i32 64, i8 1, i8 1, i8 1, i8 0, i8 0, [3 x i8] zeroinitializer, i32 1 }, align 4
@.compoundliteral.980 = internal global { i32, i8, [3 x i8], i32, i16, i8, i8, i32, i8, i8, i8, i8, i8, [3 x i8], i32 } { i32 2, i8 2, [3 x i8] zeroinitializer, i32 1048576, i16 64, i8 8, i8 1, i32 2048, i8 1, i8 0, i8 0, i8 0, i8 0, [3 x i8] zeroinitializer, i32 1 }, align 4
@.compoundliteral.981 = internal global { i32, i8, [3 x i8], i32, i16, i8, i8, i32, i8, i8, i8, i8, i8, [3 x i8], i32 } { i32 2, i8 3, [3 x i8] zeroinitializer, i32 33554432, i16 64, i8 16, i8 1, i32 32768, i8 1, i8 1, i8 0, i8 1, i8 0, [3 x i8] zeroinitializer, i32 4 }, align 4
@.compoundliteral.982 = internal global { i32, i8, [3 x i8], i32, i16, i8, i8, i32, i8, i8, i8, i8, i8, [3 x i8], i32 } { i32 0, i8 1, [3 x i8] zeroinitializer, i32 32768, i16 64, i8 8, i8 1, i32 64, i8 1, i8 1, i8 0, i8 0, i8 0, [3 x i8] zeroinitializer, i32 1 }, align 4
@.compoundliteral.983 = internal global { i32, i8, [3 x i8], i32, i16, i8, i8, i32, i8, i8, i8, i8, i8, [3 x i8], i32 } { i32 1, i8 1, [3 x i8] zeroinitializer, i32 32768, i16 64, i8 8, i8 1, i32 64, i8 1, i8 1, i8 0, i8 0, i8 0, [3 x i8] zeroinitializer, i32 1 }, align 4
@.compoundliteral.984 = internal global { i32, i8, [3 x i8], i32, i16, i8, i8, i32, i8, i8, i8, i8, i8, [3 x i8], i32 } { i32 2, i8 2, [3 x i8] zeroinitializer, i32 1048576, i16 64, i8 8, i8 1, i32 2048, i8 1, i8 1, i8 0, i8 1, i8 0, [3 x i8] zeroinitializer, i32 1 }, align 4
@.compoundliteral.985 = internal global { i32, i8, [3 x i8], i32, i16, i8, i8, i32, i8, i8, i8, i8, i8, [3 x i8], i32 } { i32 2, i8 3, [3 x i8] zeroinitializer, i32 33554432, i16 64, i8 16, i8 1, i32 32768, i8 1, i8 1, i8 1, i8 0, i8 0, [3 x i8] zeroinitializer, i32 4 }, align 4
@.compoundliteral.986 = internal global { i32, i8, [3 x i8], i32, i16, i8, i8, i32, i8, i8, i8, i8, i8, [3 x i8], i32 } { i32 0, i8 1, [3 x i8] zeroinitializer, i32 32768, i16 64, i8 8, i8 1, i32 64, i8 1, i8 1, i8 0, i8 0, i8 0, [3 x i8] zeroinitializer, i32 1 }, align 4
@.compoundliteral.987 = internal global { i32, i8, [3 x i8], i32, i16, i8, i8, i32, i8, i8, i8, i8, i8, [3 x i8], i32 } { i32 1, i8 1, [3 x i8] zeroinitializer, i32 65536, i16 64, i8 16, i8 1, i32 64, i8 1, i8 1, i8 0, i8 0, i8 0, [3 x i8] zeroinitializer, i32 1 }, align 4
@.compoundliteral.988 = internal global { i32, i8, [3 x i8], i32, i16, i8, i8, i32, i8, i8, i8, i8, i8, [3 x i8], i32 } { i32 2, i8 2, [3 x i8] zeroinitializer, i32 262144, i16 64, i8 8, i8 1, i32 512, i8 0, i8 1, i8 0, i8 1, i8 0, [3 x i8] zeroinitializer, i32 1 }, align 4
@.compoundliteral.989 = internal global { i32, i8, [3 x i8], i32, i16, i8, i8, i32, i8, i8, i8, i8, i8, [3 x i8], i32 } { i32 2, i8 3, [3 x i8] zeroinitializer, i32 8388608, i16 64, i8 16, i8 1, i32 8192, i8 0, i8 1, i8 1, i8 1, i8 0, [3 x i8] zeroinitializer, i32 4 }, align 4
@.compoundliteral.990 = internal global { i32, i8, [3 x i8], i32, i16, i8, i8, i32, i8, i8, i8, i8, i8, [3 x i8], i32 } { i32 0, i8 1, [3 x i8] zeroinitializer, i32 49152, i16 64, i8 12, i8 1, i32 64, i8 1, i8 1, i8 0, i8 0, i8 0, [3 x i8] zeroinitializer, i32 1 }, align 4
@.compoundliteral.991 = internal global { i32, i8, [3 x i8], i32, i16, i8, i8, i32, i8, i8, i8, i8, i8, [3 x i8], i32 } { i32 1, i8 1, [3 x i8] zeroinitializer, i32 32768, i16 64, i8 8, i8 1, i32 64, i8 1, i8 1, i8 0, i8 0, i8 0, [3 x i8] zeroinitializer, i32 1 }, align 4
@.compoundliteral.992 = internal global { i32, i8, [3 x i8], i32, i16, i8, i8, i32, i8, i8, i8, i8, i8, [3 x i8], i32 } { i32 2, i8 2, [3 x i8] zeroinitializer, i32 1048576, i16 64, i8 16, i8 1, i32 1024, i8 1, i8 1, i8 0, i8 1, i8 0, [3 x i8] zeroinitializer, i32 1 }, align 4
@.compoundliteral.993 = internal global { i32, i8, [3 x i8], i32, i16, i8, i8, i32, i8, i8, i8, i8, i8, [3 x i8], i32 } { i32 2, i8 3, [3 x i8] zeroinitializer, i32 33554432, i16 64, i8 16, i8 1, i32 32768, i8 1, i8 1, i8 1, i8 0, i8 0, [3 x i8] zeroinitializer, i32 4 }, align 4
@.str.994 = private unnamed_addr constant [15 x i8] c"max-x86_64-cpu\00", align 1
@max_x86_cpu_type_info = internal constant { ptr, ptr, i64, i64, ptr, ptr, ptr, i8, [7 x i8], i64, ptr, ptr, ptr, ptr } { ptr @.str.994, ptr @.str.461, i64 0, i64 0, ptr @max_x86_cpu_initfn, ptr null, ptr null, i8 0, [7 x i8] zeroinitializer, i64 0, ptr @max_x86_cpu_class_init, ptr null, ptr null, ptr null }, align 8
@.str.996 = private unnamed_addr constant [13 x i8] c"AuthenticAMD\00", align 1
@.str.997 = private unnamed_addr constant [26 x i8] c"QEMU TCG CPU version 2.5+\00", align 1
@.str.998 = private unnamed_addr constant [70 x i8] c"Enables all features supported by the accelerator in the current host\00", align 1
@.str.999 = private unnamed_addr constant [11 x i8] c"migratable\00", align 1
@.str.1000 = private unnamed_addr constant [16 x i8] c"host-cache-info\00", align 1
@max_x86_cpu_properties = internal constant [2 x { ptr, ptr, i64, ptr, i64, %union.anon.12, ptr, i32, i32, i8, i8, [6 x i8] }] [{ ptr, ptr, i64, ptr, i64, %union.anon.12, ptr, i32, i32, i8, i8, [6 x i8] } { ptr @.str.999, ptr @qdev_prop_bool, i64 31909, ptr null, i64 0, %union.anon.12 { i64 1 }, ptr null, i32 0, i32 0, i8 0, i8 1, [6 x i8] zeroinitializer }, { ptr, ptr, i64, ptr, i64, %union.anon.12, ptr, i32, i32, i8, i8, [6 x i8] } { ptr @.str.1000, ptr @qdev_prop_bool, i64 31917, ptr null, i64 0, %union.anon.12 zeroinitializer, ptr null, i32 0, i32 0, i8 0, i8 1, [6 x i8] zeroinitializer }], align 16
@.str.1002 = private unnamed_addr constant [16 x i8] c"base-x86_64-cpu\00", align 1
@x86_base_cpu_type_info = internal constant { ptr, ptr, i64, i64, ptr, ptr, ptr, i8, [7 x i8], i64, ptr, ptr, ptr, ptr } { ptr @.str.1002, ptr @.str.461, i64 0, i64 0, ptr null, ptr null, ptr null, i8 0, [7 x i8] zeroinitializer, i64 0, ptr @x86_cpu_base_class_init, ptr null, ptr null, ptr null }, align 8
@.str.1004 = private unnamed_addr constant [45 x i8] c"base CPU model type with no features enabled\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @do_qemu_init_x86_cpu_register_types, ptr null }]
@switch.table.encode_topo_cpuid1f = private unnamed_addr constant [10 x i16] [i16 256, i16 512, i16 768, i16 poison, i16 1280, i16 poison, i16 poison, i16 poison, i16 poison, i16 0], align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define dso_local void @x86_cpu_vendor_words2str(ptr nofree noundef writeonly captures(none) initializes((0, 13)) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = trunc i32 %1 to i8
  store i8 %4, ptr %0, align 1
  %5 = trunc i32 %2 to i8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %5, ptr %i.a, align 1
  %6 = trunc i32 %3 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %6, ptr %i.b, align 1
  %7 = lshr i32 %1, 8
  %8 = trunc i32 %7 to i8
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %8, ptr %9, align 1
  %10 = lshr i32 %2, 8
  %11 = trunc i32 %10 to i8
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %11, ptr %12, align 1
  %13 = lshr i32 %3, 8
  %14 = trunc i32 %13 to i8
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %14, ptr %15, align 1
  %16 = lshr i32 %1, 16
  %17 = trunc i32 %16 to i8
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %17, ptr %18, align 1
  %19 = lshr i32 %2, 16
  %20 = trunc i32 %19 to i8
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 %20, ptr %21, align 1
  %22 = lshr i32 %3, 16
  %23 = trunc i32 %22 to i8
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %23, ptr %24, align 1
  %25 = lshr i32 %1, 24
  %26 = trunc nuw i32 %25 to i8
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %26, ptr %27, align 1
  %28 = lshr i32 %2, 24
  %29 = trunc nuw i32 %28 to i8
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 %29, ptr %30, align 1
  %31 = lshr i32 %3, 24
  %32 = trunc nuw i32 %31 to i8
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 %32, ptr %33, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 0, ptr %i.c, align 1
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @is_feature_word_cpuid(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.g
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %i.a = getelementptr inbounds nuw [568 x i8], ptr @feature_word_info, i64 %indvars.iv ; 5 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 520
  %i.e = load i32, ptr %i.d, align 8
  %i.f = icmp eq i32 %i.e, %0
  br i1 %i.f, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 524
  %i.h = load i8, ptr %i.g, align 4, !range !10, !noundef !11
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 528
  %i.k = load i32, ptr %i.j, align 8
  %i.l = icmp eq i32 %i.k, %1
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 532
  %i.n = load i32, ptr %i.m, align 4
  %i.o = icmp eq i32 %i.n, %2
  br i1 %i.o, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.c, %bb.e, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 48
  br i1 %exitcond.not, label %bb.h, label %bb.b, !llvm.loop !16

bb.h:                                             ; preds = %bb.g, %bb.f
  %.lcssa = phi i1 [ false, %bb.g ], [ true, %bb.f ]
  ret i1 %.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @xsave_area_size(i64 noundef %0, i1 noundef zeroext %1) local_unnamed_addr #3 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @x86_ext_save_areas, i64 4), align 4 ; 4 uses
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = and i64 %0, 4
  %.not.us = icmp eq i64 %i.c, 0                  ; 2 uses
  br i1 %1, label %.split.us.preheader, label %.split.preheader

.split.preheader:                                 ; preds = %bb.a
  br i1 %.not.us, label %.split.1, label %bb.t

.split.us.preheader:                              ; preds = %bb.a
  br i1 %.not.us, label %.split.us.1, label %bb.b

bb.b:                                             ; preds = %.split.us.preheader
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @x86_ext_save_areas, i64 100), align 4
  %i.e = add i32 %i.d, %i.a
  %i.f = tail call i32 @llvm.umax.i32(i32 %i.a, i32 %i.e)
  %i.g = zext i32 %i.f to i64
  br label %.split.us.1

.split.us.1:                                      ; preds = %bb.b, %.split.us.preheader
  %.1.us = phi i64 [ %i.g, %bb.b ], [ %i.b, %.split.us.preheader ] ; 3 uses
  %i.h = and i64 %0, 8
  %.not.us.1 = icmp eq i64 %i.h, 0
  br i1 %.not.us.1, label %.split.us.2, label %bb.c

bb.c:                                             ; preds = %.split.us.1
  %i.i = trunc nuw i64 %.1.us to i32
  %i.j = load i32, ptr getelementptr inbounds nuw (i8, ptr @x86_ext_save_areas, i64 148), align 4
  %i.k = add i32 %i.j, %i.i
  %i.l = zext i32 %i.k to i64
  %i.m = tail call i64 @llvm.umax.i64(i64 %.1.us, i64 %i.l)
  br label %.split.us.2

.split.us.2:                                      ; preds = %bb.c, %.split.us.1
  %.1.us.1 = phi i64 [ %i.m, %bb.c ], [ %.1.us, %.split.us.1 ] ; 3 uses
  %i.n = and i64 %0, 16
  %.not.us.2 = icmp eq i64 %i.n, 0
  br i1 %.not.us.2, label %.split.us.3, label %bb.d

bb.d:                                             ; preds = %.split.us.2
  %i.o = trunc nuw i64 %.1.us.1 to i32
  %i.p = load i32, ptr getelementptr inbounds nuw (i8, ptr @x86_ext_save_areas, i64 196), align 4
  %i.q = add i32 %i.p, %i.o
  %i.r = zext i32 %i.q to i64
  %i.s = tail call i64 @llvm.umax.i64(i64 %.1.us.1, i64 %i.r)
  br label %.split.us.3

.split.us.3:                                      ; preds = %bb.d, %.split.us.2
  %.1.us.2 = phi i64 [ %i.s, %bb.d ], [ %.1.us.1, %.split.us.2 ] ; 3 uses
  %i.t = and i64 %0, 32
  %.not.us.3 = icmp eq i64 %i.t, 0
  br i1 %.not.us.3, label %.split.us.4, label %bb.e

bb.e:                                             ; preds = %.split.us.3
  %i.u = trunc nuw i64 %.1.us.2 to i32
  %i.v = load i32, ptr getelementptr inbounds nuw (i8, ptr @x86_ext_save_areas, i64 244), align 4
  %i.w = add i32 %i.v, %i.u
  %i.x = zext i32 %i.w to i64
  %i.y = tail call i64 @llvm.umax.i64(i64 %.1.us.2, i64 %i.x)
  br label %.split.us.4

.split.us.4:                                      ; preds = %bb.e, %.split.us.3
  %.1.us.3 = phi i64 [ %i.y, %bb.e ], [ %.1.us.2, %.split.us.3 ] ; 3 uses
  %i.z = and i64 %0, 64
  %.not.us.4 = icmp eq i64 %i.z, 0
  br i1 %.not.us.4, label %.split.us.5, label %bb.f

bb.f:                                             ; preds = %.split.us.4
  %i.aa = trunc nuw i64 %.1.us.3 to i32
  %i.ab = load i32, ptr getelementptr inbounds nuw (i8, ptr @x86_ext_save_areas, i64 292), align 4
  %i.ac = add i32 %i.ab, %i.aa
  %i.ad = zext i32 %i.ac to i64
  %i.ae = tail call i64 @llvm.umax.i64(i64 %.1.us.3, i64 %i.ad)
  br label %.split.us.5

.split.us.5:                                      ; preds = %bb.f, %.split.us.4
  %.1.us.4 = phi i64 [ %i.ae, %bb.f ], [ %.1.us.3, %.split.us.4 ] ; 3 uses
  %i.af = and i64 %0, 128
  %.not.us.5 = icmp eq i64 %i.af, 0
  br i1 %.not.us.5, label %.split.us.6, label %bb.g

bb.g:                                             ; preds = %.split.us.5
  %i.ag = trunc nuw i64 %.1.us.4 to i32
  %i.ah = load i32, ptr getelementptr inbounds nuw (i8, ptr @x86_ext_save_areas, i64 340), align 4
  %i.ai = add i32 %i.ah, %i.ag
  %i.aj = zext i32 %i.ai to i64
  %i.ak = tail call i64 @llvm.umax.i64(i64 %.1.us.4, i64 %i.aj)
  br label %.split.us.6

.split.us.6:                                      ; preds = %bb.g, %.split.us.5
  %.1.us.5 = phi i64 [ %i.ak, %bb.g ], [ %.1.us.4, %.split.us.5 ] ; 3 uses
  %i.al = and i64 %0, 256
  %.not.us.6 = icmp eq i64 %i.al, 0
  br i1 %.not.us.6, label %.split.us.7, label %bb.h

bb.h:                                             ; preds = %.split.us.6
  %i.am = trunc nuw i64 %.1.us.5 to i32
  %i.an = load i32, ptr getelementptr inbounds nuw (i8, ptr @x86_ext_save_areas, i64 388), align 4
  %i.ao = add i32 %i.an, %i.am
  %i.ap = zext i32 %i.ao to i64
  %i.aq = tail call i64 @llvm.umax.i64(i64 %.1.us.5, i64 %i.ap)
  br label %.split.us.7

.split.us.7:                                      ; preds = %bb.h, %.split.us.6
  %.1.us.6 = phi i64 [ %i.aq, %bb.h ], [ %.1.us.5, %.split.us.6 ] ; 3 uses
  %i.ar = and i64 %0, 512
  %.not.us.7 = icmp eq i64 %i.ar, 0
  br i1 %.not.us.7, label %.split.us.8, label %bb.i

bb.i:                                             ; preds = %.split.us.7
  %i.as = trunc nuw i64 %.1.us.6 to i32
  %i.at = load i32, ptr getelementptr inbounds nuw (i8, ptr @x86_ext_save_areas, i64 436), align 4
  %i.au = add i32 %i.at, %i.as
  %i.av = zext i32 %i.au to i64
  %i.aw = tail call i64 @llvm.umax.i64(i64 %.1.us.6, i64 %i.av)
  br label %.split.us.8

.split.us.8:                                      ; preds = %bb.i, %.split.us.7
  %.1.us.7 = phi i64 [ %i.aw, %bb.i ], [ %.1.us.6, %.split.us.7 ] ; 3 uses
  %i.ax = and i64 %0, 1024
  %.not.us.8 = icmp eq i64 %i.ax, 0
  br i1 %.not.us.8, label %.split.us.9, label %bb.j

bb.j:                                             ; preds = %.split.us.8
  %i.ay = trunc nuw i64 %.1.us.7 to i32
  %i.az = load i32, ptr getelementptr inbounds nuw (i8, ptr @x86_ext_save_areas, i64 484), align 4
  %i.ba = add i32 %i.az, %i.ay
  %i.bb = zext i32 %i.ba to i64
  %i.bc = tail call i64 @llvm.umax.i64(i64 %.1.us.7, i64 %i.bb)
  br label %.split.us.9

.split.us.9:                                      ; preds = %bb.j, %.split.us.8
  %.1.us.8 = phi i64 [ %i.bc, %bb.j ], [ %.1.us.7, %.split.us.8 ] ; 3 uses
  %i.bd = and i64 %0, 2048
  %.not.us.9 = icmp eq i64 %i.bd, 0
  br i1 %.not.us.9, label %.split.us.10, label %bb.k

bb.k:                                             ; preds = %.split.us.9
  %i.be = trunc nuw i64 %.1.us.8 to i32
  %i.bf = load i32, ptr getelementptr inbounds nuw (i8, ptr @x86_ext_save_areas, i64 532), align 4
end_hunk_0
begin_hunk_1_@x86_disas_set_info:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16800
  %i.d = load i32, ptr %i.c, align 16             ; 2 uses
  %i.e = and i32 %i.d, 32768
  %.not = icmp eq i32 %i.e, 0
  %i.f = lshr i32 %i.d, 4
  %.lobit = and i32 %i.f, 1
  %i.g = xor i32 %.lobit, 1
  %narrow = select i1 %.not, i32 %i.g, i32 3
  %i.h = zext nneg i32 %narrow to i64
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %i.h, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 200
  store <4 x i32> <i32 -1, i32 0, i32 1, i32 8>, ptr %i.j, align 8
  ret void
}

declare ptr @object_class_property_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define internal void @x86_cpuid_version_get_family(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3, ptr noundef %4) #4 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.461, ptr noundef nonnull @.str.462, i32 noundef 31, ptr noundef nonnull @__func__.X86_CPU) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 30200
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %i.e = lshr i32 %i.d, 8
  %i.f = and i32 %i.e, 15                         ; 2 uses
  %i.g = icmp eq i32 %i.f, 15
  %i.h = lshr i32 %i.d, 20
  %i.i = and i32 %i.h, 255
  %i.j = add nuw nsw i32 %i.i, 15
  %.0.i = select i1 %i.g, i32 %i.j, i32 %i.f
  %i.k = zext nneg i32 %.0.i to i64
  store i64 %i.k, ptr %i.a, align 8
  %i.l = call zeroext i1 @visit_type_uint64(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %i.a, ptr noundef %4) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @x86_cpuid_version_set_family(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3, ptr noundef %4) #4 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.461, ptr noundef nonnull @.str.462, i32 noundef 31, ptr noundef nonnull @__func__.X86_CPU) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 0, ptr %i.a, align 8, !annotation !15
  %i.c = call zeroext i1 @visit_type_uint64(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %i.a, ptr noundef %4) #20
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %i.a, align 8              ; 3 uses
  %i.e = icmp ugt i64 %i.d, 270
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq ptr %2, null
  %i.f = select i1 %.not, ptr @.str.643, ptr %2
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %4, ptr noundef nonnull @.str.408, i32 noundef 7542, ptr noundef nonnull @__func__.x86_cpuid_version_set_family, ptr noundef nonnull @.str.642, ptr noundef nonnull %i.f, i64 noundef 270) #20
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 30200 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8
  %i.i = and i32 %i.h, -267390721
  %i.j = icmp samesign ugt i64 %i.d, 15
  %.tr = trunc nuw nsw i64 %i.d to i32            ; 2 uses
  %i.k = shl nuw nsw i32 %.tr, 8
  %i.l = shl nuw nsw i32 %.tr, 20
  %i.m = add nsw i32 %i.l, -15724800
  %.pn = select i1 %i.j, i32 %i.m, i32 %i.k
  %storemerge = or i32 %i.i, %.pn
  store i32 %storemerge, ptr %i.g, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @x86_cpuid_version_get_model(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3, ptr noundef %4) #4 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.461, ptr noundef nonnull @.str.462, i32 noundef 31, ptr noundef nonnull @__func__.X86_CPU) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 30200
  %i.d = load i32, ptr %i.c, align 8              ; 3 uses
  %i.e = lshr i32 %i.d, 4
  %i.f = and i32 %i.e, 15
  %i.g = and i32 %i.d, 3584
  %i.h = icmp samesign ugt i32 %i.g, 1280
  %i.i = lshr i32 %i.d, 12
  %i.j = and i32 %i.i, 240
  %i.k = select i1 %i.h, i32 %i.j, i32 0
  %.0.i = or disjoint i32 %i.k, %i.f
  %i.l = zext nneg i32 %.0.i to i64
  store i64 %i.l, ptr %i.a, align 8
  %i.m = call zeroext i1 @visit_type_uint64(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %i.a, ptr noundef %4) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @x86_cpuid_version_set_model(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3, ptr noundef %4) #4 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.461, ptr noundef nonnull @.str.462, i32 noundef 31, ptr noundef nonnull @__func__.X86_CPU) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 0, ptr %i.a, align 8, !annotation !15
  %i.c = call zeroext i1 @visit_type_uint64(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %i.a, ptr noundef %4) #20
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %i.a, align 8              ; 3 uses
  %i.e = icmp ugt i64 %i.d, 255
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq ptr %2, null
  %i.f = select i1 %.not, ptr @.str.643, ptr %2
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %4, ptr noundef nonnull @.str.408, i32 noundef 7580, ptr noundef nonnull @__func__.x86_cpuid_version_set_model, ptr noundef nonnull @.str.642, ptr noundef nonnull %i.f, i64 noundef 255) #20
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 30200 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8
  %i.i = and i32 %i.h, -983281
  %i.j = shl nuw nsw i64 %i.d, 4
  %i.k = and i64 %i.j, 240
  %i.l = shl nuw nsw i64 %i.d, 12
  %i.m = and i64 %i.l, 983040
  %i.n = or disjoint i64 %i.k, %i.m
  %i.o = trunc nuw nsw i64 %i.n to i32
  %i.p = or disjoint i32 %i.i, %i.o
  store i32 %i.p, ptr %i.g, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @x86_cpuid_version_get_stepping(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3, ptr noundef %4) #4 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.461, ptr noundef nonnull @.str.462, i32 noundef 31, ptr noundef nonnull @__func__.X86_CPU) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 30200
  %i.d = load i32, ptr %i.c, align 8
  %i.e = and i32 %i.d, 15
  %i.f = zext nneg i32 %i.e to i64
  store i64 %i.f, ptr %i.a, align 8
  %i.g = call zeroext i1 @visit_type_uint64(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %i.a, ptr noundef %4) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @x86_cpuid_version_set_stepping(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3, ptr noundef %4) #4 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.461, ptr noundef nonnull @.str.462, i32 noundef 31, ptr noundef nonnull @__func__.X86_CPU) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 0, ptr %i.a, align 8, !annotation !15
  %i.c = call zeroext i1 @visit_type_uint64(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %i.a, ptr noundef %4) #20
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %i.a, align 8              ; 2 uses
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq ptr %2, null
  %i.f = select i1 %.not, ptr @.str.643, ptr %2
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %4, ptr noundef nonnull @.str.408, i32 noundef 7614, ptr noundef nonnull @__func__.x86_cpuid_version_set_stepping, ptr noundef nonnull @.str.642, ptr noundef nonnull %i.f, i64 noundef 15) #20
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 30200 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8
  %i.i = and i32 %i.h, -16
  %i.j = trunc nuw nsw i64 %i.d to i32
  %i.k = or disjoint i32 %i.i, %i.j
  store i32 %i.k, ptr %i.g, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void
}

declare ptr @object_class_property_add_str(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define internal noalias noundef ptr @x86_cpuid_get_vendor(ptr noundef %0, ptr nofree readnone captures(none) %1) #4 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.461, ptr noundef nonnull @.str.462, i32 noundef 31, ptr noundef nonnull @__func__.X86_CPU) #20 ; 3 uses
  %i.b = tail call noalias dereferenceable_or_null(13) ptr @g_malloc(i64 noundef 13) #23 ; 14 uses
  %2 = getelementptr inbounds nuw i8, ptr %i.a, i64 30188
  %3 = load i32, ptr %2, align 4                  ; 4 uses
  %4 = getelementptr inbounds nuw i8, ptr %i.a, i64 30192
  %5 = load i32, ptr %4, align 16                 ; 4 uses
  %6 = getelementptr inbounds nuw i8, ptr %i.a, i64 30196
  %7 = load i32, ptr %6, align 4                  ; 4 uses
  %8 = trunc i32 %3 to i8
  store i8 %8, ptr %i.b, align 1
  %9 = trunc i32 %5 to i8
  %10 = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i8 %9, ptr %10, align 1
  %11 = trunc i32 %7 to i8
  %12 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 %11, ptr %12, align 1
  %13 = lshr i32 %3, 8
  %14 = trunc i32 %13 to i8
  %15 = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %14, ptr %15, align 1
  %16 = lshr i32 %5, 8
  %17 = trunc i32 %16 to i8
  %18 = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  store i8 %17, ptr %18, align 1
  %19 = lshr i32 %7, 8
  %20 = trunc i32 %19 to i8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  store i8 %20, ptr %i.c, align 1
  %21 = lshr i32 %3, 16
  %22 = trunc i32 %21 to i8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %22, ptr %i.d, align 1
  %23 = lshr i32 %5, 16
  %24 = trunc i32 %23 to i8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  store i8 %24, ptr %i.e, align 1
  %25 = lshr i32 %7, 16
  %26 = trunc i32 %25 to i8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  store i8 %26, ptr %i.f, align 1
  %27 = lshr i32 %3, 24
  %28 = trunc nuw i32 %27 to i8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  store i8 %28, ptr %i.g, align 1
  %29 = lshr i32 %5, 24
  %30 = trunc nuw i32 %29 to i8
  %31 = getelementptr inbounds nuw i8, ptr %i.b, i64 7
  store i8 %30, ptr %31, align 1
  %32 = lshr i32 %7, 24
  %33 = trunc nuw i32 %32 to i8
  %34 = getelementptr inbounds nuw i8, ptr %i.b, i64 11
  store i8 %33, ptr %34, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i8 0, ptr %i.h, align 1
  ret ptr %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @x86_cpuid_set_vendor(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #4 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.461, ptr noundef nonnull @.str.462, i32 noundef 31, ptr noundef nonnull @__func__.X86_CPU) #20 ; 3 uses
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #22
  %.not = icmp eq i64 %i.b, 12
  br i1 %.not, label %.loopexit.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %2, ptr noundef nonnull @.str.408, i32 noundef 7643, ptr noundef nonnull @__func__.x86_cpuid_set_vendor, ptr noundef nonnull @.str.644) #20
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 30188 ; 5 uses
  store i32 0, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 30192 ; 5 uses
  store i32 0, ptr %i.d, align 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 30196 ; 5 uses
  store i32 0, ptr %i.e, align 4
  %i.f = load i8, ptr %1, align 1
  %i.g = zext i8 %i.f to i32                      ; 2 uses
  store i32 %i.g, ptr %i.c, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = load i8, ptr %i.h, align 1
  %i.j = zext i8 %i.i to i32                      ; 2 uses
  store i32 %i.j, ptr %i.d, align 16
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i8, ptr %i.k, align 1
  %i.m = zext i8 %i.l to i32                      ; 2 uses
  store i32 %i.m, ptr %i.e, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.o = load i8, ptr %i.n, align 1
  %i.p = zext i8 %i.o to i32
  %i.q = shl nuw nsw i32 %i.p, 8
  %i.r = or disjoint i32 %i.q, %i.g               ; 2 uses
  store i32 %i.r, ptr %i.c, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.t = load i8, ptr %i.s, align 1
  %i.u = zext i8 %i.t to i32
  %i.v = shl nuw nsw i32 %i.u, 8
  %i.w = or disjoint i32 %i.v, %i.j               ; 2 uses
  store i32 %i.w, ptr %i.d, align 16
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.y = load i8, ptr %i.x, align 1
  %i.z = zext i8 %i.y to i32
  %i.aa = shl nuw nsw i32 %i.z, 8
  %i.ab = or disjoint i32 %i.aa, %i.m             ; 2 uses
  store i32 %i.ab, ptr %i.e, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = zext i8 %i.ad to i32
  %i.af = shl nuw nsw i32 %i.ae, 16
  %i.ag = or disjoint i32 %i.af, %i.r             ; 2 uses
  store i32 %i.ag, ptr %i.c, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = zext i8 %i.ai to i32
  %i.ak = shl nuw nsw i32 %i.aj, 16
  %i.al = or disjoint i32 %i.ak, %i.w             ; 2 uses
  store i32 %i.al, ptr %i.d, align 16
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = zext i8 %i.an to i32
  %i.ap = shl nuw nsw i32 %i.ao, 16
  %i.aq = or disjoint i32 %i.ap, %i.ab            ; 2 uses
  store i32 %i.aq, ptr %i.e, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.as = load i8, ptr %i.ar, align 1
  %i.at = zext i8 %i.as to i32
  %i.au = shl nuw i32 %i.at, 24
  %i.av = or disjoint i32 %i.au, %i.ag
  store i32 %i.av, ptr %i.c, align 4
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.ax = load i8, ptr %i.aw, align 1
  %i.ay = zext i8 %i.ax to i32
  %i.az = shl nuw i32 %i.ay, 24
  %i.ba = or disjoint i32 %i.az, %i.al
  store i32 %i.ba, ptr %i.d, align 16
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.bc = load i8, ptr %i.bb, align 1
  %i.bd = zext i8 %i.bc to i32
  %i.be = shl nuw i32 %i.bd, 24
  %i.bf = or disjoint i32 %i.be, %i.aq
  store i32 %i.bf, ptr %i.e, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.b
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal noalias noundef ptr @x86_cpuid_get_model_id(ptr noundef %0, ptr nofree readnone captures(none) %1) #4 {
vector.ph:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.461, ptr noundef nonnull @.str.462, i32 noundef 31, ptr noundef nonnull @__func__.X86_CPU) #20
  %i.b = tail call noalias dereferenceable_or_null(49) ptr @g_malloc(i64 noundef 49) #23 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 30984
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.d = lshr exact i64 %index, 2
  %i.e = and i64 %i.d, 1073741823
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.e
  %i.g = load i32, ptr %i.f, align 4
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.g, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.h = shl nuw nsw <4 x i32> %vec.ind, splat (i32 3)
  %i.i = and <4 x i32> %i.h, splat (i32 24)
  %i.j = lshr <4 x i32> %broadcast.splat, %i.i
  %i.k = trunc <4 x i32> %i.j to <4 x i8>
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 %index
  store <4 x i8> %i.k, ptr %i.l, align 1
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %i.m = icmp eq i64 %index.next, 48
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !41

middle.block:                                     ; preds = %vector.body
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i8 0, ptr %i.n, align 1
  ret ptr %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @x86_cpuid_set_model_id(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree readnone captures(none) %2) #4 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.461, ptr noundef nonnull @.str.462, i32 noundef 31, ptr noundef nonnull @__func__.X86_CPU) #20
  %i.b = icmp eq ptr %1, null
  %spec.store.select = select i1 %i.b, ptr @.str.411, ptr %1 ; 2 uses
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %spec.store.select) #22
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 30984 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %i.d, i8 noundef 0, i64 noundef 48, i1 noundef false) #20
  %sext = shl i64 %i.c, 32
  %i.e = ashr exact i64 %sext, 32
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.d
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.d ] ; 5 uses
  %.not = icmp slt i64 %indvars.iv, %i.e
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %spec.store.select, i64 %indvars.iv
  %i.g = load i8, ptr %i.f, align 1
  %i.h = zext i8 %i.g to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.014 = phi i32 [ %i.h, %bb.c ], [ 0, %bb.b ]
  %indvars.iv.tr = trunc nuw nsw i64 %indvars.iv to i32
  %i.i = shl nuw nsw i32 %indvars.iv.tr, 3
  %i.j = and i32 %i.i, 24
  %i.k = shl nuw i32 %.014, %i.j
  %i.l = lshr i64 %indvars.iv, 2
  %i.m = and i64 %i.l, 1073741823
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.m ; 2 uses
  %i.o = load i32, ptr %i.n, align 4
  %i.p = or i32 %i.o, %i.k
  store i32 %i.p, ptr %i.n, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 48
  br i1 %exitcond.not, label %bb.e, label %bb.b, !llvm.loop !44

bb.e:                                             ; preds = %bb.d
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @x86_cpuid_get_tsc_freq(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3, ptr noundef %4) #4 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.461, ptr noundef nonnull @.str.462, i32 noundef 31, ptr noundef nonnull @__func__.X86_CPU) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 31344
  %i.d = load i64, ptr %i.c, align 16
  %i.e = mul i64 %i.d, 1000
  store i64 %i.e, ptr %i.a, align 8
  %i.f = call zeroext i1 @visit_type_int(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %i.a, ptr noundef %4) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @x86_cpuid_set_tsc_freq(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3, ptr noundef %4) #4 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.461, ptr noundef nonnull @.str.462, i32 noundef 31, ptr noundef nonnull @__func__.X86_CPU) #20 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 0, ptr %i.a, align 8, !annotation !15
  %i.c = call zeroext i1 @visit_type_int(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %i.a, ptr noundef %4) #20
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %i.a, align 8              ; 2 uses
end_hunk_1
