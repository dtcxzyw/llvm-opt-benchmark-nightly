Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/project_model-42cc9cdbe70b8db7.project_model.99d45700f4e170a5-cgu.09?download=true
inline.NumInlined: 681
inline.NumDeleted: 351
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [3 x i8] c"bin", align 1
@1 = private unnamed_addr constant [5 x i8] c"rustc", align 1
@2 = private unnamed_addr constant [16 x i8] c"RUSTUP_TOOLCHAIN", align 1
@3 = private unnamed_addr constant [5 x i8] c"which", align 1
@4 = private unnamed_addr constant [5 x i8] c"cargo", align 1
@5 = private unnamed_addr constant [6 x i8] c"rustup", align 1
@6 = private unnamed_addr constant [7 x i8] c"rustfmt", align 1
@7 = private unnamed_addr constant [80 x i8] c"/rustc/73dc9167f1cd099e525c9ade2e068d1907b78564/library/core/src/str/pattern.rs\00", align 1
@8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"O\00\00\00\00\00\00\00\F3\05\00\00\14\00\00\00" }>, align 8
@9 = private unnamed_addr constant [23 x i8] c"fewer elements in array", align 1
@10 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @9, [8 x i8] c"\17\00\00\00\00\00\00\00" }>, align 8
@11 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs0_NtCsjQbM3MYDIrM_10serde_core2deReNtB5_8Expected3fmt }>, align 8
@12 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNvNtNtB4_2io5write17default_write_fmt7AdapterNtNtNtNtCscAsMj0W7j8b_3std3sys5stdio4unix6StderrEECsdcPuHeDsw6v_13project_model, [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNvNtNtCshzWfHUSfYae_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtNtCscAsMj0W7j8b_3std3sys5stdio4unix6StderrENtNtB8_3fmt5Write9write_strCsdcPuHeDsw6v_13project_model, ptr @_RNvYINtNvNtNtCshzWfHUSfYae_4core2io5write17default_write_fmt7AdapterNtNtNtNtCscAsMj0W7j8b_3std3sys5stdio4unix6StderrENtNtBb_3fmt5Write10write_charCsdcPuHeDsw6v_13project_model, ptr @_RNvYINtNvNtNtCshzWfHUSfYae_4core2io5write17default_write_fmt7AdapterNtNtNtNtCscAsMj0W7j8b_3std3sys5stdio4unix6StderrENtNtBb_3fmt5Write9write_fmtCsdcPuHeDsw6v_13project_model }>, align 8
@13 = private unnamed_addr constant [86 x i8] c"a formatting trait implementation returned an error when the underlying stream did not", align 1
@14 = private unnamed_addr constant [77 x i8] c"/rustc/73dc9167f1cd099e525c9ade2e068d1907b78564/library/core/src/io/write.rs\00", align 1
@15 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @14, [16 x i8] c"L\00\00\00\00\00\00\00\9B\01\00\00\11\00\00\00" }>, align 8
@16 = private unnamed_addr constant ptr @_RNvYNCNKNvNvMNtNtCscAsMj0W7j8b_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsdcPuHeDsw6v_13project_model, align 8
@17 = private unnamed_addr constant [49 x i8] c"struct RustAnalyzerPackageMetaData with 1 element", align 1
@18 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @17, [8 x i8] c"1\00\00\00\00\00\00\00" }>, align 8
@19 = private unnamed_addr constant [37 x i8] c"struct PackageMetadata with 1 element", align 1
@20 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @19, [8 x i8] c"%\00\00\00\00\00\00\00" }>, align 8
@21 = private unnamed_addr constant [16 x i8] c"value is missing", align 1
@_RNvNCNKNvNvMNtNtCscAsMj0W7j8b_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL = external thread_local global { { { [2 x i64] } }, i8, [7 x i8] }
@22 = private unnamed_addr constant [4 x i8] c"core", align 1
@23 = private unnamed_addr constant [20 x i8] c"rustc-std-workspace-", align 1
@24 = private unnamed_addr constant [5 x i8] c"alloc", align 1
@25 = private unnamed_addr constant [3 x i8] c"std", align 1
@_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL = external local_unnamed_addr global { { { i64 } } }
@26 = private unnamed_addr constant [40 x i8] c"%unknown rustc-std-workspace-* crate: \C0\00", align 1
@27 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsl_NtCsaMQbKjKCVRW_12tracing_core5fieldNtNtCshzWfHUSfYae_4core3fmt9ArgumentsNtB5_5Value6record }>, align 8
@28 = private unnamed_addr constant [36 x i8] c"crates/project-model/src/sysroot.rs\00", align 1
@29 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @28, [16 x i8] c"#\00\00\00\00\00\00\00\AB\01\00\00\1A\00\00\00" }>, align 8
@30 = private unnamed_addr constant [6 x i8] c"\C1 \00\80`\00", align 1
@31 = private unnamed_addr constant [28 x i8] c"rust-analyzer-proc-macro-srv", align 1
@32 = private unnamed_addr constant [47 x i8] c"*cannot find proc-macro server in sysroot `\C0\01`\00", align 1
@33 = private unnamed_addr constant [9 x i8] c"component", align 1
@34 = private unnamed_addr constant [3 x i8] c"add", align 1
@35 = private unnamed_addr constant [8 x i8] c"rust-src", align 1
@36 = private unnamed_addr constant [32 x i8] c"\1Dadding rust-src component by \C0\00", align 1
@37 = private unnamed_addr constant [54 x i8] c"can't load standard library, try installing `rust-src`", align 1
@38 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXst_NtCsaMQbKjKCVRW_12tracing_core5fieldINtB5_12DisplayValueRRNtCs9R0CJ7nmiec_5paths10AbsPathBufENtB5_5Value6recordCsdcPuHeDsw6v_13project_model }>, align 8
@39 = private unnamed_addr constant [147 x i8] c")can't load standard library from sysroot\0A\C0f\0A(discovered via `rustc --print sysroot`)\0Atry installing `rust-src` the same way you installed `rustc`\00", align 1
@40 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9R0CJ7nmiec_5paths10AbsPathBufECsdcPuHeDsw6v_13project_model, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXst_Cs9R0CJ7nmiec_5pathsNtB5_10AbsPathBufNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt }>, align 8
@41 = private unnamed_addr constant [43 x i8] c"called `Result::unwrap()` on an `Err` value", align 1
@42 = private unnamed_addr constant [13 x i8] c"RUST_SRC_PATH", align 1
@43 = private unnamed_addr constant [66 x i8] c", try running `rustup component add rust-src` to possibly fix this", align 1
@44 = private unnamed_addr constant [72 x i8] c" (env var `RUST_SRC_PATH` is set and may be incorrect, try unsetting it)", align 1
@45 = private unnamed_addr constant [46 x i8] c"\0Csysroot at `\C0\1D` is missing a `core` library\C0\00", align 1
@46 = private unnamed_addr constant [24 x i8] c"workspace already loaded", align 1
@47 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @28, [16 x i8] c"#\00\00\00\00\00\00\00\FF\00\00\00\09\00\00\00" }>, align 8
@48 = private unnamed_addr constant [10 x i8] c"Cargo.toml", align 1
@49 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @28, [16 x i8] c"#\00\00\00\00\00\00\00\05\01\00\00X\00\00\00" }>, align 8
@50 = private unnamed_addr constant [37 x i8] c"\1C`cargo metadata` failed on `\C0\04` : \C0\00", align 1
@51 = private unnamed_addr constant [30 x i8] c"\1BStitching sysroot library: \C0\00", align 1
@52 = private unnamed_addr constant [117 x i8] c"\0Aalloc\0Abacktrace\0Acore\0Apanic_abort\0Apanic_unwind\0Aproc_macro\0Aprofiler_builtins\0Astd\0Astdarch/crates/std_detect\0Atest\0Aunwind", align 1
@53 = private unnamed_addr constant [77 x i8] c"\0Aalloc\0Apanic_unwind\0Apanic_abort\0Acore\0Aprofiler_builtins\0Aunwind\0Astd_detect\0Atest", align 1
@54 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @28, [16 x i8] c"#\00\00\00\00\00\00\00/\01\00\00(\00\00\00" }>, align 8
@55 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @28, [16 x i8] c"#\00\00\00\00\00\00\007\01\00\00(\00\00\00" }>, align 8
@56 = private unnamed_addr constant [10 x i8] c"proc_macro", align 1
@57 = private unnamed_addr constant [9 x i8] c"\0Astd\0Acore", align 1
@58 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @28, [16 x i8] c"#\00\00\00\00\00\00\00?\01\00\00(\00\00\00" }>, align 8
@59 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @28, [16 x i8] c"#\00\00\00\00\00\00\00\1C\01\00\008\00\00\00" }>, align 8
@60 = private unnamed_addr constant [14 x i8] c"\C0\0B/src/lib.rs\00", align 1
@61 = private unnamed_addr constant [14 x i8] c"\03lib\C0\07/lib.rs\00", align 1
@62 = private unnamed_addr constant [29 x i8] c"\1ALoading library metadata: \C0\00", align 1
@63 = private unnamed_addr constant [45 x i8] c"__CARGO_TEST_CHANNEL_OVERRIDE_DO_NOT_USE_THIS", align 1
@64 = private unnamed_addr constant [7 x i8] c"nightly", align 1
@65 = private unnamed_addr constant [16 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16
@66 = private unnamed_addr constant <{ ptr, [24 x i8] }> <{ ptr @65, [24 x i8] zeroinitializer }>, align 8
@67 = private unnamed_addr constant [7 x i8] c"libexec", align 1
@68 = private unnamed_addr constant [3 x i8] c"lib", align 1
@69 = private unnamed_addr constant [42 x i8] c"'can't find standard library sources in \C0\00", align 1
@70 = private unnamed_addr constant [4 x i8] c"\C0\01\0A\00", align 1
@71 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsdcPuHeDsw6v_13project_model, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsZ_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt5Write9write_str, ptr @_RNvXsZ_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt5Write10write_char, ptr @_RNvYNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtCshzWfHUSfYae_4core3fmt5Write9write_fmtCsdcPuHeDsw6v_13project_model }>, align 8
@_RNvNCNvMs0_NtCsdcPuHeDsw6v_13project_model7sysrootNtB9_7Sysroot22load_library_via_cargo010___CALLSITE = internal global <{ ptr, [10 x i8], [6 x i8] }> <{ ptr @_RNvNvNCNvMs0_NtCsdcPuHeDsw6v_13project_model7sysrootNtBb_7Sysroot22load_library_via_cargo010___CALLSITE4META, [10 x i8] c"\00\00\00\00\00\00\00\00\FF\00", [6 x i8] undef }>, align 8
@_RNvNCNvNtCsdcPuHeDsw6v_13project_model7sysroot42discover_rust_lib_src_dir_or_add_component010___CALLSITE = internal global <{ ptr, [10 x i8], [6 x i8] }> <{ ptr @_RNvNvNCNvNtCsdcPuHeDsw6v_13project_model7sysroot42discover_rust_lib_src_dir_or_add_component010___CALLSITE4META, [10 x i8] c"\00\00\00\00\00\00\00\00\FF\00", [6 x i8] undef }>, align 8
@_RNvNCNvNtCsdcPuHeDsw6v_13project_model7sysroot42discover_rust_lib_src_dir_or_add_components_010___CALLSITE = internal global <{ ptr, [10 x i8], [6 x i8] }> <{ ptr @_RNvNvNCNvNtCsdcPuHeDsw6v_13project_model7sysroot42discover_rust_lib_src_dir_or_add_components_010___CALLSITE4META, [10 x i8] c"\00\00\00\00\00\00\00\00\FF\00", [6 x i8] undef }>, align 8
@72 = private unnamed_addr constant [52 x i8] c"lib/rustlib/rustc-src/rust/compiler/rustc/Cargo.toml", align 1
@73 = private unnamed_addr constant [35 x i8] c" checking for rustc source code: \C0\00", align 1
@74 = private unnamed_addr constant [28 x i8] c"lib/rustlib/src/rust/library", align 1
@75 = private unnamed_addr constant [29 x i8] c"\1Achecking sysroot library: \C0\00", align 1
@76 = private unnamed_addr constant [7 x i8] c"--print", align 1
@77 = private unnamed_addr constant [7 x i8] c"sysroot", align 1
@78 = private unnamed_addr constant [26 x i8] c"\17Discovering sysroot by \C0\00", align 1
@79 = private unnamed_addr constant [62 x i8] c"/RUST_SRC_PATH is set, but is invalid (no core: \C0\0B), ignoring\00", align 1
@80 = private unnamed_addr constant [40 x i8] c"%Discovered sysroot by RUST_SRC_PATH: \C0\00", align 1
@81 = private unnamed_addr constant [46 x i8] c"RUST_SRC_PATH is set, but is invalid, ignoring", align 1
@82 = private unnamed_addr constant [6 x i8] c"rustc ", align 1
@83 = private unnamed_addr constant [6 x i8] c"cargo ", align 1
@84 = private unnamed_addr constant [9 x i8] c"--version", align 1
@85 = private unnamed_addr constant [54 x i8] c"\11Failed to parse `\C0\0A` output `\C0\15` as a semver version\00", align 1
@_RNvNtNtNtCshzWfHUSfYae_4core7unicode12unicode_data11white_space14WHITESPACE_MAP = external local_unnamed_addr global [256 x i8]
@_RNvNvMs0_NtCsdcPuHeDsw6v_13project_model7sysrootNtB7_7Sysroot14load_workspace10___CALLSITE = internal global <{ ptr, [10 x i8], [6 x i8] }> <{ ptr @_RNvNvNvMs0_NtCsdcPuHeDsw6v_13project_model7sysrootNtB9_7Sysroot14load_workspace10___CALLSITE4META, [10 x i8] c"\00\00\00\00\00\00\00\00\FF\00", [6 x i8] undef }>, align 8
@_RNvNvMs0_NtCsdcPuHeDsw6v_13project_model7sysrootNtB7_7Sysroot14load_workspaces_10___CALLSITE = internal global <{ ptr, [10 x i8], [6 x i8] }> <{ ptr @_RNvNvNvMs0_NtCsdcPuHeDsw6v_13project_model7sysrootNtB9_7Sysroot14load_workspaces_10___CALLSITE4META, [10 x i8] c"\00\00\00\00\00\00\00\00\FF\00", [6 x i8] undef }>, align 8
@_RNvNvMs0_NtCsdcPuHeDsw6v_13project_model7sysrootNtB7_7Sysroot22load_library_via_cargo10___CALLSITE = internal global <{ ptr, [10 x i8], [6 x i8] }> <{ ptr @_RNvNvNvMs0_NtCsdcPuHeDsw6v_13project_model7sysrootNtB9_7Sysroot22load_library_via_cargo10___CALLSITE4META, [10 x i8] c"\00\00\00\00\00\00\00\00\FF\00", [6 x i8] undef }>, align 8
@86 = private unnamed_addr constant [45 x i8] c"event crates/project-model/src/sysroot.rs:396", align 1
@87 = private unnamed_addr constant [22 x i8] c"project_model::sysroot", align 1
@88 = private unnamed_addr constant [7 x i8] c"message", align 1
@89 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @88, [8 x i8] c"\07\00\00\00\00\00\00\00" }>, align 8
@90 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtCsaMQbKjKCVRW_12tracing_core8callsiteNtB4_15DefaultCallsiteNtB4_8Callsite12set_interest, ptr @_RNvXs_NtCsaMQbKjKCVRW_12tracing_core8callsiteNtB4_15DefaultCallsiteNtB4_8Callsite8metadata, ptr @_RNvYNtNtCsaMQbKjKCVRW_12tracing_core8callsite15DefaultCallsiteNtB4_8Callsite15private_type_idCsdcPuHeDsw6v_13project_model }>, align 8
@91 = private unnamed_addr constant [35 x i8] c"crates/project-model/src/sysroot.rs", align 1
@_RNvNvNCNvMs0_NtCsdcPuHeDsw6v_13project_model7sysrootNtBb_7Sysroot22load_library_via_cargo010___CALLSITE4META = internal constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\03\00\00\00\00\00\00\00\01\00\00\00\8C\01\00\00", ptr @86, [8 x i8] c"-\00\00\00\00\00\00\00", ptr @87, [8 x i8] c"\16\00\00\00\00\00\00\00", ptr @89, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @_RNvNCNvMs0_NtCsdcPuHeDsw6v_13project_model7sysrootNtB9_7Sysroot22load_library_via_cargo010___CALLSITE, ptr @90, ptr @87, [8 x i8] c"\16\00\00\00\00\00\00\00", ptr @91, [9 x i8] c"#\00\00\00\00\00\00\00\01", [7 x i8] undef }>, align 8
@92 = private unnamed_addr constant [45 x i8] c"event crates/project-model/src/sysroot.rs:476", align 1
@_RNvNvNCNvNtCsdcPuHeDsw6v_13project_model7sysroot42discover_rust_lib_src_dir_or_add_component010___CALLSITE4META = internal constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\02\00\00\00\00\00\00\00\01\00\00\00\DC\01\00\00", ptr @92, [8 x i8] c"-\00\00\00\00\00\00\00", ptr @87, [8 x i8] c"\16\00\00\00\00\00\00\00", ptr @89, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @_RNvNCNvNtCsdcPuHeDsw6v_13project_model7sysroot42discover_rust_lib_src_dir_or_add_component010___CALLSITE, ptr @90, ptr @87, [8 x i8] c"\16\00\00\00\00\00\00\00", ptr @91, [9 x i8] c"#\00\00\00\00\00\00\00\01", [7 x i8] undef }>, align 8
@93 = private unnamed_addr constant [45 x i8] c"event crates/project-model/src/sysroot.rs:481", align 1
@94 = private unnamed_addr constant [12 x i8] c"sysroot_path", align 1
@95 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @88, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @94, [8 x i8] c"\0C\00\00\00\00\00\00\00" }>, align 8
@_RNvNvNCNvNtCsdcPuHeDsw6v_13project_model7sysroot42discover_rust_lib_src_dir_or_add_components_010___CALLSITE4META = internal constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\04\00\00\00\00\00\00\00\01\00\00\00\E1\01\00\00", ptr @93, [8 x i8] c"-\00\00\00\00\00\00\00", ptr @87, [8 x i8] c"\16\00\00\00\00\00\00\00", ptr @95, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @_RNvNCNvNtCsdcPuHeDsw6v_13project_model7sysroot42discover_rust_lib_src_dir_or_add_components_010___CALLSITE, ptr @90, ptr @87, [8 x i8] c"\16\00\00\00\00\00\00\00", ptr @91, [9 x i8] c"#\00\00\00\00\00\00\00\01", [7 x i8] undef }>, align 8
@_RNvNvNtCsdcPuHeDsw6v_13project_model7sysroot13get_rustc_src10___CALLSITE = internal global <{ ptr, [10 x i8], [6 x i8] }> <{ ptr @_RNvNvNvNtCsdcPuHeDsw6v_13project_model7sysroot13get_rustc_src10___CALLSITE4META, [10 x i8] c"\00\00\00\00\00\00\00\00\FF\00", [6 x i8] undef }>, align 8
@_RNvNvNtCsdcPuHeDsw6v_13project_model7sysroot16get_rust_lib_src10___CALLSITE = internal global <{ ptr, [10 x i8], [6 x i8] }> <{ ptr @_RNvNvNvNtCsdcPuHeDsw6v_13project_model7sysroot16get_rust_lib_src10___CALLSITE4META, [10 x i8] c"\00\00\00\00\00\00\00\00\FF\00", [6 x i8] undef }>, align 8
@_RNvNvNtCsdcPuHeDsw6v_13project_model7sysroot20discover_sysroot_dir10___CALLSITE = internal global <{ ptr, [10 x i8], [6 x i8] }> <{ ptr @_RNvNvNvNtCsdcPuHeDsw6v_13project_model7sysroot20discover_sysroot_dir10___CALLSITE4META, [10 x i8] c"\00\00\00\00\00\00\00\00\FF\00", [6 x i8] undef }>, align 8
@_RNvNvNtCsdcPuHeDsw6v_13project_model7sysroot25discover_rust_lib_src_dir10___CALLSITE = internal global <{ ptr, [10 x i8], [6 x i8] }> <{ ptr @_RNvNvNvNtCsdcPuHeDsw6v_13project_model7sysroot25discover_rust_lib_src_dir10___CALLSITE4META, [10 x i8] c"\00\00\00\00\00\00\00\00\FF\00", [6 x i8] undef }>, align 8
@_RNvNvNtCsdcPuHeDsw6v_13project_model7sysroot25discover_rust_lib_src_dirs0_10___CALLSITE = internal global <{ ptr, [10 x i8], [6 x i8] }> <{ ptr @_RNvNvNvNtCsdcPuHeDsw6v_13project_model7sysroot25discover_rust_lib_src_dirs0_10___CALLSITE4META, [10 x i8] c"\00\00\00\00\00\00\00\00\FF\00", [6 x i8] undef }>, align 8
@_RNvNvNtCsdcPuHeDsw6v_13project_model7sysroot25discover_rust_lib_src_dirs_10___CALLSITE = internal global <{ ptr, [10 x i8], [6 x i8] }> <{ ptr @_RNvNvNvNtCsdcPuHeDsw6v_13project_model7sysroot25discover_rust_lib_src_dirs_10___CALLSITE4META, [10 x i8] c"\00\00\00\00\00\00\00\00\FF\00", [6 x i8] undef }>, align 8
@_RNvNvNtNtCsdcPuHeDsw6v_13project_model14toolchain_info7version3get10___CALLSITE = internal global <{ ptr, [10 x i8], [6 x i8] }> <{ ptr @_RNvNvNvNtNtCsdcPuHeDsw6v_13project_model14toolchain_info7version3get10___CALLSITE4META, [10 x i8] c"\00\00\00\00\00\00\00\00\FF\00", [6 x i8] undef }>, align 8
@96 = private unnamed_addr constant [45 x i8] c"event crates/project-model/src/sysroot.rs:272", align 1
@_RNvNvNvMs0_NtCsdcPuHeDsw6v_13project_model7sysrootNtB9_7Sysroot14load_workspace10___CALLSITE4META = internal constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\04\00\00\00\00\00\00\00\01\00\00\00\10\01\00\00", ptr @96, [8 x i8] c"-\00\00\00\00\00\00\00", ptr @87, [8 x i8] c"\16\00\00\00\00\00\00\00", ptr @89, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @_RNvNvMs0_NtCsdcPuHeDsw6v_13project_model7sysrootNtB7_7Sysroot14load_workspace10___CALLSITE, ptr @90, ptr @87, [8 x i8] c"\16\00\00\00\00\00\00\00", ptr @91, [9 x i8] c"#\00\00\00\00\00\00\00\01", [7 x i8] undef }>, align 8
@97 = private unnamed_addr constant [45 x i8] c"event crates/project-model/src/sysroot.rs:276", align 1
@_RNvNvNvMs0_NtCsdcPuHeDsw6v_13project_model7sysrootNtB9_7Sysroot14load_workspaces_10___CALLSITE4META = internal constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\01\00\00\00\00\00\00\00\01\00\00\00\14\01\00\00", ptr @97, [8 x i8] c"-\00\00\00\00\00\00\00", ptr @87, [8 x i8] c"\16\00\00\00\00\00\00\00", ptr @89, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @_RNvNvMs0_NtCsdcPuHeDsw6v_13project_model7sysrootNtB7_7Sysroot14load_workspaces_10___CALLSITE, ptr @90, ptr @87, [8 x i8] c"\16\00\00\00\00\00\00\00", ptr @91, [9 x i8] c"#\00\00\00\00\00\00\00\01", [7 x i8] undef }>, align 8
@98 = private unnamed_addr constant [45 x i8] c"event crates/project-model/src/sysroot.rs:367", align 1
@_RNvNvNvMs0_NtCsdcPuHeDsw6v_13project_model7sysrootNtB9_7Sysroot22load_library_via_cargo10___CALLSITE4META = internal constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\01\00\00\00\00\00\00\00\01\00\00\00o\01\00\00", ptr @98, [8 x i8] c"-\00\00\00\00\00\00\00", ptr @87, [8 x i8] c"\16\00\00\00\00\00\00\00", ptr @89, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @_RNvNvMs0_NtCsdcPuHeDsw6v_13project_model7sysrootNtB7_7Sysroot22load_library_via_cargo10___CALLSITE, ptr @90, ptr @87, [8 x i8] c"\16\00\00\00\00\00\00\00", ptr @91, [9 x i8] c"#\00\00\00\00\00\00\00\01", [7 x i8] undef }>, align 8
@99 = private unnamed_addr constant [45 x i8] c"event crates/project-model/src/sysroot.rs:495", align 1
@_RNvNvNvNtCsdcPuHeDsw6v_13project_model7sysroot13get_rustc_src10___CALLSITE4META = internal constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\01\00\00\00\00\00\00\00\01\00\00\00\EF\01\00\00", ptr @99, [8 x i8] c"-\00\00\00\00\00\00\00", ptr @87, [8 x i8] c"\16\00\00\00\00\00\00\00", ptr @89, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @_RNvNvNtCsdcPuHeDsw6v_13project_model7sysroot13get_rustc_src10___CALLSITE, ptr @90, ptr @87, [8 x i8] c"\16\00\00\00\00\00\00\00", ptr @91, [9 x i8] c"#\00\00\00\00\00\00\00\01", [7 x i8] undef }>, align 8
@100 = private unnamed_addr constant [45 x i8] c"event crates/project-model/src/sysroot.rs:501", align 1
@_RNvNvNvNtCsdcPuHeDsw6v_13project_model7sysroot16get_rust_lib_src10___CALLSITE4META = internal constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\01\00\00\00\00\00\00\00\01\00\00\00\F5\01\00\00", ptr @100, [8 x i8] c"-\00\00\00\00\00\00\00", ptr @87, [8 x i8] c"\16\00\00\00\00\00\00\00", ptr @89, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @_RNvNvNtCsdcPuHeDsw6v_13project_model7sysroot16get_rust_lib_src10___CALLSITE, ptr @90, ptr @87, [8 x i8] c"\16\00\00\00\00\00\00\00", ptr @91, [9 x i8] c"#\00\00\00\00\00\00\00\01", [7 x i8] undef }>, align 8
@101 = private unnamed_addr constant [45 x i8] c"event crates/project-model/src/sysroot.rs:445", align 1
@_RNvNvNvNtCsdcPuHeDsw6v_13project_model7sysroot20discover_sysroot_dir10___CALLSITE4META = internal constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\01\00\00\00\00\00\00\00\01\00\00\00\BD\01\00\00", ptr @101, [8 x i8] c"-\00\00\00\00\00\00\00", ptr @87, [8 x i8] c"\16\00\00\00\00\00\00\00", ptr @89, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @_RNvNvNtCsdcPuHeDsw6v_13project_model7sysroot20discover_sysroot_dir10___CALLSITE, ptr @90, ptr @87, [8 x i8] c"\16\00\00\00\00\00\00\00", ptr @91, [9 x i8] c"#\00\00\00\00\00\00\00\01", [7 x i8] undef }>, align 8
@102 = private unnamed_addr constant [45 x i8] c"event crates/project-model/src/sysroot.rs:455", align 1
@_RNvNvNvNtCsdcPuHeDsw6v_13project_model7sysroot25discover_rust_lib_src_dir10___CALLSITE4META = internal constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\01\00\00\00\00\00\00\00\01\00\00\00\C7\01\00\00", ptr @102, [8 x i8] c"-\00\00\00\00\00\00\00", ptr @87, [8 x i8] c"\16\00\00\00\00\00\00\00", ptr @89, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @_RNvNvNtCsdcPuHeDsw6v_13project_model7sysroot25discover_rust_lib_src_dir10___CALLSITE, ptr @90, ptr @87, [8 x i8] c"\16\00\00\00\00\00\00\00", ptr @91, [9 x i8] c"#\00\00\00\00\00\00\00\01", [7 x i8] undef }>, align 8
@103 = private unnamed_addr constant [45 x i8] c"event crates/project-model/src/sysroot.rs:460", align 1
@_RNvNvNvNtCsdcPuHeDsw6v_13project_model7sysroot25discover_rust_lib_src_dirs0_10___CALLSITE4META = internal constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\01\00\00\00\00\00\00\00\01\00\00\00\CC\01\00\00", ptr @103, [8 x i8] c"-\00\00\00\00\00\00\00", ptr @87, [8 x i8] c"\16\00\00\00\00\00\00\00", ptr @89, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @_RNvNvNtCsdcPuHeDsw6v_13project_model7sysroot25discover_rust_lib_src_dirs0_10___CALLSITE, ptr @90, ptr @87, [8 x i8] c"\16\00\00\00\00\00\00\00", ptr @91, [9 x i8] c"#\00\00\00\00\00\00\00\01", [7 x i8] undef }>, align 8
@104 = private unnamed_addr constant [45 x i8] c"event crates/project-model/src/sysroot.rs:458", align 1
@_RNvNvNvNtCsdcPuHeDsw6v_13project_model7sysroot25discover_rust_lib_src_dirs_10___CALLSITE4META = internal constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\01\00\00\00\00\00\00\00\01\00\00\00\CA\01\00\00", ptr @104, [8 x i8] c"-\00\00\00\00\00\00\00", ptr @87, [8 x i8] c"\16\00\00\00\00\00\00\00", ptr @89, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @_RNvNvNtCsdcPuHeDsw6v_13project_model7sysroot25discover_rust_lib_src_dirs_10___CALLSITE, ptr @90, ptr @87, [8 x i8] c"\16\00\00\00\00\00\00\00", ptr @91, [9 x i8] c"#\00\00\00\00\00\00\00\01", [7 x i8] undef }>, align 8
@105 = private unnamed_addr constant [59 x i8] c"event crates/project-model/src/toolchain_info/version.rs:28", align 1
@106 = private unnamed_addr constant [38 x i8] c"project_model::toolchain_info::version", align 1
@107 = private unnamed_addr constant [50 x i8] c"crates/project-model/src/toolchain_info/version.rs", align 1
@_RNvNvNvNtNtCsdcPuHeDsw6v_13project_model14toolchain_info7version3get10___CALLSITE4META = internal constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\03\00\00\00\00\00\00\00\01\00\00\00\1C\00\00\00", ptr @105, [8 x i8] c";\00\00\00\00\00\00\00", ptr @106, [8 x i8] c"&\00\00\00\00\00\00\00", ptr @89, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @_RNvNvNtNtCsdcPuHeDsw6v_13project_model14toolchain_info7version3get10___CALLSITE, ptr @90, ptr @106, [8 x i8] c"&\00\00\00\00\00\00\00", ptr @107, [9 x i8] c"2\00\00\00\00\00\00\00\01", [7 x i8] undef }>, align 8
@108 = private unnamed_addr constant [13 x i8] c"\0Aworkspace \C0\00", align 1
@109 = private unnamed_addr constant [8 x i8] c"\05json \C0\00", align 1
@110 = private unnamed_addr constant [25 x i8] c"\0Estitched with \C0\07 crates\00", align 1
@111 = private unnamed_addr constant [5 x i8] c"empty", align 1
@112 = private unnamed_addr constant [28 x i8] c"base_db::input::CrateBuilder", align 1
@113 = private unnamed_addr constant [15 x i8] c"\06Idx::<\C0\02>(\C0\01)\00", align 1
@114 = private unnamed_addr constant [5 x i8] c"Empty", align 1
@115 = private unnamed_addr constant [12 x i8] c"InvalidDigit", align 1
@116 = private unnamed_addr constant [11 x i8] c"PosOverflow", align 1
@117 = private unnamed_addr constant [11 x i8] c"NegOverflow", align 1
@118 = private unnamed_addr constant [4 x i8] c"Zero", align 1
@119 = private unnamed_addr constant [14 x i8] c"NotAPowerOfTwo", align 1
@120 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtCs9p4rgIae0RV_6camino11Utf8PathBufNtB6_5Debug3fmtCsdcPuHeDsw6v_13project_model }>, align 8
@121 = private unnamed_addr constant [10 x i8] c"AbsPathBuf", align 1
@122 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"O\00\00\00\00\00\00\00k\04\00\00$\00\00\00" }>, align 8
@123 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -654675508425364404 to ptr), ptr inttoptr (i64 7626636266285069727 to ptr) }>, align 8
@switch.table._RINvMs0_NtCsdcPuHeDsw6v_13project_model7sysrootNtB6_7Sysroot9tool_pathRNtCs9R0CJ7nmiec_5paths7AbsPathEB8_.104 = private unnamed_addr constant [4 x i8] c"\05\05\06\07", align 8
@switch.table._RINvMs0_NtCsdcPuHeDsw6v_13project_model7sysrootNtB6_7Sysroot9tool_pathRNtCs9R0CJ7nmiec_5paths7AbsPathEB8_.105 = private unnamed_addr constant [4 x ptr] [ptr @4, ptr @1, ptr @5, ptr @6], align 8
@switch.table._RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCsdcPuHeDsw6v_13project_model = private unnamed_addr constant [6 x i8] c"\05\0C\0B\0B\04\0E", align 8
@switch.table._RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCsdcPuHeDsw6v_13project_model.106 = private unnamed_addr constant [6 x ptr] [ptr @114, ptr @115, ptr @116, ptr @117, ptr @118, ptr @119], align 8

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define hidden { ptr, i64 } @_RINvMNtCshzWfHUSfYae_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 6 uses
  %i.b = icmp samesign eq i64 %1, 0
  br i1 %i.b, label %_RNvXso_NtNtCshzWfHUSfYae_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsdcPuHeDsw6v_13project_model.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsdcPuHeDsw6v_13project_model.exit.i.i
  %i.c = phi i64 [ %i.aq, %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsdcPuHeDsw6v_13project_model.exit.i.i ], [ 0, %bb.a ] ; 4 uses
  %i.d = phi ptr [ %.sroa.4.0, %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsdcPuHeDsw6v_13project_model.exit.i.i ], [ %0, %bb.a ] ; 6 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 3 uses
  %i.g = load i8, ptr %i.d, align 1, !noalias !47, !noundef !4 ; 5 uses
  %i.h = icmp sgt i8 %i.g, -1
  br i1 %i.h, label %bb.b, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdcPuHeDsw6v_13project_model.exit12.i.i.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdcPuHeDsw6v_13project_model.exit12.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.i = and i8 %i.g, 31
  %i.j = zext nneg i8 %i.i to i32                 ; 3 uses
  %i.k = icmp ne ptr %i.f, %i.a
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 3 uses
  %i.m = load i8, ptr %i.f, align 1, !noalias !47, !noundef !4
  %i.n = shl nuw nsw i32 %i.j, 6
  %i.o = and i8 %i.m, 63
  %i.p = zext nneg i8 %i.o to i32                 ; 2 uses
  %i.q = or disjoint i32 %i.n, %i.p
  %i.r = icmp samesign ugt i8 %i.g, -33
  br i1 %i.r, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdcPuHeDsw6v_13project_model.exit14.i.i.i.i.i, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.s = zext nneg i8 %i.g to i32
  br label %bb.c

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdcPuHeDsw6v_13project_model.exit14.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdcPuHeDsw6v_13project_model.exit12.i.i.i.i.i
  %i.t = icmp ne ptr %i.l, %i.a
  tail call void @llvm.assume(i1 %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 3 ; 3 uses
  %i.v = load i8, ptr %i.l, align 1, !noalias !47, !noundef !4
  %i.w = shl nuw nsw i32 %i.p, 6
  %i.x = and i8 %i.v, 63
  %i.y = zext nneg i8 %i.x to i32
  %i.z = or disjoint i32 %i.w, %i.y               ; 2 uses
  %i.aa = shl nuw nsw i32 %i.j, 12
  %i.ab = or disjoint i32 %i.z, %i.aa
  %i.ac = icmp samesign ugt i8 %i.g, -17
  br i1 %i.ac, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdcPuHeDsw6v_13project_model.exit16.i.i.i.i.i, label %bb.c

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdcPuHeDsw6v_13project_model.exit16.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdcPuHeDsw6v_13project_model.exit14.i.i.i.i.i
  %i.ad = icmp ne ptr %i.u, %i.a
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.af = load i8, ptr %i.u, align 1, !noalias !47, !noundef !4
  %i.ag = shl nuw nsw i32 %i.j, 18
  %i.ah = and i32 %i.ag, 1835008
  %i.ai = shl nuw nsw i32 %i.z, 6
  %i.aj = and i8 %i.af, 63
  %i.ak = zext nneg i8 %i.aj to i32
  %i.al = or disjoint i32 %i.ai, %i.ak
  %i.am = or disjoint i32 %i.al, %i.ah
  br label %bb.c

bb.c:                                             ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdcPuHeDsw6v_13project_model.exit16.i.i.i.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdcPuHeDsw6v_13project_model.exit14.i.i.i.i.i, %bb.b, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdcPuHeDsw6v_13project_model.exit12.i.i.i.i.i
  %.sroa.4.0 = phi ptr [ %i.f, %bb.b ], [ %i.ae, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdcPuHeDsw6v_13project_model.exit16.i.i.i.i.i ], [ %i.u, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdcPuHeDsw6v_13project_model.exit14.i.i.i.i.i ], [ %i.l, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdcPuHeDsw6v_13project_model.exit12.i.i.i.i.i ] ; 6 uses
  %.sroa.4.0.i.ph.i.i.i.i = phi i32 [ %i.s, %bb.b ], [ %i.am, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdcPuHeDsw6v_13project_model.exit16.i.i.i.i.i ], [ %i.ab, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdcPuHeDsw6v_13project_model.exit14.i.i.i.i.i ], [ %i.q, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdcPuHeDsw6v_13project_model.exit12.i.i.i.i.i ] ; 8 uses
  %i.an = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = ptrtoint ptr %.sroa.4.0 to i64
  %i.ap = sub i64 %i.ao, %i.e
  %i.aq = add i64 %i.ap, %i.c                     ; 4 uses
  switch i32 %.sroa.4.0.i.ph.i.i.i.i, label %bb.d [
    i32 32, label %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsdcPuHeDsw6v_13project_model.exit.i.i
    i32 13, label %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsdcPuHeDsw6v_13project_model.exit.i.i
    i32 12, label %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsdcPuHeDsw6v_13project_model.exit.i.i
    i32 11, label %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsdcPuHeDsw6v_13project_model.exit.i.i
    i32 10, label %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsdcPuHeDsw6v_13project_model.exit.i.i
    i32 9, label %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsdcPuHeDsw6v_13project_model.exit.i.i
  ]

bb.d:                                             ; preds = %bb.c
  %i.ar = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i, 133
  br i1 %i.ar, label %_RNvXso_NtNtCshzWfHUSfYae_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsdcPuHeDsw6v_13project_model.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.as = lshr i32 %.sroa.4.0.i.ph.i.i.i.i, 8
  switch i32 %i.as, label %_RNvXso_NtNtCshzWfHUSfYae_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsdcPuHeDsw6v_13project_model.exit [
    i32 0, label %bb.h
    i32 22, label %bb.f
    i32 32, label %bb.i
    i32 48, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.at = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i, 5760
  %i.au = zext i1 %i.at to i8
  br label %_RNvXs3_NtNtCshzWfHUSfYae_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsdcPuHeDsw6v_13project_model.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.av = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i, 12288
  %i.aw = zext i1 %i.av to i8
  br label %_RNvXs3_NtNtCshzWfHUSfYae_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsdcPuHeDsw6v_13project_model.exit.i.i.i

bb.h:                                             ; preds = %bb.e
  %i.ax = and i32 %.sroa.4.0.i.ph.i.i.i.i, 255
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCshzWfHUSfYae_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !noalias !48, !noundef !4
  br label %_RNvXs3_NtNtCshzWfHUSfYae_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsdcPuHeDsw6v_13project_model.exit.i.i.i

bb.i:                                             ; preds = %bb.e
  %i.bb = and i32 %.sroa.4.0.i.ph.i.i.i.i, 255
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCshzWfHUSfYae_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !noalias !48, !noundef !4
  %i.bf = lshr i8 %i.be, 1
  br label %_RNvXs3_NtNtCshzWfHUSfYae_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsdcPuHeDsw6v_13project_model.exit.i.i.i

_RNvXs3_NtNtCshzWfHUSfYae_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsdcPuHeDsw6v_13project_model.exit.i.i.i: ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.sroa.0.0.i.i.i.i.i.i.i = phi i8 [ %i.aw, %bb.g ], [ %i.ba, %bb.h ], [ %i.au, %bb.f ], [ %i.bf, %bb.i ]
  %i.bg = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i to i1
  br i1 %i.bg, label %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsdcPuHeDsw6v_13project_model.exit.i.i, label %_RNvXso_NtNtCshzWfHUSfYae_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsdcPuHeDsw6v_13project_model.exit

_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsdcPuHeDsw6v_13project_model.exit.i.i: ; preds = %_RNvXs3_NtNtCshzWfHUSfYae_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsdcPuHeDsw6v_13project_model.exit.i.i.i, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %i.bh = icmp eq ptr %.sroa.4.0, %i.a
  br i1 %i.bh, label %.loopexit, label %.lr.ph.i.i

_RNvXso_NtNtCshzWfHUSfYae_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsdcPuHeDsw6v_13project_model.exit: ; preds = %bb.e, %_RNvXs3_NtNtCshzWfHUSfYae_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsdcPuHeDsw6v_13project_model.exit.i.i.i, %bb.d, %bb.a
  %.sroa.4.121 = phi ptr [ %0, %bb.a ], [ %.sroa.4.0, %bb.d ], [ %.sroa.4.0, %_RNvXs3_NtNtCshzWfHUSfYae_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsdcPuHeDsw6v_13project_model.exit.i.i.i ], [ %.sroa.4.0, %bb.e ] ; 6 uses
  %.sroa.18.019 = phi i64 [ 0, %bb.a ], [ %i.aq, %bb.d ], [ %i.aq, %_RNvXs3_NtNtCshzWfHUSfYae_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsdcPuHeDsw6v_13project_model.exit.i.i.i ], [ %i.aq, %bb.e ] ; 3 uses
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %i.c, %bb.d ], [ %i.c, %_RNvXs3_NtNtCshzWfHUSfYae_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsdcPuHeDsw6v_13project_model.exit.i.i.i ], [ %i.c, %bb.e ] ; 3 uses
  %i.bi = icmp eq ptr %.sroa.4.121, %i.a
  br i1 %i.bi, label %.loopexit, label %.lr.ph.i.i4

.lr.ph.i.i4:                                      ; preds = %_RNvXso_NtNtCshzWfHUSfYae_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsdcPuHeDsw6v_13project_model.exit, %bb.t
  %i.bj = phi ptr [ %i.ct, %bb.t ], [ %i.a, %_RNvXso_NtNtCshzWfHUSfYae_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsdcPuHeDsw6v_13project_model.exit ] ; 5 uses
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -1 ; 3 uses
  %i.bl = load i8, ptr %i.bk, align 1, !noalias !49, !noundef !4 ; 3 uses
  %i.bm = icmp sgt i8 %i.bl, -1
  br i1 %i.bm, label %bb.j, label %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdcPuHeDsw6v_13project_model.exit17.i.i.i.i.i

_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdcPuHeDsw6v_13project_model.exit17.i.i.i.i.i: ; preds = %.lr.ph.i.i4
  %i.bn = icmp ne ptr %.sroa.4.121, %i.bk
  tail call void @llvm.assume(i1 %i.bn)
  %i.bo = getelementptr inbounds i8, ptr %i.bj, i64 -2 ; 3 uses
  %i.bp = load i8, ptr %i.bo, align 1, !noalias !49, !noundef !4 ; 3 uses
  %i.bq = and i8 %i.bp, 31
  %i.br = zext nneg i8 %i.bq to i32
  %i.bs = icmp slt i8 %i.bp, -64
  br i1 %i.bs, label %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdcPuHeDsw6v_13project_model.exit19.i.i.i.i.i, label %bb.k

bb.j:                                             ; preds = %.lr.ph.i.i4
  %i.bt = zext nneg i8 %i.bl to i32
  br label %bb.m

_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdcPuHeDsw6v_13project_model.exit19.i.i.i.i.i: ; preds = %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdcPuHeDsw6v_13project_model.exit17.i.i.i.i.i
  %i.bu = icmp ne ptr %.sroa.4.121, %i.bo
  tail call void @llvm.assume(i1 %i.bu)
  %i.bv = getelementptr inbounds i8, ptr %i.bj, i64 -3 ; 3 uses
  %i.bw = load i8, ptr %i.bv, align 1, !noalias !49, !noundef !4 ; 3 uses
  %i.bx = and i8 %i.bw, 15
  %i.by = zext nneg i8 %i.bx to i32
  %i.bz = icmp slt i8 %i.bw, -64
  br i1 %i.bz, label %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdcPuHeDsw6v_13project_model.exit21.i.i.i.i.i, label %bb.l

bb.k:                                             ; preds = %bb.l, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdcPuHeDsw6v_13project_model.exit17.i.i.i.i.i
  %i.ca = phi ptr [ %i.co, %bb.l ], [ %i.bo, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdcPuHeDsw6v_13project_model.exit17.i.i.i.i.i ]
  %.sroa.010.0.i.i.i.i.i = phi i32 [ %i.cs, %bb.l ], [ %i.br, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdcPuHeDsw6v_13project_model.exit17.i.i.i.i.i ]
  %i.cb = shl nuw nsw i32 %.sroa.010.0.i.i.i.i.i, 6
  %i.cc = and i8 %i.bl, 63
  %i.cd = zext nneg i8 %i.cc to i32
  %i.ce = or disjoint i32 %i.cb, %i.cd
  br label %bb.m

_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdcPuHeDsw6v_13project_model.exit21.i.i.i.i.i: ; preds = %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdcPuHeDsw6v_13project_model.exit19.i.i.i.i.i
  %i.cf = icmp ne ptr %.sroa.4.121, %i.bv
  tail call void @llvm.assume(i1 %i.cf)
  %i.cg = getelementptr inbounds i8, ptr %i.bj, i64 -4 ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 1, !noalias !49, !noundef !4
  %i.ci = and i8 %i.ch, 7
  %i.cj = zext nneg i8 %i.ci to i32
  %i.ck = shl nuw nsw i32 %i.cj, 6
  %i.cl = and i8 %i.bw, 63
  %i.cm = zext nneg i8 %i.cl to i32
  %i.cn = or disjoint i32 %i.ck, %i.cm
  br label %bb.l

bb.l:                                             ; preds = %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdcPuHeDsw6v_13project_model.exit21.i.i.i.i.i, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdcPuHeDsw6v_13project_model.exit19.i.i.i.i.i
  %i.co = phi ptr [ %i.cg, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdcPuHeDsw6v_13project_model.exit21.i.i.i.i.i ], [ %i.bv, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdcPuHeDsw6v_13project_model.exit19.i.i.i.i.i ]
  %.sroa.010.1.i.i.i.i.i = phi i32 [ %i.cn, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdcPuHeDsw6v_13project_model.exit21.i.i.i.i.i ], [ %i.by, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdcPuHeDsw6v_13project_model.exit19.i.i.i.i.i ]
  %i.cp = shl nuw nsw i32 %.sroa.010.1.i.i.i.i.i, 6
  %i.cq = and i8 %i.bp, 63
  %i.cr = zext nneg i8 %i.cq to i32
  %i.cs = or disjoint i32 %i.cp, %i.cr
  br label %bb.k

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.ct = phi ptr [ %i.bk, %bb.j ], [ %i.ca, %bb.k ] ; 2 uses
  %.sroa.4.1.i.ph.i.i.i.i = phi i32 [ %i.bt, %bb.j ], [ %i.ce, %bb.k ] ; 8 uses
  %i.cu = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.i.i, 1114112
end_hunk_0
begin_hunk_1_@_RINvMNtCshzWfHUSfYae_4core3stre18trim_start_matchesReECsdcPuHeDsw6v_13project_model:bb.a
  %i.bx = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.bv
  %i.by = load i8, ptr %i.bx, align 1, !alias.scope !84, !noalias !86, !noundef !4
  %.not22.i.i.us.i = icmp eq i8 %i.bu, %i.by
  br i1 %.not22.i.i.us.i, label %bb.g, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %.reass.i.i.us.i = add i64 %.sroa.04.0.i.i.us.i266, %invariant.op.i.i.reass.us.reass.i.reass.reass.reass
  br label %.sink.split.i.i.us.i

.preheader44.i.us.i:                              ; preds = %bb.i
  %i.bz = icmp ult i64 %i.bj, %i.ca
  br i1 %i.bz, label %.lr.ph268, label %.split38.us.i.us.i

.lr.ph268:                                        ; preds = %.preheader44.i.us.i.preheader, %.preheader44.i.us.i
  %.sroa.2.0.i.i.us.i267 = phi i64 [ %i.ca, %.preheader44.i.us.i ], [ %i.f, %.preheader44.i.us.i.preheader ]
  %i.ca = add i64 %.sroa.2.0.i.i.us.i267, -1      ; 6 uses
  %i.cb = icmp ult i64 %i.ca, %i.y
  br i1 %i.cb, label %bb.i, label %.split40.us.i.i

bb.i:                                             ; preds = %.lr.ph268
  %i.cc = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.ca
  %i.cd = load i8, ptr %i.cc, align 1, !alias.scope !85, !noalias !86, !noundef !4
  %i.ce = add i64 %i.ca, %.sink98.i.us.i67.lcssa69.us81 ; 2 uses
  %i.cf = icmp ult i64 %i.ce, %i.j
  tail call void @llvm.assume(i1 %i.cf)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ce
  %i.ch = load i8, ptr %i.cg, align 1, !alias.scope !84, !noalias !86, !noundef !4
  %.not21.i.i.us.i = icmp eq i8 %i.cd, %i.ch
  br i1 %.not21.i.i.us.i, label %.preheader44.i.us.i, label %.sink.split.i.i.us.i

.sink.split.i.i.us.i:                             ; preds = %bb.i, %bb.h, %bb.e
  %.sink99.i.us.i = phi i64 [ %i.al, %bb.e ], [ %.reass.i.i.us.i, %bb.h ], [ %i.ak, %bb.i ] ; 2 uses
  %.sink55.i.i.us.i = phi i64 [ 0, %bb.e ], [ 0, %bb.h ], [ %i.af, %bb.i ]
  %i.ci = add i64 %.sink99.i.us.i, %i.z           ; 2 uses
  %i.cj = icmp ult i64 %i.ci, %i.j
  br i1 %i.cj, label %.lr.ph.i.split.i.us.i, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCsdcPuHeDsw6v_13project_model.exit

.lr.ph.i.split.us.i.us.i:                         ; preds = %.lr.ph.i.split.us.i.us.i.preheader, %.loopexit.split.us.us.i
  %.sink98.i.us.i67 = phi i64 [ %.sink98.i.us.i, %.loopexit.split.us.us.i ], [ %.sink98.i.us.i67.lcssa69.us81, %.lr.ph.i.split.us.i.us.i.preheader ]
  %i.ck = phi i64 [ %i.cy, %.loopexit.split.us.us.i ], [ %i.ah, %.lr.ph.i.split.us.i.us.i.preheader ]
  %.not.i18.us.i.us.i = icmp eq i64 %.sink98.i.us.i67.lcssa69.us81, %.sink98.i.us.i67
  br i1 %.not.i18.us.i.us.i, label %bb.j, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCsdcPuHeDsw6v_13project_model.exit

bb.j:                                             ; preds = %.lr.ph.i.split.us.i.us.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !alias.scope !84, !noalias !86, !noundef !4
  %i.cn = and i8 %i.cm, 63
  %i.co = zext nneg i8 %i.cn to i64
  %i.cp = shl nuw i64 1, %i.co
  %i.cq = and i64 %i.cp, %i.ab
  %.not20.i.us.i.us.i = icmp eq i64 %i.cq, 0
  br i1 %.not20.i.us.i.us.i, label %.loopexit.split.us.us.i, label %.preheader43.i.us.i.preheader

.preheader43.i.us.i.preheader:                    ; preds = %bb.j
  br i1 %exitcond.not.i.us.i.us.i269.not, label %.lr.ph271, label %.preheader.i.preheader.us.i

.preheader43.i.us.i:                              ; preds = %.lr.ph271
  %i.cr = add i64 %.sroa.04.0.i.us.i.us.i270, 1   ; 2 uses
  %exitcond.not.i.us.i.us.i = icmp eq i64 %i.cr, %umax.i.us.i.i
  br i1 %exitcond.not.i.us.i.us.i, label %.preheader.i.preheader.us.i, label %.lr.ph271

.lr.ph271:                                        ; preds = %.preheader43.i.us.i.preheader, %.preheader43.i.us.i
  %.sroa.04.0.i.us.i.us.i270 = phi i64 [ %i.cr, %.preheader43.i.us.i ], [ %i.f, %.preheader43.i.us.i.preheader ] ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sroa.04.0.i.us.i.us.i270
  %i.ct = load i8, ptr %i.cs, align 1, !alias.scope !85, !noalias !86, !noundef !4
  %i.cu = add i64 %.sroa.04.0.i.us.i.us.i270, %.sink98.i.us.i67.lcssa69.us81 ; 2 uses
  %i.cv = icmp ult i64 %i.cu, %i.j
  tail call void @llvm.assume(i1 %i.cv)
  %i.cw = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.cu
  %i.cx = load i8, ptr %i.cw, align 1, !alias.scope !84, !noalias !86, !noundef !4
  %.not22.i.us.i.us.i = icmp eq i8 %i.ct, %i.cx
  br i1 %.not22.i.us.i.us.i, label %.preheader43.i.us.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph271
  %.reass.i.us.i.us.i = add i64 %.sroa.04.0.i.us.i.us.i270, %invariant.op.i.i.reass.us.reass.i.reass.reass.reass
  br label %.loopexit.split.us.us.i

.preheader.i.preheader.us.i:                      ; preds = %.preheader43.i.us.i.preheader, %.preheader43.i.us.i
  br i1 %i.k, label %.split38.us.i.us.i, label %.split40.us.i.i

.loopexit.split.us.us.i:                          ; preds = %bb.k, %bb.j
  %.sink98.i.us.i = phi i64 [ %i.al, %bb.j ], [ %.reass.i.us.i.us.i, %bb.k ] ; 2 uses
  %i.cy = add i64 %.sink98.i.us.i, %i.z           ; 2 uses
  %i.cz = icmp ult i64 %i.cy, %i.j
  br i1 %i.cz, label %.lr.ph.i.split.us.i.us.i, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCsdcPuHeDsw6v_13project_model.exit

.split38.us.i.us.i:                               ; preds = %.preheader44.i.us.i.preheader, %.preheader.i.us.us.i.us.preheader, %.preheader44.i.us.i, %.preheader.i.us.us.i.us, %.preheader.i.preheader.us.i
  %spec.select101 = phi i64 [ -1, %.preheader.i.us.us.i.us ], [ -1, %.preheader.i.preheader.us.i ], [ 0, %.preheader44.i.us.i ], [ -1, %.preheader.i.us.us.i.us.preheader ], [ 0, %.preheader44.i.us.i.preheader ]
  %i.da = icmp eq i64 %i.al, %i.j
  br i1 %i.da, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCsdcPuHeDsw6v_13project_model.exit, label %bb.b

.split.i:                                         ; preds = %bb.a
  %i.db = getelementptr inbounds nuw i8, ptr %i.a, i64 26
  %i.dc = load i8, ptr %i.db, align 2, !range !6, !alias.scope !81
  %i.dd = trunc nuw i8 %i.dc to i1
  %.promoted95.i = load i8, ptr %i.e, align 8, !alias.scope !81 ; 11 uses
  br i1 %i.dd, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCsdcPuHeDsw6v_13project_model.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.split.i
  br i1 %.fr.i, label %.lr.ph.split.us.i, label %.lr.ph.split.split.i.preheader

.lr.ph.split.split.i.preheader:                   ; preds = %.lr.ph.i
  br i1 %i.k, label %.lr.ph.split.split.i.preheader.split.us, label %.lr.ph.split.split.i.preheader.split

.lr.ph.split.split.i.preheader.split.us:          ; preds = %.lr.ph.split.split.i.preheader
  %.pr.i.us = load i8, ptr %i.m, align 1, !noalias !87 ; 3 uses
  %i.de = icmp sgt i8 %.pr.i.us, -1
  %i.df = icmp samesign ugt i8 %.pr.i.us, -17
  br i1 %i.de, label %.lr.ph.split.split.i.us.us.preheader, label %.lr.ph.split.split.i.preheader.split.us.split

.lr.ph.split.split.i.us.us.preheader:             ; preds = %.lr.ph.split.split.i.preheader.split.us
  %i.dg = trunc nuw i8 %.promoted95.i to i1
  br i1 %i.dg, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCsdcPuHeDsw6v_13project_model.exit.sink.split, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCsdcPuHeDsw6v_13project_model.exit

.lr.ph.split.split.i.preheader.split.us.split:    ; preds = %.lr.ph.split.split.i.preheader.split.us
  %i.dh = icmp samesign ugt i8 %.pr.i.us, -33
  tail call void @llvm.assume(i1 %i.o)
  br i1 %i.dh, label %.lr.ph.split.split.i.preheader.split.us.split.split.us, label %.lr.ph.split.split.i.preheader.split.us.split.split

.lr.ph.split.split.i.preheader.split.us.split.split.us: ; preds = %.lr.ph.split.split.i.preheader.split.us.split
  tail call void @llvm.assume(i1 %i.q)
  br i1 %i.df, label %.lr.ph.split.split.i.preheader.split.us.split.split.us.split.us, label %.lr.ph.split.split.i.preheader.split.us.split.split.us.split

.lr.ph.split.split.i.preheader.split.us.split.split.us.split.us: ; preds = %.lr.ph.split.split.i.preheader.split.us.split.split.us
  tail call void @llvm.assume(i1 %i.s)
  %i.di = trunc nuw i8 %.promoted95.i to i1
  br i1 %i.di, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCsdcPuHeDsw6v_13project_model.exit.sink.split, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCsdcPuHeDsw6v_13project_model.exit

.lr.ph.split.split.i.preheader.split.us.split.split.us.split: ; preds = %.lr.ph.split.split.i.preheader.split.us.split.split.us
  %i.dj = trunc nuw i8 %.promoted95.i to i1
  br i1 %i.dj, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCsdcPuHeDsw6v_13project_model.exit.sink.split, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCsdcPuHeDsw6v_13project_model.exit

.lr.ph.split.split.i.preheader.split.us.split.split: ; preds = %.lr.ph.split.split.i.preheader.split.us.split
  %i.dk = trunc nuw i8 %.promoted95.i to i1
  br i1 %i.dk, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCsdcPuHeDsw6v_13project_model.exit.sink.split, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCsdcPuHeDsw6v_13project_model.exit

.lr.ph.split.split.i.preheader.split:             ; preds = %.lr.ph.split.split.i.preheader
  br i1 %.not.i.i.i, label %.lr.ph.split.split.i.preheader.split.split.us, label %.split100.us.i

.lr.ph.split.split.i.preheader.split.split.us:    ; preds = %.lr.ph.split.split.i.preheader.split
  %i.dl = load i8, ptr %i.m, align 1, !noalias !86, !noundef !4 ; 4 uses
  %i.dm = icmp sgt i8 %i.dl, -65
  %i.dn = icmp samesign ugt i8 %i.dl, -33
  %i.do = icmp samesign ugt i8 %i.dl, -17
  br i1 %i.dm, label %.lr.ph.split.split.i.preheader.split.split.us.split.us, label %.split100.us.i

.lr.ph.split.split.i.preheader.split.split.us.split.us: ; preds = %.lr.ph.split.split.i.preheader.split.split.us
  %i.dp = icmp sgt i8 %i.dl, -1
  br i1 %i.dp, label %.lr.ph.split.split.i.us36.us.us.preheader, label %.lr.ph.split.split.i.preheader.split.split.us.split.us.split

.lr.ph.split.split.i.us36.us.us.preheader:        ; preds = %.lr.ph.split.split.i.preheader.split.split.us.split.us
  %i.dq = trunc nuw i8 %.promoted95.i to i1
  br i1 %i.dq, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCsdcPuHeDsw6v_13project_model.exit.sink.split, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCsdcPuHeDsw6v_13project_model.exit

.lr.ph.split.split.i.preheader.split.split.us.split.us.split: ; preds = %.lr.ph.split.split.i.preheader.split.split.us.split.us
  tail call void @llvm.assume(i1 %i.o)
  br i1 %i.dn, label %.lr.ph.split.split.i.preheader.split.split.us.split.us.split.split.us, label %.lr.ph.split.split.i.preheader.split.split.us.split.us.split.split

.lr.ph.split.split.i.preheader.split.split.us.split.us.split.split.us: ; preds = %.lr.ph.split.split.i.preheader.split.split.us.split.us.split
  tail call void @llvm.assume(i1 %i.q)
  br i1 %i.do, label %.lr.ph.split.split.i.preheader.split.split.us.split.us.split.split.us.split.us, label %.lr.ph.split.split.i.preheader.split.split.us.split.us.split.split.us.split

.lr.ph.split.split.i.preheader.split.split.us.split.us.split.split.us.split.us: ; preds = %.lr.ph.split.split.i.preheader.split.split.us.split.us.split.split.us
  tail call void @llvm.assume(i1 %i.s)
  %i.dr = trunc nuw i8 %.promoted95.i to i1
  br i1 %i.dr, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCsdcPuHeDsw6v_13project_model.exit.sink.split, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCsdcPuHeDsw6v_13project_model.exit

.lr.ph.split.split.i.preheader.split.split.us.split.us.split.split.us.split: ; preds = %.lr.ph.split.split.i.preheader.split.split.us.split.us.split.split.us
  %i.ds = trunc nuw i8 %.promoted95.i to i1
  br i1 %i.ds, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCsdcPuHeDsw6v_13project_model.exit.sink.split, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCsdcPuHeDsw6v_13project_model.exit

.lr.ph.split.split.i.preheader.split.split.us.split.us.split.split: ; preds = %.lr.ph.split.split.i.preheader.split.split.us.split.us.split
  %i.dt = trunc nuw i8 %.promoted95.i to i1
  br i1 %i.dt, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCsdcPuHeDsw6v_13project_model.exit.sink.split, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCsdcPuHeDsw6v_13project_model.exit

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  br i1 %i.k, label %.lr.ph.split.us.split.us.split.i, label %.lr.ph.split.us.split.i

.lr.ph.split.us.split.us.split.i:                 ; preds = %.lr.ph.split.us.i
  %i.du = trunc nuw i8 %.promoted95.i to i1
  br i1 %i.du, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCsdcPuHeDsw6v_13project_model.exit.sink.split, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCsdcPuHeDsw6v_13project_model.exit

.lr.ph.split.us.split.i:                          ; preds = %.lr.ph.split.us.i
  br i1 %.not.i.i.i, label %.lr.ph.split.us.split.split.us.i, label %.lr.ph.split.us.split.split.split.us.split.i

.lr.ph.split.us.split.split.us.i:                 ; preds = %.lr.ph.split.us.split.i
  %i.dv = load i8, ptr %i.m, align 1, !alias.scope !88, !noalias !86, !noundef !4
  %i.dw = icmp sgt i8 %i.dv, -65
  br i1 %i.dw, label %.lr.ph.split.us.split.split.us.split.us.split.i, label %.split100.us.i

.lr.ph.split.us.split.split.us.split.us.split.i:  ; preds = %.lr.ph.split.us.split.split.us.i
  %i.dx = trunc nuw i8 %.promoted95.i to i1
  br i1 %i.dx, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCsdcPuHeDsw6v_13project_model.exit.sink.split, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCsdcPuHeDsw6v_13project_model.exit

.lr.ph.split.us.split.split.split.us.split.i:     ; preds = %.lr.ph.split.us.split.i
  %i.dy = trunc nuw i8 %.promoted95.i to i1
  br i1 %i.dy, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCsdcPuHeDsw6v_13project_model.exit.sink.split, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCsdcPuHeDsw6v_13project_model.exit

.split100.us.i:                                   ; preds = %.lr.ph.split.split.i.preheader.split, %.lr.ph.split.us.split.split.us.i, %.lr.ph.split.split.i.preheader.split.split.us
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83)
  tail call void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef %i.j, i64 noundef %i.f, i64 noundef %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @122) #25, !noalias !86
  unreachable

