Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir-4fc055f1ab98df9a.hir.68581c9154c06fea-cgu.13?download=true
inline.NumInlined: 1152
inline.NumDeleted: 749
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [36 x i8] c"assertion failed: size.bits() <= 128", align 1
@1 = private unnamed_addr constant [104 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/ra-ap-rustc_abi-0.165.0/src/lib.rs\00", align 1
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"g\00\00\00\00\00\00\00\E4\07\00\00\09\00\00\00" }>, align 8
@3 = private unnamed_addr constant [23 x i8] c"crates/span/src/map.rs\00", align 1
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c"\16\00\00\00\00\00\00\00R\00\00\00V\00\00\00" }>, align 8
@5 = private unnamed_addr constant [34 x i8] c"crates/hir/src/source_analyzer.rs\00", align 1
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @5, [16 x i8] c"!\00\00\00\00\00\00\006\06\00\00%\00\00\00" }>, align 8
@_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols10IntoFuture10SYMBOL_STR = external global { ptr, i64 }
@7 = private unnamed_addr constant [38 x i8] c"assertion failed: start.raw <= end.raw", align 1
@8 = private unnamed_addr constant [98 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/text-size-1.1.1/src/range.rs\00", align 1
@9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @8, [16 x i8] c"a\00\00\00\00\00\00\000\00\00\00\09\00\00\00" }>, align 8
@10 = private unnamed_addr constant [30 x i8] c"crates/hir/src/diagnostics.rs\00", align 1
@11 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"\1D\00\00\00\00\00\00\00\C8\02\00\002\00\00\00" }>, align 8
@12 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCNCNvMs5_NtCsd9Lm8bEdjjY_5salsa8internedINtBe_14IngredientImplNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE11clear_memos00INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceuE9call_once6vtableCs8Xq8PKFYOms_3hir, ptr @_RNCNCNvMs5_NtCsd9Lm8bEdjjY_5salsa8internedINtB9_14IngredientImplNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE11clear_memos00Cs8Xq8PKFYOms_3hir, ptr @_RNCNCNvMs5_NtCsd9Lm8bEdjjY_5salsa8internedINtB9_14IngredientImplNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE11clear_memos00Cs8Xq8PKFYOms_3hir }>, align 8
@13 = private unnamed_addr constant [27 x i8] c"crates/hir-ty/src/lower.rs\00", align 1
@14 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @13, [16 x i8] c"\1A\00\00\00\00\00\00\00\A6\09\00\00\1A\00\00\00" }>, align 8
@15 = private unnamed_addr constant [102 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/salsa-0.27.2/src/active_query.rs\00", align 1
@16 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @15, [16 x i8] c"e\00\00\00\00\00\00\00v\01\00\00\18\00\00\00" }>, align 8
@17 = private unnamed_addr constant [26 x i8] c"crates/hir/src/display.rs\00", align 1
@18 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @17, [16 x i8] c"\19\00\00\00\00\00\00\00!\03\00\00\17\00\00\00" }>, align 8
@19 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @17, [16 x i8] c"\19\00\00\00\00\00\00\00\22\03\00\00J\00\00\00" }>, align 8
@20 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @17, [16 x i8] c"\19\00\00\00\00\00\00\00\10\03\00\00\1F\00\00\00" }>, align 8
@21 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @17, [16 x i8] c"\19\00\00\00\00\00\00\00\11\03\00\00L\00\00\00" }>, align 8
@22 = private unnamed_addr constant [2 x i8] c"\C0\00", align 1
@23 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs8Xq8PKFYOms_3hir, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsZ_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt5Write9write_str, ptr @_RNvXsZ_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt5Write10write_char, ptr @_RNvYNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtCshzWfHUSfYae_4core3fmt5Write9write_fmtCs8Xq8PKFYOms_3hir }>, align 8
@24 = private unnamed_addr constant [97 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/itertools-0.15.0/src/lib.rs\00", align 1
@25 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @24, [16 x i8] c"`\00\00\00\00\00\00\00\DD\0A\00\002\00\00\00" }>, align 8
@26 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1_NtCs474hSbRjvii_8arrayvec6errorsINtB5_13CapacityErrorNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgENtNtCshzWfHUSfYae_4core3fmt5Debug3fmtCs8Xq8PKFYOms_3hir }>, align 8
@27 = private unnamed_addr constant [43 x i8] c"called `Result::unwrap()` on an `Err` value", align 1
@28 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsK_NtCshzWfHUSfYae_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt }>, align 8
@29 = private unnamed_addr constant [95 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/salsa-0.27.2/src/input.rs\00", align 1
@30 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @29, [16 x i8] c"^\00\00\00\00\00\00\00\F0\00\00\00,\00\00\00" }>, align 8
@31 = private unnamed_addr constant [95 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/salsa-0.27.2/src/zalsa.rs\00", align 1
@32 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @31, [16 x i8] c"^\00\00\00\00\00\00\00\15\01\00\00%\00\00\00" }>, align 8
@33 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @31, [16 x i8] c"^\00\00\00\00\00\00\00\16\01\00\00\0D\00\00\00" }>, align 8
@34 = private unnamed_addr constant [32 x i8] c"\1DUse of unknown address space \C0\00", align 1
@35 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"g\00\00\00\00\00\00\00\B1\02\00\00\0D\00\00\00" }>, align 8
@36 = private unnamed_addr constant [105 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/itertools-0.15.0/src/groupbylazy.rs\00", align 1
@37 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @36, [16 x i8] c"h\00\00\00\00\00\00\00\14\01\00\00/\00\00\00" }>, align 8
@38 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @36, [16 x i8] c"h\00\00\00\00\00\00\00y\01\00\00\14\00\00\00" }>, align 8
@39 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @36, [16 x i8] c"h\00\00\00\00\00\00\00t\01\00\00\14\00\00\00" }>, align 8
@40 = private unnamed_addr constant [1 x i8] c"C", align 1
@41 = private unnamed_addr constant [8 x i8] c"C-unwind", align 1
@42 = private unnamed_addr constant [6 x i8] c"system", align 1
@43 = private unnamed_addr constant [13 x i8] c"system-unwind", align 1
@44 = private unnamed_addr constant [4 x i8] c"Rust", align 1
@45 = private unnamed_addr constant [9 x i8] c"rust-call", align 1
@46 = private unnamed_addr constant [9 x i8] c"rust-cold", align 1
@47 = private unnamed_addr constant [12 x i8] c"rust-invalid", align 1
@48 = private unnamed_addr constant [18 x i8] c"rust-preserve-none", align 1
@49 = private unnamed_addr constant [10 x i8] c"unadjusted", align 1
@50 = private unnamed_addr constant [6 x i8] c"custom", align 1
@51 = private unnamed_addr constant [6 x i8] c"efiapi", align 1
@52 = private unnamed_addr constant [5 x i8] c"aapcs", align 1
@53 = private unnamed_addr constant [12 x i8] c"aapcs-unwind", align 1
@54 = private unnamed_addr constant [19 x i8] c"cmse-nonsecure-call", align 1
@55 = private unnamed_addr constant [20 x i8] c"cmse-nonsecure-entry", align 1
@56 = private unnamed_addr constant [10 x i8] c"gpu-kernel", align 1
@57 = private unnamed_addr constant [10 x i8] c"ptx-kernel", align 1
@58 = private unnamed_addr constant [13 x i8] c"avr-interrupt", align 1
@59 = private unnamed_addr constant [26 x i8] c"avr-non-blocking-interrupt", align 1
@60 = private unnamed_addr constant [16 x i8] c"msp430-interrupt", align 1
@61 = private unnamed_addr constant [17 x i8] c"riscv-interrupt-m", align 1
@62 = private unnamed_addr constant [17 x i8] c"riscv-interrupt-s", align 1
@63 = private unnamed_addr constant [13 x i8] c"x86-interrupt", align 1
@64 = private unnamed_addr constant [5 x i8] c"cdecl", align 1
@65 = private unnamed_addr constant [12 x i8] c"cdecl-unwind", align 1
@66 = private unnamed_addr constant [7 x i8] c"stdcall", align 1
@67 = private unnamed_addr constant [14 x i8] c"stdcall-unwind", align 1
@68 = private unnamed_addr constant [8 x i8] c"fastcall", align 1
@69 = private unnamed_addr constant [15 x i8] c"fastcall-unwind", align 1
@70 = private unnamed_addr constant [8 x i8] c"thiscall", align 1
@71 = private unnamed_addr constant [15 x i8] c"thiscall-unwind", align 1
@72 = private unnamed_addr constant [10 x i8] c"vectorcall", align 1
@73 = private unnamed_addr constant [17 x i8] c"vectorcall-unwind", align 1
@74 = private unnamed_addr constant [6 x i8] c"sysv64", align 1
@75 = private unnamed_addr constant [13 x i8] c"sysv64-unwind", align 1
@76 = private unnamed_addr constant [5 x i8] c"win64", align 1
@77 = private unnamed_addr constant [12 x i8] c"win64-unwind", align 1
@78 = private unnamed_addr constant [4 x i8] c"    ", align 1
@79 = private unnamed_addr constant [2 x i8] c"{}", align 1
@80 = private unnamed_addr constant [13 x i8] c"{ /* \E2\80\A6 */ }", align 1
@81 = private unnamed_addr constant [4 x i8] c"\01,\C0\00", align 1
@82 = private unnamed_addr constant [13 x i8] c"\C0\09/* \E2\80\A6 */\C0\00", align 1
@83 = private unnamed_addr constant [1 x i8] c"}", align 1
@84 = private unnamed_addr constant [8 x i8] c"default ", align 1
@85 = private unnamed_addr constant [6 x i8] c"const ", align 1
@86 = private unnamed_addr constant [6 x i8] c"async ", align 1
@87 = private unnamed_addr constant [4 x i8] c"gen ", align 1
@88 = private unnamed_addr constant [7 x i8] c"unsafe ", align 1
@89 = private unnamed_addr constant <{ [1 x i8], [1 x i8] }> <{ [1 x i8] c"\02", [1 x i8] undef }>, align 1
@90 = private unnamed_addr constant [14 x i8] c"\08extern \22\C0\02\22 \00", align 1
@91 = private unnamed_addr constant [6 x i8] c"\03fn \C0\00", align 1
@92 = private unnamed_addr constant [5 x i8] c"\0A    ", align 1
@93 = private unnamed_addr constant [2 x i8] c", ", align 1
@94 = private unnamed_addr constant [6 x i8] c",\0A    ", align 1
@95 = private unnamed_addr constant [3 x i8] c"...", align 1
@96 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @17, [16 x i8] c"\19\00\00\00\00\00\00\00\F7\00\00\00\1A\00\00\00" }>, align 8
@97 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @17, [16 x i8] c"\19\00\00\00\00\00\00\00\F8\00\00\002\00\00\00" }>, align 8
@98 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @17, [16 x i8] c"\19\00\00\00\00\00\00\00\FA\00\00\00 \00\00\00" }>, align 8
@99 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @17, [16 x i8] c"\19\00\00\00\00\00\00\00\FE\00\00\00\1A\00\00\00" }>, align 8
@100 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @17, [16 x i8] c"\19\00\00\00\00\00\00\00\00\01\00\00\1A\00\00\00" }>, align 8
@101 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @17, [16 x i8] c"\19\00\00\00\00\00\00\00\FA\00\00\00\16\00\00\00" }>, align 8
@102 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @17, [16 x i8] c"\19\00\00\00\00\00\00\00\04\01\00\00\1A\00\00\00" }>, align 8
@103 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @17, [16 x i8] c"\19\00\00\00\00\00\00\00\0F\01\00\00\1A\00\00\00" }>, align 8
@104 = private unnamed_addr constant [4 x i8] c" -> ", align 1
@105 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @17, [16 x i8] c"\19\00\00\00\00\00\00\00\DD\00\00\00\16\00\00\00" }>, align 8
@106 = private unnamed_addr constant [2 x i8] c": ", align 1
@107 = private unnamed_addr constant [2 x i8] c"{\0A", align 1
@108 = private unnamed_addr constant [7 x i8] c"\04    \C0\00", align 1
@109 = private unnamed_addr constant [14 x i8] c" { /* \E2\80\A6 */ }", align 1
@110 = private unnamed_addr constant [3 x i8] c" {}", align 1
@111 = private unnamed_addr constant [13 x i8] c"( /* \E2\80\A6 */ )", align 1
@112 = private unnamed_addr constant [2 x i8] c"()", align 1
@113 = private unnamed_addr constant [2 x i8] c",\0A", align 1
@114 = private unnamed_addr constant [14 x i8] c"    /* \E2\80\A6 */\0A", align 1
@115 = private unnamed_addr constant [4 x i8] c"impl", align 1
@116 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @17, [16 x i8] c"\19\00\00\00\00\00\00\00'\01\00\000\00\00\00" }>, align 8
@117 = private unnamed_addr constant [4 x i8] c" for", align 1
@118 = private unnamed_addr constant [5 x i8] c"auto ", align 1
@119 = private unnamed_addr constant [9 x i8] c"\06trait \C0\00", align 1
@120 = private unnamed_addr constant [6 x i8] c"\0Awhere", align 1
@121 = private unnamed_addr constant [10 x i8] c"\04for<\C0\02> \00", align 1
@122 = private unnamed_addr constant [3 x i8] c" + ", align 1
@123 = private unnamed_addr constant [1 x i8] c",", align 1
@124 = private unnamed_addr constant [3 x i8] c" = ", align 1
@125 = private unnamed_addr constant [12 x i8] c"\06const \C0\02: \00", align 1
@126 = private unnamed_addr constant [145 x i8] c"Must have `DbInterner::lang_items`.\0A\0ANote: you might have called `DbInterner::new_no_crate()` where you should've called `DbInterner::new_with()`", align 1
@127 = private unnamed_addr constant [29 x i8] c"crates/hir-ty/src/display.rs\00", align 1
@128 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @127, [16 x i8] c"\1C\00\00\00\00\00\00\00\BE\01\00\00\17\00\00\00" }>, align 8
@_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols4Copy10SYMBOL_STR = external global { ptr, i64 }
@_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols5Clone10SYMBOL_STR = external global { ptr, i64 }
@_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols7Default10SYMBOL_STR = external global { ptr, i64 }
@_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols5Debug10SYMBOL_STR = external global { ptr, i64 }
@_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols4Hash10SYMBOL_STR = external global { ptr, i64 }
@_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols3Ord10SYMBOL_STR = external global { ptr, i64 }
@_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols10PartialOrd10SYMBOL_STR = external global { ptr, i64 }
@_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols2Eq10SYMBOL_STR = external global { ptr, i64 }
@_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols9PartialEq10SYMBOL_STR = external global { ptr, i64 }
@_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols13CoerceUnsized10SYMBOL_STR = external global { ptr, i64 }
@_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols15DispatchFromDyn10SYMBOL_STR = external global { ptr, i64 }
@129 = private unnamed_addr constant [5 x i8] c" for ", align 1
@130 = private unnamed_addr constant [25 x i8] c"\0A    // Bounds from impl:", align 1
@_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols5clone10SYMBOL_STR = external global { ptr, i64 }
@_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols7default10SYMBOL_STR = external global { ptr, i64 }
@_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols3fmt10SYMBOL_STR = external global { ptr, i64 }
@_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols4hash10SYMBOL_STR = external global { ptr, i64 }
@_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols3cmp10SYMBOL_STR = external global { ptr, i64 }
@_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols11partial_cmp10SYMBOL_STR = external global { ptr, i64 }
@_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols2eq10SYMBOL_STR = external global { ptr, i64 }
@131 = private unnamed_addr constant [12 x i8] c"\03fn \C0\05(\E2\80\A6)\00", align 1
@132 = private unnamed_addr constant [21 x i8] c"insufficient capacity", align 1
@133 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @132, [8 x i8] c"\15\00\00\00\00\00\00\00" }>, align 8
@134 = private unnamed_addr constant [18 x i8] c"\0FCapacityError: \C0\00", align 1
@135 = private unnamed_addr constant [81 x i8] c"/rustc/73dc9167f1cd099e525c9ade2e068d1907b78564/library/core/src/clone/uninit.rs\00", align 1
@136 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @135, [16 x i8] c"P\00\00\00\00\00\00\00y\00\00\00\1B\00\00\00" }>, align 8
@137 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRmNtB6_5Debug3fmtCs8Xq8PKFYOms_3hir }>, align 8
@138 = private unnamed_addr constant [12 x i8] c"AddressSpace", align 1
@139 = private unnamed_addr constant [5 x i8] c"Error", align 1
@140 = private unnamed_addr constant [83 x i8] c"internal error: entered unreachable code: `PathId` always points to `TypeRef::Path`", align 1
@141 = private unnamed_addr constant [45 x i8] c"crates/hir-ty/src/next_solver/generic_arg.rs\00", align 1
@142 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @141, [16 x i8] c",\00\00\00\00\00\00\00\F8\01\00\00\0E\00\00\00" }>, align 8
@143 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @24, [16 x i8] c"`\00\00\00\00\00\00\00\DA\0A\00\004\00\00\00" }>, align 8
@switch.table._RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8Xq8PKFYOms_3hir = private unnamed_addr constant [5 x i8] c"\01\02\04\08\10", align 8
@switch.table._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8Xq8PKFYOms_3hir = private unnamed_addr constant [5 x i64] [i64 -8, i64 -16, i64 -32, i64 -64, i64 -128], align 8
@switch.table._RINvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB6_8IntoIterINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def10signatures9FieldDataEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2l_8adapters3map8map_foldBX_TNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir5FieldEuNCNvMs1_NtB4z_11diagnosticsNtB57_13AnyDiagnostic26body_validation_diagnostic0NCINvNvB2f_8for_each4callB3S_NCINvMsk_B8_INtB8_3VecB3S_E14extend_trustedINtB3l_3MapBI_B4Z_EE0E0E0EB4z_ = private unnamed_addr constant [3 x i8] c"\02\00\01", align 4
@switch.table._RNvNtCs8Xq8PKFYOms_3hir7display32write_builtin_derive_impl_method = private unnamed_addr constant [11 x i16] [i16 168, i16 184, i16 1440, i16 1448, i16 1456, i16 1464, i16 760, i16 1472, i16 752, i16 296, i16 304], align 8
@switch.table._RNvNtCs8Xq8PKFYOms_3hir7display32write_builtin_derive_impl_method.513 = private unnamed_addr constant [11 x i16] [i16 172, i16 188, i16 1444, i16 1452, i16 1460, i16 1468, i16 764, i16 1476, i16 756, i16 300, i16 308], align 8
@switch.table._RNvNtCs8Xq8PKFYOms_3hir7display32write_builtin_derive_impl_method.514 = private unnamed_addr constant [11 x ptr] [ptr @_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols4Copy10SYMBOL_STR, ptr @_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols5Clone10SYMBOL_STR, ptr @_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols7Default10SYMBOL_STR, ptr @_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols5Debug10SYMBOL_STR, ptr @_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols4Hash10SYMBOL_STR, ptr @_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols3Ord10SYMBOL_STR, ptr @_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols10PartialOrd10SYMBOL_STR, ptr @_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols2Eq10SYMBOL_STR, ptr @_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols9PartialEq10SYMBOL_STR, ptr @_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols13CoerceUnsized10SYMBOL_STR, ptr @_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols15DispatchFromDyn10SYMBOL_STR], align 8
@switch.table._RNvNtCs8Xq8PKFYOms_3hir7display32write_builtin_derive_impl_method.515 = private unnamed_addr constant [7 x ptr] [ptr @_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols5clone10SYMBOL_STR, ptr @_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols7default10SYMBOL_STR, ptr @_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols3fmt10SYMBOL_STR, ptr @_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols4hash10SYMBOL_STR, ptr @_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols3cmp10SYMBOL_STR, ptr @_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols11partial_cmp10SYMBOL_STR, ptr @_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols2eq10SYMBOL_STR], align 8

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs5_NtNtCsd9Lm8bEdjjY_5salsa5table4memoNtB6_21MemoTableWithTypesMut10take_memosNCNvMs5_NtBa_8internedINtB1r_14IngredientImplNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE11clear_memos0ECs8Xq8PKFYOms_3hir(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [12 x i8], align 8                ; 6 uses
  %.sroa.42.i.i.i = alloca ptr, align 8           ; 5 uses
  %.sroa.7.i.i.i = alloca ptr, align 8            ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !8, !align !9, !noundef !8 ; 2 uses
  %.val = load ptr, ptr %i.g, align 8, !noundef !8 ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %.val1 = load i64, ptr %i.h, align 8
  %i.i = icmp eq ptr %.val, null                  ; 2 uses
  %.sroa.4.0.i = select i1 %i.i, i64 0, i64 %.val1
  %.sroa.0.0.i = select i1 %i.i, ptr inttoptr (i64 8 to ptr), ptr %.val ; 3 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i, i64 %.sroa.4.0.i
  %i.k = load ptr, ptr %0, align 8, !nonnull !8, !align !9, !noundef !8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !8, !noundef !8 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noundef !8
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !56
  store ptr %.sroa.0.0.i, ptr %i.e, align 8, !noalias !57
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.j, ptr %i.q, align 8, !noalias !57
  store ptr %i.m, ptr %i.d, align 8, !noalias !57
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.p, ptr %i.r, align 8, !noalias !57
  %i.s = call noundef i64 @_RNvYINtNtNtCshzWfHUSfYae_4core5slice4iter7IterMutNtNtNtCsd9Lm8bEdjjY_5salsa5table4memo9MemoEntryENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e), !noalias !57
  %i.t = call noundef i64 @_RNvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtNtCsd9Lm8bEdjjY_5salsa5table4memo13MemoEntryTypeENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d), !noalias !57
  %..i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.t, i64 %i.s) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !56
  call void @llvm.experimental.noalias.scope.decl(metadata !58)
  %.not.i = icmp eq i64 %..i.i.i, 0
  br i1 %.not.i, label %_RINvXs2_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutNtNtNtCsd9Lm8bEdjjY_5salsa5table4memo9MemoEntryEINtB10_4IterNtB1s_13MemoEntryTypeEEINtB6_7ZipImplBX_B2c_E4folduNCINvNvXs_NtB8_9enumerateINtB3n_9EnumeratepENtNtNtBa_6traits8iterator8Iterator4fold9enumerateTQB1q_RB2o_EuNCINvNtB8_10filter_map15filter_map_foldTjB4I_ETNtNtB1w_5zalsa19MemoIngredientIndexINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxDNtB1s_4MemoEL_EEuNCINvMs5_B1s_NtB1s_21MemoTableWithTypesMut10take_memosNCNvMs5_NtB1w_8internedINtB86_14IngredientImplNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE11clear_memos0E0NCINvNvB3V_8for_each4callB5F_NCB78_s_0E0E0E0ECs8Xq8PKFYOms_3hir.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.u = load ptr, ptr %1, align 8, !alias.scope !58, !nonnull !8, !align !9 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !58, !nonnull !8, !align !9
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !58, !nonnull !8, !align !10
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 1352
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTQNtNtNtCsd9Lm8bEdjjY_5salsa5table4memo9MemoEntryRNtB25_13MemoEntryTypeEuNCINvNtBb_10filter_map15filter_map_foldTjB21_ETNtNtB29_5zalsa19MemoIngredientIndexINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxDNtB25_4MemoEL_EEuNCINvMs5_B25_NtB25_21MemoTableWithTypesMut10take_memosNCNvMs5_NtB29_8internedINtB6n_14IngredientImplNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE11clear_memos0E0NCINvNvB1e_8for_each4callB3W_NCB5p_s_0E0E0E0Cs8Xq8PKFYOms_3hir.exit.i, %.lr.ph.i
  %.sroa.0.017.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ae, %_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTQNtNtNtCsd9Lm8bEdjjY_5salsa5table4memo9MemoEntryRNtB25_13MemoEntryTypeEuNCINvNtBb_10filter_map15filter_map_foldTjB21_ETNtNtB29_5zalsa19MemoIngredientIndexINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxDNtB25_4MemoEL_EEuNCINvMs5_B25_NtB25_21MemoTableWithTypesMut10take_memosNCNvMs5_NtB29_8internedINtB6n_14IngredientImplNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE11clear_memos0E0NCINvNvB1e_8for_each4callB3W_NCB5p_s_0E0E0E0Cs8Xq8PKFYOms_3hir.exit.i ] ; 4 uses
  %i.ae = add nuw i64 %.sroa.0.017.i, 1           ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i, i64 %.sroa.0.017.i ; 2 uses
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %.sroa.0.017.i
  call void @llvm.experimental.noalias.scope.decl(metadata !59)
  call void @llvm.experimental.noalias.scope.decl(metadata !60)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.42.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !61)
  %.val.i.i.i.i = load ptr, ptr %i.ag, align 8, !alias.scope !60, !noalias !62 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !63)
  %i.ah = load ptr, ptr %i.af, align 8, !alias.scope !64, !noalias !62, !noundef !8 ; 2 uses
  store ptr null, ptr %i.af, align 8, !alias.scope !64, !noalias !62
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %_RNCINvMs5_NtNtCsd9Lm8bEdjjY_5salsa5table4memoNtB8_21MemoTableWithTypesMut10take_memosNCNvMs5_NtBc_8internedINtB1t_14IngredientImplNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE11clear_memos0E0Cs8Xq8PKFYOms_3hir.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  %i.aj = call { ptr, ptr } %.val.i.i.i.i(ptr noundef nonnull %i.ah), !noalias !65, !inline_history !48 ; 2 uses
  %i.ak = extractvalue { ptr, ptr } %i.aj, 0      ; 3 uses
  %i.al = extractvalue { ptr, ptr } %i.aj, 1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ak) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.al) ]
  %i.am = invoke noundef i32 @_RNvMs_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB4_19MemoIngredientIndex10from_usize(i64 noundef %.sroa.0.017.i)
          to label %bb.e unwind label %bb.d, !noalias !66

