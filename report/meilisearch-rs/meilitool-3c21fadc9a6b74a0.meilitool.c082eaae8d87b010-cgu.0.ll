Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/meilitool-3c21fadc9a6b74a0.meilitool.c082eaae8d87b010-cgu.0?download=true
inline.NumInlined: 19729
inline.NumDeleted: 8931
loop-unroll.NumCompletelyUnrolled: 99
loop-unroll.NumRuntimeUnrolled: 159
loop-unroll.NumUnrolled: 258
loop-unroll.NumUnrolledNotLatch: 3
begin_hunk_0
@2864 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @2862, [8 x i8] c"\15\00\00\00\00\00\00\00", ptr @2863, [8 x i8] c" \00\00\00\00\00\00\00" }>, align 8
@2865 = private unnamed_addr constant [40 x i8] c"Deleting the content files from disk...\0A", align 1
@2866 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @2865, [8 x i8] c"(\00\00\00\00\00\00\00" }>, align 8
@2867 = private unnamed_addr constant [26 x i8] c" content files from disk!\0A", align 1
@2868 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @2862, [8 x i8] c"\15\00\00\00\00\00\00\00", ptr @2867, [8 x i8] c"\1A\00\00\00\00\00\00\00" }>, align 8
@2869 = private unnamed_addr constant [21 x i8] c"Error while deleting ", align 1
@2870 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @2869, [8 x i8] c"\15\00\00\00\00\00\00\00", ptr @2802, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @2484, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@2871 = private unnamed_addr constant [30 x i8] c"Error while reading a file in ", align 1
@2872 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @2871, [8 x i8] c"\1E\00\00\00\00\00\00\00", ptr @2802, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @2484, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@2873 = private unnamed_addr constant [36 x i8] c"While trying to read the content of ", align 1
@2874 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @2873, [8 x i8] c"$\00\00\00\00\00\00\00" }>, align 8
@2875 = private unnamed_addr constant [9 x i8] c"Skipping ", align 1
@2876 = private unnamed_addr constant [11 x i8] c" documents\0A", align 1
@2877 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @2875, [8 x i8] c"\09\00\00\00\00\00\00\00", ptr @2876, [8 x i8] c"\0B\00\00\00\00\00\00\00" }>, align 8
@2878 = private unnamed_addr constant [13 x i8] c"Starting the ", align 1
@2879 = private unnamed_addr constant [12 x i8] c"th document\0A", align 1
@2880 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @2878, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr @2879, [8 x i8] c"\0C\00\00\00\00\00\00\00" }>, align 8
@2881 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2836, [16 x i8] c"\1C\00\00\00\00\00\00\00y\02\00\00Y\00\00\00" }>, align 8
@2882 = private unnamed_addr constant [15 x i8] c"internal docid=", align 1
@2883 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @2882, [8 x i8] c"\0F\00\00\00\00\00\00\00" }>, align 8
@2884 = private unnamed_addr constant [12 x i8] c"Missing the ", align 1
@2885 = private unnamed_addr constant [9 x i8] c" database", align 1
@2886 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @2884, [8 x i8] c"\0C\00\00\00\00\00\00\00", ptr @2885, [8 x i8] c"\09\00\00\00\00\00\00\00" }>, align 8
@2887 = private unnamed_addr constant [18 x i8] c"While opening the ", align 1
@2888 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @2887, [8 x i8] c"\12\00\00\00\00\00\00\00", ptr @2885, [8 x i8] c"\09\00\00\00\00\00\00\00" }>, align 8
@2889 = private unnamed_addr constant [14 x i8] c" poly database", align 1
@2890 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @2887, [8 x i8] c"\12\00\00\00\00\00\00\00", ptr @2889, [8 x i8] c"\0E\00\00\00\00\00\00\00" }>, align 8
@2891 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @2884, [8 x i8] c"\0C\00\00\00\00\00\00\00", ptr @2889, [8 x i8] c"\0E\00\00\00\00\00\00\00" }>, align 8
@2892 = private unnamed_addr constant [19 x i8] c"While clearing the ", align 1
@2893 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @2892, [8 x i8] c"\13\00\00\00\00\00\00\00", ptr @2885, [8 x i8] c"\09\00\00\00\00\00\00\00" }>, align 8
@2894 = private unnamed_addr constant [31 x i8] c"While checking the version file", align 1
@2895 = private unnamed_addr constant [97 x i8] c"While parsing `--target-version`. Make sure `--target-version` is in the format MAJOR.MINOR.PATCH", align 1
@2896 = private unnamed_addr constant [26 x i8] c"Starting the upgrade from ", align 1
@2897 = private unnamed_addr constant [4 x i8] c" to ", align 1
@2898 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @2896, [8 x i8] c"\1A\00\00\00\00\00\00\00", ptr @211, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @211, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @2897, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @211, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @211, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @2484, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@2899 = private unnamed_addr constant [54 x i8] c"No upgrade operation to perform, writing VERSION file\0A", align 1
@2900 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @2899, [8 x i8] c"6\00\00\00\00\00\00\00" }>, align 8
@2901 = private unnamed_addr constant [44 x i8] c"while writing VERSION file after the upgrade", align 1
@2902 = private unnamed_addr constant [8 x i8] c"Success\0A", align 1
@2903 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @2902, [8 x i8] c"\08\00\00\00\00\00\00\00" }>, align 8
@2904 = private unnamed_addr constant [5 x i8] c"Done\0A", align 1
@2905 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @2904, [8 x i8] c"\05\00\00\00\00\00\00\00" }>, align 8
@2906 = private unnamed_addr constant [21 x i8] c"Writing VERSION file\0A", align 1
@2907 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @2906, [8 x i8] c"\15\00\00\00\00\00\00\00" }>, align 8
@2908 = private unnamed_addr constant [6 x i8] c"1.10.0", align 1
@2909 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @2908, [8 x i8] c"\06\00\00\00\00\00\00\00" }>, align 8
@2910 = private unnamed_addr constant [6 x i8] c"1.12.7", align 1
@2911 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @2910, [8 x i8] c"\06\00\00\00\00\00\00\00" }>, align 8
@2912 = private unnamed_addr constant [27 x i8] c"Unsupported target version ", align 1
@2913 = private unnamed_addr constant [41 x i8] c". Can only upgrade to versions in range [", align 1
@2914 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @2912, [8 x i8] c"\1B\00\00\00\00\00\00\00", ptr @211, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @211, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @2913, [8 x i8] c")\00\00\00\00\00\00\00", ptr @209, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @141, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@2915 = private unnamed_addr constant [5 x i8] c"1.9.0", align 1
@2916 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @2915, [8 x i8] c"\05\00\00\00\00\00\00\00" }>, align 8
@2917 = private unnamed_addr constant [28 x i8] c"Unsupported current version ", align 1
@2918 = private unnamed_addr constant [43 x i8] c". Can only upgrade from versions in range [", align 1
@2919 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @2917, [8 x i8] c"\1C\00\00\00\00\00\00\00", ptr @211, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @211, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @2918, [8 x i8] c"+\00\00\00\00\00\00\00", ptr @209, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @141, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@2920 = private unnamed_addr constant [22 x i8] c"Cannot downgrade from ", align 1
@2921 = private unnamed_addr constant [25 x i8] c". Downgrade not supported", align 1
@2922 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @2920, [8 x i8] c"\16\00\00\00\00\00\00\00", ptr @211, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @211, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @2897, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @211, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @211, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @2921, [8 x i8] c"\19\00\00\00\00\00\00\00" }>, align 8
@2923 = private unnamed_addr constant [52 x i8] c"Database is already at the target version. Exiting.\0A", align 1
@2924 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @2923, [8 x i8] c"4\00\00\00\00\00\00\00" }>, align 8
@2925 = private unnamed_addr constant [33 x i8] c"Upgrading from v1.9.0 to v1.10.0\0A", align 1
@2926 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @2925, [8 x i8] c"!\00\00\00\00\00\00\00" }>, align 8
@2927 = private unnamed_addr constant [11 x i8] c"index-stats", align 1
@2928 = private unnamed_addr constant [35 x i8] c"while reading the number of indexes", align 1
@2929 = private unnamed_addr constant [32 x i8] c"Update can take place, updating\0A", align 1
@2930 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @2929, [8 x i8] c" \00\00\00\00\00\00\00" }>, align 8
@2931 = private unnamed_addr constant [54 x i8] c"while committing the write txn for the index-scheduler", align 1
@2932 = private unnamed_addr constant [29 x i8] c"Upgrading database succeeded\0A", align 1
@2933 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @2932, [8 x i8] c"\1D\00\00\00\00\00\00\00" }>, align 8
@2934 = private unnamed_addr constant [17 x i8] c"]Updating index `", align 1
@2935 = private unnamed_addr constant [6 x i8] c"` at `", align 1
@2936 = private unnamed_addr constant [2 x i8] c"`\0A", align 1
@2937 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @137, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @2757, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @2934, [8 x i8] c"\11\00\00\00\00\00\00\00", ptr @2935, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @2936, [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@2938 = private unnamed_addr constant [24 x i8] c"\09- Updating index stats\0A", align 1
@2939 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @2938, [8 x i8] c"\18\00\00\00\00\00\00\00" }>, align 8
@2940 = private unnamed_addr constant [24 x i8] c"\09- Updating date format\0A", align 1
@2941 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @2940, [8 x i8] c"\18\00\00\00\00\00\00\00" }>, align 8
@2942 = private unnamed_addr constant [112 x i8] c"The update cannot take place because there are REST embedder(s). Remove them before proceeding with the update:\0A", align 1
@2943 = private unnamed_addr constant [72 x i8] c"\0A\0AThe database has not been modified and is still a valid v1.9 database.", align 1
@2944 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @2942, [8 x i8] c"p\00\00\00\00\00\00\00", ptr @2943, [8 x i8] c"H\00\00\00\00\00\00\00" }>, align 8
@2945 = private unnamed_addr constant [43 x i8] c"]Checking that update can take place for  `", align 1
@2946 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @137, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @2757, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @2945, [8 x i8] c"+\00\00\00\00\00\00\00", ptr @2935, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @2936, [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@2947 = private unnamed_addr constant [56 x i8] c"\09- Checking for incompatible embedders (REST embedders)\0A", align 1
@2948 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @2947, [8 x i8] c"8\00\00\00\00\00\00\00" }>, align 8
@2949 = private unnamed_addr constant [38 x i8] c"crates/meilitool/src/upgrade/v1_10.rs\00", align 1
@2950 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2949, [16 x i8] c"%\00\00\00\00\00\00\00\E8\00\00\00\1F\00\00\00" }>, align 8
@2951 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2949, [16 x i8] c"%\00\00\00\00\00\00\00\EB\00\00\00\1C\00\00\00" }>, align 8
@2952 = private unnamed_addr constant [46 x i8] c"while obtaining a write transaction for index ", align 1
@2953 = private unnamed_addr constant [4 x i8] c" at ", align 1
@2954 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @2952, [8 x i8] c".\00\00\00\00\00\00\00", ptr @2953, [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
@2955 = private unnamed_addr constant [20 x i8] c"while opening index ", align 1
@2956 = private unnamed_addr constant [5 x i8] c" at '", align 1
@2957 = private unnamed_addr constant [1 x i8] c"'", align 1
@2958 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @2955, [8 x i8] c"\14\00\00\00\00\00\00\00", ptr @2956, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @2957, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@2959 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2949, [16 x i8] c"%\00\00\00\00\00\00\00\F2\00\00\00D\00\00\00" }>, align 8
@2960 = private unnamed_addr constant [47 x i8] c"while obtaining a write transaction for index `", align 1
@2961 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @2960, [8 x i8] c"/\00\00\00\00\00\00\00", ptr @2935, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @92, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@2962 = private unnamed_addr constant [42 x i8] c"while committing the write txn for index `", align 1
@2963 = private unnamed_addr constant [5 x i8] c"` at ", align 1
@2964 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @2962, [8 x i8] c"*\00\00\00\00\00\00\00", ptr @2963, [8 x i8] c"\05\00\00\00\00\00\00\00" }>, align 8
@2965 = private unnamed_addr constant [13 x i8] c"\09- embedder `", align 1
@2966 = private unnamed_addr constant [12 x i8] c"` in index `", align 1
@2967 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @2965, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr @2966, [8 x i8] c"\0C\00\00\00\00\00\00\00", ptr @92, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@2968 = private unnamed_addr constant [16 x i8] c"could not read `", align 1
@2969 = private unnamed_addr constant [40 x i8] c"` while updating date format for index `", align 1
@2970 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @2968, [8 x i8] c"\10\00\00\00\00\00\00\00", ptr @2969, [8 x i8] c"(\00\00\00\00\00\00\00", ptr @92, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@2971 = private unnamed_addr constant [17 x i8] c"could not write `", align 1
@2972 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @2971, [8 x i8] c"\11\00\00\00\00\00\00\00", ptr @2969, [8 x i8] c"(\00\00\00\00\00\00\00", ptr @92, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@2973 = private unnamed_addr constant [10 x i8] c"created-at", align 1
@2974 = private unnamed_addr constant [10 x i8] c"updated-at", align 1
@2975 = private unnamed_addr constant [38 x i8] c"while updating date format for index `", align 1
@2976 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @2975, [8 x i8] c"&\00\00\00\00\00\00\00", ptr @92, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@2977 = private unnamed_addr constant [19 x i8] c"While reading value", align 1
@2978 = private unnamed_addr constant [19 x i8] c"While writing value", align 1
@2979 = private unnamed_addr constant [38 x i8] c"while updating index stats for index `", align 1
@2980 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @2979, [8 x i8] c"&\00\00\00\00\00\00\00", ptr @92, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@2981 = private unnamed_addr constant [17 x i8] c"embedding_configs", align 1
@2982 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2949, [16 x i8] c"%\00\00\00\00\00\00\00}\00\00\00\1C\00\00\00" }>, align 8
@2983 = private unnamed_addr constant [41 x i8] c"while checking REST embedders for index `", align 1
@2984 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @2983, [8 x i8] c")\00\00\00\00\00\00\00", ptr @92, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@2985 = private unnamed_addr constant [34 x i8] c"Upgrading from v1.10.0 to v1.11.0\0A", align 1
@2986 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @2985, [8 x i8] c"\22\00\00\00\00\00\00\00" }>, align 8
@2987 = private unnamed_addr constant [26 x i8] c"]Updating embeddings for `", align 1
@2988 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @137, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @2757, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @2987, [8 x i8] c"\1A\00\00\00\00\00\00\00", ptr @2935, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @2936, [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@2989 = private unnamed_addr constant [45 x i8] c"while obtaining a read transaction for index ", align 1
@2990 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @2989, [8 x i8] c"-\00\00\00\00\00\00\00", ptr @2953, [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
@2991 = private unnamed_addr constant [25 x i8] c"storing stats for index `", align 1
@2992 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @2991, [8 x i8] c"\19\00\00\00\00\00\00\00", ptr @92, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@2993 = private unnamed_addr constant [34 x i8] c"Upgrading from v1.11.0 to v1.12.0\0A", align 1
@2994 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @2993, [8 x i8] c"\22\00\00\00\00\00\00\00" }>, align 8
@2995 = private unnamed_addr constant [42 x i8] c"Upgrading from v1.12.{0, 1, 2} to v1.12.3\0A", align 1
@2996 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @2995, [8 x i8] c"*\00\00\00\00\00\00\00" }>, align 8
@2997 = private unnamed_addr constant [70 x i8] c"Not rebuilding field distribution as it wasn't corrupted coming from v", align 1
@2998 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @2997, [8 x i8] c"F\00\00\00\00\00\00\00", ptr @211, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @211, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @2484, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@2999 = private unnamed_addr constant [38 x i8] c"while retrieving uuids from file store", align 1
@3000 = private unnamed_addr constant [37 x i8] c"while retrieving uuid from file store", align 1
@3001 = private unnamed_addr constant [4 x i8] c".tmp", align 1
@3002 = private unnamed_addr constant [53 x i8] c"while flushing update file bufwriter for update file ", align 1
@3003 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @3002, [8 x i8] c"5\00\00\00\00\00\00\00" }>, align 8
@3004 = private unnamed_addr constant [29 x i8] c"while persisting update file ", align 1
@3005 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @3004, [8 x i8] c"\1D\00\00\00\00\00\00\00" }>, align 8
@3006 = private unnamed_addr constant [47 x i8] c"while creating file store for update files dir ", align 1
@3007 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @3006, [8 x i8] c"/\00\00\00\00\00\00\00" }>, align 8
@3008 = private unnamed_addr constant [41 x i8] c"while creating bufwriter for update file ", align 1
@3009 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @3008, [8 x i8] c")\00\00\00\00\00\00\00" }>, align 8
@3010 = private unnamed_addr constant [33 x i8] c"while getting field name for fid ", align 1
@3011 = private unnamed_addr constant [17 x i8] c" for update file ", align 1
@3012 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @3010, [8 x i8] c"!\00\00\00\00\00\00\00", ptr @3011, [8 x i8] c"\11\00\00\00\00\00\00\00" }>, align 8
@3013 = private unnamed_addr constant [58 x i8] c"while reading documents from batch reader for update file ", align 1
@3014 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @3013, [8 x i8] c":\00\00\00\00\00\00\00" }>, align 8
@3015 = private unnamed_addr constant [35 x i8] c"while getting update file for uuid ", align 1
@3016 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @3015, [8 x i8] c"#\00\00\00\00\00\00\00" }>, align 8
@3017 = private unnamed_addr constant [54 x i8] c"while creating documents batch reader for update file ", align 1
@3018 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @3017, [8 x i8] c"6\00\00\00\00\00\00\00" }>, align 8
@3019 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2584, [16 x i8] c"%\00\00\00\00\00\00\00\92\00\00\00\05\00\00\00" }>, align 8
@3020 = private unnamed_addr constant [16 x i8] c"display_progress", align 1
@3021 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2584, [16 x i8] c"%\00\00\00\00\00\00\00\9F\00\00\00\0E\00\00\00" }>, align 8
@3022 = private unnamed_addr constant [12 x i8] c"Box<dyn Any>", align 1
@3023 = private unnamed_addr constant [39 x i8] c"WARN: the display thread panicked with ", align 1
@3024 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @3023, [8 x i8] c"'\00\00\00\00\00\00\00", ptr @2484, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@3025 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @984, [16 x i8] c"K\00\00\00\00\00\00\00\E3\0B\00\00\0B\00\00\00" }>, align 8
@3026 = private unnamed_addr constant [33 x i8] c"\09- Rebuilding field distribution\0A", align 1
@3027 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @3026, [8 x i8] c"!\00\00\00\00\00\00\00" }>, align 8
@3028 = private unnamed_addr constant [35 x i8] c"while rebuilding field distribution", align 1
@3029 = private unnamed_addr constant [52 x i8] c"while committing the write txn for the updated index", align 1
@3030 = private unnamed_addr constant [27 x i8] c"computing stats for index `", align 1
@3031 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @3030, [8 x i8] c"\1B\00\00\00\00\00\00\00", ptr @92, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@3032 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr inttoptr (i64 1 to ptr), [8 x i8] zeroinitializer, ptr @2484, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@"switch.table._ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$17monday_based_week17h094b5de7c2f2099cE" = private unnamed_addr constant [13 x i16] [i16 -1, i16 -2, i16 -3, i16 -4, i16 -5, i16 -6, i16 0, i16 -1, i16 -2, i16 -3, i16 -4, i16 -5, i16 -6], align 2
@"switch.table._ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$17sunday_based_week17h797fbeeb879d1c7fE" = private unnamed_addr constant [13 x i16] [i16 -2, i16 -3, i16 -4, i16 -5, i16 -6, i16 0, i16 -1, i16 -2, i16 -3, i16 -4, i16 -5, i16 -6, i16 0], align 2
@switch.table._ZN3std2io5error5Error4kind17hcef9c5606d2f7459E = private unnamed_addr constant [122 x i8] c"\01\00)#))\22)))\0D&\01))\1C\0C\1F)\0E\0F\14)))\1D\1B\18\19\11 \0B))\1E!)$\10\12))))))))))))))))))))))))))))))))))))))))))))))))))))))$))\08\09\0A\05)\06\03))\07))\16\02)\04)'\13)))))\1A", align 1
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0d60f45d00066ebbE" = private unnamed_addr constant [4 x i8] c"\08\07\05\04", align 8
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0d60f45d00066ebbE.3081" = private unnamed_addr constant [4 x ptr] [ptr @1585, ptr @1586, ptr @1648, ptr @1588], align 8
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h42fe7e37fbcab8a7E" = private unnamed_addr constant [4 x i8] c"\08\07\04\04", align 8
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h42fe7e37fbcab8a7E.3082" = private unnamed_addr constant [4 x ptr] [ptr @1585, ptr @1586, ptr @1587, ptr @1588], align 8
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h5f4a2d037d6f7ebfE" = private unnamed_addr constant [4 x i8] c"\04\07\03\09", align 8
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h5f4a2d037d6f7ebfE.3083" = private unnamed_addr constant [4 x ptr] [ptr @1649, ptr @1650, ptr @1651, ptr @1652], align 8
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h789f4912a9b7289dE" = private unnamed_addr constant [5 x i8] c"\05\0C\0B\0B\04", align 8
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h789f4912a9b7289dE.3084" = private unnamed_addr constant [5 x ptr] [ptr @1876, ptr @1877, ptr @1878, ptr @1879, ptr @1880], align 8
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17ha320a9b34f9c73a6E" = private unnamed_addr constant [18 x i8] c"\06\05\08\07\06\0A\10\18\03\11\0F\07\08\07\0E\10\0C\0F", align 8
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17ha320a9b34f9c73a6E.3085" = private unnamed_addr constant [18 x ptr] [ptr @2556, ptr @2557, ptr @2558, ptr @2559, ptr @2560, ptr @2561, ptr @2562, ptr @2563, ptr @2564, ptr @2565, ptr @2566, ptr @2567, ptr @2568, ptr @2569, ptr @2570, ptr @2571, ptr @2572, ptr @2573], align 8
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hae319b62dfe00522E" = private unnamed_addr constant [4 x i8] c"\04\06\08\04", align 8
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hae319b62dfe00522E.3086" = private unnamed_addr constant [4 x ptr] [ptr @2619, ptr @2408, ptr @2409, ptr @1754], align 8
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hb4b9297243b76538E" = private unnamed_addr constant [9 x i8] c"\06\07\07\07\0B\08\08\0C\08", align 8
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hb4b9297243b76538E.3087" = private unnamed_addr constant [9 x ptr] [ptr @1342, ptr @1343, ptr @1344, ptr @1345, ptr @1346, ptr @1347, ptr @1348, ptr @1349, ptr @1350], align 8
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hcfa46120536cfcceE" = private unnamed_addr constant [75 x i8] c"-\16\1C\1E\1C$#\1E\18%#%\1D'%(0/.*& \18\0F\16\17\0F\1B!&\1B\0F\18\1E'\19&\1F\1C\16' 0 &\1E,&\12'$ \1C\1C\18\14%\22(\19 \1A(\15\18\1C\1C\18\1C\18\1D\12\1F\15\17", align 8
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hcfa46120536cfcceE.3089" = private unnamed_addr constant [75 x ptr] [ptr @1793, ptr @1794, ptr @1795, ptr @1796, ptr @1797, ptr @1798, ptr @1799, ptr @1800, ptr @1801, ptr @1802, ptr @1803, ptr @1804, ptr @1805, ptr @1806, ptr @1807, ptr @1808, ptr @1809, ptr @1810, ptr @1811, ptr @1812, ptr @1813, ptr @1814, ptr @1815, ptr @1816, ptr @1817, ptr @1818, ptr @1819, ptr @1820, ptr @1821, ptr @1822, ptr @1823, ptr @1824, ptr @1825, ptr @1826, ptr @1827, ptr @1828, ptr @1829, ptr @1830, ptr @1831, ptr @1832, ptr @1833, ptr @1834, ptr @1835, ptr @1836, ptr @1837, ptr @1838, ptr @1839, ptr @1840, ptr @1841, ptr @1842, ptr @1843, ptr @1844, ptr @1845, ptr @1846, ptr @1847, ptr @1848, ptr @1849, ptr @1850, ptr @1851, ptr @1852, ptr @1853, ptr @1854, ptr @1855, ptr @1856, ptr @1857, ptr @1858, ptr @1859, ptr @1860, ptr @1861, ptr @1862, ptr @1863, ptr @1864, ptr @1865, ptr @1866, ptr @1867], align 8
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hf91cf1ae8bee9533E" = private unnamed_addr constant [3 x i8] c"\06\06\04", align 8
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hf91cf1ae8bee9533E.3090" = private unnamed_addr constant [3 x ptr] [ptr @757, ptr @758, ptr @1649], align 8
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hff48d8583a3d7703E" = private unnamed_addr constant [3 x i8] c"\11\12\0B", align 8
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hff48d8583a3d7703E.3091" = private unnamed_addr constant [3 x ptr] [ptr @2462, ptr @2463, ptr @2464], align 8
@"switch.table._ZN4time10formatting11formattable142_$LT$impl$u20$time..formatting..formattable..sealed..Sealed$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$11format_into17hb72bf7a05ac58533E" = private unnamed_addr constant [13 x i8] c"\01\02\03\04\05\06\00\01\02\03\04\05\06", align 1
@switch.table._ZN4time4date4Date13iso_year_week17hc476b8733af73f1cE = private unnamed_addr constant [13 x i16] [i16 -2, i16 -3, i16 -4, i16 -5, i16 -6, i16 -7, i16 -1, i16 -2, i16 -3, i16 -4, i16 -5, i16 -6, i16 -7], align 2
@"switch.table._ZN60_$LT$url..parser..ParseError$u20$as$u20$core..fmt..Debug$GT$3fmt17hf870c4dc4e10bd38E" = private unnamed_addr constant [10 x i8] c"\09\09\0B\12\12\16\16 \19\08", align 8
@"switch.table._ZN60_$LT$url..parser..ParseError$u20$as$u20$core..fmt..Debug$GT$3fmt17hf870c4dc4e10bd38E.3092" = private unnamed_addr constant [10 x ptr] [ptr @1575, ptr @1576, ptr @1577, ptr @1578, ptr @1579, ptr @1580, ptr @1581, ptr @1582, ptr @1583, ptr @1584], align 8
@"switch.table._ZN76_$LT$milli..vector..settings..EmbedderSource$u20$as$u20$core..fmt..Debug$GT$3fmt17h6f1cd8c94d335d98E" = private unnamed_addr constant [6 x i8] c"\06\0B\06\0C\04\09", align 8
@"switch.table._ZN76_$LT$milli..vector..settings..EmbedderSource$u20$as$u20$core..fmt..Debug$GT$3fmt17h6f1cd8c94d335d98E.3093" = private unnamed_addr constant [6 x ptr] [ptr @757, ptr @756, ptr @758, ptr @759, ptr @760, ptr @2406], align 8
@"switch.table._ZN76_$LT$milli..vector..settings..NestingContext$u20$as$u20$core..fmt..Debug$GT$3fmt17h4e1de01cfa3d1cc8E" = private unnamed_addr constant [3 x i8] c"\09\06\08", align 8
@"switch.table._ZN76_$LT$milli..vector..settings..NestingContext$u20$as$u20$core..fmt..Debug$GT$3fmt17h4e1de01cfa3d1cc8E.3094" = private unnamed_addr constant [3 x ptr] [ptr @2407, ptr @2408, ptr @2409], align 8
@"switch.table._ZN88_$LT$meilitool..upgrade..v1_9..LegacyDateTime$u20$as$u20$serde_core..de..Deserialize$GT$11deserialize17h709b2cb294eff23fE" = private unnamed_addr constant [7 x i8] c"\01\02\03\04\05\06\00", align 2
@"switch.table._ZN88_$LT$meilitool..upgrade..v1_9..LegacyDateTime$u20$as$u20$serde_core..de..Deserialize$GT$11deserialize17h709b2cb294eff23fE.3096" = private unnamed_addr constant [13 x i16] [i16 -1, i16 -2, i16 -3, i16 -4, i16 -5, i16 -6, i16 -7, i16 -1, i16 -2, i16 -3, i16 -4, i16 -5, i16 -6], align 2

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef align 8 ptr @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17hadab19a2e1efb60bE"(ptr %.0.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 6 uses
  %i.b = alloca [6 x i8], align 4                 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !196)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !197)
  %i.c = load i64, ptr %.0.val, align 8, !range !22, !alias.scope !197, !noalias !198, !noundef !23
  %i.d = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 12 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !197, !noalias !198, !noundef !23 ; 4 uses
  %i.f = icmp sgt i64 %i.e, -1
  tail call void @llvm.assume(i1 %i.f)
  %i.g = sub nsw i64 %i.c, %i.e
  %i.h = icmp ugt i64 %i.g, 1
  br i1 %i.h, label %_ZN10serde_json3ser9Formatter12begin_string17hde0fd32e06c6e05dE.exit.thread.i, label %_ZN10serde_json3ser9Formatter12begin_string17hde0fd32e06c6e05dE.exit.i, !prof !24

