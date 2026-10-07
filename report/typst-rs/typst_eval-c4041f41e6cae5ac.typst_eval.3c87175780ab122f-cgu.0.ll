Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_eval-c4041f41e6cae5ac.typst_eval.3c87175780ab122f-cgu.0?download=true
inline.NumInlined: 6644
inline.NumDeleted: 3025
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 28
begin_hunk_0
@287 = private unnamed_addr constant [66 x i8] c"#the provided array has a length of \C0\1A, but the pattern expects \C0\00", align 1
@288 = private unnamed_addr constant [28 x i8] c"\05type \C0\10 has no method `\C0\01`\00", align 1
@289 = private unnamed_addr constant [33 x i8] c"crates/typst-eval/src/methods.rs\00", align 1
@290 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @289, [16 x i8] c" \00\00\00\00\00\00\00g\00\00\00\05\00\00\00" }>, align 8
@291 = private unnamed_addr constant [5 x i8] c"index", align 1
@292 = private unnamed_addr constant [7 x i8] c"default", align 1
@293 = private unnamed_addr constant [5 x i8] c"value", align 1
@294 = private unnamed_addr constant [80 x i8] c"/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7/library/core/src/slice/index.rs\00", align 1
@295 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @294, [16 x i8] c"O\00\00\00\00\00\00\00\FC\03\00\007\00\00\00" }>, align 8
@_RNvNvXs7_NtNtCsdaEETE4DqmE_13typst_library11foundations7versionNtB7_7VersionNtNtB9_2ty10NativeType4data4DATA = external global { { ptr, i64 }, { ptr, i64 }, { ptr, i64 }, { ptr, i64 }, { { ptr, i64 }, { ptr, i64 } }, { ptr, i64 }, { ptr, { { { { { i32 } } } } }, [1 x i32] }, { { { [8 x i64] } }, { { { { { i32 } } } } }, [1 x i32] } }
@_RNvNvXsd_NtNtCsdaEETE4DqmE_13typst_library6layout6lengthNtB7_6LengthNtNtNtBb_11foundations2ty10NativeType4data4DATA = external global { { ptr, i64 }, { ptr, i64 }, { ptr, i64 }, { ptr, i64 }, { { ptr, i64 }, { ptr, i64 } }, { ptr, i64 }, { ptr, { { { { { i32 } } } } }, [1 x i32] }, { { { [8 x i64] } }, { { { { { i32 } } } } }, [1 x i32] } }
@_RNvNvXso_NtNtCsdaEETE4DqmE_13typst_library6layout3relNtB7_3RelNtNtNtBb_11foundations2ty10NativeType4data4DATA = external global { { ptr, i64 }, { ptr, i64 }, { ptr, i64 }, { ptr, i64 }, { { ptr, i64 }, { ptr, i64 } }, { ptr, i64 }, { ptr, { { { { { i32 } } } } }, [1 x i32] }, { { { [8 x i64] } }, { { { { { i32 } } } } }, [1 x i32] } }
@_RNvNvXsf_NtNtCsdaEETE4DqmE_13typst_library9visualize6strokeNtB7_6StrokeNtNtNtBb_11foundations2ty10NativeType4data4DATA = external global { { ptr, i64 }, { ptr, i64 }, { ptr, i64 }, { ptr, i64 }, { { ptr, i64 }, { ptr, i64 } }, { ptr, i64 }, { ptr, { { { { { i32 } } } } }, [1 x i32] }, { { { [8 x i64] } }, { { { { { i32 } } } } }, [1 x i32] } }
@_RNvNvXsB_NtNtCsdaEETE4DqmE_13typst_library6layout5alignNtB7_9AlignmentNtNtNtBb_11foundations2ty10NativeType4data4DATA = external global { { ptr, i64 }, { ptr, i64 }, { ptr, i64 }, { ptr, i64 }, { { ptr, i64 }, { ptr, i64 } }, { ptr, i64 }, { ptr, { { { { { i32 } } } } }, [1 x i32] }, { { { [8 x i64] } }, { { { { { i32 } } } } }, [1 x i32] } }
@_RNvNvNtNtNtCsiL9kQKV5x1F_15portable_atomic3imp9atomic1286x86_6412atomic_store4FUNC = external local_unnamed_addr global { { { ptr } } }
@_RNvNvCs5cbCQMMIObr_10typst_eval11eval_string7___CACHE = internal global <{ ptr, [144 x i8], [4 x i8], [4 x i8] }> <{ ptr @_RNvYNCNvNvCs5cbCQMMIObr_10typst_eval11eval_string7___CACHE0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuE9call_onceB8_, [144 x i8] undef, [4 x i8] c"\03\00\00\00", [4 x i8] undef }>, align 8
@_RNvNvCs5cbCQMMIObr_10typst_eval4eval7___CACHE = internal global <{ ptr, [144 x i8], [4 x i8], [4 x i8] }> <{ ptr @_RNvYNCNvNvCs5cbCQMMIObr_10typst_eval4eval7___CACHE0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuE9call_onceB8_, [144 x i8] undef, [4 x i8] c"\03\00\00\00", [4 x i8] undef }>, align 8
@_RNvNvNtCs5cbCQMMIObr_10typst_eval4call12eval_closure7___CACHE = internal global <{ ptr, [144 x i8], [4 x i8], [4 x i8] }> <{ ptr @_RNvYNCNvNvNtCs5cbCQMMIObr_10typst_eval4call12eval_closure7___CACHE0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuE9call_onceBa_, [144 x i8] undef, [4 x i8] c"\03\00\00\00", [4 x i8] undef }>, align 8
@_RNvNvNtCs5cbCQMMIObr_10typst_eval4code26warn_for_discarded_content5VALUE = internal global <{ ptr, [56 x i8], [4 x i8], [12 x i8] }> <{ ptr @_RNvYNCNvNvNtCs5cbCQMMIObr_10typst_eval4code26warn_for_discarded_content5VALUE0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuE9call_onceBa_, [56 x i8] undef, [4 x i8] c"\03\00\00\00", [12 x i8] undef }>, align 16
@296 = private unnamed_addr constant [41 x i8] c"cannot import from user-defined functions", align 1
@297 = private unnamed_addr constant [51 x i8] c"0expected path, module, function, or type, found \C0\00", align 1
@298 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @161, [16 x i8] c"\1F\00\00\00\00\00\00\004\00\00\00\11\00\00\00" }>, align 8
@299 = private unnamed_addr constant [38 x i8] c"unnecessary import rename to same name", align 1
@300 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @161, [16 x i8] c"\1F\00\00\00\00\00\00\00M\00\00\00$\00\00\00" }>, align 8
@301 = private unnamed_addr constant [25 x i8] c"this import has no effect", align 1
@302 = private unnamed_addr constant [40 x i8] c"dynamic import requires an explicit name", align 1
@303 = private unnamed_addr constant [33 x i8] c"you can name the import with `as`", align 1
@304 = private unnamed_addr constant [43 x i8] c"module name would not be a valid identifier", align 1
@305 = private unnamed_addr constant [35 x i8] c"you can rename the import with `as`", align 1
@306 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @161, [16 x i8] c"\1F\00\00\00\00\00\00\00h\00\00\00A\00\00\00" }>, align 8
@307 = private unnamed_addr constant [32 x i8] c"unexpected nested import failure", align 1
@308 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @161, [16 x i8] c"\1F\00\00\00\00\00\00\00\92\00\00\00%\00\00\00" }>, align 8
@309 = private unnamed_addr constant [45 x i8] c"*expected module, function, or type, found \C0\00", align 1
@310 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @161, [16 x i8] c"\1F\00\00\00\00\00\00\00\8C\00\00\00%\00\00\00" }>, align 8
@311 = private unnamed_addr constant [17 x i8] c"unresolved import", align 1
@312 = private unnamed_addr constant [10 x i8] c"a sequence", align 1
@313 = private unnamed_addr constant [17 x i8] c"\0Ecannot spread \C0\00", align 1
@314 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @155, [16 x i8] c"\1D\00\00\00\00\00\00\00\98\01\00\00\1A\00\00\00" }>, align 8
@315 = private unnamed_addr constant [10 x i8] c"while loop", align 1
@316 = private unnamed_addr constant [24 x i8] c"condition is always true", align 1
@317 = private unnamed_addr constant [25 x i8] c"loop seems to be infinite", align 1
@318 = private unnamed_addr constant [5 x i8] c"empty", align 1
@319 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @155, [16 x i8] c"\1D\00\00\00\00\00\00\00\E4\01\00\00\1A\00\00\00" }>, align 8
@320 = private unnamed_addr constant [8 x i8] c"for loop", align 1
@321 = private unnamed_addr constant [32 x i8] c"\1Dcannot destructure values of \C0\00", align 1
@322 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @188, [16 x i8] c"\1D\00\00\00\00\00\00\00\AC\00\00\00\11\00\00\00" }>, align 8
@323 = private unnamed_addr constant [20 x i8] c"\11cannot loop over \C0\00", align 1
@324 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @188, [16 x i8] c"\1D\00\00\00\00\00\00\00\AF\00\00\00\11\00\00\00" }>, align 8
@325 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs5cbCQMMIObr_10typst_eval, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsr_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt }>, align 8
@326 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtB8_6option6OptionINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs89doag9UmMt_9toml_edit3key3KeyEENtB6_5Debug3fmtCs5cbCQMMIObr_10typst_eval }>, align 8
@327 = private unnamed_addr constant [12 x i8] c"DuplicateKey", align 1
@328 = private unnamed_addr constant [5 x i8] c"table", align 1
@329 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs89doag9UmMt_9toml_edit3key3KeyEECs5cbCQMMIObr_10typst_eval, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsr_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs89doag9UmMt_9toml_edit3key3KeyENtNtCs3oUPovFnLWP_4core3fmt5Debug3fmtCs5cbCQMMIObr_10typst_eval }>, align 8
@330 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRReNtB6_5Debug3fmtCs5cbCQMMIObr_10typst_eval }>, align 8
@331 = private unnamed_addr constant [24 x i8] c"DottedKeyExtendWrongType", align 1
@332 = private unnamed_addr constant [6 x i8] c"actual", align 1
@333 = private unnamed_addr constant [10 x i8] c"OutOfRange", align 1
@334 = private unnamed_addr constant [22 x i8] c"RecursionLimitExceeded", align 1
@335 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @191, [16 x i8] c"I\00\00\00\00\00\00\00<\11\00\00\1F\00\00\00" }>, align 8
@336 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @196, [16 x i8] c"p\00\00\00\00\00\00\00y\00\00\00>\00\00\00" }>, align 8
@337 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @196, [16 x i8] c"p\00\00\00\00\00\00\00y\00\00\00G\00\00\00" }>, align 8
@338 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @196, [16 x i8] c"p\00\00\00\00\00\00\00z\00\00\00\1A\00\00\00" }>, align 8
@339 = private unnamed_addr constant [5 x i8] c"Decor", align 1
@340 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @292, [8 x i8] c"\07\00\00\00\00\00\00\00" }>, align 8
@341 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtReNtB6_5Debug3fmtCs5cbCQMMIObr_10typst_eval }>, align 8
@342 = private unnamed_addr constant [6 x i8] c"prefix", align 1
@343 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs89doag9UmMt_9toml_edit10raw_string9RawStringECs5cbCQMMIObr_10typst_eval, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs0_NtCs89doag9UmMt_9toml_edit10raw_stringNtB5_9RawStringNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt }>, align 8
@344 = private unnamed_addr constant [6 x i8] c"suffix", align 1
@345 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsZ_NtNtCs3oUPovFnLWP_4core3fmt3numjNtB7_5Debug3fmt }>, align 8
@346 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtB8_3mem9alignment9AlignmentNtB6_5Debug3fmtCs5cbCQMMIObr_10typst_eval }>, align 8
@347 = private unnamed_addr constant [6 x i8] c"Layout", align 1
@348 = private unnamed_addr constant [4 x i8] c"size", align 1
@349 = private unnamed_addr constant [5 x i8] c"align", align 1
@_RNvCsieRLDaoupkO_8thin_vec12EMPTY_HEADER = external global { i64, i64 }
@350 = private unnamed_addr constant [1 x i8] c"(", align 1
@351 = private unnamed_addr constant [3 x i8] c"(: ", align 1
@352 = private unnamed_addr constant [29 x i8] c"\0Ecannot spread \C0\0B into array\00", align 1
@353 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @171, [16 x i8] c"\1D\00\00\00\00\00\00\00\09\01\00\00\19\00\00\00" }>, align 8
@354 = private unnamed_addr constant [50 x i8] c"-add a colon to create a dictionary instead: `\C0\01`\00", align 1
@355 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @171, [16 x i8] c"\1D\00\00\00\00\00\00\00\0E\01\00\00\1A\00\00\00" }>, align 8
@356 = private unnamed_addr constant [34 x i8] c"\0Ecannot spread \C0\10 into dictionary\00", align 1
@357 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @171, [16 x i8] c"\1D\00\00\00\00\00\00\000\01\00\00\1A\00\00\00" }>, align 8
@358 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs5cbCQMMIObr_10typst_eval, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str, ptr @_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char, ptr @_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs5cbCQMMIObr_10typst_eval }>, align 8
@359 = private unnamed_addr constant [55 x i8] c"a Display implementation returned an error unexpectedly", align 1
@360 = private unnamed_addr constant [76 x i8] c"/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7/library/alloc/src/string.rs\00", align 1
@361 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @360, [16 x i8] c"K\00\00\00\00\00\00\00\96\0B\00\00\0E\00\00\00" }>, align 8
@362 = private unnamed_addr constant [5 x i8] c"Error", align 1
@363 = private unnamed_addr constant [4 x i8] c"None", align 1
@364 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs89doag9UmMt_9toml_edit3key3KeyENtB6_5Debug3fmtCs5cbCQMMIObr_10typst_eval }>, align 8
@365 = private unnamed_addr constant [4 x i8] c"Some", align 1
@366 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCs89doag9UmMt_9toml_edit4repr4ReprNtB6_5Debug3fmtCs5cbCQMMIObr_10typst_eval }>, align 8
@367 = private unnamed_addr constant [7 x i8] c"Escapes", align 1
@368 = private unnamed_addr constant [9 x i8] c"Backslash", align 1
@369 = private unnamed_addr constant [16 x i8] c"CapacityOverflow", align 1
@370 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtB8_5alloc6layout6LayoutNtB6_5Debug3fmtCs5cbCQMMIObr_10typst_eval }>, align 8
@371 = private unnamed_addr constant [8 x i8] c"AllocErr", align 1
@372 = private unnamed_addr constant [6 x i8] c"layout", align 1
@373 = private unnamed_addr constant [3 x i8] c"set", align 1
@374 = private unnamed_addr constant [4 x i8] c"show", align 1
@375 = private unnamed_addr constant [34 x i8] c"\1Fexpected path or module, found \C0\00", align 1
@376 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @161, [16 x i8] c"\1F\00\00\00\00\00\00\00\CD\00\00\00\12\00\00\00" }>, align 8
@377 = private unnamed_addr constant [16 x i8] c"TOML parse error", align 1
@378 = private unnamed_addr constant [22 x i8] c"unexpected empty label", align 1
@379 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @51, [16 x i8] c"\1F\00\00\00\00\00\00\00\BE\00\00\005\00\00\00" }>, align 8
@380 = private unnamed_addr constant [26 x i8] c"unexpected empty reference", align 1
@381 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @51, [16 x i8] c"\1F\00\00\00\00\00\00\00\C8\00\00\00\0E\00\00\00" }>, align 8
@382 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRjNtB6_5Debug3fmtCs5cbCQMMIObr_10typst_eval }>, align 8
@383 = private unnamed_addr constant [10 x i8] c"PreContext", align 1
@384 = private unnamed_addr constant [9 x i8] c"PrevChunk", align 1
@385 = private unnamed_addr constant [9 x i8] c"NextChunk", align 1
@386 = private unnamed_addr constant [13 x i8] c"InvalidOffset", align 1
@387 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs89doag9UmMt_9toml_edit15internal_string14InternalStringECs5cbCQMMIObr_10typst_eval, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtCs89doag9UmMt_9toml_edit15internal_stringNtB4_14InternalStringNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt }>, align 8
@388 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs89doag9UmMt_9toml_edit4repr4ReprEECs5cbCQMMIObr_10typst_eval, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsR_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtCs89doag9UmMt_9toml_edit4repr4ReprENtNtB7_3fmt5Debug3fmtCs5cbCQMMIObr_10typst_eval }>, align 8
@389 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs89doag9UmMt_9toml_edit4repr5DecorECs5cbCQMMIObr_10typst_eval, [16 x i8] c"0\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs4_NtCs89doag9UmMt_9toml_edit4reprNtB5_5DecorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt }>, align 8
@390 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCs89doag9UmMt_9toml_edit4repr5DecorNtB6_5Debug3fmtCs5cbCQMMIObr_10typst_eval }>, align 8
@391 = private unnamed_addr constant [3 x i8] c"Key", align 1
@392 = private unnamed_addr constant [4 x i8] c"repr", align 1
@393 = private unnamed_addr constant [10 x i8] c"leaf_decor", align 1
@394 = private unnamed_addr constant [12 x i8] c"dotted_decor", align 1
@395 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs89doag9UmMt_9toml_edit6parser5error11CustomErrorECs5cbCQMMIObr_10typst_eval, [16 x i8] c"0\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs0_NtNtCs89doag9UmMt_9toml_edit6parser5errorNtB5_11CustomErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt }>, align 8
@396 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs89doag9UmMt_9toml_edit6parser5error11CustomErrorECs5cbCQMMIObr_10typst_eval, [16 x i8] c"0\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1_NtNtCs89doag9UmMt_9toml_edit6parser5errorNtB5_11CustomErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt, ptr @_RNvXs0_NtNtCs89doag9UmMt_9toml_edit6parser5errorNtB5_11CustomErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr @395, ptr @_RNvYNtNtNtCs89doag9UmMt_9toml_edit6parser5error11CustomErrorNtNtCs3oUPovFnLWP_4core5error5Error6sourceCs5cbCQMMIObr_10typst_eval, ptr @_RNvYNtNtNtCs89doag9UmMt_9toml_edit6parser5error11CustomErrorNtNtCs3oUPovFnLWP_4core5error5Error7type_idCs5cbCQMMIObr_10typst_eval, ptr @_RNvXs_NtNtCs89doag9UmMt_9toml_edit6parser5errorNtB4_11CustomErrorNtNtCs3oUPovFnLWP_4core5error5Error11description, ptr @_RNvYNtNtNtCs89doag9UmMt_9toml_edit6parser5error11CustomErrorNtNtCs3oUPovFnLWP_4core5error5Error5causeCs5cbCQMMIObr_10typst_eval, ptr @_RNvYNtNtNtCs89doag9UmMt_9toml_edit6parser5error11CustomErrorNtNtCs3oUPovFnLWP_4core5error5Error7provideCs5cbCQMMIObr_10typst_eval }>, align 8
@397 = private unnamed_addr constant [30 x i8] c"\0Einvalid type: \C0\0B, expected \C0\00", align 1
@398 = private unnamed_addr constant [31 x i8] c"\0Finvalid value: \C0\0B, expected \C0\00", align 1
@399 = private unnamed_addr constant [20 x i8] c"\0Fmissing field `\C0\01`\00", align 1
@400 = private unnamed_addr constant [31 x i8] c"\0Finvalid length \C0\0B, expected \C0\00", align 1
@401 = private unnamed_addr constant [22 x i8] c"\11duplicate field `\C0\01`\00", align 1
@402 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 3239133862234874103 to ptr), ptr inttoptr (i64 5351549585573144799 to ptr) }>, align 8

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMNtNtCsdaEETE4DqmE_13typst_library11foundations4argsNtB3_4Args5namedNtNtB5_5value5ValueECs5cbCQMMIObr_10typst_eval(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [72 x i8], align 8                ; 7 uses
  %i.c = alloca [40 x i8], align 8                ; 9 uses
  %i.d = alloca [32 x i8], align 8                ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 -1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !35 ; 2 uses
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 23
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.557.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.627.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.sroa.7.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %.sroa.832.0..sroa_idx33 = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  br label %bb.b

._crit_edge:                                      ; preds = %bb.j, %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECs5cbCQMMIObr_10typst_eval.exit53

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECs5cbCQMMIObr_10typst_eval.exit53: ; preds = %bb.u, %bb.t, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.j
  %i.m = phi i64 [ %i.g, %.lr.ph ], [ %i.aa, %bb.j ]
  %.sroa.0.070 = phi i64 [ 0, %.lr.ph ], [ %.sroa.0.1, %bb.j ] ; 4 uses
  %i.n = load ptr, ptr %i.e, align 8, !nonnull !35, !noundef !35
  %i.o = getelementptr inbounds nuw [72 x i8], ptr %i.n, i64 %.sroa.0.070 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !range !36, !noundef !35
  %i.q = trunc nuw i64 %i.p to i1
  br i1 %i.q, label %bb.e, label %bb.h

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECs5cbCQMMIObr_10typst_eval.exit: ; preds = %bb.v, %bb.o, %bb.d
  %.pn.pn.ph = phi { ptr, i32 } [ %lpad.phi, %bb.v ], [ %i.s, %bb.d ], [ %lpad.thr_comm.split-lp, %bb.o ] ; 2 uses
  %.pr = load i64, ptr %i.d, align 8, !alias.scope !137
  %i.r = icmp eq i64 %.pr, -1
  br i1 %i.r, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECs5cbCQMMIObr_10typst_eval.exit, label %bb.c

bb.c:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECs5cbCQMMIObr_10typst_eval.exit.thread, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECs5cbCQMMIObr_10typst_eval.exit
  %.pn.pn79 = phi { ptr, i32 } [ %i.aq, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECs5cbCQMMIObr_10typst_eval.exit.thread ], [ %.pn.pn.ph, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECs5cbCQMMIObr_10typst_eval.exit ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECs5cbCQMMIObr_10typst_eval.exit unwind label %bb.w

bb.d:                                             ; preds = %bb.i, %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECs5cbCQMMIObr_10typst_eval.exit

bb.e:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.u = invoke { ptr, i64 } @_RNvXs_NtNtCsdaEETE4DqmE_13typst_library11foundations3strNtB4_3StrNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.t)
          to label %bb.f unwind label %bb.d       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.v = extractvalue { ptr, i64 } %i.u, 1
  %i.w = icmp eq i64 %i.v, %3
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.x = extractvalue { ptr, i64 } %i.u, 0        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.x) ]
  %bcmp = call i32 @bcmp(ptr nonnull %i.x, ptr nonnull %2, i64 %3)
  %i.y = icmp eq i32 %bcmp, 0
  br i1 %i.y, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.b, %bb.g
  %i.z = add nuw i64 %.sroa.0.070, 1
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE6removeCs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.b, ptr noalias nofree noundef align 8 dereferenceable(16) %i.e, i64 noundef %.sroa.0.070)
          to label %bb.k unwind label %bb.d

