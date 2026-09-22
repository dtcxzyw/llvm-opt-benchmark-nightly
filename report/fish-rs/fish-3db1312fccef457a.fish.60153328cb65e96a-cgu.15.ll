Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.15?download=true
inline.NumInlined: 2884
inline.NumDeleted: 1261
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [77 x i8] c"/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7/library/alloc/src/vec/mod.rs\00", align 1
@1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"L\00\00\00\00\00\00\00\DD\0B\00\00$\00\00\00" }>, align 8
@2 = private unnamed_addr constant [17 x i8] c"capacity overflow", align 1
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"L\00\00\00\00\00\00\005\10\00\00\0D\00\00\00" }>, align 8
@4 = private unnamed_addr constant [2 x i8] c"\C0\00", align 1
@5 = private unnamed_addr constant [39 x i8] c"assertion failed: c.rank() >= best_rank", align 1
@6 = private unnamed_addr constant [21 x i8] c"src/reader/reader.rs\00", align 1
@7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @6, [16 x i8] c"\14\00\00\00\00\00\00\00\82\1B\00\00\11\00\00\00" }>, align 8
@8 = private unnamed_addr constant [2 x i8] c"\04\05", align 1
@_RNvNtNtCs8frGy5WneL6_4fish4flog10categories18proc_reap_external = external global { { i64, [2 x i64] }, { ptr, i64 }, { { { i8 } } }, [7 x i8] }
@9 = private unnamed_addr constant [30 x i8] c"Reaped disowned PID or PGID %d", align 1
@10 = private unnamed_addr constant <{ [13 x i8], [3 x i8] }> <{ [13 x i8] c".\00\00\00\FF\FF\FF\FF\00\00\00\00\00", [3 x i8] undef }>, align 4
@11 = private unnamed_addr constant [12 x i8] c"src/proc.rs\00", align 1
@12 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @11, [16 x i8] c"\0B\00\00\00\00\00\00\00\A1\04\00\00\15\00\00\00" }>, align 8
@13 = private unnamed_addr constant [36 x i8] c"assertion failed: c.is_ascii_digit()", align 1
@14 = private unnamed_addr constant [17 x i8] c"src/tokenizer.rs\00", align 1
@15 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @14, [16 x i8] c"\10\00\00\00\00\00\00\00\8C\04\00\00\0D\00\00\00" }>, align 8
@16 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00", ptr @_RNvXsw_NtCslLGyqsphxMB_10widestring5errorNtB5_16DecodeUtf32ErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt }>, align 8
@17 = private unnamed_addr constant [43 x i8] c"called `Result::unwrap()` on an `Err` value", align 1
@18 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs3_NtCs1HV6ixfL8cZ_11fish_printf11printf_implNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt }>, align 8
@19 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsK_NtCs3oUPovFnLWP_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt }>, align 8
@20 = private unnamed_addr constant [60 x i8] c"internal error: entered unreachable code: invalid Once state", align 1
@21 = private unnamed_addr constant [87 x i8] c"/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7/library/std/src/sys/sync/once/futex.rs\00", align 1
@22 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @21, [16 x i8] c"V\00\00\00\00\00\00\00`\00\00\00\12\00\00\00" }>, align 8
@23 = private unnamed_addr constant [20 x i8] c"src/builtins/pwd.rs\00", align 1
@24 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @23, [16 x i8] c"\13\00\00\00\00\00\00\00\10\00\00\00\0F\00\00\00" }>, align 8
@25 = private unnamed_addr constant [12 x i8] c"L\00\00\00P\00\00\00h\00\00\00", align 4
@26 = private unnamed_addr constant [16 x i8] c"h\00\00\00e\00\00\00l\00\00\00p\00\00\00", align 4
@27 = private unnamed_addr constant [28 x i8] c"l\00\00\00o\00\00\00g\00\00\00i\00\00\00c\00\00\00a\00\00\00l\00\00\00", align 4
@28 = private unnamed_addr constant [32 x i8] c"p\00\00\00h\00\00\00y\00\00\00s\00\00\00i\00\00\00c\00\00\00a\00\00\00l\00\00\00", align 4
@29 = private unnamed_addr constant <{ ptr, [13 x i8], [3 x i8], ptr, [13 x i8], [3 x i8], ptr, [13 x i8], [3 x i8] }> <{ ptr @26, [13 x i8] c"\04\00\00\00\00\00\00\00h\00\00\00\00", [3 x i8] undef, ptr @27, [13 x i8] c"\07\00\00\00\00\00\00\00L\00\00\00\00", [3 x i8] undef, ptr @28, [13 x i8] c"\08\00\00\00\00\00\00\00P\00\00\00\00", [3 x i8] undef }>, align 8
@30 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @23, [16 x i8] c"\13\00\00\00\00\00\00\00\1D\00\00\00H\00\00\00" }>, align 8
@31 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @23, [16 x i8] c"\13\00\00\00\00\00\00\00\1D\00\00\00C\00\00\00" }>, align 8
@32 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @23, [16 x i8] c"\13\00\00\00\00\00\00\00!\00\00\00C\00\00\00" }>, align 8
@33 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @23, [16 x i8] c"\13\00\00\00\00\00\00\00!\00\00\00>\00\00\00" }>, align 8
@34 = private unnamed_addr constant [32 x i8] c"unexpected retval from WGetopter", align 1
@35 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @23, [16 x i8] c"\13\00\00\00\00\00\00\00$\00\00\00\12\00\00\00" }>, align 8
@36 = private unnamed_addr constant [12 x i8] c"P\00\00\00W\00\00\00D\00\00\00", align 4
@37 = private unnamed_addr constant [52 x i8] c"%\00\00\00s\00\00\00 \00\00\00f\00\00\00a\00\00\00i\00\00\00l\00\00\00e\00\00\00d\00\00\00:\00\00\00 \00\00\00%\00\00\00s\00\00\00", align 4
@38 = private unnamed_addr constant [8 x i8] c"realpath", align 1
@39 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @23, [16 x i8] c"\13\00\00\00\00\00\00\007\00\00\00\0D\00\00\00" }>, align 8
@40 = private unnamed_addr constant [116 x i8] c"e\00\00\00x\00\00\00p\00\00\00e\00\00\00c\00\00\00t\00\00\00e\00\00\00d\00\00\00 \00\00\00%\00\00\00d\00\00\00 \00\00\00a\00\00\00r\00\00\00g\00\00\00u\00\00\00m\00\00\00e\00\00\00n\00\00\00t\00\00\00s\00\00\00;\00\00\00 \00\00\00g\00\00\00o\00\00\00t\00\00\00 \00\00\00%\00\00\00d\00\00\00", align 4
@41 = private unnamed_addr constant <{ [8 x i8], ptr, [8 x i8] }> <{ [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF", ptr @40, [8 x i8] c"\1D\00\00\00\00\00\00\00" }>, align 8
@42 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @23, [16 x i8] c"\13\00\00\00\00\00\00\00)\00\00\00\09\00\00\00" }>, align 8
@43 = private unnamed_addr constant [1 x i8] c"-", align 1
@44 = private unnamed_addr constant [6 x i8] c"%s0x%x", align 1
@45 = private unnamed_addr constant [21 x i8] c"src/builtins/math.rs\00", align 1
@46 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @45, [16 x i8] c"\14\00\00\00\00\00\00\00\A7\00\00\00\10\00\00\00" }>, align 8
@47 = private unnamed_addr constant [5 x i8] c"%s0%o", align 1
@48 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @45, [16 x i8] c"\14\00\00\00\00\00\00\00\AF\00\00\00\10\00\00\00" }>, align 8
@49 = private unnamed_addr constant [4 x i8] c"%.*f", align 1
@50 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @45, [16 x i8] c"\14\00\00\00\00\00\00\00\C6\00\00\00\10\00\00\00" }>, align 8
@51 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @45, [16 x i8] c"\14\00\00\00\00\00\00\00\C9\00\00\00\13\00\00\00" }>, align 8
@52 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @45, [16 x i8] c"\14\00\00\00\00\00\00\00\CE\00\00\00\1B\00\00\00" }>, align 8
@53 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @45, [16 x i8] c"\14\00\00\00\00\00\00\00\D0\00\00\00!\00\00\00" }>, align 8
@54 = private unnamed_addr constant [16 x i8] c"m\00\00\00a\00\00\00t\00\00\00h\00\00\00", align 4
@55 = private unnamed_addr constant [32 x i8] c"+\00\00\00h\00\00\00s\00\00\00:\00\00\00b\00\00\00:\00\00\00m\00\00\00:\00\00\00", align 4
@56 = private unnamed_addr constant [20 x i8] c"s\00\00\00c\00\00\00a\00\00\00l\00\00\00e\00\00\00", align 4
@57 = private unnamed_addr constant [16 x i8] c"b\00\00\00a\00\00\00s\00\00\00e\00\00\00", align 4
@58 = private unnamed_addr constant [40 x i8] c"s\00\00\00c\00\00\00a\00\00\00l\00\00\00e\00\00\00-\00\00\00m\00\00\00o\00\00\00d\00\00\00e\00\00\00", align 4
@59 = private unnamed_addr constant <{ ptr, [13 x i8], [3 x i8], ptr, [13 x i8], [3 x i8], ptr, [13 x i8], [3 x i8], ptr, [13 x i8], [3 x i8] }> <{ ptr @56, [13 x i8] c"\05\00\00\00\00\00\00\00s\00\00\00\01", [3 x i8] undef, ptr @57, [13 x i8] c"\04\00\00\00\00\00\00\00b\00\00\00\01", [3 x i8] undef, ptr @26, [13 x i8] c"\04\00\00\00\00\00\00\00h\00\00\00\00", [3 x i8] undef, ptr @58, [13 x i8] c"\0A\00\00\00\00\00\00\00m\00\00\00\01", [3 x i8] undef }>, align 8
@60 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @45, [16 x i8] c"\14\00\00\00\00\00\00\00>\00\00\00(\00\00\00" }>, align 8
@61 = private unnamed_addr constant [3 x i8] c"max", align 1
@62 = private unnamed_addr constant [68 x i8] c"%\00\00\00s\00\00\00:\00\00\00 \00\00\00i\00\00\00n\00\00\00v\00\00\00a\00\00\00l\00\00\00i\00\00\00d\00\00\00 \00\00\00s\00\00\00c\00\00\00a\00\00\00l\00\00\00e\00\00\00", align 4
@63 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @45, [16 x i8] c"\14\00\00\00\00\00\00\00F\00\00\00\19\00\00\00" }>, align 8
@64 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @45, [16 x i8] c"\14\00\00\00\00\00\00\00P\00\00\00(\00\00\00" }>, align 8
@65 = private unnamed_addr constant [64 x i8] c"%\00\00\00s\00\00\00:\00\00\00 \00\00\00i\00\00\00n\00\00\00v\00\00\00a\00\00\00l\00\00\00i\00\00\00d\00\00\00 \00\00\00m\00\00\00o\00\00\00d\00\00\00e\00\00\00", align 4
@66 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @45, [16 x i8] c"\14\00\00\00\00\00\00\00Z\00\00\00\15\00\00\00" }>, align 8
@67 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @45, [16 x i8] c"\14\00\00\00\00\00\00\00a\00\00\00(\00\00\00" }>, align 8
@68 = private unnamed_addr constant [3 x i8] c"hex", align 1
@69 = private unnamed_addr constant [5 x i8] c"octal", align 1
@70 = private unnamed_addr constant [88 x i8] c"%\00\00\00s\00\00\00:\00\00\00 \00\00\00i\00\00\00n\00\00\00v\00\00\00a\00\00\00l\00\00\00i\00\00\00d\00\00\00 \00\00\00b\00\00\00a\00\00\00s\00\00\00e\00\00\00 \00\00\00v\00\00\00a\00\00\00l\00\00\00u\00\00\00e\00\00\00", align 4
@71 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @45, [16 x i8] c"\14\00\00\00\00\00\00\00i\00\00\00\19\00\00\00" }>, align 8
@72 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @45, [16 x i8] c"\14\00\00\00\00\00\00\00{\00\00\00\1A\00\00\00" }>, align 8
@73 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @45, [16 x i8] c"\14\00\00\00\00\00\00\00{\00\00\00\15\00\00\00" }>, align 8
@74 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @45, [16 x i8] c"\14\00\00\00\00\00\00\00\85\00\00\00\1A\00\00\00" }>, align 8
@75 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @45, [16 x i8] c"\14\00\00\00\00\00\00\00\85\00\00\00\15\00\00\00" }>, align 8
@76 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @45, [16 x i8] c"\14\00\00\00\00\00\00\00\8D\00\00\00\22\00\00\00" }>, align 8
@77 = private unnamed_addr constant [38 x i8] c"unexpected retval from wgeopter.next()", align 1
@78 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @45, [16 x i8] c"\14\00\00\00\00\00\00\00\90\00\00\00\11\00\00\00" }>, align 8
@79 = private unnamed_addr constant [120 x i8] c"i\00\00\00n\00\00\00v\00\00\00a\00\00\00l\00\00\00i\00\00\00d\00\00\00 \00\00\00o\00\00\00p\00\00\00t\00\00\00i\00\00\00o\00\00\00n\00\00\00 \00\00\00c\00\00\00o\00\00\00m\00\00\00b\00\00\00i\00\00\00n\00\00\00a\00\00\00t\00\00\00i\00\00\00o\00\00\00n\00\00\00,\00\00\00 \00\00\00%\00\00\00s\00\00\00", align 4
@80 = private unnamed_addr constant <{ [8 x i8], ptr, [8 x i8] }> <{ [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF", ptr @79, [8 x i8] c"\1E\00\00\00\00\00\00\00" }>, align 8
@81 = private unnamed_addr constant [43 x i8] c"non-zero scale value only valid for base 10", align 1
@82 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @45, [16 x i8] c"\14\00\00\00\00\00\00\00\96\00\00\00\09\00\00\00" }>, align 8
@83 = private unnamed_addr constant [116 x i8] c"R\00\00\00e\00\00\00s\00\00\00u\00\00\00l\00\00\00t\00\00\00 \00\00\00m\00\00\00a\00\00\00g\00\00\00n\00\00\00i\00\00\00t\00\00\00u\00\00\00d\00\00\00e\00\00\00 \00\00\00i\00\00\00s\00\00\00 \00\00\00t\00\00\00o\00\00\00o\00\00\00 \00\00\00l\00\00\00a\00\00\00r\00\00\00g\00\00\00e\00\00\00", align 4
@84 = private unnamed_addr constant [88 x i8] c"R\00\00\00e\00\00\00s\00\00\00u\00\00\00l\00\00\00t\00\00\00 \00\00\00i\00\00\00s\00\00\00 \00\00\00n\00\00\00o\00\00\00t\00\00\00 \00\00\00a\00\00\00 \00\00\00n\00\00\00u\00\00\00m\00\00\00b\00\00\00e\00\00\00r\00\00\00", align 4
@85 = private unnamed_addr constant [72 x i8] c"R\00\00\00e\00\00\00s\00\00\00u\00\00\00l\00\00\00t\00\00\00 \00\00\00i\00\00\00s\00\00\00 \00\00\00i\00\00\00n\00\00\00f\00\00\00i\00\00\00n\00\00\00i\00\00\00t\00\00\00e\00\00\00", align 4
@86 = private unnamed_addr constant [36 x i8] c"E\00\00\00r\00\00\00r\00\00\00o\00\00\00r\00\00\00:\00\00\00 \00\00\00%\00\00\00s\00\00\00", align 4
@87 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @45, [16 x i8] c"\14\00\00\00\00\00\00\00\FB\00\00\00\1B\00\00\00" }>, align 8
@88 = private unnamed_addr constant [6 x i8] c"\0A'%s'\0A", align 1
@89 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @45, [16 x i8] c"\14\00\00\00\00\00\00\00\FC\00\00\00'\00\00\00" }>, align 8
@90 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @45, [16 x i8] c"\14\00\00\00\00\00\00\00\02\01\00\00\1D\00\00\00" }>, align 8
@91 = private unnamed_addr constant [5 x i8] c"\0A'%s'", align 1
@92 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @45, [16 x i8] c"\14\00\00\00\00\00\00\00\03\01\00\00)\00\00\00" }>, align 8
@93 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @45, [16 x i8] c"\14\00\00\00\00\00\00\00\04\01\00\009\00\00\00" }>, align 8
@94 = private unnamed_addr constant [4 x i8] c"\0A%s^", align 1
@95 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @45, [16 x i8] c"\14\00\00\00\00\00\00\00\09\01\00\00-\00\00\00" }>, align 8
@96 = private unnamed_addr constant [7 x i8] c"\0A%s^%s^", align 1
@97 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @45, [16 x i8] c"\14\00\00\00\00\00\00\00\07\01\00\00-\00\00\00" }>, align 8
@98 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @45, [16 x i8] c"\14\00\00\00\00\00\00\00\17\01\00\00\0F\00\00\00" }>, align 8
@99 = private unnamed_addr constant [128 x i8] c"e\00\00\00x\00\00\00p\00\00\00e\00\00\00c\00\00\00t\00\00\00e\00\00\00d\00\00\00 \00\00\00>\00\00\00=\00\00\00 \00\00\00%\00\00\00d\00\00\00 \00\00\00a\00\00\00r\00\00\00g\00\00\00u\00\00\00m\00\00\00e\00\00\00n\00\00\00t\00\00\00s\00\00\00;\00\00\00 \00\00\00g\00\00\00o\00\00\00t\00\00\00 \00\00\00%\00\00\00d\00\00\00", align 4
@100 = private unnamed_addr constant <{ [8 x i8], ptr, [8 x i8] }> <{ [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF", ptr @99, [8 x i8] c" \00\00\00\00\00\00\00" }>, align 8
@101 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @45, [16 x i8] c"\14\00\00\00\00\00\00\00)\01\00\00\09\00\00\00" }>, align 8
@102 = private unnamed_addr constant [21 x i8] c"src/builtins/wait.rs\00", align 1
@103 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @102, [16 x i8] c"\14\00\00\00\00\00\00\00\8E\00\00\00\0F\00\00\00" }>, align 8
@104 = private unnamed_addr constant [8 x i8] c"n\00\00\00h\00\00\00", align 4
@105 = private unnamed_addr constant [12 x i8] c"a\00\00\00n\00\00\00y\00\00\00", align 4
@106 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @102, [16 x i8] c"\14\00\00\00\00\00\00\00\A9\00\00\00\1A\00\00\00" }>, align 8
@107 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @102, [16 x i8] c"\14\00\00\00\00\00\00\00\A9\00\00\00\15\00\00\00" }>, align 8
@108 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @102, [16 x i8] c"\14\00\00\00\00\00\00\00\B3\00\00\00\1A\00\00\00" }>, align 8
@109 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @102, [16 x i8] c"\14\00\00\00\00\00\00\00\B3\00\00\00\15\00\00\00" }>, align 8
@110 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @102, [16 x i8] c"\14\00\00\00\00\00\00\00\B9\00\00\00C\00\00\00" }>, align 8
@111 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @102, [16 x i8] c"\14\00\00\00\00\00\00\00\B9\00\00\00>\00\00\00" }>, align 8
@112 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @102, [16 x i8] c"\14\00\00\00\00\00\00\00\BD\00\00\00\11\00\00\00" }>, align 8
@113 = private unnamed_addr constant [196 x i8] c"C\00\00\00o\00\00\00u\00\00\00l\00\00\00d\00\00\00 \00\00\00n\00\00\00o\00\00\00t\00\00\00 \00\00\00f\00\00\00i\00\00\00n\00\00\00d\00\00\00 \00\00\00c\00\00\00h\00\00\00i\00\00\00l\00\00\00d\00\00\00 \00\00\00p\00\00\00r\00\00\00o\00\00\00c\00\00\00e\00\00\00s\00\00\00s\00\00\00e\00\00\00s\00\00\00 \00\00\00w\00\00\00i\00\00\00t\00\00\00h\00\00\00 \00\00\00t\00\00\00h\00\00\00e\00\00\00 \00\00\00n\00\00\00a\00\00\00m\00\00\00e\00\00\00 \00\00\00'\00\00\00%\00\00\00s\00\00\00'\00\00\00", align 4
@114 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @102, [16 x i8] c"\14\00\00\00\00\00\00\00\DD\00\00\00\11\00\00\00" }>, align 8
@115 = private unnamed_addr constant [164 x i8] c"C\00\00\00o\00\00\00u\00\00\00l\00\00\00d\00\00\00 \00\00\00n\00\00\00o\00\00\00t\00\00\00 \00\00\00f\00\00\00i\00\00\00n\00\00\00d\00\00\00 \00\00\00a\00\00\00 \00\00\00j\00\00\00o\00\00\00b\00\00\00 \00\00\00w\00\00\00i\00\00\00t\00\00\00h\00\00\00 \00\00\00p\00\00\00r\00\00\00o\00\00\00c\00\00\00e\00\00\00s\00\00\00s\00\00\00 \00\00\00I\00\00\00D\00\00\00 \00\00\00'\00\00\00%\00\00\00d\00\00\00'\00\00\00", align 4
@116 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @102, [16 x i8] c"\14\00\00\00\00\00\00\00\D6\00\00\00\11\00\00\00" }>, align 8
@117 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @102, [16 x i8] c"\14\00\00\00\00\00\00\00\D0\00\00\00\16\00\00\00" }>, align 8
@118 = private unnamed_addr constant [25 x i8] c"src/builtins/realpath.rs\00", align 1
@119 = private unnamed_addr constant [12 x i8] c"+\00\00\00h\00\00\00s\00\00\00", align 4
@120 = private unnamed_addr constant [44 x i8] c"n\00\00\00o\00\00\00-\00\00\00s\00\00\00y\00\00\00m\00\00\00l\00\00\00i\00\00\00n\00\00\00k\00\00\00s\00\00\00", align 4
@121 = private unnamed_addr constant <{ ptr, [13 x i8], [3 x i8], ptr, [13 x i8], [3 x i8] }> <{ ptr @120, [13 x i8] c"\0B\00\00\00\00\00\00\00s\00\00\00\00", [3 x i8] undef, ptr @26, [13 x i8] c"\04\00\00\00\00\00\00\00h\00\00\00\00", [3 x i8] undef }>, align 8
@122 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @118, [16 x i8] c"\18\00\00\00\00\00\00\00)\00\00\00K\00\00\00" }>, align 8
@123 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @118, [16 x i8] c"\18\00\00\00\00\00\00\00)\00\00\00F\00\00\00" }>, align 8
@124 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @118, [16 x i8] c"\18\00\00\00\00\00\00\00-\00\00\00H\00\00\00" }>, align 8
@125 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @118, [16 x i8] c"\18\00\00\00\00\00\00\00-\00\00\00C\00\00\00" }>, align 8
@126 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @118, [16 x i8] c"\18\00\00\00\00\00\00\001\00\00\00C\00\00\00" }>, align 8
@127 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @118, [16 x i8] c"\18\00\00\00\00\00\00\001\00\00\00>\00\00\00" }>, align 8
@128 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @118, [16 x i8] c"\18\00\00\00\00\00\00\004\00\00\00\12\00\00\00" }>, align 8
@129 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @118, [16 x i8] c"\18\00\00\00\00\00\00\00?\00\00\00\0F\00\00\00" }>, align 8
@130 = private unnamed_addr constant [4 x i8] c"\0A\00\00\00", align 4
@131 = private unnamed_addr constant [60 x i8] c"I\00\00\00n\00\00\00v\00\00\00a\00\00\00l\00\00\00i\00\00\00d\00\00\00 \00\00\00a\00\00\00r\00\00\00g\00\00\00:\00\00\00 \00\00\00%\00\00\00s\00\00\00", align 4
@132 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @118, [16 x i8] c"\18\00\00\00\00\00\00\00Z\00\00\00\15\00\00\00" }>, align 8
@133 = private unnamed_addr constant [24 x i8] c"%\00\00\00s\00\00\00:\00\00\00 \00\00\00%\00\00\00s\00\00\00", align 4
@134 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @118, [16 x i8] c"\18\00\00\00\00\00\00\00V\00\00\00\15\00\00\00" }>, align 8
@135 = private unnamed_addr constant [4 x i8] c"/\00\00\00", align 4
@136 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @118, [16 x i8] c"\18\00\00\00\00\00\00\00i\00\00\00\11\00\00\00" }>, align 8
@137 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @118, [16 x i8] c"\18\00\00\00\00\00\00\00N\00\00\00\16\00\00\00" }>, align 8
@_RNvNtNtCs7EgfsMK6071_8foldhash4seed6global19GLOBAL_SEED_STORAGE = external global { { { [6 x i64] } }, { { { i8 } } }, [7 x i8] }
@138 = private unnamed_addr constant [15 x i8] c"BadFormatString", align 1
@139 = private unnamed_addr constant [10 x i8] c"MissingArg", align 1
@140 = private unnamed_addr constant [8 x i8] c"ExtraArg", align 1
@141 = private unnamed_addr constant [10 x i8] c"BadArgType", align 1
@142 = private unnamed_addr constant [8 x i8] c"Overflow", align 1
@143 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtB6_5ErrorNtB6_5Debug3fmtCs8frGy5WneL6_4fish }>, align 8
@144 = private unnamed_addr constant [3 x i8] c"Fmt", align 1
@145 = private unnamed_addr constant [105 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/widestring-1.2.1/src/utfstr/iter.rs\00", align 1
@146 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @145, [16 x i8] c"h\00\00\00\00\00\00\00_\00\00\00$\00\00\00" }>, align 8
@147 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str, ptr @_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char, ptr @_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs8frGy5WneL6_4fish }>, align 8
@148 = private unnamed_addr constant [55 x i8] c"a Display implementation returned an error unexpectedly", align 1
@149 = private unnamed_addr constant [76 x i8] c"/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7/library/alloc/src/string.rs\00", align 1
@150 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @149, [16 x i8] c"K\00\00\00\00\00\00\00\96\0B\00\00\0E\00\00\00" }>, align 8
@151 = private unnamed_addr constant [5 x i8] c"Error", align 1
@152 = private unnamed_addr constant [95 x i8] c"/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7/library/alloc/src/vec/spec_from_iter_nested.rs\00", align 1
@153 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @152, [16 x i8] c"^\00\00\00\00\00\00\009\00\00\00\12\00\00\00" }>, align 8
@154 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @145, [16 x i8] c"h\00\00\00\00\00\00\00\EF\00\00\00\0D\00\00\00" }>, align 8
@155 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRmNtB6_5Debug3fmtCs8frGy5WneL6_4fish }>, align 8
@156 = private unnamed_addr constant [16 x i8] c"DecodeUtf32Error", align 1
@157 = private unnamed_addr constant [4 x i8] c"code", align 1

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEE6retainNCNvBV_20remove_disowned_jobs0EBX_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !62, !noundef !16 ; 6 uses
  %i.c = icmp ult i64 %i.b, 1152921504606846976
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEE10retain_mutNCINvB2_6retainNCNvBV_20remove_disowned_jobs0E0EBX_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !62, !nonnull !16, !noundef !16 ; 6 uses
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecINtNtB9_2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEE6retainNCNvBX_20remove_disowned_jobs0E0BZ_.exit.thread.i, %.preheader.i
  %.sroa.0.0.i = phi i64 [ %i.r, %_RNCINvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecINtNtB9_2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEE6retainNCNvBX_20remove_disowned_jobs0E0BZ_.exit.thread.i ], [ 0, %.preheader.i ] ; 7 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.0.0.i
  %.val9.i = load ptr, ptr %i.g, align 8, !noalias !62, !nonnull !16, !noundef !16
  %i.h = getelementptr inbounds nuw i8, ptr %.val9.i, i64 16 ; 2 uses
  %i.i = tail call { ptr, ptr } @_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job5flags(ptr noundef nonnull align 8 %i.h), !noalias !62 ; 2 uses
  %i.j = extractvalue { ptr, ptr } %i.i, 0
  %i.k = extractvalue { ptr, ptr } %i.i, 1        ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 3
  %i.m = load i8, ptr %i.l, align 1, !range !17, !noalias !62, !noundef !16
  %i.n = trunc nuw i8 %i.m to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.o = load i64, ptr %i.k, align 8, !noalias !62, !noundef !16
  %i.p = add i64 %i.o, -1
  store i64 %i.p, ptr %i.k, align 8, !noalias !62
  br i1 %i.n, label %_RNCINvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecINtNtB9_2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEE6retainNCNvBX_20remove_disowned_jobs0E0BZ_.exit.i, label %_RNCINvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecINtNtB9_2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEE6retainNCNvBX_20remove_disowned_jobs0E0BZ_.exit.thread.i

_RNCINvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecINtNtB9_2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEE6retainNCNvBX_20remove_disowned_jobs0E0BZ_.exit.i: ; preds = %bb.b
  %i.q = tail call noundef zeroext i1 @_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job14is_constructed(ptr noundef nonnull align 8 %i.h), !noalias !62
  br i1 %i.q, label %bb.c, label %_RNCINvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecINtNtB9_2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEE6retainNCNvBX_20remove_disowned_jobs0E0BZ_.exit.thread.i, !prof !63

_RNCINvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecINtNtB9_2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEE6retainNCNvBX_20remove_disowned_jobs0E0BZ_.exit.thread.i: ; preds = %_RNCINvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecINtNtB9_2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEE6retainNCNvBX_20remove_disowned_jobs0E0BZ_.exit.i, %bb.b
  %i.r = add nuw nsw i64 %.sroa.0.0.i, 1          ; 2 uses
  %i.s = icmp eq i64 %i.r, %i.b
  br i1 %i.s, label %_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEE10retain_mutNCINvB2_6retainNCNvBV_20remove_disowned_jobs0E0EBX_.exit, label %bb.b

bb.c:                                             ; preds = %_RNCINvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecINtNtB9_2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEE6retainNCNvBX_20remove_disowned_jobs0E0BZ_.exit.i
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.0.0.i ; 2 uses
  %i.u = add nuw nsw i64 %.sroa.0.0.i, 1          ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65)
  %i.v = load ptr, ptr %i.t, align 8, !alias.scope !66, !noalias !62, !nonnull !16, !noundef !16 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !noalias !67, !noundef !16
  %i.x = add i64 %i.w, -1                         ; 2 uses
  store i64 %i.x, ptr %i.v, align 8, !noalias !67
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %bb.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit.i

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcNtNtCs8frGy5WneL6_4fish4proc3JobE9drop_slowBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.t) #29
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit.i unwind label %.loopexit.split-lp.i, !noalias !62

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit.i: ; preds = %bb.d, %bb.c
  %i.z = icmp samesign ult i64 %i.u, %i.b
  br i1 %i.z, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit15.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit.i
  %.sroa.15.1.lcssa.i = phi i64 [ %.sroa.0.0.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit.i ], [ %.sroa.15.2.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit15.i ]
  store i64 %.sroa.15.1.lcssa.i, ptr %i.a, align 8, !alias.scope !62
  br label %_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEE10retain_mutNCINvB2_6retainNCNvBV_20remove_disowned_jobs0E0EBX_.exit

.lr.ph.i:                                         ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit15.i
  %.sroa.8.139.i = phi i64 [ %.sroa.8.2.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit15.i ], [ %i.u, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit.i ] ; 5 uses
  %.sroa.15.138.i = phi i64 [ %.sroa.15.2.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit15.i ], [ %.sroa.0.0.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit.i ] ; 5 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.8.139.i ; 4 uses
  %.val.i = load ptr, ptr %i.aa, align 8, !noalias !62, !nonnull !16, !noundef !16
  %i.ab = getelementptr inbounds nuw i8, ptr %.val.i, i64 16 ; 2 uses
  %i.ac = invoke { ptr, ptr } @_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job5flags(ptr noundef nonnull align 8 %i.ab)
          to label %.noexc11.i unwind label %.loopexit.i, !noalias !62 ; 2 uses

.noexc11.i:                                       ; preds = %.lr.ph.i
  %i.ad = extractvalue { ptr, ptr } %i.ac, 0
  %i.ae = extractvalue { ptr, ptr } %i.ac, 1      ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 3
  %i.ag = load i8, ptr %i.af, align 1, !range !17, !noalias !62, !noundef !16
  %i.ah = trunc nuw i8 %i.ag to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ae) ]
  %i.ai = load i64, ptr %i.ae, align 8, !noalias !62, !noundef !16
  %i.aj = add i64 %i.ai, -1
  store i64 %i.aj, ptr %i.ae, align 8, !noalias !62
  br i1 %i.ah, label %bb.e, label %_RNCINvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecINtNtB9_2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEE6retainNCNvBX_20remove_disowned_jobs0E0BZ_.exit13.thread.i

bb.e:                                             ; preds = %.noexc11.i
  %i.ak = invoke noundef zeroext i1 @_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job14is_constructed(ptr noundef nonnull align 8 %i.ab)
          to label %_RNCINvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecINtNtB9_2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEE6retainNCNvBX_20remove_disowned_jobs0E0BZ_.exit13.i unwind label %.loopexit.i, !noalias !62

_RNCINvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecINtNtB9_2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEE6retainNCNvBX_20remove_disowned_jobs0E0BZ_.exit13.i: ; preds = %bb.e
  br i1 %i.ak, label %bb.f, label %_RNCINvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecINtNtB9_2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEE6retainNCNvBX_20remove_disowned_jobs0E0BZ_.exit13.thread.i

bb.f:                                             ; preds = %_RNCINvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecINtNtB9_2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEE6retainNCNvBX_20remove_disowned_jobs0E0BZ_.exit13.i
  %i.al = add nuw nsw i64 %.sroa.8.139.i, 1       ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69)
  %i.am = load ptr, ptr %i.aa, align 8, !alias.scope !70, !noalias !62, !nonnull !16, !noundef !16 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !noalias !71, !noundef !16
  %i.ao = add i64 %i.an, -1                       ; 2 uses
  store i64 %i.ao, ptr %i.am, align 8, !noalias !71
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %bb.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit15.i

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcNtNtCs8frGy5WneL6_4fish4proc3JobE9drop_slowBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aa) #29
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit15.i unwind label %.loopexit.i, !noalias !62

_RNCINvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecINtNtB9_2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEE6retainNCNvBX_20remove_disowned_jobs0E0BZ_.exit13.thread.i: ; preds = %_RNCINvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecINtNtB9_2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEE6retainNCNvBX_20remove_disowned_jobs0E0BZ_.exit13.i, %.noexc11.i
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.15.138.i
  %i.ar = load i64, ptr %i.aa, align 8, !noalias !62
  store i64 %i.ar, ptr %i.aq, align 8, !noalias !62
  %i.as = add i64 %.sroa.15.138.i, 1
  %i.at = add nuw nsw i64 %.sroa.8.139.i, 1
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit15.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit15.i: ; preds = %_RNCINvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecINtNtB9_2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEE6retainNCNvBX_20remove_disowned_jobs0E0BZ_.exit13.thread.i, %bb.g, %bb.f
  %.sroa.15.2.i = phi i64 [ %i.as, %_RNCINvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecINtNtB9_2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEE6retainNCNvBX_20remove_disowned_jobs0E0BZ_.exit13.thread.i ], [ %.sroa.15.138.i, %bb.g ], [ %.sroa.15.138.i, %bb.f ] ; 2 uses
  %.sroa.8.2.i = phi i64 [ %i.at, %_RNCINvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecINtNtB9_2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEE6retainNCNvBX_20remove_disowned_jobs0E0BZ_.exit13.thread.i ], [ %i.al, %bb.g ], [ %i.al, %bb.f ] ; 2 uses
  %i.au = icmp samesign ult i64 %.sroa.8.2.i, %i.b
  br i1 %i.au, label %.lr.ph.i, label %._crit_edge.i

.loopexit.i:                                      ; preds = %bb.g, %bb.e, %.lr.ph.i
  %.sroa.8.0.ph.i = phi i64 [ %.sroa.8.139.i, %.lr.ph.i ], [ %.sroa.8.139.i, %bb.e ], [ %i.al, %bb.g ]
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

.loopexit.split-lp.i:                             ; preds = %bb.d
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.15.0.i = phi i64 [ %.sroa.15.138.i, %.loopexit.i ], [ %.sroa.0.0.i, %.loopexit.split-lp.i ] ; 2 uses
  %.sroa.8.0.i = phi i64 [ %.sroa.8.0.ph.i, %.loopexit.i ], [ %i.u, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.av = sub i64 %i.b, %.sroa.8.0.i              ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.8.0.i
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.15.0.i
  %i.ay = shl nuw nsw i64 %i.av, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ax, ptr nonnull align 8 %i.aw, i64 %i.ay, i1 false), !noalias !72
  %i.az = add i64 %i.av, %.sroa.15.0.i
  store i64 %i.az, ptr %i.a, align 8, !alias.scope !62, !noalias !73
  resume { ptr, i32 } %lpad.phi.i

_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEE10retain_mutNCINvB2_6retainNCNvBV_20remove_disowned_jobs0E0EBX_.exit: ; preds = %_RNCINvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecINtNtB9_2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEE6retainNCNvBX_20remove_disowned_jobs0E0BZ_.exit.thread.i, %bb.a, %._crit_edge.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEE6retainNCNvBV_27process_clean_after_markings0_0EBX_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !89, !noalias !90, !noundef !16 ; 6 uses
  %i.c = icmp ult i64 %i.b, 1152921504606846976
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEE10retain_mutNCINvB2_6retainNCNvBV_27process_clean_after_markings0_0E0EBX_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !89, !noalias !90, !nonnull !16, !noundef !16 ; 6 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.preheader.i
  %.sroa.0.0.i = phi i64 [ %i.i, %bb.c ], [ 0, %.preheader.i ] ; 7 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.0.0.i
  %.val11.i = load ptr, ptr %i.g, align 8, !noalias !91, !nonnull !16, !noundef !16
  %i.h = tail call fastcc noundef zeroext i1 @_RNCINvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecINtNtB9_2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEE6retainNCNvBX_27process_clean_after_markings0_0E0BZ_(ptr nonnull readonly align 8 dereferenceable(32) %1, ptr nonnull %.val11.i) #30, !noalias !89
  br i1 %i.h, label %bb.c, label %bb.d, !prof !18

bb.c:                                             ; preds = %bb.b
  %i.i = add nuw nsw i64 %.sroa.0.0.i, 1          ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.b
  br i1 %i.j, label %_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEE10retain_mutNCINvB2_6retainNCNvBV_27process_clean_after_markings0_0E0EBX_.exit, label %bb.b

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.0.0.i ; 2 uses
  %i.l = add nuw nsw i64 %.sroa.0.0.i, 1          ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93)
  %i.m = load ptr, ptr %i.k, align 8, !alias.scope !94, !noalias !91, !nonnull !16, !noundef !16 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !noalias !95, !noundef !16
  %i.o = add i64 %i.n, -1                         ; 2 uses
  store i64 %i.o, ptr %i.m, align 8, !noalias !95
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit.i

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcNtNtCs8frGy5WneL6_4fish4proc3JobE9drop_slowBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #29
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit.i unwind label %.loopexit.split-lp.i, !noalias !91

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit.i: ; preds = %bb.e, %bb.d
  %i.q = icmp samesign ult i64 %i.l, %i.b
  br i1 %i.q, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit13.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit.i
  %.sroa.15.1.lcssa.i = phi i64 [ %.sroa.0.0.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit.i ], [ %.sroa.15.2.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit13.i ]
  store i64 %.sroa.15.1.lcssa.i, ptr %i.a, align 8, !alias.scope !89, !noalias !90
  br label %_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEE10retain_mutNCINvB2_6retainNCNvBV_27process_clean_after_markings0_0E0EBX_.exit

.lr.ph.i:                                         ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit13.i
  %.sroa.8.135.i = phi i64 [ %.sroa.8.2.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit13.i ], [ %i.l, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit.i ] ; 4 uses
  %.sroa.15.134.i = phi i64 [ %.sroa.15.2.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit13.i ], [ %.sroa.0.0.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit.i ] ; 5 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.8.135.i ; 4 uses
  %.val9.i = load ptr, ptr %i.r, align 8, !noalias !91, !nonnull !16, !noundef !16
  %i.s = invoke fastcc noundef zeroext i1 @_RNCINvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecINtNtB9_2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEE6retainNCNvBX_27process_clean_after_markings0_0E0BZ_(ptr nonnull readonly align 8 dereferenceable(32) %1, ptr nonnull %.val9.i)
          to label %bb.f unwind label %.loopexit.i, !noalias !89

bb.f:                                             ; preds = %.lr.ph.i
  br i1 %i.s, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = add nuw nsw i64 %.sroa.8.135.i, 1        ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !97)
  %i.u = load ptr, ptr %i.r, align 8, !alias.scope !98, !noalias !91, !nonnull !16, !noundef !16 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !noalias !99, !noundef !16
  %i.w = add i64 %i.v, -1                         ; 2 uses
  store i64 %i.w, ptr %i.u, align 8, !noalias !99
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit13.i

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcNtNtCs8frGy5WneL6_4fish4proc3JobE9drop_slowBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.r) #29
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit13.i unwind label %.loopexit.i, !noalias !91

bb.i:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.15.134.i
  %i.z = load i64, ptr %i.r, align 8, !noalias !91
  store i64 %i.z, ptr %i.y, align 8, !noalias !91
  %i.aa = add i64 %.sroa.15.134.i, 1
  %i.ab = add nuw nsw i64 %.sroa.8.135.i, 1
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit13.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit13.i: ; preds = %bb.i, %bb.h, %bb.g
  %.sroa.15.2.i = phi i64 [ %i.aa, %bb.i ], [ %.sroa.15.134.i, %bb.h ], [ %.sroa.15.134.i, %bb.g ] ; 2 uses
  %.sroa.8.2.i = phi i64 [ %i.ab, %bb.i ], [ %i.t, %bb.h ], [ %i.t, %bb.g ] ; 2 uses
  %i.ac = icmp samesign ult i64 %.sroa.8.2.i, %i.b
  br i1 %i.ac, label %.lr.ph.i, label %._crit_edge.i

.loopexit.i:                                      ; preds = %bb.h, %.lr.ph.i
  %.sroa.8.0.ph.i = phi i64 [ %.sroa.8.135.i, %.lr.ph.i ], [ %i.t, %bb.h ]
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

.loopexit.split-lp.i:                             ; preds = %bb.e
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.15.0.i = phi i64 [ %.sroa.15.134.i, %.loopexit.i ], [ %.sroa.0.0.i, %.loopexit.split-lp.i ] ; 2 uses
  %.sroa.8.0.i = phi i64 [ %.sroa.8.0.ph.i, %.loopexit.i ], [ %i.l, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.ad = sub i64 %i.b, %.sroa.8.0.i              ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.8.0.i
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.15.0.i
  %i.ag = shl nuw nsw i64 %i.ad, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.af, ptr nonnull align 8 %i.ae, i64 %i.ag, i1 false), !noalias !100
  %i.ah = add i64 %i.ad, %.sroa.15.0.i
  store i64 %i.ah, ptr %i.a, align 8, !alias.scope !89, !noalias !101
  resume { ptr, i32 } %lpad.phi.i

_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEE10retain_mutNCINvB2_6retainNCNvBV_27process_clean_after_markings0_0E0EBX_.exit: ; preds = %bb.c, %bb.a, %._crit_edge.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEE8dedup_byNCINvB2_12dedup_by_keyNCNvNtNtBX_8builtins6disown6disowns0_0NtNtBX_9job_group10MaybeJobIdE0EBX_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readnone captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !16 ; 6 uses
  %i.c = icmp ult i64 %i.b, 1152921504606846976
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i64 %i.b, 2
  br i1 %i.d, label %.thread, label %bb.b

end_hunk_0
begin_hunk_1_@_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEE8dedup_byNCINvB2_12dedup_by_keyNCNvNtNtBX_8builtins6disown6disowns0_0NtNtBX_9job_group10MaybeJobIdE0EBX_:bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.d
  %.sroa.0.029 = phi i64 [ 1, %bb.b ], [ %i.m, %bb.d ] ; 5 uses
  %i.g = getelementptr [8 x i8], ptr %i.f, i64 %.sroa.0.029 ; 4 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -8
  %.val11 = load ptr, ptr %i.g, align 8, !nonnull !16, !noundef !16
  %.val12 = load ptr, ptr %i.h, align 8           ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val11, i64 16
  %i.j = tail call noundef i32 @_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job6job_id(ptr noundef nonnull align 8 %i.i)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val12) ]
  %i.k = getelementptr inbounds nuw i8, ptr %.val12, i64 16
  %i.l = tail call noundef i32 @_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job6job_id(ptr noundef nonnull align 8 %i.k)
  %.sroa.0.0.shrunk.i.i.i = icmp eq i32 %i.l, %i.j
  %i.m = add nuw nsw i64 %.sroa.0.029, 1          ; 5 uses
  br i1 %.sroa.0.0.shrunk.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not = icmp eq i64 %i.m, %i.b
  br i1 %.not, label %.thread, label %bb.c

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !114)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115)
  %i.n = load ptr, ptr %i.g, align 8, !alias.scope !116, !nonnull !16, !noundef !16 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !noalias !116, !noundef !16
  %i.p = add i64 %i.o, -1                         ; 2 uses
  store i64 %i.p, ptr %i.n, align 8, !noalias !116
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcNtNtCs8frGy5WneL6_4fish4proc3JobE9drop_slowBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g) #29
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit unwind label %.loopexit.split-lp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit: ; preds = %bb.f, %bb.e
  %i.r = icmp samesign ult i64 %i.m, %i.b
  br i1 %i.r, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit17, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit
  %.sroa.12.1.lcssa = phi i64 [ %.sroa.0.029, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit ], [ %.sroa.12.2, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit17 ]
  store i64 %.sroa.12.1.lcssa, ptr %i.a, align 8
  br label %.thread

.lr.ph:                                           ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit17
  %.sroa.12.131 = phi i64 [ %.sroa.12.2, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit17 ], [ %.sroa.0.029, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit ] ; 5 uses
  %.sroa.5.130 = phi i64 [ %.sroa.5.2, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit17 ], [ %i.m, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit ] ; 5 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.5.130 ; 4 uses
  %i.t = getelementptr [8 x i8], ptr %i.f, i64 %.sroa.12.131 ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 -8
  %.val = load ptr, ptr %i.s, align 8, !nonnull !16, !noundef !16
  %.val10 = load ptr, ptr %i.u, align 8           ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.w = invoke noundef i32 @_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job6job_id(ptr noundef nonnull align 8 %i.v)
          to label %.noexc14 unwind label %.loopexit

.noexc14:                                         ; preds = %.lr.ph
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10) ]
  %i.x = getelementptr inbounds nuw i8, ptr %.val10, i64 16
  %i.y = invoke noundef i32 @_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job6job_id(ptr noundef nonnull align 8 %i.x)
          to label %bb.g unwind label %.loopexit

.thread:                                          ; preds = %bb.d, %bb.a, %._crit_edge
  ret void

bb.g:                                             ; preds = %.noexc14
  %.sroa.0.0.shrunk.i.i.i13 = icmp eq i32 %i.y, %i.w
  br i1 %.sroa.0.0.shrunk.i.i.i13, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = load i64, ptr %i.s, align 8
  store i64 %i.z, ptr %i.t, align 8
  %i.aa = add i64 %.sroa.12.131, 1
  %i.ab = add nuw nsw i64 %.sroa.5.130, 1
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit17

bb.i:                                             ; preds = %bb.g
  %i.ac = add nuw nsw i64 %.sroa.5.130, 1         ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !118)
  %i.ad = load ptr, ptr %i.s, align 8, !alias.scope !119, !nonnull !16, !noundef !16 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !noalias !119, !noundef !16
  %i.af = add i64 %i.ae, -1                       ; 2 uses
  store i64 %i.af, ptr %i.ad, align 8, !noalias !119
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.j, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit17

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcNtNtCs8frGy5WneL6_4fish4proc3JobE9drop_slowBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.s) #29
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit17 unwind label %.loopexit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit17: ; preds = %bb.i, %bb.j, %bb.h
  %.sroa.5.2 = phi i64 [ %i.ab, %bb.h ], [ %i.ac, %bb.j ], [ %i.ac, %bb.i ] ; 2 uses
  %.sroa.12.2 = phi i64 [ %i.aa, %bb.h ], [ %.sroa.12.131, %bb.j ], [ %.sroa.12.131, %bb.i ] ; 2 uses
  %i.ah = icmp samesign ult i64 %.sroa.5.2, %i.b
  br i1 %i.ah, label %.lr.ph, label %._crit_edge

.loopexit:                                        ; preds = %bb.j, %.noexc14, %.lr.ph
  %.sroa.5.0.ph = phi i64 [ %.sroa.5.130, %.lr.ph ], [ %.sroa.5.130, %.noexc14 ], [ %i.ac, %bb.j ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.loopexit.split-lp:                               ; preds = %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.k:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %.sroa.5.0 = phi i64 [ %.sroa.5.0.ph, %.loopexit ], [ %i.m, %.loopexit.split-lp ] ; 2 uses
  %.sroa.12.0 = phi i64 [ %.sroa.12.131, %.loopexit ], [ %.sroa.0.029, %.loopexit.split-lp ] ; 2 uses
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.ai = sub i64 %i.b, %.sroa.5.0                ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.12.0
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.5.0
  %i.al = shl nuw nsw i64 %i.ai, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aj, ptr nonnull align 8 %i.ak, i64 %i.al, i1 false), !noalias !120
  %i.am = add i64 %i.ai, %.sroa.12.0
  store i64 %i.am, ptr %i.a, align 8, !noalias !120
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE8dedup_byNCNvMs5_B5_Bv_5dedup0ECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !16 ; 5 uses
  %i.c = icmp ult i64 %i.b, 384307168202282326
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i64 %i.b, 2
  br i1 %i.d, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !16, !noundef !16 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_RNCNvMs5_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecINtNtB9_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE5dedup0Cs8frGy5WneL6_4fish.exit.thread
  %.sroa.0.038 = phi i64 [ 1, %bb.b ], [ %i.o, %_RNCNvMs5_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecINtNtB9_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE5dedup0Cs8frGy5WneL6_4fish.exit.thread ] ; 5 uses
  %i.g = getelementptr [24 x i8], ptr %i.f, i64 %.sroa.0.038 ; 5 uses
  %i.h = getelementptr i8, ptr %i.g, i64 16
  %.val14 = load i64, ptr %i.h, align 8, !alias.scope !146, !noalias !147, !noundef !16 ; 2 uses
  %i.i = getelementptr i8, ptr %i.g, i64 -8
  %.val16 = load i64, ptr %i.i, align 8, !alias.scope !147, !noalias !146, !noundef !16
  %i.j = icmp eq i64 %.val14, %.val16
  br i1 %i.j, label %_RNCNvMs5_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecINtNtB9_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE5dedup0Cs8frGy5WneL6_4fish.exit, label %_RNCNvMs5_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecINtNtB9_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE5dedup0Cs8frGy5WneL6_4fish.exit.thread

_RNCNvMs5_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecINtNtB9_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE5dedup0Cs8frGy5WneL6_4fish.exit: ; preds = %bb.c
  %i.k = getelementptr i8, ptr %i.g, i64 -16
  %.val15 = load ptr, ptr %i.k, align 8, !nonnull !16, !noundef !16
  %i.l = getelementptr i8, ptr %i.g, i64 8
  %.val13 = load ptr, ptr %i.l, align 8, !nonnull !16, !noundef !16 ; 2 uses
  %i.m = shl nuw nsw i64 %.val14, 2
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly align 4 %.val13, ptr nonnull readonly align 4 %.val15, i64 %i.m), !alias.scope !148, !noalias !149
  %i.n = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.n, label %bb.d, label %_RNCNvMs5_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecINtNtB9_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE5dedup0Cs8frGy5WneL6_4fish.exit.thread

_RNCNvMs5_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecINtNtB9_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE5dedup0Cs8frGy5WneL6_4fish.exit.thread: ; preds = %bb.c, %_RNCNvMs5_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecINtNtB9_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE5dedup0Cs8frGy5WneL6_4fish.exit
  %i.o = add nuw nsw i64 %.sroa.0.038, 1          ; 2 uses
  %.not = icmp eq i64 %i.o, %i.b
  br i1 %.not, label %.thread, label %bb.c

bb.d:                                             ; preds = %_RNCNvMs5_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecINtNtB9_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE5dedup0Cs8frGy5WneL6_4fish.exit
  %.val19 = load i64, ptr %i.g, align 8, !range !19, !noundef !16 ; 2 uses
  %i.p = icmp sgt i64 %.val19, 0
  br i1 %i.p, label %bb.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit

bb.e:                                             ; preds = %bb.d
  %i.q = shl nuw i64 %.val19, 2
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val13, i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) 4) #31, !noalias !150
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit: ; preds = %bb.d, %bb.e
  %.sroa.5.039 = add nuw i64 %.sroa.0.038, 1      ; 2 uses
  %i.r = icmp ult i64 %.sroa.5.039, %i.b
  br i1 %i.r, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit26, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit
  %.sroa.12.0.lcssa = phi i64 [ %.sroa.0.038, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit ], [ %.sroa.12.1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit26 ]
  store i64 %.sroa.12.0.lcssa, ptr %i.a, align 8
  br label %.thread

.lr.ph:                                           ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit26
  %.sroa.5.041 = phi i64 [ %.sroa.5.0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit26 ], [ %.sroa.5.039, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit ] ; 2 uses
  %.sroa.12.040 = phi i64 [ %.sroa.12.1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit26 ], [ %.sroa.0.038, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit ] ; 4 uses
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %.sroa.5.041 ; 4 uses
  %i.t = getelementptr [24 x i8], ptr %i.f, i64 %.sroa.12.040 ; 3 uses
  %i.u = getelementptr i8, ptr %i.s, i64 8
  %.val = load ptr, ptr %i.u, align 8             ; 3 uses
  %i.v = getelementptr i8, ptr %i.s, i64 16
  %.val10 = load i64, ptr %i.v, align 8, !alias.scope !146, !noalias !147, !noundef !16 ; 2 uses
  %i.w = getelementptr i8, ptr %i.t, i64 -8
  %.val12 = load i64, ptr %i.w, align 8, !alias.scope !147, !noalias !146, !noundef !16
  %i.x = icmp eq i64 %.val10, %.val12
  br i1 %i.x, label %_RNCNvMs5_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecINtNtB9_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE5dedup0Cs8frGy5WneL6_4fish.exit23, label %_RNCNvMs5_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecINtNtB9_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE5dedup0Cs8frGy5WneL6_4fish.exit23.thread

.thread:                                          ; preds = %_RNCNvMs5_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecINtNtB9_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE5dedup0Cs8frGy5WneL6_4fish.exit.thread, %bb.a, %._crit_edge
  ret void

_RNCNvMs5_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecINtNtB9_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE5dedup0Cs8frGy5WneL6_4fish.exit23: ; preds = %.lr.ph
  %i.y = getelementptr i8, ptr %i.t, i64 -16
  %.val11 = load ptr, ptr %i.y, align 8, !nonnull !16, !noundef !16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.z = shl nuw nsw i64 %.val10, 2
  %bcmp.i.i.i.i.i22 = tail call i32 @bcmp(ptr nonnull readonly align 4 %.val, ptr nonnull readonly align 4 %.val11, i64 %i.z), !alias.scope !151, !noalias !152
  %i.aa = icmp eq i32 %bcmp.i.i.i.i.i22, 0
  br i1 %i.aa, label %bb.f, label %_RNCNvMs5_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecINtNtB9_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE5dedup0Cs8frGy5WneL6_4fish.exit23.thread

_RNCNvMs5_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecINtNtB9_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE5dedup0Cs8frGy5WneL6_4fish.exit23.thread: ; preds = %.lr.ph, %_RNCNvMs5_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecINtNtB9_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE5dedup0Cs8frGy5WneL6_4fish.exit23
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  %i.ab = add i64 %.sroa.12.040, 1
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit26

bb.f:                                             ; preds = %_RNCNvMs5_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecINtNtB9_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE5dedup0Cs8frGy5WneL6_4fish.exit23
  %.val17 = load i64, ptr %i.s, align 8, !range !19, !noundef !16 ; 2 uses
  %i.ac = icmp sgt i64 %.val17, 0
  br i1 %i.ac, label %bb.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit26

bb.g:                                             ; preds = %bb.f
  %i.ad = shl nuw i64 %.val17, 2
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) 4) #31, !noalias !153
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit26

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit26: ; preds = %bb.g, %bb.f, %_RNCNvMs5_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecINtNtB9_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE5dedup0Cs8frGy5WneL6_4fish.exit23.thread
  %.sroa.12.1 = phi i64 [ %i.ab, %_RNCNvMs5_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecINtNtB9_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE5dedup0Cs8frGy5WneL6_4fish.exit23.thread ], [ %.sroa.12.040, %bb.f ], [ %.sroa.12.040, %bb.g ] ; 2 uses
  %.sroa.5.0 = add nuw nsw i64 %.sroa.5.041, 1    ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.5.0, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE8dedup_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts0_0EB21_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !16 ; 6 uses
  %i.c = icmp ult i64 %i.b, 384307168202282326
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i64 %i.b, 2
  br i1 %i.d, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !16, !noundef !16 ; 3 uses
  %i.g = load ptr, ptr %1, align 8, !noalias !167, !nonnull !16, !noundef !16 ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_RNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts0_0B7_.exit.thread
  %.sroa.0.045 = phi i64 [ 1, %bb.b ], [ %i.t, %_RNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts0_0B7_.exit.thread ] ; 5 uses
  %i.h = getelementptr [24 x i8], ptr %i.f, i64 %.sroa.0.045 ; 6 uses
  %i.i = getelementptr i8, ptr %i.h, i64 8
  %.val17 = load ptr, ptr %i.i, align 8, !nonnull !16, !noundef !16
  %i.j = getelementptr i8, ptr %i.h, i64 16
  %.val18 = load i64, ptr %i.j, align 8, !noundef !16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !167)
  %i.k = tail call { ptr, i64 } %i.g(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val17, i64 noundef %.val18), !noalias !167, !inline_history !156 ; 2 uses
  %i.l = extractvalue { ptr, i64 } %i.k, 1        ; 2 uses
  %.sroa.02.0.in.i = getelementptr i8, ptr %i.h, i64 -16
  %.sroa.02.0.i = load ptr, ptr %.sroa.02.0.in.i, align 8, !alias.scope !167, !nonnull !16, !noundef !16
  %.sroa.33.0.in.i = getelementptr i8, ptr %i.h, i64 -8
  %.sroa.33.0.i = load i64, ptr %.sroa.33.0.in.i, align 8, !alias.scope !167, !noundef !16
  %i.m = tail call { ptr, i64 } %i.g(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.02.0.i, i64 noundef %.sroa.33.0.i), !noalias !167, !inline_history !156 ; 2 uses
  %i.n = extractvalue { ptr, i64 } %i.m, 1
  %i.o = icmp eq i64 %i.l, %i.n
  br i1 %i.o, label %_RNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts0_0B7_.exit, label %_RNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts0_0B7_.exit.thread

_RNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts0_0B7_.exit: ; preds = %bb.c
  %i.p = extractvalue { ptr, i64 } %i.k, 0
  %i.q = extractvalue { ptr, i64 } %i.m, 0
  %i.r = shl nuw i64 %i.l, 2
  %bcmp.i = tail call i32 @bcmp(ptr %i.p, ptr %i.q, i64 %i.r), !noalias !167
  %i.s = icmp eq i32 %bcmp.i, 0
  br i1 %i.s, label %bb.d, label %_RNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts0_0B7_.exit.thread

_RNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts0_0B7_.exit.thread: ; preds = %bb.c, %_RNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts0_0B7_.exit
  %i.t = add nuw nsw i64 %.sroa.0.045, 1          ; 2 uses
  %.not = icmp eq i64 %i.t, %i.b
  br i1 %.not, label %.thread, label %bb.c

bb.d:                                             ; preds = %_RNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts0_0B7_.exit
  %.val11 = load i64, ptr %i.h, align 8, !range !19, !noundef !16 ; 2 uses
  %i.u = icmp sgt i64 %.val11, 0
  br i1 %i.u, label %bb.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr i8, ptr %i.h, i64 8
  %.val12 = load ptr, ptr %i.v, align 8, !nonnull !16, !noundef !16
  %i.w = shl nuw i64 %.val11, 2
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val12, i64 noundef %i.w, i64 noundef range(i64 1, -9223372036854775807) 4) #31, !noalias !168
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit: ; preds = %bb.d, %bb.e
  %.sroa.5.046 = add nuw i64 %.sroa.0.045, 1      ; 2 uses
  %i.x = icmp ult i64 %.sroa.5.046, %i.b
  br i1 %i.x, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit29, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit
  %.sroa.12.0.lcssa = phi i64 [ %.sroa.0.045, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit ], [ %.sroa.12.1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit29 ]
  store i64 %.sroa.12.0.lcssa, ptr %i.a, align 8
  br label %.thread

.lr.ph:                                           ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit29
  %.sroa.5.048 = phi i64 [ %.sroa.5.0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit29 ], [ %.sroa.5.046, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit ] ; 3 uses
  %.sroa.12.047 = phi i64 [ %.sroa.12.1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit29 ], [ %.sroa.0.045, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit ] ; 5 uses
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %.sroa.5.048 ; 5 uses
  %i.z = getelementptr [24 x i8], ptr %i.f, i64 %.sroa.12.047 ; 4 uses
  %i.aa = getelementptr i8, ptr %i.y, i64 8       ; 2 uses
  %.val14 = load ptr, ptr %i.aa, align 8, !nonnull !16, !noundef !16
  %i.ab = getelementptr i8, ptr %i.y, i64 16
  %.val15 = load i64, ptr %i.ab, align 8, !noundef !16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !169)
  %i.ac = invoke { ptr, i64 } %i.g(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val14, i64 noundef %.val15)
          to label %.noexc unwind label %bb.h, !inline_history !156 ; 2 uses

.noexc:                                           ; preds = %.lr.ph
  %i.ad = extractvalue { ptr, i64 } %i.ac, 1      ; 2 uses
  %.sroa.02.0.in.i19 = getelementptr i8, ptr %i.z, i64 -16
  %.sroa.02.0.i20 = load ptr, ptr %.sroa.02.0.in.i19, align 8, !alias.scope !169, !nonnull !16, !noundef !16
  %.sroa.33.0.in.i21 = getelementptr i8, ptr %i.z, i64 -8
  %.sroa.33.0.i22 = load i64, ptr %.sroa.33.0.in.i21, align 8, !alias.scope !169, !noundef !16
  %i.ae = invoke { ptr, i64 } %i.g(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.02.0.i20, i64 noundef %.sroa.33.0.i22)
          to label %.noexc25 unwind label %bb.h, !inline_history !156 ; 2 uses

.noexc25:                                         ; preds = %.noexc
  %i.af = extractvalue { ptr, i64 } %i.ae, 1
  %i.ag = icmp eq i64 %i.ad, %i.af
  br i1 %i.ag, label %_RNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts0_0B7_.exit26, label %_RNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts0_0B7_.exit26.thread

.thread:                                          ; preds = %_RNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts0_0B7_.exit.thread, %bb.a, %._crit_edge
  ret void

_RNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts0_0B7_.exit26: ; preds = %.noexc25
  %i.ah = extractvalue { ptr, i64 } %i.ac, 0
  %i.ai = extractvalue { ptr, i64 } %i.ae, 0
  %i.aj = shl nuw i64 %i.ad, 2
  %bcmp.i24 = tail call i32 @bcmp(ptr %i.ah, ptr %i.ai, i64 %i.aj), !noalias !169
  %i.ak = icmp eq i32 %bcmp.i24, 0
  br i1 %i.ak, label %bb.f, label %_RNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts0_0B7_.exit26.thread

_RNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts0_0B7_.exit26.thread: ; preds = %.noexc25, %_RNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts0_0B7_.exit26
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false)
  %i.al = add i64 %.sroa.12.047, 1
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit29

bb.f:                                             ; preds = %_RNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts0_0B7_.exit26
  %.val = load i64, ptr %i.y, align 8, !range !19, !noundef !16 ; 2 uses
  %i.am = icmp sgt i64 %.val, 0
  br i1 %i.am, label %bb.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit29

bb.g:                                             ; preds = %bb.f
  %.val10 = load ptr, ptr %i.aa, align 8, !nonnull !16, !noundef !16
  %i.an = shl nuw i64 %.val, 2
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val10, i64 noundef %i.an, i64 noundef range(i64 1, -9223372036854775807) 4) #31, !noalias !170
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit29

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit29: ; preds = %bb.g, %bb.f, %_RNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts0_0B7_.exit26.thread
  %.sroa.12.1 = phi i64 [ %i.al, %_RNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts0_0B7_.exit26.thread ], [ %.sroa.12.047, %bb.f ], [ %.sroa.12.047, %bb.g ] ; 2 uses
  %.sroa.5.0 = add nuw nsw i64 %.sroa.5.048, 1    ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.5.0, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

bb.h:                                             ; preds = %.lr.ph, %.noexc
  %i.ao = landingpad { ptr, i32 }
          cleanup
  %i.ap = sub nuw nsw i64 %i.b, %.sroa.5.048      ; 2 uses
  %i.aq = mul nuw nsw i64 %i.ap, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.z, ptr nonnull align 8 %i.y, i64 %i.aq, i1 false), !noalias !171
  %i.ar = add i64 %i.ap, %.sroa.12.047
  store i64 %i.ar, ptr %i.a, align 8, !noalias !171
  resume { ptr, i32 } %i.ao
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorE6retainNCNvNtBJ_10parse_util19detect_parse_errors0EBJ_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef writeonly captures(none) dereferenceable(1) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !187)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !187, !noalias !188, !noundef !16 ; 6 uses
  %i.c = icmp ult i64 %i.b, 192153584101141163
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorE10retain_mutNCINvB2_6retainNCNvNtBJ_10parse_util19detect_parse_errors0E0EBJ_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !187, !noalias !188, !nonnull !16, !noundef !16 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.preheader.i
  %.sroa.0.0.i = phi i64 [ %i.j, %bb.c ], [ 0, %.preheader.i ] ; 5 uses
  %i.g = getelementptr inbounds nuw [48 x i8], ptr %i.f, i64 %.sroa.0.0.i ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.i = tail call noundef zeroext i1 @_RNvXsf_NtNtCs3oUPovFnLWP_4core5slice3cmpNtNtCs8frGy5WneL6_4fish15parse_constants14ParseErrorCodeNtB5_13SliceContains14slice_containsBG_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 2), !noalias !189
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = add nuw nsw i64 %.sroa.0.0.i, 1          ; 2 uses
  %i.k = icmp eq i64 %i.j, %i.b
  br i1 %i.k, label %_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorE10retain_mutNCINvB2_6retainNCNvNtBJ_10parse_util19detect_parse_errors0E0EBJ_.exit, label %bb.b

bb.d:                                             ; preds = %bb.b
  store i8 1, ptr %1, align 1, !noalias !190
  %.val12.i = load i64, ptr %i.g, align 8, !noalias !189 ; 2 uses
  %i.l = icmp eq i64 %.val12.i, 0
end_hunk_1
begin_hunk_2_@_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish9tokenizer3TokE6retainNCNvMs8_NtBJ_8completeNtB1w_9Completer28perform_for_commandline_impls_0EBJ_:bb.a
  %.sroa.7.025.i.1 = or disjoint i64 %.sroa.0.0.i, 2 ; 3 uses
  br i1 %.not.i.1, label %.preheader.i, label %bb.e, !prof !21

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw [20 x i8], ptr %i.f, i64 %.sroa.7.025.i.1
  %i.t = getelementptr i8, ptr %i.s, i64 17
  %.val9.i.2 = load i8, ptr %i.t, align 1, !range !297, !noalias !296, !noundef !16
  %.not.i.2 = icmp eq i8 %.val9.i.2, 10
  %.sroa.7.025.i.2 = or disjoint i64 %.sroa.0.0.i, 3 ; 3 uses
  br i1 %.not.i.2, label %.preheader.i, label %bb.f, !prof !21

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw [20 x i8], ptr %i.f, i64 %.sroa.7.025.i.2
  %i.v = getelementptr i8, ptr %i.u, i64 17
  %.val9.i.3 = load i8, ptr %i.v, align 1, !range !297, !noalias !296, !noundef !16
  %.not.i.3 = icmp eq i8 %.val9.i.3, 10
  %.sroa.7.025.i.3 = add nuw nsw i64 %.sroa.0.0.i, 4 ; 3 uses
  br i1 %.not.i.3, label %.preheader.i, label %bb.g, !prof !21

bb.g:                                             ; preds = %bb.f
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish9tokenizer3TokE10retain_mutNCINvB2_6retainNCNvMs8_NtBJ_8completeNtB1Q_9Completer28perform_for_commandline_impls_0E0EBJ_.exit.loopexit.unr-lcssa, label %bb.b

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %bb.j, %.preheader.i
  %.sroa.13.0.lcssa.i = phi i64 [ %.sroa.0.0.i.lcssa, %.preheader.i ], [ %.sroa.13.1.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.sroa.13.1.i.1, %bb.j ]
  store i64 %.sroa.13.0.lcssa.i, ptr %i.a, align 8, !alias.scope !296
  br label %_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish9tokenizer3TokE10retain_mutNCINvB2_6retainNCNvMs8_NtBJ_8completeNtB1Q_9Completer28perform_for_commandline_impls_0E0EBJ_.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %bb.j
  %.sroa.7.027.i = phi i64 [ %.sroa.7.0.i.1, %bb.j ], [ %.sroa.7.027.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.sroa.13.026.i = phi i64 [ %.sroa.13.1.i.1, %bb.j ], [ %.sroa.13.026.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.w = getelementptr inbounds nuw [20 x i8], ptr %i.f, i64 %.sroa.7.027.i ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 17
  %.val.i = load i8, ptr %i.x, align 1, !range !297, !noalias !296, !noundef !16
  %.not21.i = icmp eq i8 %.val.i, 10
  br i1 %.not21.i, label %.lr.ph.i.1, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  %i.y = getelementptr inbounds nuw [20 x i8], ptr %i.f, i64 %.sroa.13.026.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.y, ptr noundef nonnull align 4 dereferenceable(20) %i.w, i64 20, i1 false), !noalias !296
  %i.z = add i64 %.sroa.13.026.i, 1
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.h, %.lr.ph.i
  %.sroa.13.1.i = phi i64 [ %i.z, %bb.h ], [ %.sroa.13.026.i, %.lr.ph.i ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [20 x i8], ptr %i.f, i64 %.sroa.7.027.i ; 2 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 37
  %.val.i.1 = load i8, ptr %i.ab, align 1, !range !297, !noalias !296, !noundef !16
  %.not21.i.1 = icmp eq i8 %.val.i.1, 10
  br i1 %.not21.i.1, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 20
  %i.ad = getelementptr inbounds nuw [20 x i8], ptr %i.f, i64 %.sroa.13.1.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ad, ptr noundef nonnull align 4 dereferenceable(20) %i.ac, i64 20, i1 false), !noalias !296
  %i.ae = add i64 %.sroa.13.1.i, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.1
  %.sroa.13.1.i.1 = phi i64 [ %i.ae, %bb.i ], [ %.sroa.13.1.i, %.lr.ph.i.1 ] ; 2 uses
  %.sroa.7.0.i.1 = add nuw nsw i64 %.sroa.7.027.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %.sroa.7.0.i.1, %i.b
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %.lr.ph.i

_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish9tokenizer3TokE10retain_mutNCINvB2_6retainNCNvMs8_NtBJ_8completeNtB1Q_9Completer28perform_for_commandline_impls_0E0EBJ_.exit.loopexit.unr-lcssa: ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish9tokenizer3TokE10retain_mutNCINvB2_6retainNCNvMs8_NtBJ_8completeNtB1Q_9Completer28perform_for_commandline_impls_0E0EBJ_.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish9tokenizer3TokE10retain_mutNCINvB2_6retainNCNvMs8_NtBJ_8completeNtB1Q_9Completer28perform_for_commandline_impls_0E0EBJ_.exit.loopexit.unr-lcssa, %.preheader22.i
  %.sroa.0.0.i.epil.init = phi i64 [ 0, %.preheader22.i ], [ %.sroa.7.025.i.3, %_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish9tokenizer3TokE10retain_mutNCINvB2_6retainNCNvMs8_NtBJ_8completeNtB1Q_9Completer28perform_for_commandline_impls_0E0EBJ_.exit.loopexit.unr-lcssa ]
  %lcmp.mod8 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod8)
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.epil.preheader
  %.sroa.0.0.i.epil = phi i64 [ %.sroa.7.025.i.epil, %bb.l ], [ %.sroa.0.0.i.epil.init, %.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %bb.l ], [ 0, %.epil.preheader ]
  %i.af = getelementptr inbounds nuw [20 x i8], ptr %i.f, i64 %.sroa.0.0.i.epil
  %i.ag = getelementptr i8, ptr %i.af, i64 17
  %.val9.i.epil = load i8, ptr %i.ag, align 1, !range !297, !noalias !296, !noundef !16
  %.not.i.epil = icmp eq i8 %.val9.i.epil, 10
  %.sroa.7.025.i.epil = add nuw nsw i64 %.sroa.0.0.i.epil, 1 ; 2 uses
  br i1 %.not.i.epil, label %.preheader.i, label %bb.l, !prof !21

bb.l:                                             ; preds = %bb.k
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish9tokenizer3TokE10retain_mutNCINvB2_6retainNCNvMs8_NtBJ_8completeNtB1Q_9Completer28perform_for_commandline_impls_0E0EBJ_.exit, label %bb.k, !llvm.loop !295

_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish9tokenizer3TokE10retain_mutNCINvB2_6retainNCNvMs8_NtBJ_8completeNtB1Q_9Completer28perform_for_commandline_impls_0E0EBJ_.exit: ; preds = %_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish9tokenizer3TokE10retain_mutNCINvB2_6retainNCNvMs8_NtBJ_8completeNtB1Q_9Completer28perform_for_commandline_impls_0E0EBJ_.exit.loopexit.unr-lcssa, %bb.l, %bb.a, %._crit_edge.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE5drainINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEECs8frGy5WneL6_4fish(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !16 ; 3 uses
  %i.c = icmp ult i64 %i.b, 384307168202282326
  tail call void @llvm.assume(i1 %i.c)
  %i.d = tail call { i64, i64 } @_RINvNtNtCs3oUPovFnLWP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECs8frGy5WneL6_4fish(i64 noundef %2, i64 noundef %3, i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 3 uses
  store i64 %i.e, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !16, !noundef !16 ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.e
  %i.j = sub i64 %i.b, %i.f
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.f, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.j, ptr %i.m, align 8
  store ptr %i.i, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.o, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8dedup_byNCNvMs5_B5_Bv_5dedup0ECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !16 ; 5 uses
  %i.c = icmp ult i64 %i.b, 384307168202282326
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i64 %i.b, 2
  br i1 %i.d, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !16, !noundef !16 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_RNCNvMs5_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE5dedup0Cs8frGy5WneL6_4fish.exit.thread
  %.sroa.0.036 = phi i64 [ 1, %bb.b ], [ %i.o, %_RNCNvMs5_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE5dedup0Cs8frGy5WneL6_4fish.exit.thread ] ; 5 uses
  %i.g = getelementptr [24 x i8], ptr %i.f, i64 %.sroa.0.036 ; 5 uses
  %i.h = getelementptr i8, ptr %i.g, i64 16
  %.val18 = load i64, ptr %i.h, align 8, !noundef !16 ; 2 uses
  %i.i = getelementptr i8, ptr %i.g, i64 -8
  %.val20 = load i64, ptr %i.i, align 8, !noundef !16
  %i.j = icmp eq i64 %.val18, %.val20
  br i1 %i.j, label %_RNCNvMs5_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE5dedup0Cs8frGy5WneL6_4fish.exit, label %_RNCNvMs5_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE5dedup0Cs8frGy5WneL6_4fish.exit.thread

_RNCNvMs5_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE5dedup0Cs8frGy5WneL6_4fish.exit: ; preds = %bb.c
  %i.k = getelementptr i8, ptr %i.g, i64 -16
  %.val19 = load ptr, ptr %i.k, align 8, !nonnull !16, !noundef !16
  %i.l = getelementptr i8, ptr %i.g, i64 8
  %.val17 = load ptr, ptr %i.l, align 8, !nonnull !16, !noundef !16 ; 2 uses
  %i.m = shl nuw i64 %.val18, 2
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val17, ptr nonnull readonly %.val19, i64 %i.m)
  %i.n = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.n, label %bb.d, label %_RNCNvMs5_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE5dedup0Cs8frGy5WneL6_4fish.exit.thread

_RNCNvMs5_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE5dedup0Cs8frGy5WneL6_4fish.exit.thread: ; preds = %bb.c, %_RNCNvMs5_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE5dedup0Cs8frGy5WneL6_4fish.exit
  %i.o = add nuw nsw i64 %.sroa.0.036, 1          ; 2 uses
  %.not = icmp eq i64 %i.o, %i.b
  br i1 %.not, label %.thread, label %bb.c

bb.d:                                             ; preds = %_RNCNvMs5_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE5dedup0Cs8frGy5WneL6_4fish.exit
  %.val11 = load i64, ptr %i.g, align 8           ; 2 uses
  %i.p = icmp eq i64 %.val11, 0
  br i1 %i.p, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = shl nuw i64 %.val11, 2
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val17, i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) 4) #31, !noalias !302
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit: ; preds = %bb.d, %bb.e
  %.sroa.5.037 = add nuw i64 %.sroa.0.036, 1      ; 2 uses
  %i.r = icmp ult i64 %.sroa.5.037, %i.b
  br i1 %i.r, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit24, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit
  %.sroa.12.0.lcssa = phi i64 [ %.sroa.0.036, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit ], [ %.sroa.12.1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit24 ]
  store i64 %.sroa.12.0.lcssa, ptr %i.a, align 8
  br label %.thread

.lr.ph:                                           ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit24
  %.sroa.5.039 = phi i64 [ %.sroa.5.0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit24 ], [ %.sroa.5.037, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit ] ; 2 uses
  %.sroa.12.038 = phi i64 [ %.sroa.12.1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit24 ], [ %.sroa.0.036, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit ] ; 4 uses
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %.sroa.5.039 ; 4 uses
  %i.t = getelementptr [24 x i8], ptr %i.f, i64 %.sroa.12.038 ; 3 uses
  %i.u = getelementptr i8, ptr %i.s, i64 8
  %.val13 = load ptr, ptr %i.u, align 8           ; 3 uses
  %i.v = getelementptr i8, ptr %i.s, i64 16
  %.val14 = load i64, ptr %i.v, align 8, !noundef !16 ; 2 uses
  %i.w = getelementptr i8, ptr %i.t, i64 -8
  %.val16 = load i64, ptr %i.w, align 8, !noundef !16
  %i.x = icmp eq i64 %.val14, %.val16
  br i1 %i.x, label %_RNCNvMs5_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE5dedup0Cs8frGy5WneL6_4fish.exit23, label %_RNCNvMs5_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE5dedup0Cs8frGy5WneL6_4fish.exit23.thread

.thread:                                          ; preds = %_RNCNvMs5_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE5dedup0Cs8frGy5WneL6_4fish.exit.thread, %bb.a, %._crit_edge
  ret void

_RNCNvMs5_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE5dedup0Cs8frGy5WneL6_4fish.exit23: ; preds = %.lr.ph
  %i.y = getelementptr i8, ptr %i.t, i64 -16
  %.val15 = load ptr, ptr %i.y, align 8, !nonnull !16, !noundef !16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13) ]
  %i.z = shl nuw i64 %.val14, 2
  %bcmp.i.i.i.i22 = tail call i32 @bcmp(ptr nonnull readonly %.val13, ptr nonnull readonly %.val15, i64 %i.z)
  %i.aa = icmp eq i32 %bcmp.i.i.i.i22, 0
  br i1 %i.aa, label %bb.f, label %_RNCNvMs5_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE5dedup0Cs8frGy5WneL6_4fish.exit23.thread

_RNCNvMs5_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE5dedup0Cs8frGy5WneL6_4fish.exit23.thread: ; preds = %.lr.ph, %_RNCNvMs5_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE5dedup0Cs8frGy5WneL6_4fish.exit23
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  %i.ab = add i64 %.sroa.12.038, 1
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit24

bb.f:                                             ; preds = %_RNCNvMs5_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE5dedup0Cs8frGy5WneL6_4fish.exit23
  %.val = load i64, ptr %i.s, align 8             ; 2 uses
  %i.ac = icmp eq i64 %.val, 0
  br i1 %i.ac, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit24, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = shl nuw i64 %.val, 2
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val13, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) 4) #31, !noalias !303
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit24

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit24: ; preds = %bb.g, %bb.f, %_RNCNvMs5_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE5dedup0Cs8frGy5WneL6_4fish.exit23.thread
  %.sroa.12.1 = phi i64 [ %i.ab, %_RNCNvMs5_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE5dedup0Cs8frGy5WneL6_4fish.exit23.thread ], [ %.sroa.12.038, %bb.f ], [ %.sroa.12.038, %bb.g ] ; 2 uses
  %.sroa.5.0 = add nuw nsw i64 %.sroa.5.039, 1    ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.5.0, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventE5drainINtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFromjEEBL_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !16 ; 3 uses
  %i.c = icmp ult i64 %i.b, 192153584101141163
  tail call void @llvm.assume(i1 %i.c)
  %i.d = tail call { i64, i64 } @_RINvNtNtCs3oUPovFnLWP_4core5slice5index5rangeINtNtNtB6_3ops5range9RangeFromjEECs8frGy5WneL6_4fish(i64 noundef %2, i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 3 uses
  store i64 %i.e, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !16, !noundef !16 ; 2 uses
  %i.i = getelementptr inbounds nuw [48 x i8], ptr %i.h, i64 %i.e
  %i.j = sub i64 %i.b, %i.f
  %i.k = getelementptr inbounds nuw [48 x i8], ptr %i.h, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.f, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.j, ptr %i.m, align 8
  store ptr %i.i, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.o, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventE5drainNtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFullEBL_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !16 ; 3 uses
  %i.c = icmp ult i64 %i.b, 192153584101141163
  tail call void @llvm.assume(i1 %i.c)
  %i.d = tail call { i64, i64 } @_RINvNtNtCs3oUPovFnLWP_4core5slice5index5rangeNtNtNtB6_3ops5range9RangeFullECs8frGy5WneL6_4fish(i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 3 uses
  store i64 %i.e, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !16, !noundef !16 ; 2 uses
  %i.i = getelementptr inbounds nuw [48 x i8], ptr %i.h, i64 %i.e
  %i.j = sub i64 %i.b, %i.f
  %i.k = getelementptr inbounds nuw [48 x i8], ptr %i.h, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.f, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.j, ptr %i.m, align 8
  store ptr %i.i, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.o, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingE6retainNCNvMs6_BH_NtBH_10BindingSet5clears_0EBL_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !311)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !311, !noalias !312, !noundef !16 ; 6 uses
  %i.c = icmp ult i64 %i.b, 82351536043346213
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingE10retain_mutNCINvB2_6retainNCNvMs6_BH_NtBH_10BindingSet5clears_0E0EBL_.exit, label %.preheader37.i

.preheader37.i:                                   ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !311, !noalias !312, !nonnull !16, !noundef !16 ; 6 uses
  %i.g = load ptr, ptr %1, align 8, !noalias !313, !nonnull !16, !align !24, !noundef !16 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !noalias !313, !align !22, !noundef !16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %_RNCINvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingE6retainNCNvMs6_BJ_NtBJ_10BindingSet5clears_0E0BN_.exit.thread31.i, label %.preheader37.split.i, !prof !314

.preheader37.split.i:                             ; preds = %.preheader37.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.j = load i64, ptr %i.i, align 8, !noalias !313 ; 2 uses
  %i.k = shl nuw i64 %i.j, 2
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingE6retainNCNvMs6_BJ_NtBJ_10BindingSet5clears_0E0BN_.exit.thread.i, %.preheader37.split.i
  %.sroa.0.0.i = phi i64 [ %i.p, %_RNCINvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingE6retainNCNvMs6_BJ_NtBJ_10BindingSet5clears_0E0BN_.exit.thread.i ], [ 0, %.preheader37.split.i ] ; 3 uses
  %i.l = getelementptr inbounds nuw [112 x i8], ptr %i.f, i64 %.sroa.0.0.i ; 3 uses
  %i.m = getelementptr i8, ptr %i.l, i64 64
  %.val13.i = load i64, ptr %i.m, align 8, !noalias !313
  %i.n = icmp eq i64 %i.j, %.val13.i
  br i1 %i.n, label %_RNCINvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingE6retainNCNvMs6_BJ_NtBJ_10BindingSet5clears_0E0BN_.exit.i, label %_RNCINvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingE6retainNCNvMs6_BJ_NtBJ_10BindingSet5clears_0E0BN_.exit.thread.i

_RNCINvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingE6retainNCNvMs6_BJ_NtBJ_10BindingSet5clears_0E0BN_.exit.i: ; preds = %bb.b
  %i.o = getelementptr i8, ptr %i.l, i64 56
  %.val12.i = load ptr, ptr %i.o, align 8, !noalias !313, !nonnull !16, !noundef !16
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull %i.h, ptr nonnull readonly %.val12.i, i64 %i.k), !noalias !313
  %.not.i = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %.not.i, label %_RNCINvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingE6retainNCNvMs6_BJ_NtBJ_10BindingSet5clears_0E0BN_.exit.thread31.i, label %_RNCINvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingE6retainNCNvMs6_BJ_NtBJ_10BindingSet5clears_0E0BN_.exit.thread.i, !prof !25

_RNCINvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingE6retainNCNvMs6_BJ_NtBJ_10BindingSet5clears_0E0BN_.exit.thread.i: ; preds = %_RNCINvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingE6retainNCNvMs6_BJ_NtBJ_10BindingSet5clears_0E0BN_.exit.i, %bb.b
  %i.p = add nuw nsw i64 %.sroa.0.0.i, 1          ; 2 uses
  %i.q = icmp eq i64 %i.p, %i.b
  br i1 %i.q, label %_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingE10retain_mutNCINvB2_6retainNCNvMs6_BH_NtBH_10BindingSet5clears_0E0EBL_.exit, label %bb.b

_RNCINvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingE6retainNCNvMs6_BJ_NtBJ_10BindingSet5clears_0E0BN_.exit.thread31.i: ; preds = %_RNCINvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingE6retainNCNvMs6_BJ_NtBJ_10BindingSet5clears_0E0BN_.exit.i, %.preheader37.i
  %.us-phi.i = phi i64 [ 0, %.preheader37.i ], [ %.sroa.0.0.i, %_RNCINvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingE6retainNCNvMs6_BJ_NtBJ_10BindingSet5clears_0E0BN_.exit.i ] ; 4 uses
  %.us-phi47.i = phi ptr [ %i.f, %.preheader37.i ], [ %i.l, %_RNCINvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingE6retainNCNvMs6_BJ_NtBJ_10BindingSet5clears_0E0BN_.exit.i ]
  %i.r = add nuw nsw i64 %.us-phi.i, 1            ; 3 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingEBH_(ptr noalias nofree noundef align 8 dereferenceable(112) %.us-phi47.i)
          to label %.preheader.i unwind label %.loopexit.split-lp.i, !noalias !313

.preheader.i:                                     ; preds = %_RNCINvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingE6retainNCNvMs6_BJ_NtBJ_10BindingSet5clears_0E0BN_.exit.thread31.i
  %i.s = icmp samesign ult i64 %i.r, %i.b
  br i1 %i.s, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.d, %.preheader.i
  %.sroa.15.1.lcssa.i = phi i64 [ %.us-phi.i, %.preheader.i ], [ %.sroa.15.2.i, %bb.d ]
  store i64 %.sroa.15.1.lcssa.i, ptr %i.a, align 8, !alias.scope !311, !noalias !312
  br label %_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingE10retain_mutNCINvB2_6retainNCNvMs6_BH_NtBH_10BindingSet5clears_0E0EBL_.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.d
  %.sroa.8.150.i = phi i64 [ %.sroa.8.2.i, %bb.d ], [ %i.r, %.lr.ph.i.preheader ] ; 3 uses
  %.sroa.15.149.i = phi i64 [ %.sroa.15.2.i, %bb.d ], [ %.us-phi.i, %.lr.ph.i.preheader ] ; 4 uses
  %i.u = getelementptr inbounds nuw [112 x i8], ptr %i.f, i64 %.sroa.8.150.i ; 4 uses
  %i.v = getelementptr i8, ptr %i.u, i64 56
  %.val9.i = load ptr, ptr %i.v, align 8, !noalias !313 ; 2 uses
  %i.w = getelementptr i8, ptr %i.u, i64 64
  %.val10.i = load i64, ptr %i.w, align 8, !noalias !313 ; 2 uses
  %i.x = load ptr, ptr %i.g, align 8, !noalias !313, !align !22, !noundef !16 ; 2 uses
  %.not.i.i15.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i15.i, label %_RNCINvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingE6retainNCNvMs6_BJ_NtBJ_10BindingSet5clears_0E0BN_.exit18.thread34.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.y = load i64, ptr %i.t, align 8, !noalias !313
  %i.z = icmp eq i64 %i.y, %.val10.i
  br i1 %i.z, label %_RNCINvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingE6retainNCNvMs6_BJ_NtBJ_10BindingSet5clears_0E0BN_.exit18.i, label %_RNCINvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingE6retainNCNvMs6_BJ_NtBJ_10BindingSet5clears_0E0BN_.exit18.thread.i

_RNCINvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingE6retainNCNvMs6_BJ_NtBJ_10BindingSet5clears_0E0BN_.exit18.i: ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i) ]
  %i.aa = shl nuw i64 %.val10.i, 2
  %bcmp.i.i17.i = tail call i32 @bcmp(ptr nonnull %i.x, ptr nonnull readonly %.val9.i, i64 %i.aa), !noalias !313
  %.not36.i = icmp eq i32 %bcmp.i.i17.i, 0
  br i1 %.not36.i, label %_RNCINvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingE6retainNCNvMs6_BJ_NtBJ_10BindingSet5clears_0E0BN_.exit18.thread34.i, label %_RNCINvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingE6retainNCNvMs6_BJ_NtBJ_10BindingSet5clears_0E0BN_.exit18.thread.i

_RNCINvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingE6retainNCNvMs6_BJ_NtBJ_10BindingSet5clears_0E0BN_.exit18.thread34.i: ; preds = %_RNCINvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingE6retainNCNvMs6_BJ_NtBJ_10BindingSet5clears_0E0BN_.exit18.i, %.lr.ph.i
  %i.ab = add nuw nsw i64 %.sroa.8.150.i, 1       ; 2 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingEBH_(ptr noalias nofree noundef align 8 dereferenceable(112) %i.u)
          to label %bb.d unwind label %.loopexit.i, !noalias !313

_RNCINvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingE6retainNCNvMs6_BJ_NtBJ_10BindingSet5clears_0E0BN_.exit18.thread.i: ; preds = %_RNCINvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingE6retainNCNvMs6_BJ_NtBJ_10BindingSet5clears_0E0BN_.exit18.i, %bb.c
  %i.ac = getelementptr inbounds nuw [112 x i8], ptr %i.f, i64 %.sroa.15.149.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ac, ptr noundef nonnull align 8 dereferenceable(112) %i.u, i64 112, i1 false), !noalias !313
  %i.ad = add i64 %.sroa.15.149.i, 1
  %i.ae = add nuw nsw i64 %.sroa.8.150.i, 1
  br label %bb.d

bb.d:                                             ; preds = %_RNCINvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingE6retainNCNvMs6_BJ_NtBJ_10BindingSet5clears_0E0BN_.exit18.thread.i, %_RNCINvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingE6retainNCNvMs6_BJ_NtBJ_10BindingSet5clears_0E0BN_.exit18.thread34.i
  %.sroa.15.2.i = phi i64 [ %i.ad, %_RNCINvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingE6retainNCNvMs6_BJ_NtBJ_10BindingSet5clears_0E0BN_.exit18.thread.i ], [ %.sroa.15.149.i, %_RNCINvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingE6retainNCNvMs6_BJ_NtBJ_10BindingSet5clears_0E0BN_.exit18.thread34.i ] ; 2 uses
  %.sroa.8.2.i = phi i64 [ %i.ae, %_RNCINvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingE6retainNCNvMs6_BJ_NtBJ_10BindingSet5clears_0E0BN_.exit18.thread.i ], [ %i.ab, %_RNCINvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingE6retainNCNvMs6_BJ_NtBJ_10BindingSet5clears_0E0BN_.exit18.thread34.i ] ; 2 uses
  %i.af = icmp samesign ult i64 %.sroa.8.2.i, %i.b
  br i1 %i.af, label %.lr.ph.i, label %._crit_edge.i

.loopexit.i:                                      ; preds = %_RNCINvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingE6retainNCNvMs6_BJ_NtBJ_10BindingSet5clears_0E0BN_.exit18.thread34.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

.loopexit.split-lp.i:                             ; preds = %_RNCINvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingE6retainNCNvMs6_BJ_NtBJ_10BindingSet5clears_0E0BN_.exit.thread31.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

end_hunk_2
begin_hunk_3_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs8frGy5WneL6_4fish6reader14history_search11SearchMatchEEB1e_:bb.a
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !1250, !noundef !16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1251)
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs8frGy5WneL6_4fish6reader14history_search11SearchMatchENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBL_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish6reader14history_search11SearchMatchEBH_.exit.i.i
  %.sroa.0.011.i.i = phi i64 [ %i.g, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish6reader14history_search11SearchMatchEBH_.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %.sroa.0.011.i.i ; 2 uses
  %i.g = add nuw nsw i64 %.sroa.0.011.i.i, 1      ; 2 uses
  %.val8.i.i = load i64, ptr %i.f, align 8, !alias.scope !1251, !noalias !1250 ; 2 uses
  %i.h = icmp eq i64 %.val8.i.i, 0
  br i1 %i.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish6reader14history_search11SearchMatchEBH_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.i = getelementptr i8, ptr %i.f, i64 8
  %.val9.i.i = load ptr, ptr %i.i, align 8, !alias.scope !1251, !noalias !1250, !nonnull !16, !noundef !16
  %i.j = shl nuw i64 %.val8.i.i, 2
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 4) #31, !noalias !1252
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish6reader14history_search11SearchMatchEBH_.exit.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish6reader14history_search11SearchMatchEBH_.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.k = icmp eq i64 %i.g, %i.d
  br i1 %i.k, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs8frGy5WneL6_4fish6reader14history_search11SearchMatchENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBL_.exit, label %.lr.ph.i.i

_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs8frGy5WneL6_4fish6reader14history_search11SearchMatchENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBL_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish6reader14history_search11SearchMatchEBH_.exit.i.i, %bb.a
  %.val = load i64, ptr %0, align 8, !range !27, !alias.scope !1253, !noundef !16 ; 2 uses
  %i.l = icmp eq i64 %.val, 0
  br i1 %i.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtNtCs8frGy5WneL6_4fish6reader14history_search11SearchMatchEEB1l_.exit4, label %bb.c

bb.c:                                             ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs8frGy5WneL6_4fish6reader14history_search11SearchMatchENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBL_.exit
  %i.m = shl nuw i64 %.val, 5
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !1254
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtNtCs8frGy5WneL6_4fish6reader14history_search11SearchMatchEEB1l_.exit4

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtNtCs8frGy5WneL6_4fish6reader14history_search11SearchMatchEEB1l_.exit4: ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs8frGy5WneL6_4fish6reader14history_search11SearchMatchENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBL_.exit, %bb.c
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEB1e_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  %.val = load i64, ptr %0, align 8, !range !27, !alias.scope !1259, !noundef !16 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEB1l_.exit4, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !16, !noundef !16
  %i.c = mul nuw i64 %.val, 88
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !1260
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEB1l_.exit4

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEB1l_.exit4: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc10InputValueEEB1g_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1271)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !1271, !nonnull !16, !noundef !16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !1271, !noundef !16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1272)
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc10InputValueENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBN_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc10InputValueEBJ_.exit.i.i
  %.sroa.0.013.i.i = phi i64 [ %i.g, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc10InputValueEBJ_.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %.sroa.0.013.i.i ; 2 uses
  %i.g = add nuw nsw i64 %.sroa.0.013.i.i, 1      ; 2 uses
  %.val8.i.i = load i64, ptr %i.f, align 8, !range !19, !alias.scope !1272, !noalias !1271, !noundef !16 ; 2 uses
  %i.h = icmp sgt i64 %.val8.i.i, 0
  br i1 %i.h, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc10InputValueEBJ_.exit.i.i

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.i = getelementptr i8, ptr %i.f, i64 8
  %.val9.i.i = load ptr, ptr %i.i, align 8, !alias.scope !1272, !noalias !1271, !nonnull !16, !noundef !16
  %i.j = shl nuw i64 %.val8.i.i, 2
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 4) #31, !noalias !1273
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc10InputValueEBJ_.exit.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc10InputValueEBJ_.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.k = icmp eq i64 %i.g, %i.d
  br i1 %i.k, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc10InputValueENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBN_.exit, label %.lr.ph.i.i

_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc10InputValueENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBN_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc10InputValueEBJ_.exit.i.i, %bb.a
  %.val = load i64, ptr %0, align 8, !range !27, !alias.scope !1274, !noundef !16 ; 2 uses
  %i.l = icmp eq i64 %.val, 0
  br i1 %i.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc10InputValueEEB1n_.exit4, label %bb.c

bb.c:                                             ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc10InputValueENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBN_.exit
  %i.m = shl nuw i64 %.val, 5
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !1275
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc10InputValueEEB1n_.exit4

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc10InputValueEEB1n_.exit4: ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc10InputValueENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBN_.exit, %bb.c
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringB19_EEECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1290)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !1290, !nonnull !16, !noundef !16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !1290, !noundef !16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1291)
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringBG_EENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringBC_EECs8frGy5WneL6_4fish.exit.i.i
  %.sroa.0.07.i.i = phi i64 [ %i.g, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringBC_EECs8frGy5WneL6_4fish.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [48 x i8], ptr %i.b, i64 %.sroa.0.07.i.i ; 4 uses
  %i.g = add nuw nsw i64 %.sroa.0.07.i.i, 1       ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1292)
  %.val4.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !1293, !noalias !1290 ; 2 uses
  %i.h = icmp eq i64 %.val4.i.i.i, 0
  br i1 %i.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val5.i.i.i = load ptr, ptr %i.i, align 8, !alias.scope !1293, !noalias !1290, !nonnull !16, !noundef !16
  %i.j = shl nuw i64 %.val4.i.i.i, 2
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 4) #31, !noalias !1294
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.val.i.i.i = load i64, ptr %i.k, align 8, !alias.scope !1293, !noalias !1290 ; 2 uses
  %i.l = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringBC_EECs8frGy5WneL6_4fish.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.val1.i.i.i = load ptr, ptr %i.m, align 8, !alias.scope !1293, !noalias !1290, !nonnull !16, !noundef !16
  %i.n = shl nuw i64 %.val.i.i.i, 2
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 4) #31, !noalias !1295
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringBC_EECs8frGy5WneL6_4fish.exit.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringBC_EECs8frGy5WneL6_4fish.exit.i.i: ; preds = %bb.c, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i.i
  %i.o = icmp eq i64 %i.g, %i.d
  br i1 %i.o, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringBG_EENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish.exit, label %.lr.ph.i.i

_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringBG_EENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringBC_EECs8frGy5WneL6_4fish.exit.i.i, %bb.a
  %.val = load i64, ptr %0, align 8, !range !27, !alias.scope !1296, !noundef !16 ; 2 uses
  %i.p = icmp eq i64 %.val, 0
  br i1 %i.p, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringB1g_EEECs8frGy5WneL6_4fish.exit4, label %bb.d

bb.d:                                             ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringBG_EENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish.exit
  %i.q = mul nuw i64 %.val, 48
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !1297
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringB1g_EEECs8frGy5WneL6_4fish.exit4

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringB1g_EEECs8frGy5WneL6_4fish.exit4: ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringBG_EENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish.exit, %bb.d
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringIBC_B19_EEEECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringIBw_BG_EEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  %.val = load i64, ptr %0, align 8, !range !27, !alias.scope !1302, !noundef !16 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtBG_3vec3VecB1g_EEEECs8frGy5WneL6_4fish.exit4, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !16, !noundef !16
  %i.c = mul nuw i64 %.val, 48
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !1303
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtBG_3vec3VecB1g_EEEECs8frGy5WneL6_4fish.exit4

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtBG_3vec3VecB1g_EEEECs8frGy5WneL6_4fish.exit4: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function5FnMutuEp6OutputINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorENtNtB4_6marker4SendNtB2C_4SyncEL_EECs8frGy5WneL6_4fish(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !16 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !27, !invariant.load !16 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function5FnMutuEp6OutputINtNtBP_6result6ResultuNtNtNtBP_2io5error5ErrorENtNtBP_6marker4SendNtB2p_4SyncEL_ENtNtBN_4drop4Drop4dropCs8frGy5WneL6_4fish.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i: ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !35, !invariant.load !16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) %i.f) #31
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function5FnMutuEp6OutputINtNtBP_6result6ResultuNtNtNtBP_2io5error5ErrorENtNtBP_6marker4SendNtB2p_4SyncEL_ENtNtBN_4drop4Drop4dropCs8frGy5WneL6_4fish.exit

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function5FnMutuEp6OutputINtNtBP_6result6ResultuNtNtNtBP_2io5error5ErrorENtNtBP_6marker4SendNtB2p_4SyncEL_ENtNtBN_4drop4Drop4dropCs8frGy5WneL6_4fish.exit: ; preds = %bb.c, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i
  ret void

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !27, !invariant.load !16 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function5FnMutuEp6OutputINtNtBP_6result6ResultuNtNtNtBP_2io5error5ErrorENtNtBP_6marker4SendNtB2p_4SyncEL_ENtNtBN_4drop4Drop4dropCs8frGy5WneL6_4fish.exit5, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4: ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !35, !invariant.load !16
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) %i.l) #31
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function5FnMutuEp6OutputINtNtBP_6result6ResultuNtNtNtBP_2io5error5ErrorENtNtBP_6marker4SendNtB2p_4SyncEL_ENtNtBN_4drop4Drop4dropCs8frGy5WneL6_4fish.exit5

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function5FnMutuEp6OutputINtNtBP_6result6ResultuNtNtNtBP_2io5error5ErrorENtNtBP_6marker4SendNtB2p_4SyncEL_ENtNtBN_4drop4Drop4dropCs8frGy5WneL6_4fish.exit5: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4, %bb.d
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECs8frGy5WneL6_4fish(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !16 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !27, !invariant.load !16 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtBP_6marker4SendEL_ENtNtBN_4drop4Drop4dropCs8frGy5WneL6_4fish.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i: ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !35, !invariant.load !16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) %i.f) #31
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtBP_6marker4SendEL_ENtNtBN_4drop4Drop4dropCs8frGy5WneL6_4fish.exit

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtBP_6marker4SendEL_ENtNtBN_4drop4Drop4dropCs8frGy5WneL6_4fish.exit: ; preds = %bb.c, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i
  ret void

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !27, !invariant.load !16 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtBP_6marker4SendEL_ENtNtBN_4drop4Drop4dropCs8frGy5WneL6_4fish.exit5, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4: ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !35, !invariant.load !16
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) %i.l) #31
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtBP_6marker4SendEL_ENtNtBN_4drop4Drop4dropCs8frGy5WneL6_4fish.exit5

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtBP_6marker4SendEL_ENtNtBN_4drop4Drop4dropCs8frGy5WneL6_4fish.exit5: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4, %bb.d
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions10ExpressionEL_EEB1j_(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !16 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !27, !invariant.load !16 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions10ExpressionEL_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i: ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !35, !invariant.load !16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) %i.f) #31
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions10ExpressionEL_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_.exit

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions10ExpressionEL_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_.exit: ; preds = %bb.c, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i
  ret void

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !27, !invariant.load !16 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions10ExpressionEL_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_.exit5, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4: ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !35, !invariant.load !16
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) %i.l) #31
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions10ExpressionEL_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_.exit5

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions10ExpressionEL_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_.exit5: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4, %bb.d
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtCs8n0tpEuULLm_5pcre23ffi9MatchDataNtB1d_15CodeUnitWidth32EEECs8frGy5WneL6_4fish(ptr nonnull %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsd_NtCs8n0tpEuULLm_5pcre23ffiINtB5_9MatchDataNtB5_15CodeUnitWidth32ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %.0.val)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs8n0tpEuULLm_5pcre23ffi9MatchDataNtBE_15CodeUnitWidth32EECs8frGy5WneL6_4fish.exit unwind label %bb.b

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs8n0tpEuULLm_5pcre23ffi9MatchDataNtBE_15CodeUnitWidth32EECs8frGy5WneL6_4fish.exit: ; preds = %bb.a
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 64, i64 noundef 8) #31
  ret void

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 64, i64 noundef 8) #31
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast12ElseifClauseEEB1f_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !16, !noundef !16 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !16 ; 6 uses
  %cond = icmp eq i64 %i.c, 0
  br i1 %cond, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast12ElseifClauseENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit5, label %.lr.ph

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast12ElseifClauseEBF_.exit.i: ; preds = %.lr.ph
  %i.d = icmp eq i64 %i.f, %i.c
  br i1 %i.d, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast12ElseifClauseEBF_.exit.i
  %.sroa.0.0.i6 = phi i64 [ %i.f, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast12ElseifClauseEBF_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [224 x i8], ptr %i.a, i64 %.sroa.0.0.i6
  %i.f = add i64 %.sroa.0.0.i6, 1                 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8IfClauseEBF_(ptr noalias nofree noundef align 8 dereferenceable(208) %i.g)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast12ElseifClauseEBF_.exit.i unwind label %bb.b, !inline_history !0

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast12ElseifClauseEBF_.exit7.i: ; preds = %.lr.ph8
  %i.h = add i64 %.sroa.0.1.i7, 1                 ; 2 uses
  %i.i = icmp eq i64 %i.h, %i.c
  br i1 %i.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i, label %.lr.ph8

bb.b:                                             ; preds = %.lr.ph
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = icmp eq i64 %i.f, %i.c
  br i1 %i.k, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i, label %.lr.ph8

.lr.ph8:                                          ; preds = %bb.b, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast12ElseifClauseEBF_.exit7.i
  %.sroa.0.1.i7 = phi i64 [ %i.h, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast12ElseifClauseEBF_.exit7.i ], [ %i.f, %bb.b ] ; 2 uses
  %i.l = getelementptr inbounds nuw [224 x i8], ptr %i.a, i64 %.sroa.0.1.i7
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8IfClauseEBF_(ptr noalias nofree noundef align 8 dereferenceable(208) %i.m)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast12ElseifClauseEBF_.exit7.i unwind label %bb.c, !inline_history !0

bb.c:                                             ; preds = %.lr.ph8
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !inline_history !1
  unreachable

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast12ElseifClauseEBF_.exit7.i, %bb.b
  %i.o = mul nuw nsw i64 %i.c, 224
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef %i.o, i64 noundef 8) #31
  resume { ptr, i32 } %i.j

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast12ElseifClauseEBF_.exit.i
  %i.p = mul nuw nsw i64 %i.c, 224
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef %i.p, i64 noundef 8) #31
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast12ElseifClauseENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit5

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast12ElseifClauseENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit5: ; preds = %bb.a, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionEEB1f_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !16, !noundef !16 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !16 ; 6 uses
  %cond = icmp eq i64 %i.c, 0
  br i1 %cond, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit5, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.d = icmp eq i64 %i.f, %i.c
  br i1 %i.d, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i6 = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [160 x i8], ptr %i.a, i64 %.sroa.0.0.i6
  %i.f = add i64 %.sroa.0.0.i6, 1                 ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionEBF_(ptr noalias nofree noundef align 8 dereferenceable(160) %i.e)
          to label %bb.b unwind label %bb.d, !inline_history !2

bb.c:                                             ; preds = %.lr.ph8
  %i.g = add i64 %.sroa.0.1.i7, 1                 ; 2 uses
  %i.h = icmp eq i64 %i.g, %i.c
  br i1 %i.h, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i, label %.lr.ph8

bb.d:                                             ; preds = %.lr.ph
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = icmp eq i64 %i.f, %i.c
  br i1 %i.j, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i, label %.lr.ph8

.lr.ph8:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i7 = phi i64 [ %i.g, %bb.c ], [ %i.f, %bb.d ] ; 2 uses
  %i.k = getelementptr inbounds nuw [160 x i8], ptr %i.a, i64 %.sroa.0.1.i7
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionEBF_(ptr noalias nofree noundef align 8 dereferenceable(160) %i.k) #33
          to label %bb.c unwind label %bb.e, !inline_history !2

bb.e:                                             ; preds = %.lr.ph8
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !inline_history !2
  unreachable

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i: ; preds = %bb.c, %bb.d
  %i.m = mul nuw nsw i64 %i.c, 160
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef %i.m, i64 noundef 8) #31
  resume { ptr, i32 } %i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4: ; preds = %bb.b
  %i.n = mul nuw nsw i64 %i.c, 160
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef %i.n, i64 noundef 8) #31
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit5

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit5: ; preds = %bb.a, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEEB1f_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !16, !noundef !16 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !16 ; 6 uses
  %cond = icmp eq i64 %i.c, 0
  br i1 %cond, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast15JobContinuationENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit5, label %.lr.ph

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBF_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i
  %i.d = icmp eq i64 %i.f, %i.c
  br i1 %i.d, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBF_.exit
  %.sroa.0.0.i6 = phi i64 [ %i.f, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBF_.exit ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [96 x i8], ptr %i.a, i64 %.sroa.0.0.i6 ; 3 uses
  %i.f = add i64 %.sroa.0.0.i6, 1                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1307)
  %i.g = getelementptr i8, ptr %i.e, i64 72
  %.val1.i = load i64, ptr %i.g, align 8, !alias.scope !1307, !noundef !16 ; 2 uses
  %i.h = icmp eq i64 %.val1.i, 0
  br i1 %i.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %.val.i = load ptr, ptr %i.i, align 8, !alias.scope !1307, !nonnull !16, !noundef !16
  %i.j = mul nuw nsw i64 %.val1.i, 12
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.j, i64 noundef 4) #31, !noalias !1307, !inline_history !1306
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast9StatementEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.k)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBF_.exit unwind label %bb.c, !inline_history !1306

bb.b:                                             ; preds = %.lr.ph8
  %i.l = add i64 %.sroa.0.1.i7, 1                 ; 2 uses
  %i.m = icmp eq i64 %i.l, %i.c
  br i1 %i.m, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i, label %.lr.ph8

bb.c:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i
  %i.n = landingpad { ptr, i32 }
          cleanup
end_hunk_3
begin_hunk_4_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEEB1f_:bb.a
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBF_(ptr noalias nofree noundef align 8 dereferenceable(96) %i.p) #33
          to label %bb.b unwind label %bb.d, !inline_history !3

bb.d:                                             ; preds = %.lr.ph8
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !inline_history !3
  unreachable

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i: ; preds = %bb.b, %bb.c
  %i.r = mul nuw nsw i64 %i.c, 96
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef %i.r, i64 noundef 8) #31
  resume { ptr, i32 } %i.n

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBF_.exit
  %i.s = mul nuw nsw i64 %i.c, 96
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef %i.s, i64 noundef 8) #31
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast15JobContinuationENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit5

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast15JobContinuationENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit5: ; preds = %bb.a, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast26JobConjunctionContinuationEEB1f_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !16, !noundef !16 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !16 ; 6 uses
  %cond = icmp eq i64 %i.c, 0
  br i1 %cond, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast26JobConjunctionContinuationENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit5, label %.lr.ph

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast26JobConjunctionContinuationEBF_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast11JobPipelineEBF_.exit.i
  %i.d = icmp eq i64 %i.f, %i.c
  br i1 %i.d, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast26JobConjunctionContinuationEBF_.exit
  %.sroa.0.0.i20 = phi i64 [ %i.f, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast26JobConjunctionContinuationEBF_.exit ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [144 x i8], ptr %i.a, i64 %.sroa.0.0.i20 ; 5 uses
  %i.f = add i64 %.sroa.0.0.i20, 1                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1312)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1313)
  %i.g = getelementptr i8, ptr %i.e, i64 104
  %.val2.i.i = load i64, ptr %i.g, align 8, !alias.scope !1314, !noundef !16 ; 2 uses
  %i.h = icmp eq i64 %.val2.i.i, 0
  br i1 %i.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %.val.i.i = load ptr, ptr %i.i, align 8, !alias.scope !1314, !nonnull !16, !noundef !16
  %i.j = mul nuw nsw i64 %.val2.i.i, 12
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.j, i64 noundef 4) #31, !noalias !1314
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i, %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast9StatementEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.k)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast11JobPipelineEBF_.exit.i unwind label %bb.b, !inline_history !1315

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast19JobContinuationListEBF_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.m) #33
          to label %.body6 unwind label %bb.c, !inline_history !1315

bb.c:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !inline_history !1315
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast11JobPipelineEBF_.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast19JobContinuationListEBF_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.o)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast26JobConjunctionContinuationEBF_.exit unwind label %bb.e, !inline_history !1316

bb.d:                                             ; preds = %.lr.ph22
  %i.p = add i64 %.sroa.0.1.i21, 1                ; 2 uses
  %i.q = icmp eq i64 %i.p, %i.c
  br i1 %i.q, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i, label %.lr.ph22

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast11JobPipelineEBF_.exit.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body6

.body6:                                           ; preds = %bb.b, %bb.e
  %eh.lpad-body7 = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.l, %bb.b ]
  %i.s = icmp eq i64 %i.f, %i.c
  br i1 %i.s, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i, label %.lr.ph22

.lr.ph22:                                         ; preds = %.body6, %bb.d
  %.sroa.0.1.i21 = phi i64 [ %i.p, %bb.d ], [ %i.f, %.body6 ] ; 2 uses
  %i.t = getelementptr inbounds nuw [144 x i8], ptr %i.a, i64 %.sroa.0.1.i21
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast26JobConjunctionContinuationEBF_(ptr noalias nofree noundef align 8 dereferenceable(144) %i.t) #33
          to label %bb.d unwind label %bb.f, !inline_history !1317

bb.f:                                             ; preds = %.lr.ph22
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !inline_history !1317
  unreachable

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i: ; preds = %bb.d, %.body6
  %i.v = mul nuw nsw i64 %i.c, 144
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef %i.v, i64 noundef 8) #31
  resume { ptr, i32 } %eh.lpad-body7

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast26JobConjunctionContinuationEBF_.exit
  %i.w = mul nuw nsw i64 %i.c, 144
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef %i.w, i64 noundef 8) #31
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast26JobConjunctionContinuationENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit5

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast26JobConjunctionContinuationENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit5: ; preds = %bb.a, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast8AndorJobEEB1f_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !16, !noundef !16 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !16 ; 6 uses
  %cond = icmp eq i64 %i.c, 0
  br i1 %cond, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast8AndorJobENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit5, label %.lr.ph

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit6: ; preds = %.lr.ph
  %i.d = icmp eq i64 %i.f, %i.c
  br i1 %i.d, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit6
  %.sroa.0.0.i7 = phi i64 [ %i.f, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit6 ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [160 x i8], ptr %i.a, i64 %.sroa.0.0.i7
  %i.f = add i64 %.sroa.0.0.i7, 1                 ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit6 unwind label %bb.b, !inline_history !1318

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit: ; preds = %.lr.ph9
  %i.g = add i64 %.sroa.0.1.i8, 1                 ; 2 uses
  %i.h = icmp eq i64 %i.g, %i.c
  br i1 %i.h, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i, label %.lr.ph9

bb.b:                                             ; preds = %.lr.ph
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = icmp eq i64 %i.f, %i.c
  br i1 %i.j, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i, label %.lr.ph9

.lr.ph9:                                          ; preds = %bb.b, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit
  %.sroa.0.1.i8 = phi i64 [ %i.g, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit ], [ %i.f, %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds nuw [160 x i8], ptr %i.a, i64 %.sroa.0.1.i8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.k)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit unwind label %bb.c, !inline_history !1318

bb.c:                                             ; preds = %.lr.ph9
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !inline_history !6
  unreachable

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit, %bb.b
  %i.m = mul nuw nsw i64 %i.c, 160
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef %i.m, i64 noundef 8) #31
  resume { ptr, i32 } %i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit6
  %i.n = mul nuw nsw i64 %i.c, 160
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef %i.n, i64 noundef 8) #31
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast8AndorJobENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit5

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast8AndorJobENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit5: ; preds = %bb.a, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs8n0tpEuULLm_5pcre24pool4PoolINtNtBG_3ffi9MatchDataNtB1d_15CodeUnitWidth32EINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputB1a_NtNtB4_6marker4SendNtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtB3t_10UnwindSafeNtB3a_4SyncEL_EEECs8frGy5WneL6_4fish(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1329)
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %.val.i.i = load ptr, ptr %i.a, align 8, !alias.scope !1329 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 32
  %.val2.i.i = load ptr, ptr %i.b, align 8, !alias.scope !1329, !nonnull !16, !align !24, !noundef !16 ; 5 uses
  %i.c = load ptr, ptr %.val2.i.i, align 8, !invariant.load !16, !noalias !1329 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.c(ptr noundef nonnull %.val.i.i)
          to label %bb.c unwind label %bb.d, !noalias !1329

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !27, !invariant.load !16, !noalias !1329 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputINtNtCs8n0tpEuULLm_5pcre23ffi9MatchDataNtB1O_15CodeUnitWidth32ENtNtB4_6marker4SendNtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtB37_10UnwindSafeNtB2O_4SyncEL_EECs8frGy5WneL6_4fish.exit.i.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 16
  %i.h = load i64, ptr %i.g, align 8, !range !35, !invariant.load !16, !noalias !1329
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) %i.h) #31, !noalias !1329
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputINtNtCs8n0tpEuULLm_5pcre23ffi9MatchDataNtB1O_15CodeUnitWidth32ENtNtB4_6marker4SendNtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtB37_10UnwindSafeNtB2O_4SyncEL_EECs8frGy5WneL6_4fish.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !27, !invariant.load !16, !noalias !1329 ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %.body.i.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i: ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 16
  %i.n = load i64, ptr %i.m, align 8, !range !35, !invariant.load !16, !noalias !1329
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) %i.n) #31, !noalias !1329
  br label %.body.i.i

.body.i.i:                                        ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i, %bb.d
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtCs8n0tpEuULLm_5pcre24pool5inner9CacheLineINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexIBC_INtNtBG_5boxed3BoxINtNtB1f_3ffi9MatchDataNtB38_15CodeUnitWidth32EEEEEEECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %.0.val) #33
          to label %bb.e unwind label %bb.j

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputINtNtCs8n0tpEuULLm_5pcre23ffi9MatchDataNtB1O_15CodeUnitWidth32ENtNtB4_6marker4SendNtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtB37_10UnwindSafeNtB2O_4SyncEL_EECs8frGy5WneL6_4fish.exit.i.i: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %bb.c
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtCs8n0tpEuULLm_5pcre24pool5inner9CacheLineINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexIBC_INtNtBG_5boxed3BoxINtNtB1f_3ffi9MatchDataNtB38_15CodeUnitWidth32EEEEEEECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %.0.val)
          to label %bb.h unwind label %bb.g

bb.e:                                             ; preds = %bb.g, %.body.i.i
  %.pn.i.i = phi { ptr, i32 } [ %i.r, %bb.g ], [ %i.i, %.body.i.i ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.0.val, i64 48 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !range !32, !alias.scope !1330, !noundef !16
  %i.q = icmp eq i64 %i.p, 2
  br i1 %i.q, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvXsd_NtCs8n0tpEuULLm_5pcre23ffiINtB5_9MatchDataNtB5_15CodeUnitWidth32ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.o)
          to label %bb.l unwind label %bb.j

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputINtNtCs8n0tpEuULLm_5pcre23ffi9MatchDataNtB1O_15CodeUnitWidth32ENtNtB4_6marker4SendNtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtB37_10UnwindSafeNtB2O_4SyncEL_EECs8frGy5WneL6_4fish.exit.i.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.h:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputINtNtCs8n0tpEuULLm_5pcre23ffi9MatchDataNtB1O_15CodeUnitWidth32ENtNtB4_6marker4SendNtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtB37_10UnwindSafeNtB2O_4SyncEL_EECs8frGy5WneL6_4fish.exit.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.0.val, i64 48 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !range !32, !alias.scope !1331, !noundef !16
  %i.u = icmp eq i64 %i.t, 2
  br i1 %i.u, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtNtCs8n0tpEuULLm_5pcre24pool5inner4PoolINtNtB1h_3ffi9MatchDataNtB1U_15CodeUnitWidth32EIBC_DINtNtNtB4_3ops8function2FnuEp6OutputB1R_NtNtB4_6marker4SendNtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtB3G_10UnwindSafeNtB3n_4SyncEL_EEEECs8frGy5WneL6_4fish.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvXsd_NtCs8n0tpEuULLm_5pcre23ffiINtB5_9MatchDataNtB5_15CodeUnitWidth32ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.s)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtNtCs8n0tpEuULLm_5pcre24pool5inner4PoolINtNtB1h_3ffi9MatchDataNtB1U_15CodeUnitWidth32EIBC_DINtNtNtB4_3ops8function2FnuEp6OutputB1R_NtNtB4_6marker4SendNtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtB3G_10UnwindSafeNtB3n_4SyncEL_EEEECs8frGy5WneL6_4fish.exit unwind label %bb.k

bb.j:                                             ; preds = %bb.f, %.body.i.i
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.f, %bb.e
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.w, %bb.k ], [ %.pn.i.i, %bb.f ], [ %.pn.i.i, %bb.e ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 112, i64 noundef 8) #31
  resume { ptr, i32 } %eh.lpad-body.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtNtCs8n0tpEuULLm_5pcre24pool5inner4PoolINtNtB1h_3ffi9MatchDataNtB1U_15CodeUnitWidth32EIBC_DINtNtNtB4_3ops8function2FnuEp6OutputB1R_NtNtB4_6marker4SendNtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtB3G_10UnwindSafeNtB3n_4SyncEL_EEEECs8frGy5WneL6_4fish.exit: ; preds = %bb.h, %bb.i
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 112, i64 noundef 8) #31
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropINtNtBI_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENtNtB28_9utfstring11Utf32StringEECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1340)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !1340, !nonnull !16, !noundef !16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !1340, !noundef !16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !1340, !noundef !16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1341)
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i
  %.sroa.0.011.i.i = phi i64 [ %i.h, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %.sroa.0.011.i.i ; 2 uses
  %i.h = add nuw nsw i64 %.sroa.0.011.i.i, 1      ; 2 uses
  %.val8.i.i = load i64, ptr %i.g, align 8, !alias.scope !1341, !noalias !1340 ; 2 uses
  %i.i = icmp eq i64 %.val8.i.i, 0
  br i1 %i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.j = getelementptr i8, ptr %i.g, i64 8
  %.val9.i.i = load ptr, ptr %i.j, align 8, !alias.scope !1341, !noalias !1340, !nonnull !16, !noundef !16
  %i.k = shl nuw i64 %.val8.i.i, 2
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) 4) #31, !noalias !1342
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.l = icmp eq i64 %i.h, %i.e
  br i1 %i.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i, label %.lr.ph.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i, %bb.a
  %i.m = icmp eq i64 %i.c, 0
  br i1 %i.m, label %_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec13in_place_dropINtB5_24InPlaceDstDataSrcBufDropINtNtB9_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENtNtB1F_9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish.exit, label %bb.c

bb.c:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i
  %i.n = mul nuw i64 %i.c, 24
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !1343
  br label %_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec13in_place_dropINtB5_24InPlaceDstDataSrcBufDropINtNtB9_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENtNtB1F_9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish.exit

_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec13in_place_dropINtB5_24InPlaceDstDataSrcBufDropINtNtB9_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENtNtB1F_9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i, %bb.c
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtBI_6string6StringB1L_EECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1354)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !1354, !nonnull !16, !noundef !16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !1354, !noundef !16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !1354, !noundef !16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1355)
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit.i.i
  %.sroa.0.010.i.i = phi i64 [ %i.h, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %.sroa.0.010.i.i ; 2 uses
  %i.h = add nuw nsw i64 %.sroa.0.010.i.i, 1      ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1356)
  %.val.i.i.i = load i64, ptr %i.g, align 8, !alias.scope !1357, !noalias !1354 ; 2 uses
  %i.i = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.val1.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !1357, !noalias !1354, !nonnull !16, !noundef !16
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !1358
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.k = icmp eq i64 %i.h, %i.e
  br i1 %i.k, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit.i, label %.lr.ph.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit.i.i, %bb.a
  %i.l = icmp eq i64 %i.c, 0
  br i1 %i.l, label %_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec13in_place_dropINtB5_24InPlaceDstDataSrcBufDropNtNtB9_6string6StringB1i_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish.exit, label %bb.c

bb.c:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit.i
  %i.m = mul nuw i64 %i.c, 24
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !1359
  br label %_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec13in_place_dropINtB5_24InPlaceDstDataSrcBufDropNtNtB9_6string6StringB1i_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish.exit

_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec13in_place_dropINtB5_24InPlaceDstDataSrcBufDropNtNtB9_6string6StringB1i_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit.i, %bb.c
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtCs8frGy5WneL6_4fish8complete10CompletionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEEB1P_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1368)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !1368, !nonnull !16, !noundef !16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !1368, !noundef !16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !1368, !noundef !16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1369)
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i
  %.sroa.0.011.i.i = phi i64 [ %i.h, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %.sroa.0.011.i.i ; 2 uses
  %i.h = add nuw nsw i64 %.sroa.0.011.i.i, 1      ; 2 uses
  %.val8.i.i = load i64, ptr %i.g, align 8, !alias.scope !1369, !noalias !1368 ; 2 uses
  %i.i = icmp eq i64 %.val8.i.i, 0
  br i1 %i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.j = getelementptr i8, ptr %i.g, i64 8
  %.val9.i.i = load ptr, ptr %i.j, align 8, !alias.scope !1369, !noalias !1368, !nonnull !16, !noundef !16
  %i.k = shl nuw i64 %.val8.i.i, 2
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) 4) #31, !noalias !1370
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.l = icmp eq i64 %i.h, %i.e
  br i1 %i.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i, label %.lr.ph.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i, %bb.a
  %i.m = icmp eq i64 %i.c, 0
  br i1 %i.m, label %_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec13in_place_dropINtB5_24InPlaceDstDataSrcBufDropNtNtCs8frGy5WneL6_4fish8complete10CompletionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1m_.exit, label %bb.c

bb.c:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i
  %i.n = mul nuw i64 %i.c, 56
end_hunk_4
begin_hunk_5_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters6filter6FilterINtNtBG_7flatten7FlatMapINtNtNtB4_5slice4iter4IterNtNtCs1xwejQucwHj_5alloc6string6StringEINtNtB27_3vec3VecNtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageENCINvNvMs2_NtNtCs8frGy5WneL6_4fish12localization8settingsNtB46_17LocalizationState15update_from_env17update_precedenceB2X_E0ENCB3X_s_0EEB4a_:bb.a
bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !1567, !noundef !16
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageEEECs8frGy5WneL6_4fish.exit2.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageEEECs8frGy5WneL6_4fish.exit2.i.i unwind label %bb.f

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageEEECs8frGy5WneL6_4fish.exit.i.i: ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !1568, !noundef !16
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtNtB4_5slice4iter4IterNtNtCs1xwejQucwHj_5alloc6string6StringEINtNtB1L_3vec3VecNtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageENCINvNvMs2_NtNtCs8frGy5WneL6_4fish12localization8settingsNtB3K_17LocalizationState15update_from_env17update_precedenceB2B_E0EEB3O_.exit, label %bb.e

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageEEECs8frGy5WneL6_4fish.exit.i.i
  tail call void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.h)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtNtB4_5slice4iter4IterNtNtCs1xwejQucwHj_5alloc6string6StringEINtNtB1L_3vec3VecNtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageENCINvNvMs2_NtNtCs8frGy5WneL6_4fish12localization8settingsNtB3K_17LocalizationState15update_from_env17update_precedenceB2B_E0EEB3O_.exit

bb.f:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageEEECs8frGy5WneL6_4fish.exit2.i.i: ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.d

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtNtB4_5slice4iter4IterNtNtCs1xwejQucwHj_5alloc6string6StringEINtNtB1L_3vec3VecNtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageENCINvNvMs2_NtNtCs8frGy5WneL6_4fish12localization8settingsNtB3K_17LocalizationState15update_from_env17update_precedenceB2B_E0EEB3O_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageEEECs8frGy5WneL6_4fish.exit.i.i, %bb.e
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCshMbxjpSxucW_12fish_wgetopt9WGetopterECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1581)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1582)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !1583, !nonnull !16, !noundef !16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !1583, !noundef !16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1584)
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit.i.i.i
  %.sroa.0.013.i.i.i = phi i64 [ %i.g, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit.i.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.0.013.i.i.i ; 2 uses
  %i.g = add nuw nsw i64 %.sroa.0.013.i.i.i, 1    ; 2 uses
  %.val8.i.i.i = load i64, ptr %i.f, align 8, !range !19, !alias.scope !1584, !noalias !1583, !noundef !16 ; 2 uses
  %i.h = icmp sgt i64 %.val8.i.i.i, 0
  br i1 %i.h, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit.i.i.i

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.i = getelementptr i8, ptr %i.f, i64 8
  %.val9.i.i.i = load ptr, ptr %i.i, align 8, !alias.scope !1584, !noalias !1583, !nonnull !16, !noundef !16
  %i.j = shl nuw i64 %.val8.i.i.i, 2
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 4) #31, !noalias !1585
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i
  %i.k = icmp eq i64 %i.g, %i.d
  br i1 %i.k, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish.exit.i, label %.lr.ph.i.i.i

_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit.i.i.i, %bb.a
  %.val.i = load i64, ptr %0, align 8, !range !27, !alias.scope !1586, !noundef !16 ; 2 uses
  %i.l = icmp eq i64 %.val.i, 0
  br i1 %i.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEEECs8frGy5WneL6_4fish.exit, label %bb.c

bb.c:                                             ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish.exit.i
  %i.m = mul nuw i64 %.val.i, 24
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !1587
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEEECs8frGy5WneL6_4fish.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEEECs8frGy5WneL6_4fish.exit: ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish.exit.i, %bb.c
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !31, !noundef !16
  switch i64 %i.a, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit [
    i64 2, label %bb.b
    i64 3, label %bb.d
  ]

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1594)
  %.val.i = load i64, ptr %i.b, align 8, !alias.scope !1594 ; 2 uses
  %i.c = icmp eq i64 %.val.i, 0
  br i1 %i.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load ptr, ptr %i.d, align 8, !alias.scope !1594, !nonnull !16, !noundef !16
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !1595
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load i64, ptr %i.e, align 8             ; 2 uses
  %i.f = icmp eq i64 %.val, 0
  br i1 %i.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.g, align 8, !nonnull !16, !noundef !16
  %i.h = shl nuw i64 %.val, 2
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 4) #31, !noalias !1596
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !16, !noundef !16
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !1599
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs3zOvCg6Ax1K_13fluent_bundle5types11FluentValueECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !1608, !noundef !16 ; 3 uses
  %i.b = icmp ne i64 %i.a, 3
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, -2
  %i.d = icmp samesign ugt i64 %i.a, 1
  %i.e = select i1 %i.d, i64 %i.c, i64 1
  switch i64 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECs8frGy5WneL6_4fish.exit [
    i64 0, label %bb.b
    i64 1, label %bb.d
    i64 2, label %bb.f
  ]

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECs8frGy5WneL6_4fish.exit: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i, %bb.h, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load i64, ptr %i.f, align 8, !range !19, !noundef !16 ; 2 uses
  %i.g = icmp sgt i64 %.val, 0
  br i1 %i.g, label %bb.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECs8frGy5WneL6_4fish.exit

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.h, align 8, !nonnull !16, !noundef !16
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !1609
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECs8frGy5WneL6_4fish.exit

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val2 = load i64, ptr %i.i, align 8, !range !19, !noundef !16 ; 2 uses
  %i.j = icmp sgt i64 %.val2, 0
  br i1 %i.j, label %bb.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECs8frGy5WneL6_4fish.exit

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.val3 = load ptr, ptr %i.k, align 8, !nonnull !16, !noundef !16
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef %.val2, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !1610
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECs8frGy5WneL6_4fish.exit

bb.f:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val4 = load ptr, ptr %i.l, align 8            ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val5 = load ptr, ptr %i.m, align 8, !nonnull !16, !align !24, !noundef !16 ; 5 uses
  %i.n = load ptr, ptr %.val5, align 8, !invariant.load !16 ; 2 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4) ]
  invoke void %i.n(ptr noundef nonnull %.val4)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %.val5, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !27, !invariant.load !16 ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECs8frGy5WneL6_4fish.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %.val5, i64 16
  %i.s = load i64, ptr %i.r, align 8, !range !35, !invariant.load !16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4) ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) %i.s) #31
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECs8frGy5WneL6_4fish.exit

bb.i:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = getelementptr inbounds nuw i8, ptr %.val5, i64 8
  %i.v = load i64, ptr %i.u, align 8, !range !27, !invariant.load !16 ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtCs3zOvCg6Ax1K_13fluent_bundle5types10FluentTypeNtNtCs3oUPovFnLWP_4core6marker4SendEL_ENtNtNtB1B_3ops4drop4Drop4dropCs8frGy5WneL6_4fish.exit5.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i: ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %.val5, i64 16
  %i.y = load i64, ptr %i.x, align 8, !range !35, !invariant.load !16
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4, i64 noundef %i.v, i64 noundef range(i64 1, -9223372036854775807) %i.y) #31
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtCs3zOvCg6Ax1K_13fluent_bundle5types10FluentTypeNtNtCs3oUPovFnLWP_4core6marker4SendEL_ENtNtNtB1B_3ops4drop4Drop4dropCs8frGy5WneL6_4fish.exit5.i

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtCs3zOvCg6Ax1K_13fluent_bundle5types10FluentTypeNtNtCs3oUPovFnLWP_4core6marker4SendEL_ENtNtNtB1B_3ops4drop4Drop4dropCs8frGy5WneL6_4fish.exit5.i: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i, %bb.i
  resume { ptr, i32 } %i.t
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish13editable_line12EditableLineEBF_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val = load i64, ptr %i.a, align 8             ; 2 uses
  %i.b = icmp eq i64 %.val, 0
  br i1 %i.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val2 = load ptr, ptr %i.c, align 8, !nonnull !16, !noundef !16
  %i.d = shl nuw i64 %.val, 2
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) 4) #31, !noalias !1633
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val3 = load i64, ptr %i.e, align 8            ; 2 uses
  %i.f = icmp eq i64 %.val3, 0
  br i1 %i.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecEEB1e_.exit7, label %bb.c

bb.c:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val4 = load ptr, ptr %i.g, align 8, !nonnull !16, !noundef !16
  %i.h = shl nuw i64 %.val3, 2
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !1634
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecEEB1e_.exit7

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecEEB1e_.exit7: ; preds = %bb.c, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1635)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1636)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1637)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !1638, !nonnull !16, !noundef !16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !1638, !noundef !16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1639)
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish13editable_line4EditENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecEEB1e_.exit7, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish13editable_line4EditEBF_.exit.i.i.i.i
  %.sroa.0.07.i.i.i.i = phi i64 [ %i.p, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish13editable_line4EditEBF_.exit.i.i.i.i ], [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecEEB1e_.exit7 ] ; 2 uses
  %i.o = getelementptr inbounds nuw [104 x i8], ptr %i.k, i64 %.sroa.0.07.i.i.i.i ; 4 uses
  %i.p = add nuw nsw i64 %.sroa.0.07.i.i.i.i, 1   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1640)
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %.val4.i.i.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !1641, !noalias !1638 ; 2 uses
  %i.r = icmp eq i64 %.val4.i.i.i.i.i, 0
  br i1 %i.r, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %.val5.i.i.i.i.i = load ptr, ptr %i.s, align 8, !alias.scope !1641, !noalias !1638, !nonnull !16, !noundef !16
  %i.t = shl nuw i64 %.val4.i.i.i.i.i, 2
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i.i.i, i64 noundef %i.t, i64 noundef range(i64 1, -9223372036854775807) 4) #31, !noalias !1642
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i.i.i.i: ; preds = %bb.d, %.lr.ph.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %.val.i.i.i.i.i = load i64, ptr %i.u, align 8, !alias.scope !1641, !noalias !1638 ; 2 uses
  %i.v = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.v, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish13editable_line4EditEBF_.exit.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %.val1.i.i.i.i.i = load ptr, ptr %i.w, align 8, !alias.scope !1641, !noalias !1638, !nonnull !16, !noundef !16
  %i.x = shl nuw i64 %.val.i.i.i.i.i, 2
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %i.x, i64 noundef range(i64 1, -9223372036854775807) 4) #31, !noalias !1643
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish13editable_line4EditEBF_.exit.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish13editable_line4EditEBF_.exit.i.i.i.i: ; preds = %bb.e, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i.i.i.i
  %i.y = icmp eq i64 %i.p, %i.m
  br i1 %i.y, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish13editable_line4EditENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i.i, label %.lr.ph.i.i.i.i

_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish13editable_line4EditENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish13editable_line4EditEBF_.exit.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecEEB1e_.exit7
  %.val.i.i = load i64, ptr %i.i, align 8, !range !27, !alias.scope !1644, !noundef !16 ; 2 uses
  %i.z = icmp eq i64 %.val.i.i, 0
  br i1 %i.z, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish13editable_line11UndoHistoryEBF_.exit, label %bb.f

bb.f:                                             ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish13editable_line4EditENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i.i
  %i.aa = mul nuw i64 %.val.i.i, 104
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef %i.aa, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !1645
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish13editable_line11UndoHistoryEBF_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish13editable_line11UndoHistoryEBF_.exit: ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish13editable_line4EditENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i.i, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish20env_universal_common12CallbackDataEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !16, !noundef !16
  %i.c = shl nuw i64 %.val, 2
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 4) #31, !noalias !1656
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit: ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1657)
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !1657, !noundef !16 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit2, label %bb.c

bb.c:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit
  %i.g = atomicrmw sub ptr %i.e, i64 1 release, align 8, !noalias !1658
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit2

bb.d:                                             ; preds = %bb.c
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE9drop_slowCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #29
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit2

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit2: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit, %bb.c, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast11JobPipelineEBF_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.val2 = load i64, ptr %i.a, align 8, !noundef !16 ; 2 uses
  %i.b = icmp eq i64 %.val2, 0
  br i1 %i.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val = load ptr, ptr %i.c, align 8, !nonnull !16, !noundef !16
  %i.d = mul nuw nsw i64 %.val2, 12
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.d, i64 noundef 4) #31
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast9StatementEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.e)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEEB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast19JobContinuationListEBF_.exit unwind label %bb.d, !inline_history !1659

bb.c:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEEB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h), !inline_history !1659
  ret void

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast19JobContinuationListEBF_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionEBF_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1670)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val2.i = load i64, ptr %i.a, align 8, !alias.scope !1670, !noundef !16 ; 2 uses
  %i.b = icmp eq i64 %.val2.i, 0
  br i1 %i.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val.i = load ptr, ptr %i.c, align 8, !alias.scope !1670, !nonnull !16, !noundef !16
  %i.d = mul nuw nsw i64 %.val2.i, 12
end_hunk_5
begin_hunk_6_@_RINvXsm_NtCslEmbWASCaJL_8bitflags6traitsmNtNtB8_6parser8WriteHex9write_hexQNtNtCs3oUPovFnLWP_4core3fmt9FormatterECs8frGy5WneL6_4fish:bb.a
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvYNtNtCs25YkazkrsH5_9hashbrown6hasher18DefaultHashBuilderNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRINtCskOHnqPTvc0z_3lru10KeyWrapperNtNtCs8frGy5WneL6_4fish4proc3PidEEB2m_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 16               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2488)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2489)
  %i.b = load i64, ptr %0, align 8, !alias.scope !2489, !noalias !2488, !noundef !16
  store i128 0, ptr %i.a, align 16, !alias.scope !2488, !noalias !2489
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr @_RNvNtNtCs7EgfsMK6071_8foldhash4seed6global19GLOBAL_SEED_STORAGE, ptr %.sroa.4.0..sroa_idx.i, align 16, !alias.scope !2488, !noalias !2489
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  store i64 %i.b, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !2488, !noalias !2489
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  store i8 0, ptr %.sroa.6.0..sroa_idx.i, align 16, !alias.scope !2488, !noalias !2489
  call void @_RINvXs2_CskOHnqPTvc0z_3lruINtB6_10KeyWrapperNtNtCs8frGy5WneL6_4fish4proc3PidENtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs25YkazkrsH5_9hashbrown6hasher13DefaultHasherEBK_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %1, ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !2490)
  %i.c = load i8, ptr %.sroa.6.0..sroa_idx.i, align 16, !alias.scope !2490, !noundef !16
  %.not.i = icmp eq i8 %i.c, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !2490, !noundef !16
  br label %_RNvXs_NtCs7EgfsMK6071_8foldhash4fastNtB4_10FoldHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher6finish.exit

bb.c:                                             ; preds = %bb.a
  %i.e = load i128, ptr %i.a, align 16, !alias.scope !2490, !noundef !16 ; 2 uses
  %i.f = trunc i128 %i.e to i64
  %i.g = lshr i128 %i.e, 64
  %i.h = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !2490, !noundef !16
  %i.i = xor i64 %i.h, %i.f
  %i.j = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 16, !alias.scope !2490, !nonnull !16, !align !24, !noundef !16
  %i.k = load i64, ptr %i.j, align 8, !noalias !2490, !noundef !16
  %i.l = zext i64 %i.i to i128
  %i.m = zext i64 %i.k to i128
  %i.n = xor i128 %i.g, %i.m
  %i.o = mul nuw i128 %i.n, %i.l                  ; 2 uses
  %i.p = lshr i128 %i.o, 64
  %i.q = xor i128 %i.p, %i.o
  %i.r = trunc i128 %i.q to i64
  br label %_RNvXs_NtCs7EgfsMK6071_8foldhash4fastNtB4_10FoldHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher6finish.exit

_RNvXs_NtCs7EgfsMK6071_8foldhash4fastNtB4_10FoldHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher6finish.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.i = phi i64 [ %i.r, %bb.c ], [ %i.d, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvYNtNtCs25YkazkrsH5_9hashbrown6hasher18DefaultHashBuilderNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRINtCskOHnqPTvc0z_3lru10KeyWrapperNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 16               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2496)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2497)
  %i.b = load i64, ptr %0, align 8, !alias.scope !2497, !noalias !2496, !noundef !16
  store i128 0, ptr %i.a, align 16, !alias.scope !2496, !noalias !2497
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr @_RNvNtNtCs7EgfsMK6071_8foldhash4seed6global19GLOBAL_SEED_STORAGE, ptr %.sroa.4.0..sroa_idx.i, align 16, !alias.scope !2496, !noalias !2497
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  store i64 %i.b, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !2496, !noalias !2497
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  store i8 0, ptr %.sroa.6.0..sroa_idx.i, align 16, !alias.scope !2496, !noalias !2497
  call void @_RINvXs2_CskOHnqPTvc0z_3lruINtB6_10KeyWrapperNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs25YkazkrsH5_9hashbrown6hasher13DefaultHasherECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !2498)
  %i.c = load i8, ptr %.sroa.6.0..sroa_idx.i, align 16, !alias.scope !2498, !noundef !16
  %.not.i = icmp eq i8 %i.c, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !2498, !noundef !16
  br label %_RNvXs_NtCs7EgfsMK6071_8foldhash4fastNtB4_10FoldHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher6finish.exit

bb.c:                                             ; preds = %bb.a
  %i.e = load i128, ptr %i.a, align 16, !alias.scope !2498, !noundef !16 ; 2 uses
  %i.f = trunc i128 %i.e to i64
  %i.g = lshr i128 %i.e, 64
  %i.h = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !2498, !noundef !16
  %i.i = xor i64 %i.h, %i.f
  %i.j = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 16, !alias.scope !2498, !nonnull !16, !align !24, !noundef !16
  %i.k = load i64, ptr %i.j, align 8, !noalias !2498, !noundef !16
  %i.l = zext i64 %i.i to i128
  %i.m = zext i64 %i.k to i128
  %i.n = xor i128 %i.g, %i.m
  %i.o = mul nuw i128 %i.n, %i.l                  ; 2 uses
  %i.p = lshr i128 %i.o, 64
  %i.q = xor i128 %i.p, %i.o
  %i.r = trunc i128 %i.q to i64
  br label %_RNvXs_NtCs7EgfsMK6071_8foldhash4fastNtB4_10FoldHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher6finish.exit

_RNvXs_NtCs7EgfsMK6071_8foldhash4fastNtB4_10FoldHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher6finish.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.i = phi i64 [ %i.r, %bb.c ], [ %i.d, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvYNtNtCs25YkazkrsH5_9hashbrown6hasher18DefaultHashBuilderNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRINtCskOHnqPTvc0z_3lru6KeyRefNtNtCs8frGy5WneL6_4fish4proc3PidEEB2h_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 16               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2504)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2505)
  %i.b = load i64, ptr %0, align 8, !alias.scope !2505, !noalias !2504, !noundef !16
  store i128 0, ptr %i.a, align 16, !alias.scope !2504, !noalias !2505
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr @_RNvNtNtCs7EgfsMK6071_8foldhash4seed6global19GLOBAL_SEED_STORAGE, ptr %.sroa.4.0..sroa_idx.i, align 16, !alias.scope !2504, !noalias !2505
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  store i64 %i.b, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !2504, !noalias !2505
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  store i8 0, ptr %.sroa.6.0..sroa_idx.i, align 16, !alias.scope !2504, !noalias !2505
  call void @_RINvXCskOHnqPTvc0z_3lruINtB3_6KeyRefNtNtCs8frGy5WneL6_4fish4proc3PidENtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs25YkazkrsH5_9hashbrown6hasher13DefaultHasherEBC_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !2506)
  %i.c = load i8, ptr %.sroa.6.0..sroa_idx.i, align 16, !alias.scope !2506, !noundef !16
  %.not.i = icmp eq i8 %i.c, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !2506, !noundef !16
  br label %_RNvXs_NtCs7EgfsMK6071_8foldhash4fastNtB4_10FoldHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher6finish.exit

bb.c:                                             ; preds = %bb.a
  %i.e = load i128, ptr %i.a, align 16, !alias.scope !2506, !noundef !16 ; 2 uses
  %i.f = trunc i128 %i.e to i64
  %i.g = lshr i128 %i.e, 64
  %i.h = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !2506, !noundef !16
  %i.i = xor i64 %i.h, %i.f
  %i.j = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 16, !alias.scope !2506, !nonnull !16, !align !24, !noundef !16
  %i.k = load i64, ptr %i.j, align 8, !noalias !2506, !noundef !16
  %i.l = zext i64 %i.i to i128
  %i.m = zext i64 %i.k to i128
  %i.n = xor i128 %i.g, %i.m
  %i.o = mul nuw i128 %i.n, %i.l                  ; 2 uses
  %i.p = lshr i128 %i.o, 64
  %i.q = xor i128 %i.p, %i.o
  %i.r = trunc i128 %i.q to i64
  br label %_RNvXs_NtCs7EgfsMK6071_8foldhash4fastNtB4_10FoldHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher6finish.exit

_RNvXs_NtCs7EgfsMK6071_8foldhash4fastNtB4_10FoldHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher6finish.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.i = phi i64 [ %i.r, %bb.c ], [ %i.d, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvYNtNtCs25YkazkrsH5_9hashbrown6hasher18DefaultHashBuilderNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 16               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2512)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2513)
  %i.b = load i64, ptr %0, align 8, !alias.scope !2513, !noalias !2512, !noundef !16
  store i128 0, ptr %i.a, align 16, !alias.scope !2512, !noalias !2513
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr @_RNvNtNtCs7EgfsMK6071_8foldhash4seed6global19GLOBAL_SEED_STORAGE, ptr %.sroa.4.0..sroa_idx.i, align 16, !alias.scope !2512, !noalias !2513
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  store i64 %i.b, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !2512, !noalias !2513
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  store i8 0, ptr %.sroa.6.0..sroa_idx.i, align 16, !alias.scope !2512, !noalias !2513
  call void @_RINvXCskOHnqPTvc0z_3lruINtB3_6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs25YkazkrsH5_9hashbrown6hasher13DefaultHasherECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !2514)
  %i.c = load i8, ptr %.sroa.6.0..sroa_idx.i, align 16, !alias.scope !2514, !noundef !16
  %.not.i = icmp eq i8 %i.c, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !2514, !noundef !16
  br label %_RNvXs_NtCs7EgfsMK6071_8foldhash4fastNtB4_10FoldHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher6finish.exit

bb.c:                                             ; preds = %bb.a
  %i.e = load i128, ptr %i.a, align 16, !alias.scope !2514, !noundef !16 ; 2 uses
  %i.f = trunc i128 %i.e to i64
  %i.g = lshr i128 %i.e, 64
  %i.h = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !2514, !noundef !16
  %i.i = xor i64 %i.h, %i.f
  %i.j = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 16, !alias.scope !2514, !nonnull !16, !align !24, !noundef !16
  %i.k = load i64, ptr %i.j, align 8, !noalias !2514, !noundef !16
  %i.l = zext i64 %i.i to i128
  %i.m = zext i64 %i.k to i128
  %i.n = xor i128 %i.g, %i.m
  %i.o = mul nuw i128 %i.n, %i.l                  ; 2 uses
  %i.p = lshr i128 %i.o, 64
  %i.q = xor i128 %i.p, %i.o
  %i.r = trunc i128 %i.q to i64
  br label %_RNvXs_NtCs7EgfsMK6071_8foldhash4fastNtB4_10FoldHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher6finish.exit

_RNvXs_NtCs7EgfsMK6071_8foldhash4fastNtB4_10FoldHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher6finish.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.i = phi i64 [ %i.r, %bb.c ], [ %i.d, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %.sroa.0.0.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCINvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecINtNtB9_2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEE6retainNCNvBX_27process_clean_after_markings0_0E0BZ_(ptr nofree readonly captures(none) %.0.val, ptr %.0.val1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2529)
  %i.c = load ptr, ptr %.0.val, align 8, !alias.scope !2529, !nonnull !16, !align !24, !noundef !16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val1) ]
  %i.d = getelementptr inbounds nuw i8, ptr %.0.val1, i64 16 ; 5 uses
  %i.e = tail call noundef zeroext i1 @_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job14is_constructed(ptr noundef nonnull align 8 %i.d), !noalias !2529
  br i1 %i.e, label %bb.b, label %_RNCNvNtCs8frGy5WneL6_4fish4proc27process_clean_after_markings0_0B5_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.c, align 8, !noalias !2529, !nonnull !16, !noundef !16
  %i.g = load i8, ptr %i.f, align 1, !range !17, !noalias !2529, !noundef !16
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_RNvNtCs8frGy5WneL6_4fish4proc25job_or_proc_wants_summary(ptr noundef nonnull align 8 %i.d), !noalias !2529
  br i1 %i.i, label %_RNCNvNtCs8frGy5WneL6_4fish4proc27process_clean_after_markings0_0B5_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = tail call noundef zeroext i1 @_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job12is_completed(ptr noundef nonnull align 8 %i.d), !noalias !2529
  br i1 %i.j, label %bb.e, label %_RNCNvNtCs8frGy5WneL6_4fish4proc27process_clean_after_markings0_0B5_.exit

bb.e:                                             ; preds = %bb.d
  %i.k = tail call noundef zeroext i1 @_RNvNtCs8frGy5WneL6_4fish4proc25job_or_proc_wants_summary(ptr noundef nonnull align 8 %i.d), !noalias !2529
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !2529, !nonnull !16, !align !24, !noundef !16 ; 4 uses
  %i.n = load i64, ptr %.0.val1, align 8, !noalias !2529, !noundef !16 ; 2 uses
  %i.o = icmp ne i64 %i.n, 0
  tail call void @llvm.assume(i1 %i.o)
  %i.p = add i64 %i.n, 1                          ; 2 uses
  store i64 %i.p, ptr %.0.val1, align 8, !noalias !2529
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.h, label %bb.i, !prof !21

bb.g:                                             ; preds = %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEE8push_mutBX_.exit.i, %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !2529, !nonnull !16, !align !24, !noundef !16
  tail call void @_RNvNtCs8frGy5WneL6_4fish4proc24generate_job_exit_events(ptr noundef nonnull align 8 %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s), !noalias !2529
  %i.t = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !2529, !nonnull !16, !align !24, !noundef !16 ; 4 uses
  %i.v = load i64, ptr %.0.val1, align 8, !noalias !2529, !noundef !16 ; 2 uses
  %i.w = icmp ne i64 %i.v, 0
  tail call void @llvm.assume(i1 %i.w)
  %i.x = add i64 %i.v, 1                          ; 2 uses
  store i64 %i.x, ptr %.0.val1, align 8, !noalias !2529
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %bb.n, label %bb.o, !prof !21

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.trap()
  unreachable

bb.i:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2530)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2529
  store ptr %.0.val1, ptr %i.b, align 8, !noalias !2531
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !2530, !noalias !2529, !noundef !16 ; 3 uses
  %i.ab = load i64, ptr %i.m, align 8, !range !27, !alias.scope !2530, !noalias !2529, !noundef !16
  %i.ac = icmp eq i64 %i.aa, %i.ab
  br i1 %i.ac, label %bb.j, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEE8push_mutBX_.exit.i

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEE8grow_oneB14_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEE8push_mutBX_.exit.i unwind label %bb.k, !noalias !2529

bb.k:                                             ; preds = %bb.j
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ae = load i64, ptr %.0.val1, align 8, !noalias !2532, !noundef !16
  %i.af = add i64 %i.ae, -1                       ; 2 uses
  store i64 %i.af, ptr %.0.val1, align 8, !noalias !2532
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.l, label %common.resume.i

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcNtNtCs8frGy5WneL6_4fish4proc3JobE9drop_slowBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #29
          to label %common.resume.i unwind label %bb.m, !noalias !2531

bb.m:                                             ; preds = %bb.l
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !2531
  unreachable

common.resume.i:                                  ; preds = %bb.r, %bb.q, %bb.l, %bb.k
  %common.resume.op.i = phi { ptr, i32 } [ %i.ad, %bb.k ], [ %i.ad, %bb.l ], [ %i.aq, %bb.r ], [ %i.aq, %bb.q ]
  resume { ptr, i32 } %common.resume.op.i

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEE8push_mutBX_.exit.i: ; preds = %bb.j, %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !2530, !noalias !2529, !nonnull !16, !noundef !16
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.aa
  store ptr %.0.val1, ptr %i.ak, align 8, !noalias !2531
  %i.al = add i64 %i.aa, 1
  store i64 %i.al, ptr %i.z, align 8, !alias.scope !2530, !noalias !2529
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2529
  br label %bb.g

bb.n:                                             ; preds = %bb.g
  tail call void @llvm.trap()
  unreachable

bb.o:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2533)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2529
  store ptr %.0.val1, ptr %i.a, align 8, !noalias !2534
  %i.am = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !2533, !noalias !2529, !noundef !16 ; 3 uses
  %i.ao = load i64, ptr %i.u, align 8, !range !27, !alias.scope !2533, !noalias !2529, !noundef !16
  %i.ap = icmp eq i64 %i.an, %i.ao
  br i1 %i.ap, label %bb.p, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEE8push_mutBX_.exit2.i

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEE8grow_oneB14_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEE8push_mutBX_.exit2.i unwind label %bb.q, !noalias !2529

bb.q:                                             ; preds = %bb.p
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ar = load i64, ptr %.0.val1, align 8, !noalias !2535, !noundef !16
  %i.as = add i64 %i.ar, -1                       ; 2 uses
  store i64 %i.as, ptr %.0.val1, align 8, !noalias !2535
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %bb.r, label %common.resume.i

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcNtNtCs8frGy5WneL6_4fish4proc3JobE9drop_slowBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #29
          to label %common.resume.i unwind label %bb.s, !noalias !2534

bb.s:                                             ; preds = %bb.r
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !2534
  unreachable

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEE8push_mutBX_.exit2.i: ; preds = %bb.p, %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !2533, !noalias !2529, !nonnull !16, !noundef !16
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.an
  store ptr %.0.val1, ptr %i.ax, align 8, !noalias !2534
  %i.ay = add i64 %i.an, 1
  store i64 %i.ay, ptr %i.am, align 8, !alias.scope !2533, !noalias !2529
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2529
  br label %_RNCNvNtCs8frGy5WneL6_4fish4proc27process_clean_after_markings0_0B5_.exit

_RNCNvNtCs8frGy5WneL6_4fish4proc27process_clean_after_markings0_0B5_.exit: ; preds = %bb.a, %bb.c, %bb.d, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEE8push_mutBX_.exit2.i
  %.sroa.0.0.i = phi i1 [ false, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEE8push_mutBX_.exit2.i ], [ true, %bb.d ], [ true, %bb.c ], [ true, %bb.a ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCINvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtCs8frGy5WneL6_4fish4proc3PidE6retainNCNvBJ_18reap_disowned_pids0E0BL_(i32 %.0.val) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 9 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 15 uses
  %i.k = alloca [16 x i8], align 4                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RINvNtNtCse7JGOylGlDZ_3nix3sys4wait7waitpidNtNtB6_6unistd3PidECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.k, i32 noundef %.0.val, i32 noundef 1, i32 1)
  %i.l = load i8, ptr %i.k, align 4, !range !2567, !noundef !16 ; 2 uses
  %i.m = icmp eq i8 %i.l, -1
  br i1 %i.m, label %_RNCNvNtCs8frGy5WneL6_4fish4proc18reap_disowned_pids0B5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %switch.i = icmp samesign ult i8 %i.l, 2
  br i1 %switch.i, label %bb.c, label %_RNCNvNtCs8frGy5WneL6_4fish4proc18reap_disowned_pids0B5_.exit

bb.c:                                             ; preds = %bb.b
  %i.n = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs8frGy5WneL6_4fish4flog10categories18proc_reap_external, i64 40) monotonic, align 8
  %.not.i = icmp eq i8 %i.n, 0
  br i1 %.not.i, label %_RNCNvNtCs8frGy5WneL6_4fish4proc18reap_disowned_pids0B5_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i64 0, ptr %i.j, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 7 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 6 uses
  store i64 0, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RNvXs_NtCs8frGy5WneL6_4fish4flogRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB4_16FloggableDisplay11to_flog_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs8frGy5WneL6_4fish4flog10categories18proc_reap_external, i64 24))
          to label %bb.g unwind label %bb.f

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.w, %bb.v, %bb.u, %bb.m, %bb.f
  %.pn9.i = phi { ptr, i32 } [ %i.r, %bb.f ], [ %i.ao, %bb.u ], [ %i.ao, %bb.m ], [ %i.bb, %bb.v ], [ %i.bb, %bb.w ]
  %.val18.i = load i64, ptr %i.j, align 8         ; 2 uses
  %i.q = icmp eq i64 %.val18.i, 0
  br i1 %i.q, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i, label %bb.e

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i
  %.val19.i = load ptr, ptr %i.o, align 8, !nonnull !16, !noundef !16
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val19.i, i64 noundef %.val18.i, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !2568
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i
end_hunk_6
begin_hunk_7_@_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtCs8frGy5WneL6_4fish3key3KeyReEE8grow_oneBR_:bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !2965, !nonnull !16, !noundef !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2965
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !2965
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !2965
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecdE8grow_oneCs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !27, !noundef !16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2968)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2968
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !2968
  call fastcc void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 8), !noalias !2968
  %i.f = load i64, ptr %i.a, align 8, !range !26, !noalias !2968, !noundef !16
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !39, !noalias !2968, !noundef !16
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !2968
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2968
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #35
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !2968, !nonnull !16, !noundef !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2968
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !2968
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !2968
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVeciE8grow_oneCs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !27, !noundef !16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2971)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2971
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !2971
  call fastcc void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 8), !noalias !2971
  %i.f = load i64, ptr %i.a, align 8, !range !26, !noalias !2971, !noundef !16
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !39, !noalias !2971, !noundef !16
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !2971
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2971
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #35
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !2971, !nonnull !16, !noundef !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2971
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !2971
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !2971
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVeclE8grow_oneCs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !27, !noundef !16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2974)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2974
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !2974
  call fastcc void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 4, i64 noundef 4), !noalias !2974
  %i.f = load i64, ptr %i.a, align 8, !range !26, !noalias !2974, !noundef !16
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !39, !noalias !2974, !noundef !16
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !2974
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2974
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #35
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !2974, !nonnull !16, !noundef !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2974
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !2974
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !2974
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecxE8grow_oneCs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !27, !noundef !16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2977)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2977
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !2977
  call fastcc void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 8), !noalias !2977
  %i.f = load i64, ptr %i.a, align 8, !range !26, !noalias !2977, !noundef !16
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !39, !noalias !2977, !noundef !16
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !2977
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2977
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #35
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !2977, !nonnull !16, !noundef !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2977
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !2977
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !2977
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecyE8grow_oneCs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !27, !noundef !16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2980)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2980
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !2980
  call fastcc void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 8), !noalias !2980
  %i.f = load i64, ptr %i.a, align 8, !range !26, !noalias !2980, !noundef !16
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !39, !noalias !2980, !noundef !16
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !2980
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2980
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #35
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !2980, !nonnull !16, !noundef !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2980
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !2980
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !2980
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs8frGy5WneL6_4fish(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #8 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 7 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %2
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !42
  br i1 %or.cond, label %bb.g, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %.0.val, 0
  br i1 %i.e, label %bb.c, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  %4 = mul nuw i64 %3, %.0.val                    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.f = icmp uge i64 %i.b, %4
  tail call void @llvm.assume(i1 %i.f)
  %i.g = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %4, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 0, -9223372036854775808) %i.b) #31
  br label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.h = icmp eq i64 %i.b, 0
  br i1 %i.h, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c
  %i.i = inttoptr i64 %2 to ptr
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31
  %i.j = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %2) #31
  br label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.g, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit ], [ %i.j, %bb.d ] ; 2 uses
  %i.k = icmp eq ptr %.pn8, null
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.l, align 8
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %i.i, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread ], [ %.pn8, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.m, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.e, %bb.f
  %.sink13 = phi i64 [ 16, %bb.e ], [ 16, %bb.f ], [ 8, %bb.a ]
  %.sink11 = phi i64 [ %i.b, %bb.e ], [ %i.b, %bb.f ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.sink13
  store i64 %.sink11, ptr %i.n, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %4, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 5 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %3
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !42
  br i1 %or.cond, label %bb.c, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.g = inttoptr i64 %3 to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.g, ptr %i.i, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31
  br i1 %2, label %bb.g, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit

bb.f:                                             ; preds = %bb.c, %bb.i, %bb.j, %bb.d
  %.sink = phi i64 [ 1, %bb.c ], [ 1, %bb.i ], [ 0, %bb.j ], [ 0, %bb.d ]
  store i64 %.sink, ptr %0, align 8
  ret void

bb.g:                                             ; preds = %bb.e
  %i.j = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #31
  br label %bb.h

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit: ; preds = %bb.e
  %i.k = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #31
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit
  %.pn9 = phi ptr [ %i.j, %bb.g ], [ %i.k, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit ] ; 2 uses
  %i.l = icmp eq ptr %.pn9, null
  br i1 %i.l, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.b, ptr %i.n, align 8
  br label %bb.f

bb.j:                                             ; preds = %bb.h
  %i.o = icmp sgt i64 %1, -1
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.pn9, ptr %i.q, align 8
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtB6_2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEE6removeBW_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2983)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !2983, !noundef !16 ; 5 uses
  %i.c = icmp ult i64 %i.b, 1152921504606846976
  tail call void @llvm.assume(i1 %i.c)
  %.not.i = icmp ult i64 %1, %i.b
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !2983, !nonnull !16, !noundef !16
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %1 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !noalias !2983, !nonnull !16, !noundef !16
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = xor i64 %1, -1
  %i.j = add nsw i64 %i.b, %i.i
  %i.k = shl nuw nsw i64 %i.j, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull align 8 %i.h, i64 %i.k, i1 false), !noalias !2983
  %i.l = add nsw i64 %i.b, -1
  store i64 %i.l, ptr %i.a, align 8, !alias.scope !2983
  ret ptr %i.g

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNvMs_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %1, i64 noundef %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #32
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtB6_4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EE6removeB10_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2986)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !2986, !noundef !16 ; 5 uses
  %i.c = icmp ult i64 %i.b, 576460752303423488
  tail call void @llvm.assume(i1 %i.c)
  %.not.i = icmp ult i64 %1, %i.b
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !2986, !nonnull !16, !noundef !16
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %1 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !noalias !2986, !nonnull !16, !noundef !16
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !noalias !2986, !nonnull !16, !align !24, !noundef !16
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.k = xor i64 %1, -1
  %i.l = add nsw i64 %i.b, %i.k
  %i.m = shl nuw nsw i64 %i.l, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull align 8 %i.j, i64 %i.m, i1 false), !noalias !2986
  %i.n = add nsw i64 %i.b, -1
  store i64 %i.n, ptr %i.a, align 8, !alias.scope !2986
  %i.o = insertvalue { ptr, ptr } poison, ptr %i.g, 0
  %i.p = insertvalue { ptr, ptr } %i.o, ptr %i.i, 1
  ret { ptr, ptr } %i.p

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNvMs_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %1, i64 noundef %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #32
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtB6_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerEE6removeBZ_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2989)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !2989, !noundef !16 ; 5 uses
  %i.c = icmp ult i64 %i.b, 1152921504606846976
  tail call void @llvm.assume(i1 %i.c)
  %.not.i = icmp ult i64 %1, %i.b
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !2989, !nonnull !16, !noundef !16
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %1 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !noalias !2989, !nonnull !16, !noundef !16
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = xor i64 %1, -1
  %i.j = add nsw i64 %i.b, %i.i
  %i.k = shl nuw nsw i64 %i.j, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull align 8 %i.h, i64 %i.k, i1 false), !noalias !2989
  %i.l = add nsw i64 %i.b, -1
  store i64 %i.l, ptr %i.a, align 8, !alias.scope !2989
  ret ptr %i.g

end_hunk_7
begin_hunk_8_@_RNvNtNtCs8frGy5WneL6_4fish8builtins4math4math:bb.a
  %i.ya = icmp eq i64 %.val44, 0
  br i1 %i.ya, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit69, label %bb.jk

bb.jk:                                            ; preds = %bb.jj
  %.val45 = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !nonnull !16, !noundef !16
  %i.yb = shl nuw i64 %.val44, 2
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val45, i64 noundef %i.yb, i64 noundef range(i64 1, -9223372036854775807) 4) #31, !noalias !3935
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit69

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit69: ; preds = %bb.jj, %bb.jk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm)
  br label %bb.jl

bb.jl:                                            ; preds = %bb.bq, %bb.kd, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit69
  %.sroa.61.0 = phi i64 [ %i.jw, %bb.bq ], [ 4294967296, %bb.kd ], [ 4294967296, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit69 ]
  %.sroa.0.0 = phi i64 [ 1, %bb.bq ], [ %.sroa.0.1, %bb.kd ], [ %.sroa.0.0.i54, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit69 ]
  %.sroa.0.0.insert.ext = and i64 %.sroa.0.0, 255
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.0.0.insert.ext, %.sroa.61.0
  ret i64 %.sroa.0.0.insert.insert

bb.jm:                                            ; preds = %bb.jo, %bb.jq
  %i.yc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj2_ECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(64) %i.cd) #33
  %.val42.pre = load i64, ptr %i.cf, align 8      ; 2 uses
  %i.yd = icmp eq i64 %.val42.pre, 0
  br i1 %i.yd, label %.body, label %bb.jn

bb.jn:                                            ; preds = %bb.jm
  %.val43 = load ptr, ptr %.sroa.3.0..sroa_idx22, align 8, !nonnull !16, !noundef !16
  %i.ye = shl nuw i64 %.val42.pre, 2
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val43, i64 noundef %i.ye, i64 noundef range(i64 1, -9223372036854775807) 4) #31, !noalias !3936
  br label %.body

.thread:                                          ; preds = %bb.ji
  %i.yf = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.jo:                                            ; preds = %bb.ji
  %i.yg = extractvalue { ptr, i64 } %i.xz, 0
  %i.yh = extractvalue { ptr, i64 } %i.xz, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd)
  store i64 5, ptr %i.cd, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 3 uses
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8
  %i.yi = getelementptr inbounds nuw i8, ptr %i.cd, i64 32 ; 2 uses
  store i64 5, ptr %i.yi, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 40 ; 3 uses
  store i64 0, ptr %.sroa.413.0..sroa_idx, align 8
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtB12_6utfstr8Utf32StrECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.ce, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cf, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.yg, i64 noundef %i.yh, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @10, ptr noalias nofree noundef nonnull align 8 %i.cd, i64 noundef 2)
          to label %bb.jp unwind label %bb.jm

bb.jp:                                            ; preds = %bb.jo
  call void @llvm.experimental.noalias.scope.decl(metadata !3937)
  %i.yj = load i8, ptr %i.ce, align 8, !range !17, !alias.scope !3937, !noalias !3938, !noundef !16
  %i.yk = trunc nuw i8 %i.yj to i1
  br i1 %i.yk, label %bb.jq, label %bb.jr, !prof !21

bb.jq:                                            ; preds = %bb.jp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc), !noalias !3939
  %i.yl = getelementptr inbounds nuw i8, ptr %i.ce, i64 1
  %i.ym = load i8, ptr %i.yl, align 1, !range !41, !alias.scope !3937, !noalias !3938, !noundef !16
  store i8 %i.ym, ptr %i.cc, align 1, !noalias !3939
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 43, ptr noundef nonnull %i.cc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @18, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @101) #32
          to label %.noexc unwind label %bb.jm

.noexc:                                           ; preds = %bb.jq
  unreachable

bb.jr:                                            ; preds = %bb.jp
  call void @llvm.experimental.noalias.scope.decl(metadata !3940)
  call void @llvm.experimental.noalias.scope.decl(metadata !3941)
  call void @llvm.experimental.noalias.scope.decl(metadata !3942)
  %i.yn = load i64, ptr %i.cd, align 8, !range !31, !alias.scope !3943, !noundef !16
  switch i64 %i.yn, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish.exit.i.i [
    i64 2, label %bb.js
    i64 3, label %bb.ju
  ]

bb.js:                                            ; preds = %bb.jr
  call void @llvm.experimental.noalias.scope.decl(metadata !3944)
  %.val.i.i.i.i72 = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !3945 ; 2 uses
  %i.yo = icmp eq i64 %.val.i.i.i.i72, 0
  br i1 %i.yo, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish.exit.i.i, label %bb.jt

bb.jt:                                            ; preds = %bb.js
  %i.yp = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %.val1.i.i.i.i73 = load ptr, ptr %i.yp, align 8, !alias.scope !3945, !nonnull !16, !noundef !16
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i73, i64 noundef %.val.i.i.i.i72, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !3946
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish.exit.i.i

bb.ju:                                            ; preds = %bb.jr
  %.val.i.i.i71 = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !3943 ; 2 uses
  %i.yq = icmp eq i64 %.val.i.i.i71, 0
  br i1 %i.yq, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish.exit.i.i, label %bb.jv

bb.jv:                                            ; preds = %bb.ju
  %i.yr = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %.val1.i.i.i = load ptr, ptr %i.yr, align 8, !alias.scope !3943, !nonnull !16, !noundef !16
  %i.ys = shl nuw i64 %.val.i.i.i71, 2
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %i.ys, i64 noundef range(i64 1, -9223372036854775807) 4) #31, !noalias !3947
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish.exit.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish.exit.i.i: ; preds = %bb.jv, %bb.ju, %bb.jt, %bb.js, %bb.jr
  call void @llvm.experimental.noalias.scope.decl(metadata !3948)
  %i.yt = load i64, ptr %i.yi, align 8, !range !31, !alias.scope !3949, !noundef !16
  switch i64 %i.yt, label %bb.ka [
    i64 2, label %bb.jy
    i64 3, label %bb.jw
  ]

bb.jw:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish.exit.i.i
  %.val.i.i.1.i = load i64, ptr %.sroa.413.0..sroa_idx, align 8, !alias.scope !3949 ; 2 uses
  %i.yu = icmp eq i64 %.val.i.i.1.i, 0
  br i1 %i.yu, label %bb.ka, label %bb.jx

bb.jx:                                            ; preds = %bb.jw
  %i.yv = getelementptr inbounds nuw i8, ptr %i.cd, i64 48
  %.val1.i.i.1.i = load ptr, ptr %i.yv, align 8, !alias.scope !3949, !nonnull !16, !noundef !16
  %i.yw = shl nuw i64 %.val.i.i.1.i, 2
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.1.i, i64 noundef %i.yw, i64 noundef range(i64 1, -9223372036854775807) 4) #31, !noalias !3950
  br label %bb.ka

bb.jy:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !3951)
  %.val.i.i.i.1.i = load i64, ptr %.sroa.413.0..sroa_idx, align 8, !alias.scope !3952 ; 2 uses
  %i.yx = icmp eq i64 %.val.i.i.i.1.i, 0
  br i1 %i.yx, label %bb.ka, label %bb.jz

bb.jz:                                            ; preds = %bb.jy
  %i.yy = getelementptr inbounds nuw i8, ptr %i.cd, i64 48
  %.val1.i.i.i.1.i = load ptr, ptr %i.yy, align 8, !alias.scope !3952, !nonnull !16, !noundef !16
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.1.i, i64 noundef %.val.i.i.i.1.i, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !3953
  br label %bb.ka

bb.ka:                                            ; preds = %bb.jz, %bb.jy, %bb.jx, %bb.jw, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cg, ptr noundef nonnull align 8 dereferenceable(24) %i.cf, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf)
  %.sroa.4.0..sroa_idx91 = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  store ptr %i.cn, ptr %.sroa.4.0..sroa_idx91, align 8, !alias.scope !3954, !noalias !3955
  %.sroa.692.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  store i64 %i.cp, ptr %.sroa.692.0..sroa_idx, align 8, !alias.scope !3954, !noalias !3955
  %.sroa.793.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 40
  store ptr null, ptr %.sroa.793.0..sroa_idx, align 8, !alias.scope !3954, !noalias !3955
  %.sroa.895.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 56
  store ptr null, ptr %.sroa.895.0..sroa_idx, align 8, !alias.scope !3954, !noalias !3955
  %.sroa.996.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 64
  store i8 0, ptr %.sroa.996.0..sroa_idx, align 8, !alias.scope !3954, !noalias !3955
  invoke void @_RNvMNtNtNtCs8frGy5WneL6_4fish8builtins6shared5errorNtB2_5Error6finish(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.cg, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.kb unwind label %bb.bv

bb.kb:                                            ; preds = %bb.ka
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg)
  %.val = load i64, ptr %i.cl, align 8            ; 2 uses
  %i.yz = icmp eq i64 %.val, 0
  br i1 %i.yz, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit74, label %bb.kc

bb.kc:                                            ; preds = %bb.kb
  %.val41 = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !nonnull !16, !noundef !16
  %i.za = shl nuw i64 %.val, 2
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val41, i64 noundef %i.za, i64 noundef range(i64 1, -9223372036854775807) 4) #31, !noalias !3956
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit74

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit74: ; preds = %bb.kb, %bb.kc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl)
  br label %bb.kd

bb.kd:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit74, %bb.bt
  %.sroa.0.1 = phi i64 [ 0, %bb.bt ], [ 1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit74 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm)
  br label %bb.jl

bb.ke:                                            ; preds = %bb.ca
  %i.zb = load i64, ptr %i.cl, align 8, !range !27, !alias.scope !3957, !noundef !16
  %i.zc = icmp eq i64 %i.ke, %i.zb
  br i1 %i.zc, label %bb.kf, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmE8push_mutCs8frGy5WneL6_4fish.exit

bb.kf:                                            ; preds = %bb.ke
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cl) #29
          to label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmE8push_mutCs8frGy5WneL6_4fish.exit unwind label %bb.ki

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmE8push_mutCs8frGy5WneL6_4fish.exit: ; preds = %bb.kf, %bb.ke
  %i.zd = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !alias.scope !3957, !nonnull !16, !noundef !16
  %i.ze = getelementptr inbounds nuw [4 x i8], ptr %i.zd, i64 %i.ke
  store i32 32, ptr %i.ze, align 4
  %i.zf = add nuw nsw i64 %i.ke, 1
  store i64 %i.zf, ptr %.sroa.424.0..sroa_idx, align 8, !alias.scope !3957
  br label %bb.kg

bb.kg:                                            ; preds = %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmE8push_mutCs8frGy5WneL6_4fish.exit, %bb.ca
  call void @llvm.experimental.noalias.scope.decl(metadata !3958)
  %i.zg = invoke { ptr, i64 } @_RNvXse_NtCs1xwejQucwHj_5alloc6borrowINtB5_3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEINtNtCs3oUPovFnLWP_4core7convert5AsRefBI_E6as_refCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ch)
          to label %.noexc77 unwind label %bb.ki  ; 2 uses

.noexc77:                                         ; preds = %bb.kg
  %i.zh = extractvalue { ptr, i64 } %i.zg, 0      ; 2 uses
  %4 = extractvalue { ptr, i64 } %i.zg, 1         ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.zh) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !3959)
  %i.zi = load i64, ptr %.sroa.424.0..sroa_idx, align 8, !alias.scope !3960, !noalias !3961, !noundef !16 ; 5 uses
  %i.zj = load i64, ptr %i.cl, align 8, !range !27, !alias.scope !3960, !noalias !3961, !noundef !16
  %i.zk = sub i64 %i.zj, %i.zi
  %i.zl = icmp ugt i64 %4, %i.zk
  br i1 %i.zl, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish.exit.thread.i.i, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish.exit.i.i, !prof !21

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish.exit.thread.i.i: ; preds = %.noexc77
  invoke void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cl, i64 noundef %i.zi, i64 noundef range(i64 0, 4611686018427387904) %4, i64 noundef 4, i64 noundef 4)
          to label %.noexc78 unwind label %bb.ki

.noexc78:                                         ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish.exit.thread.i.i
  %i.zm = load i64, ptr %.sroa.424.0..sroa_idx, align 8, !alias.scope !3962, !noalias !3961, !noundef !16 ; 2 uses
  %i.zn = icmp ult i64 %i.zm, 2305843009213693952
  call void @llvm.assume(i1 %i.zn)
  br label %bb.kh

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish.exit.i.i: ; preds = %.noexc77
  %i.zo = icmp ult i64 %i.zi, 2305843009213693952
  call void @llvm.assume(i1 %i.zo)
  %.not.i.i76 = icmp eq i64 %4, 0
  br i1 %.not.i.i76, label %bb.kk, label %bb.kh

bb.kh:                                            ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish.exit.i.i, %.noexc78
  %i.zp = phi i64 [ %i.zm, %.noexc78 ], [ %i.zi, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish.exit.i.i ] ; 2 uses
  %i.zq = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !alias.scope !3962, !noalias !3961, !nonnull !16, !noundef !16
  %i.zr = getelementptr inbounds nuw [4 x i8], ptr %i.zq, i64 %i.zp
  %i.zs = shl nuw nsw i64 %4, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.zr, ptr nonnull readonly align 4 %i.zh, i64 %i.zs, i1 false), !noalias !3962
  br label %bb.kk

bb.ki:                                            ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish.exit.thread.i.i, %bb.kg, %bb.kf
  %i.zt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val50 = load i64, ptr %i.ch, align 8, !range !19, !noundef !16 ; 2 uses
  %i.zu = icmp sgt i64 %.val50, 0
  br i1 %i.zu, label %bb.kj, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit

bb.kj:                                            ; preds = %bb.ki
  %.val51 = load ptr, ptr %i.kb, align 8, !nonnull !16, !noundef !16
  %i.zv = shl nuw i64 %.val50, 2
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val51, i64 noundef %i.zv, i64 noundef range(i64 1, -9223372036854775807) 4) #31, !noalias !3963
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit

bb.kk:                                            ; preds = %bb.kh, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish.exit.i.i
  %i.zw = phi i64 [ %i.zp, %bb.kh ], [ %i.zi, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish.exit.i.i ]
  %i.zx = add nuw nsw i64 %i.zw, %4
  store i64 %i.zx, ptr %.sroa.424.0..sroa_idx, align 8, !alias.scope !3962, !noalias !3961
  %.val48 = load i64, ptr %i.ch, align 8, !range !19, !noundef !16 ; 2 uses
  %i.zy = icmp sgt i64 %.val48, 0
  br i1 %i.zy, label %bb.kl, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit83

bb.kl:                                            ; preds = %bb.kk
  %.val49 = load ptr, ptr %i.kb, align 8, !nonnull !16, !noundef !16
  %i.zz = shl nuw i64 %.val48, 2
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val49, i64 noundef %i.zz, i64 noundef range(i64 1, -9223372036854775807) 4) #31, !noalias !3964
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit83

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit83: ; preds = %bb.kl, %bb.kk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci)
  br label %bb.bx
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvNtNtCs8frGy5WneL6_4fish8builtins4wait17find_wait_handles(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 captures(address, read_provenance) dereferenceable(432) %1, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 16 uses
  %i.e = load ptr, ptr %0, align 8, !noundef !16  ; 4 uses
  %.not = icmp eq ptr %i.e, null                  ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 368
  %i.g = load i64, ptr %i.f, align 8, !noundef !16 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %.loopexit30, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 392
  %i.j = load ptr, ptr %i.i, align 8, !noundef !16
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !noundef !16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i64, ptr %i.m, align 8, !noundef !16 ; 2 uses
  %i.o = shl nuw i64 %i.n, 2
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load i32, ptr %i.r, align 8, !range !20, !noundef !16
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.u = tail call noundef ptr @_RNvMs1_NtCs8frGy5WneL6_4fish11wait_handleNtB5_15WaitHandleStore10get_by_pid(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.t, i32 noundef %i.s) ; 5 uses
  %.not21 = icmp eq ptr %i.u, null
  br i1 %.not21, label %.loopexit30, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3991)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.u, ptr %i.c, align 8, !noalias !3991
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !3991, !noundef !16 ; 3 uses
  %i.x = load i64, ptr %2, align 8, !range !27, !alias.scope !3991, !noundef !16
  %i.y = icmp eq i64 %i.w, %i.x
  br i1 %i.y, label %bb.e, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_2rc2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleEE8push_mutBX_.exit

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_2rc2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleEE8grow_oneB14_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
          to label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_2rc2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleEE8push_mutBX_.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aa = load i64, ptr %i.u, align 8, !noalias !3992, !noundef !16
  %i.ab = add i64 %i.aa, -1                       ; 2 uses
  store i64 %i.ab, ptr %i.u, align 8, !noalias !3992
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.g, label %common.resume

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleE9drop_slowBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #29
          to label %common.resume unwind label %bb.h, !noalias !3991

bb.h:                                             ; preds = %bb.g
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !3991
  unreachable

common.resume:                                    ; preds = %bb.ar, %bb.as, %bb.aj, %.body, %bb.f, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.du, %bb.aj ], [ %i.z, %bb.f ], [ %i.z, %bb.g ], [ %i.du, %.body ], [ %i.et, %bb.as ], [ %i.et, %bb.ar ]
  resume { ptr, i32 } %common.resume.op

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_2rc2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleEE8push_mutBX_.exit: ; preds = %bb.d, %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !3991, !nonnull !16, !noundef !16
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.w
  store ptr %i.u, ptr %i.ag, align 8, !noalias !3991
  %i.ah = add i64 %i.w, 1
  store i64 %i.ah, ptr %i.v, align 8, !alias.scope !3991
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.loopexit30

.loopexit30:                                      ; preds = %bb.am, %bb.b, %bb.c, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_2rc2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleEE8push_mutBX_.exit
  %.sroa.0.0 = phi i1 [ false, %bb.c ], [ true, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_2rc2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleEE8push_mutBX_.exit ], [ false, %bb.b ], [ %.sroa.0.5, %bb.am ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !nonnull !16, !noundef !16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !noundef !16 ; 2 uses
  %.idx = shl nuw nsw i64 %i.al, 3
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.idx
  %i.an = icmp eq i64 %i.al, 0
  br i1 %i.an, label %._crit_edge, label %.lr.ph46

.lr.ph46:                                         ; preds = %.loopexit30
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ap = load i64, ptr %i.ao, align 8            ; 4 uses
  %i.aq = shl nuw i64 %i.ap, 2                    ; 2 uses
  %i.ar = trunc i64 %i.ap to i32                  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph, %bb.am
  %.sroa.0.142 = phi i1 [ false, %.lr.ph ], [ %.sroa.0.5, %bb.am ] ; 2 uses
  %.sroa.012.041 = phi i64 [ %i.g, %.lr.ph ], [ %i.au, %bb.am ]
  %.sroa.015.040 = phi ptr [ %i.l, %.lr.ph ], [ %i.aw, %bb.am ] ; 4 uses
  %i.au = add i64 %.sroa.012.041, -1              ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.015.040, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !noundef !16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.015.040) ]
  %i.ax = load ptr, ptr %.sroa.015.040, align 8, !nonnull !16, !noundef !16 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.az = load i64, ptr %i.ay, align 8, !noundef !16
  %i.ba = icmp eq i64 %i.n, %i.az
  br i1 %i.ba, label %bb.al, label %bb.am

.loopexit:                                        ; preds = %bb.v, %bb.u, %bb.l
  %.us-phi = phi i1 [ %.sroa.0.3.ph.us.us, %bb.l ], [ %.sroa.0.3.ph.us, %bb.u ], [ %.sroa.0.3.ph, %bb.v ] ; 2 uses
  %i.bb = icmp eq ptr %i.bc, %i.am
  br i1 %i.bb, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %.lr.ph46, %.loopexit
  %.sroa.0.245 = phi i1 [ %.sroa.0.0, %.lr.ph46 ], [ %.us-phi, %.loopexit ] ; 3 uses
  %.sroa.04.044 = phi ptr [ %i.aj, %.lr.ph46 ], [ %i.bc, %.loopexit ] ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.04.044, i64 8 ; 2 uses
  %i.bd = load ptr, ptr %.sroa.04.044, align 8, !nonnull !16, !noundef !16
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 3 uses
  %i.bf = call noundef zeroext i1 @_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job14is_constructed(ptr noundef nonnull align 8 %i.be)
  br i1 %i.bf, label %bb.k, label %_RNvNtNtCs8frGy5WneL6_4fish8builtins4wait15can_wait_on_job.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.bg = call noundef zeroext i1 @_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job13is_foreground(ptr noundef nonnull align 8 %i.be)
  br i1 %i.bg, label %_RNvNtNtCs8frGy5WneL6_4fish8builtins4wait15can_wait_on_job.exit.thread, label %_RNvNtNtCs8frGy5WneL6_4fish8builtins4wait15can_wait_on_job.exit

_RNvNtNtCs8frGy5WneL6_4fish8builtins4wait15can_wait_on_job.exit.thread: ; preds = %bb.k, %bb.j
  %i.bh = load ptr, ptr %.sroa.04.044, align 8, !nonnull !16, !noundef !16 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 64
  %i.bj = load i64, ptr %i.bi, align 8, !noundef !16
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  %i.bl = load ptr, ptr %i.bk, align 8, !nonnull !16, !noundef !16 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  %i.bn = load i64, ptr %i.bm, align 8, !noundef !16
  %i.bo = getelementptr inbounds nuw [224 x i8], ptr %i.bl, i64 %i.bn
  br label %_RNvNtNtCs8frGy5WneL6_4fish8builtins4wait15can_wait_on_job.exit.split.us

_RNvNtNtCs8frGy5WneL6_4fish8builtins4wait15can_wait_on_job.exit: ; preds = %bb.k
  %i.bp = call noundef zeroext i1 @_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job10is_stopped(ptr noundef nonnull align 8 %i.be)
  %i.bq = load ptr, ptr %.sroa.04.044, align 8, !nonnull !16, !noundef !16 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 64
  %i.bs = load i64, ptr %i.br, align 8, !noundef !16 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  %i.bu = load ptr, ptr %i.bt, align 8, !nonnull !16, !noundef !16 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 48
  %i.bw = load i64, ptr %i.bv, align 8, !noundef !16
  %i.bx = getelementptr inbounds nuw [224 x i8], ptr %i.bu, i64 %i.bw ; 2 uses
  br i1 %i.bp, label %_RNvNtNtCs8frGy5WneL6_4fish8builtins4wait15can_wait_on_job.exit.split.us, label %.outer

_RNvNtNtCs8frGy5WneL6_4fish8builtins4wait15can_wait_on_job.exit.split.us: ; preds = %_RNvNtNtCs8frGy5WneL6_4fish8builtins4wait15can_wait_on_job.exit.thread, %_RNvNtNtCs8frGy5WneL6_4fish8builtins4wait15can_wait_on_job.exit
  %i.by = phi ptr [ %i.bo, %_RNvNtNtCs8frGy5WneL6_4fish8builtins4wait15can_wait_on_job.exit.thread ], [ %i.bx, %_RNvNtNtCs8frGy5WneL6_4fish8builtins4wait15can_wait_on_job.exit ] ; 2 uses
  %i.bz = phi ptr [ %i.bl, %_RNvNtNtCs8frGy5WneL6_4fish8builtins4wait15can_wait_on_job.exit.thread ], [ %i.bu, %_RNvNtNtCs8frGy5WneL6_4fish8builtins4wait15can_wait_on_job.exit ] ; 2 uses
  %i.ca = phi i64 [ %i.bj, %_RNvNtNtCs8frGy5WneL6_4fish8builtins4wait15can_wait_on_job.exit.thread ], [ %i.bs, %_RNvNtNtCs8frGy5WneL6_4fish8builtins4wait15can_wait_on_job.exit ] ; 2 uses
  br i1 %.not, label %.outer.us.us, label %.outer.us

.outer.us.us:                                     ; preds = %_RNvNtNtCs8frGy5WneL6_4fish8builtins4wait15can_wait_on_job.exit.split.us, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleEEB1a_.exit.us.us
  %.sroa.06.0.ph.us.us = phi ptr [ %i.cc, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleEEB1a_.exit.us.us ], [ %i.bz, %_RNvNtNtCs8frGy5WneL6_4fish8builtins4wait15can_wait_on_job.exit.split.us ]
  %.sroa.0.3.ph.us.us = phi i1 [ %.sroa.0.3.mux.us.us, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleEEB1a_.exit.us.us ], [ %.sroa.0.245, %_RNvNtNtCs8frGy5WneL6_4fish8builtins4wait15can_wait_on_job.exit.split.us ] ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %.outer.us.us
  %.sroa.06.0.us.us = phi ptr [ %i.cc, %bb.m ], [ %.sroa.06.0.ph.us.us, %.outer.us.us ] ; 3 uses
  %i.cb = icmp eq ptr %.sroa.06.0.us.us, %i.by
  br i1 %i.cb, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.06.0.us.us, i64 224 ; 2 uses
  %i.cd = call noundef ptr @_RNvMs6_NtCs8frGy5WneL6_4fish4procNtB5_7Process16make_wait_handle(ptr noundef nonnull align 8 %.sroa.06.0.us.us, i64 noundef %i.ca) ; 5 uses
  %.not22.us.us = icmp eq ptr %i.cd, null
  br i1 %.not22.us.us, label %bb.l, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.cd, ptr %i.d, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 56
  %i.cf = load i32, ptr %i.ce, align 8, !range !20, !noundef !16
  %i.cg = icmp eq i32 %i.cf, %i.ar
  %.sroa.0.3.mux.us.us = select i1 %i.cg, i1 true, i1 %.sroa.0.3.ph.us.us
  call void @llvm.experimental.noalias.scope.decl(metadata !3993)
  call void @llvm.experimental.noalias.scope.decl(metadata !3994)
  %i.ch = load i64, ptr %i.cd, align 8, !noalias !3995, !noundef !16
  %i.ci = add i64 %i.ch, -1                       ; 2 uses
  store i64 %i.ci, ptr %i.cd, align 8, !noalias !3995
  %i.cj = icmp eq i64 %i.ci, 0
  br i1 %i.cj, label %bb.o, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleEEB1a_.exit.us.us

bb.o:                                             ; preds = %bb.n
  call void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleE9drop_slowBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #29
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleEEB1a_.exit.us.us

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleEEB1a_.exit.us.us: ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.outer.us.us

.outer.us:                                        ; preds = %_RNvNtNtCs8frGy5WneL6_4fish8builtins4wait15can_wait_on_job.exit.split.us, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleEEB1a_.exit.us
  %.sroa.06.0.ph.us = phi ptr [ %i.ck, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleEEB1a_.exit.us ], [ %i.bz, %_RNvNtNtCs8frGy5WneL6_4fish8builtins4wait15can_wait_on_job.exit.split.us ]
  %.sroa.0.3.ph.us = phi i1 [ %.sroa.0.4.us, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleEEB1a_.exit.us ], [ %.sroa.0.245, %_RNvNtNtCs8frGy5WneL6_4fish8builtins4wait15can_wait_on_job.exit.split.us ] ; 3 uses
  br label %bb.u

bb.p:                                             ; preds = %bb.u
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.06.0.us, i64 224 ; 2 uses
  %i.cl = call noundef ptr @_RNvMs6_NtCs8frGy5WneL6_4fish4procNtB5_7Process16make_wait_handle(ptr noundef nonnull align 8 %.sroa.06.0.us, i64 noundef %i.ca) ; 6 uses
  %.not22.us = icmp eq ptr %i.cl, null
  br i1 %.not22.us, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.cl, ptr %i.d, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 32
  %i.cn = load i64, ptr %i.cm, align 8, !noundef !16
  %i.co = icmp eq i64 %i.ap, %i.cn
  br i1 %i.co, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8, !nonnull !16, !noundef !16
  %bcmp23.us = call i32 @bcmp(ptr nonnull %i.e, ptr nonnull %i.cq, i64 %i.aq)
  %i.cr = icmp eq i32 %bcmp23.us, 0
  %.sroa.0.3.mux.us = select i1 %i.cr, i1 true, i1 %.sroa.0.3.ph.us
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sroa.0.4.us = phi i1 [ %.sroa.0.3.mux.us, %bb.r ], [ %.sroa.0.3.ph.us, %bb.q ]
  call void @llvm.experimental.noalias.scope.decl(metadata !3993)
  call void @llvm.experimental.noalias.scope.decl(metadata !3994)
  %i.cs = load i64, ptr %i.cl, align 8, !noalias !3995, !noundef !16
  %i.ct = add i64 %i.cs, -1                       ; 2 uses
  store i64 %i.ct, ptr %i.cl, align 8, !noalias !3995
  %i.cu = icmp eq i64 %i.ct, 0
  br i1 %i.cu, label %bb.t, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleEEB1a_.exit.us

bb.t:                                             ; preds = %bb.s
  call void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleE9drop_slowBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #29
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleEEB1a_.exit.us

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleEEB1a_.exit.us: ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.outer.us

bb.u:                                             ; preds = %bb.p, %.outer.us
  %.sroa.06.0.us = phi ptr [ %i.ck, %bb.p ], [ %.sroa.06.0.ph.us, %.outer.us ] ; 3 uses
  %i.cv = icmp eq ptr %.sroa.06.0.us, %i.by
  br i1 %i.cv, label %.loopexit, label %bb.p

._crit_edge:                                      ; preds = %.loopexit, %.loopexit30
  %.sroa.0.2.lcssa = phi i1 [ %.sroa.0.0, %.loopexit30 ], [ %.us-phi, %.loopexit ]
  ret i1 %.sroa.0.2.lcssa

bb.v:                                             ; preds = %.outer, %bb.w
  %.sroa.06.0 = phi ptr [ %i.cx, %bb.w ], [ %.sroa.06.0.ph, %.outer ] ; 3 uses
  %i.cw = icmp eq ptr %.sroa.06.0, %i.bx
  br i1 %i.cw, label %.loopexit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.06.0, i64 224 ; 2 uses
  %i.cy = call noundef ptr @_RNvMs6_NtCs8frGy5WneL6_4fish4procNtB5_7Process16make_wait_handle(ptr noundef nonnull align 8 %.sroa.06.0, i64 noundef %i.bs) ; 10 uses
  %.not22 = icmp eq ptr %i.cy, null
  br i1 %.not22, label %bb.v, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.cy, ptr %i.d, align 8
  br i1 %.not, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  %i.da = load i64, ptr %i.cz, align 8, !noundef !16
  %i.db = icmp eq i64 %i.ap, %i.da
  br i1 %i.db, label %.split, label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 56
  %i.dd = load i32, ptr %i.dc, align 8, !range !20, !noundef !16
  %i.de = icmp eq i32 %i.dd, %i.ar
  br i1 %i.de, label %bb.ac, label %bb.aa

.split:                                           ; preds = %bb.y
  %i.df = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.dg = load ptr, ptr %i.df, align 8, !nonnull !16, !noundef !16
  %bcmp23 = call i32 @bcmp(ptr nonnull %i.e, ptr nonnull %i.dg, i64 %i.aq)
  %i.dh = icmp eq i32 %bcmp23, 0
  br i1 %i.dh, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %.split, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_2rc2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleEE8push_mutBX_.exit26, %bb.z, %bb.y
  %i.di = phi ptr [ %.pre, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_2rc2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleEE8push_mutBX_.exit26 ], [ %i.cy, %bb.y ], [ %i.cy, %bb.z ], [ %i.cy, %.split ] ; 2 uses
  %.sroa.0.4 = phi i1 [ true, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_2rc2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleEE8push_mutBX_.exit26 ], [ %.sroa.0.3.ph, %bb.y ], [ %.sroa.0.3.ph, %bb.z ], [ %.sroa.0.3.ph, %.split ]
  call void @llvm.experimental.noalias.scope.decl(metadata !3993)
  call void @llvm.experimental.noalias.scope.decl(metadata !3994)
  %i.dj = load i64, ptr %i.di, align 8, !noalias !3995, !noundef !16
  %i.dk = add i64 %i.dj, -1                       ; 2 uses
  store i64 %i.dk, ptr %i.di, align 8, !noalias !3995
  %i.dl = icmp eq i64 %i.dk, 0
  br i1 %i.dl, label %bb.ab, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleEEB1a_.exit

bb.ab:                                            ; preds = %bb.aa
  call void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleE9drop_slowBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #29
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleEEB1a_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleEEB1a_.exit: ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.outer

end_hunk_8
begin_hunk_9_@_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtB6_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc9ArgumentsNCNvNtB3u_4path9path_sort0EE9from_iterB3w_:bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.sroa.0.0.copyload.i.i) ]
  %i.aj = shl nuw i64 %i.u, 2
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.sroa.0.0.copyload.i.i, i64 noundef %i.aj, i64 noundef range(i64 1, -9223372036854775807) 4) #31, !noalias !5057
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit.i.i

bb.q:                                             ; preds = %bb.l
  invoke void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.t, i64 noundef 1, i64 noundef 8, i64 noundef 24)
          to label %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtB6_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE7reserveCs8frGy5WneL6_4fish.exit.i.i_crit_edge unwind label %bb.o

._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtB6_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE7reserveCs8frGy5WneL6_4fish.exit.i.i_crit_edge: ; preds = %bb.q
  %.pre = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5047, !noalias !5050
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtB6_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE7reserveCs8frGy5WneL6_4fish.exit.i.i

_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecINtNtB6_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEEINtB2_10SpecExtendBR_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc9ArgumentsNCNvNtB3b_4path9path_sort0EE11spec_extendB3d_.exit: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i6.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i.i.i.i.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc9ArgumentsNCNvNtB1f_4path9path_sort0EEB1h_.exit

bb.r:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit.i.i, %bb.s
  %.pn16 = phi { ptr, i32 } [ %.pn.ph, %bb.s ], [ %.pn.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit.i.i ]
  resume { ptr, i32 } %.pn16

bb.s:                                             ; preds = %bb.b, %bb.e, %bb.f
  %.pn.ph = phi { ptr, i32 } [ %i.f, %bb.b ], [ %i.n, %bb.e ], [ %i.n, %bb.f ]
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc9ArgumentsNCNvNtB1f_4path9path_sort0EEB1h_(ptr noalias nofree noundef align 8 dereferenceable(80) %1) #33
  br label %bb.r
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB1W_6filter6FilterINtNtNtB20_5slice4iter4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENCNvMs0_NtNtCs8frGy5WneL6_4fish12localization8settingsNtB4t_21LocalizationVariables16get_language_var0ENCB4n_s_0EE9from_iterB4x_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [16 x i8], align 16               ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %i.e = alloca [16 x i8], align 16               ; 4 uses
  store ptr %1, ptr %i.e, align 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %2, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call fastcc void @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENCNvMs0_NtNtCs8frGy5WneL6_4fish12localization8settingsNtB2I_21LocalizationVariables16get_language_var0ENCB2C_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB2M_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef align 8 dereferenceable(16) %i.e) #30
  %i.g = load i64, ptr %i.c, align 8, !range !19, !noundef !16 ; 4 uses
  %.not = icmp eq i64 %i.g, -1
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.c

bb.c:                                             ; preds = %.loopexit20, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.d:                                             ; preds = %bb.g
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.k = icmp eq i64 %i.g, 0
  br i1 %i.k, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !5072
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit

bb.f:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx12, align 8
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !5073
  %i.l = call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 96, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !5073 ; 6 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 8, i64 96) #35
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.f
  store i64 %i.g, ptr %i.l, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %.sroa.5.0.copyload, ptr %.sroa.418.0..sroa_idx, align 8
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 %.sroa.6.0.copyload, ptr %.sroa.519.0..sroa_idx, align 8
  store i64 4, ptr %i.d, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.l, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !5074)
  call void @llvm.experimental.noalias.scope.decl(metadata !5075)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5074
  %i.n = load <2 x ptr>, ptr %i.e, align 16
  store <2 x ptr> %i.n, ptr %i.b, align 16, !noalias !5076
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5076
  invoke fastcc void @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENCNvMs0_NtNtCs8frGy5WneL6_4fish12localization8settingsNtB2I_21LocalizationVariables16get_language_var0ENCB2C_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB2M_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef align 8 dereferenceable(16) %i.b) #30
          to label %.noexc7 unwind label %.loopexit.split-lp

.noexc7:                                          ; preds = %bb.h
  %i.o = load i64, ptr %i.a, align 8, !range !19, !noalias !5076, !noundef !16 ; 2 uses
  %.not14.i.i = icmp eq i64 %i.o, -1
  br i1 %.not14.i.i, label %.loopexit20, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc7
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.i

bb.i:                                             ; preds = %.noexc8, %.lr.ph.i.i
  %i.p = phi ptr [ %i.l, %.lr.ph.i.i ], [ %i.v, %.noexc8 ]
  %i.q = phi i64 [ 1, %.lr.ph.i.i ], [ %i.x, %.noexc8 ] ; 5 uses
  %i.r = phi i64 [ %i.o, %.lr.ph.i.i ], [ %i.y, %.noexc8 ] ; 3 uses
  %.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !5076 ; 3 uses
  %.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !5076
  %i.s = icmp samesign ult i64 %i.q, 384307168202282326
  call void @llvm.assume(i1 %i.s)
  %i.t = load i64, ptr %i.d, align 8, !range !27, !alias.scope !5076, !noundef !16
  %i.u = icmp eq i64 %i.q, %i.t
  br i1 %i.u, label %bb.l, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs8frGy5WneL6_4fish.exit.i.i

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs8frGy5WneL6_4fish.exit.i.i: ; preds = %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs8frGy5WneL6_4fish.exit.i.i_crit_edge, %bb.i
  %i.v = phi ptr [ %.pre, %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs8frGy5WneL6_4fish.exit.i.i_crit_edge ], [ %i.p, %bb.i ] ; 2 uses
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %i.q ; 3 uses
  store i64 %i.r, ptr %i.w, align 8, !noalias !5076
  %.sroa.411.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %.sroa.5.0.copyload.i.i, ptr %.sroa.411.0..sroa_idx.i.i, align 8, !noalias !5076
  %.sroa.512.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 %.sroa.6.0.copyload.i.i, ptr %.sroa.512.0..sroa_idx.i.i, align 8, !noalias !5076
  %i.x = add nuw nsw i64 %i.q, 1                  ; 2 uses
  store i64 %i.x, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !5076
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5076
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5076
  invoke fastcc void @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENCNvMs0_NtNtCs8frGy5WneL6_4fish12localization8settingsNtB2I_21LocalizationVariables16get_language_var0ENCB2C_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB2M_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef align 8 dereferenceable(16) %i.b) #30
          to label %.noexc8 unwind label %.loopexit

.noexc8:                                          ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs8frGy5WneL6_4fish.exit.i.i
  %i.y = load i64, ptr %i.a, align 8, !range !19, !noalias !5076, !noundef !16 ; 2 uses
  %.not.i.i6 = icmp eq i64 %i.y, -1
  br i1 %.not.i.i6, label %.loopexit20, label %bb.i

bb.j:                                             ; preds = %bb.l
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aa = icmp eq i64 %i.r, 0
  br i1 %i.aa, label %.body, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i.i) ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i, i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !5077
  br label %.body

bb.l:                                             ; preds = %bb.i
  invoke void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.q, i64 noundef 1, i64 noundef 8, i64 noundef 24)
          to label %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs8frGy5WneL6_4fish.exit.i.i_crit_edge unwind label %bb.j

._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs8frGy5WneL6_4fish.exit.i.i_crit_edge: ; preds = %bb.l
  %.pre = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5076
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs8frGy5WneL6_4fish.exit.i.i

.loopexit:                                        ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs8frGy5WneL6_4fish.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.j, %bb.k
  %eh.lpad-body = phi { ptr, i32 } [ %i.z, %bb.j ], [ %i.z, %bb.k ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBG_6string6StringEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #33
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit

.loopexit20:                                      ; preds = %.noexc8, %.noexc7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5076
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5074
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  br label %bb.c

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit: ; preds = %.body, %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.j, %bb.d ], [ %i.j, %bb.e ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCs8frGy5WneL6_4fish3key3KeyEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapNtNtNtB2a_3str4iter5CharsNvMs0_B13_B11_8from_rawEE9from_iterB15_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %.not.i.i = icmp eq ptr %1, %2
  br i1 %.not.i.i, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapNtNtNtBb_3str4iter5CharsNvMs0_NtCs8frGy5WneL6_4fish3keyNtB1q_3Key8from_rawENtNtNtB9_6traits8iterator8Iterator4nextB1s_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 3 uses
  %i.c = load i8, ptr %1, align 1, !noalias !5098, !noundef !16 ; 5 uses
  %i.d = icmp sgt i8 %i.c, -1
  br i1 %i.d, label %bb.c, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i: ; preds = %bb.b
  %i.e = and i8 %i.c, 31
  %i.f = zext nneg i8 %i.e to i32                 ; 3 uses
  %i.g = icmp ne ptr %i.b, %2
  tail call void @llvm.assume(i1 %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 3 uses
  %i.i = load i8, ptr %i.b, align 1, !noalias !5098, !noundef !16
  %i.j = shl nuw nsw i32 %i.f, 6
  %i.k = and i8 %i.i, 63
  %i.l = zext nneg i8 %i.k to i32                 ; 2 uses
  %i.m = or disjoint i32 %i.j, %i.l
  %i.n = icmp samesign ugt i8 %i.c, -33
  br i1 %i.n, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapNtNtNtBb_3str4iter5CharsNvMs0_NtCs8frGy5WneL6_4fish3keyNtB1q_3Key8from_rawENtNtNtB9_6traits8iterator8Iterator4nextB1s_.exit

bb.c:                                             ; preds = %bb.b
  %i.o = zext nneg i8 %i.c to i32
  br label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapNtNtNtBb_3str4iter5CharsNvMs0_NtCs8frGy5WneL6_4fish3keyNtB1q_3Key8from_rawENtNtNtB9_6traits8iterator8Iterator4nextB1s_.exit

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i
  %i.p = icmp ne ptr %i.h, %2
  tail call void @llvm.assume(i1 %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 3 ; 3 uses
  %i.r = load i8, ptr %i.h, align 1, !noalias !5098, !noundef !16
  %i.s = shl nuw nsw i32 %i.l, 6
  %i.t = and i8 %i.r, 63
  %i.u = zext nneg i8 %i.t to i32
  %i.v = or disjoint i32 %i.s, %i.u               ; 2 uses
  %i.w = shl nuw nsw i32 %i.f, 12
  %i.x = or disjoint i32 %i.v, %i.w
  %i.y = icmp samesign ugt i8 %i.c, -17
  br i1 %i.y, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapNtNtNtBb_3str4iter5CharsNvMs0_NtCs8frGy5WneL6_4fish3keyNtB1q_3Key8from_rawENtNtNtB9_6traits8iterator8Iterator4nextB1s_.exit

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i
  %i.z = icmp ne ptr %i.q, %2
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ab = load i8, ptr %i.q, align 1, !noalias !5098, !noundef !16
  %i.ac = shl nuw nsw i32 %i.f, 18
  %i.ad = and i32 %i.ac, 1835008
  %i.ae = shl nuw nsw i32 %i.v, 6
  %i.af = and i8 %i.ab, 63
  %i.ag = zext nneg i8 %i.af to i32
  %i.ah = or disjoint i32 %i.ae, %i.ag
  %i.ai = or disjoint i32 %i.ah, %i.ad
  br label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapNtNtNtBb_3str4iter5CharsNvMs0_NtCs8frGy5WneL6_4fish3keyNtB1q_3Key8from_rawENtNtNtB9_6traits8iterator8Iterator4nextB1s_.exit

_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapNtNtNtBb_3str4iter5CharsNvMs0_NtCs8frGy5WneL6_4fish3keyNtB1q_3Key8from_rawENtNtNtB9_6traits8iterator8Iterator4nextB1s_.exit: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i, %bb.c, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i
  %.sroa.0.0 = phi ptr [ %i.b, %bb.c ], [ %i.aa, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i ], [ %i.q, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i ], [ %i.h, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i ] ; 3 uses
  %spec.select.i.ph.i = phi i32 [ %i.o, %bb.c ], [ %i.ai, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i ], [ %i.x, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i ], [ %i.m, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i ]
  %i.aj = ptrtoint ptr %2 to i64                  ; 2 uses
  %i.ak = ptrtoint ptr %.sroa.0.0 to i64
  %i.al = sub nuw i64 %i.aj, %i.ak                ; 2 uses
  %i.am = lshr i64 %i.al, 2
  %i.an = and i64 %i.al, 3
  %.not.i.i19 = icmp ne i64 %i.an, 0
  %i.ao = zext i1 %.not.i.i19 to i64
  %.sroa.0.0.i.i = add nuw nsw i64 %i.am, %i.ao   ; 2 uses
  %i.ap = tail call i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i, i64 3) ; 2 uses
  %..i = add nuw nsw i64 %i.ap, 1                 ; 2 uses
  %i.aq = shl i64 %..i, 3                         ; 4 uses
  %i.ar = icmp samesign ugt i64 %.sroa.0.0.i.i, 2305843009213693950
  %.not.i.i20 = icmp ugt i64 %i.aq, 9223372036854775804
  %or.cond.i.i = select i1 %i.ar, i1 true, i1 %.not.i.i20, !prof !42
  br i1 %or.cond.i.i, label %bb.f, label %bb.d, !prof !42

bb.d:                                             ; preds = %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapNtNtNtBb_3str4iter5CharsNvMs0_NtCs8frGy5WneL6_4fish3keyNtB1q_3Key8from_rawENtNtNtB9_6traits8iterator8Iterator4nextB1s_.exit
  %i.as = icmp eq i64 %i.aq, 0
  br i1 %i.as, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !5099
  %i.at = tail call noundef align 4 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.aq, i64 noundef range(i64 1, -9223372036854775807) 4) #31, !noalias !5099 ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.f, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit

bb.f:                                             ; preds = %bb.e, %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapNtNtNtBb_3str4iter5CharsNvMs0_NtCs8frGy5WneL6_4fish3keyNtB1q_3Key8from_rawENtNtNtB9_6traits8iterator8Iterator4nextB1s_.exit
  %.sroa.4.0.ph.i = phi i64 [ 4, %bb.e ], [ 0, %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapNtNtNtBb_3str4iter5CharsNvMs0_NtCs8frGy5WneL6_4fish3keyNtB1q_3Key8from_rawENtNtNtB9_6traits8iterator8Iterator4nextB1s_.exit ]
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.aq) #35
  unreachable

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit: ; preds = %bb.e, %bb.d
  %.sroa.10.0.i = phi ptr [ inttoptr (i64 4 to ptr), %bb.d ], [ %i.at, %bb.e ] ; 4 uses
  %.sroa.4.0.i = phi i64 [ 0, %bb.d ], [ %..i, %bb.e ] ; 2 uses
  %i.av = icmp samesign ult i64 %i.ap, %.sroa.4.0.i
  tail call void @llvm.assume(i1 %i.av)
  store i32 %spec.select.i.ph.i, ptr %.sroa.10.0.i, align 4
  %.sroa.49.0..sroa.46.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i, i64 4
  store i32 0, ptr %.sroa.49.0..sroa.46.8..sroa_idx, align 4
  store i64 %.sroa.4.0.i, ptr %i.a, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr %.sroa.10.0.i, ptr %.sroa.46.0..sroa_idx, align 8
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.67.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5100)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5101)
  %.not.i.i17.i.i = icmp eq ptr %.sroa.0.0, %2
  br i1 %.not.i.i17.i.i, label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecNtNtCs8frGy5WneL6_4fish3key3KeyEINtB2_10SpecExtendBR_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapNtNtNtB1R_3str4iter5CharsNvMs0_BT_BR_8from_rawEE11spec_extendBV_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit, %.noexc
  %i.aw = phi ptr [ %i.cp, %.noexc ], [ %.sroa.10.0.i, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit ]
  %i.ax = phi i64 [ %i.cr, %.noexc ], [ 1, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit ] ; 5 uses
  %.sroa.0.018.i.i = phi ptr [ %.sroa.0.1.i.i, %.noexc ], [ %.sroa.0.0, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit ] ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i, i64 1 ; 3 uses
  %i.az = load i8, ptr %.sroa.0.018.i.i, align 1, !noalias !5102, !noundef !16 ; 5 uses
  %i.ba = icmp sgt i8 %i.az, -1
  br i1 %i.ba, label %bb.g, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.bb = and i8 %i.az, 31
  %i.bc = zext nneg i8 %i.bb to i32               ; 3 uses
  %i.bd = icmp ne ptr %i.ay, %2
  tail call void @llvm.assume(i1 %i.bd)
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i, i64 2 ; 3 uses
  %i.bf = load i8, ptr %i.ay, align 1, !noalias !5102, !noundef !16
  %i.bg = shl nuw nsw i32 %i.bc, 6
  %i.bh = and i8 %i.bf, 63
  %i.bi = zext nneg i8 %i.bh to i32               ; 2 uses
  %i.bj = or disjoint i32 %i.bg, %i.bi
  %i.bk = icmp samesign ugt i8 %i.az, -33
  br i1 %i.bk, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapNtNtNtBb_3str4iter5CharsNvMs0_NtCs8frGy5WneL6_4fish3keyNtB1q_3Key8from_rawENtNtNtB9_6traits8iterator8Iterator4nextB1s_.exit.i.i

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.bl = zext nneg i8 %i.az to i32
  br label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapNtNtNtBb_3str4iter5CharsNvMs0_NtCs8frGy5WneL6_4fish3keyNtB1q_3Key8from_rawENtNtNtB9_6traits8iterator8Iterator4nextB1s_.exit.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i
  %i.bm = icmp ne ptr %i.be, %2
  tail call void @llvm.assume(i1 %i.bm)
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i, i64 3 ; 3 uses
  %i.bo = load i8, ptr %i.be, align 1, !noalias !5102, !noundef !16
  %i.bp = shl nuw nsw i32 %i.bi, 6
  %i.bq = and i8 %i.bo, 63
  %i.br = zext nneg i8 %i.bq to i32
  %i.bs = or disjoint i32 %i.bp, %i.br            ; 2 uses
  %i.bt = shl nuw nsw i32 %i.bc, 12
  %i.bu = or disjoint i32 %i.bs, %i.bt
  %i.bv = icmp samesign ugt i8 %i.az, -17
  br i1 %i.bv, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapNtNtNtBb_3str4iter5CharsNvMs0_NtCs8frGy5WneL6_4fish3keyNtB1q_3Key8from_rawENtNtNtB9_6traits8iterator8Iterator4nextB1s_.exit.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i
  %i.bw = icmp ne ptr %i.bn, %2
  tail call void @llvm.assume(i1 %i.bw)
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i, i64 4
  %i.by = load i8, ptr %i.bn, align 1, !noalias !5102, !noundef !16
  %i.bz = shl nuw nsw i32 %i.bc, 18
  %i.ca = and i32 %i.bz, 1835008
  %i.cb = shl nuw nsw i32 %i.bs, 6
  %i.cc = and i8 %i.by, 63
  %i.cd = zext nneg i8 %i.cc to i32
  %i.ce = or disjoint i32 %i.cb, %i.cd
  %i.cf = or disjoint i32 %i.ce, %i.ca
  br label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapNtNtNtBb_3str4iter5CharsNvMs0_NtCs8frGy5WneL6_4fish3keyNtB1q_3Key8from_rawENtNtNtB9_6traits8iterator8Iterator4nextB1s_.exit.i.i

_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapNtNtNtBb_3str4iter5CharsNvMs0_NtCs8frGy5WneL6_4fish3keyNtB1q_3Key8from_rawENtNtNtB9_6traits8iterator8Iterator4nextB1s_.exit.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i, %bb.g, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i
  %.sroa.0.1.i.i = phi ptr [ %i.ay, %bb.g ], [ %i.bx, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i ], [ %i.bn, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i ], [ %i.be, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i ] ; 3 uses
  %spec.select.i.ph.i.i.i = phi i32 [ %i.bl, %bb.g ], [ %i.cf, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i ], [ %i.bu, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i ], [ %i.bj, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i ]
  %i.cg = icmp samesign ult i64 %i.ax, 1152921504606846976
  tail call void @llvm.assume(i1 %i.cg)
  %i.ch = load i64, ptr %i.a, align 8, !range !27, !alias.scope !5103, !noundef !16
  %i.ci = icmp eq i64 %i.ax, %i.ch
  br i1 %i.ci, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs8frGy5WneL6_4fish3key3KeyE7reserveBI_.exit.i.i, label %.noexc

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs8frGy5WneL6_4fish3key3KeyE7reserveBI_.exit.i.i: ; preds = %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapNtNtNtBb_3str4iter5CharsNvMs0_NtCs8frGy5WneL6_4fish3keyNtB1q_3Key8from_rawENtNtNtB9_6traits8iterator8Iterator4nextB1s_.exit.i.i
  %i.cj = ptrtoint ptr %.sroa.0.1.i.i to i64
  %i.ck = sub nuw i64 %i.aj, %i.cj                ; 2 uses
  %i.cl = lshr i64 %i.ck, 2
  %i.cm = and i64 %i.ck, 3
  %.not.i.i11.i.i = icmp ne i64 %i.cm, 0
  %i.cn = zext i1 %.not.i.i11.i.i to i64
  %.sroa.0.0.i.i.i.i = add nuw nsw i64 %i.cl, 1
  %i.co = add nuw nsw i64 %.sroa.0.0.i.i.i.i, %i.cn
  invoke void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.ax, i64 noundef range(i64 1, 0) %i.co, i64 noundef 4, i64 noundef 8)
          to label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs8frGy5WneL6_4fish3key3KeyE7reserveBI_.exit.i.i..noexc_crit_edge unwind label %bb.i

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs8frGy5WneL6_4fish3key3KeyE7reserveBI_.exit.i.i..noexc_crit_edge: ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs8frGy5WneL6_4fish3key3KeyE7reserveBI_.exit.i.i
  %.pre = load ptr, ptr %.sroa.46.0..sroa_idx, align 8, !alias.scope !5103
  br label %.noexc

.noexc:                                           ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs8frGy5WneL6_4fish3key3KeyE7reserveBI_.exit.i.i..noexc_crit_edge, %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapNtNtNtBb_3str4iter5CharsNvMs0_NtCs8frGy5WneL6_4fish3keyNtB1q_3Key8from_rawENtNtNtB9_6traits8iterator8Iterator4nextB1s_.exit.i.i
  %i.cp = phi ptr [ %.pre, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs8frGy5WneL6_4fish3key3KeyE7reserveBI_.exit.i.i..noexc_crit_edge ], [ %i.aw, %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapNtNtNtBb_3str4iter5CharsNvMs0_NtCs8frGy5WneL6_4fish3keyNtB1q_3Key8from_rawENtNtNtB9_6traits8iterator8Iterator4nextB1s_.exit.i.i ] ; 2 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.ax ; 2 uses
  store i32 %spec.select.i.ph.i.i.i, ptr %i.cq, align 4, !noalias !5103
  %.sroa.47.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  store i32 0, ptr %.sroa.47.0..sroa_idx.i.i, align 4, !noalias !5103
  %i.cr = add nuw nsw i64 %i.ax, 1                ; 2 uses
  store i64 %i.cr, ptr %.sroa.67.0..sroa_idx, align 8, !alias.scope !5103
  %.not.i.i.i.i = icmp eq ptr %.sroa.0.1.i.i, %2
  br i1 %.not.i.i.i.i, label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecNtNtCs8frGy5WneL6_4fish3key3KeyEINtB2_10SpecExtendBR_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapNtNtNtB1R_3str4iter5CharsNvMs0_BT_BR_8from_rawEE11spec_extendBV_.exit, label %.lr.ph.i.i

_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapNtNtNtBb_3str4iter5CharsNvMs0_NtCs8frGy5WneL6_4fish3keyNtB1q_3Key8from_rawENtNtNtB9_6traits8iterator8Iterator4nextB1s_.exit.thread: ; preds = %bb.a
  store i64 0, ptr %0, align 8
end_hunk_9
begin_hunk_10_@_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VechEINtB2_18SpecFromIterNestedhINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_while9TakeWhileINtNtB1z_4skip4SkipINtNtB1z_10skip_while9SkipWhileINtNtB1z_6copied6CopiedINtNtNtB1D_5slice4iter4IterhEENCNCNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux00EENCB4d_s_0EE9from_iterB4j_:bb.a
  %i.b = alloca [24 x i8], align 8                ; 3 uses
  %i.c = alloca [40 x i8], align 8                ; 9 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !range !17, !alias.scope !5761, !noundef !16
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %1, align 8, !alias.scope !5762, !noundef !16 ; 2 uses
  %.not.i.i = icmp eq i64 %i.h, 0
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  br i1 %.not.i.i, label %bb.c, label %bb.d, !prof !18

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.l = tail call { i1, i8 } @_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterhEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB1v_4find5checkhNCINvNvXs0_NtB7_10skip_whileINtB2L_9SkipWhileppEB1v_4next5checkhNCNCNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux00E0E0INtNtNtBb_3ops12control_flow11ControlFlowhEEB3K_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull dereferenceable(1) %i.j, ptr noalias nofree noundef nonnull %i.k) ; 3 uses
  %i.m = extractvalue { i1, i8 } %i.l, 0
  %i.n = extractvalue { i1, i8 } %i.l, 1
  %.sroa.3.0.i.i.i.i = select i1 %i.m, i8 %i.n, i8 undef
  %i.o = insertvalue { i1, i8 } %i.l, i8 %.sroa.3.0.i.i.i.i, 1
  br label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4skipINtB4_4SkipINtNtB6_10skip_while9SkipWhileINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEENCNCNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux00EENtNtNtB8_6traits8iterator8Iterator4nextB2o_.exit.i

bb.d:                                             ; preds = %bb.b
  store i64 0, ptr %1, align 8, !alias.scope !5762
  %i.p = tail call fastcc { i1, i8 } @_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10skip_while9SkipWhileINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterhEENCNCNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux00ENtNtNtB9_6traits8iterator8Iterator3nthB21_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i, i64 noundef %i.h) #30
  br label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4skipINtB4_4SkipINtNtB6_10skip_while9SkipWhileINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEENCNCNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux00EENtNtNtB8_6traits8iterator8Iterator4nextB2o_.exit.i

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4skipINtB4_4SkipINtNtB6_10skip_while9SkipWhileINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEENCNCNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux00EENtNtNtB8_6traits8iterator8Iterator4nextB2o_.exit.i: ; preds = %bb.d, %bb.c
  %.pn.i.i = phi { i1, i8 } [ %i.p, %bb.d ], [ %i.o, %bb.c ] ; 2 uses
  %i.q = extractvalue { i1, i8 } %.pn.i.i, 0
  br i1 %i.q, label %bb.e, label %bb.p

bb.e:                                             ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4skipINtB4_4SkipINtNtB6_10skip_while9SkipWhileINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEENCNCNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux00EENtNtNtB8_6traits8iterator8Iterator4nextB2o_.exit.i
  %i.r = extractvalue { i1, i8 } %.pn.i.i, 1      ; 2 uses
  %i.s = add i8 %i.r, -48
  %.sroa.0.0.i.i = icmp ult i8 %i.s, 10
  br i1 %.sroa.0.0.i.i, label %bb.f, label %bb.p

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5763)
  %i.t = load i8, ptr %i.e, align 8, !range !17, !alias.scope !5763, !noalias !5764, !noundef !16
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtB7_4skip4SkipINtNtB7_10skip_while9SkipWhileINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterhEENCNCNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux00EENCB2N_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2T_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5765
  call void @_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator9size_hintCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.i), !noalias !5766
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5765
  br label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtB7_4skip4SkipINtNtB7_10skip_while9SkipWhileINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterhEENCNCNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux00EENCB2N_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2T_.exit

_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtB7_4skip4SkipINtNtB7_10skip_while9SkipWhileINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterhEENCNCNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux00EENCB2N_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2T_.exit: ; preds = %bb.g, %bb.f
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !5767
  %i.v = call noundef dereferenceable_or_null(8) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 8, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !5767 ; 4 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.h, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit

bb.h:                                             ; preds = %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtB7_4skip4SkipINtNtB7_10skip_while9SkipWhileINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterhEENCNCNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux00EENCB2N_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2T_.exit
  call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 1, i64 8) #35
  unreachable

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit: ; preds = %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtB7_4skip4SkipINtNtB7_10skip_while9SkipWhileINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterhEENCNCNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux00EENCB2N_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2T_.exit
  store i8 %i.r, ptr %i.v, align 1
  store i64 8, ptr %i.d, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr %i.v, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !5768)
  call void @llvm.experimental.noalias.scope.decl(metadata !5769)
  call void @llvm.experimental.noalias.scope.decl(metadata !5770)
  call void @llvm.experimental.noalias.scope.decl(metadata !5771)
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 3 uses
  %i.y = load i8, ptr %i.x, align 8, !range !17, !alias.scope !5772, !noalias !5773, !noundef !16
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VechEINtB2_10SpecExtendhINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_while9TakeWhileINtNtB1h_4skip4SkipINtNtB1h_10skip_while9SkipWhileINtNtB1h_6copied6CopiedINtNtNtB1l_5slice4iter4IterhEENCNCNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux00EENCB3V_s_0EE11spec_extendB41_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 25
  br label %bb.i

bb.i:                                             ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs8frGy5WneL6_4fish.exit.i.i, %.lr.ph.i.i
  %i.ad = phi ptr [ %i.at, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs8frGy5WneL6_4fish.exit.i.i ], [ %i.v, %.lr.ph.i.i ]
  %i.ae = phi i64 [ %i.av, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs8frGy5WneL6_4fish.exit.i.i ], [ 1, %.lr.ph.i.i ] ; 5 uses
  %i.af = load i64, ptr %i.c, align 8, !alias.scope !5774, !noalias !5773, !noundef !16 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.af, 0
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.k, !prof !18

bb.j:                                             ; preds = %bb.i
  %i.ag = invoke { i1, i8 } @_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterhEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB1v_4find5checkhNCINvNvXs0_NtB7_10skip_whileINtB2L_9SkipWhileppEB1v_4next5checkhNCNCNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux00E0E0INtNtNtBb_3ops12control_flow11ControlFlowhEEB3K_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noalias nofree noundef nonnull dereferenceable(1) %i.ab, ptr noalias nofree noundef nonnull %i.ac)
          to label %.noexc unwind label %bb.r     ; 3 uses

.noexc:                                           ; preds = %bb.j
  %i.ah = extractvalue { i1, i8 } %i.ag, 0
  %i.ai = extractvalue { i1, i8 } %i.ag, 1
  %.sroa.3.0.i.i.i.i.i.i = select i1 %i.ah, i8 %i.ai, i8 undef
  %i.aj = insertvalue { i1, i8 } %i.ag, i8 %.sroa.3.0.i.i.i.i.i.i, 1
  br label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4skipINtB4_4SkipINtNtB6_10skip_while9SkipWhileINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEENCNCNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux00EENtNtNtB8_6traits8iterator8Iterator4nextB2o_.exit.i.i.i

bb.k:                                             ; preds = %bb.i
  store i64 0, ptr %i.c, align 8, !alias.scope !5774, !noalias !5773
  %i.ak = invoke fastcc { i1, i8 } @_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10skip_while9SkipWhileINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterhEENCNCNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux00ENtNtNtB9_6traits8iterator8Iterator3nthB21_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aa, i64 noundef %i.af) #30
          to label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4skipINtB4_4SkipINtNtB6_10skip_while9SkipWhileINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEENCNCNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux00EENtNtNtB8_6traits8iterator8Iterator4nextB2o_.exit.i.i.i unwind label %bb.r

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4skipINtB4_4SkipINtNtB6_10skip_while9SkipWhileINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEENCNCNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux00EENtNtNtB8_6traits8iterator8Iterator4nextB2o_.exit.i.i.i: ; preds = %bb.k, %.noexc
  %.pn.i.i.i.i = phi { i1, i8 } [ %i.aj, %.noexc ], [ %i.ak, %bb.k ] ; 2 uses
  %i.al = extractvalue { i1, i8 } %.pn.i.i.i.i, 0
  br i1 %i.al, label %bb.l, label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VechEINtB2_10SpecExtendhINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_while9TakeWhileINtNtB1h_4skip4SkipINtNtB1h_10skip_while9SkipWhileINtNtB1h_6copied6CopiedINtNtNtB1l_5slice4iter4IterhEENCNCNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux00EENCB3V_s_0EE11spec_extendB41_.exit

bb.l:                                             ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4skipINtB4_4SkipINtNtB6_10skip_while9SkipWhileINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEENCNCNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux00EENtNtNtB8_6traits8iterator8Iterator4nextB2o_.exit.i.i.i
  %i.am = extractvalue { i1, i8 } %.pn.i.i.i.i, 1 ; 2 uses
  %i.an = add i8 %i.am, -48
  %.sroa.0.0.i.i.i.i = icmp ult i8 %i.an, 10
  br i1 %.sroa.0.0.i.i.i.i, label %bb.m, label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VechEINtB2_10SpecExtendhINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_while9TakeWhileINtNtB1h_4skip4SkipINtNtB1h_10skip_while9SkipWhileINtNtB1h_6copied6CopiedINtNtNtB1l_5slice4iter4IterhEENCNCNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux00EENCB3V_s_0EE11spec_extendB41_.exit

bb.m:                                             ; preds = %bb.l
  %i.ao = icmp sgt i64 %i.ae, -1
  call void @llvm.assume(i1 %i.ao)
  %i.ap = load i64, ptr %i.d, align 8, !range !27, !alias.scope !5773, !noalias !5775, !noundef !16
  %i.aq = icmp eq i64 %i.ae, %i.ap
  br i1 %i.aq, label %bb.n, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs8frGy5WneL6_4fish.exit.i.i

bb.n:                                             ; preds = %bb.m
  call void @llvm.experimental.noalias.scope.decl(metadata !5776)
  %i.ar = load i8, ptr %i.x, align 8, !range !17, !alias.scope !5777, !noalias !5778, !noundef !16
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtB7_4skip4SkipINtNtB7_10skip_while9SkipWhileINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterhEENCNCNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux00EENCB2N_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2T_.exit.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5779
  invoke void @_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator9size_hintCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aa)
          to label %.noexc10 unwind label %bb.r

.noexc10:                                         ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5779
  br label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtB7_4skip4SkipINtNtB7_10skip_while9SkipWhileINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterhEENCNCNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux00EENCB2N_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2T_.exit.i.i

_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtB7_4skip4SkipINtNtB7_10skip_while9SkipWhileINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterhEENCNCNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux00EENCB2N_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2T_.exit.i.i: ; preds = %.noexc10, %bb.n
  invoke void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.ae, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtB7_4skip4SkipINtNtB7_10skip_while9SkipWhileINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterhEENCNCNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux00EENCB2N_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2T_.exit.i.i._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs8frGy5WneL6_4fish.exit.i.i_crit_edge unwind label %bb.r

_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtB7_4skip4SkipINtNtB7_10skip_while9SkipWhileINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterhEENCNCNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux00EENCB2N_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2T_.exit.i.i._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs8frGy5WneL6_4fish.exit.i.i_crit_edge: ; preds = %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtB7_4skip4SkipINtNtB7_10skip_while9SkipWhileINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterhEENCNCNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux00EENCB2N_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2T_.exit.i.i
  %.pre = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5773, !noalias !5775
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs8frGy5WneL6_4fish.exit.i.i

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs8frGy5WneL6_4fish.exit.i.i: ; preds = %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtB7_4skip4SkipINtNtB7_10skip_while9SkipWhileINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterhEENCNCNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux00EENCB2N_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2T_.exit.i.i._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs8frGy5WneL6_4fish.exit.i.i_crit_edge, %bb.m
  %i.at = phi ptr [ %.pre, %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtB7_4skip4SkipINtNtB7_10skip_while9SkipWhileINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterhEENCNCNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux00EENCB2N_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2T_.exit.i.i._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs8frGy5WneL6_4fish.exit.i.i_crit_edge ], [ %i.ad, %bb.m ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ae
  store i8 %i.am, ptr %i.au, align 1, !noalias !5773
  %i.av = add nuw i64 %i.ae, 1                    ; 2 uses
  store i64 %i.av, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !5773, !noalias !5775
  %i.aw = load i8, ptr %i.x, align 8, !range !17, !alias.scope !5772, !noalias !5773, !noundef !16
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VechEINtB2_10SpecExtendhINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_while9TakeWhileINtNtB1h_4skip4SkipINtNtB1h_10skip_while9SkipWhileINtNtB1h_6copied6CopiedINtNtNtB1l_5slice4iter4IterhEENCNCNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux00EENCB3V_s_0EE11spec_extendB41_.exit, label %bb.i

bb.p:                                             ; preds = %bb.e, %bb.a, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4skipINtB4_4SkipINtNtB6_10skip_while9SkipWhileINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEENCNCNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux00EENtNtNtB8_6traits8iterator8Iterator4nextB2o_.exit.i
  store i64 0, ptr %0, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.az, align 8
  br label %bb.q

bb.q:                                             ; preds = %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VechEINtB2_10SpecExtendhINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_while9TakeWhileINtNtB1h_4skip4SkipINtNtB1h_10skip_while9SkipWhileINtNtB1h_6copied6CopiedINtNtNtB1l_5slice4iter4IterhEENCNCNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux00EENCB3V_s_0EE11spec_extendB41_.exit, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.r:                                             ; preds = %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtB7_4skip4SkipINtNtB7_10skip_while9SkipWhileINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterhEENCNCNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux00EENCB2N_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2T_.exit.i.i, %bb.o, %bb.k, %bb.j
  %i.ba = landingpad { ptr, i32 }
          cleanup
  %.val = load i64, ptr %i.d, align 8             ; 2 uses
  %i.bb = icmp eq i64 %.val, 0
  br i1 %i.bb, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.val7 = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !16, !noundef !16
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !5780
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit

_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VechEINtB2_10SpecExtendhINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_while9TakeWhileINtNtB1h_4skip4SkipINtNtB1h_10skip_while9SkipWhileINtNtB1h_6copied6CopiedINtNtNtB1l_5slice4iter4IterhEENCNCNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux00EENCB3V_s_0EE11spec_extendB41_.exit: ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs8frGy5WneL6_4fish.exit.i.i, %bb.l, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4skipINtB4_4SkipINtNtB6_10skip_while9SkipWhileINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEENCNCNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux00EENtNtNtB8_6traits8iterator8Iterator4nextB2o_.exit.i.i.i, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  br label %bb.q

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit: ; preds = %bb.s, %bb.r
  resume { ptr, i32 } %i.ba
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VechEINtB2_18SpecFromIterNestedhINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvNtCs8frGy5WneL6_4fish9tokenizer8parse_fd0EE9from_iterB3i_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 3 uses
  %i.b = alloca [4 x i8], align 4                 ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %.not = icmp eq ptr %1, %2
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.e = load i32, ptr %1, align 4, !noalias !5797, !noundef !16 ; 5 uses
  %i.f = xor i32 %i.e, 55296
  %i.g = add i32 %i.f, -1114112
  %i.h = icmp ult i32 %i.g, -1112064
  br i1 %i.h, label %.split.i.i, label %bb.c

.split.i.i:                                       ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5797
  store i32 %i.e, ptr %i.b, align 4, !noalias !5797
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @146) #32, !noalias !5797
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.i = icmp ult i32 %i.e, 1114112
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nsw i32 %i.e, -48
  %or.cond.i.i = icmp ult i32 %i.j, 10
  br i1 %or.cond.i.i, label %bb.e, label %bb.d, !prof !5798

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 36, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #32, !noalias !5799
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.k = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.l = ptrtoint ptr %i.d to i64
  %i.m = sub nuw i64 %i.k, %i.l
  %i.n = lshr exact i64 %i.m, 2
  %i.o = tail call i64 @llvm.umax.i64(i64 %i.n, i64 7)
  %..i = add nuw nsw i64 %i.o, 1                  ; 3 uses
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !5800
  %i.p = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %..i, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !5800 ; 4 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.f, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 1, i64 %..i) #35
  unreachable

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit: ; preds = %bb.e
  %i.r = trunc nuw nsw i32 %i.e to i8
  store i8 %i.r, ptr %i.p, align 1
  store i64 %..i, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store ptr %i.p, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5801)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5802)
  %.not11.i.i = icmp eq ptr %i.d, %2
  br i1 %.not11.i.i, label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VechEINtB2_10SpecExtendhINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvNtCs8frGy5WneL6_4fish9tokenizer8parse_fd0EE11spec_extendB30_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit, %.noexc13
  %i.s = phi ptr [ %i.aj, %.noexc13 ], [ %i.p, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit ]
  %i.t = phi i64 [ %i.al, %.noexc13 ], [ 1, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit ] ; 5 uses
  %.sroa.0.012.i.i = phi ptr [ %i.u, %.noexc13 ], [ %i.d, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.012.i.i, i64 4 ; 3 uses
  %i.v = load i32, ptr %.sroa.0.012.i.i, align 4, !noalias !5803, !noundef !16 ; 5 uses
  %i.w = xor i32 %i.v, 55296
  %i.x = add i32 %i.w, -1114112
  %i.y = icmp ult i32 %i.x, -1112064
  br i1 %i.y, label %.split.i.i.i.i, label %bb.g

.split.i.i.i.i:                                   ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5803
  store i32 %i.v, ptr %i.a, align 4, !noalias !5803
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @146) #32
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.split.i.i.i.i
  unreachable

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.z = icmp ult i32 %i.v, 1114112
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = add nsw i32 %i.v, -48
  %or.cond.i.i.i.i = icmp ult i32 %i.aa, 10
  br i1 %or.cond.i.i.i.i, label %bb.i, label %bb.h, !prof !5798

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 36, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #32
          to label %.noexc12 unwind label %.loopexit.split-lp

.noexc12:                                         ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ab = trunc nuw nsw i32 %i.v to i8
  %i.ac = icmp sgt i64 %i.t, -1
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = load i64, ptr %i.c, align 8, !range !27, !alias.scope !5804, !noundef !16
  %i.ae = icmp eq i64 %i.t, %i.ad
  br i1 %i.ae, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs8frGy5WneL6_4fish.exit.i.i, label %.noexc13

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs8frGy5WneL6_4fish.exit.i.i: ; preds = %bb.i
  %i.af = ptrtoint ptr %i.u to i64
  %i.ag = sub nuw i64 %i.k, %i.af
  %i.ah = lshr exact i64 %i.ag, 2
  %i.ai = add nuw nsw i64 %i.ah, 1
  invoke void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.t, i64 noundef %i.ai, i64 noundef 1, i64 noundef 1)
          to label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs8frGy5WneL6_4fish.exit.i.i..noexc13_crit_edge unwind label %.loopexit

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs8frGy5WneL6_4fish.exit.i.i..noexc13_crit_edge: ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs8frGy5WneL6_4fish.exit.i.i
  %.pre = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5804
  br label %.noexc13

.noexc13:                                         ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs8frGy5WneL6_4fish.exit.i.i..noexc13_crit_edge, %bb.i
  %i.aj = phi ptr [ %.pre, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs8frGy5WneL6_4fish.exit.i.i..noexc13_crit_edge ], [ %i.s, %bb.i ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.t
  store i8 %i.ab, ptr %i.ak, align 1, !noalias !5804
  %i.al = add nuw i64 %i.t, 1                     ; 2 uses
  store i64 %i.al, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !5804
  %.not.i.i11 = icmp eq ptr %i.u, %2
  br i1 %.not.i.i11, label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VechEINtB2_10SpecExtendhINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvNtCs8frGy5WneL6_4fish9tokenizer8parse_fd0EE11spec_extendB30_.exit, label %.lr.ph.i.i

bb.j:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.an, align 8
  br label %bb.k

bb.k:                                             ; preds = %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VechEINtB2_10SpecExtendhINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvNtCs8frGy5WneL6_4fish9tokenizer8parse_fd0EE11spec_extendB30_.exit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

.loopexit:                                        ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs8frGy5WneL6_4fish.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

.loopexit.split-lp:                               ; preds = %.split.i.i.i.i, %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.l:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.val = load i64, ptr %i.c, align 8             ; 2 uses
  %i.ao = icmp eq i64 %.val, 0
  br i1 %i.ao, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.val7 = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !16, !noundef !16
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !5805
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit

_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VechEINtB2_10SpecExtendhINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvNtCs8frGy5WneL6_4fish9tokenizer8parse_fd0EE11spec_extendB30_.exit: ; preds = %.noexc13, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  br label %bb.k

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit: ; preds = %bb.m, %bb.l
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecjEINtB2_18SpecFromIterNestedjINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter16CharIndicesUtf32NCNvMs0_NtNtCs8frGy5WneL6_4fish8builtins11fish_indentNtB3E_13PrettyPrinter44compute_multi_line_brace_statement_locations0EE9from_iterB3I_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 3 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [4 x i8], align 4                 ; 3 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5840)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5841)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5842)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5843
  store ptr %i.g, ptr %i.d, align 8, !noalias !5844
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !5845, !noalias !5846, !nonnull !16, !noundef !16
  %.promoted.i.i.i = load ptr, ptr %1, align 8, !alias.scope !5845, !noalias !5846
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.promoted14.i.i.i = load i64, ptr %i.j, align 8, !alias.scope !5847, !noalias !5846
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %i.k = phi i64 [ %i.t, %bb.f ], [ %.promoted14.i.i.i, %bb.a ] ; 3 uses
  %i.l = phi ptr [ %i.m, %bb.f ], [ %.promoted.i.i.i, %bb.a ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5848)
  call void @llvm.experimental.noalias.scope.decl(metadata !5849)
  %.not.not.not.not.i.not.not.not.i.not = icmp eq ptr %i.l, %i.i
  br i1 %.not.not.not.not.i.not.not.not.i.not, label %bb.p, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 2 uses
  store ptr %i.m, ptr %1, align 8, !alias.scope !5845, !noalias !5846
  %i.n = load i32, ptr %i.l, align 4, !noalias !5850, !noundef !16 ; 4 uses
  %i.o = xor i32 %i.n, 55296
  %i.p = add i32 %i.o, -1114112
  %i.q = icmp ult i32 %i.p, -1112064
  br i1 %i.q, label %.split.i.i.i.i.i, label %bb.d
end_hunk_10
begin_hunk_11_@_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecjEINtB2_18SpecFromIterNestedjINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter16CharIndicesUtf32NCNvMs0_NtNtCs8frGy5WneL6_4fish8builtins11fish_indentNtB3E_13PrettyPrinter44compute_multi_line_brace_statement_locations0EE9from_iterB3I_:bb.a

bb.o:                                             ; preds = %.noexc11
  %i.at = extractvalue { i64, i64 } %i.aq, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5863
  %i.au = icmp samesign ult i64 %i.ae, 1152921504606846976
  call void @llvm.assume(i1 %i.au)
  %i.av = load i64, ptr %i.f, align 8, !range !27, !alias.scope !5873, !noalias !5874, !noundef !16
  %i.aw = icmp eq i64 %i.ae, %i.av
  br i1 %i.aw, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecjE7reserveCs8frGy5WneL6_4fish.exit.i.i, label %.noexc12

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecjE7reserveCs8frGy5WneL6_4fish.exit.i.i: ; preds = %bb.o
  invoke void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.ae, i64 noundef 1, i64 noundef 8, i64 noundef 8)
          to label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecjE7reserveCs8frGy5WneL6_4fish.exit.i.i..noexc12_crit_edge unwind label %.loopexit.split-lp.loopexit

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecjE7reserveCs8frGy5WneL6_4fish.exit.i.i..noexc12_crit_edge: ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecjE7reserveCs8frGy5WneL6_4fish.exit.i.i
  %.pre = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5873, !noalias !5874
  br label %.noexc12

.noexc12:                                         ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecjE7reserveCs8frGy5WneL6_4fish.exit.i.i..noexc12_crit_edge, %bb.o
  %i.ax = phi ptr [ %.pre, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecjE7reserveCs8frGy5WneL6_4fish.exit.i.i..noexc12_crit_edge ], [ %i.ad, %bb.o ] ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.ae
  store i64 %i.at, ptr %i.ay, align 8, !noalias !5873
  %i.az = add nuw nsw i64 %i.ae, 1                ; 2 uses
  store i64 %i.az, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !5873, !noalias !5874
  br label %bb.i

bb.p:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5843
  store i64 0, ptr %0, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.bb, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.s, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

.loopexit:                                        ; preds = %bb.n
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecjE7reserveCs8frGy5WneL6_4fish.exit.i.i
  %lpad.loopexit16 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.m, %.split.i.i.i.i.i.i.i
  %lpad.loopexit.split-lp17 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit16, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp17, %.loopexit.split-lp.loopexit.split-lp ]
  %.val8 = load i64, ptr %i.f, align 8            ; 2 uses
  %i.bc = icmp eq i64 %.val8, 0
  br i1 %i.bc, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecjEECs8frGy5WneL6_4fish.exit, label %bb.r

bb.r:                                             ; preds = %.loopexit.split-lp
  %.val9 = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !16, !noundef !16
  %i.bd = shl nuw i64 %.val8, 3
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9, i64 noundef %i.bd, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !5875
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecjEECs8frGy5WneL6_4fish.exit

bb.s:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5863
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  br label %bb.q

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecjEECs8frGy5WneL6_4fish.exit: ; preds = %bb.r, %.loopexit.split-lp
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecjEINtB2_18SpecFromIterNestedjNtNtNtCs8frGy5WneL6_4fish7history4file21HistoryFileOffsetIterE9from_iterB1A_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = tail call { i64, i64 } @_RNvXs6_NtNtCs8frGy5WneL6_4fish7history4fileNtB5_21HistoryFileOffsetIterNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) ; 2 uses
  %i.d = extractvalue { i64, i64 } %i.c, 0
  %i.e = trunc nuw i64 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !5886
  %i.f = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 32, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !5886 ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 8, i64 32) #35
  unreachable

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit: ; preds = %bb.b
  %i.h = extractvalue { i64, i64 } %i.c, 1
  store i64 %i.h, ptr %i.f, align 8
  store i64 4, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr %i.f, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5887)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5888)
  %i.i = invoke { i64, i64 } @_RNvXs6_NtNtCs8frGy5WneL6_4fish7history4fileNtB5_21HistoryFileOffsetIterNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %.noexc unwind label %.thread  ; 2 uses

.noexc:                                           ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit
  %i.j = extractvalue { i64, i64 } %i.i, 0
  %i.k = trunc nuw i64 %i.j to i1
  br i1 %i.k, label %.lr.ph.i.i, label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecjEINtB2_10SpecExtendjNtNtNtCs8frGy5WneL6_4fish7history4file21HistoryFileOffsetIterE11spec_extendB1i_.exit

.lr.ph.i.i:                                       ; preds = %.noexc, %.noexc9
  %i.l = phi ptr [ %i.r, %.noexc9 ], [ %i.f, %.noexc ]
  %i.m = phi i64 [ %i.s, %.noexc9 ], [ 4, %.noexc ] ; 3 uses
  %i.n = phi i64 [ %i.u, %.noexc9 ], [ 1, %.noexc ] ; 4 uses
  %.pn.i.i = phi { i64, i64 } [ %i.v, %.noexc9 ], [ %i.i, %.noexc ]
  %i.o = extractvalue { i64, i64 } %.pn.i.i, 1
  %i.p = icmp samesign ult i64 %i.n, 1152921504606846976
  call void @llvm.assume(i1 %i.p)
  %i.q = icmp eq i64 %i.n, %i.m
  br i1 %i.q, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecjE7reserveCs8frGy5WneL6_4fish.exit.i.i, label %bb.d

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecjE7reserveCs8frGy5WneL6_4fish.exit.i.i: ; preds = %.lr.ph.i.i
  invoke void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.m, i64 noundef 1, i64 noundef 8, i64 noundef 8)
          to label %.noexc8 unwind label %bb.g

.noexc8:                                          ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecjE7reserveCs8frGy5WneL6_4fish.exit.i.i
  %.pre3.i.i = load i64, ptr %i.b, align 8, !range !27, !alias.scope !5889, !noalias !5890
  %.pre = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5889, !noalias !5890
  br label %bb.d

bb.d:                                             ; preds = %.noexc8, %.lr.ph.i.i
  %i.r = phi ptr [ %i.l, %.lr.ph.i.i ], [ %.pre, %.noexc8 ] ; 2 uses
  %i.s = phi i64 [ %i.m, %.lr.ph.i.i ], [ %.pre3.i.i, %.noexc8 ]
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.n
  store i64 %i.o, ptr %i.t, align 8, !noalias !5889
  %i.u = add nuw nsw i64 %i.n, 1                  ; 2 uses
  store i64 %i.u, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !5889, !noalias !5890
  %i.v = invoke { i64, i64 } @_RNvXs6_NtNtCs8frGy5WneL6_4fish7history4fileNtB5_21HistoryFileOffsetIterNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %.noexc9 unwind label %bb.g    ; 2 uses

.noexc9:                                          ; preds = %bb.d
  %i.w = extractvalue { i64, i64 } %i.v, 0
  %i.x = trunc nuw i64 %i.w to i1
  br i1 %i.x, label %.lr.ph.i.i, label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecjEINtB2_10SpecExtendjNtNtNtCs8frGy5WneL6_4fish7history4file21HistoryFileOffsetIterE11spec_extendB1i_.exit

bb.e:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.z, align 8
  br label %bb.f

bb.f:                                             ; preds = %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecjEINtB2_10SpecExtendjNtNtNtCs8frGy5WneL6_4fish7history4file21HistoryFileOffsetIterE11spec_extendB1i_.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

.thread:                                          ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %bb.d, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecjE7reserveCs8frGy5WneL6_4fish.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.pre = load i64, ptr %i.b, align 8         ; 2 uses
  %i.aa = icmp eq i64 %.val.pre, 0
  br i1 %i.aa, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecjEECs8frGy5WneL6_4fish.exit, label %bb.h

bb.h:                                             ; preds = %.thread, %bb.g
  %lpad.phi15 = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.thread ], [ %lpad.loopexit, %bb.g ]
  %.val14 = phi i64 [ 4, %.thread ], [ %.val.pre, %bb.g ]
  %.val7 = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !16, !noundef !16
  %i.ab = shl nuw i64 %.val14, 3
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7, i64 noundef %i.ab, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !5891
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecjEECs8frGy5WneL6_4fish.exit

_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecjEINtB2_10SpecExtendjNtNtNtCs8frGy5WneL6_4fish7history4file21HistoryFileOffsetIterE11spec_extendB1i_.exit: ; preds = %.noexc9, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  br label %bb.f

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecjEECs8frGy5WneL6_4fish.exit: ; preds = %bb.h, %bb.g
  %lpad.phi16 = phi { ptr, i32 } [ %lpad.phi15, %bb.h ], [ %lpad.loopexit, %bb.g ]
  resume { ptr, i32 } %lpad.phi16
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecmEINtB2_18SpecFromIterNestedmINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NvYmINtNtB1D_7convert4FromcE4fromEE9from_iterCs8frGy5WneL6_4fish(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 3 uses
  %i.b = alloca [4 x i8], align 4                 ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.d = icmp eq ptr %1, %2
  br i1 %i.d, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.f = load i32, ptr %1, align 4, !noalias !5908, !noundef !16 ; 4 uses
  %i.g = xor i32 %i.f, 55296
  %i.h = add i32 %i.g, -1114112
  %i.i = icmp ult i32 %i.h, -1112064
  br i1 %i.i, label %.split.i.i, label %bb.c

.split.i.i:                                       ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5908
  store i32 %i.f, ptr %i.b, align 4, !noalias !5908
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @146) #32, !noalias !5908
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.j = icmp ult i32 %i.f, 1114112
  tail call void @llvm.assume(i1 %i.j)
  %i.k = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.l = ptrtoint ptr %i.e to i64
  %i.m = sub nuw i64 %i.k, %i.l                   ; 2 uses
  %i.n = lshr exact i64 %i.m, 2
  %i.o = tail call i64 @llvm.umax.i64(i64 %i.n, i64 3) ; 2 uses
  %..i = add nuw nsw i64 %i.o, 1                  ; 2 uses
  %i.p = shl i64 %..i, 2                          ; 4 uses
  %i.q = icmp eq i64 %i.m, -4
  %.not.i.i = icmp ugt i64 %i.p, 9223372036854775804
  %or.cond.i.i = select i1 %i.q, i1 true, i1 %.not.i.i, !prof !42
  br i1 %or.cond.i.i, label %bb.f, label %bb.d, !prof !42

bb.d:                                             ; preds = %bb.c
  %i.r = icmp eq i64 %i.p, 0
  br i1 %i.r, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !5909
  %i.s = tail call noundef align 4 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.p, i64 noundef range(i64 1, -9223372036854775807) 4) #31, !noalias !5909 ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.f, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit

bb.f:                                             ; preds = %bb.e, %bb.c
  %.sroa.4.0.ph.i = phi i64 [ 4, %bb.e ], [ 0, %bb.c ]
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.p) #35
  unreachable

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit: ; preds = %bb.e, %bb.d
  %.sroa.10.0.i = phi ptr [ inttoptr (i64 4 to ptr), %bb.d ], [ %i.s, %bb.e ] ; 3 uses
  %.sroa.4.0.i = phi i64 [ 0, %bb.d ], [ %..i, %bb.e ] ; 2 uses
  %i.u = icmp samesign ult i64 %i.o, %.sroa.4.0.i
  tail call void @llvm.assume(i1 %i.u)
  store i32 %i.f, ptr %.sroa.10.0.i, align 4
  store i64 %.sroa.4.0.i, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store ptr %.sroa.10.0.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5910)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5911)
  %i.v = icmp eq ptr %i.e, %2
  br i1 %i.v, label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecmEINtB2_10SpecExtendmINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NvYmINtNtB1l_7convert4FromcE4fromEE11spec_extendCs8frGy5WneL6_4fish.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit, %.noexc10
  %i.w = phi ptr [ %i.al, %.noexc10 ], [ %.sroa.10.0.i, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit ]
  %i.x = phi i64 [ %i.an, %.noexc10 ], [ 1, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit ] ; 5 uses
  %.sroa.0.011.i.i = phi ptr [ %i.y, %.noexc10 ], [ %i.e, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.011.i.i, i64 4 ; 3 uses
  %i.z = load i32, ptr %.sroa.0.011.i.i, align 4, !noalias !5912, !noundef !16 ; 4 uses
  %i.aa = xor i32 %i.z, 55296
  %i.ab = add i32 %i.aa, -1114112
  %i.ac = icmp ult i32 %i.ab, -1112064
  br i1 %i.ac, label %.split.i.i.i.i, label %bb.g

.split.i.i.i.i:                                   ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5912
  store i32 %i.z, ptr %i.a, align 4, !noalias !5912
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @146) #32
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.split.i.i.i.i
  unreachable

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.ad = icmp ult i32 %i.z, 1114112
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = icmp samesign ult i64 %i.x, 2305843009213693952
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = load i64, ptr %i.c, align 8, !range !27, !alias.scope !5913, !noundef !16
  %i.ag = icmp eq i64 %i.x, %i.af
  br i1 %i.ag, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish.exit.i.i, label %.noexc10

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish.exit.i.i: ; preds = %bb.g
  %i.ah = ptrtoint ptr %i.y to i64
  %i.ai = sub nuw i64 %i.k, %i.ah
  %i.aj = lshr exact i64 %i.ai, 2
  %i.ak = add nuw nsw i64 %i.aj, 1
  invoke void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.x, i64 noundef %i.ak, i64 noundef 4, i64 noundef 4)
          to label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish.exit.i.i..noexc10_crit_edge unwind label %.loopexit

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish.exit.i.i..noexc10_crit_edge: ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish.exit.i.i
  %.pre = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5913
  br label %.noexc10

.noexc10:                                         ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish.exit.i.i..noexc10_crit_edge, %bb.g
  %i.al = phi ptr [ %.pre, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish.exit.i.i..noexc10_crit_edge ], [ %i.w, %bb.g ] ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.x
  store i32 %i.z, ptr %i.am, align 4, !noalias !5913
  %i.an = add nuw nsw i64 %i.x, 1                 ; 2 uses
  store i64 %i.an, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !5913
  %i.ao = icmp eq ptr %i.y, %2
  br i1 %i.ao, label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecmEINtB2_10SpecExtendmINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NvYmINtNtB1l_7convert4FromcE4fromEE11spec_extendCs8frGy5WneL6_4fish.exit, label %.lr.ph.i.i

bb.h:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.aq, align 8
  br label %bb.i

bb.i:                                             ; preds = %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecmEINtB2_10SpecExtendmINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NvYmINtNtB1l_7convert4FromcE4fromEE11spec_extendCs8frGy5WneL6_4fish.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

.loopexit:                                        ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

.loopexit.split-lp:                               ; preds = %.split.i.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.val = load i64, ptr %i.c, align 8             ; 2 uses
  %i.ar = icmp eq i64 %.val, 0
  br i1 %i.ar, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.val7 = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !16, !noundef !16
  %i.as = shl nuw i64 %.val, 2
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7, i64 noundef %i.as, i64 noundef range(i64 1, -9223372036854775807) 4) #31, !noalias !5914
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit

_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecmEINtB2_10SpecExtendmINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NvYmINtNtB1l_7convert4FromcE4fromEE11spec_extendCs8frGy5WneL6_4fish.exit: ; preds = %.noexc10, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  br label %bb.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit: ; preds = %bb.k, %bb.j
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB7_3VecNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorEINtB5_10SpecExtendBU_INtNtB7_9into_iter8IntoIterBU_EE11spec_extendBY_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = invoke { ptr, i64 } @_RNvMs0_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorE8as_sliceB10_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
          to label %bb.b unwind label %bb.g       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.b = extractvalue { ptr, i64 } %i.a, 0
  %i.c = extractvalue { ptr, i64 } %i.a, 1        ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5921)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !5922, !noundef !16 ; 5 uses
  %i.f = load i64, ptr %0, align 8, !range !27, !alias.scope !5922, !noundef !16
  %i.g = sub i64 %i.f, %i.e
  %i.h = icmp ugt i64 %i.c, %i.g
  br i1 %i.h, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorE7reserveBI_.exit.thread.i, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorE7reserveBI_.exit.i, !prof !21

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorE7reserveBI_.exit.thread.i: ; preds = %bb.b
  invoke void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.e, i64 noundef %i.c, i64 noundef 8, i64 noundef 48)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorE7reserveBI_.exit.thread.i
  %i.i = load i64, ptr %i.d, align 8, !alias.scope !5921, !noundef !16 ; 2 uses
  %i.j = icmp ult i64 %i.i, 192153584101141163
  tail call void @llvm.assume(i1 %i.j)
  br label %bb.c

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorE7reserveBI_.exit.i: ; preds = %bb.b
  %i.k = icmp ult i64 %i.e, 192153584101141163
  tail call void @llvm.assume(i1 %i.k)
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorE7reserveBI_.exit.i, %.noexc
  %i.l = phi i64 [ %i.i, %.noexc ], [ %i.e, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorE7reserveBI_.exit.i ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !5921, !nonnull !16, !noundef !16
  %i.o = getelementptr inbounds nuw [48 x i8], ptr %i.n, i64 %i.l
  %i.p = mul nuw nsw i64 %i.c, 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.o, ptr readonly align 8 %i.b, i64 %i.p, i1 false), !noalias !5921
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorE7reserveBI_.exit.i
  %i.q = phi i64 [ %i.l, %bb.c ], [ %i.e, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorE7reserveBI_.exit.i ]
  %i.r = add i64 %i.q, %i.c
end_hunk_11
begin_hunk_12_@_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtB8_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterRB1m_ENcNtB13_8Borrowed0EE9from_iterCs8frGy5WneL6_4fish:bb.a

._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtB6_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE7reserveCs8frGy5WneL6_4fish.exit_crit_edge.i.i: ; preds = %bb.f
  %.pre.i.i = load i64, ptr %i.p, align 8, !alias.scope !6314, !noalias !6313
  %.pre = load ptr, ptr %i.o, align 8, !alias.scope !6314, !noalias !6313
  br label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecINtNtB8_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterRBZ_ENcNtBG_8Borrowed0EECs8frGy5WneL6_4fish.exit.i

bb.g:                                             ; preds = %bb.f
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %.body unwind label %bb.h, !noalias !6314

bb.h:                                             ; preds = %bb.g
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !6314
  unreachable

_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecINtNtB8_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterRBZ_ENcNtBG_8Borrowed0EECs8frGy5WneL6_4fish.exit.i: ; preds = %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtB6_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE7reserveCs8frGy5WneL6_4fish.exit_crit_edge.i.i, %bb.e
  %i.y = phi ptr [ %.pre, %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtB6_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE7reserveCs8frGy5WneL6_4fish.exit_crit_edge.i.i ], [ %.sroa.10.0.i, %bb.e ]
  %i.z = phi i64 [ %.pre.i.i, %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtB6_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE7reserveCs8frGy5WneL6_4fish.exit_crit_edge.i.i ], [ 0, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6315
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.y, ptr %i.aa, align 8, !noalias !6315
  store ptr %i.p, ptr %i.a, align 8, !noalias !6315
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.z, ptr %i.ab, align 8, !noalias !6315
  invoke void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENcNtINtNtB14_6borrow3CowB1M_E8Borrowed0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3b_8for_each4callB2B_NCINvMsk_B12_INtB12_3VecB4e_E14extend_trustedBN_E0E0ECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecINtNtB8_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterRBZ_ENcNtBG_8Borrowed0EECs8frGy5WneL6_4fish.exit.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.ac, %bb.i ], [ %lpad.thr_comm.i.i, %bb.g ]
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #33
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENcNtINtNtB1g_6borrow3CowB1Y_E8Borrowed0EECs8frGy5WneL6_4fish.exit

bb.j:                                             ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecINtNtB8_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterRBZ_ENcNtBG_8Borrowed0EECs8frGy5WneL6_4fish.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6315
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.k:                                             ; preds = %bb.l
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENcNtINtNtB1g_6borrow3CowB1Y_E8Borrowed0EECs8frGy5WneL6_4fish.exit: ; preds = %.body, %bb.l
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.ae, %bb.l ]
  resume { ptr, i32 } %.pn8

bb.l:                                             ; preds = %bb.d
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENcNtINtNtB1g_6borrow3CowB1Y_E8Borrowed0EECs8frGy5WneL6_4fish.exit unwind label %bb.k
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtB8_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3rev3RevINtNtB2H_3map3MapINtNtB6_9into_iter8IntoIterRB1m_ENCNvXs2_NtNtNtCs8frGy5WneL6_4fish8builtins6string5splitNtB4m_5SplitNtB4o_16StringSubCommand6handle0EEE9from_iterB4s_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.d, align 8, !nonnull !16, !noundef !16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val3 = load ptr, ptr %i.e, align 8, !nonnull !16, !noundef !16
  %i.f = ptrtoint ptr %.val3 to i64
  %i.g = ptrtoint ptr %.val to i64
  %i.h = sub nuw i64 %i.f, %i.g                   ; 2 uses
  %i.i = lshr exact i64 %i.h, 4                   ; 3 uses
  %i.j = mul i64 %i.i, 24                         ; 3 uses
  %or.cond.i.i = icmp ugt i64 %i.h, 6148914691236517200
  br i1 %or.cond.i.i, label %bb.d, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !6327
  %i.l = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.j, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !6327 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.4.0.ph.i = phi i64 [ 8, %bb.c ], [ 0, %bb.a ]
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.j) #35
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.b, %bb.c
  %.sroa.10.0.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.b ], [ %i.l, %bb.c ] ; 2 uses
  %.sroa.4.0.i = phi i64 [ 0, %bb.b ], [ %i.i, %bb.c ] ; 3 uses
  %i.n = icmp samesign ule i64 %i.i, %.sroa.4.0.i
  tail call void @llvm.assume(i1 %i.n)
  store i64 %.sroa.4.0.i, ptr %i.c, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  store i64 0, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6328)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6329)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6330)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6331)
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val.i.i = load ptr, ptr %i.q, align 8, !alias.scope !6332, !noalias !6333, !nonnull !16, !noundef !16
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.val5.i.i = load ptr, ptr %i.r, align 8, !alias.scope !6332, !noalias !6333, !nonnull !16, !noundef !16
  %i.s = ptrtoint ptr %.val5.i.i to i64
  %i.t = ptrtoint ptr %.val.i.i to i64
  %i.u = sub nuw i64 %i.s, %i.t
  %i.v = lshr exact i64 %i.u, 4                   ; 2 uses
  %i.w = icmp samesign ugt i64 %i.v, %.sroa.4.0.i
  br i1 %i.w, label %bb.f, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecINtNtB8_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3rev3RevINtNtB26_3map3MapINtNtB6_9into_iter8IntoIterRBZ_ENCNvXs2_NtNtNtCs8frGy5WneL6_4fish8builtins6string5splitNtB3K_5SplitNtB3M_16StringSubCommand6handle0EEEB3Q_.exit.i, !prof !21

bb.f:                                             ; preds = %bb.e
  invoke void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 0, i64 noundef %i.v, i64 noundef 8, i64 noundef 24)
          to label %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtB6_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE7reserveCs8frGy5WneL6_4fish.exit_crit_edge.i.i unwind label %bb.g, !noalias !6332

._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtB6_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE7reserveCs8frGy5WneL6_4fish.exit_crit_edge.i.i: ; preds = %bb.f
  %.pre.i.i = load i64, ptr %i.p, align 8, !alias.scope !6333, !noalias !6332
  %.pre = load ptr, ptr %i.o, align 8, !alias.scope !6333, !noalias !6332
  br label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecINtNtB8_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3rev3RevINtNtB26_3map3MapINtNtB6_9into_iter8IntoIterRBZ_ENCNvXs2_NtNtNtCs8frGy5WneL6_4fish8builtins6string5splitNtB3K_5SplitNtB3M_16StringSubCommand6handle0EEEB3Q_.exit.i

bb.g:                                             ; preds = %bb.f
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %.body unwind label %bb.h, !noalias !6333

bb.h:                                             ; preds = %bb.g
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !6333
  unreachable

_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecINtNtB8_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3rev3RevINtNtB26_3map3MapINtNtB6_9into_iter8IntoIterRBZ_ENCNvXs2_NtNtNtCs8frGy5WneL6_4fish8builtins6string5splitNtB3K_5SplitNtB3M_16StringSubCommand6handle0EEEB3Q_.exit.i: ; preds = %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtB6_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE7reserveCs8frGy5WneL6_4fish.exit_crit_edge.i.i, %bb.e
  %i.y = phi ptr [ %.pre, %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtB6_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE7reserveCs8frGy5WneL6_4fish.exit_crit_edge.i.i ], [ %.sroa.10.0.i, %bb.e ]
  %i.z = phi i64 [ %.pre.i.i, %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtB6_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE7reserveCs8frGy5WneL6_4fish.exit_crit_edge.i.i ], [ 0, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6334
  store ptr %i.p, ptr %i.a, align 8, !noalias !6335
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.z, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !6335
  %.sroa.59.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.y, ptr %.sroa.59.0..sroa_idx.i.i, align 8, !noalias !6335
  invoke void @_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3revINtB5_3RevINtNtB7_3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCNvXs2_NtNtNtCs8frGy5WneL6_4fish8builtins6string5splitNtB2U_5SplitNtB2W_16StringSubCommand6handle0EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB4p_8for_each4callINtNtB1j_6borrow3CowB21_ENCINvMsk_B1h_INtB1h_3VecB5s_E14extend_trustedBM_E0E0EB30_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecINtNtB8_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3rev3RevINtNtB26_3map3MapINtNtB6_9into_iter8IntoIterRBZ_ENCNvXs2_NtNtNtCs8frGy5WneL6_4fish8builtins6string5splitNtB3K_5SplitNtB3M_16StringSubCommand6handle0EEEB3Q_.exit.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.aa, %bb.i ], [ %lpad.thr_comm.i.i, %bb.g ]
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #33
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtBG_3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCNvXs2_NtNtNtCs8frGy5WneL6_4fish8builtins6string5splitNtB37_5SplitNtB39_16StringSubCommand6handle0EEEB3d_.exit

bb.j:                                             ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecINtNtB8_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3rev3RevINtNtB26_3map3MapINtNtB6_9into_iter8IntoIterRBZ_ENCNvXs2_NtNtNtCs8frGy5WneL6_4fish8builtins6string5splitNtB3K_5SplitNtB3M_16StringSubCommand6handle0EEEB3Q_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6334
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.k:                                             ; preds = %bb.l
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtBG_3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCNvXs2_NtNtNtCs8frGy5WneL6_4fish8builtins6string5splitNtB37_5SplitNtB39_16StringSubCommand6handle0EEEB3d_.exit: ; preds = %.body, %bb.l
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.ac, %bb.l ]
  resume { ptr, i32 } %.pn8

bb.l:                                             ; preds = %bb.d
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtBG_3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCNvXs2_NtNtNtCs8frGy5WneL6_4fish8builtins6string5splitNtB37_5SplitNtB39_16StringSubCommand6handle0EEEB3d_.exit unwind label %bb.k
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss2_0EE9from_iterB42_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.c = ptrtoint ptr %2 to i64
  %i.d = ptrtoint ptr %1 to i64
  %i.e = sub nuw i64 %i.c, %i.d                   ; 2 uses
  %i.f = lshr exact i64 %i.e, 4                   ; 3 uses
  %i.g = mul i64 %i.f, 24                         ; 3 uses
  %or.cond.i.i = icmp ugt i64 %i.e, 6148914691236517200
  br i1 %or.cond.i.i, label %bb.d, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1r_5slice4iter4IterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss2_0EEB3r_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !6342
  %i.i = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.g, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !6342 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1r_5slice4iter4IterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss2_0EEB3r_.exit.i

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.4.0.ph.i = phi i64 [ 8, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.g) #35
  unreachable

_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1r_5slice4iter4IterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss2_0EEB3r_.exit.i: ; preds = %bb.b, %bb.c
  %.sroa.10.0.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.b ], [ %i.i, %bb.c ] ; 2 uses
  %.sroa.4.0.i = phi i64 [ 0, %bb.b ], [ %i.f, %bb.c ] ; 2 uses
  %i.k = icmp samesign ule i64 %i.f, %.sroa.4.0.i
  tail call void @llvm.assume(i1 %i.k)
  store i64 %.sroa.4.0.i, ptr %i.b, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.10.0.i, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 0, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6343
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.10.0.i, ptr %i.n, align 8, !noalias !6343
  store ptr %i.m, ptr %i.a, align 8, !noalias !6343
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.o, align 8, !noalias !6343
  invoke void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss2_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB32_8for_each4callNtNtCs1xwejQucwHj_5alloc6string6StringNCINvMsk_NtB49_3vecINtB4Q_3VecB45_E14extend_trustedBN_E0E0EB2h_(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1r_5slice4iter4IterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss2_0EEB3r_.exit.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBG_6string6StringEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #33
  resume { ptr, i32 } %i.p

bb.f:                                             ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1r_5slice4iter4IterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss2_0EEB3r_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6343
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs8frGy5WneL6_4fish8complete10CompletionEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapIB2h_IB2h_INtNtNtB2p_5slice4iter4IterNtNtNtNtB17_8builtins6shared4misc11BuiltinDataENCNvB3H_17builtin_get_names0ENvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtNtB8_6borrow7ToOwned8to_ownedENvMs0_B15_B13_15from_completionEE9from_iterB17_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.c = ptrtoint ptr %2 to i64
  %i.d = ptrtoint ptr %1 to i64
  %i.e = sub nuw i64 %i.c, %i.d                   ; 2 uses
  %i.f = udiv exact i64 %i.e, 24                  ; 3 uses
  %i.g = mul i64 %i.f, 56                         ; 3 uses
  %or.cond.i.i = icmp ugt i64 %i.e, 3952873730080618200
  br i1 %or.cond.i.i, label %bb.d, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCs8frGy5WneL6_4fish8complete10CompletionE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapIB1G_IB1G_INtNtNtB1O_5slice4iter4IterNtNtNtNtBK_8builtins6shared4misc11BuiltinDataENCNvB36_17builtin_get_names0ENvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtNtB8_6borrow7ToOwned8to_ownedENvMs0_BI_BG_15from_completionEEBK_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !6350
  %i.i = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.g, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !6350 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCs8frGy5WneL6_4fish8complete10CompletionE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapIB1G_IB1G_INtNtNtB1O_5slice4iter4IterNtNtNtNtBK_8builtins6shared4misc11BuiltinDataENCNvB36_17builtin_get_names0ENvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtNtB8_6borrow7ToOwned8to_ownedENvMs0_BI_BG_15from_completionEEBK_.exit.i

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.4.0.ph.i = phi i64 [ 8, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.g) #35
  unreachable

_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCs8frGy5WneL6_4fish8complete10CompletionE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapIB1G_IB1G_INtNtNtB1O_5slice4iter4IterNtNtNtNtBK_8builtins6shared4misc11BuiltinDataENCNvB36_17builtin_get_names0ENvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtNtB8_6borrow7ToOwned8to_ownedENvMs0_BI_BG_15from_completionEEBK_.exit.i: ; preds = %bb.b, %bb.c
  %.sroa.10.0.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.b ], [ %i.i, %bb.c ] ; 2 uses
  %.sroa.4.0.i = phi i64 [ 0, %bb.b ], [ %i.f, %bb.c ] ; 2 uses
  %i.k = icmp samesign ule i64 %i.f, %.sroa.4.0.i
  tail call void @llvm.assume(i1 %i.k)
  store i64 %.sroa.4.0.i, ptr %i.b, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.10.0.i, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 0, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6351
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.10.0.i, ptr %i.n, align 8, !noalias !6351
  store ptr %i.m, ptr %i.a, align 8, !noalias !6351
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.o, align 8, !noalias !6351
  invoke void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapIBO_IBO_INtNtNtBc_5slice4iter4IterNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc11BuiltinDataENCNvB1x_17builtin_get_names0ENvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtNtCs1xwejQucwHj_5alloc6borrow7ToOwned8to_ownedENvMs0_NtB1D_8completeNtB4E_10Completion15from_completionENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB5t_8for_each4callB4T_NCINvMsk_NtB3P_3vecINtB6J_3VecB4T_E14extend_trustedBN_E0E0EB1D_(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCs8frGy5WneL6_4fish8complete10CompletionE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapIB1G_IB1G_INtNtNtB1O_5slice4iter4IterNtNtNtNtBK_8builtins6shared4misc11BuiltinDataENCNvB36_17builtin_get_names0ENvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtNtB8_6borrow7ToOwned8to_ownedENvMs0_BI_BG_15from_completionEEBK_.exit.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish8complete10CompletionEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #33
  resume { ptr, i32 } %i.p

bb.f:                                             ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCs8frGy5WneL6_4fish8complete10CompletionE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapIB1G_IB1G_INtNtNtB1O_5slice4iter4IterNtNtNtNtBK_8builtins6shared4misc11BuiltinDataENCNvB36_17builtin_get_names0ENvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtNtB8_6borrow7ToOwned8to_ownedENvMs0_BI_BG_15from_completionEEBK_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6351
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs8frGy5WneL6_4fish8complete10CompletionEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENvMs0_B15_B13_15from_completionEE9from_iterB17_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.d, align 8, !nonnull !16, !noundef !16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val3 = load ptr, ptr %i.e, align 8, !nonnull !16, !noundef !16
  %i.f = ptrtoint ptr %.val3 to i64
  %i.g = ptrtoint ptr %.val to i64
  %i.h = sub nuw i64 %i.f, %i.g                   ; 2 uses
  %i.i = udiv exact i64 %i.h, 24                  ; 3 uses
  %i.j = mul i64 %i.i, 56                         ; 3 uses
  %or.cond.i.i = icmp ugt i64 %i.h, 3952873730080618200
  br i1 %or.cond.i.i, label %bb.d, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !6360
  %i.l = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.j, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !6360 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.4.0.ph.i = phi i64 [ 8, %bb.c ], [ 0, %bb.a ]
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.j) #35
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.b, %bb.c
  %.sroa.10.0.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.b ], [ %i.l, %bb.c ] ; 2 uses
  %.sroa.4.0.i = phi i64 [ 0, %bb.b ], [ %i.i, %bb.c ] ; 3 uses
  %i.n = icmp samesign ule i64 %i.i, %.sroa.4.0.i
  tail call void @llvm.assume(i1 %i.n)
  store i64 %.sroa.4.0.i, ptr %i.c, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  store i64 0, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6361)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6362)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6363)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6364)
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val.i.i = load ptr, ptr %i.q, align 8, !alias.scope !6365, !noalias !6366, !nonnull !16, !noundef !16
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.val5.i.i = load ptr, ptr %i.r, align 8, !alias.scope !6365, !noalias !6366, !nonnull !16, !noundef !16
  %i.s = ptrtoint ptr %.val5.i.i to i64
  %i.t = ptrtoint ptr %.val.i.i to i64
  %i.u = sub nuw i64 %i.s, %i.t
  %i.v = udiv exact i64 %i.u, 24                  ; 2 uses
  %i.w = icmp samesign ugt i64 %i.v, %.sroa.4.0.i
  br i1 %i.w, label %bb.f, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCs8frGy5WneL6_4fish8complete10CompletionE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENvMs0_BI_BG_15from_completionEEBK_.exit.i, !prof !21

bb.f:                                             ; preds = %bb.e
  invoke void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 0, i64 noundef %i.v, i64 noundef 8, i64 noundef 56)
          to label %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs8frGy5WneL6_4fish8complete10CompletionE7reserveBI_.exit_crit_edge.i.i unwind label %bb.g, !noalias !6365

._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs8frGy5WneL6_4fish8complete10CompletionE7reserveBI_.exit_crit_edge.i.i: ; preds = %bb.f
  %.pre.i.i = load i64, ptr %i.p, align 8, !alias.scope !6366, !noalias !6365
  %.pre = load ptr, ptr %i.o, align 8, !alias.scope !6366, !noalias !6365
  br label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCs8frGy5WneL6_4fish8complete10CompletionE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENvMs0_BI_BG_15from_completionEEBK_.exit.i

bb.g:                                             ; preds = %bb.f
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %.body unwind label %bb.h, !noalias !6366

bb.h:                                             ; preds = %bb.g
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !6366
  unreachable

_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCs8frGy5WneL6_4fish8complete10CompletionE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENvMs0_BI_BG_15from_completionEEBK_.exit.i: ; preds = %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs8frGy5WneL6_4fish8complete10CompletionE7reserveBI_.exit_crit_edge.i.i, %bb.e
  %i.y = phi ptr [ %.pre, %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs8frGy5WneL6_4fish8complete10CompletionE7reserveBI_.exit_crit_edge.i.i ], [ %.sroa.10.0.i, %bb.e ]
  %i.z = phi i64 [ %.pre.i.i, %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs8frGy5WneL6_4fish8complete10CompletionE7reserveBI_.exit_crit_edge.i.i ], [ 0, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6367
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.y, ptr %i.aa, align 8, !noalias !6367
  store ptr %i.p, ptr %i.a, align 8, !noalias !6367
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.z, ptr %i.ab, align 8, !noalias !6367
  invoke void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENvMs0_NtCs8frGy5WneL6_4fish8completeNtB2J_10Completion15from_completionENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3N_8for_each4callB3d_NCINvMsk_B12_INtB12_3VecB3d_E14extend_trustedBN_E0E0EB2L_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCs8frGy5WneL6_4fish8complete10CompletionE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENvMs0_BI_BG_15from_completionEEBK_.exit.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.ac, %bb.i ], [ %lpad.thr_comm.i.i, %bb.g ]
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish8complete10CompletionEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #33
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENvMs0_NtCs8frGy5WneL6_4fish8completeNtB2V_10Completion15from_completionEEB2X_.exit

bb.j:                                             ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCs8frGy5WneL6_4fish8complete10CompletionE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENvMs0_BI_BG_15from_completionEEBK_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6367
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.k:                                             ; preds = %bb.l
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENvMs0_NtCs8frGy5WneL6_4fish8completeNtB2V_10Completion15from_completionEEB2X_.exit: ; preds = %.body, %bb.l
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.ae, %bb.l ]
  resume { ptr, i32 } %.pn8

bb.l:                                             ; preds = %bb.d
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENvMs0_NtCs8frGy5WneL6_4fish8completeNtB2V_10Completion15from_completionEEB2X_.exit unwind label %bb.k
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB2u_5chain5ChainINtNtB6_9into_iter8IntoIterNtNtNtCs8frGy5WneL6_4fish5input7binding11BindingNameEB3y_ENCNvMs_NtNtB45_8builtins4bindNtB52_11BuiltinBind10list_modes0EE9from_iterB45_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [64 x i8], align 8                ; 12 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = load ptr, ptr %1, align 8, !alias.scope !6388, !noalias !6389, !noundef !16
  %.not.i.i = icmp eq ptr %i.d, null
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !6388, !noalias !6389, !noundef !16
  %.not7.i.i = icmp eq ptr %i.f, null             ; 2 uses
  br i1 %.not.i.i, label %bb.c, label %bb.b

end_hunk_12
begin_hunk_13_@_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterRNtNtB17_6utfstr8Utf32StrENCNvNtNtCs8frGy5WneL6_4fish8builtins4read4reads4_0EE9from_iterB4c_:bb.a
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCNvNtNtCs8frGy5WneL6_4fish8builtins4read4reads4_0EEB2R_.exit unwind label %bb.k
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterRNtNtB17_6utfstr8Utf32StrENCNvNtNtCs8frGy5WneL6_4fish8builtins4read4reads5_0EE9from_iterB4c_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.d, align 8, !nonnull !16, !noundef !16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val3 = load ptr, ptr %i.e, align 8, !nonnull !16, !noundef !16
  %i.f = ptrtoint ptr %.val3 to i64
  %i.g = ptrtoint ptr %.val to i64
  %i.h = sub nuw i64 %i.f, %i.g                   ; 2 uses
  %i.i = lshr exact i64 %i.h, 4                   ; 3 uses
  %i.j = mul i64 %i.i, 24                         ; 3 uses
  %or.cond.i.i = icmp ugt i64 %i.h, 6148914691236517200
  br i1 %or.cond.i.i, label %bb.d, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !6441
  %i.l = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.j, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !6441 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.4.0.ph.i = phi i64 [ 8, %bb.c ], [ 0, %bb.a ]
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.j) #35
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.b, %bb.c
  %.sroa.10.0.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.b ], [ %i.l, %bb.c ] ; 2 uses
  %.sroa.4.0.i = phi i64 [ 0, %bb.b ], [ %i.i, %bb.c ] ; 3 uses
  %i.n = icmp samesign ule i64 %i.i, %.sroa.4.0.i
  tail call void @llvm.assume(i1 %i.n)
  store i64 %.sroa.4.0.i, ptr %i.c, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  store i64 0, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6442)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6443)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6444)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6445)
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val.i.i = load ptr, ptr %i.q, align 8, !alias.scope !6446, !noalias !6447, !nonnull !16, !noundef !16
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.val5.i.i = load ptr, ptr %i.r, align 8, !alias.scope !6446, !noalias !6447, !nonnull !16, !noundef !16
  %i.s = ptrtoint ptr %.val5.i.i to i64
  %i.t = ptrtoint ptr %.val.i.i to i64
  %i.u = sub nuw i64 %i.s, %i.t
  %i.v = lshr exact i64 %i.u, 4                   ; 2 uses
  %i.w = icmp samesign ugt i64 %i.v, %.sroa.4.0.i
  br i1 %i.w, label %bb.f, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterRNtNtBK_6utfstr8Utf32StrENCNvNtNtCs8frGy5WneL6_4fish8builtins4read4reads5_0EEB3A_.exit.i, !prof !21

bb.f:                                             ; preds = %bb.e
  invoke void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 0, i64 noundef %i.v, i64 noundef 8, i64 noundef 24)
          to label %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE7reserveCs8frGy5WneL6_4fish.exit_crit_edge.i.i unwind label %bb.g, !noalias !6446

._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE7reserveCs8frGy5WneL6_4fish.exit_crit_edge.i.i: ; preds = %bb.f
  %.pre.i.i = load i64, ptr %i.p, align 8, !alias.scope !6447, !noalias !6446
  %.pre = load ptr, ptr %i.o, align 8, !alias.scope !6447, !noalias !6446
  br label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterRNtNtBK_6utfstr8Utf32StrENCNvNtNtCs8frGy5WneL6_4fish8builtins4read4reads5_0EEB3A_.exit.i

bb.g:                                             ; preds = %bb.f
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %.body unwind label %bb.h, !noalias !6447

bb.h:                                             ; preds = %bb.g
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !6447
  unreachable

_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterRNtNtBK_6utfstr8Utf32StrENCNvNtNtCs8frGy5WneL6_4fish8builtins4read4reads5_0EEB3A_.exit.i: ; preds = %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE7reserveCs8frGy5WneL6_4fish.exit_crit_edge.i.i, %bb.e
  %i.y = phi ptr [ %.pre, %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE7reserveCs8frGy5WneL6_4fish.exit_crit_edge.i.i ], [ %.sroa.10.0.i, %bb.e ]
  %i.z = phi i64 [ %.pre.i.i, %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE7reserveCs8frGy5WneL6_4fish.exit_crit_edge.i.i ], [ 0, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6448
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.y, ptr %i.aa, align 8, !noalias !6448
  store ptr %i.p, ptr %i.a, align 8, !noalias !6448
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.z, ptr %i.ab, align 8, !noalias !6448
  invoke void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCNvNtNtCs8frGy5WneL6_4fish8builtins4read4reads5_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3m_8for_each4callNtNtB1Q_9utfstring11Utf32StringNCINvMsk_B12_INtB12_3VecB4p_E14extend_trustedBN_E0E0EB2F_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterRNtNtBK_6utfstr8Utf32StrENCNvNtNtCs8frGy5WneL6_4fish8builtins4read4reads5_0EEB3A_.exit.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.ac, %bb.i ], [ %lpad.thr_comm.i.i, %bb.g ]
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #33
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCNvNtNtCs8frGy5WneL6_4fish8builtins4read4reads5_0EEB2R_.exit

bb.j:                                             ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterRNtNtBK_6utfstr8Utf32StrENCNvNtNtCs8frGy5WneL6_4fish8builtins4read4reads5_0EEB3A_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6448
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.k:                                             ; preds = %bb.l
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCNvNtNtCs8frGy5WneL6_4fish8builtins4read4reads5_0EEB2R_.exit: ; preds = %.body, %bb.l
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.ae, %bb.l ]
  resume { ptr, i32 } %.pn8

bb.l:                                             ; preds = %bb.d
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCNvNtNtCs8frGy5WneL6_4fish8builtins4read4reads5_0EEB2R_.exit unwind label %bb.k
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB2y_3ops5range14RangeInclusivehENCNvMs_NtNtCs8frGy5WneL6_4fish8builtins4bindNtB3X_11BuiltinBind9key_names0EE9from_iterB41_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i24 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivehENCNvMs_NtNtCs8frGy5WneL6_4fish8builtins4bindNtB1F_11BuiltinBind9key_names0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1J_.exit:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.2.0.extract.shift = lshr i24 %1, 8
  %.sroa.2.0.extract.trunc = trunc i24 %.sroa.2.0.extract.shift to i8 ; 2 uses
  %.sroa.3.0.extract.shift = lshr i24 %1, 16
  %.sroa.3.0.extract.trunc = trunc nuw i24 %.sroa.3.0.extract.shift to i8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = trunc i24 %1 to i1
  %.not.i.i = icmp ugt i8 %.sroa.2.0.extract.trunc, %.sroa.3.0.extract.trunc
  %or.cond = select i1 %i.c, i1 true, i1 %.not.i.i ; 2 uses
  %i.d = sub nuw i8 %.sroa.3.0.extract.trunc, %.sroa.2.0.extract.trunc
  %i.e = zext i8 %i.d to i64
  %i.f = add nuw nsw i64 %i.e, 1                  ; 2 uses
  %i.g = mul nuw nsw i64 %i.f, 24
  %i.h = select i1 %or.cond, i64 0, i64 %i.g      ; 2 uses
  br i1 %or.cond, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1X_3ops5range14RangeInclusivehENCNvMs_NtNtCs8frGy5WneL6_4fish8builtins4bindNtB3m_11BuiltinBind9key_names0EEB3q_.exit.i, label %bb.a

bb.a:                                             ; preds = %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivehENCNvMs_NtNtCs8frGy5WneL6_4fish8builtins4bindNtB1F_11BuiltinBind9key_names0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1J_.exit
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !6455
  %i.i = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.h, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !6455 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.b, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1X_3ops5range14RangeInclusivehENCNvMs_NtNtCs8frGy5WneL6_4fish8builtins4bindNtB3m_11BuiltinBind9key_names0EEB3q_.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.h) #35
  unreachable

_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1X_3ops5range14RangeInclusivehENCNvMs_NtNtCs8frGy5WneL6_4fish8builtins4bindNtB3m_11BuiltinBind9key_names0EEB3q_.exit.i: ; preds = %bb.a, %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivehENCNvMs_NtNtCs8frGy5WneL6_4fish8builtins4bindNtB1F_11BuiltinBind9key_names0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1J_.exit
  %.sink17 = phi i64 [ 0, %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivehENCNvMs_NtNtCs8frGy5WneL6_4fish8builtins4bindNtB1F_11BuiltinBind9key_names0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1J_.exit ], [ %i.f, %bb.a ]
  %.sink = phi ptr [ inttoptr (i64 8 to ptr), %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivehENCNvMs_NtNtCs8frGy5WneL6_4fish8builtins4bindNtB1F_11BuiltinBind9key_names0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1J_.exit ], [ %i.i, %bb.a ] ; 2 uses
  store i64 %.sink17, ptr %i.b, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sink, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 0, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6456
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sink, ptr %i.m, align 8, !noalias !6456
  store ptr %i.l, ptr %i.a, align 8, !noalias !6456
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.n, align 8, !noalias !6456
  invoke void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range14RangeInclusivehENCNvMs_NtNtCs8frGy5WneL6_4fish8builtins4bindNtB1G_11BuiltinBind9key_names0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2M_8for_each4callNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4P_3VecB3P_E14extend_trustedBN_E0E0EB1K_(i24 %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1X_3ops5range14RangeInclusivehENCNvMs_NtNtCs8frGy5WneL6_4fish8builtins4bindNtB3m_11BuiltinBind9key_names0EEB3q_.exit.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #33
  resume { ptr, i32 } %i.o

bb.d:                                             ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1X_3ops5range14RangeInclusivehENCNvMs_NtNtCs8frGy5WneL6_4fish8builtins4bindNtB3m_11BuiltinBind9key_names0EEB3q_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6456
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB2y_5slice4iter4IterRNtNtB17_6utfstr8Utf32StrENCNvMs_NtNtCs8frGy5WneL6_4fish8builtins4bindNtB4b_11BuiltinBind3add0EE9from_iterB4f_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.c = ptrtoint ptr %2 to i64
  %i.d = ptrtoint ptr %1 to i64
  %i.e = sub nuw i64 %i.c, %i.d                   ; 2 uses
  %i.f = lshr exact i64 %i.e, 4                   ; 3 uses
  %i.g = mul i64 %i.f, 24                         ; 3 uses
  %or.cond.i.i = icmp ugt i64 %i.e, 6148914691236517200
  br i1 %or.cond.i.i, label %bb.d, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1X_5slice4iter4IterRNtNtBK_6utfstr8Utf32StrENCNvMs_NtNtCs8frGy5WneL6_4fish8builtins4bindNtB3z_11BuiltinBind3add0EEB3D_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !6463
  %i.i = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.g, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !6463 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1X_5slice4iter4IterRNtNtBK_6utfstr8Utf32StrENCNvMs_NtNtCs8frGy5WneL6_4fish8builtins4bindNtB3z_11BuiltinBind3add0EEB3D_.exit.i

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.4.0.ph.i = phi i64 [ 8, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.g) #35
  unreachable

_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1X_5slice4iter4IterRNtNtBK_6utfstr8Utf32StrENCNvMs_NtNtCs8frGy5WneL6_4fish8builtins4bindNtB3z_11BuiltinBind3add0EEB3D_.exit.i: ; preds = %bb.b, %bb.c
  %.sroa.10.0.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.b ], [ %i.i, %bb.c ] ; 2 uses
  %.sroa.4.0.i = phi i64 [ 0, %bb.b ], [ %i.f, %bb.c ] ; 2 uses
  %i.k = icmp samesign ule i64 %i.f, %.sroa.4.0.i
  tail call void @llvm.assume(i1 %i.k)
  store i64 %.sroa.4.0.i, ptr %i.b, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.10.0.i, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 0, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6464
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.10.0.i, ptr %i.n, align 8, !noalias !6464
  store ptr %i.m, ptr %i.a, align 8, !noalias !6464
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.o, align 8, !noalias !6464
  invoke void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCNvMs_NtNtCs8frGy5WneL6_4fish8builtins4bindNtB2g_11BuiltinBind3add0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3g_8for_each4callNtNtB1s_9utfstring11Utf32StringNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4X_3VecB4j_E14extend_trustedBN_E0E0EB2k_(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1X_5slice4iter4IterRNtNtBK_6utfstr8Utf32StrENCNvMs_NtNtCs8frGy5WneL6_4fish8builtins4bindNtB3z_11BuiltinBind3add0EEB3D_.exit.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #33
  resume { ptr, i32 } %i.p

bb.f:                                             ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1X_5slice4iter4IterRNtNtBK_6utfstr8Utf32StrENCNvMs_NtNtCs8frGy5WneL6_4fish8builtins4bindNtB3z_11BuiltinBind3add0EEB3D_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6464
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB2y_5slice4iter4IterRNtNtB17_6utfstr8Utf32StrENCNvNtNtCs8frGy5WneL6_4fish8builtins4emit4emit0EE9from_iterB4c_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.c = ptrtoint ptr %2 to i64
  %i.d = ptrtoint ptr %1 to i64
  %i.e = sub nuw i64 %i.c, %i.d                   ; 2 uses
  %i.f = lshr exact i64 %i.e, 4                   ; 3 uses
  %i.g = mul i64 %i.f, 24                         ; 3 uses
  %or.cond.i.i = icmp ugt i64 %i.e, 6148914691236517200
  br i1 %or.cond.i.i, label %bb.d, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1X_5slice4iter4IterRNtNtBK_6utfstr8Utf32StrENCNvNtNtCs8frGy5WneL6_4fish8builtins4emit4emit0EEB3A_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !6471
  %i.i = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.g, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !6471 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1X_5slice4iter4IterRNtNtBK_6utfstr8Utf32StrENCNvNtNtCs8frGy5WneL6_4fish8builtins4emit4emit0EEB3A_.exit.i

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.4.0.ph.i = phi i64 [ 8, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.g) #35
  unreachable

_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1X_5slice4iter4IterRNtNtBK_6utfstr8Utf32StrENCNvNtNtCs8frGy5WneL6_4fish8builtins4emit4emit0EEB3A_.exit.i: ; preds = %bb.b, %bb.c
  %.sroa.10.0.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.b ], [ %i.i, %bb.c ] ; 2 uses
  %.sroa.4.0.i = phi i64 [ 0, %bb.b ], [ %i.f, %bb.c ] ; 2 uses
  %i.k = icmp samesign ule i64 %i.f, %.sroa.4.0.i
  tail call void @llvm.assume(i1 %i.k)
  store i64 %.sroa.4.0.i, ptr %i.b, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.10.0.i, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 0, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6472
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.10.0.i, ptr %i.n, align 8, !noalias !6472
  store ptr %i.m, ptr %i.a, align 8, !noalias !6472
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.o, align 8, !noalias !6472
  invoke void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCNvNtNtCs8frGy5WneL6_4fish8builtins4emit4emit0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2V_8for_each4callNtNtB1s_9utfstring11Utf32StringNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4C_3VecB3Y_E14extend_trustedBN_E0E0EB2h_(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1X_5slice4iter4IterRNtNtBK_6utfstr8Utf32StrENCNvNtNtCs8frGy5WneL6_4fish8builtins4emit4emit0EEB3A_.exit.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #33
  resume { ptr, i32 } %i.p

bb.f:                                             ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1X_5slice4iter4IterRNtNtBK_6utfstr8Utf32StrENCNvNtNtCs8frGy5WneL6_4fish8builtins4emit4emit0EEB3A_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6472
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB2y_5slice4iter4IterRNtNtB17_6utfstr8Utf32StrENCNvNtNtCs8frGy5WneL6_4fish8builtins4test4test0EE9from_iterB4c_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.c = ptrtoint ptr %2 to i64
  %i.d = ptrtoint ptr %1 to i64
  %i.e = sub nuw i64 %i.c, %i.d                   ; 2 uses
  %i.f = lshr exact i64 %i.e, 4                   ; 3 uses
  %i.g = mul i64 %i.f, 24                         ; 3 uses
  %or.cond.i.i = icmp ugt i64 %i.e, 6148914691236517200
  br i1 %or.cond.i.i, label %bb.d, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1X_5slice4iter4IterRNtNtBK_6utfstr8Utf32StrENCNvNtNtCs8frGy5WneL6_4fish8builtins4test4test0EEB3A_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !6479
  %i.i = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.g, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !6479 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1X_5slice4iter4IterRNtNtBK_6utfstr8Utf32StrENCNvNtNtCs8frGy5WneL6_4fish8builtins4test4test0EEB3A_.exit.i

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.4.0.ph.i = phi i64 [ 8, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.g) #35
  unreachable

_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1X_5slice4iter4IterRNtNtBK_6utfstr8Utf32StrENCNvNtNtCs8frGy5WneL6_4fish8builtins4test4test0EEB3A_.exit.i: ; preds = %bb.b, %bb.c
  %.sroa.10.0.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.b ], [ %i.i, %bb.c ] ; 2 uses
  %.sroa.4.0.i = phi i64 [ 0, %bb.b ], [ %i.f, %bb.c ] ; 2 uses
  %i.k = icmp samesign ule i64 %i.f, %.sroa.4.0.i
  tail call void @llvm.assume(i1 %i.k)
  store i64 %.sroa.4.0.i, ptr %i.b, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.10.0.i, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 0, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6480
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.10.0.i, ptr %i.n, align 8, !noalias !6480
  store ptr %i.m, ptr %i.a, align 8, !noalias !6480
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.o, align 8, !noalias !6480
  invoke void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCNvNtNtCs8frGy5WneL6_4fish8builtins4test4test0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2V_8for_each4callNtNtB1s_9utfstring11Utf32StringNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4C_3VecB3Y_E14extend_trustedBN_E0E0EB2h_(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1X_5slice4iter4IterRNtNtBK_6utfstr8Utf32StrENCNvNtNtCs8frGy5WneL6_4fish8builtins4test4test0EEB3A_.exit.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #33
  resume { ptr, i32 } %i.p

bb.f:                                             ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1X_5slice4iter4IterRNtNtBK_6utfstr8Utf32StrENCNvNtNtCs8frGy5WneL6_4fish8builtins4test4test0EEB3A_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6480
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB2y_5slice4iter4IterRNtNtB17_6utfstr8Utf32StrENCNvNtNtCs8frGy5WneL6_4fish8builtins6source6source0EE9from_iterB4c_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.c = ptrtoint ptr %2 to i64
  %i.d = ptrtoint ptr %1 to i64
  %i.e = sub nuw i64 %i.c, %i.d                   ; 2 uses
  %i.f = lshr exact i64 %i.e, 4                   ; 3 uses
  %i.g = mul i64 %i.f, 24                         ; 3 uses
  %or.cond.i.i = icmp ugt i64 %i.e, 6148914691236517200
  br i1 %or.cond.i.i, label %bb.d, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1X_5slice4iter4IterRNtNtBK_6utfstr8Utf32StrENCNvNtNtCs8frGy5WneL6_4fish8builtins6source6source0EEB3A_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !6487
  %i.i = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.g, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !6487 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1X_5slice4iter4IterRNtNtBK_6utfstr8Utf32StrENCNvNtNtCs8frGy5WneL6_4fish8builtins6source6source0EEB3A_.exit.i

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.4.0.ph.i = phi i64 [ 8, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.g) #35
  unreachable

_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1X_5slice4iter4IterRNtNtBK_6utfstr8Utf32StrENCNvNtNtCs8frGy5WneL6_4fish8builtins6source6source0EEB3A_.exit.i: ; preds = %bb.b, %bb.c
  %.sroa.10.0.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.b ], [ %i.i, %bb.c ] ; 2 uses
  %.sroa.4.0.i = phi i64 [ 0, %bb.b ], [ %i.f, %bb.c ] ; 2 uses
  %i.k = icmp samesign ule i64 %i.f, %.sroa.4.0.i
  tail call void @llvm.assume(i1 %i.k)
  store i64 %.sroa.4.0.i, ptr %i.b, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.10.0.i, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 0, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6488
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.10.0.i, ptr %i.n, align 8, !noalias !6488
  store ptr %i.m, ptr %i.a, align 8, !noalias !6488
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.o, align 8, !noalias !6488
  invoke void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCNvNtNtCs8frGy5WneL6_4fish8builtins6source6source0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2Z_8for_each4callNtNtB1s_9utfstring11Utf32StringNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4G_3VecB42_E14extend_trustedBN_E0E0EB2h_(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1X_5slice4iter4IterRNtNtBK_6utfstr8Utf32StrENCNvNtNtCs8frGy5WneL6_4fish8builtins6source6source0EEB3A_.exit.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #33
  resume { ptr, i32 } %i.p

bb.f:                                             ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1X_5slice4iter4IterRNtNtBK_6utfstr8Utf32StrENCNvNtNtCs8frGy5WneL6_4fish8builtins6source6source0EEB3A_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6488
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB2y_5slice4iter7IterMutRNtNtB17_6utfstr8Utf32StrENCNvNtNtCs8frGy5WneL6_4fish8builtins11fish_indent11fish_indent0EE9from_iterB4f_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.c = ptrtoint ptr %2 to i64
  %i.d = ptrtoint ptr %1 to i64
  %i.e = sub nuw i64 %i.c, %i.d                   ; 2 uses
  %i.f = lshr exact i64 %i.e, 4                   ; 3 uses
  %i.g = mul i64 %i.f, 24                         ; 3 uses
  %or.cond.i.i = icmp ugt i64 %i.e, 6148914691236517200
  br i1 %or.cond.i.i, label %bb.d, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1X_5slice4iter7IterMutRNtNtBK_6utfstr8Utf32StrENCNvNtNtCs8frGy5WneL6_4fish8builtins11fish_indent11fish_indent0EEB3D_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !6495
  %i.i = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.g, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !6495 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1X_5slice4iter7IterMutRNtNtBK_6utfstr8Utf32StrENCNvNtNtCs8frGy5WneL6_4fish8builtins11fish_indent11fish_indent0EEB3D_.exit.i

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.4.0.ph.i = phi i64 [ 8, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.g) #35
  unreachable

_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1X_5slice4iter7IterMutRNtNtBK_6utfstr8Utf32StrENCNvNtNtCs8frGy5WneL6_4fish8builtins11fish_indent11fish_indent0EEB3D_.exit.i: ; preds = %bb.b, %bb.c
  %.sroa.10.0.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.b ], [ %i.i, %bb.c ] ; 2 uses
  %.sroa.4.0.i = phi i64 [ 0, %bb.b ], [ %i.f, %bb.c ] ; 2 uses
  %i.k = icmp samesign ule i64 %i.f, %.sroa.4.0.i
  tail call void @llvm.assume(i1 %i.k)
  store i64 %.sroa.4.0.i, ptr %i.b, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.10.0.i, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 0, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6496
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.10.0.i, ptr %i.n, align 8, !noalias !6496
  store ptr %i.m, ptr %i.a, align 8, !noalias !6496
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.o, align 8, !noalias !6496
  invoke void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter7IterMutRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCNvNtNtCs8frGy5WneL6_4fish8builtins11fish_indent11fish_indent0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3e_8for_each4callNtNtB1v_9utfstring11Utf32StringNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4V_3VecB4h_E14extend_trustedBN_E0E0EB2k_(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1X_5slice4iter7IterMutRNtNtBK_6utfstr8Utf32StrENCNvNtNtCs8frGy5WneL6_4fish8builtins11fish_indent11fish_indent0EEB3D_.exit.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #33
  resume { ptr, i32 } %i.p

bb.f:                                             ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1X_5slice4iter7IterMutRNtNtBK_6utfstr8Utf32StrENCNvNtNtCs8frGy5WneL6_4fish8builtins11fish_indent11fish_indent0EEB3D_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6496
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB2y_5slice4iter7IterMutRNtNtB17_6utfstr8Utf32StrENCNvNtNtCs8frGy5WneL6_4fish8builtins15fish_key_reader15fish_key_reader0EE9from_iterB4f_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.c = ptrtoint ptr %2 to i64
  %i.d = ptrtoint ptr %1 to i64
  %i.e = sub nuw i64 %i.c, %i.d                   ; 2 uses
  %i.f = lshr exact i64 %i.e, 4                   ; 3 uses
  %i.g = mul i64 %i.f, 24                         ; 3 uses
  %or.cond.i.i = icmp ugt i64 %i.e, 6148914691236517200
  br i1 %or.cond.i.i, label %bb.d, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1X_5slice4iter7IterMutRNtNtBK_6utfstr8Utf32StrENCNvNtNtCs8frGy5WneL6_4fish8builtins15fish_key_reader15fish_key_reader0EEB3D_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !6503
  %i.i = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.g, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !6503 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1X_5slice4iter7IterMutRNtNtBK_6utfstr8Utf32StrENCNvNtNtCs8frGy5WneL6_4fish8builtins15fish_key_reader15fish_key_reader0EEB3D_.exit.i

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.4.0.ph.i = phi i64 [ 8, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.g) #35
  unreachable

_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1X_5slice4iter7IterMutRNtNtBK_6utfstr8Utf32StrENCNvNtNtCs8frGy5WneL6_4fish8builtins15fish_key_reader15fish_key_reader0EEB3D_.exit.i: ; preds = %bb.b, %bb.c
  %.sroa.10.0.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.b ], [ %i.i, %bb.c ] ; 2 uses
  %.sroa.4.0.i = phi i64 [ 0, %bb.b ], [ %i.f, %bb.c ] ; 2 uses
  %i.k = icmp samesign ule i64 %i.f, %.sroa.4.0.i
  tail call void @llvm.assume(i1 %i.k)
  store i64 %.sroa.4.0.i, ptr %i.b, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.10.0.i, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 0, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6504
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.10.0.i, ptr %i.n, align 8, !noalias !6504
  store ptr %i.m, ptr %i.a, align 8, !noalias !6504
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.o, align 8, !noalias !6504
  invoke void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter7IterMutRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCNvNtNtCs8frGy5WneL6_4fish8builtins15fish_key_reader15fish_key_reader0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3m_8for_each4callNtNtB1v_9utfstring11Utf32StringNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB53_3VecB4p_E14extend_trustedBN_E0E0EB2k_(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1X_5slice4iter7IterMutRNtNtBK_6utfstr8Utf32StrENCNvNtNtCs8frGy5WneL6_4fish8builtins15fish_key_reader15fish_key_reader0EEB3D_.exit.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #33
  resume { ptr, i32 } %i.p

bb.f:                                             ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1X_5slice4iter7IterMutRNtNtBK_6utfstr8Utf32StrENCNvNtNtCs8frGy5WneL6_4fish8builtins15fish_key_reader15fish_key_reader0EEB3D_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6504
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6cloned6ClonedINtNtNtNtB8_11collections9vec_deque4iter4IterB13_EEE9from_iterCs8frGy5WneL6_4fish(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque4iter4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEENtNtNtB8_6traits8iterator8Iterator9size_hintCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !26, !noundef !16
  %i.h = trunc nuw i64 %i.g to i1
  br i1 %i.h, label %bb.b, label %bb.i, !prof !18

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noundef !16 ; 4 uses
  %i.k = mul i64 %i.j, 24                         ; 3 uses
  %or.cond.i.i = icmp ugt i64 %i.j, 384307168202282325
  br i1 %or.cond.i.i, label %bb.e, label %bb.c, !prof !42

bb.c:                                             ; preds = %bb.b
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !6516
  %i.m = call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.k, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !6516 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.e, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit

bb.e:                                             ; preds = %bb.d, %bb.b
  %.sroa.4.0.ph.i = phi i64 [ 8, %bb.d ], [ 0, %bb.b ]
  call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.k) #35
  unreachable

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit: ; preds = %bb.d, %bb.c
  %.sroa.10.0.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.c ], [ %i.m, %bb.d ] ; 2 uses
  %i.o = phi i64 [ 0, %bb.c ], [ %i.j, %bb.d ]    ; 3 uses
  %i.p = icmp samesign ule i64 %i.j, %i.o
  call void @llvm.assume(i1 %i.p)
  store i64 %i.o, ptr %i.e, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  store i64 0, ptr %i.r, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !6517)
  call void @llvm.experimental.noalias.scope.decl(metadata !6518)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6519
  invoke void @_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque4iter4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEENtNtNtB8_6traits8iterator8Iterator9size_hintCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.t = load i64, ptr %i.s, align 8, !range !26, !noalias !6519, !noundef !16
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.v = load i64, ptr %i.u, align 8, !noalias !6519 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6519
  %i.w = trunc nuw i64 %i.t to i1
  br i1 %i.w, label %bb.f, label %bb.h, !prof !18

bb.f:                                             ; preds = %.noexc
  %i.x = icmp ugt i64 %i.v, %i.o
  br i1 %i.x, label %bb.g, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6cloned6ClonedINtNtNtNtB8_11collections9vec_deque4iter4IterBG_EEECs8frGy5WneL6_4fish.exit.i, !prof !21

bb.g:                                             ; preds = %bb.f
  invoke void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef 0, i64 noundef %i.v, i64 noundef 8, i64 noundef 24)
          to label %.noexc2 unwind label %bb.j

.noexc2:                                          ; preds = %bb.g
  %.pre.i.i = load i64, ptr %i.r, align 8, !alias.scope !6520, !noalias !6521
  %.pre = load ptr, ptr %i.q, align 8, !alias.scope !6520, !noalias !6521
  br label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6cloned6ClonedINtNtNtNtB8_11collections9vec_deque4iter4IterBG_EEECs8frGy5WneL6_4fish.exit.i

bb.h:                                             ; preds = %.noexc
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @2, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #32
          to label %.noexc3 unwind label %bb.j

.noexc3:                                          ; preds = %bb.h
  unreachable

_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6cloned6ClonedINtNtNtNtB8_11collections9vec_deque4iter4IterBG_EEECs8frGy5WneL6_4fish.exit.i: ; preds = %.noexc2, %bb.f
  %i.y = phi ptr [ %.sroa.10.0.i, %bb.f ], [ %.pre, %.noexc2 ]
  %i.z = phi i64 [ 0, %bb.f ], [ %.pre.i.i, %.noexc2 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6522
  store ptr %i.r, ptr %i.a, align 8, !noalias !6523
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.z, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !6523
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.y, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !6523
  invoke void @_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque4iter4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB2V_8for_each4callB22_NCINvMsk_NtB1b_3vecINtB4b_3VecB22_E14extend_trustedBP_E0E0ECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.k unwind label %bb.j

bb.i:                                             ; preds = %bb.a
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @2, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @153) #32
  unreachable

bb.j:                                             ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6cloned6ClonedINtNtNtNtB8_11collections9vec_deque4iter4IterBG_EEECs8frGy5WneL6_4fish.exit.i, %bb.h, %bb.g, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #33
  resume { ptr, i32 } %i.aa

bb.k:                                             ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6cloned6ClonedINtNtNtNtB8_11collections9vec_deque4iter4IterBG_EEECs8frGy5WneL6_4fish.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6522
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtB8_3ffi5c_str7CStringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB28_5slice4iter4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENCNvNtCs8frGy5WneL6_4fish4exec21exec_external_command0EE9from_iterB4c_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.c = ptrtoint ptr %2 to i64
  %i.d = ptrtoint ptr %1 to i64
  %i.e = sub nuw i64 %i.c, %i.d                   ; 2 uses
  %i.f = udiv exact i64 %i.e, 24                  ; 3 uses
  %i.g = shl nuw i64 %i.f, 4                      ; 2 uses
  %.not.i.i = icmp ugt i64 %i.e, -4611686018427387928
  br i1 %.not.i.i, label %bb.d, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq ptr %2, %1
  br i1 %i.h, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtNtB8_3ffi5c_str7CStringE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1x_5slice4iter4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENCNvNtCs8frGy5WneL6_4fish4exec21exec_external_command0EEB3B_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !6530
  %i.i = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.g, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !6530 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtNtB8_3ffi5c_str7CStringE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1x_5slice4iter4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENCNvNtCs8frGy5WneL6_4fish4exec21exec_external_command0EEB3B_.exit.i

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.4.0.ph.i = phi i64 [ 8, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.g) #35
  unreachable

_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtNtB8_3ffi5c_str7CStringE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1x_5slice4iter4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENCNvNtCs8frGy5WneL6_4fish4exec21exec_external_command0EEB3B_.exit.i: ; preds = %bb.b, %bb.c
  %.sroa.10.0.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.b ], [ %i.i, %bb.c ] ; 2 uses
  %.sroa.4.0.i = phi i64 [ 0, %bb.b ], [ %i.f, %bb.c ] ; 2 uses
  %i.k = icmp samesign ule i64 %i.f, %.sroa.4.0.i
  tail call void @llvm.assume(i1 %i.k)
  store i64 %.sroa.4.0.i, ptr %i.b, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.10.0.i, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 0, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6531
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.10.0.i, ptr %i.n, align 8, !noalias !6531
  store ptr %i.m, ptr %i.a, align 8, !noalias !6531
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.o, align 8, !noalias !6531
  invoke void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENCNvNtCs8frGy5WneL6_4fish4exec21exec_external_command0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB38_8for_each4callNtNtNtCs1xwejQucwHj_5alloc3ffi5c_str7CStringNCINvMsk_NtB4h_3vecINtB52_3VecB4b_E14extend_trustedBN_E0E0EB2l_(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtNtB8_3ffi5c_str7CStringE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1x_5slice4iter4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENCNvNtCs8frGy5WneL6_4fish4exec21exec_external_command0EEB3B_.exit.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtBG_3ffi5c_str7CStringEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #33
  resume { ptr, i32 } %i.p

bb.f:                                             ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtNtB8_3ffi5c_str7CStringE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1x_5slice4iter4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENCNvNtCs8frGy5WneL6_4fish4exec21exec_external_command0EEB3B_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6531
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtB8_3ffi5c_str7CStringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB28_5slice4iter4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENCNvNtCs8frGy5WneL6_4fish4exec21launch_process_nofork0EE9from_iterB4c_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.c = ptrtoint ptr %2 to i64
  %i.d = ptrtoint ptr %1 to i64
  %i.e = sub nuw i64 %i.c, %i.d                   ; 2 uses
  %i.f = udiv exact i64 %i.e, 24                  ; 3 uses
  %i.g = shl nuw i64 %i.f, 4                      ; 2 uses
  %.not.i.i = icmp ugt i64 %i.e, -4611686018427387928
  br i1 %.not.i.i, label %bb.d, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq ptr %2, %1
  br i1 %i.h, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtNtB8_3ffi5c_str7CStringE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1x_5slice4iter4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENCNvNtCs8frGy5WneL6_4fish4exec21launch_process_nofork0EEB3B_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !6538
  %i.i = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.g, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !6538 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtNtB8_3ffi5c_str7CStringE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1x_5slice4iter4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENCNvNtCs8frGy5WneL6_4fish4exec21launch_process_nofork0EEB3B_.exit.i

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.4.0.ph.i = phi i64 [ 8, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.g) #35
  unreachable

_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtNtB8_3ffi5c_str7CStringE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1x_5slice4iter4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENCNvNtCs8frGy5WneL6_4fish4exec21launch_process_nofork0EEB3B_.exit.i: ; preds = %bb.b, %bb.c
  %.sroa.10.0.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.b ], [ %i.i, %bb.c ] ; 2 uses
  %.sroa.4.0.i = phi i64 [ 0, %bb.b ], [ %i.f, %bb.c ] ; 2 uses
  %i.k = icmp samesign ule i64 %i.f, %.sroa.4.0.i
  tail call void @llvm.assume(i1 %i.k)
  store i64 %.sroa.4.0.i, ptr %i.b, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.10.0.i, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 0, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6539
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.10.0.i, ptr %i.n, align 8, !noalias !6539
  store ptr %i.m, ptr %i.a, align 8, !noalias !6539
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.o, align 8, !noalias !6539
  invoke void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENCNvNtCs8frGy5WneL6_4fish4exec21launch_process_nofork0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB38_8for_each4callNtNtNtCs1xwejQucwHj_5alloc3ffi5c_str7CStringNCINvMsk_NtB4h_3vecINtB52_3VecB4b_E14extend_trustedBN_E0E0EB2l_(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtNtB8_3ffi5c_str7CStringE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1x_5slice4iter4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENCNvNtCs8frGy5WneL6_4fish4exec21launch_process_nofork0EEB3B_.exit.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtBG_3ffi5c_str7CStringEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #33
  resume { ptr, i32 } %i.p

bb.f:                                             ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtNtB8_3ffi5c_str7CStringE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1x_5slice4iter4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENCNvNtCs8frGy5WneL6_4fish4exec21launch_process_nofork0EEB3B_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6539
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB2s_5slice4iter4IterNtNtB18_9utfstring11Utf32StringENCNCNvNtCs8frGy5WneL6_4fish4exec25get_performer_for_builtin0s0_0EE9from_iterB4c_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.c = ptrtoint ptr %2 to i64
  %i.d = ptrtoint ptr %1 to i64
  %i.e = sub nuw i64 %i.c, %i.d                   ; 2 uses
  %i.f = udiv exact i64 %i.e, 24                  ; 3 uses
  %i.g = shl nuw i64 %i.f, 4                      ; 2 uses
  %.not.i.i = icmp ugt i64 %i.e, -4611686018427387928
  br i1 %.not.i.i, label %bb.d, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq ptr %2, %1
  br i1 %i.h, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1R_5slice4iter4IterNtNtBL_9utfstring11Utf32StringENCNCNvNtCs8frGy5WneL6_4fish4exec25get_performer_for_builtin0s0_0EEB3A_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !6548
  %i.i = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.g, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !6548 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1R_5slice4iter4IterNtNtBL_9utfstring11Utf32StringENCNCNvNtCs8frGy5WneL6_4fish4exec25get_performer_for_builtin0s0_0EEB3A_.exit.i

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.4.0.ph.i = phi i64 [ 8, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.g) #35
  unreachable

_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1R_5slice4iter4IterNtNtBL_9utfstring11Utf32StringENCNCNvNtCs8frGy5WneL6_4fish4exec25get_performer_for_builtin0s0_0EEB3A_.exit.i: ; preds = %bb.b, %bb.c
  %.sroa.10.0.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.b ], [ %i.i, %bb.c ] ; 2 uses
  %.sroa.4.0.i = phi i64 [ 0, %bb.b ], [ %i.f, %bb.c ] ; 2 uses
  %i.k = icmp samesign ule i64 %i.f, %.sroa.4.0.i
  tail call void @llvm.assume(i1 %i.k)
  store i64 %.sroa.4.0.i, ptr %i.b, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 0, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6549
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.10.0.i, ptr %i.n, align 8, !noalias !6549
  store ptr %i.m, ptr %i.a, align 8, !noalias !6549
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.o, align 8, !noalias !6549
  invoke void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENCNCNvNtCs8frGy5WneL6_4fish4exec25get_performer_for_builtin0s0_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3i_8for_each4callRNtNtB1r_6utfstr8Utf32StrNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4T_3VecB4l_E14extend_trustedBN_E0E0EB2n_(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1R_5slice4iter4IterNtNtBL_9utfstring11Utf32StringENCNCNvNtCs8frGy5WneL6_4fish4exec25get_performer_for_builtin0s0_0EEB3A_.exit.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  %.val = load i64, ptr %i.b, align 8             ; 2 uses
  %i.q = icmp eq i64 %.val, 0
  br i1 %i.q, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val2 = load ptr, ptr %i.l, align 8, !nonnull !16, !noundef !16
  %i.r = shl nuw i64 %.val, 4
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2, i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !6550
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit

bb.g:                                             ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1R_5slice4iter4IterNtNtBL_9utfstring11Utf32StringENCNCNvNtCs8frGy5WneL6_4fish4exec25get_performer_for_builtin0s0_0EEB3A_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6549
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.p
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB2s_5slice4iter4IterNtNtB18_9utfstring11Utf32StringENCNvMNtCs8frGy5WneL6_4fish15parse_executionNtB49_16ExecutionContext22run_function_statement0EE9from_iterB4b_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.c = ptrtoint ptr %2 to i64
  %i.d = ptrtoint ptr %1 to i64
  %i.e = sub nuw i64 %i.c, %i.d                   ; 2 uses
  %i.f = udiv exact i64 %i.e, 24                  ; 3 uses
  %i.g = shl nuw i64 %i.f, 4                      ; 2 uses
  %.not.i.i = icmp ugt i64 %i.e, -4611686018427387928
  br i1 %.not.i.i, label %bb.d, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq ptr %2, %1
  br i1 %i.h, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1R_5slice4iter4IterNtNtBL_9utfstring11Utf32StringENCNvMNtCs8frGy5WneL6_4fish15parse_executionNtB3x_16ExecutionContext22run_function_statement0EEB3z_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !6559
  %i.i = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.g, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !6559 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1R_5slice4iter4IterNtNtBL_9utfstring11Utf32StringENCNvMNtCs8frGy5WneL6_4fish15parse_executionNtB3x_16ExecutionContext22run_function_statement0EEB3z_.exit.i

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.4.0.ph.i = phi i64 [ 8, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.g) #35
  unreachable

_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1R_5slice4iter4IterNtNtBL_9utfstring11Utf32StringENCNvMNtCs8frGy5WneL6_4fish15parse_executionNtB3x_16ExecutionContext22run_function_statement0EEB3z_.exit.i: ; preds = %bb.b, %bb.c
  %.sroa.10.0.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.b ], [ %i.i, %bb.c ] ; 2 uses
  %.sroa.4.0.i = phi i64 [ 0, %bb.b ], [ %i.f, %bb.c ] ; 2 uses
  %i.k = icmp samesign ule i64 %i.f, %.sroa.4.0.i
  tail call void @llvm.assume(i1 %i.k)
  store i64 %.sroa.4.0.i, ptr %i.b, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 0, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6560
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.10.0.i, ptr %i.n, align 8, !noalias !6560
  store ptr %i.m, ptr %i.a, align 8, !noalias !6560
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.o, align 8, !noalias !6560
  invoke void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENCNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2k_16ExecutionContext22run_function_statement0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3K_8for_each4callRNtNtB1r_6utfstr8Utf32StrNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5l_3VecB4N_E14extend_trustedBN_E0E0EB2m_(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1R_5slice4iter4IterNtNtBL_9utfstring11Utf32StringENCNvMNtCs8frGy5WneL6_4fish15parse_executionNtB3x_16ExecutionContext22run_function_statement0EEB3z_.exit.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  %.val = load i64, ptr %i.b, align 8             ; 2 uses
  %i.q = icmp eq i64 %.val, 0
  br i1 %i.q, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val2 = load ptr, ptr %i.l, align 8, !nonnull !16, !noundef !16
  %i.r = shl nuw i64 %.val, 4
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2, i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !6561
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit

bb.g:                                             ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1R_5slice4iter4IterNtNtBL_9utfstring11Utf32StringENCNvMNtCs8frGy5WneL6_4fish15parse_executionNtB3x_16ExecutionContext22run_function_statement0EEB3z_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6560
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.p
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB2s_5slice4iter4IterNtNtB18_9utfstring11Utf32StringENCNvNtNtCs8frGy5WneL6_4fish8builtins11fish_indent9do_indent0EE9from_iterB4c_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.c = ptrtoint ptr %2 to i64
  %i.d = ptrtoint ptr %1 to i64
  %i.e = sub nuw i64 %i.c, %i.d                   ; 2 uses
  %i.f = udiv exact i64 %i.e, 24                  ; 3 uses
  %i.g = shl nuw i64 %i.f, 4                      ; 2 uses
  %.not.i.i = icmp ugt i64 %i.e, -4611686018427387928
  br i1 %.not.i.i, label %bb.d, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq ptr %2, %1
  br i1 %i.h, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1R_5slice4iter4IterNtNtBL_9utfstring11Utf32StringENCNvNtNtCs8frGy5WneL6_4fish8builtins11fish_indent9do_indent0EEB3A_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !6570
  %i.i = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.g, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !6570 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1R_5slice4iter4IterNtNtBL_9utfstring11Utf32StringENCNvNtNtCs8frGy5WneL6_4fish8builtins11fish_indent9do_indent0EEB3A_.exit.i

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.4.0.ph.i = phi i64 [ 8, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.g) #35
  unreachable

_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1R_5slice4iter4IterNtNtBL_9utfstring11Utf32StringENCNvNtNtCs8frGy5WneL6_4fish8builtins11fish_indent9do_indent0EEB3A_.exit.i: ; preds = %bb.b, %bb.c
  %.sroa.10.0.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.b ], [ %i.i, %bb.c ] ; 2 uses
  %.sroa.4.0.i = phi i64 [ 0, %bb.b ], [ %i.f, %bb.c ] ; 2 uses
  %i.k = icmp samesign ule i64 %i.f, %.sroa.4.0.i
  tail call void @llvm.assume(i1 %i.k)
  store i64 %.sroa.4.0.i, ptr %i.b, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 0, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6571
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.10.0.i, ptr %i.n, align 8, !noalias !6571
  store ptr %i.m, ptr %i.a, align 8, !noalias !6571
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.o, align 8, !noalias !6571
  invoke void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENCNvNtNtCs8frGy5WneL6_4fish8builtins11fish_indent9do_indent0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3e_8for_each4callRNtNtB1r_6utfstr8Utf32StrNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4P_3VecB4h_E14extend_trustedBN_E0E0EB2n_(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1R_5slice4iter4IterNtNtBL_9utfstring11Utf32StringENCNvNtNtCs8frGy5WneL6_4fish8builtins11fish_indent9do_indent0EEB3A_.exit.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  %.val = load i64, ptr %i.b, align 8             ; 2 uses
  %i.q = icmp eq i64 %.val, 0
  br i1 %i.q, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val2 = load ptr, ptr %i.l, align 8, !nonnull !16, !noundef !16
  %i.r = shl nuw i64 %.val, 4
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2, i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !6572
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit

bb.g:                                             ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1R_5slice4iter4IterNtNtBL_9utfstring11Utf32StringENCNvNtNtCs8frGy5WneL6_4fish8builtins11fish_indent9do_indent0EEB3A_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6571
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.p
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB2s_5slice4iter4IterNtNtB18_9utfstring11Utf32StringENCNvNtNtCs8frGy5WneL6_4fish8builtins15fish_key_reader11parse_flags0EE9from_iterB4c_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.c = ptrtoint ptr %2 to i64
  %i.d = ptrtoint ptr %1 to i64
  %i.e = sub nuw i64 %i.c, %i.d                   ; 2 uses
  %i.f = udiv exact i64 %i.e, 24                  ; 3 uses
  %i.g = shl nuw i64 %i.f, 4                      ; 2 uses
  %.not.i.i = icmp ugt i64 %i.e, -4611686018427387928
  br i1 %.not.i.i, label %bb.d, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq ptr %2, %1
  br i1 %i.h, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1R_5slice4iter4IterNtNtBL_9utfstring11Utf32StringENCNvNtNtCs8frGy5WneL6_4fish8builtins15fish_key_reader11parse_flags0EEB3A_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !6581
  %i.i = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.g, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !6581 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1R_5slice4iter4IterNtNtBL_9utfstring11Utf32StringENCNvNtNtCs8frGy5WneL6_4fish8builtins15fish_key_reader11parse_flags0EEB3A_.exit.i

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.4.0.ph.i = phi i64 [ 8, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.g) #35
  unreachable

_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1R_5slice4iter4IterNtNtBL_9utfstring11Utf32StringENCNvNtNtCs8frGy5WneL6_4fish8builtins15fish_key_reader11parse_flags0EEB3A_.exit.i: ; preds = %bb.b, %bb.c
  %.sroa.10.0.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.b ], [ %i.i, %bb.c ] ; 2 uses
  %.sroa.4.0.i = phi i64 [ 0, %bb.b ], [ %i.f, %bb.c ] ; 2 uses
  %i.k = icmp samesign ule i64 %i.f, %.sroa.4.0.i
  tail call void @llvm.assume(i1 %i.k)
  store i64 %.sroa.4.0.i, ptr %i.b, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 0, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6582
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.10.0.i, ptr %i.n, align 8, !noalias !6582
  store ptr %i.m, ptr %i.a, align 8, !noalias !6582
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.o, align 8, !noalias !6582
  invoke void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENCNvNtNtCs8frGy5WneL6_4fish8builtins15fish_key_reader11parse_flags0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3l_8for_each4callRNtNtB1r_6utfstr8Utf32StrNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4W_3VecB4o_E14extend_trustedBN_E0E0EB2n_(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1R_5slice4iter4IterNtNtBL_9utfstring11Utf32StringENCNvNtNtCs8frGy5WneL6_4fish8builtins15fish_key_reader11parse_flags0EEB3A_.exit.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  %.val = load i64, ptr %i.b, align 8             ; 2 uses
  %i.q = icmp eq i64 %.val, 0
  br i1 %i.q, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val2 = load ptr, ptr %i.l, align 8, !nonnull !16, !noundef !16
  %i.r = shl nuw i64 %.val, 4
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2, i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !6583
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit

bb.g:                                             ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1R_5slice4iter4IterNtNtBL_9utfstring11Utf32StringENCNvNtNtCs8frGy5WneL6_4fish8builtins15fish_key_reader11parse_flags0EEB3A_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6582
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.p
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB2s_5slice4iter4IterNtNtB18_9utfstring11Utf32StringENCNvNtNtCs8frGy5WneL6_4fish9highlight11file_tester20is_potential_cd_path0EE9from_iterB4c_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.c = ptrtoint ptr %2 to i64
  %i.d = ptrtoint ptr %1 to i64
  %i.e = sub nuw i64 %i.c, %i.d                   ; 2 uses
  %i.f = udiv exact i64 %i.e, 24                  ; 3 uses
  %i.g = shl nuw i64 %i.f, 4                      ; 2 uses
  %.not.i.i = icmp ugt i64 %i.e, -4611686018427387928
  br i1 %.not.i.i, label %bb.d, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq ptr %2, %1
  br i1 %i.h, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1R_5slice4iter4IterNtNtBL_9utfstring11Utf32StringENCNvNtNtCs8frGy5WneL6_4fish9highlight11file_tester20is_potential_cd_path0EEB3A_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !6592
  %i.i = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.g, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !6592 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1R_5slice4iter4IterNtNtBL_9utfstring11Utf32StringENCNvNtNtCs8frGy5WneL6_4fish9highlight11file_tester20is_potential_cd_path0EEB3A_.exit.i

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.4.0.ph.i = phi i64 [ 8, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.g) #35
  unreachable

_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1R_5slice4iter4IterNtNtBL_9utfstring11Utf32StringENCNvNtNtCs8frGy5WneL6_4fish9highlight11file_tester20is_potential_cd_path0EEB3A_.exit.i: ; preds = %bb.b, %bb.c
  %.sroa.10.0.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.b ], [ %i.i, %bb.c ] ; 2 uses
  %.sroa.4.0.i = phi i64 [ 0, %bb.b ], [ %i.f, %bb.c ] ; 2 uses
  %i.k = icmp samesign ule i64 %i.f, %.sroa.4.0.i
  tail call void @llvm.assume(i1 %i.k)
  store i64 %.sroa.4.0.i, ptr %i.b, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 0, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6593
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.10.0.i, ptr %i.n, align 8, !noalias !6593
  store ptr %i.m, ptr %i.a, align 8, !noalias !6593
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.o, align 8, !noalias !6593
  invoke void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENCNvNtNtCs8frGy5WneL6_4fish9highlight11file_tester20is_potential_cd_path0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3r_8for_each4callRNtNtB1r_6utfstr8Utf32StrNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB52_3VecB4u_E14extend_trustedBN_E0E0EB2n_(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1R_5slice4iter4IterNtNtBL_9utfstring11Utf32StringENCNvNtNtCs8frGy5WneL6_4fish9highlight11file_tester20is_potential_cd_path0EEB3A_.exit.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  %.val = load i64, ptr %i.b, align 8             ; 2 uses
  %i.q = icmp eq i64 %.val, 0
  br i1 %i.q, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val2 = load ptr, ptr %i.l, align 8, !nonnull !16, !noundef !16
  %i.r = shl nuw i64 %.val, 4
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2, i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !6594
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit

bb.g:                                             ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1R_5slice4iter4IterNtNtBL_9utfstring11Utf32StringENCNvNtNtCs8frGy5WneL6_4fish9highlight11file_tester20is_potential_cd_path0EEB3A_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6593
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.p
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainINtNtB2o_3map3MapINtNtNtB2s_5slice4iter4IterTcB13_EENCNvMs_NtNtCs8frGy5WneL6_4fish8builtins4bindNtB48_11BuiltinBind9key_namess_0EIB3c_IB3t_NtNtB18_9utfstring11Utf32StringENCB43_s0_0EEE9from_iterB4c_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = load ptr, ptr %1, align 8, !alias.scope !6614, !noalias !6615, !noundef !16 ; 4 uses
  %.not.i = icmp eq ptr %i.d, null                ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !6614, !noalias !6615, !noundef !16 ; 6 uses
  %.not7.i = icmp eq ptr %i.f, null               ; 5 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val14.i = load ptr, ptr %i.g, align 8, !alias.scope !6614, !noalias !6615, !nonnull !16, !noundef !16
  %i.h = ptrtoint ptr %.val14.i to i64
  %i.i = ptrtoint ptr %i.d to i64
  %i.j = sub nuw i64 %i.h, %i.i
  %i.k = udiv exact i64 %i.j, 24                  ; 2 uses
  br i1 %.not7.i, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterTcRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENCNvMs_NtNtCs8frGy5WneL6_4fish8builtins4bindNtB2B_11BuiltinBind9key_namess_0EIB10_IB1g_NtNtB1M_9utfstring11Utf32StringENCB2w_s0_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB2F_.exit, label %bb.e

bb.c:                                             ; preds = %bb.a
  br i1 %.not7.i, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterTcRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENCNvMs_NtNtCs8frGy5WneL6_4fish8builtins4bindNtB2B_11BuiltinBind9key_namess_0EIB10_IB1g_NtNtB1M_9utfstring11Utf32StringENCB2w_s0_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB2F_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val12.i = load ptr, ptr %i.l, align 8, !alias.scope !6614, !noalias !6615, !nonnull !16, !noundef !16
  %i.m = ptrtoint ptr %.val12.i to i64
  %i.n = ptrtoint ptr %i.f to i64
  %i.o = sub nuw i64 %i.m, %i.n
  %i.p = udiv exact i64 %i.o, 24
  br label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterTcRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENCNvMs_NtNtCs8frGy5WneL6_4fish8builtins4bindNtB2B_11BuiltinBind9key_namess_0EIB10_IB1g_NtNtB1M_9utfstring11Utf32StringENCB2w_s0_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB2F_.exit

bb.e:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val10.i = load ptr, ptr %i.q, align 8, !alias.scope !6614, !noalias !6615, !nonnull !16, !noundef !16
  %i.r = ptrtoint ptr %.val10.i to i64
  %i.s = ptrtoint ptr %i.f to i64
  %i.t = sub nuw i64 %i.r, %i.s
  %i.u = udiv exact i64 %i.t, 24
  %i.v = add nuw nsw i64 %i.u, %i.k
  br label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterTcRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENCNvMs_NtNtCs8frGy5WneL6_4fish8builtins4bindNtB2B_11BuiltinBind9key_namess_0EIB10_IB1g_NtNtB1M_9utfstring11Utf32StringENCB2w_s0_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB2F_.exit

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterTcRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENCNvMs_NtNtCs8frGy5WneL6_4fish8builtins4bindNtB2B_11BuiltinBind9key_namess_0EIB10_IB1g_NtNtB1M_9utfstring11Utf32StringENCB2w_s0_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB2F_.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.sink24.i = phi i64 [ %i.v, %bb.e ], [ %i.p, %bb.d ], [ %i.k, %bb.b ], [ 0, %bb.c ] ; 4 uses
  %i.w = shl i64 %.sink24.i, 4                    ; 4 uses
  %i.x = icmp samesign ugt i64 %.sink24.i, 1152921504606846975
  %.not.i.i = icmp ugt i64 %i.w, 9223372036854775800
  %or.cond.i.i = or i1 %i.x, %.not.i.i
  br i1 %or.cond.i.i, label %bb.h, label %bb.f, !prof !42

bb.f:                                             ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterTcRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENCNvMs_NtNtCs8frGy5WneL6_4fish8builtins4bindNtB2B_11BuiltinBind9key_namess_0EIB10_IB1g_NtNtB1M_9utfstring11Utf32StringENCB2w_s0_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB2F_.exit
  %i.y = icmp eq i64 %i.w, 0
  br i1 %i.y, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !6616
  %i.z = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.w, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !6616 ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.h, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit

bb.h:                                             ; preds = %bb.g, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterTcRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENCNvMs_NtNtCs8frGy5WneL6_4fish8builtins4bindNtB2B_11BuiltinBind9key_namess_0EIB10_IB1g_NtNtB1M_9utfstring11Utf32StringENCB2w_s0_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB2F_.exit
  %.sroa.4.0.ph.i = phi i64 [ 8, %bb.g ], [ 0, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterTcRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENCNvMs_NtNtCs8frGy5WneL6_4fish8builtins4bindNtB2B_11BuiltinBind9key_namess_0EIB10_IB1g_NtNtB1M_9utfstring11Utf32StringENCB2w_s0_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB2F_.exit ]
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.w) #35
  unreachable

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit: ; preds = %bb.g, %bb.f
  %i.ab = phi ptr [ inttoptr (i64 8 to ptr), %bb.f ], [ %i.z, %bb.g ] ; 2 uses
  %.sroa.4.0.i = phi i64 [ 0, %bb.f ], [ %.sink24.i, %bb.g ] ; 3 uses
  %i.ac = icmp samesign ule i64 %.sink24.i, %.sroa.4.0.i
  tail call void @llvm.assume(i1 %i.ac)
  store i64 %.sroa.4.0.i, ptr %i.c, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store ptr %i.ab, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  store i64 0, ptr %i.ae, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6617)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6618)
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  %i.af = ptrtoint ptr %.sroa.4.0.copyload to i64
  %i.ag = ptrtoint ptr %i.d to i64
  %i.ah = sub nuw i64 %i.af, %i.ag
  %i.ai = udiv exact i64 %i.ah, 24                ; 2 uses
  br i1 %.not7.i, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterTcRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENCNvMs_NtNtCs8frGy5WneL6_4fish8builtins4bindNtB2B_11BuiltinBind9key_namess_0EIB10_IB1g_NtNtB1M_9utfstring11Utf32StringENCB2w_s0_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB2F_.exit.i.i, label %bb.l

bb.j:                                             ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit
  br i1 %.not7.i, label %.thread, label %bb.k

.thread:                                          ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6619
  br label %bb.q

bb.k:                                             ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload) ]
  %i.aj = ptrtoint ptr %.sroa.7.0.copyload to i64
  %i.ak = ptrtoint ptr %i.f to i64
  %i.al = sub nuw i64 %i.aj, %i.ak
  %i.am = udiv exact i64 %i.al, 24
  br label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterTcRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENCNvMs_NtNtCs8frGy5WneL6_4fish8builtins4bindNtB2B_11BuiltinBind9key_namess_0EIB10_IB1g_NtNtB1M_9utfstring11Utf32StringENCB2w_s0_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB2F_.exit.i.i

bb.l:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload) ]
  %i.an = ptrtoint ptr %.sroa.7.0.copyload to i64
  %i.ao = ptrtoint ptr %i.f to i64
  %i.ap = sub nuw i64 %i.an, %i.ao
  %i.aq = udiv exact i64 %i.ap, 24
  %i.ar = add nuw nsw i64 %i.aq, %i.ai
  br label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterTcRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENCNvMs_NtNtCs8frGy5WneL6_4fish8builtins4bindNtB2B_11BuiltinBind9key_namess_0EIB10_IB1g_NtNtB1M_9utfstring11Utf32StringENCB2w_s0_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB2F_.exit.i.i

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterTcRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENCNvMs_NtNtCs8frGy5WneL6_4fish8builtins4bindNtB2B_11BuiltinBind9key_namess_0EIB10_IB1g_NtNtB1M_9utfstring11Utf32StringENCB2w_s0_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB2F_.exit.i.i: ; preds = %bb.l, %bb.k, %bb.i
  %.sink24.i.i.i = phi i64 [ %i.ar, %bb.l ], [ %i.am, %bb.k ], [ %i.ai, %bb.i ] ; 2 uses
  %i.as = icmp samesign ugt i64 %.sink24.i.i.i, %.sroa.4.0.i
  br i1 %i.as, label %bb.m, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE7reserveCs8frGy5WneL6_4fish.exit.i.i, !prof !47

bb.m:                                             ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterTcRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENCNvMs_NtNtCs8frGy5WneL6_4fish8builtins4bindNtB2B_11BuiltinBind9key_namess_0EIB10_IB1g_NtNtB1M_9utfstring11Utf32StringENCB2w_s0_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB2F_.exit.i.i
  invoke void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 0, i64 noundef %.sink24.i.i.i, i64 noundef 8, i64 noundef 16)
          to label %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE7reserveCs8frGy5WneL6_4fish.exit.i.i_crit_edge unwind label %bb.s

._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE7reserveCs8frGy5WneL6_4fish.exit.i.i_crit_edge: ; preds = %bb.m
  %.pre = load ptr, ptr %i.ad, align 8, !alias.scope !6620, !noalias !6621
  %.pre10 = load i64, ptr %i.ae, align 8, !alias.scope !6620, !noalias !6621
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE7reserveCs8frGy5WneL6_4fish.exit.i.i

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE7reserveCs8frGy5WneL6_4fish.exit.i.i: ; preds = %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE7reserveCs8frGy5WneL6_4fish.exit.i.i_crit_edge, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterTcRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENCNvMs_NtNtCs8frGy5WneL6_4fish8builtins4bindNtB2B_11BuiltinBind9key_namess_0EIB10_IB1g_NtNtB1M_9utfstring11Utf32StringENCB2w_s0_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB2F_.exit.i.i
  %i.at = phi i64 [ %.pre10, %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE7reserveCs8frGy5WneL6_4fish.exit.i.i_crit_edge ], [ 0, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterTcRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENCNvMs_NtNtCs8frGy5WneL6_4fish8builtins4bindNtB2B_11BuiltinBind9key_namess_0EIB10_IB1g_NtNtB1M_9utfstring11Utf32StringENCB2w_s0_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB2F_.exit.i.i ]
  %i.au = phi ptr [ %.pre, %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE7reserveCs8frGy5WneL6_4fish.exit.i.i_crit_edge ], [ %i.ab, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterTcRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENCNvMs_NtNtCs8frGy5WneL6_4fish8builtins4bindNtB2B_11BuiltinBind9key_namess_0EIB10_IB1g_NtNtB1M_9utfstring11Utf32StringENCB2w_s0_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB2F_.exit.i.i ]
end_hunk_13
begin_hunk_14_@_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecjEINtB4_18SpecFromIterNestedjINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEE9from_iterCs8frGy5WneL6_4fish:bb.a
  %i.b = icmp ugt i64 %spec.select.i, 2305843009213693951
  %.not.i.i = icmp ugt i64 %i.a, 9223372036854775800
  %or.cond.i.i = or i1 %i.b, %.not.i.i
  br i1 %or.cond.i.i, label %bb.d, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %i.a, 0
  br i1 %i.c, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecjE7reserveCs8frGy5WneL6_4fish.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !6725
  %i.d = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.a, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !6725 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecjE7reserveCs8frGy5WneL6_4fish.exit.i.i

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.4.0.ph.i = phi i64 [ 8, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.a) #35
  unreachable

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecjE7reserveCs8frGy5WneL6_4fish.exit.i.i: ; preds = %bb.c, %bb.b
  %.sroa.10.0.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.b ], [ %i.d, %bb.c ] ; 3 uses
  %.sroa.4.0.i = phi i64 [ 0, %bb.b ], [ %spec.select.i, %bb.c ] ; 2 uses
  %i.f = icmp samesign ule i64 %spec.select.i, %.sroa.4.0.i
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp ult i64 %1, %2
  br i1 %i.g, label %.lr.ph.i.i.i.i.preheader, label %.loopexit

.lr.ph.i.i.i.i.preheader:                         ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecjE7reserveCs8frGy5WneL6_4fish.exit.i.i
  %i.h = sub nuw i64 %2, %1                       ; 3 uses
  %min.iters.check = icmp ult i64 %i.h, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader10, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.h, -4                       ; 5 uses
  %i.i = add i64 %1, %n.vec
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %1, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %induction = add nuw <2 x i64> %broadcast.splat, <i64 0, i64 1>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %.sroa.10.0.i, i64 %index ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store <2 x i64> %vec.ind, ptr %i.j, align 8, !noalias !6726
  store <2 x i64> %step.add, ptr %i.k, align 8, !noalias !6726
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !6723

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i.i.i.i.preheader10

.lr.ph.i.i.i.i.preheader10:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  %.sroa.0.010.i.i.i.i.ph = phi i64 [ %1, %.lr.ph.i.i.i.i.preheader ], [ %i.i, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader10, %.lr.ph.i.i.i.i
  %i.m = phi i64 [ %i.p, %.lr.ph.i.i.i.i ], [ %.ph, %.lr.ph.i.i.i.i.preheader10 ] ; 2 uses
  %.sroa.0.010.i.i.i.i = phi i64 [ %i.n, %.lr.ph.i.i.i.i ], [ %.sroa.0.010.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader10 ] ; 2 uses
  %i.n = add nuw i64 %.sroa.0.010.i.i.i.i, 1      ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %.sroa.10.0.i, i64 %i.m
  store i64 %.sroa.0.010.i.i.i.i, ptr %i.o, align 8, !noalias !6726
  %i.p = add nuw i64 %i.m, 1                      ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.n, %2
  br i1 %exitcond.not.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !6724

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i, %middle.block, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecjE7reserveCs8frGy5WneL6_4fish.exit.i.i
  %.val6.i.i.i.i = phi i64 [ 0, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecjE7reserveCs8frGy5WneL6_4fish.exit.i.i ], [ %n.vec, %middle.block ], [ %i.p, %.lr.ph.i.i.i.i ]
  store i64 %.sroa.4.0.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.0.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val6.i.i.i.i, ptr %.sroa.5.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecjEINtB4_18SpecFromIterNestedjINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3rev3RevINtNtNtB1F_3ops5range5RangejEEE9from_iterCs8frGy5WneL6_4fish(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %2, i64 %1) ; 4 uses
  %i.c = shl i64 %spec.select.i.i, 3              ; 4 uses
  %i.d = icmp ugt i64 %spec.select.i.i, 2305843009213693951
  %.not.i.i = icmp ugt i64 %i.c, 9223372036854775800
  %or.cond.i.i = or i1 %i.d, %.not.i.i
  br i1 %or.cond.i.i, label %bb.d, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.c, 0
  br i1 %i.e, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecjE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3rev3RevINtNtNtB17_3ops5range5RangejEEECs8frGy5WneL6_4fish.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !6737
  %i.f = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !6737 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecjE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3rev3RevINtNtNtB17_3ops5range5RangejEEECs8frGy5WneL6_4fish.exit.i

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.4.0.ph.i = phi i64 [ 8, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.c) #35
  unreachable

_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecjE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3rev3RevINtNtNtB17_3ops5range5RangejEEECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.c, %bb.b
  %.sroa.10.0.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.b ], [ %i.f, %bb.c ] ; 2 uses
  %.sroa.4.0.i = phi i64 [ 0, %bb.b ], [ %spec.select.i.i, %bb.c ] ; 2 uses
  %i.h = icmp samesign ule i64 %spec.select.i.i, %.sroa.4.0.i
  tail call void @llvm.assume(i1 %i.h)
  store i64 %.sroa.4.0.i, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 0, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6738
  store ptr %i.j, ptr %i.a, align 8, !noalias !6739
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !6739
  %.sroa.56.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.10.0.i, ptr %.sroa.56.0..sroa_idx.i.i, align 8, !noalias !6739
  invoke void @_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3revINtB5_3RevINtNtNtBb_3ops5range5RangejEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB1p_8for_each4calljNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB2C_3VecjE14extend_trustedBM_E0E0ECs8frGy5WneL6_4fish(i64 noundef %1, i64 noundef %2, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecjE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3rev3RevINtNtNtB17_3ops5range5RangejEEECs8frGy5WneL6_4fish.exit.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  %.val = load i64, ptr %i.b, align 8             ; 2 uses
  %i.l = icmp eq i64 %.val, 0
  br i1 %i.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecjEECs8frGy5WneL6_4fish.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val2 = load ptr, ptr %i.i, align 8, !nonnull !16, !noundef !16
  %i.m = shl nuw i64 %.val, 3
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !6740
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecjEECs8frGy5WneL6_4fish.exit

bb.g:                                             ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecjE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3rev3RevINtNtNtB17_3ops5range5RangejEEECs8frGy5WneL6_4fish.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6738
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecjEECs8frGy5WneL6_4fish.exit: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneB11_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !16, !noundef !16 ; 2 uses
  %i.d = load i64, ptr %i.a, align 8, !noundef !16 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6746)
  %i.e = shl nuw nsw i64 %i.d, 4                  ; 2 uses
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %_RINvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inINtNtB8_4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEB16_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !6747
  %i.g = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.e, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !6747 ; 4 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %.lr.ph.preheader.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.e) #35, !noalias !6748
  unreachable

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.d
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.preheader.i
  %.sroa.014.028.i = phi ptr [ %i.p, %bb.f ], [ %i.c, %.lr.ph.preheader.i ] ; 4 uses
  %.sroa.7.027.i = phi i64 [ %i.o, %bb.f ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.10.026.i = phi i64 [ %i.j, %bb.f ], [ %i.d, %.lr.ph.preheader.i ]
  %i.j = add nsw i64 %.sroa.10.026.i, -1          ; 2 uses
  %i.k = icmp eq ptr %.sroa.014.028.i, %i.i
  br i1 %i.k, label %_RINvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inINtNtB8_4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEB16_.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %.val12.i = load ptr, ptr %.sroa.014.028.i, align 8, !alias.scope !6746, !noalias !6749, !nonnull !16, !noundef !16 ; 2 uses
  %i.l = getelementptr i8, ptr %.sroa.014.028.i, i64 8
  %.val13.i = load ptr, ptr %i.l, align 8, !alias.scope !6746, !noalias !6749 ; 2 uses
  %i.m = atomicrmw add ptr %.val12.i, i64 1 monotonic, align 8, !noalias !6748
  %i.n = icmp slt i64 %i.m, 0
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.trap()
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.o = add nuw nsw i64 %.sroa.7.027.i, 1
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.014.028.i, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13.i) ]
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.sroa.7.027.i ; 2 uses
  store ptr %.val12.i, ptr %i.q, align 8, !noalias !6748
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %.val13.i, ptr %i.r, align 8, !noalias !6748
  %i.s = icmp eq i64 %i.j, 0
  br i1 %i.s, label %_RINvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inINtNtB8_4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEB16_.exit, label %.lr.ph.i

_RINvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inINtNtB8_4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEB16_.exit: ; preds = %bb.f, %.lr.ph.i, %bb.a
  %.sroa.5.0 = phi ptr [ inttoptr (i64 8 to ptr), %bb.a ], [ %i.g, %.lr.ph.i ], [ %i.g, %bb.f ]
  store i64 %i.d, ptr %0, align 8, !noalias !6746
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !6746
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.d, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !6746
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerEENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneB10_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !16, !noundef !16 ; 2 uses
  %i.d = load i64, ptr %i.a, align 8, !noundef !16 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6755)
  %i.e = shl nuw nsw i64 %i.d, 3                  ; 2 uses
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %_RINvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inINtNtB8_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEB15_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !6756
  %i.g = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.e, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !6756 ; 4 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %.lr.ph.preheader.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.e) #35, !noalias !6757
  unreachable

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.d
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvXsu_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneBK_.exit.i, %.lr.ph.preheader.i
  %.sroa.013.027.i = phi ptr [ %i.o, %_RNvXsu_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneBK_.exit.i ], [ %i.c, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.7.026.i = phi i64 [ %i.n, %_RNvXsu_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneBK_.exit.i ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.10.025.i = phi i64 [ %i.j, %_RNvXsu_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneBK_.exit.i ], [ %i.d, %.lr.ph.preheader.i ]
  %i.j = add nsw i64 %.sroa.10.025.i, -1          ; 2 uses
  %i.k = icmp eq ptr %.sroa.013.027.i, %i.i
  br i1 %i.k, label %_RINvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inINtNtB8_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEB15_.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %.val12.i = load ptr, ptr %.sroa.013.027.i, align 8, !alias.scope !6755, !noalias !6758, !nonnull !16, !noundef !16 ; 2 uses
  %i.l = atomicrmw add ptr %.val12.i, i64 1 monotonic, align 8, !noalias !6757
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %bb.e, label %_RNvXsu_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneBK_.exit.i

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.trap()
  unreachable

_RNvXsu_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneBK_.exit.i: ; preds = %bb.d
  %i.n = add nuw nsw i64 %.sroa.7.026.i, 1
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.013.027.i, i64 8
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.sroa.7.026.i
  store ptr %.val12.i, ptr %i.p, align 8, !noalias !6757
  %i.q = icmp eq i64 %i.j, 0
  br i1 %i.q, label %_RINvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inINtNtB8_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEB15_.exit, label %.lr.ph.i

_RINvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inINtNtB8_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEB15_.exit: ; preds = %_RNvXsu_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneBK_.exit.i, %.lr.ph.i, %bb.a
  %.sroa.5.0 = phi ptr [ inttoptr (i64 8 to ptr), %bb.a ], [ %i.g, %.lr.ph.i ], [ %i.g, %_RNvXsu_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneBK_.exit.i ]
  store i64 %i.d, ptr %0, align 8, !noalias !6755
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !6755
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.d, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !6755
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish13editable_line4EditENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneBJ_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !16, !noundef !16 ; 2 uses
  %i.e = load i64, ptr %i.b, align 8, !noundef !16 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6787)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6788
  %i.f = mul nuw nsw i64 %i.e, 104                ; 2 uses
  %i.g = icmp eq i64 %i.e, 0
  br i1 %i.g, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit.thread.i, label %bb.b

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit.thread.i: ; preds = %bb.a
  store i64 0, ptr %i.a, align 8, !noalias !6788
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.h, align 8, !noalias !6788
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %_RINvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inNtNtCs8frGy5WneL6_4fish13editable_line4EditNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBO_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !6789
  %i.j = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.f, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !6789 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.c, label %.lr.ph.preheader.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.f) #35, !noalias !6788
  unreachable

.lr.ph.preheader.i:                               ; preds = %bb.b
  store i64 %i.e, ptr %i.a, align 8, !noalias !6788
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %i.l, align 8, !noalias !6788
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.n = getelementptr inbounds nuw [104 x i8], ptr %i.d, i64 %i.e
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.n, %.lr.ph.preheader.i
  %.sroa.013.077.i = phi ptr [ %i.r, %bb.n ], [ %i.d, %.lr.ph.preheader.i ] ; 12 uses
  %.sroa.7.076.i = phi i64 [ %i.s, %bb.n ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.10.075.i = phi i64 [ %i.o, %bb.n ], [ %i.e, %.lr.ph.preheader.i ]
  %i.o = add nsw i64 %.sroa.10.075.i, -1          ; 2 uses
  %i.p = icmp eq ptr %.sroa.013.077.i, %i.n
  br i1 %i.p, label %_RINvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inNtNtCs8frGy5WneL6_4fish13editable_line4EditNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBO_.exit, label %bb.e

bb.d:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.e:                                             ; preds = %.lr.ph.i
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.013.077.i, i64 104
  %i.s = add nuw nsw i64 %.sroa.7.076.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6790)
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.013.077.i, i64 80
  %i.u = load i64, ptr %.sroa.013.077.i, align 8, !range !26, !alias.scope !6791, !noalias !6792, !noundef !16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.013.077.i, i64 8
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !6791, !noalias !6792
  %i.x = load <2 x i64>, ptr %i.t, align 8, !alias.scope !6791, !noalias !6792
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.013.077.i, i64 96
  %.val6.i.i = load i64, ptr %i.y, align 8, !alias.scope !6793, !noalias !6792, !noundef !16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6794)
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.013.077.i, i64 48
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.013.077.i, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !6795, !noalias !6796, !nonnull !16, !noundef !16
  %i.ac = load i64, ptr %i.z, align 8, !alias.scope !6795, !noalias !6796, !noundef !16 ; 4 uses
  %i.ad = shl nuw i64 %i.ac, 2                    ; 4 uses
  %i.ae = icmp eq i64 %i.ac, 0                    ; 2 uses
  br i1 %i.ae, label %_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8frGy5WneL6_4fish.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !6797
  %i.af = tail call noundef align 4 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ad, i64 noundef range(i64 1, -9223372036854775807) 4) #31, !noalias !6797 ; 3 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 4, i64 %i.ad) #35
          to label %.noexc12.i unwind label %bb.d, !noalias !6788

.noexc12.i:                                       ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.af, ptr nonnull readonly align 4 %i.ab, i64 %i.ad, i1 false), !noalias !6798
  br label %_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8frGy5WneL6_4fish.exit.i.i

_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8frGy5WneL6_4fish.exit.i.i: ; preds = %bb.h, %bb.e
  %.sroa.515.0.i.i = phi ptr [ %i.af, %bb.h ], [ inttoptr (i64 4 to ptr), %bb.e ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6799)
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.013.077.i, i64 72
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.013.077.i, i64 64
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !6800, !noalias !6801, !nonnull !16, !noundef !16
  %i.ak = load i64, ptr %i.ah, align 8, !alias.scope !6800, !noalias !6801, !noundef !16 ; 4 uses
  %i.al = shl nuw nsw i64 %i.ak, 2                ; 3 uses
  %i.am = icmp eq i64 %i.ak, 0
  br i1 %i.am, label %bb.n, label %bb.i

bb.i:                                             ; preds = %_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8frGy5WneL6_4fish.exit.i.i
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !6802
  %i.an = tail call noundef align 4 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.al, i64 noundef range(i64 1, -9223372036854775807) 4) #31, !noalias !6802 ; 3 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 4, i64 %i.al) #35
          to label %.noexc.i.i unwind label %bb.l, !noalias !6803

.noexc.i.i:                                       ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.an, ptr nonnull readonly align 4 %i.aj, i64 %i.al, i1 false), !noalias !6804
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.ae, label %bb.o, label %bb.m
end_hunk_14
begin_hunk_15_@_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBX_:bb.a
  %i.q = load ptr, ptr %i.o, align 8, !alias.scope !7201, !nonnull !16, !noundef !16 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !noalias !7202, !noundef !16
  %i.s = add i64 %i.r, -1                         ; 2 uses
  store i64 %i.s, ptr %i.q, align 8, !noalias !7202
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit8.i

bb.d:                                             ; preds = %.lr.ph12.i
  invoke void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcNtNtCs8frGy5WneL6_4fish4proc3JobE9drop_slowBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o) #29
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit8.i unwind label %bb.e

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit8.i: ; preds = %bb.d, %.lr.ph12.i
  %i.u = icmp eq i64 %i.p, %i.d
  br i1 %i.u, label %._crit_edge13.i, label %.lr.ph12.i

._crit_edge13.i:                                  ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit8.i, %bb.c
  resume { ptr, i32 } %i.m

bb.e:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1b_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB11_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !16, !noundef !16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !16 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs1xwejQucwHj_5alloc4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EEB1f_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EEB1e_.exit.i
  %.sroa.0.09.i = phi i64 [ %i.g, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EEB1e_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.sroa.0.09.i ; 2 uses
  %i.g = add nuw nsw i64 %.sroa.0.09.i, 1         ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7213)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7214)
  %i.h = load ptr, ptr %i.f, align 8, !alias.scope !7215, !nonnull !16, !noundef !16
  %i.i = atomicrmw sub ptr %i.h, i64 1 release, align 8, !noalias !7216
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EEB1e_.exit.i

bb.b:                                             ; preds = %.lr.ph.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_E9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f) #29
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EEB1e_.exit.i unwind label %bb.c

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EEB1e_.exit.i: ; preds = %bb.b, %.lr.ph.i
  %i.k = icmp eq i64 %i.g, %i.d
  br i1 %i.k, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs1xwejQucwHj_5alloc4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EEB1f_.exit, label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = icmp eq i64 %i.g, %i.d
  br i1 %i.m, label %._crit_edge13.i, label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %bb.c, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EEB1e_.exit8.i
  %.sroa.0.110.i = phi i64 [ %i.o, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EEB1e_.exit8.i ], [ %i.g, %bb.c ] ; 2 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.sroa.0.110.i ; 2 uses
  %i.o = add i64 %.sroa.0.110.i, 1                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7217)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7218)
  %i.p = load ptr, ptr %i.n, align 8, !alias.scope !7219, !nonnull !16, !noundef !16
  %i.q = atomicrmw sub ptr %i.p, i64 1 release, align 8, !noalias !7220
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EEB1e_.exit8.i

bb.d:                                             ; preds = %.lr.ph12.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_E9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.n) #29
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EEB1e_.exit8.i unwind label %bb.e

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EEB1e_.exit8.i: ; preds = %bb.d, %.lr.ph12.i
  %i.s = icmp eq i64 %i.o, %i.d
  br i1 %i.s, label %._crit_edge13.i, label %.lr.ph12.i

._crit_edge13.i:                                  ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EEB1e_.exit8.i, %bb.c
  resume { ptr, i32 } %i.l

bb.e:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs1xwejQucwHj_5alloc4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EEB1f_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EEB1e_.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB10_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !16, !noundef !16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !16 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerEEB1e_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerEEB1d_.exit.i
  %.sroa.0.09.i = phi i64 [ %i.g, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerEEB1d_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.0.09.i ; 2 uses
  %i.g = add nuw nsw i64 %.sroa.0.09.i, 1         ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7231)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7232)
  %i.h = load ptr, ptr %i.f, align 8, !alias.scope !7233, !nonnull !16, !noundef !16
  %i.i = atomicrmw sub ptr %i.h, i64 1 release, align 8, !noalias !7234
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerEEB1d_.exit.i

bb.b:                                             ; preds = %.lr.ph.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #29
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerEEB1d_.exit.i unwind label %bb.c

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerEEB1d_.exit.i: ; preds = %bb.b, %.lr.ph.i
  %i.k = icmp eq i64 %i.g, %i.d
  br i1 %i.k, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerEEB1e_.exit, label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = icmp eq i64 %i.g, %i.d
  br i1 %i.m, label %._crit_edge13.i, label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %bb.c, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerEEB1d_.exit8.i
  %.sroa.0.110.i = phi i64 [ %i.o, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerEEB1d_.exit8.i ], [ %i.g, %bb.c ] ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.0.110.i ; 2 uses
  %i.o = add i64 %.sroa.0.110.i, 1                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7235)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7236)
  %i.p = load ptr, ptr %i.n, align 8, !alias.scope !7237, !nonnull !16, !noundef !16
  %i.q = atomicrmw sub ptr %i.p, i64 1 release, align 8, !noalias !7238
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerEEB1d_.exit8.i

bb.d:                                             ; preds = %.lr.ph12.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n) #29
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerEEB1d_.exit8.i unwind label %bb.e

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerEEB1d_.exit8.i: ; preds = %bb.d, %.lr.ph12.i
  %i.s = icmp eq i64 %i.o, %i.d
  br i1 %i.s, label %._crit_edge13.i, label %.lr.ph12.i

._crit_edge13.i:                                  ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerEEB1d_.exit8.i, %bb.c
  resume { ptr, i32 } %i.l

bb.e:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerEEB1e_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerEEB1d_.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function5FnMutuEp6OutputINtNtB15_6result6ResultuNtNtNtB15_2io5error5ErrorENtNtB15_6marker4SendNtB2H_4SyncEL_EENtNtB13_4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !16, !noundef !16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !16 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7241)
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function5FnMutuEp6OutputINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorENtNtB4_6marker4SendNtB2D_4SyncEL_EECs8frGy5WneL6_4fish.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function5FnMutuEp6OutputINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorENtNtB4_6marker4SendNtB2C_4SyncEL_EECs8frGy5WneL6_4fish.exit.i
  %.sroa.0.010.i = phi i64 [ %i.g, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function5FnMutuEp6OutputINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorENtNtB4_6marker4SendNtB2C_4SyncEL_EECs8frGy5WneL6_4fish.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.sroa.0.010.i ; 2 uses
  %i.g = add nuw nsw i64 %.sroa.0.010.i, 1        ; 4 uses
  %.val8.i = load ptr, ptr %i.f, align 8, !alias.scope !7241 ; 5 uses
  %i.h = getelementptr i8, ptr %i.f, i64 8
  %.val9.i = load ptr, ptr %i.h, align 8, !alias.scope !7241, !nonnull !16, !align !24, !noundef !16 ; 5 uses
  %i.i = load ptr, ptr %.val9.i, align 8, !invariant.load !16, !noalias !7241 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i) ]
  invoke void %i.i(ptr noundef nonnull %.val8.i)
          to label %bb.c unwind label %bb.d, !noalias !7241

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %i.j = getelementptr inbounds nuw i8, ptr %.val9.i, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !27, !invariant.load !16, !noalias !7241 ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function5FnMutuEp6OutputINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorENtNtB4_6marker4SendNtB2C_4SyncEL_EECs8frGy5WneL6_4fish.exit.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.val9.i, i64 16
  %i.n = load i64, ptr %i.m, align 8, !range !35, !invariant.load !16, !noalias !7241
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i) ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) %i.n) #31, !noalias !7241
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function5FnMutuEp6OutputINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorENtNtB4_6marker4SendNtB2C_4SyncEL_EECs8frGy5WneL6_4fish.exit.i

bb.d:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = getelementptr inbounds nuw i8, ptr %.val9.i, i64 8
  %i.q = load i64, ptr %i.p, align 8, !range !27, !invariant.load !16, !noalias !7241 ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %.body.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %.val9.i, i64 16
  %i.t = load i64, ptr %i.s, align 8, !range !35, !invariant.load !16, !noalias !7241
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i, i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) %i.t) #31, !noalias !7241
  br label %.body.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function5FnMutuEp6OutputINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorENtNtB4_6marker4SendNtB2C_4SyncEL_EECs8frGy5WneL6_4fish.exit.i: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.c
  %i.u = icmp eq i64 %i.g, %i.d
  br i1 %i.u, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function5FnMutuEp6OutputINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorENtNtB4_6marker4SendNtB2D_4SyncEL_EECs8frGy5WneL6_4fish.exit, label %.lr.ph.i

bb.e:                                             ; preds = %.lr.ph
  %i.v = add i64 %.sroa.0.1.i17, 1                ; 2 uses
  %i.w = icmp eq i64 %i.v, %i.d
  br i1 %i.w, label %._crit_edge, label %.lr.ph

.body.i:                                          ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i, %bb.d
  %i.x = icmp eq i64 %i.g, %i.d
  br i1 %i.x, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.body.i, %bb.e
  %.sroa.0.1.i17 = phi i64 [ %i.v, %bb.e ], [ %i.g, %.body.i ] ; 2 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.sroa.0.1.i17 ; 2 uses
  %.val.i = load ptr, ptr %i.y, align 8, !alias.scope !7241
  %i.z = getelementptr i8, ptr %i.y, i64 8
  %.val7.i = load ptr, ptr %i.z, align 8, !alias.scope !7241, !nonnull !16, !align !24, !noundef !16
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function5FnMutuEp6OutputINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorENtNtB4_6marker4SendNtB2C_4SyncEL_EECs8frGy5WneL6_4fish(ptr %.val.i, ptr nonnull %.val7.i) #33
          to label %bb.e unwind label %bb.f, !noalias !7241

._crit_edge:                                      ; preds = %bb.e, %.body.i
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %.lr.ph
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !7241
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function5FnMutuEp6OutputINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorENtNtB4_6marker4SendNtB2D_4SyncEL_EECs8frGy5WneL6_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function5FnMutuEp6OutputINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorENtNtB4_6marker4SendNtB2C_4SyncEL_EECs8frGy5WneL6_4fish.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtB15_6marker4SendEL_EENtNtB13_4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !16, !noundef !16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !16 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7244)
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECs8frGy5WneL6_4fish.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECs8frGy5WneL6_4fish.exit.i
  %.sroa.0.010.i = phi i64 [ %i.g, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECs8frGy5WneL6_4fish.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.sroa.0.010.i ; 2 uses
  %i.g = add nuw nsw i64 %.sroa.0.010.i, 1        ; 4 uses
  %.val8.i = load ptr, ptr %i.f, align 8, !alias.scope !7244 ; 5 uses
  %i.h = getelementptr i8, ptr %i.f, i64 8
  %.val9.i = load ptr, ptr %i.h, align 8, !alias.scope !7244, !nonnull !16, !align !24, !noundef !16 ; 5 uses
  %i.i = load ptr, ptr %.val9.i, align 8, !invariant.load !16, !noalias !7244 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i) ]
  invoke void %i.i(ptr noundef nonnull %.val8.i)
          to label %bb.c unwind label %bb.d, !noalias !7244

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %i.j = getelementptr inbounds nuw i8, ptr %.val9.i, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !27, !invariant.load !16, !noalias !7244 ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECs8frGy5WneL6_4fish.exit.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.val9.i, i64 16
  %i.n = load i64, ptr %i.m, align 8, !range !35, !invariant.load !16, !noalias !7244
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i) ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) %i.n) #31, !noalias !7244
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECs8frGy5WneL6_4fish.exit.i

bb.d:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = getelementptr inbounds nuw i8, ptr %.val9.i, i64 8
  %i.q = load i64, ptr %i.p, align 8, !range !27, !invariant.load !16, !noalias !7244 ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %.body.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %.val9.i, i64 16
  %i.t = load i64, ptr %i.s, align 8, !range !35, !invariant.load !16, !noalias !7244
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i, i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) %i.t) #31, !noalias !7244
  br label %.body.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECs8frGy5WneL6_4fish.exit.i: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.c
  %i.u = icmp eq i64 %i.g, %i.d
  br i1 %i.u, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECs8frGy5WneL6_4fish.exit, label %.lr.ph.i

bb.e:                                             ; preds = %.lr.ph
  %i.v = add i64 %.sroa.0.1.i17, 1                ; 2 uses
  %i.w = icmp eq i64 %i.v, %i.d
  br i1 %i.w, label %._crit_edge, label %.lr.ph

.body.i:                                          ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i, %bb.d
  %i.x = icmp eq i64 %i.g, %i.d
  br i1 %i.x, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.body.i, %bb.e
  %.sroa.0.1.i17 = phi i64 [ %i.v, %bb.e ], [ %i.g, %.body.i ] ; 2 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.sroa.0.1.i17 ; 2 uses
  %.val.i = load ptr, ptr %i.y, align 8, !alias.scope !7244
  %i.z = getelementptr i8, ptr %i.y, i64 8
  %.val7.i = load ptr, ptr %i.z, align 8, !alias.scope !7244, !nonnull !16, !align !24, !noundef !16
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECs8frGy5WneL6_4fish(ptr %.val.i, ptr nonnull %.val7.i) #33
          to label %bb.e unwind label %bb.f, !noalias !7244

._crit_edge:                                      ; preds = %bb.e, %.body.i
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %.lr.ph
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !7244
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECs8frGy5WneL6_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECs8frGy5WneL6_4fish.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions10ExpressionEL_EENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB16_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !16, !noundef !16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !16 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7247)
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions10ExpressionEL_EEB1k_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions10ExpressionEL_EEB1j_.exit.i
  %.sroa.0.010.i = phi i64 [ %i.g, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions10ExpressionEL_EEB1j_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.sroa.0.010.i ; 2 uses
  %i.g = add nuw nsw i64 %.sroa.0.010.i, 1        ; 4 uses
  %.val8.i = load ptr, ptr %i.f, align 8, !alias.scope !7247 ; 5 uses
  %i.h = getelementptr i8, ptr %i.f, i64 8
  %.val9.i = load ptr, ptr %i.h, align 8, !alias.scope !7247, !nonnull !16, !align !24, !noundef !16 ; 5 uses
  %i.i = load ptr, ptr %.val9.i, align 8, !invariant.load !16, !noalias !7247 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i) ]
  invoke void %i.i(ptr noundef nonnull %.val8.i)
          to label %bb.c unwind label %bb.d, !noalias !7247

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %i.j = getelementptr inbounds nuw i8, ptr %.val9.i, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !27, !invariant.load !16, !noalias !7247 ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions10ExpressionEL_EEB1j_.exit.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.val9.i, i64 16
  %i.n = load i64, ptr %i.m, align 8, !range !35, !invariant.load !16, !noalias !7247
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i) ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) %i.n) #31, !noalias !7247
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions10ExpressionEL_EEB1j_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = getelementptr inbounds nuw i8, ptr %.val9.i, i64 8
  %i.q = load i64, ptr %i.p, align 8, !range !27, !invariant.load !16, !noalias !7247 ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %.body.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %.val9.i, i64 16
  %i.t = load i64, ptr %i.s, align 8, !range !35, !invariant.load !16, !noalias !7247
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i, i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) %i.t) #31, !noalias !7247
  br label %.body.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions10ExpressionEL_EEB1j_.exit.i: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.c
  %i.u = icmp eq i64 %i.g, %i.d
  br i1 %i.u, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions10ExpressionEL_EEB1k_.exit, label %.lr.ph.i

bb.e:                                             ; preds = %.lr.ph
  %i.v = add i64 %.sroa.0.1.i17, 1                ; 2 uses
  %i.w = icmp eq i64 %i.v, %i.d
  br i1 %i.w, label %._crit_edge, label %.lr.ph

.body.i:                                          ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i, %bb.d
  %i.x = icmp eq i64 %i.g, %i.d
  br i1 %i.x, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.body.i, %bb.e
  %.sroa.0.1.i17 = phi i64 [ %i.v, %bb.e ], [ %i.g, %.body.i ] ; 2 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.sroa.0.1.i17 ; 2 uses
  %.val.i = load ptr, ptr %i.y, align 8, !alias.scope !7247
  %i.z = getelementptr i8, ptr %i.y, i64 8
  %.val7.i = load ptr, ptr %i.z, align 8, !alias.scope !7247, !nonnull !16, !align !24, !noundef !16
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions10ExpressionEL_EEB1j_(ptr %.val.i, ptr nonnull %.val7.i) #33
          to label %bb.e unwind label %bb.f, !noalias !7247

._crit_edge:                                      ; preds = %bb.e, %.body.i
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %.lr.ph
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !7247
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions10ExpressionEL_EEB1k_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions10ExpressionEL_EEB1j_.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxINtNtCs8n0tpEuULLm_5pcre23ffi9MatchDataNtB10_15CodeUnitWidth32EEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !16, !noundef !16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !16 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7250)
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtCs8n0tpEuULLm_5pcre23ffi9MatchDataNtB1e_15CodeUnitWidth32EEECs8frGy5WneL6_4fish.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtCs8n0tpEuULLm_5pcre23ffi9MatchDataNtB1d_15CodeUnitWidth32EEECs8frGy5WneL6_4fish.exit.i
  %.sroa.0.08.i = phi i64 [ %i.g, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtCs8n0tpEuULLm_5pcre23ffi9MatchDataNtB1d_15CodeUnitWidth32EEECs8frGy5WneL6_4fish.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.0.08.i
  %i.g = add nuw nsw i64 %.sroa.0.08.i, 1         ; 4 uses
  %.val7.i = load ptr, ptr %i.f, align 8, !alias.scope !7250, !nonnull !16, !noundef !16 ; 3 uses
  invoke void @_RNvXsd_NtCs8n0tpEuULLm_5pcre23ffiINtB5_9MatchDataNtB5_15CodeUnitWidth32ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %.val7.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtCs8n0tpEuULLm_5pcre23ffi9MatchDataNtB1d_15CodeUnitWidth32EEECs8frGy5WneL6_4fish.exit.i unwind label %.body.i, !noalias !7250

.body.i:                                          ; preds = %.lr.ph.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i, i64 noundef 64, i64 noundef 8) #31, !noalias !7250
  %i.i = icmp eq i64 %i.g, %i.d
  br i1 %i.i, label %._crit_edge, label %.lr.ph

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtCs8n0tpEuULLm_5pcre23ffi9MatchDataNtB1d_15CodeUnitWidth32EEECs8frGy5WneL6_4fish.exit.i: ; preds = %.lr.ph.i
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i, i64 noundef 64, i64 noundef 8) #31, !noalias !7250
  %i.j = icmp eq i64 %i.g, %i.d
  br i1 %i.j, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtCs8n0tpEuULLm_5pcre23ffi9MatchDataNtB1e_15CodeUnitWidth32EEECs8frGy5WneL6_4fish.exit, label %.lr.ph.i

bb.b:                                             ; preds = %.lr.ph
  %i.k = add i64 %.sroa.0.1.i10, 1                ; 2 uses
  %i.l = icmp eq i64 %i.k, %i.d
  br i1 %i.l, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.body.i, %bb.b
  %.sroa.0.1.i10 = phi i64 [ %i.k, %bb.b ], [ %i.g, %.body.i ] ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.0.1.i10
  %.val.i = load ptr, ptr %i.m, align 8, !alias.scope !7250, !nonnull !16, !noundef !16
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtCs8n0tpEuULLm_5pcre23ffi9MatchDataNtB1d_15CodeUnitWidth32EEECs8frGy5WneL6_4fish(ptr %.val.i) #33
          to label %bb.b unwind label %bb.c, !noalias !7250

._crit_edge:                                      ; preds = %bb.b, %.body.i
  resume { ptr, i32 } %i.h

bb.c:                                             ; preds = %.lr.ph
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !7250
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtCs8n0tpEuULLm_5pcre23ffi9MatchDataNtB1e_15CodeUnitWidth32EEECs8frGy5WneL6_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtCs8n0tpEuULLm_5pcre23ffi9MatchDataNtB1d_15CodeUnitWidth32EEECs8frGy5WneL6_4fish.exit.i, %bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !16, !noundef !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7255)
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit.i
  %.sroa.0.013.i = phi i64 [ %i.g, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.0.013.i ; 2 uses
  %i.g = add nuw nsw i64 %.sroa.0.013.i, 1        ; 2 uses
  %.val8.i = load i64, ptr %i.f, align 8, !range !19, !alias.scope !7255, !noundef !16 ; 2 uses
  %i.h = icmp sgt i64 %.val8.i, 0
  br i1 %i.h, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.i = getelementptr i8, ptr %i.f, i64 8
  %.val9.i = load ptr, ptr %i.i, align 8, !alias.scope !7255, !nonnull !16, !noundef !16
  %i.j = shl nuw i64 %.val8.i, 2
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 4) #31, !noalias !7256
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.b, %.lr.ph.i
  %i.k = icmp eq i64 %i.g, %i.d
  br i1 %i.k, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit, label %.lr.ph.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCs3oUPovFnLWP_4core3pin3PinINtNtB7_5boxed3BoxNtNtNtCs8frGy5WneL6_4fish6reader6reader10ReaderDataEEENtNtNtBK_3ops4drop4Drop4dropB1z_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !16, !noundef !16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !16 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7259)
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtB4_3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtCs8frGy5WneL6_4fish6reader6reader10ReaderDataEEEB1x_.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtB4_3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtCs8frGy5WneL6_4fish6reader6reader10ReaderDataEEEB1x_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i1 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.0.0.i1
  %i.h = add nuw nsw i64 %.sroa.0.0.i1, 1         ; 4 uses
  %.val7.i = load ptr, ptr %i.g, align 8, !alias.scope !7259, !nonnull !16, !noundef !16
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtCs8frGy5WneL6_4fish6reader6reader10ReaderDataEEEB1w_(ptr nonnull %.val7.i)
          to label %bb.b unwind label %bb.d, !noalias !7259

bb.c:                                             ; preds = %.lr.ph3
  %i.i = add i64 %.sroa.0.1.i2, 1                 ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %._crit_edge, label %.lr.ph3

bb.d:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %._crit_edge, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i2 = phi i64 [ %i.i, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.0.1.i2
  %.val.i = load ptr, ptr %i.m, align 8, !alias.scope !7259, !nonnull !16, !noundef !16
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtCs8frGy5WneL6_4fish6reader6reader10ReaderDataEEEB1w_(ptr nonnull %.val.i) #33
          to label %bb.c unwind label %bb.e, !noalias !7259

._crit_edge:                                      ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.k

bb.e:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !7259
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtB4_3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtCs8frGy5WneL6_4fish6reader6reader10ReaderDataEEEB1x_.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB7_6string6StringEENtNtNtBK_3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_15