.split40.us.i.i:                                  ; preds = %.preheader.i.preheader.us.i, %.lr.ph268
  %.us-phi41.i.i = phi i64 [ %i.ca, %.lr.ph268 ], [ %i.ac, %.preheader.i.preheader.us.i ]
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %.us-phi41.i.i, i64 noundef range(i64 0, -9223372036854775808) %i.y, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #25, !noalias !89
  unreachable

_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCsdcPuHeDsw6v_13project_model.exit.sink.split: ; preds = %.lr.ph.split.split.i.us.us.preheader, %.lr.ph.split.split.i.us36.us.us.preheader, %.lr.ph.split.split.i.preheader.split.split.us.split.us.split.split, %.lr.ph.split.split.i.preheader.split.split.us.split.us.split.split.us.split, %.lr.ph.split.split.i.preheader.split.us.split.split.us.split.us, %.lr.ph.split.split.i.preheader.split.split.us.split.us.split.split.us.split.us, %.lr.ph.split.split.i.preheader.split.us.split.split, %.lr.ph.split.split.i.preheader.split.us.split.split.us.split, %.lr.ph.split.us.split.us.split.i, %.lr.ph.split.us.split.split.us.split.us.split.i, %.lr.ph.split.us.split.split.split.us.split.i
  %.sroa.0.0.ph = phi i64 [ %i.f, %.lr.ph.split.split.i.preheader.split.us.split.split ], [ %1, %.lr.ph.split.us.split.us.split.i ], [ %i.f, %.lr.ph.split.split.i.preheader.split.us.split.split.us.split ], [ %i.f, %.lr.ph.split.split.i.preheader.split.us.split.split.us.split.us ], [ %i.f, %.lr.ph.split.split.i.preheader.split.split.us.split.us.split.split.us.split ], [ %i.f, %.lr.ph.split.split.i.preheader.split.split.us.split.us.split.split ], [ %1, %.lr.ph.split.us.split.split.split.us.split.i ], [ %1, %.lr.ph.split.us.split.split.us.split.us.split.i ], [ %i.f, %.lr.ph.split.split.i.preheader.split.split.us.split.us.split.split.us.split.us ], [ %i.f, %.lr.ph.split.split.i.us36.us.us.preheader ], [ %i.f, %.lr.ph.split.split.i.us.us.preheader ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83)
  br label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCsdcPuHeDsw6v_13project_model.exit

