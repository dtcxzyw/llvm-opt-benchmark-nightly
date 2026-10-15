Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/php_pcre?download=true
inline.NumInlined: 48
inline.NumDeleted: 11
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
@.str.5 = private unnamed_addr constant [22 x i8] c"Unknown modifier '%c'\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"NUL byte is not a valid modifier\00", align 1
@char_tables = internal global %struct._zend_array zeroinitializer, align 8
@gctx = internal unnamed_addr global ptr null, align 8
@.str.7 = private unnamed_addr constant [43 x i8] c"Failed to generate locale character tables\00", align 1
@cctx = internal unnamed_addr global ptr null, align 8
@.str.8 = private unnamed_addr constant [37 x i8] c"Compilation failed: %s at offset %zu\00", align 1
@.str.9 = private unnamed_addr constant [185 x i8] c"Allocation of JIT memory failed, PCRE JIT will be disabled. This is likely caused by security restrictions. Either grant PHP permission to allocate executable memory, or set pcre.jit=0\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"JIT compilation failed: %s\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"Internal pcre2_pattern_info() error %d\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"Internal pcre_pattern_info() error %d\00", align 1
@mdata_used = internal unnamed_addr global i1 false, align 1
@mdata = internal unnamed_addr global ptr null, align 8
@executor_globals = external local_unnamed_addr global %struct._zend_executor_globals, align 8
@.str.13 = private unnamed_addr constant [26 x i8] c"must be a PREG_* constant\00", align 1
@mctx = internal unnamed_addr global ptr null, align 8
@.str.14 = private unnamed_addr constant [33 x i8] c"Matched, but too many substrings\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"Get subpatterns list failed\00", align 1
@zend_empty_string = external local_unnamed_addr global ptr, align 8
@.str.16 = private unnamed_addr constant [5 x i8] c"MARK\00", align 1
@.str.17 = private unnamed_addr constant [42 x i8] c"must contain only string patterns as keys\00", align 1
@.str.18 = private unnamed_addr constant [34 x i8] c"must contain only valid callbacks\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"pcre\00", align 1
@ext_functions = internal constant [12 x %struct._zend_function_entry] [%struct._zend_function_entry { ptr @.str.33, ptr @zif_preg_match, ptr @arginfo_preg_match, i32 5, i32 0, ptr @frameless_function_infos_preg_match, ptr null }, %struct._zend_function_entry { ptr @.str.34, ptr @zif_preg_match_all, ptr @arginfo_preg_match, i32 5, i32 0, ptr null, ptr null }, %struct._zend_function_entry { ptr @.str.35, ptr @zif_preg_replace, ptr @arginfo_preg_replace, i32 5, i32 0, ptr @frameless_function_infos_preg_replace, ptr null }, %struct._zend_function_entry { ptr @.str.36, ptr @zif_preg_filter, ptr @arginfo_preg_replace, i32 5, i32 0, ptr null, ptr null }, %struct._zend_function_entry { ptr @.str.37, ptr @zif_preg_replace_callback, ptr @arginfo_preg_replace_callback, i32 6, i32 0, ptr null, ptr null }, %struct._zend_function_entry { ptr @.str.38, ptr @zif_preg_replace_callback_array, ptr @arginfo_preg_replace_callback_array, i32 5, i32 0, ptr null, ptr null }, %struct._zend_function_entry { ptr @.str.39, ptr @zif_preg_split, ptr @arginfo_preg_split, i32 4, i32 0, ptr null, ptr null }, %struct._zend_function_entry { ptr @.str.40, ptr @zif_preg_quote, ptr @arginfo_preg_quote, i32 2, i32 134217728, ptr null, ptr null }, %struct._zend_function_entry { ptr @.str.41, ptr @zif_preg_grep, ptr @arginfo_preg_grep, i32 3, i32 0, ptr null, ptr null }, %struct._zend_function_entry { ptr @.str.42, ptr @zif_preg_last_error, ptr @arginfo_preg_last_error, i32 0, i32 0, ptr null, ptr null }, %struct._zend_function_entry { ptr @.str.43, ptr @zif_preg_last_error_msg, ptr @arginfo_preg_last_error_msg, i32 0, i32 0, ptr null, ptr null }, %struct._zend_function_entry zeroinitializer], align 16
@.str.20 = private unnamed_addr constant [6 x i8] c"8.5.9\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"API20250925,NTS\00", align 1
@pcre_module_entry = hidden local_unnamed_addr global { i16, [2 x i8], i32, i8, i8, [6 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, i32, i8, [3 x i8], ptr, i32, [4 x i8], ptr } { i16 168, [2 x i8] zeroinitializer, i32 20250925, i8 0, i8 0, [6 x i8] zeroinitializer, ptr null, ptr null, ptr @.str.19, ptr @ext_functions, ptr @zm_startup_pcre, ptr @zm_shutdown_pcre, ptr @zm_activate_pcre, ptr @zm_deactivate_pcre, ptr @zm_info_pcre, ptr @.str.20, i64 120, ptr @pcre_globals, ptr @zm_globals_ctor_pcre, ptr @zm_globals_dtor_pcre, ptr null, i32 0, i8 0, [3 x i8] zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer, ptr @.str.21 }, align 8
@php_pcre_version = hidden local_unnamed_addr global ptr null, align 8
@.str.22 = private unnamed_addr constant [25 x i8] c"must be greater than %ld\00", align 1
@.str.23 = private unnamed_addr constant [65 x i8] c"Possible integer overflow in memory allocation (%zu * %zu + %zu)\00", align 1
@.str.24 = private unnamed_addr constant [80 x i8] c"must be of type array when argument #2 ($replacement) is an array, string given\00", align 1
@zend_one_char_string = external local_unnamed_addr global [256 x ptr], align 16
@.str.25 = private unnamed_addr constant [9 x i8] c"No error\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"Internal error\00", align 1
@.str.27 = private unnamed_addr constant [57 x i8] c"Malformed UTF-8 characters, possibly incorrectly encoded\00", align 1
@.str.28 = private unnamed_addr constant [75 x i8] c"The offset did not correspond to the beginning of a valid UTF-8 code point\00", align 1
@.str.29 = private unnamed_addr constant [26 x i8] c"Backtrack limit exhausted\00", align 1
@.str.30 = private unnamed_addr constant [26 x i8] c"Recursion limit exhausted\00", align 1
@.str.31 = private unnamed_addr constant [26 x i8] c"JIT stack limit exhausted\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"Unknown error\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"preg_match\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"preg_match_all\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c"preg_replace\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"preg_filter\00", align 1
@.str.37 = private unnamed_addr constant [22 x i8] c"preg_replace_callback\00", align 1
@.str.38 = private unnamed_addr constant [28 x i8] c"preg_replace_callback_array\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"preg_split\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"preg_quote\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"preg_grep\00", align 1
@.str.42 = private unnamed_addr constant [16 x i8] c"preg_last_error\00", align 1
@.str.43 = private unnamed_addr constant [20 x i8] c"preg_last_error_msg\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"pattern\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"subject\00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"matches\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.49 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@arginfo_preg_match = internal constant [6 x { ptr, { ptr, i32, [4 x i8] }, ptr }] [{ ptr, { ptr, i32, [4 x i8] }, ptr } { ptr inttoptr (i64 2 to ptr), { ptr, i32, [4 x i8] } { ptr null, i32 20, [4 x i8] zeroinitializer }, ptr null }, { ptr, { ptr, i32, [4 x i8] }, ptr } { ptr @.str.44, { ptr, i32, [4 x i8] } { ptr null, i32 64, [4 x i8] zeroinitializer }, ptr null }, { ptr, { ptr, i32, [4 x i8] }, ptr } { ptr @.str.45, { ptr, i32, [4 x i8] } { ptr null, i32 64, [4 x i8] zeroinitializer }, ptr null }, { ptr, { ptr, i32, [4 x i8] }, ptr } { ptr @.str.46, { ptr, i32, [4 x i8] } { ptr null, i32 33554432, [4 x i8] zeroinitializer }, ptr @.str.47 }, { ptr, { ptr, i32, [4 x i8] }, ptr } { ptr @.str.48, { ptr, i32, [4 x i8] } { ptr null, i32 16, [4 x i8] zeroinitializer }, ptr @.str.49 }, { ptr, { ptr, i32, [4 x i8] }, ptr } { ptr @.str.50, { ptr, i32, [4 x i8] } { ptr null, i32 16, [4 x i8] zeroinitializer }, ptr @.str.49 }], align 16
@frameless_function_infos_preg_match = internal constant [2 x { ptr, i32, [4 x i8] }] [{ ptr, i32, [4 x i8] } { ptr @zflf_preg_match_2, i32 2, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } zeroinitializer], align 16
@.str.53 = private unnamed_addr constant [12 x i8] c"replacement\00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"limit\00", align 1
@.str.55 = private unnamed_addr constant [3 x i8] c"-1\00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@arginfo_preg_replace = internal constant [6 x { ptr, { ptr, i32, [4 x i8] }, ptr }] [{ ptr, { ptr, i32, [4 x i8] }, ptr } { ptr inttoptr (i64 3 to ptr), { ptr, i32, [4 x i8] } { ptr null, i32 194, [4 x i8] zeroinitializer }, ptr null }, { ptr, { ptr, i32, [4 x i8] }, ptr } { ptr @.str.44, { ptr, i32, [4 x i8] } { ptr null, i32 192, [4 x i8] zeroinitializer }, ptr null }, { ptr, { ptr, i32, [4 x i8] }, ptr } { ptr @.str.53, { ptr, i32, [4 x i8] } { ptr null, i32 192, [4 x i8] zeroinitializer }, ptr null }, { ptr, { ptr, i32, [4 x i8] }, ptr } { ptr @.str.45, { ptr, i32, [4 x i8] } { ptr null, i32 192, [4 x i8] zeroinitializer }, ptr null }, { ptr, { ptr, i32, [4 x i8] }, ptr } { ptr @.str.54, { ptr, i32, [4 x i8] } { ptr null, i32 16, [4 x i8] zeroinitializer }, ptr @.str.55 }, { ptr, { ptr, i32, [4 x i8] }, ptr } { ptr @.str.56, { ptr, i32, [4 x i8] } { ptr null, i32 33554432, [4 x i8] zeroinitializer }, ptr @.str.47 }], align 16
@frameless_function_infos_preg_replace = internal constant [2 x { ptr, i32, [4 x i8] }] [{ ptr, i32, [4 x i8] } { ptr @zflf_preg_replace_3, i32 3, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } zeroinitializer], align 16
@.str.59 = private unnamed_addr constant [9 x i8] c"callback\00", align 1
@arginfo_preg_replace_callback = internal constant [7 x { ptr, { ptr, i32, [4 x i8] }, ptr }] [{ ptr, { ptr, i32, [4 x i8] }, ptr } { ptr inttoptr (i64 3 to ptr), { ptr, i32, [4 x i8] } { ptr null, i32 194, [4 x i8] zeroinitializer }, ptr null }, { ptr, { ptr, i32, [4 x i8] }, ptr } { ptr @.str.44, { ptr, i32, [4 x i8] } { ptr null, i32 192, [4 x i8] zeroinitializer }, ptr null }, { ptr, { ptr, i32, [4 x i8] }, ptr } { ptr @.str.59, { ptr, i32, [4 x i8] } { ptr null, i32 4096, [4 x i8] zeroinitializer }, ptr null }, { ptr, { ptr, i32, [4 x i8] }, ptr } { ptr @.str.45, { ptr, i32, [4 x i8] } { ptr null, i32 192, [4 x i8] zeroinitializer }, ptr null }, { ptr, { ptr, i32, [4 x i8] }, ptr } { ptr @.str.54, { ptr, i32, [4 x i8] } { ptr null, i32 16, [4 x i8] zeroinitializer }, ptr @.str.55 }, { ptr, { ptr, i32, [4 x i8] }, ptr } { ptr @.str.56, { ptr, i32, [4 x i8] } { ptr null, i32 33554432, [4 x i8] zeroinitializer }, ptr @.str.47 }, { ptr, { ptr, i32, [4 x i8] }, ptr } { ptr @.str.48, { ptr, i32, [4 x i8] } { ptr null, i32 16, [4 x i8] zeroinitializer }, ptr @.str.49 }], align 16
@arginfo_preg_replace_callback_array = internal constant [6 x { ptr, { ptr, i32, [4 x i8] }, ptr }] [{ ptr, { ptr, i32, [4 x i8] }, ptr } { ptr inttoptr (i64 2 to ptr), { ptr, i32, [4 x i8] } { ptr null, i32 194, [4 x i8] zeroinitializer }, ptr null }, { ptr, { ptr, i32, [4 x i8] }, ptr } { ptr @.str.44, { ptr, i32, [4 x i8] } { ptr null, i32 128, [4 x i8] zeroinitializer }, ptr null }, { ptr, { ptr, i32, [4 x i8] }, ptr } { ptr @.str.45, { ptr, i32, [4 x i8] } { ptr null, i32 192, [4 x i8] zeroinitializer }, ptr null }, { ptr, { ptr, i32, [4 x i8] }, ptr } { ptr @.str.54, { ptr, i32, [4 x i8] } { ptr null, i32 16, [4 x i8] zeroinitializer }, ptr @.str.55 }, { ptr, { ptr, i32, [4 x i8] }, ptr } { ptr @.str.56, { ptr, i32, [4 x i8] } { ptr null, i32 33554432, [4 x i8] zeroinitializer }, ptr @.str.47 }, { ptr, { ptr, i32, [4 x i8] }, ptr } { ptr @.str.48, { ptr, i32, [4 x i8] } { ptr null, i32 16, [4 x i8] zeroinitializer }, ptr @.str.49 }], align 16
@arginfo_preg_split = internal constant [5 x { ptr, { ptr, i32, [4 x i8] }, ptr }] [{ ptr, { ptr, i32, [4 x i8] }, ptr } { ptr inttoptr (i64 2 to ptr), { ptr, i32, [4 x i8] } { ptr null, i32 132, [4 x i8] zeroinitializer }, ptr null }, { ptr, { ptr, i32, [4 x i8] }, ptr } { ptr @.str.44, { ptr, i32, [4 x i8] } { ptr null, i32 64, [4 x i8] zeroinitializer }, ptr null }, { ptr, { ptr, i32, [4 x i8] }, ptr } { ptr @.str.45, { ptr, i32, [4 x i8] } { ptr null, i32 64, [4 x i8] zeroinitializer }, ptr null }, { ptr, { ptr, i32, [4 x i8] }, ptr } { ptr @.str.54, { ptr, i32, [4 x i8] } { ptr null, i32 16, [4 x i8] zeroinitializer }, ptr @.str.55 }, { ptr, { ptr, i32, [4 x i8] }, ptr } { ptr @.str.48, { ptr, i32, [4 x i8] } { ptr null, i32 16, [4 x i8] zeroinitializer }, ptr @.str.49 }], align 16
@.str.63 = private unnamed_addr constant [4 x i8] c"str\00", align 1
@.str.64 = private unnamed_addr constant [10 x i8] c"delimiter\00", align 1
@arginfo_preg_quote = internal constant [3 x { ptr, { ptr, i32, [4 x i8] }, ptr }] [{ ptr, { ptr, i32, [4 x i8] }, ptr } { ptr inttoptr (i64 1 to ptr), { ptr, i32, [4 x i8] } { ptr null, i32 64, [4 x i8] zeroinitializer }, ptr null }, { ptr, { ptr, i32, [4 x i8] }, ptr } { ptr @.str.63, { ptr, i32, [4 x i8] } { ptr null, i32 64, [4 x i8] zeroinitializer }, ptr null }, { ptr, { ptr, i32, [4 x i8] }, ptr } { ptr @.str.64, { ptr, i32, [4 x i8] } { ptr null, i32 66, [4 x i8] zeroinitializer }, ptr @.str.47 }], align 16
@.str.66 = private unnamed_addr constant [6 x i8] c"array\00", align 1
@arginfo_preg_grep = internal constant [4 x { ptr, { ptr, i32, [4 x i8] }, ptr }] [{ ptr, { ptr, i32, [4 x i8] }, ptr } { ptr inttoptr (i64 2 to ptr), { ptr, i32, [4 x i8] } { ptr null, i32 132, [4 x i8] zeroinitializer }, ptr null }, { ptr, { ptr, i32, [4 x i8] }, ptr } { ptr @.str.44, { ptr, i32, [4 x i8] } { ptr null, i32 64, [4 x i8] zeroinitializer }, ptr null }, { ptr, { ptr, i32, [4 x i8] }, ptr } { ptr @.str.66, { ptr, i32, [4 x i8] } { ptr null, i32 128, [4 x i8] zeroinitializer }, ptr null }, { ptr, { ptr, i32, [4 x i8] }, ptr } { ptr @.str.48, { ptr, i32, [4 x i8] } { ptr null, i32 16, [4 x i8] zeroinitializer }, ptr @.str.49 }], align 16
@arginfo_preg_last_error = internal constant [1 x { ptr, { ptr, i32, [4 x i8] }, ptr }] [{ ptr, { ptr, i32, [4 x i8] }, ptr } { ptr null, { ptr, i32, [4 x i8] } { ptr null, i32 16, [4 x i8] zeroinitializer }, ptr null }], align 16
@arginfo_preg_last_error_msg = internal constant [1 x { ptr, { ptr, i32, [4 x i8] }, ptr }] [{ ptr, { ptr, i32, [4 x i8] }, ptr } { ptr null, { ptr, i32, [4 x i8] } { ptr null, i32 64, [4 x i8] zeroinitializer }, ptr null }], align 16
@pcre2_init_ok = internal unnamed_addr global i1 false, align 1
@jit_stack = internal unnamed_addr global ptr null, align 8
@.str.70 = private unnamed_addr constant [21 x i8] c"pcre.backtrack_limit\00", align 1
@.str.71 = private unnamed_addr constant [8 x i8] c"1000000\00", align 1
@.str.72 = private unnamed_addr constant [21 x i8] c"pcre.recursion_limit\00", align 1
@.str.73 = private unnamed_addr constant [7 x i8] c"100000\00", align 1
@.str.74 = private unnamed_addr constant [9 x i8] c"pcre.jit\00", align 1
@.str.75 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@ini_entries = internal constant [4 x { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i8, i8 }] [{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i8, i8 } { ptr @.str.70, ptr @OnUpdateBacktrackLimit, ptr inttoptr (i64 56 to ptr), ptr @pcre_globals, ptr null, ptr @.str.71, ptr null, i32 7, i16 20, i8 7, i8 0 }, { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i8, i8 } { ptr @.str.72, ptr @OnUpdateRecursionLimit, ptr inttoptr (i64 64 to ptr), ptr @pcre_globals, ptr null, ptr @.str.73, ptr null, i32 6, i16 20, i8 7, i8 0 }, { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i8, i8 } { ptr @.str.74, ptr @OnUpdateJit, ptr inttoptr (i64 72 to ptr), ptr @pcre_globals, ptr null, ptr @.str.75, ptr @zend_ini_boolean_displayer_cb, i32 1, i16 8, i8 7, i8 0 }, { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i8, i8 } zeroinitializer], align 16
@.str.77 = private unnamed_addr constant [19 x i8] c"PREG_PATTERN_ORDER\00", align 1
@.str.78 = private unnamed_addr constant [15 x i8] c"PREG_SET_ORDER\00", align 1
@.str.79 = private unnamed_addr constant [20 x i8] c"PREG_OFFSET_CAPTURE\00", align 1
@.str.80 = private unnamed_addr constant [23 x i8] c"PREG_UNMATCHED_AS_NULL\00", align 1
@.str.81 = private unnamed_addr constant [20 x i8] c"PREG_SPLIT_NO_EMPTY\00", align 1
@.str.82 = private unnamed_addr constant [25 x i8] c"PREG_SPLIT_DELIM_CAPTURE\00", align 1
@.str.83 = private unnamed_addr constant [26 x i8] c"PREG_SPLIT_OFFSET_CAPTURE\00", align 1
@.str.84 = private unnamed_addr constant [17 x i8] c"PREG_GREP_INVERT\00", align 1
@.str.85 = private unnamed_addr constant [14 x i8] c"PREG_NO_ERROR\00", align 1
@.str.86 = private unnamed_addr constant [20 x i8] c"PREG_INTERNAL_ERROR\00", align 1
@.str.87 = private unnamed_addr constant [27 x i8] c"PREG_BACKTRACK_LIMIT_ERROR\00", align 1
@.str.88 = private unnamed_addr constant [27 x i8] c"PREG_RECURSION_LIMIT_ERROR\00", align 1
@.str.89 = private unnamed_addr constant [20 x i8] c"PREG_BAD_UTF8_ERROR\00", align 1
@.str.90 = private unnamed_addr constant [27 x i8] c"PREG_BAD_UTF8_OFFSET_ERROR\00", align 1
@.str.91 = private unnamed_addr constant [26 x i8] c"PREG_JIT_STACKLIMIT_ERROR\00", align 1
@.str.92 = private unnamed_addr constant [13 x i8] c"PCRE_VERSION\00", align 1
@.str.93 = private unnamed_addr constant [19 x i8] c"PCRE_VERSION_MAJOR\00", align 1
@.str.94 = private unnamed_addr constant [19 x i8] c"PCRE_VERSION_MINOR\00", align 1
@.str.95 = private unnamed_addr constant [17 x i8] c"PCRE_JIT_SUPPORT\00", align 1
@.str.96 = private unnamed_addr constant [51 x i8] c"PCRE (Perl Compatible Regular Expressions) Support\00", align 1
@.str.97 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.98 = private unnamed_addr constant [21 x i8] c"PCRE Library Version\00", align 1
@.str.99 = private unnamed_addr constant [21 x i8] c"PCRE Unicode Version\00", align 1
@.str.100 = private unnamed_addr constant [17 x i8] c"PCRE JIT Support\00", align 1
@.str.101 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.102 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.103 = private unnamed_addr constant [16 x i8] c"PCRE JIT Target\00", align 1
@switch.table.zif_preg_last_error_msg = private unnamed_addr constant [7 x ptr] [ptr @.str.25, ptr @.str.26, ptr @.str.29, ptr @.str.30, ptr @.str.27, ptr @.str.28, ptr @.str.31], align 8
@switch.table.php_pcre_replace_func_impl = private unnamed_addr constant [18 x i8] [i8 3, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 2, i8 6, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 5], align 4

; Function Attrs: nounwind uwtable
define dso_local ptr @pcre_get_compiled_regex_cache_ex(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %2 = alloca %struct._zval_struct, align 8       ; 5 uses
  %3 = alloca %struct._zval_struct, align 8       ; 5 uses
  %4 = alloca %struct._zval_struct, align 8       ; 5 uses
  %i.b = alloca [128 x i8], align 16              ; 6 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %5 = alloca %struct._pcre_cache_entry, align 8  ; 13 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 72), align 8 ; 3 uses
  %i.h = icmp ne ptr %i.g, null
  %or.cond = select i1 %1, i1 %i.h, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !17
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !17
  %i.o = tail call ptr @zend_string_concat2(ptr noundef nonnull %i.i, i64 noundef %i.k, ptr noundef nonnull %i.l, i64 noundef %i.n) #23
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0157 = phi ptr [ %i.o, %bb.b ], [ %0, %bb.a ] ; 50 uses
  %i.p = tail call ptr @zend_hash_find(ptr noundef nonnull @pcre_globals, ptr noundef %.0157) #23 ; 2 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not199 = icmp eq ptr %.0157, %0
  br i1 %.not199, label %zend_string_release_ex.exit222, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.0157, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !18
  %i.s = and i32 %i.r, 64
  %.not.i221 = icmp eq i32 %i.s, 0
  br i1 %.not.i221, label %bb.f, label %zend_string_release_ex.exit222

bb.f:                                             ; preds = %bb.e
  %i.t = load i32, ptr %.0157, align 4, !tbaa !19 ; 2 uses
  %i.u = icmp ne i32 %i.t, 0
  tail call void @llvm.assume(i1 %i.u)
  %i.v = add i32 %i.t, -1                         ; 2 uses
  store i32 %i.v, ptr %.0157, align 4, !tbaa !19
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.g, label %zend_string_release_ex.exit222

bb.g:                                             ; preds = %bb.f
  tail call void @_efree(ptr noundef nonnull %.0157) #23
  br label %zend_string_release_ex.exit222

zend_string_release_ex.exit222:                   ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %i.x = load ptr, ptr %i.p, align 8, !tbaa !18
  br label %zend_string_release_ex.exit214

bb.h:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !17  ; 2 uses
  %i.ab = tail call ptr @__ctype_b_loc() #24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !108
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %.0164 = phi ptr [ %i.y, %bb.h ], [ %i.aj, %bb.i ] ; 3 uses
  %i.ad = load i8, ptr %.0164, align 1, !tbaa !18 ; 6 uses
  %i.ae = zext i8 %i.ad to i64
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.ac, i64 %i.ae
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !110
  %.fr = freeze i16 %i.ag
  %i.ah = zext i16 %.fr to i32                    ; 2 uses
  %i.ai = and i32 %i.ah, 8192
  %.not186 = icmp eq i32 %i.ai, 0
  %i.aj = getelementptr inbounds nuw i8, ptr %.0164, i64 1 ; 7 uses
  br i1 %.not186, label %bb.j, label %bb.i, !llvm.loop !103

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aa ; 9 uses
  %.not187 = icmp ult ptr %.0164, %i.ak
  br i1 %.not187, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not198 = icmp eq ptr %.0157, %0
  br i1 %.not198, label %zend_string_release_ex.exit220, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %.0157, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !18
  %i.an = and i32 %i.am, 64
  %.not.i219 = icmp eq i32 %i.an, 0
  br i1 %.not.i219, label %bb.m, label %zend_string_release_ex.exit220

bb.m:                                             ; preds = %bb.l
  %i.ao = load i32, ptr %.0157, align 4, !tbaa !19 ; 2 uses
  %i.ap = icmp ne i32 %i.ao, 0
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = add i32 %i.ao, -1                       ; 2 uses
  store i32 %i.aq, ptr %.0157, align 4, !tbaa !19
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.n, label %zend_string_release_ex.exit220

bb.n:                                             ; preds = %bb.m
  tail call void @_efree(ptr noundef nonnull %.0157) #23
  br label %zend_string_release_ex.exit220

zend_string_release_ex.exit220:                   ; preds = %bb.n, %bb.m, %bb.l, %bb.k
  tail call void (ptr, i32, ptr, ...) @php_error_docref(ptr noundef null, i32 noundef 2, ptr noundef nonnull @.str) #23
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @pcre_globals, i64 76), align 4, !tbaa !27
  br label %zend_string_release_ex.exit214