bb.j:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECs5cbCQMMIObr_10typst_eval.exit52, %bb.h
  %i.aa = phi i64 [ %.pre, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECs5cbCQMMIObr_10typst_eval.exit52 ], [ %i.m, %bb.h ] ; 2 uses
  %.sroa.0.1 = phi i64 [ %.sroa.0.070, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECs5cbCQMMIObr_10typst_eval.exit52 ], [ %i.z, %bb.h ] ; 2 uses
  %i.ab = icmp ult i64 %.sroa.0.1, %i.aa
  br i1 %i.ab, label %bb.b, label %._crit_edge

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %i.h, i64 40, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !138)
  %i.ac = load i64, ptr %i.b, align 8, !range !36, !alias.scope !138, !noundef !35
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.val.i = load ptr, ptr %i.i, align 8, !alias.scope !139 ; 4 uses
  %.val1.i = load i8, ptr %i.j, align 1, !alias.scope !139, !noundef !35
  %.not.i.i.i.i.i = icmp sgt i8 %.val1.i, -1
  br i1 %.not.i.i.i.i.i, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.val.i, inttoptr (i64 16 to ptr)
  %i.ae = getelementptr inbounds i8, ptr %.val.i, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i, label %bb.p, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i: ; preds = %bb.m
  %i.af = atomicrmw sub ptr %i.ae, i64 1 release, align 8, !noalias !140
  %.not.i.i.i.i.i.i = icmp eq i64 %i.af, 1
  br i1 %.not.i.i.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i, label %bb.p

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !140
  %i.ag = getelementptr i8, ptr %.val.i, i64 -8
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.ag, align 8, !noalias !140, !noundef !35 ; 2 uses
  %narrow.i.i.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i, label %bb.n, !prof !37