_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCsdcPuHeDsw6v_13project_model.exit: ; preds = %bb.b, %.split38.us.i.us.i, %.lr.ph.i.split.i.us.i, %.sink.split.i.i.us.i, %.lr.ph.i.split.us.i.us.i, %.loopexit.split.us.us.i, %.lr.ph.i.split.us.i.us.i.us, %.loopexit.split.us.us.i.us, %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCsdcPuHeDsw6v_13project_model.exit.sink.split, %.lr.ph.split.split.i.preheader.split.split.us.split.us.split.split.us.split.us, %.lr.ph.split.split.i.preheader.split.us.split.split.us.split.us, %.lr.ph.split.split.i.preheader.split.us.split.split.us.split, %.lr.ph.split.split.i.preheader.split.us.split.split, %.lr.ph.split.split.i.preheader.split.split.us.split.us.split.split.us.split, %.lr.ph.split.split.i.preheader.split.split.us.split.us.split.split, %.lr.ph.split.split.i.us36.us.us.preheader, %.lr.ph.split.split.i.us.us.preheader, %.lr.ph.split.us.split.us.split.i, %.lr.ph.split.us.split.split.us.split.us.split.i, %.lr.ph.split.us.split.split.split.us.split.i, %.split.us.i, %.split.i
  %.sroa.0.0 = phi i64 [ %i.f, %.lr.ph.split.split.i.us36.us.us.preheader ], [ %i.f, %.lr.ph.split.split.i.preheader.split.split.us.split.us.split.split.us.split ], [ %1, %.split.us.i ], [ %.sink98.i.us.i67.lcssa69.us81, %.lr.ph.i.split.i.us.i ], [ %1, %.split.i ], [ %i.f, %.lr.ph.split.split.i.us.us.preheader ], [ %1, %.lr.ph.split.us.split.us.split.i ], [ %.sink98.i.us.i67.lcssa69.us81, %.lr.ph.i.split.us.i.us.i ], [ %i.f, %.lr.ph.split.split.i.preheader.split.us.split.split.us.split.us ], [ %.sroa.0.0.ph, %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCsdcPuHeDsw6v_13project_model.exit.sink.split ], [ %i.f, %.lr.ph.split.split.i.preheader.split.us.split.split ], [ %1, %.lr.ph.split.us.split.split.split.us.split.i ], [ %1, %.lr.ph.split.us.split.split.us.split.us.split.i ], [ %i.f, %.lr.ph.split.split.i.preheader.split.split.us.split.us.split.split.us.split.us ], [ %i.f, %.lr.ph.split.split.i.preheader.split.split.us.split.us.split.split ], [ %i.f, %.lr.ph.split.split.i.preheader.split.us.split.split.us.split ], [ %.sink98.i.us.i67.lcssa69.us81, %.lr.ph.i.split.us.i.us.i.us ], [ %.sink98.i.us.i67.lcssa69.us81, %.loopexit.split.us.us.i.us ], [ %.sink98.i.us.i67.lcssa69.us81, %.loopexit.split.us.us.i ], [ %.sink98.i.us.i67.lcssa69.us81, %.sink.split.i.i.us.i ], [ %1, %.split38.us.i.us.i ], [ %.sink98.i.us.i67.lcssa69.us81, %bb.b ] ; 2 uses
  %i.dz = sub nuw i64 %1, %.sroa.0.0
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.eb = insertvalue { ptr, i64 } poison, ptr %i.ea, 0
  %i.ec = insertvalue { ptr, i64 } %i.eb, i64 %i.dz, 1
  ret { ptr, i64 } %i.ec
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs0_NtCsdcPuHeDsw6v_13project_model7sysrootNtB6_7Sysroot4toolRNtCs9R0CJ7nmiec_5paths7AbsPathEB8_(ptr dead_on_unwind noalias nofree noundef writable sret([200 x i8]) align 8 captures(none) dereferenceable(200) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(256) %1, i8 noundef range(i8 0, 4) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [200 x i8], align 8               ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 13 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = load i64, ptr %1, align 8, !range !7, !alias.scope !92, !noundef !4
  %.not.i = icmp eq i64 %i.i, -1
  br i1 %.not.i, label %_RNvMs_NtCsdcPuHeDsw6v_13project_model7sysrootNtB4_7Sysroot4root.exit.thread, label %_RNvMs_NtCsdcPuHeDsw6v_13project_model7sysrootNtB4_7Sysroot4root.exit

_RNvMs_NtCsdcPuHeDsw6v_13project_model7sysrootNtB4_7Sysroot4root.exit: ; preds = %bb.a
  %i.j = tail call { ptr, i64 } @_RNvXs0_Cs9R0CJ7nmiec_5pathsNtB5_10AbsPathBufNtNtNtCshzWfHUSfYae_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %1) ; 2 uses
  %i.k = extractvalue { ptr, i64 } %i.j, 0        ; 3 uses
  %i.l = extractvalue { ptr, i64 } %i.j, 1        ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %_RNvMs_NtCsdcPuHeDsw6v_13project_model7sysrootNtB4_7Sysroot4root.exit.thread, label %bb.b