bb.o:                                             ; preds = %bb.j
  %i.as = and i32 %i.ah, 8
  %.not248 = icmp eq i32 %i.as, 0
  br i1 %.not248, label %switch.early.test, label %bb.p

switch.early.test:                                ; preds = %bb.o
  switch i8 %i.ad, label %bb.t [
    i8 92, label %bb.p
    i8 0, label %bb.p
  ]

bb.p:                                             ; preds = %switch.early.test, %switch.early.test, %bb.o
  %.not197 = icmp eq ptr %.0157, %0
  br i1 %.not197, label %zend_string_release_ex.exit218, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.at = getelementptr inbounds nuw i8, ptr %.0157, i64 4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !18
  %i.av = and i32 %i.au, 64
  %.not.i217 = icmp eq i32 %i.av, 0
  br i1 %.not.i217, label %bb.r, label %zend_string_release_ex.exit218

bb.r:                                             ; preds = %bb.q
  %i.aw = load i32, ptr %.0157, align 4, !tbaa !19 ; 2 uses
  %i.ax = icmp ne i32 %i.aw, 0
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = add i32 %i.aw, -1                       ; 2 uses
  store i32 %i.ay, ptr %.0157, align 4, !tbaa !19
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %bb.s, label %zend_string_release_ex.exit218