_ZN10serde_json3ser9Formatter12begin_string17hde0fd32e06c6e05dE.exit.thread.i: ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199)
  %i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !200, !noalias !201, !nonnull !23, !noundef !23
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.e
  store i8 34, ptr %i.k, align 1, !noalias !202
  %i.l = add nuw i64 %i.e, 1
  store i64 %i.l, ptr %i.d, align 8, !alias.scope !200, !noalias !201
  br label %bb.b

_ZN10serde_json3ser9Formatter12begin_string17hde0fd32e06c6e05dE.exit.i: ; preds = %bb.a
  %i.m = tail call fastcc noundef ptr @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17h68241c519677f43aE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %.0.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @133, i64 noundef 1), !noalias !196 ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %bb.b, label %_ZN10serde_json3ser18format_escaped_str17hdac2baebdc3201d0E.exit.thread

bb.b:                                             ; preds = %_ZN10serde_json3ser9Formatter12begin_string17hde0fd32e06c6e05dE.exit.i, %_ZN10serde_json3ser9Formatter12begin_string17hde0fd32e06c6e05dE.exit.thread.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !203)
  %i.n = getelementptr inbounds nuw i8, ptr %.0.val, i64 8 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  br label %.outer.i.i

.outer.i.i:                                       ; preds = %_ZN10serde_json3ser9Formatter17write_char_escape17hccb180d2fcf3015bE.exit.i.i, %bb.b
  %.sroa.8.0.ph.i.i = phi i64 [ %i.aj, %_ZN10serde_json3ser9Formatter17write_char_escape17hccb180d2fcf3015bE.exit.i.i ], [ %1, %bb.b ] ; 8 uses
  %.sroa.01.0.ph.i.i = phi ptr [ %i.ah, %_ZN10serde_json3ser9Formatter17write_char_escape17hccb180d2fcf3015bE.exit.i.i ], [ %0, %bb.b ] ; 6 uses
  %exitcond.not.i.i29 = icmp eq i64 %.sroa.8.0.ph.i.i, 0
  br i1 %exitcond.not.i.i29, label %.outer.i.i._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.r = add i64 %.sroa.06.0.i.i30, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.r, %.sroa.8.0.ph.i.i
  br i1 %exitcond.not.i.i, label %.outer.i.i._crit_edge, label %.lr.ph