bb.d:                                             ; preds = %bb.c
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxDNtNtNtCsd9Lm8bEdjjY_5salsa5table4memo4MemoEL_EECs8Xq8PKFYOms_3hir(ptr nonnull %i.ak, ptr nonnull %i.al) #28
          to label %common.resume.i.i.i unwind label %bb.f, !noalias !66

bb.e:                                             ; preds = %bb.c
  store ptr %i.ak, ptr %.sroa.42.i.i.i, align 8, !alias.scope !61, !noalias !67
  %i.ao = zext i32 %i.am to i64
  br label %_RNCINvMs5_NtNtCsd9Lm8bEdjjY_5salsa5table4memoNtB8_21MemoTableWithTypesMut10take_memosNCNvMs5_NtBc_8internedINtB1t_14IngredientImplNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE11clear_memos0E0Cs8Xq8PKFYOms_3hir.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #29, !noalias !66
  unreachable

common.resume.i.i.i:                              ; preds = %bb.q, %bb.p, %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, %bb.d
  %common.resume.op.i.i.i = phi { ptr, i32 } [ %i.an, %bb.d ], [ %i.bq, %bb.p ], [ %i.bq, %bb.q ], [ %lpad.loopexit.split-lp41, %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ]
  resume { ptr, i32 } %common.resume.op.i.i.i