bb.s:                                             ; preds = %bb.r
  tail call void @_efree(ptr noundef nonnull %.0157) #23
  br label %zend_string_release_ex.exit218

zend_string_release_ex.exit218:                   ; preds = %bb.s, %bb.r, %bb.q, %bb.p
  tail call void (ptr, i32, ptr, ...) @php_error_docref(ptr noundef null, i32 noundef 2, ptr noundef nonnull @.str.1) #23
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @pcre_globals, i64 76), align 4, !tbaa !27
  br label %zend_string_release_ex.exit214

bb.t:                                             ; preds = %switch.early.test
  %i.ba = sext i8 %i.ad to i32                    ; 2 uses
  %memchr = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.2, i32 %i.ba, i64 15) ; 2 uses
  %.not188 = icmp eq ptr %memchr, null
  br i1 %.not188, label %.preheader, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bb = getelementptr inbounds nuw i8, ptr %memchr, i64 5
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !18  ; 3 uses
  %.pre = sext i8 %i.bc to i32                    ; 4 uses
  %i.bd = icmp eq i8 %i.ad, %i.bc
  br i1 %i.bd, label %.preheader, label %.preheader249

.preheader249:                                    ; preds = %bb.u
  %i.be = icmp ult ptr %i.aj, %i.ak
  br i1 %i.be, label %.lr.ph, label %bb.ab