bb.b:                                             ; preds = %_RNvMs_NtCsdcPuHeDsw6v_13project_model7sysrootNtB4_7Sysroot4root.exit
  %i.m = icmp eq i8 %2, 1
  br i1 %i.m, label %bb.c, label %bb.d

_RNvMs_NtCsdcPuHeDsw6v_13project_model7sysrootNtB4_7Sysroot4root.exit.thread: ; preds = %bb.a, %_RNvMs_NtCsdcPuHeDsw6v_13project_model7sysrootNtB4_7Sysroot4root.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMCslqCZk5GUYvi_9toolchainNtB2_4Tool4path(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, i8 noundef %2)
  call void @_RINvCslqCZk5GUYvi_9toolchain7commandNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherNtCs9p4rgIae0RV_6camino11Utf8PathBufRNtCs9R0CJ7nmiec_5paths7AbsPathECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull sret([200 x i8]) align 8 captures(none) dereferenceable(200) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.n

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RINvMsh_Cs9R0CJ7nmiec_5pathsNtB6_7AbsPath4joinReECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.k, i64 noundef %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 3)
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !4, !noundef !4
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.q = load i64, ptr %i.p, align 8, !noundef !4
  %i.r = invoke { ptr, i64 } @_RINvMs4_Cs9p4rgIae0RV_6caminoNtB6_8Utf8Path3neweECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 5)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %bb.c
  %i.s = extractvalue { ptr, i64 } %i.r, 0
  %i.t = extractvalue { ptr, i64 } %i.r, 1
  invoke void @_RINvMs16_NtCscAsMj0W7j8b_3std4pathNtB7_4Path4joinRBw_ECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.o, i64 noundef %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.s, i64 noundef %i.t)
          to label %_RINvMs4_Cs9p4rgIae0RV_6caminoNtB6_8Utf8Path4joinReECsdcPuHeDsw6v_13project_model.exit unwind label %bb.e