.outer.i.i._crit_edge:                            ; preds = %.outer.i.i, %bb.c
  %i.s = icmp eq i64 %.sroa.8.0.ph.i.i, 0
  %.pre18.i = load i64, ptr %i.d, align 8, !noalias !196 ; 5 uses
  br i1 %i.s, label %_ZN10serde_json3ser27format_escaped_str_contents17h12d2a4d347e339f3E.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %.outer.i.i._crit_edge
  call void @llvm.experimental.noalias.scope.decl(metadata !204)
  %i.t = load i64, ptr %.0.val, align 8, !range !22, !alias.scope !204, !noalias !205, !noundef !23
  %i.u = icmp sgt i64 %.pre18.i, -1
  call void @llvm.assume(i1 %i.u)
  %i.v = sub nsw i64 %i.t, %.pre18.i
  %i.w = icmp ult i64 %.sroa.8.0.ph.i.i, %i.v
  br i1 %i.w, label %bb.e, label %_ZN10serde_json3ser27format_escaped_str_contents17h12d2a4d347e339f3E.exit.i, !prof !24

bb.e:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !206)
  %i.x = load ptr, ptr %i.n, align 8, !alias.scope !207, !noalias !208, !nonnull !23, !noundef !23
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %.pre18.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.y, ptr noundef nonnull readonly align 1 dereferenceable(1) %.sroa.01.0.ph.i.i, i64 range(i64 1, -1) %.sroa.8.0.ph.i.i, i1 false), !noalias !207
  %i.z = add i64 %.pre18.i, %.sroa.8.0.ph.i.i     ; 2 uses
  store i64 %i.z, ptr %i.d, align 8, !alias.scope !207, !noalias !208
  br label %_ZN10serde_json3ser27format_escaped_str_contents17h12d2a4d347e339f3E.exit.thread.i

.lr.ph:                                           ; preds = %.outer.i.i, %bb.c
  %.sroa.06.0.i.i30 = phi i64 [ %i.r, %bb.c ], [ 0, %.outer.i.i ] ; 9 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.01.0.ph.i.i, i64 %.sroa.06.0.i.i30
  %i.ab = load i8, ptr %i.aa, align 1, !alias.scope !209, !noundef !23 ; 3 uses
  %i.ac = zext i8 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr @_ZN10serde_json3ser6ESCAPE17h0276473040442971E, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !noalias !209, !noundef !23 ; 3 uses
  %i.af = icmp eq i8 %i.ae, 0
  br i1 %i.af, label %bb.c, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.01.0.ph.i.i, i64 %.sroa.06.0.i.i30
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  %i.ai = xor i64 %.sroa.06.0.i.i30, -1
  %i.aj = add i64 %.sroa.8.0.ph.i.i, %i.ai
  %i.ak = icmp eq i64 %.sroa.06.0.i.i30, 0
  br i1 %i.ak, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !210)
  %i.al = load i64, ptr %.0.val, align 8, !range !22, !alias.scope !210, !noalias !211, !noundef !23
  %i.am = load i64, ptr %i.d, align 8, !alias.scope !210, !noalias !211, !noundef !23 ; 4 uses
  %i.an = icmp sgt i64 %i.am, -1
  call void @llvm.assume(i1 %i.an)
  %i.ao = sub nsw i64 %i.al, %i.am
  %i.ap = icmp ult i64 %.sroa.06.0.i.i30, %i.ao
  br i1 %i.ap, label %_ZN10serde_json3ser9Formatter21write_string_fragment17h7f5eb506a2bd3c49E.exit26.thread.i.i, label %_ZN10serde_json3ser9Formatter21write_string_fragment17h7f5eb506a2bd3c49E.exit26.i.i, !prof !24

_ZN10serde_json3ser9Formatter21write_string_fragment17h7f5eb506a2bd3c49E.exit26.thread.i.i: ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !212)
  %i.aq = load ptr, ptr %i.n, align 8, !alias.scope !213, !noalias !214, !nonnull !23, !noundef !23
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ar, ptr noundef nonnull readonly align 1 dereferenceable(1) %.sroa.01.0.ph.i.i, i64 range(i64 1, -1) %.sroa.06.0.i.i30, i1 false), !noalias !213
  %i.as = add i64 %i.am, %.sroa.06.0.i.i30
  store i64 %i.as, ptr %i.d, align 8, !alias.scope !213, !noalias !214
  br label %bb.h

_ZN10serde_json3ser9Formatter21write_string_fragment17h7f5eb506a2bd3c49E.exit26.i.i: ; preds = %bb.g
  %i.at = call fastcc noundef ptr @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17h68241c519677f43aE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %.0.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.01.0.ph.i.i, i64 noundef range(i64 1, 0) %.sroa.06.0.i.i30) ; 2 uses
  %.not21.i.i = icmp eq ptr %i.at, null
  br i1 %.not21.i.i, label %bb.h, label %_ZN10serde_json3ser18format_escaped_str17hdac2baebdc3201d0E.exit.thread

bb.h:                                             ; preds = %_ZN10serde_json3ser9Formatter21write_string_fragment17h7f5eb506a2bd3c49E.exit26.i.i, %_ZN10serde_json3ser9Formatter21write_string_fragment17h7f5eb506a2bd3c49E.exit26.thread.i.i, %bb.f
  %i.au = icmp eq i8 %i.ae, 117
  br i1 %i.au, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !209
  %i.av = and i8 %i.ab, 15
  %i.aw = zext nneg i8 %i.av to i64
  %i.ax = lshr i8 %i.ab, 4
  %i.ay = zext nneg i8 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr @_ZN10serde_json3ser9Formatter17write_char_escape10HEX_DIGITS17h3ef7aa5f51889305E, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !noalias !209, !noundef !23
  %i.bb = getelementptr inbounds nuw i8, ptr @_ZN10serde_json3ser9Formatter17write_char_escape10HEX_DIGITS17h3ef7aa5f51889305E, i64 %i.aw
  %i.bc = load i8, ptr %i.bb, align 1, !noalias !209, !noundef !23
  store <4 x i8> <i8 92, i8 117, i8 48, i8 48>, ptr %i.b, align 4, !noalias !209
  store i8 %i.ba, ptr %i.p, align 4, !noalias !209
  store i8 %i.bc, ptr %i.q, align 1, !noalias !209
  call void @llvm.experimental.noalias.scope.decl(metadata !215)
  %i.bd = load i64, ptr %.0.val, align 8, !range !22, !alias.scope !215, !noalias !216, !noundef !23
  %i.be = load i64, ptr %i.d, align 8, !alias.scope !215, !noalias !216, !noundef !23 ; 4 uses
  %i.bf = icmp sgt i64 %i.be, -1
  call void @llvm.assume(i1 %i.bf)
  %i.bg = sub nsw i64 %i.bd, %i.be
  %i.bh = icmp ugt i64 %i.bg, 6
  br i1 %i.bh, label %bb.k, label %bb.j, !prof !24

bb.j:                                             ; preds = %bb.i
  %i.bi = call fastcc noundef ptr @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17h68241c519677f43aE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %.0.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, i64 noundef 6)
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17ha99251ba171af053E.exit.i.i.i"

bb.k:                                             ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !217)
  %i.bj = load ptr, ptr %i.n, align 8, !alias.scope !218, !noalias !219, !nonnull !23, !noundef !23
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.be
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.bk, ptr noundef nonnull readonly align 4 dereferenceable(6) %i.b, i64 range(i64 0, -1) 6, i1 false), !noalias !218
  %i.bl = add nuw i64 %i.be, 6
  store i64 %i.bl, ptr %i.d, align 8, !alias.scope !218, !noalias !219
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17ha99251ba171af053E.exit.i.i.i"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17ha99251ba171af053E.exit.i.i.i": ; preds = %bb.k, %bb.j
  %.sroa.0.0.i.i.i27.i.i = phi ptr [ null, %bb.k ], [ %i.bi, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !209
  br label %_ZN10serde_json3ser9Formatter17write_char_escape17hccb180d2fcf3015bE.exit.i.i

bb.l:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !209
  store i8 92, ptr %i.a, align 2, !noalias !209
  store i8 %i.ae, ptr %i.o, align 1, !noalias !209
  call void @llvm.experimental.noalias.scope.decl(metadata !220)
  %i.bm = load i64, ptr %.0.val, align 8, !range !22, !alias.scope !220, !noalias !221, !noundef !23
  %i.bn = load i64, ptr %i.d, align 8, !alias.scope !220, !noalias !221, !noundef !23 ; 4 uses
  %i.bo = icmp sgt i64 %i.bn, -1
  call void @llvm.assume(i1 %i.bo)
  %i.bp = sub nsw i64 %i.bm, %i.bn
  %i.bq = icmp ugt i64 %i.bp, 2
  br i1 %i.bq, label %bb.n, label %bb.m, !prof !24

bb.m:                                             ; preds = %bb.l
  %i.br = call fastcc noundef ptr @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17h68241c519677f43aE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %.0.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef 2)
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17ha99251ba171af053E.exit7.i.i.i"

bb.n:                                             ; preds = %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !222)
  %i.bs = load ptr, ptr %i.n, align 8, !alias.scope !223, !noalias !224, !nonnull !23, !noundef !23
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bn
  %i.bu = load i16, ptr %i.a, align 2, !noalias !225
  store i16 %i.bu, ptr %i.bt, align 1, !noalias !223
  %i.bv = add nuw i64 %i.bn, 2
  store i64 %i.bv, ptr %i.d, align 8, !alias.scope !223, !noalias !224
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17ha99251ba171af053E.exit7.i.i.i"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17ha99251ba171af053E.exit7.i.i.i": ; preds = %bb.n, %bb.m
  %.sroa.0.0.i.i6.i.i.i = phi ptr [ null, %bb.n ], [ %i.br, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !209
  br label %_ZN10serde_json3ser9Formatter17write_char_escape17hccb180d2fcf3015bE.exit.i.i

_ZN10serde_json3ser9Formatter17write_char_escape17hccb180d2fcf3015bE.exit.i.i: ; preds = %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17ha99251ba171af053E.exit7.i.i.i", %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17ha99251ba171af053E.exit.i.i.i"
  %.sroa.02.0.i.i.i = phi ptr [ %.sroa.0.0.i.i6.i.i.i, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17ha99251ba171af053E.exit7.i.i.i" ], [ %.sroa.0.0.i.i.i27.i.i, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17ha99251ba171af053E.exit.i.i.i" ] ; 2 uses
  %.not22.i.i = icmp eq ptr %.sroa.02.0.i.i.i, null
  br i1 %.not22.i.i, label %.outer.i.i, label %_ZN10serde_json3ser18format_escaped_str17hdac2baebdc3201d0E.exit.thread

end_hunk_0
begin_hunk_1_@"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h89d0e226ebff6aeeE":bb.a
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i12.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %.phi.trans.insert.i.i15.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  br label %bb.h

common.resume.i.i:                                ; preds = %bb.lz, %bb.lp, %bb.lh, %bb.lg
  %common.resume.op.i.i = phi { ptr, i32 } [ %lpad.phi.i.i.i, %bb.lg ], [ %i.fh, %bb.lz ], [ %lpad.phi.i.i.i, %bb.lh ], [ %i.ey, %bb.lp ]
  resume { ptr, i32 } %common.resume.op.i.i

bb.h:                                             ; preds = %bb.ll, %bb.g
  %storemerge.i.i.i = phi i64 [ 0, %bb.g ], [ %i.ep, %bb.ll ]
  store i64 %storemerge.i.i.i, ptr %i.as, align 8, !noalias !63237
  call void @llvm.experimental.noalias.scope.decl(metadata !63238)
  call void @llvm.experimental.noalias.scope.decl(metadata !63239)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !63240
  invoke fastcc void @"_ZN80_$LT$serde_json..de..SeqAccess$LT$R$GT$$u20$as$u20$serde_core..de..SeqAccess$GT$17next_element_seed16has_next_element17h7186cedf91320133E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.q, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.s)
          to label %.noexc.i.i.i unwind label %.loopexit.i.i.i, !noalias !63241

.noexc.i.i.i:                                     ; preds = %bb.h
  %i.ay = load i8, ptr %i.q, align 8, !range !31, !noalias !63240, !noundef !23
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.noexc.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !noalias !63240, !nonnull !23, !align !35, !noundef !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !63240
  br label %_ZN10serde_core2de9SeqAccess12next_element17hf143a02275451800E.exit.i.i.i.a

bb.j:                                             ; preds = %.noexc.i.i.i
  %i.bc = load i8, ptr %i.at, align 1, !range !31, !noalias !63240, !noundef !23
  %i.bd = trunc nuw i8 %i.bc to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !63240
  br i1 %i.bd, label %bb.k, label %.thread36.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.be = load ptr, ptr %i.s, align 8, !alias.scope !63242, !noalias !63243, !nonnull !23, !align !35, !noundef !23 ; 25 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !63244)
  call void @llvm.experimental.noalias.scope.decl(metadata !63245)
  call void @llvm.experimental.noalias.scope.decl(metadata !63246)
  call void @llvm.experimental.noalias.scope.decl(metadata !63247)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 40 ; 13 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 32 ; 3 uses
  %i.bh = load i64, ptr %i.bg, align 8, !alias.scope !63248, !noalias !63249, !noundef !23 ; 5 uses
  %.promoted.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bf, align 8, !alias.scope !63250, !noalias !63251 ; 2 uses
  %i.bi = icmp ult i64 %.promoted.i.i.i.i.i.i.i.i.i, %i.bh
  br i1 %i.bi, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %.loopexit19.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.k
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 24 ; 5 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !alias.scope !63248, !noalias !63249, !nonnull !23, !align !33, !noundef !23 ; 3 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.bl = phi i64 [ %.promoted.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.bo, %bb.m ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !63252)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !noalias !63253, !noundef !23
  switch i8 %i.bn, label %bb.n [
    i8 32, label %bb.m
    i8 10, label %bb.m
    i8 9, label %bb.m
    i8 13, label %bb.m
    i8 123, label %bb.o
    i8 34, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i.i.i
  ], !prof !63