.preheader:                                       ; preds = %bb.t, %bb.u
  %.pre-phi304 = phi i32 [ %.pre, %bb.u ], [ %i.ba, %bb.t ] ; 3 uses
  %i.bf = icmp ult ptr %i.aj, %i.ak
  br i1 %i.bf, label %.lr.ph263, label %bb.ab

.lr.ph263:                                        ; preds = %.preheader, %bb.w
  %.0161262 = phi ptr [ %i.bl, %bb.w ], [ %i.aj, %.preheader ] ; 4 uses
  %i.bg = load i8, ptr %.0161262, align 1, !tbaa !18 ; 2 uses
  %i.bh = icmp eq i8 %i.bg, 92
  %i.bi = getelementptr inbounds nuw i8, ptr %.0161262, i64 1 ; 2 uses
  %i.bj = icmp ult ptr %i.bi, %i.ak
  %or.cond202 = select i1 %i.bh, i1 %i.bj, i1 false
  br i1 %or.cond202, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.lr.ph263
  %i.bk = icmp eq i8 %i.bg, %i.ad
  br i1 %i.bk, label %.loopexit, label %bb.w

bb.w:                                             ; preds = %.lr.ph263, %bb.v
  %.1162 = phi ptr [ %.0161262, %bb.v ], [ %i.bi, %.lr.ph263 ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.1162, i64 1 ; 2 uses
  %i.bm = icmp ult ptr %i.bl, %i.ak
  br i1 %i.bm, label %.lr.ph263, label %bb.ab, !llvm.loop !104

.lr.ph:                                           ; preds = %.preheader249, %bb.aa
  %.0152259 = phi i32 [ %.2154, %bb.aa ], [ 1, %.preheader249 ] ; 4 uses
  %.2163258 = phi ptr [ %i.bw, %bb.aa ], [ %i.aj, %.preheader249 ] ; 4 uses
  %i.bn = load i8, ptr %.2163258, align 1, !tbaa !18 ; 3 uses
  %i.bo = icmp eq i8 %i.bn, 92
  %i.bp = getelementptr inbounds nuw i8, ptr %.2163258, i64 1 ; 2 uses
  %i.bq = icmp ult ptr %i.bp, %i.ak
  %or.cond204 = select i1 %i.bo, i1 %i.bq, i1 false
  br i1 %or.cond204, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %.lr.ph
  %i.br = icmp eq i8 %i.bn, %i.bc
  br i1 %i.br, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.bs = add nsw i32 %.0152259, -1
  %i.bt = icmp slt i32 %.0152259, 2
  br i1 %i.bt, label %.loopexit, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.1153 = phi i32 [ %i.bs, %bb.y ], [ %.0152259, %bb.x ]
  %i.bu = icmp eq i8 %i.bn, %i.ad
  %i.bv = zext i1 %i.bu to i32
  %spec.select = add nsw i32 %.1153, %i.bv
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph
  %.3 = phi ptr [ %.2163258, %bb.z ], [ %i.bp, %.lr.ph ]
  %.2154 = phi i32 [ %spec.select, %bb.z ], [ %.0152259, %.lr.ph ]
  %i.bw = getelementptr inbounds nuw i8, ptr %.3, i64 1 ; 2 uses
  %i.bx = icmp ult ptr %i.bw, %i.ak
  br i1 %i.bx, label %.lr.ph, label %bb.ab, !llvm.loop !105

.loopexit:                                        ; preds = %bb.y, %bb.v
  %6 = phi i1 [ true, %bb.v ], [ false, %bb.y ]
  %.pre-phi302 = phi i32 [ %.pre-phi304, %bb.v ], [ %.pre, %bb.y ]
  %.4 = phi ptr [ %.0161262, %bb.v ], [ %.2163258, %bb.y ] ; 4 uses
  %.not189 = icmp ult ptr %.4, %i.ak
  br i1 %.not189, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.w, %.preheader249, %.preheader, %.loopexit
  %7 = phi i1 [ true, %bb.w ], [ %6, %.loopexit ], [ false, %.preheader249 ], [ true, %.preheader ], [ false, %bb.aa ]
  %.pre-phi301 = phi i32 [ %.pre-phi304, %bb.w ], [ %.pre-phi302, %.loopexit ], [ %.pre, %.preheader249 ], [ %.pre-phi304, %.preheader ], [ %.pre, %bb.aa ]
  %.not196 = icmp eq ptr %.0157, %0
  br i1 %.not196, label %zend_string_release_ex.exit216, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.by = getelementptr inbounds nuw i8, ptr %.0157, i64 4
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !18
  %i.ca = and i32 %i.bz, 64
  %.not.i215 = icmp eq i32 %i.ca, 0
  br i1 %.not.i215, label %bb.ad, label %zend_string_release_ex.exit216

bb.ad:                                            ; preds = %bb.ac
  %i.cb = load i32, ptr %.0157, align 4, !tbaa !19 ; 2 uses
  %i.cc = icmp ne i32 %i.cb, 0
  tail call void @llvm.assume(i1 %i.cc)
  %i.cd = add i32 %i.cb, -1                       ; 2 uses
  store i32 %i.cd, ptr %.0157, align 4, !tbaa !19
  %i.ce = icmp eq i32 %i.cd, 0
  br i1 %i.ce, label %bb.ae, label %zend_string_release_ex.exit216

bb.ae:                                            ; preds = %bb.ad
  tail call void @_efree(ptr noundef nonnull %.0157) #23
  br label %zend_string_release_ex.exit216

zend_string_release_ex.exit216:                   ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.ab
  %.str.3..str.4 = select i1 %7, ptr @.str.3, ptr @.str.4
  tail call void (ptr, i32, ptr, ...) @php_error_docref(ptr noundef null, i32 noundef 2, ptr noundef nonnull %.str.3..str.4, i32 noundef %.pre-phi301) #23
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @pcre_globals, i64 76), align 4, !tbaa !27
  br label %zend_string_release_ex.exit214