bb.n:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i
  invoke void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #42
          to label %.noexc49 unwind label %.loopexit.split-lp

.noexc49:                                         ; preds = %bb.n
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i
  %i.ah = add nuw nsw i64 %.val.i.i.i.i.i.i.i, 16
  store ptr %i.ae, ptr %i.k, align 8, !noalias !140
  store i64 8, ptr %i.a, align 8, !noalias !140
  store i64 %i.ah, ptr %i.l, align 8, !noalias !140
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.noexc50 unwind label %.loopexit

.noexc50:                                         ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !140
  br label %bb.p

bb.o:                                             ; preds = %bb.q
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECs5cbCQMMIObr_10typst_eval.exit

bb.p:                                             ; preds = %bb.k, %bb.l, %bb.m, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i, %.noexc50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.056.0.copyload = load i64, ptr %i.c, align 8 ; 3 uses
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 4 uses
  %i.ai = load <2 x i64>, ptr %.sroa.557.0..sroa_idx, align 8 ; 4 uses
  %i.aj = icmp eq i64 %.sroa.056.0.copyload, -1
  br i1 %i.aj, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.al = load i64, ptr %i.ak, align 8, !range !38, !noundef !35
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  %i.am = extractelement <2 x i64> %i.ai, i64 0
  %i.an = invoke fastcc { ptr, i64 } @_RNCNvXsa_NtCsdaEETE4DqmE_13typst_library4diagINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtB9_11foundations5value5ValueNtB7_12HintedStringEINtB7_2AtB1j_E2at0Cs5cbCQMMIObr_10typst_eval(i64 %i.al, ptr noundef nonnull %.sroa.4.0.copyload, i64 noundef %i.am)
          to label %bb.t unwind label %bb.o       ; 2 uses