_RNCINvMs5_NtNtCsd9Lm8bEdjjY_5salsa5table4memoNtB8_21MemoTableWithTypesMut10take_memosNCNvMs5_NtBc_8internedINtB1t_14IngredientImplNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE11clear_memos0E0Cs8Xq8PKFYOms_3hir.exit.i.i.i: ; preds = %bb.e, %bb.b
  %.sroa.0.0.i.i.i = phi i64 [ 0, %bb.b ], [ %i.ao, %bb.e ] ; 3 uses
  %.sink4.i.sroa.phi.i.i.i = phi ptr [ %.sroa.42.i.i.i, %bb.b ], [ %.sroa.7.i.i.i, %bb.e ]
  %.sink.i.i.i.i = phi ptr [ null, %bb.b ], [ %i.al, %bb.e ]
  store ptr %.sink.i.i.i.i, ptr %.sink4.i.sroa.phi.i.i.i, align 8, !alias.scope !61, !noalias !67
  %.sroa.42.i.i.i.0..sroa.42.i.i.i.0..sroa.42.i.i.i.0..sroa.42.i.i.0..sroa.42.i.i.0..sroa.42.i.0..sroa.42.i.0..sroa.42.0..sroa.42.0..sroa.42.8..i.i.i = load ptr, ptr %.sroa.42.i.i.i, align 8, !noalias !67, !noundef !8 ; 6 uses
  %.not.i.i.i = icmp eq ptr %.sroa.42.i.i.i.0..sroa.42.i.i.i.0..sroa.42.i.i.i.0..sroa.42.i.i.0..sroa.42.i.i.0..sroa.42.i.0..sroa.42.i.0..sroa.42.0..sroa.42.0..sroa.42.8..i.i.i, null
  br i1 %.not.i.i.i, label %_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTQNtNtNtCsd9Lm8bEdjjY_5salsa5table4memo9MemoEntryRNtB25_13MemoEntryTypeEuNCINvNtBb_10filter_map15filter_map_foldTjB21_ETNtNtB29_5zalsa19MemoIngredientIndexINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxDNtB25_4MemoEL_EEuNCINvMs5_B25_NtB25_21MemoTableWithTypesMut10take_memosNCNvMs5_NtB29_8internedINtB6n_14IngredientImplNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE11clear_memos0E0NCINvNvB1e_8for_each4callB3W_NCB5p_s_0E0E0E0Cs8Xq8PKFYOms_3hir.exit.i, label %bb.g