bb.af:                                            ; preds = %.loopexit
  %i.cf = ptrtoint ptr %.4 to i64                 ; 2 uses
  %i.cg = ptrtoint ptr %i.aj to i64
  %i.ch = sub i64 %i.cf, %i.cg                    ; 2 uses
  %i.ci = tail call noalias ptr @_estrndup(ptr noundef nonnull %i.aj, i64 noundef %i.ch) #23 ; 5 uses
  %.5267 = getelementptr inbounds nuw i8, ptr %.4, i64 1 ; 2 uses
  %i.cj = icmp ult ptr %.5267, %i.ak
  br i1 %i.cj, label %.lr.ph271.preheader, label %._crit_edge

.lr.ph271.preheader:                              ; preds = %bb.af
  %i.ck = add i64 %i.aa, %i.a
  %i.cl = add i64 %i.ck, 24
  %i.cm = sub i64 %i.cl, %i.cf
  %scevgep = getelementptr i8, ptr %.4, i64 %i.cm
  br label %.lr.ph271

.lr.ph271:                                        ; preds = %.lr.ph271.preheader, %bb.ax
  %.5270 = phi ptr [ %.5, %bb.ax ], [ %.5267, %.lr.ph271.preheader ] ; 2 uses
  %.0166269 = phi i32 [ %.1167, %bb.ax ], [ 0, %.lr.ph271.preheader ] ; 16 uses
  %.0168268 = phi i32 [ %.1169, %bb.ax ], [ 0, %.lr.ph271.preheader ] ; 16 uses
  %i.cn = load i8, ptr %.5270, align 1, !tbaa !18 ; 2 uses
  switch i8 %i.cn, label %bb.ar [
    i8 105, label %bb.ag
    i8 109, label %bb.ah
    i8 110, label %bb.ai
    i8 115, label %bb.aj
    i8 120, label %bb.ak
    i8 65, label %bb.al
    i8 68, label %bb.am
    i8 114, label %bb.an
    i8 83, label %bb.ax
    i8 88, label %bb.ax
    i8 85, label %bb.ao
    i8 117, label %bb.ap
    i8 74, label %bb.aq
    i8 32, label %bb.ax
    i8 10, label %bb.ax
    i8 13, label %bb.ax
    i8 0, label %bb.as
  ]