bb.r:                                             ; preds = %bb.p
  %i.ao = load i64, ptr %i.d, align 8, !range !39, !alias.scope !141, !noundef !35
  %i.ap = icmp eq i64 %i.ao, -1
  br i1 %i.ap, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECs5cbCQMMIObr_10typst_eval.exit52, label %bb.s

bb.s:                                             ; preds = %bb.r
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECs5cbCQMMIObr_10typst_eval.exit52 unwind label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECs5cbCQMMIObr_10typst_eval.exit.thread

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECs5cbCQMMIObr_10typst_eval.exit.thread: ; preds = %bb.s
  %i.aq = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.056.0.copyload, ptr %i.d, align 8
  store ptr %.sroa.4.0.copyload, ptr %.sroa.627.0..sroa_idx28, align 8
  %i.ar = extractelement <2 x i64> %i.ai, i64 0
  store i64 %i.ar, ptr %.sroa.7.0..sroa_idx30, align 8
  %i.as = extractelement <2 x i64> %i.ai, i64 1
  store i64 %i.as, ptr %.sroa.832.0..sroa_idx33, align 8
  br label %bb.c

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECs5cbCQMMIObr_10typst_eval.exit52: ; preds = %bb.r, %bb.s
  store i64 %.sroa.056.0.copyload, ptr %i.d, align 8
  store ptr %.sroa.4.0.copyload, ptr %.sroa.627.0..sroa_idx28, align 8
  store <2 x i64> %i.ai, ptr %.sroa.7.0..sroa_idx30, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.pre = load i64, ptr %i.f, align 8
  br label %bb.j