bb.d:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9R0CJ7nmiec_5paths10AbsPathBufECsdcPuHeDsw6v_13project_model.exit, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMCslqCZk5GUYvi_9toolchainNtB2_4Tool12prefer_proxy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, i8 noundef %2)
  call void @_RINvCslqCZk5GUYvi_9toolchain7commandNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherNtCs9p4rgIae0RV_6camino11Utf8PathBufRNtCs9R0CJ7nmiec_5paths7AbsPathECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull sret([200 x i8]) align 8 captures(none) dereferenceable(200) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.u = invoke noundef zeroext i1 @_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsbSS6DM8SDEO_5alloc6string6StringINtNtCshzWfHUSfYae_4core6option6OptionBO_ENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12contains_keyeECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %5, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 16)
          to label %bb.q unwind label %bb.p

bb.e:                                             ; preds = %.noexc, %bb.c, %bb.g, %_RINvMs4_Cs9p4rgIae0RV_6caminoNtB6_8Utf8Path4joinReECsdcPuHeDsw6v_13project_model.exit
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9R0CJ7nmiec_5paths10AbsPathBufECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g) #26
          to label %common.resume unwind label %bb.o

_RINvMs4_Cs9p4rgIae0RV_6caminoNtB6_8Utf8Path4joinReECsdcPuHeDsw6v_13project_model.exit: ; preds = %.noexc
  invoke void @_RNvCslqCZk5GUYvi_9toolchain16probe_for_binary(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.f unwind label %bb.e

bb.f:                                             ; preds = %_RINvMs4_Cs9p4rgIae0RV_6caminoNtB6_8Utf8Path4joinReECsdcPuHeDsw6v_13project_model.exit
  %i.w = load i64, ptr %i.h, align 8, !range !7, !noundef !4
  %.not6 = icmp eq i64 %i.w, -1
  br i1 %.not6, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  invoke void @_RINvCslqCZk5GUYvi_9toolchain7commandNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherNtCs9p4rgIae0RV_6camino11Utf8PathBufRNtCs9R0CJ7nmiec_5paths7AbsPathECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull sret([200 x i8]) align 8 captures(none) dereferenceable(200) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %5)
          to label %bb.k unwind label %bb.e

bb.h:                                             ; preds = %bb.f
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9R0CJ7nmiec_5paths10AbsPathBufECsdcPuHeDsw6v_13project_model.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #27
  unreachable

common.resume:                                    ; preds = %.body, %bb.e, %bb.l, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.z, %bb.l ], [ %i.x, %bb.i ], [ %i.v, %bb.e ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9R0CJ7nmiec_5paths10AbsPathBufECsdcPuHeDsw6v_13project_model.exit: ; preds = %bb.h
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.d

bb.k:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9R0CJ7nmiec_5paths10AbsPathBufECsdcPuHeDsw6v_13project_model.exit11 unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %common.resume unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9R0CJ7nmiec_5paths10AbsPathBufECsdcPuHeDsw6v_13project_model.exit11: ; preds = %bb.k
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.n

bb.n:                                             ; preds = %bb.s, %_RNvMs_NtCsdcPuHeDsw6v_13project_model7sysrootNtB4_7Sysroot4root.exit.thread, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9R0CJ7nmiec_5paths10AbsPathBufECsdcPuHeDsw6v_13project_model.exit11
  ret void

bb.o:                                             ; preds = %.body, %bb.e
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.p:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECsdcPuHeDsw6v_13project_model.exit.i, %bb.x, %bb.r, %bb.d
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.v, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.v ], [ %i.ac, %bb.p ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscAsMj0W7j8b_3std7process7CommandECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef align 8 dereferenceable(200) %i.e) #26
          to label %common.resume unwind label %bb.o

bb.q:                                             ; preds = %bb.d
  br i1 %i.u, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RINvNtCscAsMj0W7j8b_3std3env6var_osReECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 16)
          to label %bb.t unwind label %bb.p

bb.s:                                             ; preds = %bb.x, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEECsdcPuHeDsw6v_13project_model.exit, %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(200) %i.e, i64 200, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.n

bb.t:                                             ; preds = %bb.r
  %i.ad = load i64, ptr %i.c, align 8, !range !7, !noundef !4
  %.not7 = icmp eq i64 %i.ad, -1
  br i1 %.not7, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECsdcPuHeDsw6v_13project_model.exit.i unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.af = landingpad { ptr, i32 }
end_hunk_1
begin_hunk_2_@_RNvNtNtCsdcPuHeDsw6v_13project_model14toolchain_info7version3get:bb.a
  resume { ptr, i32 } %.pn39
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvXCsfjX3T6UU9IB_9hashbrownINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace11PackageDataEINtB2_10EquivalentBq_E10equivalentBY_(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %1) unnamed_addr #6 {
bb.a:
  %.val = load i32, ptr %0, align 4, !noundef !4
  %.val1 = load i32, ptr %1, align 4, !noundef !4
  %i.a = icmp eq i32 %.val, %.val1
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvXCsfjX3T6UU9IB_9hashbrownINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderEINtB2_10EquivalentBq_E10equivalentCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %1) unnamed_addr #6 {
bb.a:
  %.val = load i32, ptr %0, align 4, !noundef !4
  %.val1 = load i32, ptr %1, align 4, !noundef !4
  %i.a = icmp eq i32 %.val, %.val1
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvXCsfjX3T6UU9IB_9hashbrownINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtNtCsdcPuHeDsw6v_13project_model7sysroot8stitched19RustLibSrcCrateDataEINtB2_10EquivalentBq_E10equivalentB10_(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %1) unnamed_addr #6 {
bb.a:
  %.val = load i32, ptr %0, align 4, !noundef !4
  %.val1 = load i32, ptr %1, align 4, !noundef !4
  %i.a = icmp eq i32 %.val, %.val1
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtCsdcPuHeDsw6v_13project_model7sysrootNtB2_19RustLibSrcWorkspaceNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(184) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = load i64, ptr %0, align 8, !range !13, !noundef !4 ; 2 uses
  %i.h = icmp slt i64 %i.g, 0
  %i.i = add i64 %i.g, -9223372036854775807
  %i.j = select i1 %i.h, i64 %i.i, i64 0
  switch i64 %i.j, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.k = tail call { ptr, i64 } @_RNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB5_14CargoWorkspace14workspace_root(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %0) ; 2 uses
  %i.l = extractvalue { ptr, i64 } %i.k, 0
  %i.m = extractvalue { ptr, i64 } %i.k, 1
  store ptr %i.l, ptr %i.f, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.m, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.f, ptr %i.e, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtRNtCs9R0CJ7nmiec_5paths7AbsPathNtB6_7Display3fmtCsdcPuHeDsw6v_13project_model, ptr %.sroa.43.0..sroa_idx, align 8
  %i.o = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !4, !align !12, !noundef !4
  %i.r = call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.q, ptr noundef nonnull @108, ptr noundef nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.t = tail call { ptr, i64 } @_RNvMs_NtCsdcPuHeDsw6v_13project_model12project_jsonNtB4_11ProjectJson16manifest_or_root(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(152) %i.s) ; 2 uses
  %i.u = extractvalue { ptr, i64 } %i.t, 0
  %i.v = extractvalue { ptr, i64 } %i.t, 1
  store ptr %i.u, ptr %i.d, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.v, ptr %i.w, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtRNtCs9R0CJ7nmiec_5paths7AbsPathNtB6_7Display3fmtCsdcPuHeDsw6v_13project_model, ptr %.sroa.418.0..sroa_idx, align 8
  %i.x = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !4, !align !12, !noundef !4
  %i.aa = call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.x, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.z, ptr noundef nonnull @109, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !4 ; 2 uses
  store i64 %i.ac, ptr %i.b, align 8
  %i.ad = icmp ult i64 %i.ac, 128102389400760776
  tail call void @llvm.assume(i1 %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCshzWfHUSfYae_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.434.0..sroa_idx, align 8
  %i.ae = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !nonnull !4, !align !12, !noundef !4
  %i.ah = call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.ae, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ag, ptr noundef nonnull @110, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e, %bb.d, %bb.c
  %.sroa.0.1.in = phi i1 [ %i.r, %bb.c ], [ %i.aa, %bb.d ], [ %i.ah, %bb.e ], [ %i.an, %bb.g ]
  ret i1 %.sroa.0.1.in

bb.g:                                             ; preds = %bb.a
  %i.ai = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !nonnull !4, !align !12, !noundef !4
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !invariant.load !4, !nonnull !4
  %i.an = tail call noundef zeroext i1 %i.am(ptr noundef nonnull %i.ai, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @111, i64 noundef 5) #32
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXNvNtNtCshzWfHUSfYae_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtNtCscAsMj0W7j8b_3std3sys5stdio4unix6StderrENtNtB8_3fmt5Write9write_strCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.c = tail call noundef ptr @_RNvYNtNtNtNtCscAsMj0W7j8b_3std3sys5stdio4unix6StderrNtNtNtCshzWfHUSfYae_4core2io5write5Write9write_allCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) ; 3 uses
  %.not = icmp ne ptr %i.c, null                  ; 2 uses
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.val = load ptr, ptr %i.d, align 8, !noundef !4 ; 4 uses
  %i.e = icmp eq ptr %.val, null
  br i1 %i.e, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsdcPuHeDsw6v_13project_model.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = ptrtoint ptr %.val to i64                ; 2 uses
  %i.g = and i64 %i.f, 3
  switch i64 %i.g, label %default.unreachable [
    i64 2, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdcPuHeDsw6v_13project_model.exit.i
    i64 3, label %bb.d
    i64 0, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdcPuHeDsw6v_13project_model.exit.i
    i64 1, label %bb.e
  ], !prof !8

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.h = icmp ult ptr %.val, inttoptr (i64 188978561024 to ptr)
  %i.i = and i64 %i.f, 1095216660480
  %i.j = icmp ne i64 %i.i, 1095216660480
  tail call void @llvm.assume(i1 %i.h)
  tail call void @llvm.assume(i1 %i.j)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdcPuHeDsw6v_13project_model.exit.i

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %.val, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !alias.scope !851
  store i8 3, ptr %i.a, align 8, !alias.scope !851
  invoke void @_RNvXsd_NtNtCshzWfHUSfYae_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdcPuHeDsw6v_13project_model.exit.i unwind label %bb.g

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdcPuHeDsw6v_13project_model.exit.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsdcPuHeDsw6v_13project_model.exit

bb.f:                                             ; preds = %bb.a, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsdcPuHeDsw6v_13project_model.exit
  ret i1 %.not

bb.g:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  store ptr %i.c, ptr %i.d, align 8
  resume { ptr, i32 } %i.m

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsdcPuHeDsw6v_13project_model.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdcPuHeDsw6v_13project_model.exit.i, %bb.b
  store ptr %i.c, ptr %i.d, align 8
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderENtB6_5Debug3fmtCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !align !11, !noundef !4
  %.val = load ptr, ptr %1, align 8               ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.d, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !857
  store ptr @112, ptr %i.b, align 8, !noalias !857, !captures !19
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 28, ptr %i.e, align 8, !noalias !857
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.f = phi i64 [ 28, %bb.a ], [ %i.j, %bb.c ]
  %i.g = tail call { i64, i64 } @_RNvNtNtCshzWfHUSfYae_4core5slice6memchr7memrchr(i8 noundef 58, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @112, i64 noundef %i.f), !noalias !858 ; 2 uses
  %i.h = extractvalue { i64, i64 } %i.g, 0
  %i.i = trunc nuw i64 %i.h to i1
  br i1 %i.i, label %bb.d, label %_RNvXsa_Csbq3eHDLgq0Z_8la_arenaINtB5_3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderENtNtCshzWfHUSfYae_4core3fmt5Debug3fmtCsdcPuHeDsw6v_13project_model.exit

bb.c:                                             ; preds = %bb.e, %bb.d
  %.not.i.i.i = icmp ugt i64 %i.j, 28
  br i1 %.not.i.i.i, label %_RNvXsa_Csbq3eHDLgq0Z_8la_arenaINtB5_3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderENtNtCshzWfHUSfYae_4core3fmt5Debug3fmtCsdcPuHeDsw6v_13project_model.exit, label %bb.b

bb.d:                                             ; preds = %bb.b
  %i.j = extractvalue { i64, i64 } %i.g, 1        ; 6 uses
  %or.cond16.i.i.i = icmp ugt i64 %i.j, 27
  br i1 %or.cond16.i.i.i, label %bb.c, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = shl nuw nsw i64 1, %i.j
  %i.l = and i64 %i.k, 49536
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %bb.c, label %.split.i.i

.split.i.i:                                       ; preds = %bb.e
  %i.m = sub nuw nsw i64 27, %i.j
  %2 = getelementptr inbounds nuw i8, ptr @112, i64 %i.j
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 1
  store ptr %i.n, ptr %i.b, align 8, !noalias !857, !captures !19
  store i64 %i.m, ptr %i.e, align 8, !noalias !857
  br label %_RNvXsa_Csbq3eHDLgq0Z_8la_arenaINtB5_3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderENtNtCshzWfHUSfYae_4core3fmt5Debug3fmtCsdcPuHeDsw6v_13project_model.exit

_RNvXsa_Csbq3eHDLgq0Z_8la_arenaINtB5_3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderENtNtCshzWfHUSfYae_4core3fmt5Debug3fmtCsdcPuHeDsw6v_13project_model.exit: ; preds = %bb.b, %bb.c, %.split.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !857
  store ptr %i.b, ptr %i.a, align 8, !noalias !857
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtReNtB6_7Display3fmtCsdcPuHeDsw6v_13project_model, ptr %.sroa.49.0..sroa_idx.i, align 8, !noalias !857
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.o, align 8, !noalias !857
  %.sroa.413.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs2_Csbq3eHDLgq0Z_8la_arenaNtB5_6RawIdxNtNtCshzWfHUSfYae_4core3fmt7Display3fmt, ptr %.sroa.413.0..sroa_idx.i, align 8, !noalias !857
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %i.p = call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val1, ptr noundef nonnull @113, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !857
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !857
  ret i1 %i.p
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
switch.lookup:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %.val = load i8, ptr %i.a, align 1, !range !859, !noundef !4 ; 2 uses
  %i.b = zext nneg i8 %.val to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCsdcPuHeDsw6v_13project_model, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %.val to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCsdcPuHeDsw6v_13project_model.106, i64 %i.c
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtRNtNtCsdcPuHeDsw6v_13project_model7sysroot19RustLibSrcWorkspaceNtB6_7Display3fmtBA_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !12, !noundef !4
  %i.b = tail call noundef zeroext i1 @_RNvXNtCsdcPuHeDsw6v_13project_model7sysrootNtB2_19RustLibSrcWorkspaceNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace10TargetDataEINtB5_14SlicePartialEqBC_E17equal_same_lengthB1a_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #7 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.01.06 = phi i64 [ %i.d, %.lr.ph ], [ 0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.06
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.sroa.01.06
  %.val = load i32, ptr %i.b, align 4, !noundef !4
  %.val5 = load i32, ptr %i.c, align 4, !noundef !4
  %.not = icmp eq i32 %.val, %.val5               ; 2 uses
  %i.d = add nuw i64 %.sroa.01.06, 1              ; 2 uses
  %exitcond.not = icmp ne i64 %i.d, %2
  %or.cond.not = select i1 %.not, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ %.not, %.lr.ph ]
  ret i1 %.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtNtCsdcPuHeDsw6v_13project_model7sysroot8stitched19RustLibSrcCrateDataEINtB5_14SlicePartialEqBC_E17equal_same_lengthB1c_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #7 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.01.06 = phi i64 [ %i.d, %.lr.ph ], [ 0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.06
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.sroa.01.06
  %.val = load i32, ptr %i.b, align 4, !noundef !4
  %.val5 = load i32, ptr %i.c, align 4, !noundef !4
  %.not = icmp eq i32 %.val, %.val5               ; 2 uses
  %i.d = add nuw i64 %.sroa.01.06, 1              ; 2 uses
  %exitcond.not = icmp ne i64 %i.d, %2
  %or.cond.not = select i1 %.not, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ %.not, %.lr.ph ]
  ret i1 %.lcssa
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs5_NtCsdcPuHeDsw6v_13project_model12project_jsonNtB5_11ProjectJsonNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(152) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(152) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [152 x i8], align 8               ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !range !7, !noundef !4
  %.not = icmp eq i64 %i.l, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_RNvXsb_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 -1, ptr %i.j, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !range !7, !noundef !4
  %.not1 = icmp eq i64 %i.n, -1
  br i1 %.not1, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvXsb_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.m)
          to label %bb.j unwind label %bb.i