bb.ag:                                            ; preds = %.lr.ph271
  %i.co = or i32 %.0168268, 8
  br label %bb.ax

bb.ah:                                            ; preds = %.lr.ph271
  %i.cp = or i32 %.0168268, 1024
  br label %bb.ax

bb.ai:                                            ; preds = %.lr.ph271
  %i.cq = or i32 %.0168268, 8192
  br label %bb.ax

bb.aj:                                            ; preds = %.lr.ph271
  %i.cr = or i32 %.0168268, 32
  br label %bb.ax

bb.ak:                                            ; preds = %.lr.ph271
  %i.cs = or i32 %.0168268, 128
  br label %bb.ax

bb.al:                                            ; preds = %.lr.ph271
  %i.ct = or i32 %.0168268, -2147483648
  br label %bb.ax

bb.am:                                            ; preds = %.lr.ph271
  %i.cu = or i32 %.0168268, 16
  br label %bb.ax

bb.an:                                            ; preds = %.lr.ph271
  %i.cv = or i32 %.0166269, 128
  br label %bb.ax

bb.ao:                                            ; preds = %.lr.ph271
  %i.cw = or i32 %.0168268, 262144
  br label %bb.ax

bb.ap:                                            ; preds = %.lr.ph271
  %i.cx = or i32 %.0168268, 655360
  br label %bb.ax