bb.m:                                             ; preds = %bb.l, %bb.l, %bb.l, %bb.l
  %i.bo = add i64 %i.bl, 1                        ; 3 uses
  store i64 %i.bo, ptr %i.bf, align 8, !alias.scope !63254, !noalias !63251
  %exitcond.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bo, %i.bh
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i, label %.loopexit19.i.i.i.i.i.i.i.i, label %bb.l

.loopexit19.i.i.i.i.i.i.i.i:                      ; preds = %bb.k, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !63255
  store i64 5, ptr %i.l, align 8, !noalias !63255
  %i.bp = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.be, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.l)
          to label %.noexc7.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !63241

.noexc7.i.i.i:                                    ; preds = %.loopexit19.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !63255
  br label %_ZN10serde_core2de9SeqAccess12next_element17hf143a02275451800E.exit.i.i.i.a

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !63255
  store i64 10, ptr %i.m, align 8, !noalias !63255
  %i.bq = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.be, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.m)
          to label %.noexc8.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !63241

.noexc8.i.i.i:                                    ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !63255
  br label %_ZN10serde_core2de9SeqAccess12next_element17hf143a02275451800E.exit.i.i.i.a

bb.o:                                             ; preds = %bb.l
  %i.br = getelementptr inbounds nuw i8, ptr %i.be, i64 56 ; 2 uses
  %i.bs = load i8, ptr %i.br, align 8, !range !31, !alias.scope !63256, !noalias !63257, !noundef !23
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %bb.w, label %bb.v

.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i.i.i: ; preds = %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !63258)
  call void @llvm.experimental.noalias.scope.decl(metadata !63259)
  call void @llvm.experimental.noalias.scope.decl(metadata !63260)
  call void @llvm.experimental.noalias.scope.decl(metadata !63261)
  call void @llvm.experimental.noalias.scope.decl(metadata !63262)
  call void @llvm.experimental.noalias.scope.decl(metadata !63263)
  call void @llvm.experimental.noalias.scope.decl(metadata !63264)
  call void @llvm.experimental.noalias.scope.decl(metadata !63265)
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %bb.p, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i.i.i
  %i.bu = phi i64 [ %i.bx, %bb.p ], [ %i.bl, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i.i.i ] ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !noalias !63266, !noundef !23 ; 2 uses
  switch i8 %i.bw, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17he65ddd3862e9f72bE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" [
    i8 32, label %bb.p
    i8 10, label %bb.p
    i8 9, label %bb.p
    i8 13, label %bb.p
  ]

bb.p:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bx = add i64 %i.bu, 1                        ; 3 uses
  store i64 %i.bx, ptr %i.bf, align 8, !alias.scope !63267, !noalias !63268
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bx, %i.bh
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17he65ddd3862e9f72bE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !63269
  %i.by = icmp eq i8 %i.bw, 34
  br i1 %i.by, label %bb.q, label %bb.r, !prof !24

.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:          ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !63269
  store i64 5, ptr %i.k, align 8, !noalias !63269
  %i.bz = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.be, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.k)
          to label %.noexc9.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !63241

.noexc9.i.i.i:                                    ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !63269
  br label %bb.u

bb.q:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17he65ddd3862e9f72bE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.ca = add i64 %i.bu, 1
  store i64 %i.ca, ptr %i.bf, align 8, !alias.scope !63270, !noalias !63271
  %i.cb = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store i64 0, ptr %i.cb, align 8, !alias.scope !63272, !noalias !63271
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !63269
  invoke void @"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17he3f611958d61c442E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bj, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.be)
          to label %.noexc10.i.i.i unwind label %.loopexit.i.i.i, !noalias !63241

.noexc10.i.i.i:                                   ; preds = %bb.q
  %i.cc = load i64, ptr %i.i, align 8, !range !52, !noalias !63269, !noundef !23
  %i.cd = icmp eq i64 %i.cc, 2
  %i.ce = load ptr, ptr %i.au, align 8, !noalias !63269 ; 3 uses
  br i1 %i.cd, label %bb.s, label %bb.t

bb.r:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17he65ddd3862e9f72bE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.cf = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$17peek_invalid_type17h6e32cfc8d72d2ae6E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.be, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @54)
          to label %.noexc11.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !63241

bb.s:                                             ; preds = %.noexc10.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !63269
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !63269
  br label %bb.u

bb.t:                                             ; preds = %.noexc10.i.i.i
  %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !63269
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ce) ]
  invoke fastcc void @"_ZN195_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h1185d8e741cdcac0E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.j, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ce, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
          to label %.noexc12.i.i.i unwind label %.loopexit.i.i.i, !noalias !63241

.noexc12.i.i.i:                                   ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !63269
  %i.cg = load i8, ptr %i.j, align 8, !range !31, !noalias !63269, !noundef !23
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, label %switch.lookup, !prof !26

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %.noexc12.i.i.i
  %.phi.trans.insert.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.pre.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !63269
  br label %.noexc11.i.i.i

.noexc11.i.i.i:                                   ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i, %bb.r
  %i.ci = phi ptr [ %.pre.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i ], [ %i.cf, %bb.r ]
  %i.cj = invoke fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h952e3eeb82f23c65E(ptr noalias noundef nonnull align 8 %i.ci, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.be)
          to label %.noexc13.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !63241

.noexc13.i.i.i:                                   ; preds = %.noexc11.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !63269
  br label %bb.u

bb.u:                                             ; preds = %.noexc13.i.i.i, %bb.s, %.noexc9.i.i.i
  %.sroa.121.0.ph.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bz, %.noexc9.i.i.i ], [ %i.cj, %.noexc13.i.i.i ], [ %i.ce, %bb.s ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.121.0.ph.i.i.i.i.i.i.i.i.i.i.i) ]
  br label %_ZN10serde_core2de9SeqAccess12next_element17hf143a02275451800E.exit.i.i.i.a

switch.lookup:                                    ; preds = %.noexc12.i.i.i
  %i.ck = load i8, ptr %i.av, align 1, !range !85, !noalias !63269, !noundef !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !63269
  br label %.thread.i.i.i

default.unreachable:                              ; preds = %.noexc22.i.i.i
  unreachable

bb.v:                                             ; preds = %bb.o
  %i.cl = getelementptr inbounds nuw i8, ptr %i.be, i64 57 ; 2 uses
  %i.cm = load i8, ptr %i.cl, align 1, !alias.scope !63256, !noalias !63257, !noundef !23
  %i.cn = add i8 %i.cm, -1                        ; 2 uses
  store i8 %i.cn, ptr %i.cl, align 1, !alias.scope !63256, !noalias !63257
  %i.co = icmp eq i8 %i.cn, 0
  br i1 %i.co, label %bb.kz, label %bb.w, !prof !26

bb.w:                                             ; preds = %bb.v, %bb.o
  %i.cp = add i64 %i.bl, 1                        ; 3 uses
  store i64 %i.cp, ptr %i.bf, align 8, !alias.scope !63273, !noalias !63257
  call void @llvm.experimental.noalias.scope.decl(metadata !63274)
  call void @llvm.experimental.noalias.scope.decl(metadata !63275)
  call void @llvm.experimental.noalias.scope.decl(metadata !63276)
  call void @llvm.experimental.noalias.scope.decl(metadata !63277)
  %i.cq = icmp ult i64 %i.cp, %i.bh
  br i1 %i.cq, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.w, %bb.x
  %i.cr = phi i64 [ %i.cu, %bb.x ], [ %i.cp, %bb.w ] ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !noalias !63278, !noundef !23
  switch i8 %i.ct, label %bb.y [
    i8 32, label %bb.x
    i8 10, label %bb.x
    i8 9, label %bb.x
    i8 13, label %bb.x
    i8 34, label %bb.z
    i8 125, label %bb.aa
  ], !prof !64

bb.x:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cu = add i64 %i.cr, 1                        ; 3 uses
  store i64 %i.cu, ptr %i.bf, align 8, !alias.scope !63279, !noalias !63280
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.cu, %i.bh
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !63281
  store i64 3, ptr %i.f, align 8, !noalias !63281
  %i.cv = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.be, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f)
          to label %.noexc14.i.i.i unwind label %.loopexit.i.i.i, !noalias !63241

.noexc14.i.i.i:                                   ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !63281
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17ha3cdf8a617f8bf45E.exit.i.i.i.i.i.i.i.i"

bb.y:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !63281
  store i64 17, ptr %i.g, align 8, !noalias !63281
  %i.cw = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.be, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g)
          to label %.noexc15.i.i.i unwind label %.loopexit.i.i.i, !noalias !63241

.noexc15.i.i.i:                                   ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !63281
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17ha3cdf8a617f8bf45E.exit.i.i.i.i.i.i.i.i"

bb.z:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !63281
  call void @llvm.experimental.noalias.scope.decl(metadata !63282)
  call void @llvm.experimental.noalias.scope.decl(metadata !63283)
  call void @llvm.experimental.noalias.scope.decl(metadata !63284)
  call void @llvm.experimental.noalias.scope.decl(metadata !63285)
  %i.cx = add i64 %i.cr, 1
  store i64 %i.cx, ptr %i.bf, align 8, !alias.scope !63286, !noalias !63287
  %i.cy = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store i64 0, ptr %i.cy, align 8, !alias.scope !63288, !noalias !63287
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !63289
  invoke void @"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17he3f611958d61c442E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bj, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.be)
          to label %.noexc16.i.i.i unwind label %.loopexit.i.i.i, !noalias !63241

.noexc16.i.i.i:                                   ; preds = %bb.z
  %i.cz = load i64, ptr %i.d, align 8, !range !52, !noalias !63289, !noundef !23
  %i.da = icmp eq i64 %i.cz, 2
  %i.db = load ptr, ptr %i.aw, align 8, !noalias !63289, !nonnull !23, !noundef !23 ; 2 uses
  br i1 %i.da, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h05dfe9881812d30cE.exit.thread.i.i.i.i.i.i.i.i.i.i.i", label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h05dfe9881812d30cE.exit.i.i.i.i.i.i.i.i.i.i.i", !prof !72

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h05dfe9881812d30cE.exit.thread.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc16.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !63289
  br label %bb.ab

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h05dfe9881812d30cE.exit.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc16.i.i.i
  %.sroa.4.0.copyload.i.i.i.i.i.i.i13.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i12.i.i.i.i.i.i.i.i, align 8, !noalias !63289
  invoke fastcc void @"_ZN195_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h1185d8e741cdcac0E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.e, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.db, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i.i.i13.i.i.i.i.i.i.i.i)
          to label %.noexc17.i.i.i unwind label %.loopexit.i.i.i, !noalias !63241

.noexc17.i.i.i:                                   ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h05dfe9881812d30cE.exit.i.i.i.i.i.i.i.i.i.i.i"
  %.pre.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.e, align 8, !range !31, !noalias !63281
  %i.dc = trunc nuw i8 %.pre.i.i.i.i.i.i.i.i.i.i.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !63289
  br i1 %i.dc, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h05dfe9881812d30cE.exit.i._crit_edge.i.i.i.i.i.i.i.i.i.i", label %bb.ac, !prof !71

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h05dfe9881812d30cE.exit.i._crit_edge.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc17.i.i.i
  %.pre.i.i16.i.i.i.i.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i15.i.i.i.i.i.i.i.i, align 8, !noalias !63281
  br label %bb.ab

bb.aa:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !63281
  store i64 10, ptr %i.h, align 8, !noalias !63281
  %i.dd = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.be, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.h)
          to label %.noexc18.i.i.i unwind label %.loopexit.i.i.i, !noalias !63241

.noexc18.i.i.i:                                   ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !63281
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17ha3cdf8a617f8bf45E.exit.i.i.i.i.i.i.i.i"

bb.ab:                                            ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h05dfe9881812d30cE.exit.i._crit_edge.i.i.i.i.i.i.i.i.i.i", %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h05dfe9881812d30cE.exit.thread.i.i.i.i.i.i.i.i.i.i.i"
  %i.de = phi ptr [ %.pre.i.i16.i.i.i.i.i.i.i.i, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h05dfe9881812d30cE.exit.i._crit_edge.i.i.i.i.i.i.i.i.i.i" ], [ %i.db, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h05dfe9881812d30cE.exit.thread.i.i.i.i.i.i.i.i.i.i.i" ]
  %i.df = invoke fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h952e3eeb82f23c65E(ptr noalias noundef nonnull align 8 %i.de, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.be)
          to label %.noexc19.i.i.i unwind label %.loopexit.i.i.i, !noalias !63241

.noexc19.i.i.i:                                   ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !63281
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17ha3cdf8a617f8bf45E.exit.i.i.i.i.i.i.i.i"