bb.g:                                             ; preds = %_RNCINvMs5_NtNtCsd9Lm8bEdjjY_5salsa5table4memoNtB8_21MemoTableWithTypesMut10take_memosNCNvMs5_NtBc_8internedINtB1t_14IngredientImplNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE11clear_memos0E0Cs8Xq8PKFYOms_3hir.exit.i.i.i
  %.sroa.7.i.i.i.0..sroa.7.i.i.i.0..sroa.7.i.i.i.0..sroa.7.i.i.0..sroa.7.i.i.0..sroa.7.i.0..sroa.7.i.0..sroa.7.0..sroa.7.0..sroa.7.0.copyload.i.i.i = load ptr, ptr %.sroa.7.i.i.i, align 8, !noalias !67, !nonnull !8, !noundef !8 ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !68)
  %i.aq = load i32, ptr %i.x, align 8, !noalias !69, !noundef !8
  %i.ar = zext i32 %i.aq to i64                   ; 3 uses
  %i.as = load i64, ptr %i.y, align 8, !noalias !69, !noundef !8 ; 2 uses
  %i.at = icmp ugt i64 %i.as, %i.ar
  br i1 %i.at, label %bb.h, label %.invoke.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.au = load ptr, ptr %i.z, align 8, !noalias !69, !nonnull !8, !noundef !8
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %i.au, i64 %i.ar ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load i64, ptr %i.aw, align 8, !noalias !69, !noundef !8 ; 2 uses
  %i.ay = icmp ugt i64 %i.ax, %.sroa.0.0.i.i.i
  br i1 %i.ay, label %bb.i, label %.invoke.i.i.i.i.i.i