bb.aq:                                            ; preds = %.lr.ph271
  %i.cy = or i32 %.0168268, 64
  br label %bb.ax

bb.ar:                                            ; preds = %.lr.ph271
  %i.cz = sext i8 %i.cn to i32
  tail call void (ptr, i32, ptr, ...) @php_error_docref(ptr noundef null, i32 noundef 2, ptr noundef nonnull @.str.5, i32 noundef %i.cz) #23
  br label %bb.at

bb.as:                                            ; preds = %.lr.ph271
  tail call void (ptr, i32, ptr, ...) @php_error_docref(ptr noundef null, i32 noundef 2, ptr noundef nonnull @.str.6) #23
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @pcre_globals, i64 76), align 4, !tbaa !27
  tail call void @_efree(ptr noundef %i.ci) #23
  %.not195 = icmp eq ptr %.0157, %0
  br i1 %.not195, label %zend_string_release_ex.exit214, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.da = getelementptr inbounds nuw i8, ptr %.0157, i64 4
  %i.db = load i32, ptr %i.da, align 4, !tbaa !18
  %i.dc = and i32 %i.db, 64
  %.not.i213 = icmp eq i32 %i.dc, 0
  br i1 %.not.i213, label %bb.av, label %zend_string_release_ex.exit214

bb.av:                                            ; preds = %bb.au
  %i.dd = load i32, ptr %.0157, align 4, !tbaa !19 ; 2 uses
  %i.de = icmp ne i32 %i.dd, 0
  tail call void @llvm.assume(i1 %i.de)
  %i.df = add i32 %i.dd, -1                       ; 2 uses
  store i32 %i.df, ptr %.0157, align 4, !tbaa !19
  %i.dg = icmp eq i32 %i.df, 0
  br i1 %i.dg, label %bb.aw, label %zend_string_release_ex.exit214

bb.aw:                                            ; preds = %bb.av
  tail call void @_efree(ptr noundef nonnull %.0157) #23
  br label %zend_string_release_ex.exit214