bb.ac:                                            ; preds = %.noexc17.i.i.i
  %i.dg = load i8, ptr %i.ax, align 1, !range !85, !noalias !63281, !noundef !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !63281
  call void @llvm.experimental.noalias.scope.decl(metadata !63290)
  call void @llvm.experimental.noalias.scope.decl(metadata !63291)
  %i.dh = load i64, ptr %i.bg, align 8, !alias.scope !63292, !noalias !63293, !noundef !23 ; 2 uses
  %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bf, align 8, !alias.scope !63294, !noalias !63295 ; 2 uses
  %i.di = icmp ult i64 %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.dh
  br i1 %i.di, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.ac
  %i.dj = load ptr, ptr %i.bj, align 8, !alias.scope !63292, !noalias !63293, !nonnull !23, !align !33, !noundef !23
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ae, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dk = phi i64 [ %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.dn, %bb.ae ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !63296)
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.dk
  %i.dm = load i8, ptr %i.dl, align 1, !noalias !63297, !noundef !23
  switch i8 %i.dm, label %bb.af [
    i8 32, label %bb.ae
    i8 10, label %bb.ae
    i8 9, label %bb.ae
    i8 13, label %bb.ae
    i8 58, label %bb.ag
  ], !prof !54

bb.ae:                                            ; preds = %bb.ad, %bb.ad, %bb.ad, %bb.ad
  %i.dn = add i64 %i.dk, 1                        ; 3 uses
  store i64 %i.dn, ptr %i.bf, align 8, !alias.scope !63298, !noalias !63295
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.dn, %i.dh
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ad

.loopexit.i.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %bb.ae, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !63299
  store i64 3, ptr %i.b, align 8, !noalias !63299
  %i.do = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.be, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b)
          to label %.noexc20.i.i.i unwind label %.loopexit.i.i.i, !noalias !63241

.noexc20.i.i.i:                                   ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !63299
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17ha3cdf8a617f8bf45E.exit.i.i.i.i.i.i.i.i"

bb.af:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !63299
  store i64 6, ptr %i.c, align 8, !noalias !63299
  %i.dp = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.be, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c)
          to label %.noexc21.i.i.i unwind label %.loopexit.i.i.i, !noalias !63241

.noexc21.i.i.i:                                   ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !63299
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17ha3cdf8a617f8bf45E.exit.i.i.i.i.i.i.i.i"

bb.ag:                                            ; preds = %bb.ad
  %i.dq = add i64 %i.dk, 1
  store i64 %i.dq, ptr %i.bf, align 8, !alias.scope !63300, !noalias !63301
  %i.dr = invoke fastcc noundef align 8 ptr @"_ZN88_$LT$serde_json..de..VariantAccess$LT$R$GT$$u20$as$u20$serde_core..de..VariantAccess$GT$12unit_variant17h11facb99f44531c1E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.be)
          to label %.noexc22.i.i.i unwind label %.loopexit.i.i.i, !noalias !63241 ; 140 uses

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
    i8 17, label %bb.ay
end_hunk_1
begin_hunk_2_@"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h89d0e226ebff6aeeE":bb.a

bb.js:                                            ; preds = %bb.ej
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17ha3cdf8a617f8bf45E.exit.i.i.i.i.i.i.i.i"

bb.jt:                                            ; preds = %bb.ek
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17ha3cdf8a617f8bf45E.exit.i.i.i.i.i.i.i.i"

bb.ju:                                            ; preds = %bb.el
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17ha3cdf8a617f8bf45E.exit.i.i.i.i.i.i.i.i"

bb.jv:                                            ; preds = %bb.em
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17ha3cdf8a617f8bf45E.exit.i.i.i.i.i.i.i.i"

bb.jw:                                            ; preds = %bb.en
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17ha3cdf8a617f8bf45E.exit.i.i.i.i.i.i.i.i"

bb.jx:                                            ; preds = %bb.eo
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17ha3cdf8a617f8bf45E.exit.i.i.i.i.i.i.i.i"

bb.jy:                                            ; preds = %bb.ep
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17ha3cdf8a617f8bf45E.exit.i.i.i.i.i.i.i.i"

bb.jz:                                            ; preds = %bb.eq
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17ha3cdf8a617f8bf45E.exit.i.i.i.i.i.i.i.i"

bb.ka:                                            ; preds = %bb.er
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17ha3cdf8a617f8bf45E.exit.i.i.i.i.i.i.i.i"

bb.kb:                                            ; preds = %bb.es
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17ha3cdf8a617f8bf45E.exit.i.i.i.i.i.i.i.i"

bb.kc:                                            ; preds = %bb.et
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17ha3cdf8a617f8bf45E.exit.i.i.i.i.i.i.i.i"

bb.kd:                                            ; preds = %bb.eu
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17ha3cdf8a617f8bf45E.exit.i.i.i.i.i.i.i.i"

bb.ke:                                            ; preds = %bb.ev
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17ha3cdf8a617f8bf45E.exit.i.i.i.i.i.i.i.i"

bb.kf:                                            ; preds = %bb.ew
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17ha3cdf8a617f8bf45E.exit.i.i.i.i.i.i.i.i"

bb.kg:                                            ; preds = %bb.ex
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17ha3cdf8a617f8bf45E.exit.i.i.i.i.i.i.i.i"

bb.kh:                                            ; preds = %bb.ey
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17ha3cdf8a617f8bf45E.exit.i.i.i.i.i.i.i.i"

bb.ki:                                            ; preds = %bb.ez
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17ha3cdf8a617f8bf45E.exit.i.i.i.i.i.i.i.i"

bb.kj:                                            ; preds = %bb.fa
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17ha3cdf8a617f8bf45E.exit.i.i.i.i.i.i.i.i"

bb.kk:                                            ; preds = %bb.fb
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17ha3cdf8a617f8bf45E.exit.i.i.i.i.i.i.i.i"

bb.kl:                                            ; preds = %bb.fc
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17ha3cdf8a617f8bf45E.exit.i.i.i.i.i.i.i.i"

bb.km:                                            ; preds = %bb.fd
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17ha3cdf8a617f8bf45E.exit.i.i.i.i.i.i.i.i"

bb.kn:                                            ; preds = %bb.fe
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17ha3cdf8a617f8bf45E.exit.i.i.i.i.i.i.i.i"

bb.ko:                                            ; preds = %bb.ff
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17ha3cdf8a617f8bf45E.exit.i.i.i.i.i.i.i.i"

bb.kp:                                            ; preds = %bb.fg
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17ha3cdf8a617f8bf45E.exit.i.i.i.i.i.i.i.i"

bb.kq:                                            ; preds = %bb.fh
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17ha3cdf8a617f8bf45E.exit.i.i.i.i.i.i.i.i"

bb.kr:                                            ; preds = %bb.fi
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17ha3cdf8a617f8bf45E.exit.i.i.i.i.i.i.i.i"

bb.ks:                                            ; preds = %bb.fj
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17ha3cdf8a617f8bf45E.exit.i.i.i.i.i.i.i.i"

bb.kt:                                            ; preds = %bb.fk
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17ha3cdf8a617f8bf45E.exit.i.i.i.i.i.i.i.i"

bb.ku:                                            ; preds = %bb.fl
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17ha3cdf8a617f8bf45E.exit.i.i.i.i.i.i.i.i"

bb.kv:                                            ; preds = %bb.fm
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17ha3cdf8a617f8bf45E.exit.i.i.i.i.i.i.i.i"

bb.kw:                                            ; preds = %bb.fn
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17ha3cdf8a617f8bf45E.exit.i.i.i.i.i.i.i.i"

bb.kx:                                            ; preds = %bb.fo
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17ha3cdf8a617f8bf45E.exit.i.i.i.i.i.i.i.i"

bb.ky:                                            ; preds = %bb.fp
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17ha3cdf8a617f8bf45E.exit.i.i.i.i.i.i.i.i"