bb.f:                                             ; preds = %bb.d
  store i64 -1, ptr %i.i, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.j, %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.p = load ptr, ptr %i.o, align 8, !align !12, !noundef !4 ; 2 uses
  %.not2 = icmp eq ptr %i.p, null
  br i1 %.not2, label %bb.m, label %bb.k

bb.h:                                             ; preds = %.body, %bb.i
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %.body ], [ %i.q, %bb.i ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs9R0CJ7nmiec_5paths10AbsPathBufEECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #26
          to label %bb.ad unwind label %bb.ac

bb.i:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.j:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.g

bb.k:                                             ; preds = %bb.g
  %i.r = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsbSS6DM8SDEO_5alloc5boxedINtB4_3BoxNtNtCsdcPuHeDsw6v_13project_model12project_json11ProjectJsonE13new_uninit_inBK_()
          to label %.noexc unwind label %bb.n, !inline_history !860 ; 3 uses

.noexc:                                           ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !866
  invoke fastcc void @_RNvXs5_NtCsdcPuHeDsw6v_13project_model12project_jsonNtB5_11ProjectJsonNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(152) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(152) %i.p) #32
          to label %_RNvXsd_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxNtNtCsdcPuHeDsw6v_13project_model12project_json11ProjectJsonENtNtCshzWfHUSfYae_4core5clone5Clone5cloneBL_.exit unwind label %bb.l, !inline_history !865

bb.l:                                             ; preds = %.noexc
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.r, i64 noundef 152, i64 noundef 8) #29, !noalias !867
  br label %.body

_RNvXsd_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxNtNtCsdcPuHeDsw6v_13project_model12project_json11ProjectJsonENtNtCshzWfHUSfYae_4core5clone5Clone5cloneBL_.exit: ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.r, ptr noundef nonnull align 8 dereferenceable(152) %i.a, i64 152, i1 false), !noalias !866
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !866
  br label %bb.m

bb.m:                                             ; preds = %_RNvXsd_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxNtNtCsdcPuHeDsw6v_13project_model12project_json11ProjectJsonENtNtCshzWfHUSfYae_4core5clone5Clone5cloneBL_.exit, %bb.g
  %storemerge = phi ptr [ null, %bb.g ], [ %i.r, %_RNvXsd_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxNtNtCsdcPuHeDsw6v_13project_model12project_json11ProjectJsonENtNtCshzWfHUSfYae_4core5clone5Clone5cloneBL_.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvXsb_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.q unwind label %bb.p

.body:                                            ; preds = %bb.n, %bb.l, %bb.o
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.o ], [ %i.t, %bb.n ], [ %i.s, %bb.l ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs9R0CJ7nmiec_5paths10AbsPathBufEECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #26
          to label %bb.h unwind label %bb.ac

bb.n:                                             ; preds = %bb.k
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.o:                                             ; preds = %bb.u, %bb.p
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.u ], [ %i.u, %bb.p ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxNtNtCsdcPuHeDsw6v_13project_model12project_json11ProjectJsonEEEB1A_(ptr %storemerge) #26
          to label %.body unwind label %bb.ac

bb.p:                                             ; preds = %bb.m
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.q:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !range !7, !noundef !4
  %.not3 = icmp eq i64 %i.w, -1
  br i1 %.not3, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvXsb_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.v)
          to label %bb.w unwind label %bb.v

bb.s:                                             ; preds = %bb.q
  store i64 -1, ptr %i.g, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.w, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke void @_RNvXsb_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsdcPuHeDsw6v_13project_model12project_json5CrateENtNtCshzWfHUSfYae_4core5clone5Clone5cloneBJ_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.x)
          to label %bb.z unwind label %bb.y

bb.u:                                             ; preds = %bb.x, %bb.v
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.x ], [ %i.y, %bb.v ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9R0CJ7nmiec_5paths10AbsPathBufECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #26
          to label %bb.o unwind label %bb.ac

bb.v:                                             ; preds = %bb.r
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.w:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.t

bb.x:                                             ; preds = %bb.aa, %bb.y
  %.pn = phi { ptr, i32 } [ %i.ab, %bb.aa ], [ %i.z, %bb.y ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsdcPuHeDsw6v_13project_model13manifest_path12ManifestPathEEB11_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #26
          to label %bb.u unwind label %bb.ac

bb.y:                                             ; preds = %bb.t
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.z:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 48
  invoke void @_RNvXsb_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsdcPuHeDsw6v_13project_model12project_json8RunnableENtNtCshzWfHUSfYae_4core5clone5Clone5cloneBJ_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aa)
          to label %bb.ab unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsdcPuHeDsw6v_13project_model12project_json5CrateEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #26
          to label %bb.x unwind label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %storemerge, ptr %i.ae, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void

bb.ac:                                            ; preds = %bb.o, %bb.aa, %bb.x, %bb.u, %.body, %bb.h
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.ad:                                            ; preds = %bb.h
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt5Write10write_char(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !870, !noundef !4 ; 4 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i32 %1, 128
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %1, 2048           ; 2 uses
  %i.f = icmp samesign ult i32 %1, 65536          ; 2 uses
  %..i = select i1 %i.f, i64 3, i64 4
  %.sroa.0.0.ph.i = select i1 %i.e, i64 2, i64 %..i
  tail call void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.sroa.0.0.ph.i)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !870, !nonnull !4, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.b ; 9 uses
  %i.j = trunc i32 %1 to i8
  %i.k = and i8 %i.j, 63
  %i.l = or disjoint i8 %i.k, -128                ; 3 uses
  %i.m = lshr i32 %1, 6
  %i.n = trunc i32 %i.m to i8                     ; 2 uses
  %i.o = and i8 %i.n, 63
  %i.p = or disjoint i8 %i.o, -128                ; 2 uses
  %i.q = lshr i32 %1, 12
  %i.r = trunc i32 %i.q to i8                     ; 2 uses
  %i.s = and i8 %i.r, 63
  %i.t = or disjoint i8 %i.s, -128
  %i.u = lshr i32 %1, 18
  %i.v = trunc nuw nsw i32 %i.u to i8
  %i.w = or disjoint i8 %i.v, -16
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !870, !nonnull !4, !noundef !4
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.b
  %i.aa = trunc nuw nsw i32 %1 to i8
  store i8 %i.aa, ptr %i.z, align 1
  br label %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push.exit

bb.d:                                             ; preds = %bb.b
  %i.ab = or disjoint i8 %i.n, -64
  store i8 %i.ab, ptr %i.i, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.l, ptr %i.ac, align 1
  br label %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push.exit

bb.e:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = or disjoint i8 %i.r, -32
  store i8 %i.ad, ptr %i.i, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.p, ptr %i.ae, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.l, ptr %i.af, align 1
  br label %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.w, ptr %i.i, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.t, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.p, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  store i8 %i.l, ptr %i.ai, align 1
  br label %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push.exit

_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.03.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  %i.aj = add nuw i64 %.sroa.0.03.i, %i.b
  store i64 %i.aj, ptr %i.a, align 8, !alias.scope !870
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt5Write9write_str(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #5 {
bb.a:
  tail call void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2), !noalias !876
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !877, !noundef !4 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String8push_str.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !877, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %.pre.i.i = load i64, ptr %i.a, align 8, !alias.scope !877
  br label %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String8push_str.exit

_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String8push_str.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %.pre.i.i, %bb.b ], [ %i.b, %bb.a ]
  %i.h = add i64 %i.g, %2
  store i64 %i.h, ptr %i.a, align 8, !alias.scope !877
  ret i1 false
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs_NtCsaMQbKjKCVRW_12tracing_core8callsiteNtB4_15DefaultCallsiteNtB4_8Callsite8metadata(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !12, !noundef !4
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace11PackageDataEEENtNtNtB8_6traits8iterator8Iterator9size_hintB1Z_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #2 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 2                   ; 2 uses
  store i64 %i.e, ptr %0, align 8, !alias.scope !880
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !880
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8, !alias.scope !880
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsq_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCshzWfHUSfYae_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXst_Cs9R0CJ7nmiec_5pathsNtB5_10AbsPathBufNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @121, i64 noundef 10, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @120)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, 329406144173384851) i64 @_RNvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterINtNtB9_6option6OptionTTjNtCsixqsALXRULh_14cargo_metadata9PackageIdEB17_EEENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = udiv exact i64 %i.d, 56
  ret i64 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, 329406144173384851) i64 @_RNvYINtNtNtCshzWfHUSfYae_4core5slice4iter7IterMutINtNtNtB9_3mem12maybe_uninit11MaybeUninitINtNtB9_6option6OptionTTjNtCsixqsALXRULh_14cargo_metadata9PackageIdEB1P_EEEENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = udiv exact i64 %i.d, 56
  ret i64 %i.e
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYINtNvNtNtCshzWfHUSfYae_4core2io5write17default_write_fmt7AdapterNtNtNtNtCscAsMj0W7j8b_3std3sys5stdio4unix6StderrENtNtBb_3fmt5Write10write_charCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 0, ptr %i.b, align 4
  %i.c = icmp samesign ult i32 %1, 128
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp samesign ult i32 %1, 2048
  %i.e = trunc i32 %1 to i8
  %i.f = and i8 %i.e, 63
  %i.g = or disjoint i8 %i.f, -128                ; 3 uses
  %i.h = lshr i32 %1, 6
  %i.i = trunc i32 %i.h to i8                     ; 2 uses
  %i.j = and i8 %i.i, 63
  %i.k = or disjoint i8 %i.j, -128                ; 2 uses
  %i.l = lshr i32 %1, 12
  %i.m = trunc i32 %i.l to i8                     ; 2 uses
  %i.n = and i8 %i.m, 63
  %i.o = or disjoint i8 %i.n, -128
  %i.p = lshr i32 %1, 18
  %i.q = trunc nuw nsw i32 %i.p to i8
  %i.r = or disjoint i8 %i.q, -16
  br i1 %i.d, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.s = trunc nuw nsw i32 %1 to i8
  store i8 %i.s, ptr %i.b, align 4, !alias.scope !888
  br label %_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw.exit

bb.d:                                             ; preds = %bb.b
  %i.t = or disjoint i8 %i.i, -64
  store i8 %i.t, ptr %i.b, align 4, !alias.scope !888
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.g, ptr %i.u, align 1, !alias.scope !888
  br label %_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw.exit

bb.e:                                             ; preds = %bb.b
  %i.v = icmp samesign ult i32 %1, 65536
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = or disjoint i8 %i.m, -32
  store i8 %i.w, ptr %i.b, align 4, !alias.scope !888
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.k, ptr %i.x, align 1, !alias.scope !888
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %i.g, ptr %i.y, align 2, !alias.scope !888
  br label %_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.r, ptr %i.b, align 4, !alias.scope !888
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.o, ptr %i.z, align 1, !alias.scope !888
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %i.k, ptr %i.aa, align 2, !alias.scope !888
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  store i8 %i.g, ptr %i.ab, align 1, !alias.scope !888
  br label %_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw.exit

_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.05.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !889)
  %i.ac = load ptr, ptr %0, align 8, !alias.scope !889, !nonnull !4, !noundef !4
  %i.ad = call noundef ptr @_RNvYNtNtNtNtCscAsMj0W7j8b_3std3sys5stdio4unix6StderrNtNtNtCshzWfHUSfYae_4core2io5write5Write9write_allCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull %i.ac, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %.sroa.0.05.i), !noalias !889 ; 3 uses
  %.not.i = icmp ne ptr %i.ad, null               ; 2 uses
  br i1 %.not.i, label %bb.h, label %_RNvXNvNtNtCshzWfHUSfYae_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtNtCscAsMj0W7j8b_3std3sys5stdio4unix6StderrENtNtB8_3fmt5Write9write_strCsdcPuHeDsw6v_13project_model.exit

bb.h:                                             ; preds = %_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.val.i = load ptr, ptr %i.ae, align 8, !alias.scope !889, !noundef !4 ; 4 uses
  %i.af = icmp eq ptr %.val.i, null
  br i1 %i.af, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsdcPuHeDsw6v_13project_model.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !890
  %i.ag = ptrtoint ptr %.val.i to i64             ; 2 uses
  %i.ah = and i64 %i.ag, 3
  switch i64 %i.ah, label %default.unreachable [
    i64 2, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdcPuHeDsw6v_13project_model.exit.i.i
    i64 3, label %bb.j
    i64 0, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdcPuHeDsw6v_13project_model.exit.i.i
    i64 1, label %bb.k
  ], !prof !8

default.unreachable:                              ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.ai = icmp ult ptr %.val.i, inttoptr (i64 188978561024 to ptr)
  %i.aj = and i64 %i.ag, 1095216660480
  %i.ak = icmp ne i64 %i.aj, 1095216660480
  call void @llvm.assume(i1 %i.ai)
  call void @llvm.assume(i1 %i.ak)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdcPuHeDsw6v_13project_model.exit.i.i

bb.k:                                             ; preds = %bb.i
  %i.al = getelementptr i8, ptr %.val.i, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.al) ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.al, ptr %i.am, align 8, !alias.scope !891, !noalias !890
  store i8 3, ptr %i.a, align 8, !alias.scope !891, !noalias !890
  invoke void @_RNvXsd_NtNtCshzWfHUSfYae_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.am)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdcPuHeDsw6v_13project_model.exit.i.i unwind label %bb.l, !noalias !889

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdcPuHeDsw6v_13project_model.exit.i.i: ; preds = %bb.k, %bb.j, %bb.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !890
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsdcPuHeDsw6v_13project_model.exit.i

bb.l:                                             ; preds = %bb.k
  %i.an = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ad, ptr %i.ae, align 8, !alias.scope !889
  resume { ptr, i32 } %i.an

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsdcPuHeDsw6v_13project_model.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdcPuHeDsw6v_13project_model.exit.i.i, %bb.h
  store ptr %i.ad, ptr %i.ae, align 8, !alias.scope !889
  br label %_RNvXNvNtNtCshzWfHUSfYae_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtNtCscAsMj0W7j8b_3std3sys5stdio4unix6StderrENtNtB8_3fmt5Write9write_strCsdcPuHeDsw6v_13project_model.exit

_RNvXNvNtNtCshzWfHUSfYae_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtNtCscAsMj0W7j8b_3std3sys5stdio4unix6StderrENtNtB8_3fmt5Write9write_strCsdcPuHeDsw6v_13project_model.exit: ; preds = %_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw.exit, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsdcPuHeDsw6v_13project_model.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %.not.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYINtNvNtNtCshzWfHUSfYae_4core2io5write17default_write_fmt7AdapterNtNtNtNtCscAsMj0W7j8b_3std3sys5stdio4unix6StderrENtNtBb_3fmt5Write9write_fmtCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #1 personality ptr @rust_eh_personality {
_RNvXs_NvNtNtCshzWfHUSfYae_4core3fmt5Write9write_fmtQINtNvNtNtBa_2io5write17default_write_fmt7AdapterNtNtNtNtCscAsMj0W7j8b_3std3sys5stdio4unix6StderrENtB4_12SpecWriteFmt14spec_write_fmtCsdcPuHeDsw6v_13project_model.exit:
  %i.a = tail call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @12, ptr noundef nonnull %1, ptr noundef nonnull %2), !inline_history !892
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef ptr @_RNvYNCNKNvNvMNtNtCscAsMj0W7j8b_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef align 8 dereferenceable_or_null(24) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCscAsMj0W7j8b_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i8, ptr %i.b, align 8, !range !6, !noalias !897, !noundef !4
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_RNCNKNvNvMNtNtCscAsMj0W7j8b_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CsdcPuHeDsw6v_13project_model.exit, label %bb.b, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @_RINvMs0_NtNtNtNtCscAsMj0W7j8b_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCshzWfHUSfYae_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsdcPuHeDsw6v_13project_model(ptr noundef nonnull align 8 %i.a, ptr noalias nofree noundef align 8 dereferenceable_or_null(24) %0)
  br label %_RNCNKNvNvMNtNtCscAsMj0W7j8b_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CsdcPuHeDsw6v_13project_model.exit