bb.ax:                                            ; preds = %.lr.ph271, %.lr.ph271, %.lr.ph271, %.lr.ph271, %.lr.ph271, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag
  %.1169 = phi i32 [ %i.co, %bb.ag ], [ %i.cp, %bb.ah ], [ %i.cq, %bb.ai ], [ %i.cr, %bb.aj ], [ %i.cs, %bb.ak ], [ %i.ct, %bb.al ], [ %i.cu, %bb.am ], [ %.0168268, %bb.an ], [ %i.cw, %bb.ao ], [ %i.cx, %bb.ap ], [ %i.cy, %bb.aq ], [ %.0168268, %.lr.ph271 ], [ %.0168268, %.lr.ph271 ], [ %.0168268, %.lr.ph271 ], [ %.0168268, %.lr.ph271 ], [ %.0168268, %.lr.ph271 ] ; 2 uses
  %.1167 = phi i32 [ %.0166269, %bb.ag ], [ %.0166269, %bb.ah ], [ %.0166269, %bb.ai ], [ %.0166269, %bb.aj ], [ %.0166269, %bb.ak ], [ %.0166269, %bb.al ], [ %.0166269, %bb.am ], [ %i.cv, %bb.an ], [ %.0166269, %bb.ao ], [ %.0166269, %bb.ap ], [ %.0166269, %bb.aq ], [ %.0166269, %.lr.ph271 ], [ %.0166269, %.lr.ph271 ], [ %.0166269, %.lr.ph271 ], [ %.0166269, %.lr.ph271 ], [ %.0166269, %.lr.ph271 ] ; 2 uses
  %.5 = getelementptr inbounds nuw i8, ptr %.5270, i64 1 ; 2 uses
  %exitcond.not = icmp eq ptr %.5, %scevgep
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph271, !llvm.loop !106

._crit_edge:                                      ; preds = %bb.ax, %bb.af
  %.0168.lcssa = phi i32 [ 0, %bb.af ], [ %.1169, %bb.ax ] ; 2 uses
  %.0166.lcssa = phi i32 [ 0, %bb.af ], [ %.1167, %bb.ax ]
  %.not190 = icmp eq ptr %.0157, %0               ; 5 uses
  br i1 %.not190, label %zend_string_release.exit229.thread, label %bb.ay

bb.ay:                                            ; preds = %._crit_edge
  %i.dh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 72), align 8, !tbaa !124
  %i.di = tail call ptr @zend_hash_find(ptr noundef nonnull @char_tables, ptr noundef %i.dh) #23 ; 2 uses
  %.not.i223 = icmp eq ptr %i.di, null
  br i1 %.not.i223, label %bb.az, label %zend_hash_find_ptr.exit

zend_hash_find_ptr.exit:                          ; preds = %bb.ay
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !18, !nonnull !35, !noundef !35
  br label %zend_string_release.exit229.thread

bb.az:                                            ; preds = %bb.ay
  %i.dk = load ptr, ptr @gctx, align 8, !tbaa !36
  %i.dl = tail call ptr @php_pcre2_maketables(ptr noundef %i.dk) #23 ; 6 uses
  %.not192.not = icmp eq ptr %i.dl, null
  br i1 %.not192.not, label %bb.ba, label %zend_hash_add_ptr.exit, !prof !37

bb.ba:                                            ; preds = %bb.az
  tail call void (ptr, i32, ptr, ...) @php_error_docref(ptr noundef null, i32 noundef 2, ptr noundef nonnull @.str.7) #23
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @pcre_globals, i64 76), align 4, !tbaa !27
  %i.dm = getelementptr inbounds nuw i8, ptr %.0157, i64 4
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !18
  %i.do = and i32 %i.dn, 64
  %.not.i211 = icmp eq i32 %i.do, 0
  br i1 %.not.i211, label %bb.bb, label %zend_string_release.exit229

bb.bb:                                            ; preds = %bb.ba
  %i.dp = load i32, ptr %.0157, align 4, !tbaa !19 ; 2 uses
  %i.dq = icmp ne i32 %i.dp, 0
  tail call void @llvm.assume(i1 %i.dq)
  %i.dr = add i32 %i.dp, -1                       ; 2 uses
  store i32 %i.dr, ptr %.0157, align 4, !tbaa !19
  %i.ds = icmp eq i32 %i.dr, 0
  br i1 %i.ds, label %bb.bc, label %zend_string_release.exit229

bb.bc:                                            ; preds = %bb.bb
  tail call void @_efree(ptr noundef nonnull %.0157) #23
  br label %zend_string_release.exit229

zend_hash_add_ptr.exit:                           ; preds = %bb.az
  %i.dt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 72), align 8, !tbaa !124 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !17 ; 4 uses
  %i.dx = and i64 %i.dw, -8
  %i.dy = add i64 %i.dx, 32
  %i.dz = tail call noalias ptr @__zend_malloc(i64 noundef %i.dy) #25 ; 10 uses
  store i32 1, ptr %i.dz, align 4, !tbaa !19
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 4 ; 2 uses
  store i32 150, ptr %i.ea, align 4, !tbaa !18
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  store i64 0, ptr %i.eb, align 8, !tbaa !38
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  store i64 %i.dw, ptr %i.ec, align 8, !tbaa !17
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dz, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ed, ptr nonnull align 8 %i.du, i64 %i.dw, i1 false)
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.dw
  store i8 0, ptr %i.ee, align 1, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store ptr %i.dl, ptr %4, align 8, !tbaa !18
  %i.ef = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 13, ptr %i.ef, align 8, !tbaa !18
  %i.eg = call ptr @zend_hash_add(ptr noundef nonnull @char_tables, ptr noundef nonnull %i.dz, ptr noundef nonnull %4) #23 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.eh = load i32, ptr %i.ea, align 4, !tbaa !18 ; 2 uses
end_hunk_0