bb.t:                                             ; preds = %bb.q
  %i.at = extractvalue { ptr, i64 } %i.an, 0
  %i.au = extractvalue { ptr, i64 } %i.an, 1
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.at, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.au, ptr %i.aw, align 8
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ax = load i64, ptr %i.d, align 8, !range !39, !alias.scope !142, !noundef !35
  %i.ay = icmp eq i64 %i.ax, -1
  br i1 %i.ay, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECs5cbCQMMIObr_10typst_eval.exit53, label %bb.u

bb.u:                                             ; preds = %bb.t
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECs5cbCQMMIObr_10typst_eval.exit53

.loopexit:                                        ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

.loopexit.split-lp:                               ; preds = %bb.n
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.v:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECs5cbCQMMIObr_10typst_eval.exit unwind label %bb.w, !inline_history !0

bb.w:                                             ; preds = %bb.v, %bb.c
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECs5cbCQMMIObr_10typst_eval.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECs5cbCQMMIObr_10typst_eval.exit, %bb.c
  %.pn.pn80 = phi { ptr, i32 } [ %.pn.pn.ph, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECs5cbCQMMIObr_10typst_eval.exit ], [ %.pn.pn79, %bb.c ]
  resume { ptr, i32 } %.pn.pn80
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMNtNtCsdaEETE4DqmE_13typst_library11foundations4argsNtB3_4Args6expectNtNtB5_3str3StrECs5cbCQMMIObr_10typst_eval(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [72 x i8], align 8                ; 7 uses
  %i.e = alloca [40 x i8], align 8                ; 7 uses
  %i.f = alloca [72 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !155, !noalias !156, !nonnull !35, !noundef !35 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !155, !noalias !156, !noundef !35 ; 2 uses
  %.idx = mul nuw nsw i64 %i.j, 72
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx
  %i.l = icmp eq i64 %i.j, 0
  br i1 %i.l, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i3, i64 72 ; 2 uses
  %i.n = add nuw nsw i64 %.sroa.8.0.i2, 1
  %i.o = icmp eq ptr %i.m, %i.k
  br i1 %i.o, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i3 = phi ptr [ %i.m, %bb.b ], [ %i.h, %bb.a ] ; 2 uses
  %.sroa.8.0.i2 = phi i64 [ %i.n, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.p = load i64, ptr %.sroa.0.0.i3, align 8, !range !36, !noalias !157, !noundef !35
  %.not15.i = icmp eq i64 %i.p, 0
  br i1 %.not15.i, label %bb.c, label %bb.b

bb.c:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !157
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !157
  call fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE6removeCs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.d, ptr noalias nofree noundef align 8 dereferenceable(16) %i.g, i64 noundef %.sroa.8.0.i2), !noalias !156
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(40) %i.q, i64 40, i1 false), !noalias !157
end_hunk_0