.invoke.i.i.i.i.i.i:                              ; preds = %bb.h, %bb.g
  %i.az = phi i64 [ %i.ar, %bb.g ], [ %.sroa.0.0.i.i.i, %bb.h ]
  %i.ba = phi i64 [ %i.as, %bb.g ], [ %i.ax, %bb.h ]
  %i.bb = phi ptr [ @32, %bb.g ], [ @33, %bb.h ]
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.az, i64 noundef %i.ba, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bb) #30
          to label %.cont.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !69

.cont.i.i.i.i.i.i:                                ; preds = %.invoke.i.i.i.i.i.i
  unreachable

.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.j, %bb.k, %.invoke.i.i.i.i.i.i
  %lpad.loopexit.split-lp41 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxDNtNtNtCsd9Lm8bEdjjY_5salsa5table4memo4MemoEL_EECs8Xq8PKFYOms_3hir(ptr nonnull %.sroa.42.i.i.i.0..sroa.42.i.i.i.0..sroa.42.i.i.i.0..sroa.42.i.i.0..sroa.42.i.i.0..sroa.42.i.0..sroa.42.i.0..sroa.42.0..sroa.42.0..sroa.42.8..i.i.i, ptr nonnull readonly align 8 dereferenceable(48) %.sroa.7.i.i.i.0..sroa.7.i.i.i.0..sroa.7.i.i.i.0..sroa.7.i.i.0..sroa.7.i.i.0..sroa.7.i.0..sroa.7.i.0..sroa.7.0..sroa.7.0..sroa.7.0.copyload.i.i.i) #28
          to label %common.resume.i.i.i unwind label %bb.r, !noalias !70