"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17ha3cdf8a617f8bf45E.exit.i.i.i.i.i.i.i.i": ; preds = %bb.ky, %bb.kx, %bb.kw, %bb.kv, %bb.ku, %bb.kt, %bb.ks, %bb.kr, %bb.kq, %bb.kp, %bb.ko, %bb.kn, %bb.km, %bb.kl, %bb.kk, %bb.kj, %bb.ki, %bb.kh, %bb.kg, %bb.kf, %bb.ke, %bb.kd, %bb.kc, %bb.kb, %bb.ka, %bb.jz, %bb.jy, %bb.jx, %bb.jw, %bb.jv, %bb.ju, %bb.jt, %bb.js, %bb.jr, %bb.jq, %bb.jp, %bb.jo, %bb.jn, %bb.jm, %bb.jl, %bb.jk, %bb.jj, %bb.ji, %bb.jh, %bb.jg, %bb.jf, %bb.je, %bb.jd, %bb.jc, %bb.jb, %bb.ja, %bb.iz, %bb.iy, %bb.ix, %bb.iw, %bb.iv, %bb.iu, %bb.it, %bb.is, %bb.ir, %bb.iq, %bb.ip, %bb.io, %bb.in, %bb.im, %bb.il, %bb.ik, %bb.ij, %bb.ii, %bb.ih, %bb.ig, %bb.if, %bb.ie, %bb.id, %bb.ic, %bb.ib, %bb.ia, %bb.hz, %bb.hy, %bb.hx, %bb.hw, %bb.hv, %bb.hu, %bb.ht, %bb.hs, %bb.hr, %bb.hq, %bb.hp, %bb.ho, %bb.hn, %bb.hm, %bb.hl, %bb.hk, %bb.hj, %bb.hi, %bb.hh, %bb.hg, %bb.hf, %bb.he, %bb.hd, %bb.hc, %bb.hb, %bb.ha, %bb.gz, %bb.gy, %bb.gx, %bb.gw, %bb.gv, %bb.gu, %bb.gt, %bb.gs, %bb.gr, %bb.gq, %bb.gp, %bb.go, %bb.gn, %bb.gm, %bb.gl, %bb.gk, %bb.gj, %bb.gi, %bb.gh, %bb.gg, %bb.gf, %bb.ge, %bb.gd, %bb.gc, %bb.gb, %bb.ga, %bb.fz, %bb.fy, %bb.fx, %bb.fw, %bb.fv, %bb.fu, %bb.ft, %bb.fs, %bb.fr, %bb.fq, %bb.fp, %bb.fo, %bb.fn, %bb.fm, %bb.fl, %bb.fk, %bb.fj, %bb.fi, %bb.fh, %bb.fg, %bb.ff, %bb.fe, %bb.fd, %bb.fc, %bb.fb, %bb.fa, %bb.ez, %bb.ey, %bb.ex, %bb.ew, %bb.ev, %bb.eu, %bb.et, %bb.es, %bb.er, %bb.eq, %bb.ep, %bb.eo, %bb.en, %bb.em, %bb.el, %bb.ek, %bb.ej, %bb.ei, %bb.eh, %bb.eg, %bb.ef, %bb.ee, %bb.ed, %bb.ec, %bb.eb, %bb.ea, %bb.dz, %bb.dy, %bb.dx, %bb.dw, %bb.dv, %bb.du, %bb.dt, %bb.ds, %bb.dr, %bb.dq, %bb.dp, %bb.do, %bb.dn, %bb.dm, %bb.dl, %bb.dk, %bb.dj, %bb.di, %bb.dh, %bb.dg, %bb.df, %bb.de, %bb.dd, %bb.dc, %bb.db, %bb.da, %bb.cz, %bb.cy, %bb.cx, %bb.cw, %bb.cv, %bb.cu, %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.cp, %bb.co, %bb.cn, %bb.cm, %bb.cl, %bb.ck, %bb.cj, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %.noexc21.i.i.i, %.noexc20.i.i.i, %.noexc19.i.i.i, %.noexc18.i.i.i, %.noexc15.i.i.i, %.noexc14.i.i.i
  %.sroa.1458.0.i.i.i.i.i.i.i.i = phi ptr [ %i.dr, %bb.fo ], [ undef, %bb.fq ], [ %i.cw, %.noexc15.i.i.i ], [ undef, %bb.fr ], [ %i.dr, %bb.ah ], [ undef, %bb.fs ], [ %i.dr, %bb.ai ], [ undef, %bb.ft ], [ %i.dr, %bb.aj ], [ undef, %bb.fu ], [ %i.dr, %bb.ak ], [ undef, %bb.fv ], [ %i.dr, %bb.al ], [ undef, %bb.fw ], [ %i.dr, %bb.am ], [ undef, %bb.fx ], [ %i.dr, %bb.an ], [ undef, %bb.fy ], [ %i.dr, %bb.ao ], [ undef, %bb.fz ], [ %i.dr, %bb.ap ], [ undef, %bb.ga ], [ %i.dr, %bb.aq ], [ undef, %bb.gb ], [ %i.dr, %bb.ar ], [ undef, %bb.gc ], [ %i.dr, %bb.as ], [ undef, %bb.gd ], [ %i.dr, %bb.at ], [ undef, %bb.ge ], [ %i.dr, %bb.au ], [ undef, %bb.gf ], [ %i.dr, %bb.av ], [ undef, %bb.gg ], [ %i.dr, %bb.aw ], [ undef, %bb.gh ], [ %i.dr, %bb.ax ], [ undef, %bb.gi ], [ %i.dr, %bb.ay ], [ undef, %bb.gj ], [ %i.dr, %bb.az ], [ undef, %bb.gk ], [ %i.dr, %bb.ba ], [ undef, %bb.gl ], [ %i.dr, %bb.bb ], [ undef, %bb.gm ], [ %i.dr, %bb.bc ], [ undef, %bb.gn ], [ %i.dr, %bb.bd ], [ undef, %bb.go ], [ %i.dr, %bb.be ], [ undef, %bb.gp ], [ %i.dr, %bb.bf ], [ undef, %bb.gq ], [ %i.dr, %bb.bg ], [ undef, %bb.gr ], [ %i.dr, %bb.bh ], [ undef, %bb.gs ], [ %i.dr, %bb.bi ], [ undef, %bb.gt ], [ %i.dr, %bb.bj ], [ undef, %bb.gu ], [ %i.dr, %bb.bk ], [ undef, %bb.gv ], [ %i.dr, %bb.bl ], [ undef, %bb.gw ], [ %i.dr, %bb.bm ], [ undef, %bb.gx ], [ %i.dr, %bb.bn ], [ undef, %bb.gy ], [ %i.dr, %bb.bo ], [ undef, %bb.gz ], [ %i.dr, %bb.bp ], [ undef, %bb.ha ], [ %i.dr, %bb.bq ], [ undef, %bb.hb ], [ %i.dr, %bb.br ], [ undef, %bb.hc ], [ %i.dr, %bb.bs ], [ undef, %bb.hd ], [ %i.dr, %bb.bt ], [ undef, %bb.he ], [ %i.dr, %bb.bu ], [ undef, %bb.hf ], [ %i.dr, %bb.bv ], [ undef, %bb.hg ], [ %i.dr, %bb.bw ], [ undef, %bb.hh ], [ %i.dr, %bb.bx ], [ undef, %bb.hi ], [ %i.dr, %bb.by ], [ undef, %bb.hj ], [ %i.dr, %bb.bz ], [ undef, %bb.hk ], [ %i.dr, %bb.ca ], [ undef, %bb.hl ], [ %i.dr, %bb.cb ], [ undef, %bb.hm ], [ %i.dr, %bb.cc ], [ undef, %bb.hn ], [ %i.dr, %bb.cd ], [ undef, %bb.ho ], [ %i.dr, %bb.ce ], [ undef, %bb.hp ], [ %i.dr, %bb.cf ], [ undef, %bb.hq ], [ %i.dr, %bb.cg ], [ undef, %bb.hr ], [ %i.dr, %bb.ch ], [ undef, %bb.hs ], [ %i.dr, %bb.ci ], [ undef, %bb.ht ], [ %i.dr, %bb.cj ], [ undef, %bb.hu ], [ %i.dr, %bb.ck ], [ undef, %bb.hv ], [ %i.dr, %bb.cl ], [ undef, %bb.hw ], [ %i.dr, %bb.cm ], [ undef, %bb.hx ], [ %i.dr, %bb.cn ], [ undef, %bb.hy ], [ %i.dr, %bb.co ], [ undef, %bb.hz ], [ %i.dr, %bb.cp ], [ undef, %bb.ia ], [ %i.dr, %bb.cq ], [ undef, %bb.ib ], [ %i.dr, %bb.cr ], [ undef, %bb.ic ], [ %i.dr, %bb.cs ], [ undef, %bb.id ], [ %i.dr, %bb.ct ], [ undef, %bb.ie ], [ %i.dr, %bb.cu ], [ undef, %bb.if ], [ %i.dr, %bb.cv ], [ undef, %bb.ig ], [ %i.dr, %bb.cw ], [ undef, %bb.ih ], [ %i.dr, %bb.cx ], [ undef, %bb.ii ], [ %i.dr, %bb.cy ], [ undef, %bb.ij ], [ %i.dr, %bb.cz ], [ undef, %bb.ik ], [ %i.dr, %bb.da ], [ undef, %bb.il ], [ %i.dr, %bb.db ], [ undef, %bb.im ], [ %i.dr, %bb.dc ], [ undef, %bb.in ], [ %i.dr, %bb.dd ], [ undef, %bb.io ], [ %i.dr, %bb.de ], [ undef, %bb.ip ], [ %i.dr, %bb.df ], [ undef, %bb.iq ], [ %i.dr, %bb.dg ], [ undef, %bb.ir ], [ %i.dr, %bb.dh ], [ undef, %bb.is ], [ %i.dr, %bb.di ], [ undef, %bb.it ], [ %i.dr, %bb.dj ], [ undef, %bb.iu ], [ %i.dr, %bb.dk ], [ undef, %bb.iv ], [ %i.dr, %bb.dl ], [ undef, %bb.iw ], [ %i.dr, %bb.dm ], [ undef, %bb.ix ], [ %i.dr, %bb.dn ], [ undef, %bb.iy ], [ %i.dr, %bb.do ], [ undef, %bb.iz ], [ %i.dr, %bb.dp ], [ undef, %bb.ja ], [ %i.dr, %bb.dq ], [ undef, %bb.jb ], [ %i.dr, %bb.dr ], [ undef, %bb.jc ], [ %i.dr, %bb.ds ], [ undef, %bb.jd ], [ %i.dr, %bb.dt ], [ undef, %bb.je ], [ %i.dr, %bb.du ], [ undef, %bb.jf ], [ %i.dr, %bb.dv ], [ undef, %bb.jg ], [ %i.dr, %bb.dw ], [ undef, %bb.jh ], [ %i.dr, %bb.dx ], [ undef, %bb.ji ], [ %i.dr, %bb.dy ], [ undef, %bb.jj ], [ %i.dr, %bb.dz ], [ undef, %bb.jk ], [ %i.dr, %bb.ea ], [ undef, %bb.jl ], [ %i.dr, %bb.eb ], [ undef, %bb.jm ], [ %i.dr, %bb.ec ], [ undef, %bb.jn ], [ %i.dr, %bb.ed ], [ undef, %bb.jo ], [ %i.dr, %bb.ee ], [ undef, %bb.jp ], [ %i.dr, %bb.ef ], [ undef, %bb.jq ], [ %i.dr, %bb.eg ], [ undef, %bb.jr ], [ %i.dr, %bb.eh ], [ undef, %bb.js ], [ %i.dr, %bb.ei ], [ undef, %bb.jt ], [ %i.dr, %bb.ej ], [ undef, %bb.ju ], [ %i.dr, %bb.ek ], [ undef, %bb.jv ], [ %i.dr, %bb.el ], [ undef, %bb.jw ], [ %i.dr, %bb.em ], [ undef, %bb.jx ], [ %i.dr, %bb.en ], [ undef, %bb.jy ], [ %i.dr, %bb.eo ], [ undef, %bb.jz ], [ %i.dr, %bb.ep ], [ undef, %bb.ka ], [ %i.dr, %bb.eq ], [ undef, %bb.kb ], [ %i.dr, %bb.er ], [ undef, %bb.kc ], [ %i.dr, %bb.es ], [ undef, %bb.kd ], [ %i.dr, %bb.et ], [ undef, %bb.ke ], [ %i.dr, %bb.eu ], [ undef, %bb.kf ], [ %i.dr, %bb.ev ], [ undef, %bb.kg ], [ %i.dr, %bb.ew ], [ undef, %bb.kh ], [ %i.dr, %bb.ex ], [ undef, %bb.ki ], [ %i.dr, %bb.ey ], [ undef, %bb.kj ], [ %i.dr, %bb.ez ], [ undef, %bb.kk ], [ %i.dr, %bb.fa ], [ undef, %bb.kl ], [ %i.dr, %bb.fb ], [ undef, %bb.km ], [ %i.dr, %bb.fc ], [ undef, %bb.kn ], [ %i.dr, %bb.fd ], [ undef, %bb.ko ], [ %i.dr, %bb.fe ], [ undef, %bb.kp ], [ %i.dr, %bb.ff ], [ undef, %bb.kq ], [ %i.dr, %bb.fg ], [ undef, %bb.kr ], [ %i.dr, %bb.fh ], [ undef, %bb.ks ], [ %i.dr, %bb.fi ], [ undef, %bb.kt ], [ %i.dr, %bb.fj ], [ undef, %bb.ku ], [ %i.dr, %bb.fk ], [ undef, %bb.kv ], [ %i.dr, %bb.fl ], [ undef, %bb.kw ], [ %i.dr, %bb.fm ], [ undef, %bb.kx ], [ %i.dr, %bb.fn ], [ undef, %bb.ky ], [ %i.dp, %.noexc21.i.i.i ], [ %i.do, %.noexc20.i.i.i ], [ %i.dd, %.noexc18.i.i.i ], [ %i.df, %.noexc19.i.i.i ], [ %i.cv, %.noexc14.i.i.i ], [ %i.dr, %bb.fp ] ; 2 uses
  %.sroa.5.0.i.i.i.i.i.i.i.i = phi i8 [ undef, %bb.fo ], [ 0, %bb.fq ], [ undef, %.noexc15.i.i.i ], [ 1, %bb.fr ], [ undef, %bb.ah ], [ 2, %bb.fs ], [ undef, %bb.ai ], [ 3, %bb.ft ], [ undef, %bb.aj ], [ 4, %bb.fu ], [ undef, %bb.ak ], [ 5, %bb.fv ], [ undef, %bb.al ], [ 6, %bb.fw ], [ undef, %bb.am ], [ 7, %bb.fx ], [ undef, %bb.an ], [ 8, %bb.fy ], [ undef, %bb.ao ], [ 9, %bb.fz ], [ undef, %bb.ap ], [ 10, %bb.ga ], [ undef, %bb.aq ], [ 11, %bb.gb ], [ undef, %bb.ar ], [ 12, %bb.gc ], [ undef, %bb.as ], [ 13, %bb.gd ], [ undef, %bb.at ], [ 14, %bb.ge ], [ undef, %bb.au ], [ 15, %bb.gf ], [ undef, %bb.av ], [ 16, %bb.gg ], [ undef, %bb.aw ], [ 17, %bb.gh ], [ undef, %bb.ax ], [ 18, %bb.gi ], [ undef, %bb.ay ], [ 19, %bb.gj ], [ undef, %bb.az ], [ 20, %bb.gk ], [ undef, %bb.ba ], [ 21, %bb.gl ], [ undef, %bb.bb ], [ 22, %bb.gm ], [ undef, %bb.bc ], [ 23, %bb.gn ], [ undef, %bb.bd ], [ 24, %bb.go ], [ undef, %bb.be ], [ 25, %bb.gp ], [ undef, %bb.bf ], [ 26, %bb.gq ], [ undef, %bb.bg ], [ 27, %bb.gr ], [ undef, %bb.bh ], [ 28, %bb.gs ], [ undef, %bb.bi ], [ 29, %bb.gt ], [ undef, %bb.bj ], [ 30, %bb.gu ], [ undef, %bb.bk ], [ 31, %bb.gv ], [ undef, %bb.bl ], [ 32, %bb.gw ], [ undef, %bb.bm ], [ 33, %bb.gx ], [ undef, %bb.bn ], [ 34, %bb.gy ], [ undef, %bb.bo ], [ 35, %bb.gz ], [ undef, %bb.bp ], [ 36, %bb.ha ], [ undef, %bb.bq ], [ 37, %bb.hb ], [ undef, %bb.br ], [ 38, %bb.hc ], [ undef, %bb.bs ], [ 39, %bb.hd ], [ undef, %bb.bt ], [ 40, %bb.he ], [ undef, %bb.bu ], [ 41, %bb.hf ], [ undef, %bb.bv ], [ 42, %bb.hg ], [ undef, %bb.bw ], [ 43, %bb.hh ], [ undef, %bb.bx ], [ 44, %bb.hi ], [ undef, %bb.by ], [ 45, %bb.hj ], [ undef, %bb.bz ], [ 46, %bb.hk ], [ undef, %bb.ca ], [ 47, %bb.hl ], [ undef, %bb.cb ], [ 48, %bb.hm ], [ undef, %bb.cc ], [ 49, %bb.hn ], [ undef, %bb.cd ], [ 50, %bb.ho ], [ undef, %bb.ce ], [ 51, %bb.hp ], [ undef, %bb.cf ], [ 52, %bb.hq ], [ undef, %bb.cg ], [ 53, %bb.hr ], [ undef, %bb.ch ], [ 54, %bb.hs ], [ undef, %bb.ci ], [ 55, %bb.ht ], [ undef, %bb.cj ], [ 56, %bb.hu ], [ undef, %bb.ck ], [ 57, %bb.hv ], [ undef, %bb.cl ], [ 58, %bb.hw ], [ undef, %bb.cm ], [ 59, %bb.hx ], [ undef, %bb.cn ], [ 60, %bb.hy ], [ undef, %bb.co ], [ 61, %bb.hz ], [ undef, %bb.cp ], [ 62, %bb.ia ], [ undef, %bb.cq ], [ 63, %bb.ib ], [ undef, %bb.cr ], [ 64, %bb.ic ], [ undef, %bb.cs ], [ 65, %bb.id ], [ undef, %bb.ct ], [ 66, %bb.ie ], [ undef, %bb.cu ], [ 67, %bb.if ], [ undef, %bb.cv ], [ 68, %bb.ig ], [ undef, %bb.cw ], [ 69, %bb.ih ], [ undef, %bb.cx ], [ 70, %bb.ii ], [ undef, %bb.cy ], [ 71, %bb.ij ], [ undef, %bb.cz ], [ 72, %bb.ik ], [ undef, %bb.da ], [ 73, %bb.il ], [ undef, %bb.db ], [ 74, %bb.im ], [ undef, %bb.dc ], [ 75, %bb.in ], [ undef, %bb.dd ], [ 76, %bb.io ], [ undef, %bb.de ], [ 77, %bb.ip ], [ undef, %bb.df ], [ 78, %bb.iq ], [ undef, %bb.dg ], [ 79, %bb.ir ], [ undef, %bb.dh ], [ 80, %bb.is ], [ undef, %bb.di ], [ 81, %bb.it ], [ undef, %bb.dj ], [ 82, %bb.iu ], [ undef, %bb.dk ], [ 83, %bb.iv ], [ undef, %bb.dl ], [ 84, %bb.iw ], [ undef, %bb.dm ], [ 85, %bb.ix ], [ undef, %bb.dn ], [ 86, %bb.iy ], [ undef, %bb.do ], [ 87, %bb.iz ], [ undef, %bb.dp ], [ 88, %bb.ja ], [ undef, %bb.dq ], [ 89, %bb.jb ], [ undef, %bb.dr ], [ 90, %bb.jc ], [ undef, %bb.ds ], [ 91, %bb.jd ], [ undef, %bb.dt ], [ 92, %bb.je ], [ undef, %bb.du ], [ 93, %bb.jf ], [ undef, %bb.dv ], [ 94, %bb.jg ], [ undef, %bb.dw ], [ 95, %bb.jh ], [ undef, %bb.dx ], [ 96, %bb.ji ], [ undef, %bb.dy ], [ 97, %bb.jj ], [ undef, %bb.dz ], [ 98, %bb.jk ], [ undef, %bb.ea ], [ 99, %bb.jl ], [ undef, %bb.eb ], [ 100, %bb.jm ], [ undef, %bb.ec ], [ 101, %bb.jn ], [ undef, %bb.ed ], [ 102, %bb.jo ], [ undef, %bb.ee ], [ 103, %bb.jp ], [ undef, %bb.ef ], [ 104, %bb.jq ], [ undef, %bb.eg ], [ 105, %bb.jr ], [ undef, %bb.eh ], [ 106, %bb.js ], [ undef, %bb.ei ], [ 107, %bb.jt ], [ undef, %bb.ej ], [ 108, %bb.ju ], [ undef, %bb.ek ], [ 109, %bb.jv ], [ undef, %bb.el ], [ 110, %bb.jw ], [ undef, %bb.em ], [ 111, %bb.jx ], [ undef, %bb.en ], [ 112, %bb.jy ], [ undef, %bb.eo ], [ 113, %bb.jz ], [ undef, %bb.ep ], [ 114, %bb.ka ], [ undef, %bb.eq ], [ 115, %bb.kb ], [ undef, %bb.er ], [ 116, %bb.kc ], [ undef, %bb.es ], [ 117, %bb.kd ], [ undef, %bb.et ], [ 118, %bb.ke ], [ undef, %bb.eu ], [ 119, %bb.kf ], [ undef, %bb.ev ], [ 120, %bb.kg ], [ undef, %bb.ew ], [ 121, %bb.kh ], [ undef, %bb.ex ], [ 122, %bb.ki ], [ undef, %bb.ey ], [ 123, %bb.kj ], [ undef, %bb.ez ], [ 124, %bb.kk ], [ undef, %bb.fa ], [ 125, %bb.kl ], [ undef, %bb.fb ], [ 126, %bb.km ], [ undef, %bb.fc ], [ 127, %bb.kn ], [ undef, %bb.fd ], [ -128, %bb.ko ], [ undef, %bb.fe ], [ -127, %bb.kp ], [ undef, %bb.ff ], [ -126, %bb.kq ], [ undef, %bb.fg ], [ -125, %bb.kr ], [ undef, %bb.fh ], [ -124, %bb.ks ], [ undef, %bb.fi ], [ -123, %bb.kt ], [ undef, %bb.fj ], [ -122, %bb.ku ], [ undef, %bb.fk ], [ -121, %bb.kv ], [ undef, %bb.fl ], [ -120, %bb.kw ], [ undef, %bb.fm ], [ -119, %bb.kx ], [ undef, %bb.fn ], [ -118, %bb.ky ], [ undef, %.noexc21.i.i.i ], [ undef, %.noexc20.i.i.i ], [ undef, %.noexc18.i.i.i ], [ undef, %.noexc19.i.i.i ], [ undef, %.noexc14.i.i.i ], [ undef, %bb.fp ]
  %.sink.i11.i.i.i.i.i.i.i.i = phi i1 [ true, %bb.fo ], [ false, %bb.fq ], [ true, %.noexc15.i.i.i ], [ false, %bb.fr ], [ true, %bb.ah ], [ false, %bb.fs ], [ true, %bb.ai ], [ false, %bb.ft ], [ true, %bb.aj ], [ false, %bb.fu ], [ true, %bb.ak ], [ false, %bb.fv ], [ true, %bb.al ], [ false, %bb.fw ], [ true, %bb.am ], [ false, %bb.fx ], [ true, %bb.an ], [ false, %bb.fy ], [ true, %bb.ao ], [ false, %bb.fz ], [ true, %bb.ap ], [ false, %bb.ga ], [ true, %bb.aq ], [ false, %bb.gb ], [ true, %bb.ar ], [ false, %bb.gc ], [ true, %bb.as ], [ false, %bb.gd ], [ true, %bb.at ], [ false, %bb.ge ], [ true, %bb.au ], [ false, %bb.gf ], [ true, %bb.av ], [ false, %bb.gg ], [ true, %bb.aw ], [ false, %bb.gh ], [ true, %bb.ax ], [ false, %bb.gi ], [ true, %bb.ay ], [ false, %bb.gj ], [ true, %bb.az ], [ false, %bb.gk ], [ true, %bb.ba ], [ false, %bb.gl ], [ true, %bb.bb ], [ false, %bb.gm ], [ true, %bb.bc ], [ false, %bb.gn ], [ true, %bb.bd ], [ false, %bb.go ], [ true, %bb.be ], [ false, %bb.gp ], [ true, %bb.bf ], [ false, %bb.gq ], [ true, %bb.bg ], [ false, %bb.gr ], [ true, %bb.bh ], [ false, %bb.gs ], [ true, %bb.bi ], [ false, %bb.gt ], [ true, %bb.bj ], [ false, %bb.gu ], [ true, %bb.bk ], [ false, %bb.gv ], [ true, %bb.bl ], [ false, %bb.gw ], [ true, %bb.bm ], [ false, %bb.gx ], [ true, %bb.bn ], [ false, %bb.gy ], [ true, %bb.bo ], [ false, %bb.gz ], [ true, %bb.bp ], [ false, %bb.ha ], [ true, %bb.bq ], [ false, %bb.hb ], [ true, %bb.br ], [ false, %bb.hc ], [ true, %bb.bs ], [ false, %bb.hd ], [ true, %bb.bt ], [ false, %bb.he ], [ true, %bb.bu ], [ false, %bb.hf ], [ true, %bb.bv ], [ false, %bb.hg ], [ true, %bb.bw ], [ false, %bb.hh ], [ true, %bb.bx ], [ false, %bb.hi ], [ true, %bb.by ], [ false, %bb.hj ], [ true, %bb.bz ], [ false, %bb.hk ], [ true, %bb.ca ], [ false, %bb.hl ], [ true, %bb.cb ], [ false, %bb.hm ], [ true, %bb.cc ], [ false, %bb.hn ], [ true, %bb.cd ], [ false, %bb.ho ], [ true, %bb.ce ], [ false, %bb.hp ], [ true, %bb.cf ], [ false, %bb.hq ], [ true, %bb.cg ], [ false, %bb.hr ], [ true, %bb.ch ], [ false, %bb.hs ], [ true, %bb.ci ], [ false, %bb.ht ], [ true, %bb.cj ], [ false, %bb.hu ], [ true, %bb.ck ], [ false, %bb.hv ], [ true, %bb.cl ], [ false, %bb.hw ], [ true, %bb.cm ], [ false, %bb.hx ], [ true, %bb.cn ], [ false, %bb.hy ], [ true, %bb.co ], [ false, %bb.hz ], [ true, %bb.cp ], [ false, %bb.ia ], [ true, %bb.cq ], [ false, %bb.ib ], [ true, %bb.cr ], [ false, %bb.ic ], [ true, %bb.cs ], [ false, %bb.id ], [ true, %bb.ct ], [ false, %bb.ie ], [ true, %bb.cu ], [ false, %bb.if ], [ true, %bb.cv ], [ false, %bb.ig ], [ true, %bb.cw ], [ false, %bb.ih ], [ true, %bb.cx ], [ false, %bb.ii ], [ true, %bb.cy ], [ false, %bb.ij ], [ true, %bb.cz ], [ false, %bb.ik ], [ true, %bb.da ], [ false, %bb.il ], [ true, %bb.db ], [ false, %bb.im ], [ true, %bb.dc ], [ false, %bb.in ], [ true, %bb.dd ], [ false, %bb.io ], [ true, %bb.de ], [ false, %bb.ip ], [ true, %bb.df ], [ false, %bb.iq ], [ true, %bb.dg ], [ false, %bb.ir ], [ true, %bb.dh ], [ false, %bb.is ], [ true, %bb.di ], [ false, %bb.it ], [ true, %bb.dj ], [ false, %bb.iu ], [ true, %bb.dk ], [ false, %bb.iv ], [ true, %bb.dl ], [ false, %bb.iw ], [ true, %bb.dm ], [ false, %bb.ix ], [ true, %bb.dn ], [ false, %bb.iy ], [ true, %bb.do ], [ false, %bb.iz ], [ true, %bb.dp ], [ false, %bb.ja ], [ true, %bb.dq ], [ false, %bb.jb ], [ true, %bb.dr ], [ false, %bb.jc ], [ true, %bb.ds ], [ false, %bb.jd ], [ true, %bb.dt ], [ false, %bb.je ], [ true, %bb.du ], [ false, %bb.jf ], [ true, %bb.dv ], [ false, %bb.jg ], [ true, %bb.dw ], [ false, %bb.jh ], [ true, %bb.dx ], [ false, %bb.ji ], [ true, %bb.dy ], [ false, %bb.jj ], [ true, %bb.dz ], [ false, %bb.jk ], [ true, %bb.ea ], [ false, %bb.jl ], [ true, %bb.eb ], [ false, %bb.jm ], [ true, %bb.ec ], [ false, %bb.jn ], [ true, %bb.ed ], [ false, %bb.jo ], [ true, %bb.ee ], [ false, %bb.jp ], [ true, %bb.ef ], [ false, %bb.jq ], [ true, %bb.eg ], [ false, %bb.jr ], [ true, %bb.eh ], [ false, %bb.js ], [ true, %bb.ei ], [ false, %bb.jt ], [ true, %bb.ej ], [ false, %bb.ju ], [ true, %bb.ek ], [ false, %bb.jv ], [ true, %bb.el ], [ false, %bb.jw ], [ true, %bb.em ], [ false, %bb.jx ], [ true, %bb.en ], [ false, %bb.jy ], [ true, %bb.eo ], [ false, %bb.jz ], [ true, %bb.ep ], [ false, %bb.ka ], [ true, %bb.eq ], [ false, %bb.kb ], [ true, %bb.er ], [ false, %bb.kc ], [ true, %bb.es ], [ false, %bb.kd ], [ true, %bb.et ], [ false, %bb.ke ], [ true, %bb.eu ], [ false, %bb.kf ], [ true, %bb.ev ], [ false, %bb.kg ], [ true, %bb.ew ], [ false, %bb.kh ], [ true, %bb.ex ], [ false, %bb.ki ], [ true, %bb.ey ], [ false, %bb.kj ], [ true, %bb.ez ], [ false, %bb.kk ], [ true, %bb.fa ], [ false, %bb.kl ], [ true, %bb.fb ], [ false, %bb.km ], [ true, %bb.fc ], [ false, %bb.kn ], [ true, %bb.fd ], [ false, %bb.ko ], [ true, %bb.fe ], [ false, %bb.kp ], [ true, %bb.ff ], [ false, %bb.kq ], [ true, %bb.fg ], [ false, %bb.kr ], [ true, %bb.fh ], [ false, %bb.ks ], [ true, %bb.fi ], [ false, %bb.kt ], [ true, %bb.fj ], [ false, %bb.ku ], [ true, %bb.fk ], [ false, %bb.kv ], [ true, %bb.fl ], [ false, %bb.kw ], [ true, %bb.fm ], [ false, %bb.kx ], [ true, %bb.fn ], [ false, %bb.ky ], [ true, %.noexc21.i.i.i ], [ true, %.noexc20.i.i.i ], [ true, %.noexc18.i.i.i ], [ true, %.noexc19.i.i.i ], [ true, %.noexc14.i.i.i ], [ true, %bb.fp ] ; 2 uses
  %i.ds = load i8, ptr %i.br, align 8, !range !31, !alias.scope !63256, !noalias !63257, !noundef !23
  %i.dt = trunc nuw i8 %i.ds to i1
  br i1 %i.dt, label %bb.lb, label %bb.la