_RNCNKNvNvMNtNtCscAsMj0W7j8b_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CsdcPuHeDsw6v_13project_model.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi ptr [ %i.e, %bb.b ], [ %i.a, %bb.a ]
  ret ptr %.sroa.0.0.i.i
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCsaMQbKjKCVRW_12tracing_core8callsite15DefaultCallsiteNtB4_8Callsite15private_type_idCsdcPuHeDsw6v_13project_model(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #9 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @123, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #11

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsh_Cs9R0CJ7nmiec_5pathsNtB6_7AbsPath4joinReECsdcPuHeDsw6v_13project_model(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nonlazybind uwtable
declare void @_RNvCslqCZk5GUYvi_9toolchain16probe_for_binary(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvCslqCZk5GUYvi_9toolchain7commandNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherNtCs9p4rgIae0RV_6camino11Utf8PathBufRNtCs9R0CJ7nmiec_5paths7AbsPathECsdcPuHeDsw6v_13project_model(ptr dead_on_unwind noalias nofree noundef writable sret([200 x i8]) align 8 captures(none) dereferenceable(200), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMCslqCZk5GUYvi_9toolchainNtB2_4Tool12prefer_proxy(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), i8 noundef range(i8 0, 4)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsbSS6DM8SDEO_5alloc6string6StringINtNtCshzWfHUSfYae_4core6option6OptionBO_ENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12contains_keyeECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCscAsMj0W7j8b_3std3env6var_osReECsdcPuHeDsw6v_13project_model(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3envReRNtNtB8_4path4PathECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef align 8 dereferenceable(200), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMCslqCZk5GUYvi_9toolchainNtB2_4Tool4path(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), i8 noundef range(i8 0, 4)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvCslqCZk5GUYvi_9toolchain7commandNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherNtCs9p4rgIae0RV_6camino11Utf8PathBufRNtNtCscAsMj0W7j8b_3std4path4PathECsdcPuHeDsw6v_13project_model(ptr dead_on_unwind noalias nofree noundef writable sret([200 x i8]) align 8 captures(none) dereferenceable(200), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsq_NtCsgIpRO4v45SJ_7base_db5inputRNtB5_3EnvNtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12IntoIterator9into_iter(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs1c_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB7_7HashMapNtNtCsbSS6DM8SDEO_5alloc6string6StringINtNtCshzWfHUSfYae_4core6option6OptionB15_ENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtNtNtB1M_4iter6traits7collect12FromIteratorTB15_B1H_EE9from_iterINtNtNtB3d_8adapters3map3MapINtB7_4IterB15_B15_ENCINvMs0_NtCsdcPuHeDsw6v_13project_model7sysrootNtB57_7Sysroot9tool_pathRNtCs9R0CJ7nmiec_5paths7AbsPathE0EEB59_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMso_NtCsgIpRO4v45SJ_7base_db5inputNtB5_3Env12contains_key(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef align 8 dereferenceable(200), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsJ_Cs9p4rgIae0RV_6caminoNtB5_11Utf8PathBufINtNtCshzWfHUSfYae_4core7convert4FromReE4fromCsdcPuHeDsw6v_13project_model(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef ptr @_RINvMs0_NtNtNtNtCscAsMj0W7j8b_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCshzWfHUSfYae_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsdcPuHeDsw6v_13project_model(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable_or_null(24)) unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs16_NtCscAsMj0W7j8b_3std4pathNtB7_4Path4joinRBw_ECsdcPuHeDsw6v_13project_model(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtCs3gqD4ldeioo_8indexmap6BucketNtNtB7_6string6StringNtNtCs8yjYO7b73r2_10serde_json5value5ValueEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtNtCsdcPuHeDsw6v_13project_model7sysroot8stitched19RustLibSrcCrateDataEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB1f_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDINtNtNtCshzWfHUSfYae_4core3ops8function5FnMutuEp6OutputINtNtB15_6result6ResultuNtNtNtB15_2io5error5ErrorENtNtB15_6marker4SyncNtB2H_4SendEL_EENtNtB13_4drop4Drop4dropCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCsixqsALXRULh_14cargo_metadata4NodeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCsixqsALXRULh_14cargo_metadata6TargetENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCsixqsALXRULh_14cargo_metadata7PackageENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCsixqsALXRULh_14cargo_metadata9PackageIdENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCs8yjYO7b73r2_10serde_json5value5ValueENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsdcPuHeDsw6v_13project_model12project_json5CrateENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsdcPuHeDsw6v_13project_model12project_json8RunnableENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace10TargetDataENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace11PackageDataENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsixqsALXRULh_14cargo_metadata10dependency10DependencyENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtCsdcPuHeDsw6v_13project_model7sysroot8stitched19RustLibSrcCrateDataENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecPaENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtCs3gqD4ldeioo_8indexmap6BucketNtNtB7_6string6StringNtNtCs8yjYO7b73r2_10serde_json5value5ValueEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtNtCsdcPuHeDsw6v_13project_model7sysroot8stitched19RustLibSrcCrateDataEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB1m_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxDINtNtNtCshzWfHUSfYae_4core3ops8function5FnMutuEp6OutputINtNtB1c_6result6ResultuNtNtNtB1c_2io5error5ErrorENtNtB1c_6marker4SyncNtB2O_4SendEL_EENtNtB1a_4drop4Drop4dropCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCsixqsALXRULh_14cargo_metadata4NodeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCsixqsALXRULh_14cargo_metadata6TargetENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCsixqsALXRULh_14cargo_metadata7PackageENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCsixqsALXRULh_14cargo_metadata9PackageIdENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCs8yjYO7b73r2_10serde_json5value5ValueENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCsdcPuHeDsw6v_13project_model12project_json5CrateENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCsdcPuHeDsw6v_13project_model12project_json8RunnableENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace10TargetDataENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace11PackageDataENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCsixqsALXRULh_14cargo_metadata10dependency10DependencyENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtCsdcPuHeDsw6v_13project_model7sysroot8stitched19RustLibSrcCrateDataENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecPaENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtCsbSS6DM8SDEO_5alloc6string6StringBP_EENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtCsbSS6DM8SDEO_5alloc6string6StringINtNtCshzWfHUSfYae_4core6option6OptionBP_EEENtNtNtB1w_3ops4drop4Drop4dropCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8yjYO7b73r2_10serde_json5value5ValueENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterjENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringINtNtB8_3vec3VecB14_EENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringINtNtCshzWfHUSfYae_4core6option6OptionB14_EENtNtNtB1R_3ops4drop4Drop4dropCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs4_NtCsdRkQxkTxnTp_6anyhow5errorNtB7_5ErrorNtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtCsfxDLtZq386g_6semver10identifierNtB5_10IdentifierNtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsd_NtNtCshzWfHUSfYae_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1
end_hunk_2
begin_hunk_3_@llvm.umax.i64
!657 = !{!481}
!658 = !{!480, !481, !478, !477, !476, !475, !473, !474}
!659 = !{!481, !473}
!660 = !{!480, !478}
!661 = !{!483}
!662 = !{!483, !481, !473}
!663 = !{!484, !483, !480, !481, !478, !477, !476, !475, !473, !474}
!664 = !{!484, !480, !478}
!665 = !{!481, !478, !477, !476, !475, !473, !474}
!666 = !{!478}
!667 = !{!486}
!668 = !{!488}
!669 = !{!490}
!670 = !{!492}
!671 = !{!492, !490, !488}
!672 = !{!494, !478}
!673 = !{!497, !492, !496, !490, !495, !488, !494, !478, !477, !476, !475, !473, !474}
!674 = !{!499}
!675 = !{!497, !496, !495, !494, !478, !477, !476, !475, !473, !474}
!676 = !{!497, !496, !495, !494, !478}
!677 = !{!501}
!678 = !{!503}
!679 = !{!505}
!680 = !{!507}
!681 = !{!509}
!682 = !{!511}
!683 = !{!513, !511}
!684 = !{!515, !511}
!685 = !{!515}
!686 = !{!515, !511, !478}
!687 = !{!511, !516, !478, !477, !476, !475, !473, !474}
!688 = !{!511, !478}
!689 = !{!520, !518}
!690 = !{!522, !518}
!691 = !{!524, !518}
!692 = !{!526, !518}
!693 = !{!528, !518}
!694 = !{!530, !518}
!695 = !{!532, !518}
!696 = !{!534, !518}
!697 = !{!536, !518}
!698 = !{!538, !518}
!699 = !{!540, !518}
!700 = !{!542, !518}
!701 = !{!544, !478, !477, !476, !475, !473, !474}
!702 = !{!544, !478}
!703 = !{!477, !476, !475, !473, !474}
!704 = !{!546}
!705 = !{!548}
!706 = !{!553, !552, !550}
!707 = !{!555}
!708 = !{!557}
!709 = !{!562, !561, !559}
!710 = !{!564}
!711 = !{!566}
!712 = !{!568}
!713 = !{!573, !572, !570}
!714 = !{!575}
!715 = !{!577}
!716 = !{!579}
!717 = !{!584, !583, !581}
!718 = !{!586}
!719 = !{!588}
!720 = !{!590}
!721 = !{!598, !597, !595, !594, !592, !590, !591}
!722 = !{!595, !594, !592, !590, !591}
!723 = !{!601, !600, !598, !597, !595, !594, !592, !590, !591}
!724 = !{!605, !604, !603, !601, !600, !598, !597, !595, !594, !592, !590, !591}
!725 = !{!605, !604, !601, !598, !597, !595, !594, !592, !590, !591}
!726 = !{!605, !601, !598, !597, !595, !594, !592, !590, !591}
!727 = !{!604, !603, !601, !600, !598, !597, !595, !594, !592, !590, !591}
!728 = !{!608, !607, !598, !597, !595, !594, !592, !590, !591}
!729 = !{!611, !610, !608, !607, !598, !597, !595, !594, !592, !590, !591}
!730 = !{!610, !608, !607, !598, !597, !595, !594, !592, !590, !591}
!731 = !{!613}
!732 = !{!614}
!733 = !{!616, !613, !614, !608, !607, !598, !597, !595, !594, !592, !590, !591}
!734 = !{!613, !608, !607, !598, !597, !595, !594, !592, !590, !591}
!735 = !{!618}
!736 = !{!613, !614}
!737 = !{!607, !597, !594, !592, !590, !591}
!738 = !{!620}
!739 = !{!621}
!740 = !{!616, !620, !621, !608, !607, !598, !597, !595, !594, !592, !590, !591}
!741 = !{!620, !608, !607, !598, !597, !595, !594, !592, !590, !591}
!742 = !{!620, !621}
!743 = !{!633, !631, !629, !627, !625, !623}
!744 = !{!645, !643, !641, !639, !637, !635}
!745 = !{!647}
!746 = !{!648}
!747 = distinct !{!747, i1 true, !"_RNvMs_NtCsdcPuHeDsw6v_13project_model7sysrootNtB4_7Sysroot4root"}
!748 = distinct !{!748, !747, !"_RNvMs_NtCsdcPuHeDsw6v_13project_model7sysrootNtB4_7Sysroot4root: argument 0"}
!749 = distinct !{!749, i1 true, !"_RNvNtCsdcPuHeDsw6v_13project_model7sysroot13get_rustc_src"}
!750 = distinct !{!750, !749, !"_RNvNtCsdcPuHeDsw6v_13project_model7sysroot13get_rustc_src: argument 0"}
!751 = distinct !{!751, !749, !"_RNvNtCsdcPuHeDsw6v_13project_model7sysroot13get_rustc_src: argument 1"}
!752 = distinct !{!752, i1 true, !"_RINvNtNtNtCshzWfHUSfYae_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsdcPuHeDsw6v_13project_model"}
!753 = distinct !{!753, !752, !"_RINvNtNtNtCshzWfHUSfYae_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsdcPuHeDsw6v_13project_model: argument 0"}
!754 = !{!748}
!755 = !{!750}
!756 = !{!750, !751}
!757 = !{!753}
!758 = !{!751}
!759 = distinct !{!759, i1 true, !"_RNvMs_NtCsdcPuHeDsw6v_13project_model7sysrootNtB4_7Sysroot4root"}
!760 = distinct !{!760, !759, !"_RNvMs_NtCsdcPuHeDsw6v_13project_model7sysrootNtB4_7Sysroot4root: argument 0"}
!761 = distinct !{!761, i1 true, !"_RINvXs_NtNtCshzWfHUSfYae_4core3ops11index_rangeNtB5_10IndexRangeNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvMs8_NtNtNtB9_5array4iter10iter_innerINtB1Y_15PolymorphicIterSINtNtNtB9_3mem12maybe_uninit11MaybeUninitReEE8try_folduNCINvNtNtB16_8adapters3map12map_try_foldB3y_NtCs9R0CJ7nmiec_5paths10AbsPathBufuINtNtB7_12control_flow11ControlFlowNtCs9p4rgIae0RV_6camino11Utf8PathBufENCNvMs0_NtCsdcPuHeDsw6v_13project_model7sysrootNtB6l_7Sysroot23discover_proc_macro_srv0NCINvNvB10_8find_map5checkB4u_B5C_NCB6f_s_0E0E0B53_E0B53_EB6n_"}
!762 = distinct !{!762, !761, !"_RINvXs_NtNtCshzWfHUSfYae_4core3ops11index_rangeNtB5_10IndexRangeNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvMs8_NtNtNtB9_5array4iter10iter_innerINtB1Y_15PolymorphicIterSINtNtNtB9_3mem12maybe_uninit11MaybeUninitReEE8try_folduNCINvNtNtB16_8adapters3map12map_try_foldB3y_NtCs9R0CJ7nmiec_5paths10AbsPathBufuINtNtB7_12control_flow11ControlFlowNtCs9p4rgIae0RV_6camino11Utf8PathBufENCNvMs0_NtCsdcPuHeDsw6v_13project_model7sysrootNtB6l_7Sysroot23discover_proc_macro_srv0NCINvNvB10_8find_map5checkB4u_B5C_NCB6f_s_0E0E0B53_E0B53_EB6n_: argument 2"}
!763 = distinct !{!763, !761, !"_RINvXs_NtNtCshzWfHUSfYae_4core3ops11index_rangeNtB5_10IndexRangeNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvMs8_NtNtNtB9_5array4iter10iter_innerINtB1Y_15PolymorphicIterSINtNtNtB9_3mem12maybe_uninit11MaybeUninitReEE8try_folduNCINvNtNtB16_8adapters3map12map_try_foldB3y_NtCs9R0CJ7nmiec_5paths10AbsPathBufuINtNtB7_12control_flow11ControlFlowNtCs9p4rgIae0RV_6camino11Utf8PathBufENCNvMs0_NtCsdcPuHeDsw6v_13project_model7sysrootNtB6l_7Sysroot23discover_proc_macro_srv0NCINvNvB10_8find_map5checkB4u_B5C_NCB6f_s_0E0E0B53_E0B53_EB6n_: argument 1"}
!764 = distinct !{!764, !761, !"_RINvXs_NtNtCshzWfHUSfYae_4core3ops11index_rangeNtB5_10IndexRangeNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvMs8_NtNtNtB9_5array4iter10iter_innerINtB1Y_15PolymorphicIterSINtNtNtB9_3mem12maybe_uninit11MaybeUninitReEE8try_folduNCINvNtNtB16_8adapters3map12map_try_foldB3y_NtCs9R0CJ7nmiec_5paths10AbsPathBufuINtNtB7_12control_flow11ControlFlowNtCs9p4rgIae0RV_6camino11Utf8PathBufENCNvMs0_NtCsdcPuHeDsw6v_13project_model7sysrootNtB6l_7Sysroot23discover_proc_macro_srv0NCINvNvB10_8find_map5checkB4u_B5C_NCB6f_s_0E0E0B53_E0B53_EB6n_: argument 0"}
!765 = distinct !{!765, i1 true, !"_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitReEE8try_folduNCINvNtNtNtBe_4iter8adapters3map12map_try_foldB1X_NtCs9R0CJ7nmiec_5paths10AbsPathBufuINtNtNtBe_3ops12control_flow11ControlFlowNtCs9p4rgIae0RV_6camino11Utf8PathBufENCNvMs0_NtCsdcPuHeDsw6v_13project_model7sysrootNtB4W_7Sysroot23discover_proc_macro_srv0NCINvNvNtNtNtB2k_6traits8iterator8Iterator8find_map5checkB2Z_B4d_NCB4Q_s_0E0E0B3y_E0B4Y_"}
!766 = distinct !{!766, !765, !"_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitReEE8try_folduNCINvNtNtNtBe_4iter8adapters3map12map_try_foldB1X_NtCs9R0CJ7nmiec_5paths10AbsPathBufuINtNtNtBe_3ops12control_flow11ControlFlowNtCs9p4rgIae0RV_6camino11Utf8PathBufENCNvMs0_NtCsdcPuHeDsw6v_13project_model7sysrootNtB4W_7Sysroot23discover_proc_macro_srv0NCINvNvNtNtNtB2k_6traits8iterator8Iterator8find_map5checkB2Z_B4d_NCB4Q_s_0E0E0B3y_E0B4Y_: argument 1"}
!767 = distinct !{!767, !765, !"_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitReEE8try_folduNCINvNtNtNtBe_4iter8adapters3map12map_try_foldB1X_NtCs9R0CJ7nmiec_5paths10AbsPathBufuINtNtNtBe_3ops12control_flow11ControlFlowNtCs9p4rgIae0RV_6camino11Utf8PathBufENCNvMs0_NtCsdcPuHeDsw6v_13project_model7sysrootNtB4W_7Sysroot23discover_proc_macro_srv0NCINvNvNtNtNtB2k_6traits8iterator8Iterator8find_map5checkB2Z_B4d_NCB4Q_s_0E0E0B3y_E0B4Y_: argument 0"}
!768 = distinct !{!768, i1 true, !"_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldReNtCs9R0CJ7nmiec_5paths10AbsPathBufuINtNtNtBa_3ops12control_flow11ControlFlowNtCs9p4rgIae0RV_6camino11Utf8PathBufENCNvMs0_NtCsdcPuHeDsw6v_13project_model7sysrootNtB2Y_7Sysroot23discover_proc_macro_srv0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB11_B2f_NCB2S_s_0E0E0B30_"}
!769 = distinct !{!769, !768, !"_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldReNtCs9R0CJ7nmiec_5paths10AbsPathBufuINtNtNtBa_3ops12control_flow11ControlFlowNtCs9p4rgIae0RV_6camino11Utf8PathBufENCNvMs0_NtCsdcPuHeDsw6v_13project_model7sysrootNtB2Y_7Sysroot23discover_proc_macro_srv0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB11_B2f_NCB2S_s_0E0E0B30_: argument 1"}
!770 = distinct !{!770, !768, !"_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldReNtCs9R0CJ7nmiec_5paths10AbsPathBufuINtNtNtBa_3ops12control_flow11ControlFlowNtCs9p4rgIae0RV_6camino11Utf8PathBufENCNvMs0_NtCsdcPuHeDsw6v_13project_model7sysrootNtB2Y_7Sysroot23discover_proc_macro_srv0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB11_B2f_NCB2S_s_0E0E0B30_: argument 0"}
!771 = distinct !{!771, i1 true, !"_RNCNvMs0_NtCsdcPuHeDsw6v_13project_model7sysrootNtB7_7Sysroot23discover_proc_macro_srv0B9_"}
!772 = distinct !{!772, !771, !"_RNCNvMs0_NtCsdcPuHeDsw6v_13project_model7sysrootNtB7_7Sysroot23discover_proc_macro_srv0B9_: argument 1"}
!773 = distinct !{!773, !771, !"_RNCNvMs0_NtCsdcPuHeDsw6v_13project_model7sysrootNtB7_7Sysroot23discover_proc_macro_srv0B9_: argument 0"}
!774 = distinct !{!774, i1 true, !"_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkNtCs9R0CJ7nmiec_5paths10AbsPathBufNtCs9p4rgIae0RV_6camino11Utf8PathBufNCNvMs0_NtCsdcPuHeDsw6v_13project_model7sysrootNtB2w_7Sysroot23discover_proc_macro_srvs_0E0B2y_"}
!775 = distinct !{!775, !774, !"_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkNtCs9R0CJ7nmiec_5paths10AbsPathBufNtCs9p4rgIae0RV_6camino11Utf8PathBufNCNvMs0_NtCsdcPuHeDsw6v_13project_model7sysrootNtB2w_7Sysroot23discover_proc_macro_srvs_0E0B2y_: argument 1"}
!776 = distinct !{!776, !774, !"_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkNtCs9R0CJ7nmiec_5paths10AbsPathBufNtCs9p4rgIae0RV_6camino11Utf8PathBufNCNvMs0_NtCsdcPuHeDsw6v_13project_model7sysrootNtB2w_7Sysroot23discover_proc_macro_srvs_0E0B2y_: argument 0"}
!777 = !{!760}
!778 = !{!773, !772, !770, !769, !767, !766, !764, !763, !762}
!779 = !{!773, !770, !767, !766, !764, !763, !762}
!780 = !{!772, !770, !769, !767, !766, !764, !763, !762}
!781 = !{!776, !775, !770, !769, !767, !766, !764, !763, !762}
!782 = !{!770, !769, !767, !766, !764, !763, !762}
!783 = distinct !{!783, i1 true, !"_RNvNtCsdcPuHeDsw6v_13project_model7sysroot42discover_rust_lib_src_dir_or_add_component"}
!784 = distinct !{!784, !783, !"_RNvNtCsdcPuHeDsw6v_13project_model7sysroot42discover_rust_lib_src_dir_or_add_component: argument 3"}
!785 = distinct !{!785, !783, !"_RNvNtCsdcPuHeDsw6v_13project_model7sysroot42discover_rust_lib_src_dir_or_add_component: argument 2"}
!786 = distinct !{!786, !783, !"_RNvNtCsdcPuHeDsw6v_13project_model7sysroot42discover_rust_lib_src_dir_or_add_component: argument 1"}
!787 = distinct !{!787, !783, !"_RNvNtCsdcPuHeDsw6v_13project_model7sysroot42discover_rust_lib_src_dir_or_add_component: argument 0"}
!788 = distinct !{!788, i1 true, !"_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCs9R0CJ7nmiec_5paths10AbsPathBufE7or_elseNCNvNtCsdcPuHeDsw6v_13project_model7sysroot42discover_rust_lib_src_dir_or_add_component0EB1v_"}
!789 = distinct !{!789, !788, !"_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCs9R0CJ7nmiec_5paths10AbsPathBufE7or_elseNCNvNtCsdcPuHeDsw6v_13project_model7sysroot42discover_rust_lib_src_dir_or_add_component0EB1v_: argument 0"}
!790 = distinct !{!790, !788, !"_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCs9R0CJ7nmiec_5paths10AbsPathBufE7or_elseNCNvNtCsdcPuHeDsw6v_13project_model7sysroot42discover_rust_lib_src_dir_or_add_component0EB1v_: argument 1"}
!791 = distinct !{!791, i1 true, !"_RNCNvNtCsdcPuHeDsw6v_13project_model7sysroot42discover_rust_lib_src_dir_or_add_component0B5_"}
!792 = distinct !{!792, !791, !"_RNCNvNtCsdcPuHeDsw6v_13project_model7sysroot42discover_rust_lib_src_dir_or_add_component0B5_: argument 0"}
!793 = distinct !{!793, !788, !"_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCs9R0CJ7nmiec_5paths10AbsPathBufE7or_elseNCNvNtCsdcPuHeDsw6v_13project_model7sysroot42discover_rust_lib_src_dir_or_add_component0EB1v_: argument 2"}
!794 = distinct !{!794, !791, !"_RNCNvNtCsdcPuHeDsw6v_13project_model7sysroot42discover_rust_lib_src_dir_or_add_component0B5_: argument 1"}
!795 = distinct !{!795, i1 true, !"_RNCNvNtCsdcPuHeDsw6v_13project_model7sysroot42discover_rust_lib_src_dir_or_add_components_0B5_"}
!796 = distinct !{!796, !795, !"_RNCNvNtCsdcPuHeDsw6v_13project_model7sysroot42discover_rust_lib_src_dir_or_add_components_0B5_: argument 0"}
!797 = !{!787, !786, !785, !784}
!798 = !{!789}
!799 = !{!790}
!800 = !{!789, !790}
!801 = !{!792}
!802 = !{!792, !794, !789, !790, !793, !787, !786, !785, !784}
!803 = !{!789, !790, !793, !787}
!804 = !{!792, !794, !789, !790, !793, !787}
!805 = !{!792, !789}
!806 = !{!794, !790, !793, !787}
!807 = !{!789, !793, !787}
!808 = !{!786, !785, !784}
!809 = !{!796, !787, !786, !785, !784}
!810 = distinct !{!810, i1 true, !"_RNvXs0_NtNtCshzWfHUSfYae_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher15next_match_back"}
!811 = distinct !{!811, !810, !"_RNvXs0_NtNtCshzWfHUSfYae_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher15next_match_back: argument 1"}
!812 = distinct !{!812, !810, !"_RNvXs0_NtNtCshzWfHUSfYae_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher15next_match_back: argument 0"}
!813 = !{!811}
!814 = !{!812, !811}
!815 = !{!812}
!816 = distinct !{!816, i1 true, !"_RINvNtNtNtCshzWfHUSfYae_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsdcPuHeDsw6v_13project_model"}
!817 = distinct !{!817, !816, !"_RINvNtNtNtCshzWfHUSfYae_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsdcPuHeDsw6v_13project_model: argument 0"}
!818 = !{!817}
!819 = distinct !{!819, i1 true, !"_RINvNtNtNtCshzWfHUSfYae_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsdcPuHeDsw6v_13project_model"}
!820 = distinct !{!820, !819, !"_RINvNtNtNtCshzWfHUSfYae_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsdcPuHeDsw6v_13project_model: argument 0"}
!821 = !{!820}
!822 = distinct !{!822, i1 true, !"_RNCNvNtNtCsdcPuHeDsw6v_13project_model14toolchain_info7version3gets_0B7_"}
!823 = distinct !{!823, !822, !"_RNCNvNtNtCsdcPuHeDsw6v_13project_model14toolchain_info7version3gets_0B7_: argument 0"}
!824 = distinct !{!824, !822, !"_RNCNvNtNtCsdcPuHeDsw6v_13project_model14toolchain_info7version3gets_0B7_: argument 1"}
!825 = distinct !{!825, i1 true, !"_RINvYINtNtNtCshzWfHUSfYae_4core3str4iter5SplitNtB8_12IsWhitespaceENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvB12_4find5checkReQNtB8_10IsNotEmptyE0INtNtNtBa_3ops12control_flow11ControlFlowB2d_EECsdcPuHeDsw6v_13project_model"}
!826 = distinct !{!826, !825, !"_RINvYINtNtNtCshzWfHUSfYae_4core3str4iter5SplitNtB8_12IsWhitespaceENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvB12_4find5checkReQNtB8_10IsNotEmptyE0INtNtNtBa_3ops12control_flow11ControlFlowB2d_EECsdcPuHeDsw6v_13project_model: argument 0"}
!827 = distinct !{!827, i1 true, !"_RNvXsX_NtNtCshzWfHUSfYae_4core3str4iterINtB5_5SplitNtB7_12IsWhitespaceENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsdcPuHeDsw6v_13project_model"}
!828 = distinct !{!828, !827, !"_RNvXsX_NtNtCshzWfHUSfYae_4core3str4iterINtB5_5SplitNtB7_12IsWhitespaceENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsdcPuHeDsw6v_13project_model: argument 0"}
!829 = distinct !{!829, i1 true, !"_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalNtB7_12IsWhitespaceE4nextCsdcPuHeDsw6v_13project_model"}
!830 = distinct !{!830, !829, !"_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalNtB7_12IsWhitespaceE4nextCsdcPuHeDsw6v_13project_model: argument 0"}
!831 = distinct !{!831, i1 true, !"_RNvXso_NtNtCshzWfHUSfYae_4core3str7patternINtB5_21CharPredicateSearcherNtB7_12IsWhitespaceENtB5_8Searcher10next_matchCsdcPuHeDsw6v_13project_model"}
!832 = distinct !{!832, !831, !"_RNvXso_NtNtCshzWfHUSfYae_4core3str7patternINtB5_21CharPredicateSearcherNtB7_12IsWhitespaceENtB5_8Searcher10next_matchCsdcPuHeDsw6v_13project_model: argument 1"}
!833 = distinct !{!833, !831, !"_RNvXso_NtNtCshzWfHUSfYae_4core3str7patternINtB5_21CharPredicateSearcherNtB7_12IsWhitespaceENtB5_8Searcher10next_matchCsdcPuHeDsw6v_13project_model: argument 0"}
!834 = distinct !{!834, i1 true, !"_RNvYINtNtNtCshzWfHUSfYae_4core3str7pattern19MultiCharEqSearcherNtB7_12IsWhitespaceENtB5_8Searcher10next_matchCsdcPuHeDsw6v_13project_model"}
!835 = distinct !{!835, !834, !"_RNvYINtNtNtCshzWfHUSfYae_4core3str7pattern19MultiCharEqSearcherNtB7_12IsWhitespaceENtB5_8Searcher10next_matchCsdcPuHeDsw6v_13project_model: argument 1"}
!836 = distinct !{!836, !834, !"_RNvYINtNtNtCshzWfHUSfYae_4core3str7pattern19MultiCharEqSearcherNtB7_12IsWhitespaceENtB5_8Searcher10next_matchCsdcPuHeDsw6v_13project_model: argument 0"}
!837 = distinct !{!837, i1 true, !"_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherNtB7_12IsWhitespaceENtB5_8Searcher4nextCsdcPuHeDsw6v_13project_model"}
!838 = distinct !{!838, !837, !"_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherNtB7_12IsWhitespaceENtB5_8Searcher4nextCsdcPuHeDsw6v_13project_model: argument 1"}
!839 = distinct !{!839, !837, !"_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherNtB7_12IsWhitespaceENtB5_8Searcher4nextCsdcPuHeDsw6v_13project_model: argument 0"}
!840 = distinct !{!840, i1 true, !"_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next"}
!841 = distinct !{!841, !840, !"_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next: argument 0"}
!842 = distinct !{!842, i1 true, !"_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsdcPuHeDsw6v_13project_model"}
!843 = distinct !{!843, !842, !"_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsdcPuHeDsw6v_13project_model: argument 0"}
!844 = !{!823}
!845 = !{!824}
!846 = !{!823, !824}
!847 = !{!843, !841, !839, !838, !836, !835, !833, !832, !830, !828, !826}
!848 = !{!839, !838, !836, !835, !833, !832, !830, !828, !826, !823, !824}
!849 = distinct !{!849, i1 true, !"_RINvNtNtNtCshzWfHUSfYae_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsdcPuHeDsw6v_13project_model"}
!850 = distinct !{!850, !849, !"_RINvNtNtNtCshzWfHUSfYae_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsdcPuHeDsw6v_13project_model: argument 0"}
!851 = !{!850}
!852 = distinct !{!852, i1 true, !"_RNvXsa_Csbq3eHDLgq0Z_8la_arenaINtB5_3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderENtNtCshzWfHUSfYae_4core3fmt5Debug3fmtCsdcPuHeDsw6v_13project_model"}
!853 = distinct !{!853, !852, !"_RNvXsa_Csbq3eHDLgq0Z_8la_arenaINtB5_3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderENtNtCshzWfHUSfYae_4core3fmt5Debug3fmtCsdcPuHeDsw6v_13project_model: argument 0"}
!854 = distinct !{!854, i1 true, !"_RNvXs0_NtNtCshzWfHUSfYae_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher15next_match_back"}
!855 = distinct !{!855, !854, !"_RNvXs0_NtNtCshzWfHUSfYae_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher15next_match_back: argument 1"}
!856 = distinct !{!856, !854, !"_RNvXs0_NtNtCshzWfHUSfYae_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher15next_match_back: argument 0"}
!857 = !{!853}
!858 = !{!856, !855, !853}
!859 = !{i8 0, i8 6}
!860 = distinct !{null}
!861 = distinct !{!861, i1 true, !"_RNvXsd_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxNtNtCsdcPuHeDsw6v_13project_model12project_json11ProjectJsonENtNtCshzWfHUSfYae_4core5clone5Clone5cloneBL_"}
!862 = distinct !{!862, !861, !"_RNvXsd_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxNtNtCsdcPuHeDsw6v_13project_model12project_json11ProjectJsonENtNtCshzWfHUSfYae_4core5clone5Clone5cloneBL_: argument 0"}
!863 = distinct !{!863, i1 true, !"_RNvXNtNtCshzWfHUSfYae_4core5clone6uninitNtNtCsdcPuHeDsw6v_13project_model12project_json11ProjectJsonNtB2_8CopySpec9clone_oneBG_"}
!864 = distinct !{!864, !863, !"_RNvXNtNtCshzWfHUSfYae_4core5clone6uninitNtNtCsdcPuHeDsw6v_13project_model12project_json11ProjectJsonNtB2_8CopySpec9clone_oneBG_: argument 0"}
!865 = distinct !{null, null}
!866 = !{!864, !862}
!867 = !{!862}
!868 = distinct !{!868, i1 true, !"_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push"}
!869 = distinct !{!869, !868, !"_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push: argument 0"}
!870 = !{!869}
!871 = distinct !{!871, i1 true, !"_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String8push_str"}
!872 = distinct !{!872, !871, !"_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String8push_str: argument 1"}
!873 = distinct !{!873, !871, !"_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String8push_str: argument 0"}
!874 = distinct !{!874, i1 true, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCsdcPuHeDsw6v_13project_model"}
!875 = distinct !{!875, !874, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCsdcPuHeDsw6v_13project_model: argument 0"}
!876 = !{!872}
!877 = !{!875, !873}
!878 = distinct !{!878, i1 true, !"_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace11PackageDataEENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintB1n_"}
!879 = distinct !{!879, !878, !"_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace11PackageDataEENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintB1n_: argument 0"}
!880 = !{!879}
!881 = distinct !{!881, i1 true, !"_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw"}
!882 = distinct !{!882, !881, !"_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw: argument 0"}
!883 = distinct !{!883, i1 true, !"_RNvXNvNtNtCshzWfHUSfYae_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtNtCscAsMj0W7j8b_3std3sys5stdio4unix6StderrENtNtB8_3fmt5Write9write_strCsdcPuHeDsw6v_13project_model"}
!884 = distinct !{!884, !883, !"_RNvXNvNtNtCshzWfHUSfYae_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtNtCscAsMj0W7j8b_3std3sys5stdio4unix6StderrENtNtB8_3fmt5Write9write_strCsdcPuHeDsw6v_13project_model: argument 0"}
!885 = distinct !{!885, !883, !"_RNvXNvNtNtCshzWfHUSfYae_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtNtCscAsMj0W7j8b_3std3sys5stdio4unix6StderrENtNtB8_3fmt5Write9write_strCsdcPuHeDsw6v_13project_model: argument 1"}
!886 = distinct !{!886, i1 true, !"_RINvNtNtNtCshzWfHUSfYae_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsdcPuHeDsw6v_13project_model"}
!887 = distinct !{!887, !886, !"_RINvNtNtNtCshzWfHUSfYae_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsdcPuHeDsw6v_13project_model: argument 0"}
!888 = !{!882}
!889 = !{!884}
!890 = !{!884, !885}
!891 = !{!887}
!892 = distinct !{null}
!893 = distinct !{!893, i1 true, !"_RNCNKNvNvMNtNtCscAsMj0W7j8b_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CsdcPuHeDsw6v_13project_model"}
!894 = distinct !{!894, !893, !"_RNCNKNvNvMNtNtCscAsMj0W7j8b_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CsdcPuHeDsw6v_13project_model: argument 0"}
!895 = distinct !{!895, i1 true, !"_RINvMs0_NtNtNtNtCscAsMj0W7j8b_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCshzWfHUSfYae_4core4cell4CellTyyEEzE11get_or_initNvNvNvMNtNtBe_4hash6randomNtB2d_11RandomState3new4KEYS27___rust_std_internal_init_fnECsdcPuHeDsw6v_13project_model"}
!896 = distinct !{!896, !895, !"_RINvMs0_NtNtNtNtCscAsMj0W7j8b_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCshzWfHUSfYae_4core4cell4CellTyyEEzE11get_or_initNvNvNvMNtNtBe_4hash6randomNtB2d_11RandomState3new4KEYS27___rust_std_internal_init_fnECsdcPuHeDsw6v_13project_model: argument 0"}
!897 = !{!896, !894}
end_hunk_3