bb.i:                                             ; preds = %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !noalias !69, !nonnull !8, !noundef !8
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %.sroa.0.0.i.i.i
  %i.bf = load i32, ptr %i.be, align 4, !noalias !69, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !69
  %i.bg = load <2 x i32>, ptr %i.ab, align 4, !noalias !69
  store <2 x i32> %i.bg, ptr %i.c, align 8, !noalias !69
  store i32 %i.bf, ptr %i.ac, align 8, !noalias !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !69
  store ptr %i.c, ptr %i.b, align 8, !noalias !69
  %i.bh = load ptr, ptr %i.ad, align 8, !noalias !69, !noundef !8
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i.i.i.i, label %bb.j, label %bb.k, !prof !11

bb.j:                                             ; preds = %bb.k, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !69
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.7.i.i.i.0..sroa.7.i.i.i.0..sroa.7.i.i.i.0..sroa.7.i.i.0..sroa.7.i.i.0..sroa.7.i.0..sroa.7.i.0..sroa.7.0..sroa.7.0..sroa.7.0.copyload.i.i.i, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8, !invariant.load !8, !alias.scope !68, !noalias !71, !nonnull !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !69
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull align 8 dereferenceable(12) %i.c, i64 12, i1 false), !noalias !69
  invoke void %i.bj(ptr noundef nonnull %.sroa.42.i.i.i.0..sroa.42.i.i.i.0..sroa.42.i.i.i.0..sroa.42.i.i.0..sroa.42.i.i.0..sroa.42.i.0..sroa.42.i.0..sroa.42.0..sroa.42.0..sroa.42.8..i.i.i, ptr noundef nonnull align 8 %i.u, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(12) %i.a)
          to label %bb.l unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !69