bb.kz:                                            ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !63255
  store i64 24, ptr %i.p, align 8, !noalias !63255
  %i.du = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.be, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.p)
          to label %.noexc23.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !63241

.noexc23.i.i.i:                                   ; preds = %bb.kz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !63255
  br label %_ZN10serde_core2de9SeqAccess12next_element17hf143a02275451800E.exit.i.i.i.a

bb.la:                                            ; preds = %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17ha3cdf8a617f8bf45E.exit.i.i.i.i.i.i.i.i"
  %i.dv = getelementptr inbounds nuw i8, ptr %i.be, i64 57 ; 2 uses
  %i.dw = load i8, ptr %i.dv, align 1, !alias.scope !63256, !noalias !63257, !noundef !23
  %i.dx = add i8 %i.dw, 1
  store i8 %i.dx, ptr %i.dv, align 1, !alias.scope !63256, !noalias !63257
  br i1 %.sink.i11.i.i.i.i.i.i.i.i, label %_ZN10serde_core2de9SeqAccess12next_element17hf143a02275451800E.exit.i.i.i.a, label %bb.lc

bb.lb:                                            ; preds = %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17ha3cdf8a617f8bf45E.exit.i.i.i.i.i.i.i.i"
  br i1 %.sink.i11.i.i.i.i.i.i.i.i, label %_ZN10serde_core2de9SeqAccess12next_element17hf143a02275451800E.exit.i.i.i.a, label %bb.lc

bb.lc:                                            ; preds = %bb.lb, %bb.la
  call void @llvm.experimental.noalias.scope.decl(metadata !63302)
  %i.dy = load i64, ptr %i.bg, align 8, !alias.scope !63303, !noalias !63304, !noundef !23 ; 2 uses
  %.promoted.i17.i.i.i.i.i.i.i.i = load i64, ptr %i.bf, align 8, !alias.scope !63305, !noalias !63306 ; 2 uses
  %i.dz = icmp ult i64 %.promoted.i17.i.i.i.i.i.i.i.i, %i.dy
  br i1 %i.dz, label %.lr.ph.i22.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i

.lr.ph.i22.i.i.i.i.i.i.i.i:                       ; preds = %bb.lc
  %i.ea = load ptr, ptr %i.bj, align 8, !alias.scope !63303, !noalias !63304, !nonnull !23, !align !33, !noundef !23
  br label %bb.ld

bb.ld:                                            ; preds = %bb.le, %.lr.ph.i22.i.i.i.i.i.i.i.i
  %i.eb = phi i64 [ %.promoted.i17.i.i.i.i.i.i.i.i, %.lr.ph.i22.i.i.i.i.i.i.i.i ], [ %i.ee, %bb.le ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !63307)
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.eb
  %i.ed = load i8, ptr %i.ec, align 1, !noalias !63308, !noundef !23
  switch i8 %i.ed, label %bb.lf [
    i8 32, label %bb.le
    i8 10, label %bb.le
    i8 9, label %bb.le
    i8 13, label %bb.le
    i8 125, label %bb.lj
  ], !prof !54

bb.le:                                            ; preds = %bb.ld, %bb.ld, %bb.ld, %bb.ld
  %i.ee = add i64 %i.eb, 1                        ; 3 uses
  store i64 %i.ee, ptr %i.bf, align 8, !alias.scope !63309, !noalias !63306
  %exitcond.not.i23.i.i.i.i.i.i.i.i = icmp eq i64 %i.ee, %i.dy
  br i1 %exitcond.not.i23.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i, label %bb.ld

.loopexit.i.i.i.i.i.i.i.i:                        ; preds = %bb.lc, %bb.le
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !63255
  store i64 3, ptr %i.n, align 8, !noalias !63255
  %i.ef = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17hf5fbb9662e1714d2E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.be, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.n)
          to label %.noexc24.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !63241

.noexc24.i.i.i:                                   ; preds = %.loopexit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !63255
  br label %_ZN10serde_core2de9SeqAccess12next_element17hf143a02275451800E.exit.i.i.i.a

bb.lf:                                            ; preds = %bb.ld
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !63255
  store i64 10, ptr %i.o, align 8, !noalias !63255
  %i.eg = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17hf5fbb9662e1714d2E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.be, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.o)
          to label %.noexc25.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !63241

.noexc25.i.i.i:                                   ; preds = %bb.lf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !63255
  br label %_ZN10serde_core2de9SeqAccess12next_element17hf143a02275451800E.exit.i.i.i.a

.loopexit.i.i.i:                                  ; preds = %bb.lk, %bb.ag, %bb.af, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ab, %bb.aa, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h05dfe9881812d30cE.exit.i.i.i.i.i.i.i.i.i.i.i", %bb.z, %bb.y, %.loopexit.i.i.i.i.i.i.i.i.i.i.i, %bb.t, %bb.q, %bb.h
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.lg