bb.k:                                             ; preds = %bb.i
  invoke void @_RNvMs2_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa10event_cold(ptr noundef nonnull align 8 %i.u, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @12)
          to label %bb.j unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !69

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !69
  %i.bk = load ptr, ptr %.sroa.7.i.i.i.0..sroa.7.i.i.i.0..sroa.7.i.i.i.0..sroa.7.i.i.0..sroa.7.i.i.0..sroa.7.i.0..sroa.7.i.0..sroa.7.0..sroa.7.0..sroa.7.0.copyload.i.i.i, align 8, !invariant.load !8, !alias.scope !68, !noalias !71 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void %i.bk(ptr noundef nonnull %.sroa.42.i.i.i.0..sroa.42.i.i.i.0..sroa.42.i.i.i.0..sroa.42.i.i.0..sroa.42.i.i.0..sroa.42.i.0..sroa.42.i.0..sroa.42.0..sroa.42.0..sroa.42.8..i.i.i)
          to label %bb.n unwind label %bb.p, !noalias !69

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.7.i.i.i.0..sroa.7.i.i.i.0..sroa.7.i.i.i.0..sroa.7.i.i.0..sroa.7.i.i.0..sroa.7.i.0..sroa.7.i.0..sroa.7.0..sroa.7.0..sroa.7.0.copyload.i.i.i, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !range !12, !invariant.load !8, !alias.scope !68, !noalias !71 ; 2 uses
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTQNtNtNtCsd9Lm8bEdjjY_5salsa5table4memo9MemoEntryRNtB25_13MemoEntryTypeEuNCINvNtBb_10filter_map15filter_map_foldTjB21_ETNtNtB29_5zalsa19MemoIngredientIndexINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxDNtB25_4MemoEL_EEuNCINvMs5_B25_NtB25_21MemoTableWithTypesMut10take_memosNCNvMs5_NtB29_8internedINtB6n_14IngredientImplNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE11clear_memos0E0NCINvNvB1e_8for_each4callB3W_NCB5p_s_0E0E0E0Cs8Xq8PKFYOms_3hir.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.7.i.i.i.0..sroa.7.i.i.i.0..sroa.7.i.i.i.0..sroa.7.i.i.0..sroa.7.i.i.0..sroa.7.i.0..sroa.7.i.0..sroa.7.0..sroa.7.0..sroa.7.0.copyload.i.i.i, i64 16
  %i.bp = load i64, ptr %i.bo, align 8, !range !13, !invariant.load !8, !alias.scope !68, !noalias !71
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.42.i.i.i.0..sroa.42.i.i.i.0..sroa.42.i.i.i.0..sroa.42.i.i.0..sroa.42.i.i.0..sroa.42.i.0..sroa.42.i.0..sroa.42.0..sroa.42.0..sroa.42.8..i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.bm, i64 noundef range(i64 1, 536870913) %i.bp) #31, !noalias !69
end_hunk_0
begin_hunk_1_@_RINvMs9_NvNtCsgIpRO4v45SJ_7base_db17editioned_file_id1__NtB8_15EditionedFileId17from_span_file_idDNtNtCsd9Lm8bEdjjY_5salsa8database8DatabaseEL_NtCsdovh4xi6v3I_4span15EditionedFileIdECs8Xq8PKFYOms_3hir:bb.a
; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RINvMs9_NvNtCsgIpRO4v45SJ_7base_db17editioned_file_id1__NtB8_15EditionedFileId5fieldDNtNtCsd9Lm8bEdjjY_5salsa8database8DatabaseEL_ECs8Xq8PKFYOms_3hir(i32 noundef range(i32 1, 0) %0, i32 noundef %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(136) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !8, !nonnull !8
  %i.c = tail call noundef nonnull align 8 ptr %i.b(ptr noundef nonnull %2) #32 ; 2 uses
  %i.d = tail call noundef nonnull align 8 ptr @_RNvMs2_NvNtCsgIpRO4v45SJ_7base_db17editioned_file_id1__NtB7_15EditionedFileId10ingredient(ptr noundef nonnull align 8 %i.c)
  %i.e = tail call noundef nonnull align 4 ptr @_RNvMs5_NtCsd9Lm8bEdjjY_5salsa8internedINtB5_14IngredientImplNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE6fieldsCs8Xq8PKFYOms_3hir(ptr noundef nonnull align 8 %i.d, ptr noundef nonnull align 8 %i.c, i32 noundef %0, i32 noundef %1)
  %i.f = load i32, ptr %i.e, align 4, !noundef !8
  ret i32 %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8Xq8PKFYOms_3hir(i64 %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(96) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %.sroa.44.0.extract.shift = lshr i64 %0, 8      ; 2 uses
  %trunc = trunc i64 %0 to i8
  switch i8 %trunc, label %bb.b [
    i8 0, label %switch.lookup
    i8 1, label %bb.c
    i8 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %.sroa.44.0.extract.trunc = trunc i64 %.sroa.44.0.extract.shift to i8
  %i.c = tail call noundef i64 @_RNvMsm_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_5Float4size(i8 noundef %.sroa.44.0.extract.trunc)
  br label %_RNvMsl_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_7Integer4size.exit

bb.d:                                             ; preds = %bb.a
  %.sroa.6.0.extract.shift = lshr i64 %0, 32
  %.sroa.6.0.extract.trunc = trunc nuw i64 %.sroa.6.0.extract.shift to i32 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %.sroa.6.0.extract.trunc, ptr %i.b, align 4, !noalias !77
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.e = load i32, ptr %i.d, align 8, !alias.scope !77, !noundef !8
  %i.f = icmp eq i32 %i.e, %.sroa.6.0.extract.trunc
  br i1 %i.f, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !77, !nonnull !8, !noundef !8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !77, !noundef !8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.j, 5
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx
  %i.l = icmp eq i64 %i.j, 0
  br i1 %i.l, label %._crit_edge, label %.lr.ph

bb.f:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.k
  br i1 %i.n, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.f
  %i.o = phi ptr [ %i.m, %bb.f ], [ %i.h, %bb.e ] ; 3 uses
  %i.p = load i32, ptr %i.o, align 8, !noalias !78, !noundef !8
  %i.q = icmp eq i32 %i.p, %.sroa.6.0.extract.trunc
  br i1 %i.q, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8Xq8PKFYOms_3hir.exit.i, label %bb.f

bb.g:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 48
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8Xq8PKFYOms_3hir.exit.i: ; preds = %.lr.ph
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit

._crit_edge:                                      ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !77
  store ptr %i.b, ptr %i.a, align 8, !noalias !77
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs2C_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_12AddressSpaceNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.45.0..sroa_idx.i, align 8, !noalias !77
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @34, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #30, !noalias !77
  unreachable

_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit: ; preds = %bb.g, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8Xq8PKFYOms_3hir.exit.i
  %.sroa.0.0.in.i = phi ptr [ %i.r, %bb.g ], [ %i.s, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8Xq8PKFYOms_3hir.exit.i ]
  %.sroa.0.0.i6 = load i64, ptr %.sroa.0.0.in.i, align 8, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvMsl_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_7Integer4size.exit

switch.lookup:                                    ; preds = %bb.a
  %i.t = and i64 %.sroa.44.0.extract.shift, 255
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8Xq8PKFYOms_3hir, i64 %i.t
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  br label %_RNvMsl_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_7Integer4size.exit

_RNvMsl_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_7Integer4size.exit: ; preds = %switch.lookup, %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit, %bb.c
  %.sroa.05.0 = phi i64 [ %.sroa.0.0.i6, %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit ], [ %i.c, %bb.c ], [ %switch.ext, %switch.lookup ]
  ret i64 %.sroa.05.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i128 @_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8Xq8PKFYOms_3hir(ptr noalias nofree noundef readonly align 16 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(96) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.0.0.copyload = load i64, ptr %i.c, align 8 ; 3 uses
  %i.d = load i128, ptr %0, align 16, !noundef !8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i128, ptr %i.e, align 16, !noundef !8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86)
  %.sroa.44.0.extract.shift.i = lshr i64 %.sroa.0.0.copyload, 8 ; 2 uses
  %trunc.i = trunc i64 %.sroa.0.0.copyload to i8
  switch i8 %trunc.i, label %bb.b [
    i8 0, label %switch.lookup
    i8 1, label %bb.c
    i8 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %.sroa.44.0.extract.trunc.i = trunc i64 %.sroa.44.0.extract.shift.i to i8
  %i.g = tail call noundef i64 @_RNvMsm_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_5Float4size(i8 noundef %.sroa.44.0.extract.trunc.i), !noalias !86
  br label %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8Xq8PKFYOms_3hir.exit

bb.d:                                             ; preds = %bb.a
  %.sroa.6.0.extract.shift.i = lshr i64 %.sroa.0.0.copyload, 32
  %.sroa.6.0.extract.trunc.i = trunc nuw i64 %.sroa.6.0.extract.shift.i to i32 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !86
  store i32 %.sroa.6.0.extract.trunc.i, ptr %i.b, align 4, !noalias !88
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.i = load i32, ptr %i.h, align 8, !alias.scope !88, !noundef !8
  %i.j = icmp eq i32 %i.i, %.sroa.6.0.extract.trunc.i
  br i1 %i.j, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !88, !nonnull !8, !noundef !8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !88, !noundef !8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.n, 5
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx
  %i.p = icmp eq i64 %i.n, 0
  br i1 %i.p, label %._crit_edge, label %.lr.ph

bb.f:                                             ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.o
  br i1 %i.r, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.f
  %i.s = phi ptr [ %i.q, %bb.f ], [ %i.l, %bb.e ] ; 3 uses
  %i.t = load i32, ptr %i.s, align 8, !noalias !89, !noundef !8
  %i.u = icmp eq i32 %i.t, %.sroa.6.0.extract.trunc.i
  br i1 %i.u, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8Xq8PKFYOms_3hir.exit.i.i, label %bb.f

bb.g:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 48
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8Xq8PKFYOms_3hir.exit.i.i: ; preds = %.lr.ph
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i

._crit_edge:                                      ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !88
  store ptr %i.b, ptr %i.a, align 8, !noalias !88
  %.sroa.45.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs2C_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_12AddressSpaceNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.45.0..sroa_idx.i.i, align 8, !noalias !88
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @34, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #30, !noalias !88
  unreachable

_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i: ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8Xq8PKFYOms_3hir.exit.i.i, %bb.g
  %.sroa.0.0.in.i.i = phi ptr [ %i.v, %bb.g ], [ %i.w, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8Xq8PKFYOms_3hir.exit.i.i ]
  %.sroa.0.0.i6.i = load i64, ptr %.sroa.0.0.in.i.i, align 8, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !86
  br label %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8Xq8PKFYOms_3hir.exit

_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8Xq8PKFYOms_3hir.exit: ; preds = %bb.c, %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i
  %.sroa.05.0.i = phi i64 [ %.sroa.0.0.i6.i, %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i ], [ %i.g, %bb.c ] ; 4 uses
  %i.x = icmp ugt i64 %.sroa.05.0.i, 2305843009213693951
  br i1 %i.x, label %bb.i, label %bb.h, !prof !90

bb.h:                                             ; preds = %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8Xq8PKFYOms_3hir.exit
  %.neg4 = mul nsw i64 %.sroa.05.0.i, -8
  %i.y = icmp samesign ult i64 %.sroa.05.0.i, 17
  br i1 %i.y, label %.thread, label %bb.j, !prof !91

bb.i:                                             ; preds = %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8Xq8PKFYOms_3hir.exit
  tail call void @_RNvNvMs9_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_4Size4bits8overflow(i64 noundef %.sroa.05.0.i) #33
  unreachable

bb.j:                                             ; preds = %bb.h
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 36, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #30
  unreachable

switch.lookup:                                    ; preds = %bb.a
  %i.z = and i64 %.sroa.44.0.extract.shift.i, 255
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8Xq8PKFYOms_3hir, i64 %i.z
  %switch.load = load i64, ptr %switch.gep, align 8
  br label %.thread

.thread:                                          ; preds = %switch.lookup, %bb.h
  %.neg5 = phi i64 [ %.neg4, %bb.h ], [ %switch.load, %switch.lookup ]
  %i.aa = and i64 %.neg5, 120
  %i.ab = zext nneg i64 %i.aa to i128
  %i.ac = lshr i128 -1, %i.ab
  %.neg = xor i128 %i.f, -1
  %i.ad = add i128 %i.d, %.neg
  %i.ae = and i128 %i.ac, %i.ad
  ret i128 %i.ae
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvNtCscFGNKo4Sl5v_9itertools11groupbylazy3newRNtCsileJQcQObtj_7hir_def7MacroIdINtNtNtCshzWfHUSfYae_4core5slice4iter4IterTNtNtCs33K2ylI4knu_10hir_expand4name4NameBK_INtCs83ee1IJTiSq_6either6EitherNtB21_11MacroCallIdNtBM_19BuiltinDeriveImplIdEEENCNvMNtCs8Xq8PKFYOms_3hir15source_analyzerNtB40_14SourceAnalyzer12resolve_pathsb_0EB42_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) initializes((0, 97), (104, 112)) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %1, ptr %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %2, ptr %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.8.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.4.sroa.13.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.sroa.8.0..sroa.4.0..sroa_idx.sroa_idx, i8 0, i64 40, i1 false)
  store i64 -1, ptr %.sroa.4.sroa.13.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.14.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 0, ptr %.sroa.4.sroa.14.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 0, ptr %i.a, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCs3gqD4ldeioo_8indexmap6BucketNtNtCs33K2ylI4knu_10hir_expand4name4NameINtCsjpcu9PwIgok_8smallvec8SmallVecANtNtCsileJQcQObtj_7hir_def8resolver8ScopeDefj1_EEECs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %.val = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = ptrtoint ptr %.val to i64
  %i.d = and i64 %i.c, 1
  %.not.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECs8Xq8PKFYOms_3hir.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %.val, i64 -1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.e) ]
  %i.f = invoke noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE14offset_of_dataCs8Xq8PKFYOms_3hir(ptr noundef nonnull %i.e)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.b
  %i.g = sub nsw i64 0, %i.f
  %i.h = getelementptr inbounds i8, ptr %i.e, i64 %i.g ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.h, ptr %i.b, align 8
  %i.i = load atomic i64, ptr %i.h acquire, align 8
  %i.j = icmp eq i64 %i.i, 2
  br i1 %i.j, label %bb.c, label %.noexc1, !prof !14