.loopexit.split-lp.i.i.i:                         ; preds = %bb.lf, %.loopexit.i.i.i.i.i.i.i.i, %bb.kz, %.noexc11.i.i.i, %bb.r, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.n, %.loopexit19.i.i.i.i.i.i.i.i
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.lg

bb.lg:                                            ; preds = %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i
  %lpad.phi.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ] ; 2 uses
  %.val5.i.i.i = load i64, ptr %i.r, align 8, !noalias !63237 ; 2 uses
  %i.eh = icmp eq i64 %.val5.i.i.i, 0
  br i1 %i.eh, label %common.resume.i.i, label %bb.lh

bb.lh:                                            ; preds = %bb.lg
  %.val6.i.i.i = load ptr, ptr %i.ar, align 8, !noalias !63237, !nonnull !23, !noundef !23
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i.i.i, i64 noundef %.val5.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !63241
  br label %common.resume.i.i

_ZN10serde_core2de9SeqAccess12next_element17hf143a02275451800E.exit.i.i.i.a: ; preds = %bb.lb, %bb.la, %.noexc25.i.i.i, %.noexc24.i.i.i, %.noexc23.i.i.i, %bb.u, %.noexc8.i.i.i, %.noexc7.i.i.i, %bb.i
  %.sroa.1228.0.i.i.i = phi ptr [ %i.du, %.noexc23.i.i.i ], [ %.sroa.121.0.ph.i.i.i.i.i.i.i.i.i.i.i, %bb.u ], [ %i.ef, %.noexc24.i.i.i ], [ %i.eg, %.noexc25.i.i.i ], [ %i.bb, %bb.i ], [ %i.bp, %.noexc7.i.i.i ], [ %i.bq, %.noexc8.i.i.i ], [ %.sroa.1458.0.i.i.i.i.i.i.i.i, %bb.la ], [ %.sroa.1458.0.i.i.i.i.i.i.i.i, %bb.lb ] ; 2 uses
  %.val.i.i.i = load i64, ptr %i.r, align 8, !noalias !63237 ; 2 uses
  %i.ei = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.ei, label %"_ZN182_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$..deserialize..VecVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17hca9437b5000a953eE.exit.i.i", label %bb.li

bb.li:                                            ; preds = %_ZN10serde_core2de9SeqAccess12next_element17hf143a02275451800E.exit.i.i.i.a
  %.val4.i.i.i = load ptr, ptr %i.ar, align 8, !noalias !63237, !nonnull !23, !noundef !23
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !63241
  br label %"_ZN182_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$..deserialize..VecVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17hca9437b5000a953eE.exit.i.i"

bb.lj:                                            ; preds = %bb.ld
  %i.ej = add i64 %i.eb, 1
  store i64 %i.ej, ptr %i.bf, align 8, !alias.scope !63310, !noalias !63257
  br label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.lj, %switch.lookup
  %.sroa.9.0.ph35.i.i.i = phi i8 [ %i.ck, %switch.lookup ], [ %.sroa.5.0.i.i.i.i.i.i.i.i, %bb.lj ]
  %i.ek = load i64, ptr %i.as, align 8, !alias.scope !63311, !noalias !63237, !noundef !23 ; 3 uses
  %i.el = load i64, ptr %i.r, align 8, !range !22, !alias.scope !63311, !noalias !63237, !noundef !23
  %i.em = icmp eq i64 %i.ek, %i.el
  br i1 %i.em, label %bb.lk, label %bb.ll

bb.lk:                                            ; preds = %.thread.i.i.i
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h4731b467761b7e7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @624)
          to label %bb.ll unwind label %.loopexit.i.i.i, !noalias !63241

.thread36.i.i.i:                                  ; preds = %bb.j
  %.sroa.032.0.copyload33.i.i = load i64, ptr %i.r, align 8, !noalias !63312
  %.sroa.734.0.copyload36.i.i = load ptr, ptr %i.ar, align 8, !noalias !63312
  %.sroa.8.0.copyload38.i.i = load i64, ptr %i.as, align 8, !noalias !63312
  br label %"_ZN182_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$..deserialize..VecVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17hca9437b5000a953eE.exit.i.i"

bb.ll:                                            ; preds = %bb.lk, %.thread.i.i.i
  %i.en = load ptr, ptr %i.ar, align 8, !alias.scope !63311, !noalias !63237, !nonnull !23, !noundef !23
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.ek
  store i8 %.sroa.9.0.ph35.i.i.i, ptr %i.eo, align 1, !noalias !63241
  %i.ep = add i64 %i.ek, 1
  br label %bb.h

"_ZN182_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$..deserialize..VecVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17hca9437b5000a953eE.exit.i.i": ; preds = %.thread36.i.i.i, %bb.li, %_ZN10serde_core2de9SeqAccess12next_element17hf143a02275451800E.exit.i.i.i.a
  %.sroa.8.0.i.i = phi i64 [ undef, %_ZN10serde_core2de9SeqAccess12next_element17hf143a02275451800E.exit.i.i.i.a ], [ undef, %bb.li ], [ %.sroa.8.0.copyload38.i.i, %.thread36.i.i.i ]
  %.sroa.734.0.i.i = phi ptr [ %.sroa.1228.0.i.i.i, %_ZN10serde_core2de9SeqAccess12next_element17hf143a02275451800E.exit.i.i.i.a ], [ %.sroa.1228.0.i.i.i, %bb.li ], [ %.sroa.734.0.copyload36.i.i, %.thread36.i.i.i ] ; 6 uses
  %.sroa.032.0.i.i = phi i64 [ -9223372036854775808, %_ZN10serde_core2de9SeqAccess12next_element17hf143a02275451800E.exit.i.i.i.a ], [ -9223372036854775808, %bb.li ], [ %.sroa.032.0.copyload33.i.i, %.thread36.i.i.i ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !63237
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !63233
  %i.eq = load i8, ptr %i.ah, align 8, !range !31, !alias.scope !63235, !noalias !63234, !noundef !23
  %i.er = trunc nuw i8 %i.eq to i1
  br i1 %i.er, label %bb.lo, label %bb.ln

bb.lm:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !63233
  store i64 24, ptr %i.t, align 8, !noalias !63233
  %i.es = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.t), !noalias !63234
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !63233
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.es, ptr %i.et, align 8, !alias.scope !63234, !noalias !63235
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !63234, !noalias !63235
  br label %"_ZN10serde_core2de5impls82_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$11deserialize17h19c27fe533289c66E.exit"

bb.ln:                                            ; preds = %"_ZN182_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$..deserialize..VecVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17hca9437b5000a953eE.exit.i.i"
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 57 ; 2 uses
  %i.ev = load i8, ptr %i.eu, align 1, !alias.scope !63235, !noalias !63234, !noundef !23
  %i.ew = add i8 %i.ev, 1
  store i8 %i.ew, ptr %i.eu, align 1, !alias.scope !63235, !noalias !63234
  br label %bb.lo

bb.lo:                                            ; preds = %bb.ln, %"_ZN182_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$..deserialize..VecVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17hca9437b5000a953eE.exit.i.i"
  %i.ex = invoke fastcc noundef align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$7end_seq17hd52b7a42658722bcE"(ptr noalias noundef nonnull align 8 dereferenceable(64) %1)
          to label %bb.lq unwind label %bb.lp, !noalias !63234 ; 9 uses

bb.lp:                                            ; preds = %bb.lo
  %i.ey = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr133drop_in_place$LT$core..result..Result$LT$alloc..vec..Vec$LT$meilisearch_types..locales..Locale$GT$$C$serde_json..error..Error$GT$$GT$17hdeee7b46ae310893E"(i64 %.sroa.032.0.i.i, ptr %.sroa.734.0.i.i) #44
          to label %common.resume.i.i unwind label %bb.lv, !noalias !63234

bb.lq:                                            ; preds = %bb.lo
  %i.ez = icmp eq i64 %.sroa.032.0.i.i, -9223372036854775808
  %.not62.i.i = icmp eq ptr %i.ex, null           ; 2 uses
  br i1 %i.ez, label %bb.ls, label %bb.lr

bb.lr:                                            ; preds = %bb.lq
  br i1 %.not62.i.i, label %bb.ma, label %bb.lt

bb.ls:                                            ; preds = %bb.lq
  br i1 %.not62.i.i, label %.thread53.i.i, label %bb.lw

bb.lt:                                            ; preds = %bb.lr
  %i.fa = icmp eq i64 %.sroa.032.0.i.i, 0
  br i1 %i.fa, label %.thread53.i.i, label %bb.lu

bb.lu:                                            ; preds = %bb.lt
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.734.0.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.734.0.i.i, i64 noundef %.sroa.032.0.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !63234
  br label %.thread53.i.i

bb.lv:                                            ; preds = %bb.lp
  %i.fb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !63234
  unreachable

bb.lw:                                            ; preds = %bb.ls
  call void @llvm.experimental.noalias.scope.decl(metadata !63313)
  call void @llvm.experimental.noalias.scope.decl(metadata !63314)
  %i.fc = load i64, ptr %i.ex, align 8, !range !51, !alias.scope !63315, !noalias !63316, !noundef !23
  switch i64 %i.fc, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit.i.i" [
    i64 0, label %bb.lx
    i64 1, label %bb.ly
  ]

bb.lx:                                            ; preds = %bb.lw
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %.val1.i.i.i.i.i.i = load i64, ptr %i.fd, align 8, !alias.scope !63315, !noalias !63316, !noundef !23 ; 2 uses
  %i.fe = icmp eq i64 %.val1.i.i.i.i.i.i, 0
  br i1 %i.fe, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i": ; preds = %bb.lx
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %.val.i.i.i.i.i.i = load ptr, ptr %i.ff, align 8, !alias.scope !63315, !noalias !63316, !nonnull !23, !noundef !23
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %.val1.i.i.i.i.i.i, i64 noundef 1) #45, !noalias !63317
  br label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit.i.i"

bb.ly:                                            ; preds = %bb.lw
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h7280a97f0d1e0e3fE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.fg)
          to label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit.i.i" unwind label %bb.lz, !noalias !63316

bb.lz:                                            ; preds = %bb.ly
  %i.fh = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ex, i64 noundef 40, i64 noundef 8) #45, !noalias !63316
  br label %common.resume.i.i

"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit.i.i": ; preds = %bb.ly, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i", %bb.lx, %bb.lw
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ex, i64 noundef 40, i64 noundef 8) #45, !noalias !63316
  br label %.thread53.i.i

.thread53.i.i:                                    ; preds = %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit.i.i", %bb.lu, %bb.lt, %bb.ls, %bb.e
  %.sroa.9.2.i.i = phi ptr [ %.sroa.734.0.i.i, %bb.ls ], [ %i.ak, %bb.e ], [ %.sroa.734.0.i.i, %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit.i.i" ], [ %i.ex, %bb.lt ], [ %i.ex, %bb.lu ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.2.i.i) ]
  %i.fi = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h952e3eeb82f23c65E(ptr noalias noundef nonnull align 8 %.sroa.9.2.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !noalias !63234
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fi, ptr %i.fj, align 8, !alias.scope !63234, !noalias !63235
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !63234, !noalias !63235
  br label %"_ZN10serde_core2de5impls82_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$11deserialize17h19c27fe533289c66E.exit"

bb.ma:                                            ; preds = %bb.lr
  store i64 %.sroa.032.0.i.i, ptr %0, align 8, !alias.scope !63234, !noalias !63235
  %.sroa.218.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.734.0.i.i, ptr %.sroa.218.0..sroa_idx.i.i, align 8, !alias.scope !63234, !noalias !63235
  %.sroa.319.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.8.0.i.i, ptr %.sroa.319.0..sroa_idx.i.i, align 8, !alias.scope !63234, !noalias !63235
  br label %"_ZN10serde_core2de5impls82_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$11deserialize17h19c27fe533289c66E.exit"

"_ZN10serde_core2de5impls82_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$11deserialize17h19c27fe533289c66E.exit": ; preds = %.loopexit.i.i, %bb.lm, %.thread53.i.i, %bb.ma
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h8a561159a6fca55cE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63342)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63343)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63344)
  %i.c = load i8, ptr %1, align 8, !range !30, !alias.scope !63345, !noalias !63346, !noundef !23
  switch i8 %i.c, label %"_ZN106_$LT$serde..private..de..content..ContentDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17hfd0656b318db2134E.exit.thread8.i" [
    i8 16, label %bb.e
    i8 17, label %bb.b
    i8 18, label %bb.e
    i8 0, label %.noexc6.i.i
  ], !prof !89

"_ZN106_$LT$serde..private..de..content..ContentDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17hfd0656b318db2134E.exit.thread8.i": ; preds = %bb.a
  %i.d = call fastcc noundef nonnull align 8 ptr @"_ZN5serde7private2de7content28ContentDeserializer$LT$E$GT$12invalid_type17h40366a40410784d1E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %1, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @20), !noalias !63346
  br label %bb.g

.noexc6.i.i:                                      ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.f = load i8, ptr %i.e, align 1, !range !31, !alias.scope !63347, !noalias !63348, !noundef !23
  tail call fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %1), !noalias !63346
  br label %"_ZN106_$LT$serde..private..de..content..ContentDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17hfd0656b318db2134E.exit.thread.i"

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !63345, !noalias !63346, !nonnull !23, !align !35, !noundef !23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !63349
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false), !noalias !63349
  %i.i = load i8, ptr %i.b, align 8, !range !30, !alias.scope !63350, !noalias !63351, !noundef !23
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.c, !prof !24

bb.c:                                             ; preds = %bb.b
  %i.k = invoke fastcc noundef nonnull align 8 ptr @"_ZN5serde7private2de7content28ContentDeserializer$LT$E$GT$12invalid_type17h40366a40410784d1E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.b, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @20)
          to label %"_ZN106_$LT$serde..private..de..content..ContentDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17hfd0656b318db2134E.exit.thread13.i" unwind label %bb.f, !noalias !63349

"_ZN106_$LT$serde..private..de..content..ContentDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17hfd0656b318db2134E.exit.thread13.i": ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !63349
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.h, i64 noundef 32, i64 noundef 8) #45, !noalias !63349
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.m = load i8, ptr %i.l, align 1, !range !31, !alias.scope !63350, !noalias !63351, !noundef !23
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.b)
          to label %"_ZN106_$LT$serde..private..de..content..ContentDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17hfd0656b318db2134E.exit.i" unwind label %bb.f, !noalias !63349

bb.e:                                             ; preds = %bb.a, %bb.a
  tail call fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %1), !noalias !63346
  br label %"_ZN106_$LT$serde..private..de..content..ContentDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17hfd0656b318db2134E.exit.thread.i"

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.h, i64 noundef 32, i64 noundef 8) #45, !noalias !63349
end_hunk_2