bb.c:                                             ; preds = %.noexc
  invoke void @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol9drop_slow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
          to label %.noexc1 unwind label %bb.d

.noexc1:                                          ; preds = %bb.c, %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.h, ptr %i.a, align 8
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE10drop_innerCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc2 unwind label %bb.d

.noexc2:                                          ; preds = %.noexc1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECs8Xq8PKFYOms_3hir.exit

bb.d:                                             ; preds = %.noexc1, %bb.c, %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsileJQcQObtj_7hir_def8resolver8ScopeDefj1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecANtNtCsileJQcQObtj_7hir_def8resolver8ScopeDefj1_EECs8Xq8PKFYOms_3hir.exit unwind label %bb.e

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECs8Xq8PKFYOms_3hir.exit: ; preds = %.noexc2, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsileJQcQObtj_7hir_def8resolver8ScopeDefj1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.m)
  ret void

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecANtNtCsileJQcQObtj_7hir_def8resolver8ScopeDefj1_EECs8Xq8PKFYOms_3hir.exit: ; preds = %bb.d
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameEECs8Xq8PKFYOms_3hir(ptr %.0.val) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = ptrtoint ptr %.0.val to i64
  %i.d = and i64 %i.c, 1
  %.not.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECs8Xq8PKFYOms_3hir.exit, label %bb.b

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECs8Xq8PKFYOms_3hir.exit: ; preds = %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %.0.val, i64 -1    ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.e) ]
  %i.f = tail call noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE14offset_of_dataCs8Xq8PKFYOms_3hir(ptr noundef nonnull %i.e)
  %i.g = sub nsw i64 0, %i.f
  %i.h = getelementptr inbounds i8, ptr %i.e, i64 %i.g ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.h, ptr %i.b, align 8
  %i.i = load atomic i64, ptr %i.h acquire, align 8
  %i.j = icmp eq i64 %i.i, 2
  br i1 %i.j, label %bb.c, label %bb.d, !prof !14

bb.c:                                             ; preds = %bb.b
  call void @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol9drop_slow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.h, ptr %i.a, align 8
  call void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE10drop_innerCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECs8Xq8PKFYOms_3hir.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs39E2wp1vf7X_6intern6symbol6SymbolEECs8Xq8PKFYOms_3hir(ptr %.0.val) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = ptrtoint ptr %.0.val to i64
  %i.d = and i64 %i.c, 1
  %.not.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECs8Xq8PKFYOms_3hir.exit, label %bb.b

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECs8Xq8PKFYOms_3hir.exit: ; preds = %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %.0.val, i64 -1    ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.e) ]
  %i.f = tail call noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE14offset_of_dataCs8Xq8PKFYOms_3hir(ptr noundef nonnull %i.e)
  %i.g = sub nsw i64 0, %i.f
  %i.h = getelementptr inbounds i8, ptr %i.e, i64 %i.g ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.h, ptr %i.b, align 8
  %i.i = load atomic i64, ptr %i.h acquire, align 8
  %i.j = icmp eq i64 %i.i, 2
  br i1 %i.j, label %bb.c, label %bb.d, !prof !14

bb.c:                                             ; preds = %bb.b
  call void @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol9drop_slow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.h, ptr %i.a, align 8
  call void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE10drop_innerCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECs8Xq8PKFYOms_3hir.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs8Xq8PKFYOms_3hir4TypeEEB1a_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCs8Xq8PKFYOms_3hir4TypeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCs8Xq8PKFYOms_3hir4TypeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtCs8Xq8PKFYOms_3hir4TypeEEB1h_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCs8Xq8PKFYOms_3hir4TypeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtCs8Xq8PKFYOms_3hir4TypeEEB1h_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyEECs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
end_hunk_1
