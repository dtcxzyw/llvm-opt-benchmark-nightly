Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/miniz_oxide-4bb6cbd72a4a2a9a.miniz_oxide.e11ffb1e97ec6fa2-cgu.0?download=true
inline.NumInlined: 178
inline.NumDeleted: 95
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 22
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [107 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/miniz_oxide-0.8.9/src/deflate/core.rs\00", align 1
@1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00\C7\01\00\00C\00\00\00" }>, align 8
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00\DF\01\00\00\12\00\00\00" }>, align 8
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00\DF\01\00\005\00\00\00" }>, align 8
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00\DE\01\00\00\1A\00\00\00" }>, align 8
@5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00\FE\01\00\00 \00\00\00" }>, align 8
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00\8A\02\00\00B\00\00\00" }>, align 8
@7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00\8A\02\00\00\13\00\00\00" }>, align 8
@8 = private unnamed_addr constant [48 x i8] c"assertion failed: bits <= ((1u32 << len) - 1u32)", align 1
@9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00Y\02\00\00\09\00\00\00" }>, align 8
@10 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00^\02\00\00\0D\00\00\00" }>, align 8
@11 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00\A7\02\00\00\13\00\00\00" }>, align 8
@12 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00\A5\02\00\00*\00\00\00" }>, align 8
@13 = private unnamed_addr constant [3 x i8] zeroinitializer, align 1
@14 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00\B7\03\00\00\11\00\00\00" }>, align 8
@15 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00\C8\03\00\00\15\00\00\00" }>, align 8
@16 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00\C7\03\00\00'\00\00\00" }>, align 8
@17 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00\B1\03\00\00\1E\00\00\00" }>, align 8
@18 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00\A8\03\00\00\15\00\00\00" }>, align 8
@19 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00\99\03\00\00\11\00\00\00" }>, align 8
@20 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00\DE\03\00\00\18\00\00\00" }>, align 8
@21 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\003\03\00\00\11\00\00\00" }>, align 8
@22 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00\10\04\00\00P\00\00\00" }>, align 8
@23 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00\10\04\00\00-\00\00\00" }>, align 8
@24 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00\13\04\00\00\0E\00\00\00" }>, align 8
@25 = private unnamed_addr constant [19 x i8] c"\10\11\12\00\08\07\09\06\0A\05\0B\04\0C\03\0D\02\0E\01\0F", align 1
@26 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00U\04\00\00\18\00\00\00" }>, align 8
@27 = private unnamed_addr constant [43 x i8] c"assertion failed: code < MAX_HUFF_SYMBOLS_2", align 1
@28 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00W\04\00\00\0D\00\00\00" }>, align 8
@29 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00^\04\00\00\1F\00\00\00" }>, align 8
@30 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00L\04\00\00.\00\00\00" }>, align 8
@31 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00\13\04\00\001\00\00\00" }>, align 8
@32 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00\12\04\00\00\1B\00\00\00" }>, align 8
@33 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00\10\04\00\00\1B\00\00\00" }>, align 8
@34 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00\86\03\00\00\15\00\00\00" }>, align 8
@35 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00d\03\00\00+\00\00\00" }>, align 8
@36 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00i\03\00\00\19\00\00\00" }>, align 8
@37 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00[\03\00\00)\00\00\00" }>, align 8
@38 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00F\03\00\00(\00\00\00" }>, align 8
@39 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00G\03\00\00-\00\00\00" }>, align 8
@40 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00P\03\00\00L\00\00\00" }>, align 8
@41 = private unnamed_addr constant [47 x i8] c"assertion failed: d.params.flush_remaining == 0", align 1
@42 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00P\06\00\00\09\00\00\00" }>, align 8
@43 = private unnamed_addr constant [128 x i8] c"\00\00\12\13\14\14\15\15\16\16\16\16\17\17\17\17\18\18\18\18\18\18\18\18\19\19\19\19\19\19\19\19\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D", align 1
@44 = private unnamed_addr constant [512 x i8] c"\00\01\02\03\04\04\05\05\06\06\06\06\07\07\07\07\08\08\08\08\08\08\08\08\09\09\09\09\09\09\09\09\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11", align 1
@45 = private unnamed_addr constant [256 x i8] c"\01\02\03\04\05\06\07\08\09\09\0A\0A\0B\0B\0C\0C\0D\0D\0D\0D\0E\0E\0E\0E\0F\0F\0F\0F\10\10\10\10\11\11\11\11\11\11\11\11\12\12\12\12\12\12\12\12\13\13\13\13\13\13\13\13\14\14\14\14\14\14\14\14\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1D", align 1
@46 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00\16\08\00\00\22\00\00\00" }>, align 8
@47 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00\BE\07\00\001\00\00\00" }>, align 8
@48 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00\C3\07\00\00\16\00\00\00" }>, align 8
@49 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00\C3\07\00\00-\00\00\00" }>, align 8
@50 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00\BE\07\00\00H\00\00\00" }>, align 8
@51 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00\EC\08\00\00H\00\00\00" }>, align 8
@52 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00\15\07\00\00\1E\00\00\00" }>, align 8
@53 = private unnamed_addr constant [47 x i8] c"assertion failed: lookahead_size >= len_to_move", align 1
@54 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00\83\07\00\00\09\00\00\00" }>, align 8
@55 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00?\07\00\00.\00\00\00" }>, align 8
@56 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00\02\07\00\00\1E\00\00\00" }>, align 8
@57 = private unnamed_addr constant [68 x i8] c"\00\00\00\00\01\00\00\00\03\00\00\00\07\00\00\00\0F\00\00\00\1F\00\00\00?\00\00\00\7F\00\00\00\FF\00\00\00\FF\01\00\00\FF\03\00\00\FF\07\00\00\FF\0F\00\00\FF\1F\00\00\FF?\00\00\FF\7F\00\00\FF\FF\00\00", align 4
@58 = private unnamed_addr constant [256 x i8] c"\00\00\00\00\00\00\00\00\01\01\01\01\01\01\01\01\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\00", align 1
@59 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00\F7\05\00\00\17\00\00\00" }>, align 8
@60 = private unnamed_addr constant [128 x i8] c"\00\00\08\08\09\09\09\09\0A\0A\0A\0A\0A\0A\0A\0A\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D", align 1
@61 = private unnamed_addr constant [512 x i8] c"\00\00\00\00\01\01\01\01\02\02\02\02\02\02\02\02\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07", align 1
@62 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00v\08\00\00\12\00\00\00" }>, align 8
@63 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00v\08\00\000\00\00\00" }>, align 8
@64 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00u\08\00\00\17\00\00\00" }>, align 8
@65 = private unnamed_addr constant [22 x i8] c"\00\00\01\00\06\00 \00\10\00 \00\80\00\00\01\00\02\00\03\DC\05", align 2
@66 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00\04\03\00\00\16\00\00\00" }>, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvMs1_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_15CompressorOxide20set_format_and_level(ptr noalias nofree noundef writeonly align 8 captures(none) dereferenceable(65712) initializes((65584, 65592), (65664, 65668), (65706, 65707)) %0, i8 noundef range(i8 0, 3) %1, i8 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i8 %1, 2
  %i.b = tail call i8 @llvm.umin.i8(i8 %2, i8 10)
  %.sroa.07.0.i5 = zext nneg i8 %i.b to i64
  %i.c = icmp ult i8 %2, 4
  %..i6 = select i1 %i.c, i32 16384, i32 0        ; 2 uses
  %i.d = getelementptr inbounds nuw [2 x i8], ptr @65, i64 %.sroa.07.0.i5
  %i.e = load i16, ptr %i.d, align 2, !noundef !4
  %i.f = zext i16 %i.e to i32                     ; 2 uses
  br i1 %i.a, label %.split, label %.split3

.split3:                                          ; preds = %bb.a
  %i.g = icmp eq i8 %2, 0
  %spec.select.v = select i1 %i.g, i32 528384, i32 4096
  %i.h = or disjoint i32 %spec.select.v, %..i6
  %spec.select = or i32 %i.h, %i.f
  br label %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core33create_comp_flags_from_zip_params.exit

.split:                                           ; preds = %bb.a
  %i.i = or i32 %..i6, %i.f                       ; 2 uses
  %i.j = icmp eq i8 %2, 0
  %i.k = or disjoint i32 %i.i, 524288
  %spec.select11 = select i1 %i.j, i32 %i.k, i32 %i.i
  br label %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core33create_comp_flags_from_zip_params.exit

_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core33create_comp_flags_from_zip_params.exit: ; preds = %.split, %.split3
  %phi.call = phi i32 [ %spec.select, %.split3 ], [ %spec.select11, %.split ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 65664
  store i32 %phi.call, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 65706
  %i.n = lshr i32 %phi.call, 14
  %i.o = trunc nuw nsw i32 %i.n to i8
  %i.p = and i8 %i.o, 1
  store i8 %i.p, ptr %i.m, align 2
  %i.q = and i32 %phi.call, 4095                  ; 2 uses
  %i.r = lshr i32 %i.q, 2
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 65584
  %i.t = trunc nuw nsw i32 %i.q to i16
  %i.u = insertelement <2 x i16> poison, i16 %i.t, i64 0
  %i.v = trunc nuw nsw i32 %i.r to i16
  %i.w = insertelement <2 x i16> %i.u, i16 %i.v, i64 1
  %i.x = add nuw nsw <2 x i16> %i.w, splat (i16 2)
  %i.y = udiv <2 x i16> %i.x, splat (i16 3)
  %i.z = add nuw nsw <2 x i16> %i.y, splat (i16 1)
  %i.aa = zext nneg <2 x i16> %i.z to <2 x i32>
  store <2 x i32> %i.aa, ptr %i.s, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_RNvMs1_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_15CompressorOxide21set_compression_level(ptr noalias nofree noundef align 8 captures(none) dereferenceable(65712) initializes((65584, 65592), (65706, 65707)) %0, i32 noundef range(i32 -1, 11) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 65664 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !noundef !4
  %i.c = and i32 %i.b, 4096
  %i.d = icmp eq i32 %i.c, 0
  %i.e = trunc nsw i32 %1 to i8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5)
  %i.f = tail call i8 @llvm.umin.i8(i8 %i.e, i8 10)
  %.sroa.07.0.i5.i = zext nneg i8 %i.f to i64
  %i.g = icmp ult i32 %1, 4
  %..i6.i = select i1 %i.g, i32 16384, i32 0      ; 2 uses
  %i.h = getelementptr inbounds nuw [2 x i8], ptr @65, i64 %.sroa.07.0.i5.i
  %i.i = load i16, ptr %i.h, align 2, !noalias !5, !noundef !4
  %i.j = zext i16 %i.i to i32                     ; 2 uses
  br i1 %i.d, label %.split.i, label %.split3.i

.split3.i:                                        ; preds = %bb.a
  %i.k = icmp eq i32 %1, 0
  %spec.select.v.i = select i1 %i.k, i32 528384, i32 4096
  %i.l = or disjoint i32 %spec.select.v.i, %..i6.i
  %spec.select.i = or i32 %i.l, %i.j
  br label %_RNvMs1_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_15CompressorOxide20set_format_and_level.exit

.split.i:                                         ; preds = %bb.a
  %i.m = or i32 %..i6.i, %i.j                     ; 2 uses
  %i.n = icmp eq i32 %1, 0
  %i.o = or disjoint i32 %i.m, 524288
  %spec.select11.i = select i1 %i.n, i32 %i.o, i32 %i.m
  br label %_RNvMs1_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_15CompressorOxide20set_format_and_level.exit

_RNvMs1_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_15CompressorOxide20set_format_and_level.exit: ; preds = %.split3.i, %.split.i
  %phi.call.i = phi i32 [ %spec.select.i, %.split3.i ], [ %spec.select11.i, %.split.i ] ; 3 uses
  store i32 %phi.call.i, ptr %i.a, align 8, !alias.scope !5
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 65706
  %i.q = lshr i32 %phi.call.i, 14
  %i.r = trunc nuw nsw i32 %i.q to i8
  %i.s = and i8 %i.r, 1
  store i8 %i.s, ptr %i.p, align 2, !alias.scope !5
  %i.t = and i32 %phi.call.i, 4095                ; 2 uses
  %i.u = lshr i32 %i.t, 2
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 65584
  %i.w = trunc nuw nsw i32 %i.t to i16
  %i.x = insertelement <2 x i16> poison, i16 %i.w, i64 0
  %i.y = trunc nuw nsw i32 %i.u to i16
  %i.z = insertelement <2 x i16> %i.x, i16 %i.y, i64 1
  %i.aa = add nuw nsw <2 x i16> %i.z, splat (i16 2)
  %i.ab = udiv <2 x i16> %i.aa, splat (i16 3)
  %i.ac = add nuw nsw <2 x i16> %i.ab, splat (i16 1)
  %i.ad = zext nneg <2 x i16> %i.ac to <2 x i32>
  store <2 x i32> %i.ad, ptr %i.v, align 8, !alias.scope !5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvMs1_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_15CompressorOxide25set_compression_level_raw(ptr noalias nofree noundef align 8 captures(none) dereferenceable(65712) initializes((65584, 65592), (65706, 65707)) %0, i8 noundef %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 65664 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !noundef !4
  %i.c = and i32 %i.b, 4096
  %i.d = icmp eq i32 %i.c, 0
  %i.e = tail call i8 @llvm.umin.i8(i8 %1, i8 10)
  %.sroa.07.0.i5.i = zext nneg i8 %i.e to i64
  %i.f = icmp ult i8 %1, 4
  %..i6.i = select i1 %i.f, i32 16384, i32 0      ; 2 uses
  %i.g = getelementptr inbounds nuw [2 x i8], ptr @65, i64 %.sroa.07.0.i5.i
  %i.h = load i16, ptr %i.g, align 2, !noalias !4, !noundef !4
  %i.i = zext i16 %i.h to i32                     ; 3 uses
  br i1 %i.d, label %.split2, label %.split

.split2:                                          ; preds = %bb.a
  %i.j = or i32 %..i6.i, %i.i                     ; 2 uses
  %i.k = icmp eq i8 %1, 0
  %i.l = or disjoint i32 %i.j, 524288
  %spec.select11.i = select i1 %i.k, i32 %i.l, i32 %i.j ; 2 uses
  br label %bb.b

.split:                                           ; preds = %bb.a
  %i.m = icmp eq i8 %1, 0
  %spec.select.v.i = select i1 %i.m, i32 528384, i32 4096
  %i.n = or disjoint i32 %spec.select.v.i, %..i6.i
  %spec.select.i = or i32 %i.n, %i.i
  br label %bb.b

bb.b:                                             ; preds = %.split, %.split2
  %spec.select.i.sink = phi i32 [ %spec.select11.i, %.split2 ], [ %spec.select.i, %.split ] ; 2 uses
  %.sink10.in.in.in.in.in.in = phi i32 [ %spec.select11.i, %.split2 ], [ %i.i, %.split ]
  %.sink10.in.in.in.in.in = and i32 %.sink10.in.in.in.in.in.in, 4095 ; 2 uses
  %.sink.in.in.in.in.in = lshr i32 %.sink10.in.in.in.in.in, 2
  %.sink11.in.in = lshr i32 %spec.select.i.sink, 14
  %.sink11.in = trunc nuw nsw i32 %.sink11.in.in to i8
  %.sink11 = and i8 %.sink11.in, 1
  store i32 %spec.select.i.sink, ptr %i.a, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 65706
  store i8 %.sink11, ptr %i.o, align 2
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 65584
  %i.q = trunc nuw nsw i32 %.sink10.in.in.in.in.in to i16
  %i.r = insertelement <2 x i16> poison, i16 %i.q, i64 0
  %i.s = trunc nuw nsw i32 %.sink.in.in.in.in.in to i16
  %i.t = insertelement <2 x i16> %i.r, i16 %i.s, i64 1
  %i.u = add nuw nsw <2 x i16> %i.t, splat (i16 2)
  %i.v = udiv <2 x i16> %i.u, splat (i16 3)
  %i.w = add nuw nsw <2 x i16> %i.v, splat (i16 1)
  %i.x = zext nneg <2 x i16> %i.w to <2 x i32>
  store <2 x i32> %i.x, ptr %i.p, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_15CompressorOxide3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([65712 x i8]) align 8 captures(none) dereferenceable(65712) %0, i32 noundef %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 7 uses
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !8
  %_RNvCsiZ68L5R9VjM_7___rustc19___rust_alloc_zeroed.i.i = tail call dereferenceable_or_null(85196) ptr @_RNvCsiZ68L5R9VjM_7___rustc19___rust_alloc_zeroed(i64 85196, i64 1), !noalias !8 ; 3 uses
  %i.b = icmp eq ptr %_RNvCsiZ68L5R9VjM_7___rustc19___rust_alloc_zeroed.i.i, null
  br i1 %i.b, label %bb.b, label %_RNvMsd_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_11ParamsOxide3new.exit, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 85196) #21, !noalias !8
  unreachable

_RNvMsd_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_11ParamsOxide3new.exit: ; preds = %bb.a
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20
  %_RNvCsiZ68L5R9VjM_7___rustc19___rust_alloc_zeroed.i = tail call align 2 dereferenceable_or_null(4320) ptr @_RNvCsiZ68L5R9VjM_7___rustc19___rust_alloc_zeroed(i64 4320, i64 2) ; 3 uses
  %i.c = icmp eq ptr %_RNvCsiZ68L5R9VjM_7___rustc19___rust_alloc_zeroed.i, null
  br i1 %i.c, label %bb.c, label %_RNvXs9_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxNtNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core12HuffmanOxideENtNtCshzWfHUSfYae_4core7default7Default7defaultBN_.exit, !prof !11

bb.c:                                             ; preds = %_RNvMsd_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_11ParamsOxide3new.exit
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 2, i64 noundef 4320) #21
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

_RNvXs9_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxNtNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core12HuffmanOxideENtNtCshzWfHUSfYae_4core7default7Default7defaultBN_.exit: ; preds = %_RNvMsd_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_11ParamsOxide3new.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXs_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate6bufferNtB4_11HashBuffersNtNtCshzWfHUSfYae_4core7default7Default7default(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(72) %i.a)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %_RNvXs9_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxNtNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core12HuffmanOxideENtNtCshzWfHUSfYae_4core7default7Default7defaultBN_.exit
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %_RNvCsiZ68L5R9VjM_7___rustc19___rust_alloc_zeroed.i, i64 noundef 4320, i64 noundef 2) #20
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs9_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxNtNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core12HuffmanOxideENtNtCshzWfHUSfYae_4core7default7Default7defaultBN_.exit
  %i.f = and i32 %1, 4095                         ; 2 uses
  %i.g = lshr i32 %i.f, 2
  %i.h = lshr i32 %1, 14
  %i.i = trunc i32 %i.h to i8
  %i.j = and i8 %i.i, 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.l = trunc nuw nsw i32 %i.f to i16
  %i.m = insertelement <2 x i16> poison, i16 %i.l, i64 0
  %i.n = trunc nuw nsw i32 %i.g to i16
  %i.o = insertelement <2 x i16> %i.m, i16 %i.n, i64 1
  %i.p = add nuw nsw <2 x i16> %i.o, splat (i16 2)
  %i.q = udiv <2 x i16> %i.p, splat (i16 3)
  %i.r = add nuw nsw <2 x i16> %i.q, splat (i16 1)
  %i.s = zext nneg <2 x i16> %i.r to <2 x i32>
  store <2 x i32> %i.s, ptr %i.k, align 8, !alias.scope !12
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, i8 0, i64 32, i1 false), !alias.scope !12
  store i8 32, ptr %i.u, align 8, !alias.scope !12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65536) %0, i8 0, i64 65536, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 65536
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 65544
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 65552
  store i32 0, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 65556
  store i32 8, ptr %.sroa.7.0..sroa_idx, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 65640
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  %.sroa.4.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %0, i64 65656
  store ptr %_RNvCsiZ68L5R9VjM_7___rustc19___rust_alloc_zeroed.i.i, ptr %.sroa.4.0..sroa_idx7, align 8
  %.sroa.6.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 65664
  store i32 %1, ptr %.sroa.6.0..sroa_idx8, align 8
  %.sroa.7.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %0, i64 65668
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.7.0..sroa_idx9, i8 0, i64 20, i1 false)
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 65688
  store i32 1, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 65692
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 65706
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(14) %.sroa.9.0..sroa_idx, i8 0, i64 14, i1 false)
  store i8 %i.j, ptr %.sroa.14.0..sroa_idx, align 2
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 65707
  store i8 0, ptr %.sroa.15.0..sroa_idx, align 1
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 65632
  store ptr %_RNvCsiZ68L5R9VjM_7___rustc19___rust_alloc_zeroed.i, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 65560
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.x, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.g:                                             ; preds = %bb.d, %bb.e
  %.pn = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.d, %bb.d ]
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %_RNvCsiZ68L5R9VjM_7___rustc19___rust_alloc_zeroed.i.i, i64 noundef 85196, i64 noundef 1) #20
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define void @_RNvMs1_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_15CompressorOxide5reset(ptr noalias nofree noundef align 8 captures(none) dereferenceable(65712) initializes((0, 65560), (65592, 65624), (65640, 65656), (65668, 65706), (65707, 65708)) %0) unnamed_addr #4 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65536) %0, i8 0, i64 65536, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 65536
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 65544
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 65552
  store i32 0, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 65556
  store i32 8, ptr %.sroa.7.0..sroa_idx, align 4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 65640
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 65668
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 65704
  store i8 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 65705
  store i8 0, ptr %i.d, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 65707
  store i8 0, ptr %i.e, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 65688
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.b, i8 0, i64 20, i1 false)
  store <4 x i32> <i32 1, i32 0, i32 0, i32 0>, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 65656
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(85196) %i.h, i8 0, i64 85196, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 65632
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(4320) %i.j, i8 0, i64 4320, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 65560
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18)
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !21, !nonnull !4, !noundef !4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(33026) %i.l, i8 0, i64 33026, i1 false), !noalias !21
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 65568
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !21, !nonnull !4, !noundef !4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(65536) %i.n, i8 0, i64 65536, i1 false), !alias.scope !22, !noalias !21
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 65576
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !21, !nonnull !4, !noundef !4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(65536) %i.p, i8 0, i64 65536, i1 false), !alias.scope !25, !noalias !21
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 65592
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i8 0, i64 32, i1 false), !alias.scope !15
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvMs9_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_3Rle14zero_code_size(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef nonnull %1, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(8) %2, ptr noalias nofree noundef nonnull align 2 captures(none) dereferenceable(4320) %3) unnamed_addr #3 {
bb.a:
  %i.a = alloca [2 x i8], align 1                 ; 6 uses
  %i.b = alloca [2 x i8], align 1                 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 1152 ; 2 uses
  %i.d = load i32, ptr %0, align 4, !noundef !4   ; 6 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core5write.exit5.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ult i32 %i.d, 3
  br i1 %i.f, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = icmp ult i32 %i.d, 11
  %i.h = trunc i32 %i.d to i8                     ; 2 uses
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 1188 ; 2 uses
  %i.j = load i16, ptr %i.i, align 2, !noundef !4
  %i.k = add i16 %i.j, 1
  store i16 %i.k, ptr %i.i, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.l = add i8 %i.h, -11
  store i8 18, ptr %i.a, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.l, ptr %i.m, align 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28)
  %i.n = load i64, ptr %2, align 8, !alias.scope !28, !noalias !31, !noundef !4 ; 3 uses
  %or.cond.not.i = icmp ugt i64 %i.n, 318
  br i1 %or.cond.not.i, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 1186 ; 2 uses
  %i.p = load i16, ptr %i.o, align 2, !noundef !4
  %i.q = add i16 %i.p, 1
  store i16 %i.q, ptr %i.o, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.r = add nsw i8 %i.h, -3
  store i8 17, ptr %i.b, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.r, ptr %i.s, align 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34)
  %i.t = load i64, ptr %2, align 8, !alias.scope !34, !noalias !37, !noundef !4 ; 3 uses
  %or.cond.not.i2 = icmp ugt i64 %i.t, 318
  br i1 %or.cond.not.i2, label %bb.h, label %bb.i

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core5write.exit5.thread

bb.g:                                             ; preds = %bb.d
  %i.u = add nuw nsw i64 %i.n, 2
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %i.n
  call void @_RINvNtCshzWfHUSfYae_4core5slice20copy_from_slice_implhECsjkkKzr5dxZe_11miniz_oxide(ptr noalias nofree noundef nonnull %i.v, i64 noundef 2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66), !noalias !28
  store i64 %i.u, ptr %2, align 8, !alias.scope !28, !noalias !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.j

bb.h:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core5write.exit5.thread

bb.i:                                             ; preds = %bb.e
  %i.w = add nuw nsw i64 %i.t, 2
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %i.t
  call void @_RINvNtCshzWfHUSfYae_4core5slice20copy_from_slice_implhECsjkkKzr5dxZe_11miniz_oxide(ptr noalias nofree noundef nonnull %i.x, i64 noundef 2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66), !noalias !34
  store i64 %i.w, ptr %2, align 8, !alias.scope !34, !noalias !37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.j

bb.j:                                             ; preds = %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core5write.exit5, %bb.g, %bb.i
  store i32 0, ptr %0, align 4
  br label %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core5write.exit5.thread

bb.k:                                             ; preds = %bb.b
  %i.y = load i16, ptr %i.c, align 2, !noundef !4
  %i.z = trunc nuw nsw i32 %i.d to i16
  %i.aa = add i16 %i.y, %i.z
  store i16 %i.aa, ptr %i.c, align 2
  %i.ab = zext nneg i32 %i.d to i64               ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40)
  %i.ac = load i64, ptr %2, align 8, !alias.scope !40, !noalias !43, !noundef !4 ; 3 uses
  %i.ad = add i64 %i.ac, %i.ab                    ; 3 uses
  %i.ae = icmp ult i64 %i.ad, %i.ac
  %i.af = icmp ugt i64 %i.ad, 320
  %or.cond.not.i4 = or i1 %i.ae, %i.af
  br i1 %or.cond.not.i4, label %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core5write.exit5.thread, label %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core5write.exit5

_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core5write.exit5: ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %i.ac
  tail call void @_RINvNtCshzWfHUSfYae_4core5slice20copy_from_slice_implhECsjkkKzr5dxZe_11miniz_oxide(ptr noalias nofree noundef nonnull %i.ag, i64 noundef range(i64 0, 4) %i.ab, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef range(i64 0, 4) %i.ab, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66), !noalias !40
  store i64 %i.ad, ptr %2, align 8, !alias.scope !40, !noalias !43
  br label %bb.j

_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core5write.exit5.thread: ; preds = %bb.k, %bb.j, %bb.a, %bb.h, %bb.f
  %.sroa.0.0 = phi i1 [ true, %bb.f ], [ false, %bb.j ], [ true, %bb.h ], [ false, %bb.a ], [ true, %bb.k ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide14optimize_table(ptr noalias nofree noundef nonnull align 2 captures(address) dereferenceable(4320) %0, i64 noundef range(i64 0, 3) %1, i64 noundef range(i64 19, 289) %2, i64 noundef range(i64 7, 16) %3, i1 noundef zeroext %4) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [2048 x i8], align 8              ; 16 uses
  %i.b = alloca [4096 x i8], align 8              ; 11 uses
  %i.c = alloca [40 x i8], align 8                ; 10 uses
  %i.d = alloca [1152 x i8], align 2              ; 8 uses
  %i.e = alloca [1152 x i8], align 2              ; 12 uses
  %i.f = alloca [64 x i8], align 4                ; 10 uses
  %i.g = alloca [132 x i8], align 4               ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(132) %i.g, i8 0, i64 132, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.f, i8 0, i64 64, i1 false)
  %.sroa.04.0.lcssa.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %.sroa.04.0.lcssa.i.sroa.gep211 = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  br i1 %4, label %.lr.ph169.preheader, label %.preheader

.preheader:                                       ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1152) %i.e, i8 0, i64 1152, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1152) %i.d, i8 0, i64 1152, i1 false)
  %i.h = getelementptr inbounds nuw [576 x i8], ptr %0, i64 %1
  br label %bb.c

bb.b:                                             ; preds = %bb.az
  %i.i = icmp ult i64 %.sroa.04.2, 289
  br i1 %i.i, label %bb.e, label %bb.d, !prof !46

bb.c:                                             ; preds = %.preheader, %bb.az
  %.sroa.042.0158 = phi i64 [ 0, %.preheader ], [ %i.j, %bb.az ] ; 3 uses
  %.sroa.04.0157 = phi i64 [ 0, %.preheader ], [ %.sroa.04.2, %bb.az ] ; 5 uses
  %i.j = add nuw nsw i64 %.sroa.042.0158, 1       ; 2 uses
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %.sroa.042.0158
  %i.l = load i16, ptr %i.k, align 2, !noundef !4 ; 2 uses
  %i.m = icmp eq i16 %i.l, 0
  br i1 %i.m, label %bb.az, label %bb.ba

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.sroa.04.2, i64 noundef 288, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #22
  unreachable

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !52
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 2048 ; 8 uses
  %.idx.i = shl nuw nsw i64 %.sroa.04.2, 2        ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx.i ; 2 uses
  %i.p = icmp eq i64 %.sroa.04.2, 0               ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4096) %i.b, i8 0, i64 4096, i1 false), !noalias !52
  br i1 %i.p, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.e
  %i.q = add nsw i64 %.idx.i, -4                  ; 2 uses
  %i.r = and i64 %i.q, 4
  %lcmp.mod.not.not = icmp eq i64 %i.r, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.t = load i16, ptr %i.e, align 2, !alias.scope !47, !noalias !50, !noundef !4 ; 2 uses
  %i.u = and i16 %i.t, 255
  %i.v = zext nneg i16 %i.u to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.v ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !noalias !52, !noundef !4
  %i.y = add i64 %i.x, 1
  store i64 %i.y, ptr %i.w, align 8, !noalias !52
  %i.z = lshr i16 %i.t, 8
  %i.aa = zext nneg i16 %i.z to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.aa ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !noalias !52, !noundef !4
  %i.ad = add i64 %i.ac, 1
  store i64 %i.ad, ptr %i.ab, align 8, !noalias !52
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.sroa.0.041.i.unr = phi ptr [ %i.e, %.lr.ph.i.preheader ], [ %i.s, %.lr.ph.i.prol ]
  %i.ae = icmp eq i64 %i.q, 0
  br i1 %i.ae, label %._crit_edge.i.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.sroa.0.041.i = phi ptr [ %i.ar, %.lr.ph.i ], [ %.sroa.0.041.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.041.i, i64 4
  %i.ag = load i16, ptr %.sroa.0.041.i, align 2, !alias.scope !47, !noalias !50, !noundef !4 ; 2 uses
  %i.ah = and i16 %i.ag, 255
  %i.ai = zext nneg i16 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ai ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !noalias !52, !noundef !4
  %i.al = add i64 %i.ak, 1
  store i64 %i.al, ptr %i.aj, align 8, !noalias !52
  %i.am = lshr i16 %i.ag, 8
  %i.an = zext nneg i16 %i.am to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.an ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !noalias !52, !noundef !4
  %i.aq = add i64 %i.ap, 1
  store i64 %i.aq, ptr %i.ao, align 8, !noalias !52
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.041.i, i64 8 ; 2 uses
  %i.as = load i16, ptr %i.af, align 2, !alias.scope !47, !noalias !50, !noundef !4 ; 2 uses
  %i.at = and i16 %i.as, 255
  %i.au = zext nneg i16 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.au ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !noalias !52, !noundef !4
  %i.ax = add i64 %i.aw, 1
  store i64 %i.ax, ptr %i.av, align 8, !noalias !52
  %i.ay = lshr i16 %i.as, 8
  %i.az = zext nneg i16 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.az ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !noalias !52, !noundef !4
  %i.bc = add i64 %i.bb, 1
  store i64 %i.bc, ptr %i.ba, align 8, !noalias !52
  %i.bd = icmp eq ptr %i.ar, %i.o
  br i1 %i.bd, label %._crit_edge.i.loopexit, label %.lr.ph.i

._crit_edge.i.loopexit:                           ; preds = %.lr.ph.i, %.lr.ph.i.prol.loopexit
  %.pre = load i64, ptr %i.n, align 8, !noalias !52
  %i.be = icmp eq i64 %.sroa.04.2, %.pre
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %bb.e
  %.not.i = phi i1 [ %i.be, %._crit_edge.i.loopexit ], [ true, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !52
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %i.a, i8 0, i64 2048, i1 false), !noalias !52
  br label %bb.l

bb.f:                                             ; preds = %bb.l
  br i1 %i.p, label %._crit_edge47.i, label %.lr.ph46.i

.lr.ph46.i:                                       ; preds = %bb.f, %bb.k
  %.sroa.023.044.i = phi ptr [ %i.cv, %bb.k ], [ %i.e, %bb.f ] ; 3 uses
  %i.bf = load i16, ptr %.sroa.023.044.i, align 2, !alias.scope !47, !noalias !50, !noundef !4 ; 2 uses
  %i.bg = and i16 %i.bf, 255
  %i.bh = zext nneg i16 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bh ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !noalias !52, !noundef !4 ; 4 uses
  %i.bk = icmp ult i64 %i.bj, %.sroa.04.2
  br i1 %i.bk, label %bb.k, label %.loopexit.i

._crit_edge47.i:                                  ; preds = %bb.k, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !52
  br i1 %.not.i, label %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide18radix_sort_symbols.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge47.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !52
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %i.a, i8 0, i64 2048, i1 false), !noalias !52
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.sroa.026.043.1.i = phi i64 [ 0, %bb.g ], [ %i.ca, %bb.h ] ; 6 uses
  %.sroa.019.042.1.i = phi i64 [ 0, %bb.g ], [ %i.ce, %bb.h ] ; 2 uses
  %i.bl = or disjoint i64 %.sroa.026.043.1.i, 1   ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.026.043.1.i
  store i64 %.sroa.019.042.1.i, ptr %i.bm, align 8, !noalias !52
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.026.043.1.i
  %i.bo = load i64, ptr %i.bn, align 8, !noalias !52, !noundef !4
  %i.bp = add i64 %i.bo, %.sroa.019.042.1.i       ; 2 uses
  %i.bq = or disjoint i64 %.sroa.026.043.1.i, 2   ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bl
  store i64 %i.bp, ptr %i.br, align 8, !noalias !52
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.bl
  %i.bt = load i64, ptr %i.bs, align 8, !noalias !52, !noundef !4
  %i.bu = add i64 %i.bt, %i.bp                    ; 2 uses
  %i.bv = or disjoint i64 %.sroa.026.043.1.i, 3   ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bq
  store i64 %i.bu, ptr %i.bw, align 8, !noalias !52
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.bq
  %i.by = load i64, ptr %i.bx, align 8, !noalias !52, !noundef !4
  %i.bz = add i64 %i.by, %i.bu                    ; 2 uses
  %i.ca = add nuw nsw i64 %.sroa.026.043.1.i, 4   ; 2 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bv
  store i64 %i.bz, ptr %i.cb, align 8, !noalias !52
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.bv
  %i.cd = load i64, ptr %i.cc, align 8, !noalias !52, !noundef !4
  %i.ce = add i64 %i.cd, %i.bz
  %exitcond.1.not.i.3 = icmp eq i64 %i.ca, 256
  br i1 %exitcond.1.not.i.3, label %bb.i, label %bb.h

bb.i:                                             ; preds = %bb.h
  %i.cf = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i
  br i1 %i.p, label %._crit_edge47.1.i, label %.lr.ph46.1.i

.lr.ph46.1.i:                                     ; preds = %bb.i, %bb.j
  %.sroa.023.044.1.i = phi ptr [ %i.co, %bb.j ], [ %i.d, %bb.i ] ; 3 uses
  %i.cg = load i16, ptr %.sroa.023.044.1.i, align 2, !alias.scope !50, !noalias !47, !noundef !4 ; 2 uses
  %i.ch = lshr i16 %i.cg, 8
  %i.ci = zext nneg i16 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ci ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 8, !noalias !52, !noundef !4 ; 4 uses
  %i.cl = icmp ult i64 %i.ck, %.sroa.04.2
  br i1 %i.cl, label %bb.j, label %.loopexit.i

bb.j:                                             ; preds = %.lr.ph46.1.i
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.023.044.1.i, i64 2
  %i.cn = load i16, ptr %i.cm, align 2, !alias.scope !50, !noalias !47, !noundef !4
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.023.044.1.i, i64 4 ; 2 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ck ; 2 uses
  store i16 %i.cg, ptr %i.cp, align 2, !alias.scope !47, !noalias !50
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 2
  store i16 %i.cn, ptr %i.cq, align 2, !alias.scope !47, !noalias !50
  %i.cr = add nuw nsw i64 %i.ck, 1
  store i64 %i.cr, ptr %i.cj, align 8, !noalias !52
  %i.cs = icmp eq ptr %i.co, %i.cf
  br i1 %i.cs, label %._crit_edge47.1.i, label %.lr.ph46.1.i

._crit_edge47.1.i:                                ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !52
  br label %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide18radix_sort_symbols.exit

bb.k:                                             ; preds = %.lr.ph46.i
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.023.044.i, i64 2
  %i.cu = load i16, ptr %i.ct, align 2, !alias.scope !47, !noalias !50, !noundef !4
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.023.044.i, i64 4 ; 2 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.bj ; 2 uses
  store i16 %i.bf, ptr %i.cw, align 2, !alias.scope !50, !noalias !47
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 2
  store i16 %i.cu, ptr %i.cx, align 2, !alias.scope !50, !noalias !47
  %i.cy = add nuw nsw i64 %i.bj, 1
  store i64 %i.cy, ptr %i.bi, align 8, !noalias !52
  %i.cz = icmp eq ptr %i.cv, %i.o
  br i1 %i.cz, label %._crit_edge47.i, label %.lr.ph46.i

.loopexit.i:                                      ; preds = %.lr.ph46.i, %.lr.ph46.1.i
  %.lcssa.i = phi i64 [ %i.ck, %.lr.ph46.1.i ], [ %i.bj, %.lr.ph46.i ]
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %.lcssa.i, i64 noundef %.sroa.04.2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #22, !noalias !52
  unreachable

bb.l:                                             ; preds = %bb.l, %._crit_edge.i
  %.sroa.026.043.i = phi i64 [ 0, %._crit_edge.i ], [ %i.dp, %bb.l ] ; 6 uses
  %.sroa.019.042.i = phi i64 [ 0, %._crit_edge.i ], [ %i.dt, %bb.l ] ; 2 uses
  %i.da = or disjoint i64 %.sroa.026.043.i, 1     ; 2 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.026.043.i
  store i64 %.sroa.019.042.i, ptr %i.db, align 8, !noalias !52
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.026.043.i
  %i.dd = load i64, ptr %i.dc, align 8, !noalias !52, !noundef !4
  %i.de = add i64 %i.dd, %.sroa.019.042.i         ; 2 uses
  %i.df = or disjoint i64 %.sroa.026.043.i, 2     ; 2 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.da
  store i64 %i.de, ptr %i.dg, align 8, !noalias !52
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.da
  %i.di = load i64, ptr %i.dh, align 8, !noalias !52, !noundef !4
  %i.dj = add i64 %i.di, %i.de                    ; 2 uses
  %i.dk = or disjoint i64 %.sroa.026.043.i, 3     ; 2 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.df
  store i64 %i.dj, ptr %i.dl, align 8, !noalias !52
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.df
  %i.dn = load i64, ptr %i.dm, align 8, !noalias !52, !noundef !4
  %i.do = add i64 %i.dn, %i.dj                    ; 2 uses
  %i.dp = add nuw nsw i64 %.sroa.026.043.i, 4     ; 2 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.dk
  store i64 %i.do, ptr %i.dq, align 8, !noalias !52
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.dk
  %i.ds = load i64, ptr %i.dr, align 8, !noalias !52, !noundef !4
  %i.dt = add i64 %i.ds, %i.do
  %exitcond.not.i.3 = icmp eq i64 %i.dp, 256
  br i1 %exitcond.not.i.3, label %bb.f, label %bb.l

_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide18radix_sort_symbols.exit: ; preds = %._crit_edge47.i, %._crit_edge47.1.i
  %.sroa.04.0.lcssa.i.sroa.phi = phi ptr [ %.sroa.04.0.lcssa.i.sroa.gep, %._crit_edge47.1.i ], [ %.sroa.04.0.lcssa.i.sroa.gep211, %._crit_edge47.i ]
  %.sroa.04.0.lcssa.i = phi ptr [ %i.e, %._crit_edge47.1.i ], [ %i.d, %._crit_edge47.i ] ; 24 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !52
  call void @llvm.experimental.noalias.scope.decl(metadata !53)
  switch i64 %.sroa.04.2, label %bb.m [
    i64 0, label %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide21enforce_max_code_size.exit
    i64 1, label %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide28calculate_minimum_redundancy.exit.thread242
  ]

_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide28calculate_minimum_redundancy.exit.thread242: ; preds = %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide18radix_sort_symbols.exit
  store i16 1, ptr %.sroa.04.0.lcssa.i, align 2, !alias.scope !53
  br label %.lr.ph.preheader

bb.m:                                             ; preds = %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide18radix_sort_symbols.exit
  %i.du = load i16, ptr %.sroa.04.0.lcssa.i.sroa.phi, align 2, !alias.scope !53, !noundef !4
  %i.dv = load i16, ptr %.sroa.04.0.lcssa.i, align 2, !alias.scope !53, !noundef !4
  %i.dw = add i16 %i.dv, %i.du
  store i16 %i.dw, ptr %.sroa.04.0.lcssa.i, align 2, !alias.scope !53
  %i.dx = add nsw i64 %.sroa.04.2, -1             ; 2 uses
  %i.dy = icmp samesign ugt i64 %.sroa.04.2, 2
  br i1 %i.dy, label %.lr.ph.i70, label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %bb.m
  %i.dz = getelementptr [4 x i8], ptr %.sroa.04.0.lcssa.i, i64 %.sroa.04.2
  %i.ea = getelementptr i8, ptr %i.dz, i64 -8
  store i16 0, ptr %i.ea, align 2, !alias.scope !53
  br label %._crit_edge85.i

._crit_edge.i72:                                  ; preds = %bb.ad
  %i.eb = add nsw i64 %.sroa.04.2, -2             ; 3 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %.sroa.04.0.lcssa.i, i64 %i.eb
  store i16 0, ptr %i.ec, align 2, !alias.scope !53
  br label %.lr.ph84.preheader.i

.lr.ph.i70:                                       ; preds = %bb.m, %bb.ad
  %.sroa.0.080.i = phi i64 [ %.sroa.0.2.i, %bb.ad ], [ 0, %bb.m ] ; 8 uses
  %.sroa.09.079.i = phi i64 [ %.sroa.09.2.i, %bb.ad ], [ 2, %bb.m ] ; 4 uses
  %.sroa.034.078.i = phi i64 [ %i.ed, %bb.ad ], [ 1, %bb.m ] ; 8 uses
  %i.ed = add nuw i64 %.sroa.034.078.i, 1         ; 2 uses
  %.not50.i = icmp ult i64 %.sroa.09.079.i, %.sroa.04.2
  br i1 %.not50.i, label %bb.s, label %bb.x

._crit_edge85.i.loopexit:                         ; preds = %bb.r
  %i.ee = trunc nuw nsw i64 %i.eb to i32
  br label %._crit_edge85.i

._crit_edge85.i:                                  ; preds = %._crit_edge85.i.loopexit, %._crit_edge.thread.i
  %i.ef = phi i32 [ 0, %._crit_edge.thread.i ], [ %i.ee, %._crit_edge85.i.loopexit ]
  %i.eg = trunc nuw nsw i64 %i.dx to i32
  %i.eh = trunc nuw nsw i64 %.sroa.04.2 to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge98.i, %._crit_edge85.i
  %.sroa.020.0103.i = phi i32 [ 1, %._crit_edge85.i ], [ %i.es, %._crit_edge98.i ] ; 2 uses
  %.sroa.026.0102.i = phi i16 [ 0, %._crit_edge85.i ], [ %i.et, %._crit_edge98.i ] ; 3 uses
  %.sroa.029.0101.i = phi i32 [ %i.ef, %._crit_edge85.i ], [ %.sroa.029.1.lcssa.i, %._crit_edge98.i ] ; 7 uses
  %.sroa.032.0100.i = phi i32 [ %i.eg, %._crit_edge85.i ], [ %.sroa.032.1.lcssa.i, %._crit_edge98.i ] ; 2 uses
  %i.ei = icmp sgt i32 %.sroa.029.0101.i, -1
  br i1 %i.ei, label %.lr.ph88.preheader.i, label %._crit_edge89.i

.lr.ph88.preheader.i:                             ; preds = %.preheader.i
  %i.ej = add nuw i32 %.sroa.029.0101.i, 1
  %.first_iter133.i = icmp ult i32 %.sroa.029.0101.i, %i.eh
  br i1 %.first_iter133.i, label %.lr.ph88.i.us, label %.lr.ph88.i

.lr.ph88.i.us:                                    ; preds = %.lr.ph88.preheader.i, %bb.n
  %.sroa.023.187.i.us = phi i32 [ %i.eo, %bb.n ], [ 0, %.lr.ph88.preheader.i ] ; 3 uses
  %.sroa.029.186.i.us = phi i32 [ %i.ep, %bb.n ], [ %.sroa.029.0101.i, %.lr.ph88.preheader.i ] ; 3 uses
  %i.ek = zext nneg i32 %.sroa.029.186.i.us to i64
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %.sroa.04.0.lcssa.i, i64 %i.ek
  %i.em = load i16, ptr %i.el, align 2, !alias.scope !53, !noundef !4
  %i.en = icmp eq i16 %i.em, %.sroa.026.0102.i
  br i1 %i.en, label %bb.n, label %._crit_edge89.i

bb.n:                                             ; preds = %.lr.ph88.i.us
  %i.eo = add nuw i32 %.sroa.023.187.i.us, 1
  %i.ep = add nsw i32 %.sroa.029.186.i.us, -1
  %exitcond134.not.i.us = icmp eq i32 %.sroa.023.187.i.us, %.sroa.029.0101.i
  br i1 %exitcond134.not.i.us, label %._crit_edge89.i, label %.lr.ph88.i.us

.lr.ph88.i:                                       ; preds = %.lr.ph88.preheader.i
  %i.eq = zext nneg i32 %.sroa.029.0101.i to i64
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.eq, i64 noundef range(i64 0, 289) %.sroa.04.2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #22, !noalias !53
  unreachable

._crit_edge89.i:                                  ; preds = %.lr.ph88.i.us, %bb.n, %.preheader.i
  %.sroa.029.1.lcssa.i = phi i32 [ %.sroa.029.0101.i, %.preheader.i ], [ -1, %bb.n ], [ %.sroa.029.186.i.us, %.lr.ph88.i.us ]
  %.sroa.023.1.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %i.ej, %bb.n ], [ %.sroa.023.187.i.us, %.lr.ph88.i.us ] ; 3 uses
  %i.er = icmp sgt i32 %.sroa.020.0103.i, %.sroa.023.1.lcssa.i
  br i1 %i.er, label %.lr.ph97.i, label %._crit_edge98.i

._crit_edge98.i:                                  ; preds = %bb.o, %._crit_edge89.i
  %.sroa.032.1.lcssa.i = phi i32 [ %.sroa.032.0100.i, %._crit_edge89.i ], [ %i.ey, %bb.o ]
  %i.es = shl i32 %.sroa.023.1.lcssa.i, 1         ; 2 uses
  %i.et = add i16 %.sroa.026.0102.i, 1
  %i.eu = icmp sgt i32 %i.es, 0
  br i1 %i.eu, label %.preheader.i, label %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide28calculate_minimum_redundancy.exit

.lr.ph97.i:                                       ; preds = %._crit_edge89.i, %bb.o
  %.sroa.020.195.i = phi i32 [ %i.ez, %bb.o ], [ %.sroa.020.0103.i, %._crit_edge89.i ]
  %.sroa.032.194.i = phi i32 [ %i.ey, %bb.o ], [ %.sroa.032.0100.i, %._crit_edge89.i ] ; 2 uses
  %i.ev = sext i32 %.sroa.032.194.i to i64        ; 3 uses
  %i.ew = icmp ugt i64 %.sroa.04.2, %i.ev
  br i1 %i.ew, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph97.i
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %.sroa.04.0.lcssa.i, i64 %i.ev
  store i16 %.sroa.026.0102.i, ptr %i.ex, align 2, !alias.scope !53
  %i.ey = add i32 %.sroa.032.194.i, -1            ; 2 uses
  %i.ez = add nsw i32 %.sroa.020.195.i, -1        ; 2 uses
  %i.fa = icmp sgt i32 %i.ez, %.sroa.023.1.lcssa.i
  br i1 %i.fa, label %.lr.ph97.i, label %._crit_edge98.i

bb.p:                                             ; preds = %.lr.ph97.i
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.ev, i64 noundef range(i64 0, 289) %.sroa.04.2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #22, !noalias !53
  unreachable

.lr.ph84.preheader.i:                             ; preds = %._crit_edge.i72, %bb.r
  %.sroa.036.082.i = phi i64 [ %i.fb, %bb.r ], [ %i.eb, %._crit_edge.i72 ]
  %i.fb = add nsw i64 %.sroa.036.082.i, -1        ; 3 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.04.0.lcssa.i, i64 %i.fb ; 2 uses
  %i.fd = load i16, ptr %i.fc, align 2, !alias.scope !53, !noundef !4
  %i.fe = zext i16 %i.fd to i64                   ; 3 uses
  %i.ff = icmp samesign ugt i64 %.sroa.04.2, %i.fe
  br i1 %i.ff, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph84.preheader.i
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.fe, i64 noundef range(i64 0, 289) %.sroa.04.2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #22, !noalias !53
  unreachable

bb.r:                                             ; preds = %.lr.ph84.preheader.i
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.04.0.lcssa.i, i64 %i.fe
  %i.fh = load i16, ptr %i.fg, align 2, !alias.scope !53, !noundef !4
  %i.fi = add i16 %i.fh, 1
  store i16 %i.fi, ptr %i.fc, align 2, !alias.scope !53
  %.not.i73 = icmp eq i64 %i.fb, 0
  br i1 %.not.i73, label %._crit_edge85.i.loopexit, label %.lr.ph84.preheader.i

bb.s:                                             ; preds = %.lr.ph.i70
  %i.fj = icmp ult i64 %.sroa.0.080.i, %.sroa.04.2
  br i1 %i.fj, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.080.i, i64 noundef range(i64 0, 289) %.sroa.04.2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #22, !noalias !53
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.04.0.lcssa.i, i64 %.sroa.0.080.i
  %i.fl = load i16, ptr %i.fk, align 2, !alias.scope !53, !noundef !4
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.04.0.lcssa.i, i64 %.sroa.09.079.i
  %i.fn = load i16, ptr %i.fm, align 2, !alias.scope !53, !noundef !4 ; 2 uses
  %i.fo = icmp ult i16 %i.fl, %i.fn
  br i1 %i.fo, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.04.0.lcssa.i, i64 %.sroa.034.078.i
  store i16 %i.fn, ptr %i.fp, align 2, !alias.scope !53
  %i.fq = add nuw nsw i64 %.sroa.09.079.i, 1
  br label %bb.w

bb.w:                                             ; preds = %bb.y, %bb.v
  %.sroa.09.1.i = phi i64 [ %.sroa.09.079.i, %bb.y ], [ %i.fq, %bb.v ] ; 5 uses
  %.sroa.0.1.i = phi i64 [ %i.fw, %bb.y ], [ %.sroa.0.080.i, %bb.v ] ; 7 uses
  %.not51.i = icmp ult i64 %.sroa.09.1.i, %.sroa.04.2
  br i1 %.not51.i, label %bb.aa, label %bb.ae

bb.x:                                             ; preds = %bb.u, %.lr.ph.i70
  %i.fr = icmp ult i64 %.sroa.0.080.i, %.sroa.04.2
  br i1 %i.fr, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %.sroa.04.0.lcssa.i, i64 %.sroa.0.080.i ; 2 uses
  %i.ft = load i16, ptr %i.fs, align 2, !alias.scope !53, !noundef !4
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.04.0.lcssa.i, i64 %.sroa.034.078.i
  store i16 %i.ft, ptr %i.fu, align 2, !alias.scope !53
  %i.fv = trunc nuw nsw i64 %.sroa.034.078.i to i16
  store i16 %i.fv, ptr %i.fs, align 2, !alias.scope !53
  %i.fw = add nuw nsw i64 %.sroa.0.080.i, 1
  br label %bb.w

bb.z:                                             ; preds = %bb.x
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.080.i, i64 noundef range(i64 0, 289) %.sroa.04.2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #22, !noalias !53
  unreachable

bb.aa:                                            ; preds = %bb.w
  %i.fx = icmp ult i64 %.sroa.0.1.i, %.sroa.034.078.i
  br i1 %i.fx, label %bb.ab, label %._crit_edge212

._crit_edge212:                                   ; preds = %bb.aa
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr %.sroa.04.0.lcssa.i, i64 %.sroa.09.1.i
  %.pre213 = load i16, ptr %.phi.trans.insert, align 2, !alias.scope !53
  br label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %.sroa.04.0.lcssa.i, i64 %.sroa.0.1.i
  %i.fz = load i16, ptr %i.fy, align 2, !alias.scope !53, !noundef !4
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %.sroa.04.0.lcssa.i, i64 %.sroa.09.1.i
  %i.gb = load i16, ptr %i.ga, align 2, !alias.scope !53, !noundef !4 ; 2 uses
  %i.gc = icmp ult i16 %i.fz, %i.gb
  br i1 %i.gc, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge212, %bb.ab
  %i.gd = phi i16 [ %.pre213, %._crit_edge212 ], [ %i.gb, %bb.ab ]
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %.sroa.04.0.lcssa.i, i64 %.sroa.034.078.i ; 2 uses
  %i.gf = load i16, ptr %i.ge, align 2, !alias.scope !53, !noundef !4
  %i.gg = add i16 %i.gd, %i.gf
  store i16 %i.gg, ptr %i.ge, align 2, !alias.scope !53
  %i.gh = add nuw nsw i64 %.sroa.09.1.i, 1
  br label %bb.ad

bb.ad:                                            ; preds = %bb.af, %bb.ac
  %.sroa.09.2.i = phi i64 [ %.sroa.09.1.i, %bb.af ], [ %i.gh, %bb.ac ]
  %.sroa.0.2.i = phi i64 [ %i.gp, %bb.af ], [ %.sroa.0.1.i, %bb.ac ]
  %exitcond.not.i71 = icmp eq i64 %i.ed, %i.dx
  br i1 %exitcond.not.i71, label %._crit_edge.i72, label %.lr.ph.i70

bb.ae:                                            ; preds = %bb.ab, %bb.w
  %i.gi = icmp ult i64 %.sroa.0.1.i, %.sroa.04.2
  br i1 %i.gi, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.04.0.lcssa.i, i64 %.sroa.034.078.i ; 2 uses
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.04.0.lcssa.i, i64 %.sroa.0.1.i ; 2 uses
  %i.gl = load i16, ptr %i.gj, align 2, !alias.scope !53, !noundef !4
  %i.gm = load i16, ptr %i.gk, align 2, !alias.scope !53, !noundef !4
  %i.gn = add i16 %i.gm, %i.gl
  store i16 %i.gn, ptr %i.gj, align 2, !alias.scope !53
  %i.go = trunc nuw nsw i64 %.sroa.034.078.i to i16
  store i16 %i.go, ptr %i.gk, align 2, !alias.scope !53
  %i.gp = add nuw nsw i64 %.sroa.0.1.i, 1
  br label %bb.ad

bb.ag:                                            ; preds = %bb.ae
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.1.i, i64 noundef range(i64 0, 289) %.sroa.04.2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #22, !noalias !53
  unreachable

_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide28calculate_minimum_redundancy.exit: ; preds = %._crit_edge98.i
  br i1 %i.p, label %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide21enforce_max_code_size.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide28calculate_minimum_redundancy.exit.thread242, %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide28calculate_minimum_redundancy.exit
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i, i64 %.idx.i
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ak
  %.sroa.015.0162 = phi ptr [ %i.jg, %bb.ak ], [ %.sroa.04.0.lcssa.i, %.lr.ph.preheader ] ; 2 uses
  %i.gr = load i16, ptr %.sroa.015.0162, align 2, !noundef !4 ; 2 uses
  %i.gs = zext i16 %i.gr to i64                   ; 2 uses
  %i.gt = icmp ult i16 %i.gr, 33
  br i1 %i.gt, label %bb.ak, label %bb.al

._crit_edge:                                      ; preds = %bb.ak
  call void @llvm.experimental.noalias.scope.decl(metadata !56)
  %i.gu = icmp samesign ult i64 %.sroa.04.2, 2
  br i1 %i.gu, label %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide21enforce_max_code_size.exit, label %vector.ph

vector.ph:                                        ; preds = %._crit_edge
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %3 ; 10 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 4 ; 2 uses
  %i.gx = sub nuw nsw i64 32, %3                  ; 3 uses
  %n.vec = and i64 %i.gx, 56                      ; 4 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gv, i64 20
  %wide.load = load <4 x i32>, ptr %i.gw, align 4, !alias.scope !56 ; 2 uses
  %wide.load310 = load <4 x i32>, ptr %i.gy, align 4, !alias.scope !56 ; 2 uses
  %i.gz = icmp eq i64 %n.vec, 8
  br i1 %i.gz, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gv, i64 36
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gv, i64 52
  %wide.load.1 = load <4 x i32>, ptr %i.ha, align 4, !alias.scope !56
  %wide.load310.1 = load <4 x i32>, ptr %i.hb, align 4, !alias.scope !56
  %i.hc = add <4 x i32> %wide.load.1, %wide.load  ; 2 uses
  %i.hd = add <4 x i32> %wide.load310.1, %wide.load310 ; 2 uses
  %i.he = icmp eq i64 %n.vec, 16
  br i1 %i.he, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gv, i64 68
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gv, i64 84
  %wide.load.2 = load <4 x i32>, ptr %i.hf, align 4, !alias.scope !56
  %wide.load310.2 = load <4 x i32>, ptr %i.hg, align 4, !alias.scope !56
  %i.hh = add <4 x i32> %wide.load.2, %i.hc
  %i.hi = add <4 x i32> %wide.load310.2, %i.hd
  br label %middle.block

middle.block:                                     ; preds = %vector.body.2, %vector.body.1, %vector.ph
  %.lcssa327 = phi <4 x i32> [ %wide.load, %vector.ph ], [ %i.hc, %vector.body.1 ], [ %i.hh, %vector.body.2 ]
  %.lcssa326 = phi <4 x i32> [ %wide.load310, %vector.ph ], [ %i.hd, %vector.body.1 ], [ %i.hi, %vector.body.2 ]
  %bin.rdx = add <4 x i32> %.lcssa326, %.lcssa327
  %i.hj = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.gx, %n.vec
  br i1 %cmp.n, label %_RNvXs8_NtNtCshzWfHUSfYae_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSlE5indexCsjkkKzr5dxZe_11miniz_oxide.exit.i, label %scalar.ph

scalar.ph:                                        ; preds = %middle.block, %scalar.ph
  %.sroa.04.0.i.i = phi i64 [ %i.hm, %scalar.ph ], [ %n.vec, %middle.block ] ; 2 uses
  %.sroa.02.0.i.i = phi i32 [ %i.hl, %scalar.ph ], [ %i.hj, %middle.block ]
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %.sroa.04.0.i.i
  %.val.i.i = load i32, ptr %i.hk, align 4, !alias.scope !56, !noundef !4
  %i.hl = add i32 %.val.i.i, %.sroa.02.0.i.i      ; 2 uses
  %i.hm = add nuw nsw i64 %.sroa.04.0.i.i, 1      ; 2 uses
  %i.hn = icmp eq i64 %i.hm, %i.gx
  br i1 %i.hn, label %_RNvXs8_NtNtCshzWfHUSfYae_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSlE5indexCsjkkKzr5dxZe_11miniz_oxide.exit.i, label %scalar.ph, !llvm.loop !59

_RNvXs8_NtNtCshzWfHUSfYae_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSlE5indexCsjkkKzr5dxZe_11miniz_oxide.exit.i: ; preds = %scalar.ph, %middle.block
  %.lcssa289 = phi i32 [ %i.hj, %middle.block ], [ %i.hl, %scalar.ph ]
  %i.ho = load i32, ptr %i.gv, align 4, !alias.scope !56, !noundef !4
  %i.hp = add i32 %i.ho, %.lcssa289
  store i32 %i.hp, ptr %i.gv, align 4, !alias.scope !56
  %.idx.i74 = shl nuw nsw i64 %3, 2               ; 2 uses
  %.add.i = add nuw nsw i64 %.idx.i74, 4          ; 2 uses
  %i.hq = add nsw i64 %.idx.i74, -4               ; 2 uses
  %i.hr = lshr exact i64 %i.hq, 2
  %i.hs = add nuw nsw i64 %i.hr, 1                ; 2 uses
  %xtraiter347 = and i64 %i.hs, 3                 ; 3 uses
  %i.ht = icmp ult i64 %i.hq, 12
  br i1 %i.ht, label %.lr.ph.i.i.epil.preheader, label %_RNvXs8_NtNtCshzWfHUSfYae_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSlE5indexCsjkkKzr5dxZe_11miniz_oxide.exit.i.new

_RNvXs8_NtNtCshzWfHUSfYae_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSlE5indexCsjkkKzr5dxZe_11miniz_oxide.exit.i.new: ; preds = %_RNvXs8_NtNtCshzWfHUSfYae_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSlE5indexCsjkkKzr5dxZe_11miniz_oxide.exit.i
  %unroll_iter = and i64 %i.hs, 9223372036854775804
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %_RNvXs8_NtNtCshzWfHUSfYae_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSlE5indexCsjkkKzr5dxZe_11miniz_oxide.exit.i.new
  %.sroa.0.011.i.i = phi i32 [ 0, %_RNvXs8_NtNtCshzWfHUSfYae_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSlE5indexCsjkkKzr5dxZe_11miniz_oxide.exit.i.new ], [ %i.ih, %.lr.ph.i.i ]
  %.sroa.05.010.i.i = phi i32 [ 0, %_RNvXs8_NtNtCshzWfHUSfYae_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSlE5indexCsjkkKzr5dxZe_11miniz_oxide.exit.i.new ], [ %i.ii, %.lr.ph.i.i ] ; 5 uses
  %.sroa.2.09.i.idx.i = phi i64 [ %.add.i, %_RNvXs8_NtNtCshzWfHUSfYae_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSlE5indexCsjkkKzr5dxZe_11miniz_oxide.exit.i.new ], [ %.sroa.2.09.i.add.i.3, %.lr.ph.i.i ] ; 4 uses
  %niter = phi i64 [ 0, %_RNvXs8_NtNtCshzWfHUSfYae_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSlE5indexCsjkkKzr5dxZe_11miniz_oxide.exit.i.new ], [ %niter.next.3, %.lr.ph.i.i ]
  %i.hu = getelementptr i8, ptr %i.g, i64 %.sroa.2.09.i.idx.i
  %.ptr.i = getelementptr i8, ptr %i.hu, i64 -4
  %.val.i14.i = load i32, ptr %.ptr.i, align 4, !alias.scope !56, !noundef !4
  %i.hv = shl i32 %.val.i14.i, %.sroa.05.010.i.i
  %i.hw = add i32 %i.hv, %.sroa.0.011.i.i
  %i.hx = or disjoint i32 %.sroa.05.010.i.i, 1
  %i.hy = getelementptr i8, ptr %i.g, i64 %.sroa.2.09.i.idx.i
  %.ptr.i.1 = getelementptr i8, ptr %i.hy, i64 -8
  %.val.i14.i.1 = load i32, ptr %.ptr.i.1, align 4, !alias.scope !56, !noundef !4
  %i.hz = shl i32 %.val.i14.i.1, %i.hx
  %i.ia = add i32 %i.hz, %i.hw
  %i.ib = or disjoint i32 %.sroa.05.010.i.i, 2
  %i.ic = getelementptr i8, ptr %i.g, i64 %.sroa.2.09.i.idx.i
  %.ptr.i.2 = getelementptr i8, ptr %i.ic, i64 -12
  %.val.i14.i.2 = load i32, ptr %.ptr.i.2, align 4, !alias.scope !56, !noundef !4
  %i.id = shl i32 %.val.i14.i.2, %i.ib
  %i.ie = add i32 %i.id, %i.ia
  %i.if = or disjoint i32 %.sroa.05.010.i.i, 3
  %.sroa.2.09.i.add.i.3 = add nsw i64 %.sroa.2.09.i.idx.i, -16 ; 3 uses
  %.ptr.i.3 = getelementptr inbounds i8, ptr %i.g, i64 %.sroa.2.09.i.add.i.3
  %.val.i14.i.3 = load i32, ptr %.ptr.i.3, align 4, !alias.scope !56, !noundef !4
  %i.ig = shl i32 %.val.i14.i.3, %i.if
  %i.ih = add i32 %i.ig, %i.ie                    ; 3 uses
  %i.ii = add nuw nsw i32 %.sroa.05.010.i.i, 4    ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterlENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator5rfoldmNCINvNvXs_NtNtBR_8adapters9enumerateINtB1Y_9EnumeratepENtNtBP_8iterator8Iterator4fold9enumerateRlmNCNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB3w_12HuffmanOxide21enforce_max_code_size0E0EB3A_.exit.i.unr-lcssa, label %.lr.ph.i.i

_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterlENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator5rfoldmNCINvNvXs_NtNtBR_8adapters9enumerateINtB1Y_9EnumeratepENtNtBP_8iterator8Iterator4fold9enumerateRlmNCNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB3w_12HuffmanOxide21enforce_max_code_size0E0EB3A_.exit.i.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod348.not = icmp eq i64 %xtraiter347, 0
  br i1 %lcmp.mod348.not, label %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterlENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator5rfoldmNCINvNvXs_NtNtBR_8adapters9enumerateINtB1Y_9EnumeratepENtNtBP_8iterator8Iterator4fold9enumerateRlmNCNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB3w_12HuffmanOxide21enforce_max_code_size0E0EB3A_.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterlENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator5rfoldmNCINvNvXs_NtNtBR_8adapters9enumerateINtB1Y_9EnumeratepENtNtBP_8iterator8Iterator4fold9enumerateRlmNCNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB3w_12HuffmanOxide21enforce_max_code_size0E0EB3A_.exit.i.unr-lcssa, %_RNvXs8_NtNtCshzWfHUSfYae_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSlE5indexCsjkkKzr5dxZe_11miniz_oxide.exit.i
  %.sroa.0.011.i.i.epil.init = phi i32 [ 0, %_RNvXs8_NtNtCshzWfHUSfYae_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSlE5indexCsjkkKzr5dxZe_11miniz_oxide.exit.i ], [ %i.ih, %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterlENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator5rfoldmNCINvNvXs_NtNtBR_8adapters9enumerateINtB1Y_9EnumeratepENtNtBP_8iterator8Iterator4fold9enumerateRlmNCNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB3w_12HuffmanOxide21enforce_max_code_size0E0EB3A_.exit.i.unr-lcssa ]
  %.sroa.05.010.i.i.epil.init = phi i32 [ 0, %_RNvXs8_NtNtCshzWfHUSfYae_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSlE5indexCsjkkKzr5dxZe_11miniz_oxide.exit.i ], [ %i.ii, %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterlENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator5rfoldmNCINvNvXs_NtNtBR_8adapters9enumerateINtB1Y_9EnumeratepENtNtBP_8iterator8Iterator4fold9enumerateRlmNCNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB3w_12HuffmanOxide21enforce_max_code_size0E0EB3A_.exit.i.unr-lcssa ]
  %.sroa.2.09.i.idx.i.epil.init = phi i64 [ %.add.i, %_RNvXs8_NtNtCshzWfHUSfYae_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSlE5indexCsjkkKzr5dxZe_11miniz_oxide.exit.i ], [ %.sroa.2.09.i.add.i.3, %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterlENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator5rfoldmNCINvNvXs_NtNtBR_8adapters9enumerateINtB1Y_9EnumeratepENtNtBP_8iterator8Iterator4fold9enumerateRlmNCNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB3w_12HuffmanOxide21enforce_max_code_size0E0EB3A_.exit.i.unr-lcssa ]
  %lcmp.mod350 = icmp ne i64 %xtraiter347, 0
  call void @llvm.assume(i1 %lcmp.mod350)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.sroa.0.011.i.i.epil = phi i32 [ %i.ik, %.lr.ph.i.i.epil ], [ %.sroa.0.011.i.i.epil.init, %.lr.ph.i.i.epil.preheader ]
  %.sroa.05.010.i.i.epil = phi i32 [ %i.il, %.lr.ph.i.i.epil ], [ %.sroa.05.010.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %.sroa.2.09.i.idx.i.epil = phi i64 [ %.sroa.2.09.i.add.i.epil, %.lr.ph.i.i.epil ], [ %.sroa.2.09.i.idx.i.epil.init, %.lr.ph.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %.sroa.2.09.i.add.i.epil = add nsw i64 %.sroa.2.09.i.idx.i.epil, -4 ; 2 uses
  %.ptr.i.epil = getelementptr inbounds i8, ptr %i.g, i64 %.sroa.2.09.i.add.i.epil
  %.val.i14.i.epil = load i32, ptr %.ptr.i.epil, align 4, !alias.scope !56, !noundef !4
  %i.ij = shl i32 %.val.i14.i.epil, %.sroa.05.010.i.i.epil
  %i.ik = add i32 %i.ij, %.sroa.0.011.i.i.epil    ; 2 uses
  %i.il = add nuw nsw i32 %.sroa.05.010.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter347
  br i1 %epil.iter.cmp.not, label %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterlENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator5rfoldmNCINvNvXs_NtNtBR_8adapters9enumerateINtB1Y_9EnumeratepENtNtBP_8iterator8Iterator4fold9enumerateRlmNCNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB3w_12HuffmanOxide21enforce_max_code_size0E0EB3A_.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !62

_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterlENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator5rfoldmNCINvNvXs_NtNtBR_8adapters9enumerateINtB1Y_9EnumeratepENtNtBP_8iterator8Iterator4fold9enumerateRlmNCNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB3w_12HuffmanOxide21enforce_max_code_size0E0EB3A_.exit.i: ; preds = %.lr.ph.i.i.epil, %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterlENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator5rfoldmNCINvNvXs_NtNtBR_8adapters9enumerateINtB1Y_9EnumeratepENtNtBP_8iterator8Iterator4fold9enumerateRlmNCNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB3w_12HuffmanOxide21enforce_max_code_size0E0EB3A_.exit.i.unr-lcssa
  %.lcssa324 = phi i32 [ %i.ih, %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterlENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator5rfoldmNCINvNvXs_NtNtBR_8adapters9enumerateINtB1Y_9EnumeratepENtNtBP_8iterator8Iterator4fold9enumerateRlmNCNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB3w_12HuffmanOxide21enforce_max_code_size0E0EB3A_.exit.i.unr-lcssa ], [ %i.ik, %.lr.ph.i.i.epil ] ; 2 uses
  %i.im = trunc nuw nsw i64 %3 to i32
  %i.in = shl nuw nsw i32 1, %i.im                ; 2 uses
  %i.io = icmp ult i32 %i.in, %.lcssa324
  br i1 %i.io, label %.lr.ph.i75, label %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide21enforce_max_code_size.exit

.lr.ph.i75:                                       ; preds = %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterlENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator5rfoldmNCINvNvXs_NtNtBR_8adapters9enumerateINtB1Y_9EnumeratepENtNtBP_8iterator8Iterator4fold9enumerateRlmNCNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB3w_12HuffmanOxide21enforce_max_code_size0E0EB3A_.exit.i, %.loopexit.i76
  %.sroa.0.026.i = phi i32 [ %i.ip, %.loopexit.i76 ], [ %i.in, %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterlENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator5rfoldmNCINvNvXs_NtNtBR_8adapters9enumerateINtB1Y_9EnumeratepENtNtBP_8iterator8Iterator4fold9enumerateRlmNCNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB3w_12HuffmanOxide21enforce_max_code_size0E0EB3A_.exit.i ]
  %i.ip = add i32 %.sroa.0.026.i, 1               ; 2 uses
  %i.iq = load i32, ptr %i.gv, align 4, !alias.scope !56, !noundef !4
  %i.ir = add i32 %i.iq, -1
  store i32 %i.ir, ptr %i.gv, align 4, !alias.scope !56
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ai
  %i.is = icmp ugt i64 %i.it, 1
  br i1 %i.is, label %bb.ai, label %.loopexit.i76

.loopexit.i76:                                    ; preds = %bb.ah, %bb.aj
  %exitcond.not.i77 = icmp eq i32 %i.ip, %.lcssa324
  br i1 %exitcond.not.i77, label %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide21enforce_max_code_size.exit, label %.lr.ph.i75

bb.ai:                                            ; preds = %.lr.ph.i75, %bb.ah
  %.sroa.03.0.i308 = phi i64 [ %3, %.lr.ph.i75 ], [ %i.it, %bb.ah ] ; 3 uses
  %i.it = add nsw i64 %.sroa.03.0.i308, -1        ; 4 uses
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.it
  %i.iv = load i32, ptr %i.iu, align 4, !alias.scope !56, !noundef !4 ; 2 uses
  %i.iw = icmp eq i32 %i.iv, 0
  br i1 %i.iw, label %bb.ah, label %5

5:                                                ; preds = %bb.ai
  %6 = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.it
  %7 = add i32 %i.iv, -1
  store i32 %7, ptr %6, align 4, !alias.scope !56
  %.not.i78 = icmp eq i64 %.sroa.03.0.i308, 33
  br i1 %.not.i78, label %8, label %bb.aj

bb.aj:                                            ; preds = %5
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.sroa.03.0.i308 ; 2 uses
  %i.iy = load i32, ptr %i.ix, align 4, !alias.scope !56, !noundef !4
  %i.iz = add i32 %i.iy, 2
  store i32 %i.iz, ptr %i.ix, align 4, !alias.scope !56
  br label %.loopexit.i76

8:                                                ; preds = %5
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef 33, i64 noundef 33, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #22, !noalias !56
  unreachable

_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide21enforce_max_code_size.exit: ; preds = %.loopexit.i76, %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide18radix_sort_symbols.exit, %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide28calculate_minimum_redundancy.exit, %._crit_edge, %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterlENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator5rfoldmNCINvNvXs_NtNtBR_8adapters9enumerateINtB1Y_9EnumeratepENtNtBP_8iterator8Iterator4fold9enumerateRlmNCNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB3w_12HuffmanOxide21enforce_max_code_size0E0EB3A_.exit.i
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 3456
  %i.jb = getelementptr inbounds nuw [288 x i8], ptr %i.ja, i64 %1 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(288) %i.jb, i8 0, i64 288, i1 false)
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 1728
  %i.jd = getelementptr inbounds nuw [576 x i8], ptr %i.jc, i64 %1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(576) %i.jd, i8 0, i64 576, i1 false), !alias.scope !64
  %i.je = getelementptr inbounds nuw i8, ptr %i.g, i64 132
  %i.jf = add nuw nsw i64 %3, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.g, ptr %i.c, align 8
  %.sroa.018.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.je, ptr %.sroa.018.sroa.0.sroa.2.0..sroa_idx, align 8
  %.sroa.018.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  store i64 0, ptr %.sroa.018.sroa.0.sroa.3.0..sroa_idx, align 8
  %.sroa.018.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  store i64 %i.jf, ptr %.sroa.018.sroa.2.0..sroa_idx, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 3 uses
  store i64 1, ptr %.sroa.2.0..sroa_idx, align 8
  br label %bb.am

bb.ak:                                            ; preds = %.lr.ph
  %i.jg = getelementptr inbounds nuw i8, ptr %.sroa.015.0162, i64 4 ; 2 uses
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.gs ; 2 uses
  %i.ji = load i32, ptr %i.jh, align 4, !noundef !4
  %i.jj = add i32 %i.ji, 1
  store i32 %i.jj, ptr %i.jh, align 4
  %i.jk = icmp eq ptr %i.jg, %i.gq
  br i1 %i.jk, label %._crit_edge, label %.lr.ph

bb.al:                                            ; preds = %.lr.ph
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.gs, i64 noundef 33, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #22
  unreachable

thread-pre-split:                                 ; preds = %bb.ax, %bb.av
  %.pr = load i64, ptr %.sroa.2.0..sroa_idx, align 8
  br label %bb.am

bb.am:                                            ; preds = %thread-pre-split, %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide21enforce_max_code_size.exit
  %i.jl = phi i64 [ %.pr, %thread-pre-split ], [ 1, %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide21enforce_max_code_size.exit ] ; 2 uses
  %.sroa.04.1 = phi i64 [ %i.ka, %thread-pre-split ], [ %.sroa.04.2, %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide21enforce_max_code_size.exit ] ; 5 uses
  %.not = icmp eq i64 %i.jl, 0
  br i1 %.not, label %bb.an, label %bb.ao, !prof !67

bb.an:                                            ; preds = %bb.am
  %i.jm = load i64, ptr %.sroa.018.sroa.2.0..sroa_idx, align 8, !noundef !4 ; 2 uses
  %i.jn = icmp eq i64 %i.jm, 0
  br i1 %i.jn, label %bb.ar, label %bb.ap

bb.ao:                                            ; preds = %bb.am
  store i64 0, ptr %.sroa.2.0..sroa_idx, align 8
  %i.jo = call fastcc { i64, ptr } @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4takeINtB4_4TakeINtNtB6_9enumerate9EnumerateINtNtNtBa_5slice4iter4IterlEEENtNtNtB8_6traits8iterator8Iterator3nthCsjkkKzr5dxZe_11miniz_oxide(ptr noalias nofree noundef align 8 dereferenceable(32) %i.c, i64 noundef %i.jl) #23
  br label %bb.as

bb.ap:                                            ; preds = %bb.an
  %i.jp = add i64 %i.jm, -1
  store i64 %i.jp, ptr %.sroa.018.sroa.2.0..sroa_idx, align 8
  %i.jq = load ptr, ptr %i.c, align 8, !alias.scope !68, !nonnull !4, !noundef !4 ; 3 uses
  %i.jr = load ptr, ptr %.sroa.018.sroa.0.sroa.2.0..sroa_idx, align 8, !alias.scope !68, !nonnull !4, !noundef !4
  %i.js = icmp eq ptr %i.jq, %i.jr
  br i1 %i.js, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterlEENtNtNtB8_6traits8iterator8Iterator4nextCsjkkKzr5dxZe_11miniz_oxide.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jq, i64 4
  store ptr %i.jt, ptr %i.c, align 8, !alias.scope !68
  %i.ju = load i64, ptr %.sroa.018.sroa.0.sroa.3.0..sroa_idx, align 8, !alias.scope !73, !noundef !4 ; 2 uses
  %i.jv = add i64 %i.ju, 1
  store i64 %i.jv, ptr %.sroa.018.sroa.0.sroa.3.0..sroa_idx, align 8, !alias.scope !73
  br label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterlEENtNtNtB8_6traits8iterator8Iterator4nextCsjkkKzr5dxZe_11miniz_oxide.exit

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterlEENtNtNtB8_6traits8iterator8Iterator4nextCsjkkKzr5dxZe_11miniz_oxide.exit: ; preds = %bb.ap, %bb.aq
  %.sroa.2.0.i = phi ptr [ %i.jq, %bb.aq ], [ null, %bb.ap ]
  %.sroa.0.0.i = phi i64 [ %i.ju, %bb.aq ], [ undef, %bb.ap ]
  %i.jw = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i, 0
  %i.jx = insertvalue { i64, ptr } %i.jw, ptr %.sroa.2.0.i, 1
  br label %bb.as

bb.ar:                                            ; preds = %bb.an, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %.loopexit

bb.as:                                            ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterlEENtNtNtB8_6traits8iterator8Iterator4nextCsjkkKzr5dxZe_11miniz_oxide.exit, %bb.ao
  %.pn = phi { i64, ptr } [ %i.jo, %bb.ao ], [ %i.jx, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterlEENtNtNtB8_6traits8iterator8Iterator4nextCsjkkKzr5dxZe_11miniz_oxide.exit ] ; 2 uses
  %.sroa.7.0 = extractvalue { i64, ptr } %.pn, 1  ; 2 uses
  %.sroa.023.0 = extractvalue { i64, ptr } %.pn, 0
  %.not66 = icmp eq ptr %.sroa.7.0, null
  br i1 %.not66, label %bb.ar, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.jy = load i32, ptr %.sroa.7.0, align 4, !noundef !4 ; 2 uses
  %i.jz = sext i32 %i.jy to i64                   ; 2 uses
  %i.ka = sub nsw i64 %.sroa.04.1, %i.jz          ; 3 uses
  %i.kb = icmp ult i64 %.sroa.04.1, %i.jz
  %.not67 = icmp ugt i64 %.sroa.04.1, %.sroa.04.2
  %or.cond = or i1 %.not67, %i.kb
  br i1 %or.cond, label %bb.au, label %bb.av, !prof !74

.loopexit:                                        ; preds = %bb.bd, %bb.ar
  %i.kc = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 0, ptr %i.kc, align 4
  %i.kd = add nsw i64 %3, -1                      ; 2 uses
  %xtraiter351 = and i64 %i.kd, 3                 ; 3 uses
  %unroll_iter355 = and i64 %i.kd, -4
  br label %bb.bk

bb.au:                                            ; preds = %bb.at
  call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %i.ka, i64 noundef %.sroa.04.1, i64 noundef %.sroa.04.2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #22
  unreachable

bb.av:                                            ; preds = %bb.at
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %.sroa.04.0.lcssa.i, i64 %.sroa.04.1
  %i.kf = icmp eq i32 %i.jy, 0
  br i1 %i.kf, label %thread-pre-split, label %.lr.ph166

.lr.ph166:                                        ; preds = %bb.av
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.04.0.lcssa.i, i64 %i.ka
  %i.kh = trunc i64 %.sroa.023.0 to i8
  br label %bb.aw

bb.aw:                                            ; preds = %.lr.ph166, %bb.ax
  %.sroa.026.0164 = phi ptr [ %i.kg, %.lr.ph166 ], [ %i.km, %bb.ax ] ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %.sroa.026.0164, i64 2
  %i.kj = load i16, ptr %i.ki, align 2, !noundef !4 ; 2 uses
  %i.kk = zext i16 %i.kj to i64                   ; 2 uses
  %i.kl = icmp ult i16 %i.kj, 288
  br i1 %i.kl, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.km = getelementptr inbounds nuw i8, ptr %.sroa.026.0164, i64 4 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.jb, i64 %i.kk
  store i8 %i.kh, ptr %i.kn, align 1
  %i.ko = icmp eq ptr %i.km, %i.ke
  br i1 %i.ko, label %thread-pre-split, label %bb.aw

bb.ay:                                            ; preds = %bb.aw
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.kk, i64 noundef 288, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #22
  unreachable

bb.az:                                            ; preds = %bb.c, %bb.bb
  %.sroa.04.2 = phi i64 [ %.sroa.04.0157, %bb.c ], [ %i.kt, %bb.bb ] ; 32 uses
  %exitcond.not = icmp eq i64 %i.j, %2
  br i1 %exitcond.not, label %bb.b, label %bb.c

bb.ba:                                            ; preds = %bb.c
  %i.kp = icmp ult i64 %.sroa.04.0157, 288
  br i1 %i.kp, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.kq = trunc nuw nsw i64 %.sroa.042.0158 to i16
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.sroa.04.0157 ; 2 uses
  store i16 %i.l, ptr %i.kr, align 2
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 2
  store i16 %i.kq, ptr %i.ks, align 2
  %i.kt = add nuw nsw i64 %.sroa.04.0157, 1
  br label %bb.az

bb.bc:                                            ; preds = %bb.ba
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %.sroa.04.0157, i64 noundef 288, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #22
  unreachable

.lr.ph169.preheader:                              ; preds = %bb.a
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 3456
  %i.kv = getelementptr inbounds nuw [288 x i8], ptr %i.ku, i64 %1 ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 %2
  br label %.lr.ph169

.lr.ph169:                                        ; preds = %.lr.ph169.preheader, %bb.bd
  %.sroa.0.0167 = phi ptr [ %i.la, %bb.bd ], [ %i.kv, %.lr.ph169.preheader ] ; 2 uses
  %i.kx = load i8, ptr %.sroa.0.0167, align 1, !noundef !4 ; 2 uses
  %i.ky = zext i8 %i.kx to i64                    ; 2 uses
  %i.kz = icmp ult i8 %i.kx, 33
  br i1 %i.kz, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %.lr.ph169
  %i.la = getelementptr inbounds nuw i8, ptr %.sroa.0.0167, i64 1 ; 2 uses
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ky ; 2 uses
  %i.lc = load i32, ptr %i.lb, align 4, !noundef !4
  %i.ld = add i32 %i.lc, 1
  store i32 %i.ld, ptr %i.lb, align 4
  %i.le = icmp eq ptr %i.la, %i.kw
  br i1 %i.le, label %.loopexit, label %.lr.ph169

bb.be:                                            ; preds = %.lr.ph169
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.ky, i64 noundef 33, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #22
  unreachable

.unr-lcssa:                                       ; preds = %bb.bk
  %lcmp.mod353.not = icmp eq i64 %xtraiter351, 0
  br i1 %lcmp.mod353.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa
  %lcmp.mod354 = icmp ne i64 %xtraiter351, 0
  call void @llvm.assume(i1 %lcmp.mod354)
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bf, %.epil.preheader
  %.sroa.029.0171.epil = phi i32 [ %i.nf, %.epil.preheader ], [ %i.lk, %bb.bf ]
  %.sroa.0.095170.epil = phi i64 [ %i.na, %.epil.preheader ], [ %i.lf, %bb.bf ] ; 3 uses
end_hunk_0
begin_hunk_1_@_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide14optimize_table:bb.a
  %.sroa.1094.0.ptr176 = getelementptr inbounds nuw i8, ptr %i.lp, i64 %.sroa.1094.0.idx174
  %.sroa.091.0.ptr177 = getelementptr inbounds nuw i8, ptr %i.ln, i64 %.sroa.091.0.idx172
  %i.lq = add nsw i64 %.sroa.15.0175, -1          ; 2 uses
  %.sroa.091.0.add = add nuw nsw i64 %.sroa.091.0.idx172, 1
  %.sroa.1094.0.add = add nuw nsw i64 %.sroa.1094.0.idx174, 2
  %i.lr = load i8, ptr %.sroa.091.0.ptr177, align 1, !noundef !4 ; 4 uses
  %i.ls = icmp eq i8 %i.lr, 0
  br i1 %i.ls, label %.backedge, label %bb.bh

select.unfold:                                    ; preds = %.backedge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

bb.bh:                                            ; preds = %bb.bg
  %i.lt = zext i8 %i.lr to i64                    ; 2 uses
  %i.lu = icmp ult i8 %i.lr, 16
  br i1 %i.lu, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.lt ; 2 uses
  %i.lw = load i32, ptr %i.lv, align 4, !noundef !4 ; 2 uses
  %i.lx = add i32 %i.lw, 1
  store i32 %i.lx, ptr %i.lv, align 4
  %i.ly = trunc i32 %i.lw to i16
  %i.lz = call i16 @llvm.bitreverse.i16(i16 %i.ly)
  %i.ma = sub nsw i8 0, %i.lr
  %i.mb = and i8 %i.ma, 15
  %i.mc = zext nneg i8 %i.mb to i16
  %i.md = lshr i16 %i.lz, %i.mc
  store i16 %i.md, ptr %.sroa.1094.0.ptr176, align 2
  br label %.backedge

.backedge:                                        ; preds = %bb.bi, %bb.bg
  %i.me = icmp eq i64 %i.lq, 0
  br i1 %i.me, label %select.unfold, label %bb.bg

bb.bj:                                            ; preds = %bb.bh
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.lt, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #22
  unreachable

bb.bk:                                            ; preds = %bb.bk, %.loopexit
  %.sroa.029.0171 = phi i32 [ 0, %.loopexit ], [ %i.nf, %bb.bk ]
  %.sroa.0.095170 = phi i64 [ 2, %.loopexit ], [ %i.na, %bb.bk ] ; 6 uses
  %niter356 = phi i64 [ 0, %.loopexit ], [ %niter356.next.3, %bb.bk ]
  %i.mf = or disjoint i64 %.sroa.0.095170, 1      ; 2 uses
  %i.mg = getelementptr [4 x i8], ptr %i.g, i64 %.sroa.0.095170
  %i.mh = getelementptr i8, ptr %i.mg, i64 -4
  %i.mi = load i32, ptr %i.mh, align 4, !noundef !4
  %i.mj = add i32 %i.mi, %.sroa.029.0171
  %i.mk = shl i32 %i.mj, 1                        ; 2 uses
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.sroa.0.095170
  store i32 %i.mk, ptr %i.ml, align 4
  %i.mm = add nuw nsw i64 %.sroa.0.095170, 2      ; 2 uses
  %i.mn = getelementptr [4 x i8], ptr %i.g, i64 %i.mf
  %i.mo = getelementptr i8, ptr %i.mn, i64 -4
  %i.mp = load i32, ptr %i.mo, align 4, !noundef !4
  %i.mq = add i32 %i.mp, %i.mk
  %i.mr = shl i32 %i.mq, 1                        ; 2 uses
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.mf
  store i32 %i.mr, ptr %i.ms, align 4
  %i.mt = add nuw nsw i64 %.sroa.0.095170, 3      ; 2 uses
  %i.mu = getelementptr [4 x i8], ptr %i.g, i64 %i.mm
  %i.mv = getelementptr i8, ptr %i.mu, i64 -4
  %i.mw = load i32, ptr %i.mv, align 4, !noundef !4
  %i.mx = add i32 %i.mw, %i.mr
  %i.my = shl i32 %i.mx, 1                        ; 2 uses
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.mm
  store i32 %i.my, ptr %i.mz, align 4
  %i.na = add nuw nsw i64 %.sroa.0.095170, 4      ; 2 uses
  %i.nb = getelementptr [4 x i8], ptr %i.g, i64 %i.mt
  %i.nc = getelementptr i8, ptr %i.nb, i64 -4
  %i.nd = load i32, ptr %i.nc, align 4, !noundef !4
  %i.ne = add i32 %i.nd, %i.my
  %i.nf = shl i32 %i.ne, 1                        ; 3 uses
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.mt
  store i32 %i.nf, ptr %i.ng, align 4
  %niter356.next.3 = add nuw i64 %niter356, 4     ; 2 uses
  %niter356.ncmp.3 = icmp eq i64 %niter356.next.3, %unroll_iter355
  br i1 %niter356.ncmp.3, label %.unr-lcssa, label %bb.bk
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core11flush_block(ptr noalias nofree noundef align 8 captures(none) dereferenceable(65712) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %1, i8 noundef range(i8 0, 5) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 23 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 65640
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 65656
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 65648 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !4 ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79)
  %i.g = load i64, ptr %1, align 8, !range !81, !alias.scope !79, !noalias !82, !noundef !4
  %i.h = trunc nuw i64 %i.g to i1                 ; 2 uses
  br i1 %i.h, label %bb.b, label %_RNvMs5_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_11CallbackOut17new_output_buffer.exit

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !79, !noalias !82, !noundef !4 ; 3 uses
  %i.k = sub i64 %i.j, %i.f
  %i.l = icmp ugt i64 %i.k, 85195
  br i1 %i.l, label %bb.c, label %_RNvMs5_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_11CallbackOut17new_output_buffer.exit

bb.c:                                             ; preds = %bb.b
  %i.m = add i64 %i.f, 85180                      ; 2 uses
  %i.n = icmp ugt i64 %i.f, -85181
  %.not.i = icmp ugt i64 %i.m, %i.j
  %or.cond.i = or i1 %i.n, %.not.i
  br i1 %or.cond.i, label %bb.e, label %bb.d, !prof !74

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !79, !noalias !82, !nonnull !4, !noundef !4
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.f
  br label %_RNvMs5_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_11CallbackOut17new_output_buffer.exit

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %i.f, i64 noundef %i.m, i64 noundef %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #22, !noalias !84
  unreachable

_RNvMs5_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_11CallbackOut17new_output_buffer.exit: ; preds = %bb.a, %bb.b, %bb.d
  %.sroa.01.0.i = phi ptr [ %i.q, %bb.d ], [ %i.d, %bb.a ], [ %i.d, %bb.b ] ; 3 uses
  %.sroa.0.0.i = phi i8 [ 0, %bb.d ], [ 1, %bb.a ], [ 1, %bb.b ]
  store ptr %.sroa.01.0.i, ptr %i.a, align 8, !alias.scope !76, !noalias !85
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 14 uses
  store i64 85180, ptr %i.r, align 8, !alias.scope !76, !noalias !85
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 20 uses
  store i64 0, ptr %i.s, align 8, !alias.scope !76, !noalias !85
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 4 uses
  store i8 %.sroa.0.0.i, ptr %i.t, align 8, !alias.scope !76, !noalias !85
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 10 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 28 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 65692 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !noundef !4 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 65696 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !noundef !4 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 65664
  %i.ab = load i32, ptr %i.aa, align 8, !noundef !4 ; 6 uses
  %i.ac = and i32 %i.ab, 524288
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RNvMs5_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_11CallbackOut17new_output_buffer.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 65608
  %i.af = load i64, ptr %i.ae, align 8, !noundef !4
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 65592
  %i.ah = load i64, ptr %i.ag, align 8, !noundef !4
  %i.ai = sub i64 %i.af, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 65616
  %i.ak = load i64, ptr %i.aj, align 8, !noundef !4
  %i.al = icmp ule i64 %i.ai, %i.ak
  br label %bb.g

bb.g:                                             ; preds = %_RNvMs5_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_11CallbackOut17new_output_buffer.exit, %bb.f
  %.sroa.07.0 = phi i1 [ %i.al, %bb.f ], [ false, %_RNvMs5_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_11CallbackOut17new_output_buffer.exit ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 65684 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !noundef !4
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.h, label %bb.k, !prof !67

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 65680 ; 2 uses
  store i32 0, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 65556 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !alias.scope !86, !noundef !4 ; 2 uses
  %i.as = icmp eq i32 %i.ar, 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 65544 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !86, !noundef !4
  %i.av = and i64 %i.au, 65535
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 %i.av ; 2 uses
  br i1 %i.as, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 65536 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !alias.scope !86, !noundef !4
  %i.az = add i64 %i.ay, -1
  store i64 %i.az, ptr %i.ax, align 8, !alias.scope !86
  br label %_RNvMse_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_7LZOxide9init_flag.exit

bb.j:                                             ; preds = %bb.h
  %i.ba = load i8, ptr %i.aw, align 1, !alias.scope !86, !noundef !4
  %i.bb = trunc i32 %i.ar to i8
  %i.bc = and i8 %i.bb, 7
  %i.bd = lshr i8 %i.ba, %i.bc
  br label %_RNvMse_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_7LZOxide9init_flag.exit

_RNvMse_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_7LZOxide9init_flag.exit: ; preds = %bb.i, %bb.j
  %.sink = phi i8 [ 0, %bb.i ], [ %i.bd, %bb.j ]
  store i8 %.sink, ptr %i.aw, align 1, !alias.scope !86
  %i.be = and i32 %i.ab, 4096                     ; 2 uses
  %i.bf = icmp ne i32 %i.be, 0
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 65668 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4            ; 2 uses
  %i.bi = icmp eq i32 %i.bh, 0
  %or.cond5 = select i1 %i.bf, i1 %i.bi, i1 false
  br i1 %or.cond5, label %bb.m, label %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit45

bb.k:                                             ; preds = %bb.g
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #22
  unreachable

_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit45: ; preds = %bb.m, %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit45.loopexit, %_RNvMse_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_7LZOxide9init_flag.exit
  %.promoted6.i = phi i64 [ 0, %_RNvMse_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_7LZOxide9init_flag.exit ], [ 0, %bb.m ], [ %.lcssa433, %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit45.loopexit ] ; 4 uses
  %i.bj = phi i32 [ %i.x, %_RNvMse_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_7LZOxide9init_flag.exit ], [ %i.cy, %bb.m ], [ %.lcssa431, %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit45.loopexit ]
  %i.bk = phi i32 [ %i.z, %_RNvMse_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_7LZOxide9init_flag.exit ], [ %i.cz, %bb.m ], [ %.lcssa429, %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit45.loopexit ] ; 2 uses
  %i.bl = icmp eq i8 %2, 4                        ; 2 uses
  %i.bm = zext i1 %i.bl to i32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89)
  %i.bn = and i32 %i.bk, 31
  %i.bo = shl nuw i32 %i.bm, %i.bn
  %i.bp = or i32 %i.bo, %i.bj                     ; 3 uses
  store i32 %i.bp, ptr %i.u, align 8, !alias.scope !89
  %i.bq = add i32 %i.bk, 1                        ; 3 uses
  %i.br = icmp ugt i32 %i.bq, 7
  br i1 %i.br, label %.lr.ph.i, label %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit

.lr.ph.i:                                         ; preds = %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit45
  %i.bs = load i64, ptr %i.r, align 8, !alias.scope !89, !noundef !4 ; 3 uses
  %i.bt = load ptr, ptr %i.a, align 8, !alias.scope !89, !nonnull !4
  %umax.i = tail call i64 @llvm.umax.i64(i64 %.promoted6.i, i64 %i.bs) ; 2 uses
  %.promoted = load i64, ptr %i.s, align 8
  %.promoted343 = load i32, ptr %i.u, align 8
  %exitcond.not.i389.not = icmp ult i64 %.promoted6.i, %i.bs
  br i1 %exitcond.not.i389.not, label %.lr.ph, label %._crit_edge

bb.l:                                             ; preds = %.lr.ph
  %exitcond.not.i = icmp eq i64 %i.by, %umax.i
  br i1 %exitcond.not.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.i, %bb.l
  %i.bu = phi i32 [ %i.bz, %bb.l ], [ %i.bp, %.lr.ph.i ] ; 2 uses
  %storemerge5.i390 = phi i32 [ %i.ca, %bb.l ], [ %i.bq, %.lr.ph.i ]
  %i.bv = phi i64 [ %i.by, %bb.l ], [ %.promoted6.i, %.lr.ph.i ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bv
  %i.bx = trunc i32 %i.bu to i8
  store i8 %i.bx, ptr %i.bw, align 1, !noalias !89
  %i.by = add i64 %i.bv, 1                        ; 5 uses
  %i.bz = lshr i32 %i.bu, 8                       ; 4 uses
  %i.ca = add i32 %storemerge5.i390, -8           ; 3 uses
  %i.cb = icmp ugt i32 %i.ca, 7
  br i1 %i.cb, label %bb.l, label %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit.loopexit

._crit_edge:                                      ; preds = %bb.l, %.lr.ph.i
  %.lcssa378 = phi i32 [ %.promoted343, %.lr.ph.i ], [ %i.bz, %bb.l ]
  %.lcssa376 = phi i64 [ %.promoted, %.lr.ph.i ], [ %i.by, %bb.l ]
  store i64 %.lcssa376, ptr %i.s, align 8
  store i32 %.lcssa378, ptr %i.u, align 8
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %umax.i, i64 noundef %i.bs, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #22, !noalias !89
  unreachable

_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit.loopexit: ; preds = %.lr.ph
  store i64 %i.by, ptr %i.s, align 8
  store i32 %i.bz, ptr %i.u, align 8
  br label %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit

_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit: ; preds = %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit.loopexit, %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit45
  %i.cc = phi i32 [ %i.bp, %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit45 ], [ %i.bz, %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit.loopexit ] ; 2 uses
  %i.cd = phi i64 [ %.promoted6.i, %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit45 ], [ %i.by, %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit.loopexit ] ; 5 uses
  %storemerge.lcssa.i = phi i32 [ %i.bq, %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit45 ], [ %i.ca, %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit.loopexit ] ; 3 uses
  store i32 %storemerge.lcssa.i, ptr %i.v, align 4, !alias.scope !89
  %i.ce = load i8, ptr %i.t, align 8, !range !92, !noundef !4
  br i1 %.sroa.07.0, label %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit._crit_edge, label %bb.o

_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit._crit_edge: ; preds = %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 65552
  %.pre = load i32, ptr %.phi.trans.insert, align 8
  br label %bb.p

bb.m:                                             ; preds = %_RNvMse_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_7LZOxide9init_flag.exit
  %i.cf = and i32 %i.ab, 4095                     ; 2 uses
  %i.cg = and i32 %i.ab, 81920
  %or.cond.i36 = icmp eq i32 %i.cg, 0
  %i.ch = icmp samesign ult i32 %i.cf, 2
  %.8.i = select i1 %i.ch, i8 0, i8 64
  %i.ci = icmp samesign ugt i32 %i.cf, 767
  %..i = select i1 %i.ci, i8 -64, i8 -128
  %.sroa.04.0.i = select i1 %or.cond.i36, i8 %..i, i8 %.8.i ; 2 uses
  %i.cj = and i32 %i.ab, 589824
  %or.cond3.i = icmp eq i32 %i.cj, 0
  %.7.i = select i1 %or.cond3.i, i16 120, i16 8   ; 2 uses
  %i.ck = shl nuw nsw i16 %.7.i, 8
  %i.cl = zext i8 %.sroa.04.0.i to i16
  %i.cm = or disjoint i16 %i.ck, %i.cl
  %i.cn = urem i16 %i.cm, 31
  %i.co = trunc nuw nsw i16 %i.cn to i8
  %i.cp = or disjoint i8 %.sroa.04.0.i, %i.co
  %i.cq = xor i8 %i.cp, 31
  %.sroa.426.0.extract.trunc = zext i8 %i.cq to i32
  %i.cr = zext nneg i16 %.7.i to i32
  %i.cs = and i32 %i.z, 31
  %i.ct = shl i32 %i.cr, %i.cs
  %i.cu = add i32 %i.z, 8                         ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93)
  %i.cv = and i32 %i.cu, 31
  %i.cw = shl i32 %.sroa.426.0.extract.trunc, %i.cv
  %i.cx = or i32 %i.ct, %i.cw
  %i.cy = or i32 %i.cx, %i.x                      ; 2 uses
  %i.cz = add i32 %i.z, 16                        ; 3 uses
  %i.da = icmp ugt i32 %i.cz, 7
  br i1 %i.da, label %.lr.ph.i40.preheader.preheader, label %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit45

.lr.ph.i40.preheader.preheader:                   ; preds = %bb.m
  %i.db = lshr i32 %i.cu, 3
  %wide.trip.count = zext nneg i32 %i.db to i64   ; 2 uses
  br label %.lr.ph.i40.preheader

.lr.ph.i40:                                       ; preds = %.lr.ph.i40.preheader
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i, i64 %i.dl
  %i.dd = trunc i32 %i.dm to i8
  store i8 %i.dd, ptr %i.dc, align 1, !noalias !93
  %i.de = add nuw nsw i64 %i.di, 2                ; 3 uses
  %i.df = lshr i32 %i.dh, 16                      ; 2 uses
  %i.dg = add i32 %storemerge5.i43177, -16        ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.dl, %wide.trip.count
  br i1 %exitcond.not.1, label %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit45.loopexit, label %.lr.ph.i40.1

.lr.ph.i40.1:                                     ; preds = %.lr.ph.i40
  %exitcond.not.i44.1 = icmp eq i64 %i.de, 85180
  br i1 %exitcond.not.i44.1, label %bb.n, label %.lr.ph.i40.preheader

.lr.ph.i40.preheader:                             ; preds = %.lr.ph.i40.1, %.lr.ph.i40.preheader.preheader
  %i.dh = phi i32 [ %i.cy, %.lr.ph.i40.preheader.preheader ], [ %i.df, %.lr.ph.i40.1 ] ; 3 uses
  %storemerge5.i43177 = phi i32 [ %i.cz, %.lr.ph.i40.preheader.preheader ], [ %i.dg, %.lr.ph.i40.1 ] ; 2 uses
  %i.di = phi i64 [ 0, %.lr.ph.i40.preheader.preheader ], [ %i.de, %.lr.ph.i40.1 ] ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i, i64 %i.di
  %i.dk = trunc i32 %i.dh to i8
  store i8 %i.dk, ptr %i.dj, align 1, !noalias !93
  %i.dl = or disjoint i64 %i.di, 1                ; 3 uses
  %i.dm = lshr i32 %i.dh, 8                       ; 2 uses
  %exitcond.not = icmp eq i64 %i.di, %wide.trip.count
  br i1 %exitcond.not, label %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit45.loopexit.split.loop.exit447, label %.lr.ph.i40

bb.n:                                             ; preds = %.lr.ph.i40.1
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef 85180, i64 noundef 85180, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #22, !noalias !93
  unreachable

_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit45.loopexit.split.loop.exit447: ; preds = %.lr.ph.i40.preheader
  %i.dn = add i32 %storemerge5.i43177, -8
  br label %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit45.loopexit

_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit45.loopexit: ; preds = %.lr.ph.i40, %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit45.loopexit.split.loop.exit447
  %.lcssa433 = phi i64 [ %i.dl, %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit45.loopexit.split.loop.exit447 ], [ %i.de, %.lr.ph.i40 ] ; 2 uses
  %.lcssa431 = phi i32 [ %i.dm, %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit45.loopexit.split.loop.exit447 ], [ %i.df, %.lr.ph.i40 ]
  %.lcssa429 = phi i32 [ %i.dn, %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit45.loopexit.split.loop.exit447 ], [ %i.dg, %.lr.ph.i40 ]
  store i64 %.lcssa433, ptr %i.s, align 8, !alias.scope !93
  br label %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit45

bb.o:                                             ; preds = %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit
  %i.do = and i32 %i.ab, 262144
  %i.dp = icmp ne i32 %i.do, 0
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 65552
  %i.dr = load i32, ptr %i.dq, align 8            ; 2 uses
  %i.ds = icmp ult i32 %i.dr, 48
  %.sroa.012.0 = select i1 %i.dp, i1 true, i1 %i.ds
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 65632
  %i.du = load ptr, ptr %i.dt, align 8, !nonnull !4, !noundef !4
  %i.dv = call fastcc noundef i8 @_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core14compress_block(ptr noalias nofree noundef align 2 dereferenceable(4320) %i.du, ptr noalias nofree noundef align 8 dereferenceable(40) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(65560) %0, i1 noundef zeroext %.sroa.012.0)
  %i.dw = icmp eq i8 %i.dv, 2
  br i1 %i.dw, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit._crit_edge, %bb.o
  %i.dx = phi i32 [ %.pre, %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit._crit_edge ], [ %i.dr, %bb.o ] ; 6 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 65552
  %i.dz = icmp ugt i32 %i.dx, 32
  br i1 %i.dz, label %bb.r, label %bb.s

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvMs6_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_13CallbackOxide12flush_output.exit

bb.r:                                             ; preds = %bb.p
  %i.ea = load i64, ptr %i.s, align 8, !noundef !4
  %reass.sub = sub i64 %i.ea, %i.cd
  %i.eb = add i64 %reass.sub, 1
  %i.ec = zext i32 %i.dx to i64
  %.not = icmp ult i64 %i.eb, %i.ec
  br i1 %.not, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r, %bb.p
  br i1 %.sroa.07.0, label %bb.u, label %.critedge

bb.t:                                             ; preds = %bb.r
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 65608
  %i.ee = load i64, ptr %i.ed, align 8, !noundef !4
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 65592
  %i.eg = load i64, ptr %i.ef, align 8, !noundef !4
  %i.eh = sub i64 %i.ee, %i.eg
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 65616
  %i.ej = load i64, ptr %i.ei, align 8, !noundef !4
  %i.ek = icmp ule i64 %i.eh, %i.ej
  %or.cond = or i1 %.sroa.07.0, %i.ek
  br i1 %or.cond, label %bb.u, label %.critedge

bb.u:                                             ; preds = %bb.t, %bb.s
  store i64 %i.cd, ptr %i.s, align 8
  store i8 %i.ce, ptr %i.t, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96)
  %i.el = icmp samesign ugt i32 %storemerge.lcssa.i, 5
  br i1 %i.el, label %.lr.ph.i47, label %.lr.ph.i56
end_hunk_1
begin_hunk_2_@_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core11flush_block:bb.a
  %.pre242 = load ptr, ptr %i.a, align 8, !alias.scope !164 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !164)
  %umax.i133 = tail call i64 @llvm.umax.i64(i64 %i.kr, i64 %.pre240) ; 2 uses
  %.promoted352 = load i64, ptr %i.s, align 8
  %exitcond.not.i135398.not = icmp ult i64 %i.kr, %.pre240
  br i1 %exitcond.not.i135398.not, label %.lr.ph400, label %._crit_edge401

bb.bk:                                            ; preds = %bb.bj, %.lr.ph.i124
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %umax.i126, i64 noundef %.pre241, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #22, !noalias !161
  unreachable

_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit136: ; preds = %.lr.ph400
  %i.ks = getelementptr inbounds nuw i8, ptr %.pre242, i64 %i.kv
  store i8 -1, ptr %i.ks, align 1, !noalias !164
  %i.kt = add i64 %.promoted6.i132.pre, 4
  store i64 %i.kt, ptr %i.s, align 8
  br label %bb.ah

.lr.ph400:                                        ; preds = %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit129
  %i.ku = getelementptr inbounds nuw i8, ptr %.pre242, i64 %i.kr
  store i8 -1, ptr %i.ku, align 1, !noalias !164
  %i.kv = add i64 %.promoted6.i132.pre, 3         ; 3 uses
  %exitcond.not.i135 = icmp eq i64 %i.kv, %umax.i133
  br i1 %exitcond.not.i135, label %._crit_edge401, label %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit136

._crit_edge401:                                   ; preds = %.lr.ph400, %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit129
  %.lcssa = phi i64 [ %.promoted352, %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit129 ], [ %i.kv, %.lr.ph400 ]
  store i64 %.lcssa, ptr %i.s, align 8
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %umax.i133, i64 noundef %.pre240, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #22, !noalias !164
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i8 1, 3) i8 @_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core14compress_block(ptr noalias nofree noundef nonnull align 2 dereferenceable(4320) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(65560) %2, i1 noundef zeroext %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [2 x i8], align 1                 ; 6 uses
  %i.c = alloca [3 x i8], align 1                 ; 7 uses
  %i.d = alloca [2 x i8], align 1                 ; 6 uses
  %i.e = alloca [2 x i8], align 1                 ; 6 uses
  %i.f = alloca [3 x i8], align 1                 ; 7 uses
  %i.g = alloca [2 x i8], align 1                 ; 6 uses
  %i.h = alloca [3 x i8], align 1                 ; 7 uses
  %i.i = alloca [12 x i8], align 4                ; 6 uses
  %i.j = alloca [32 x i8], align 8                ; 7 uses
  %i.k = alloca [1 x i8], align 1                 ; 5 uses
  %i.l = alloca [8 x i8], align 8                 ; 22 uses
  %i.m = alloca [8 x i8], align 8                 ; 11 uses
  %i.n = alloca [320 x i8], align 1               ; 17 uses
  %i.o = alloca [320 x i8], align 1               ; 8 uses
  %i.p = alloca [24 x i8], align 8                ; 7 uses
  %i.q = alloca [24 x i8], align 8                ; 7 uses
  br i1 %3, label %bb.bv, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !167)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !170)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 512
  store i16 1, ptr %i.r, align 2, !alias.scope !167, !noalias !170
  tail call fastcc void @_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide14optimize_table(ptr noalias nofree noundef nonnull align 2 dereferenceable(4320) %0, i64 noundef 0, i64 noundef 288, i64 noundef 15, i1 noundef zeroext false), !noalias !170
  tail call fastcc void @_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide14optimize_table(ptr noalias nofree noundef nonnull align 2 dereferenceable(4320) %0, i64 noundef 1, i64 noundef 32, i64 noundef 15, i1 noundef zeroext false), !noalias !170
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !172
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 3456 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 3713
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 3742
  store ptr %i.t, ptr %i.q, align 8, !noalias !172
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.u, ptr %i.v, align 8, !noalias !172
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  store i8 0, ptr %i.w, align 8, !noalias !172
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 17
  %i.y = call { i64, i64 } @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters3revINtB5_3RevINtNtNtBb_5slice4iter4IterhEENtNtNtB9_6traits8iterator8Iterator8try_foldjNCINvNvXs0_NtB7_10take_whileINtB2i_9TakeWhileppEB1p_8try_fold5checkRhjINtNtNtBb_3ops9try_trait17NeverShortCircuitjENCNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB46_12HuffmanOxide19start_dynamic_block0NCINvMB3i_B3f_10wrap_mut_2jB3c_NCNvYIB2A_BM_B3Y_EB1p_5count0E0E0INtNtB3k_12control_flow11ControlFlowB3f_jEEB4a_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q, i64 noundef 0, ptr noalias nofree noundef nonnull %i.x, ptr noalias nofree noundef nonnull dereferenceable(1) %i.w), !noalias !170
  %i.z = extractvalue { i64, i64 } %i.y, 1        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !172
  %i.aa = sub i64 286, %i.z                       ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !172
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 3744
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 3745
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 3774
  store ptr %i.ac, ptr %i.p, align 8, !noalias !172
  %i.ae = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.ad, ptr %i.ae, align 8, !noalias !172
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  store i8 0, ptr %i.af, align 8, !noalias !172
  %i.ag = getelementptr inbounds nuw i8, ptr %i.p, i64 17
  %i.ah = call { i64, i64 } @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters3revINtB5_3RevINtNtNtBb_5slice4iter4IterhEENtNtNtB9_6traits8iterator8Iterator8try_foldjNCINvNvXs0_NtB7_10take_whileINtB2i_9TakeWhileppEB1p_8try_fold5checkRhjINtNtNtBb_3ops9try_trait17NeverShortCircuitjENCNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB46_12HuffmanOxide19start_dynamic_blocks_0NCINvMB3i_B3f_10wrap_mut_2jB3c_NCNvYIB2A_BM_B3Y_EB1p_5count0E0E0INtNtB3k_12control_flow11ControlFlowB3f_jEEB4a_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p, i64 noundef 0, ptr noalias nofree noundef nonnull %i.ag, ptr noalias nofree noundef nonnull dereferenceable(1) %i.af), !noalias !170
  %i.ai = extractvalue { i64, i64 } %i.ah, 1      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !172
  %i.aj = sub i64 30, %i.ai                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !172
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(320) %i.o, i8 0, i64 320, i1 false), !noalias !172
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !172
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(320) %i.n, i8 0, i64 320, i1 false), !noalias !172
  %i.ak = add i64 %i.aj, %i.aa                    ; 5 uses
  %i.al = icmp ult i64 %i.aa, 321
  br i1 %i.al, label %bb.d, label %bb.c, !prof !46

bb.c:                                             ; preds = %bb.b
  call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.aa, i64 noundef 320, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #22, !noalias !170
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.am = icmp samesign ult i64 %i.aa, 289
  br i1 %i.am, label %bb.f, label %bb.e, !prof !67

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.aa, i64 noundef 288, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #22, !noalias !170
  unreachable

bb.f:                                             ; preds = %bb.d
  call void @_RINvNtCshzWfHUSfYae_4core5slice20copy_from_slice_implhECsjkkKzr5dxZe_11miniz_oxide(ptr noalias nofree noundef nonnull %i.o, i64 noundef %i.aa, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.s, i64 noundef %i.aa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23), !noalias !170
  %i.an = icmp uge i64 %i.ak, %i.aa
  %i.ao = icmp ult i64 %i.ak, 321
  %or.cond.i = and i1 %i.an, %i.ao
  br i1 %or.cond.i, label %bb.h, label %bb.g, !prof !46

bb.g:                                             ; preds = %bb.f
  call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %i.aa, i64 noundef %i.ak, i64 noundef 320, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #22, !noalias !170
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ap = icmp ult i64 %i.aj, 289
  br i1 %i.ap, label %bb.j, label %bb.i, !prof !46

bb.i:                                             ; preds = %bb.h
  call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.aj, i64 noundef 288, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #22, !noalias !170
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.aa
  call void @_RINvNtCshzWfHUSfYae_4core5slice20copy_from_slice_implhECsjkkKzr5dxZe_11miniz_oxide(ptr noalias nofree noundef nonnull %i.aq, i64 noundef %i.aj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ab, i64 noundef %i.aj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24), !noalias !170
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !172
  store i64 71776119061217280, ptr %i.m, align 8, !noalias !172
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1152 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(38) %i.ar, i8 0, i64 38, i1 false), !alias.scope !173, !noalias !170
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !172
  store i64 0, ptr %i.l, align 8, !noalias !172
  %i.as = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ak
  %i.at = icmp samesign eq i64 %i.ak, 0
  br i1 %i.at, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %i.m, i64 6 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 8 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1184 ; 8 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.bc = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.bd = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  br label %bb.k

bb.k:                                             ; preds = %bb.w, %.lr.ph.i
  %i.be = phi i8 [ -1, %.lr.ph.i ], [ %i.bg, %bb.w ] ; 4 uses
  %.sroa.04.094.i = phi ptr [ %i.o, %.lr.ph.i ], [ %i.bf, %bb.w ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.04.094.i, i64 1 ; 2 uses
  %i.bg = load i8, ptr %.sroa.04.094.i, align 1, !noalias !172, !noundef !4 ; 10 uses
  %i.bh = icmp eq i8 %i.bg, 0
  br i1 %i.bh, label %bb.l, label %bb.u

._crit_edge.i:                                    ; preds = %bb.w
  %.pre136.i = load i16, ptr %i.av, align 4, !noalias !172 ; 5 uses
  %i.bi = icmp eq i16 %.pre136.i, 0
  br i1 %i.bi, label %._crit_edge.thread.i, label %bb.al

bb.l:                                             ; preds = %bb.k
  call void @llvm.experimental.noalias.scope.decl(metadata !176)
  call void @llvm.experimental.noalias.scope.decl(metadata !179)
  call void @llvm.experimental.noalias.scope.decl(metadata !181)
  %i.bj = load i16, ptr %i.av, align 4, !alias.scope !176, !noalias !183, !noundef !4 ; 5 uses
  %i.bk = icmp eq i16 %i.bj, 0
  br i1 %i.bk, label %_RNvMs9_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_3Rle14prev_code_size.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bl = icmp ult i16 %i.bj, 3
  br i1 %i.bl, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bm = load i16, ptr %i.aw, align 2, !alias.scope !185, !noalias !186, !noundef !4
  %i.bn = add i16 %i.bm, 1
  store i16 %i.bn, ptr %i.aw, align 2, !alias.scope !185, !noalias !186
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !187
  %i.bo = trunc i16 %i.bj to i8
  %i.bp = add i8 %i.bo, -3
  store i8 16, ptr %i.g, align 1, !noalias !187
  store i8 %i.bp, ptr %i.bb, align 1, !noalias !187
  call void @llvm.experimental.noalias.scope.decl(metadata !188)
  %i.bq = load i64, ptr %i.l, align 8, !alias.scope !191, !noalias !192, !noundef !4 ; 3 uses
  %or.cond.not.i.i.i = icmp ugt i64 %i.bq, 318
  br i1 %or.cond.not.i.i.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !187
  br label %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide19start_dynamic_block.exit.thread

bb.p:                                             ; preds = %bb.n
  %i.br = add nuw nsw i64 %i.bq, 2
  %i.bs = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.bq
  call void @_RINvNtCshzWfHUSfYae_4core5slice20copy_from_slice_implhECsjkkKzr5dxZe_11miniz_oxide(ptr noalias nofree noundef nonnull %i.bs, i64 noundef 2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66), !noalias !195
  store i64 %i.br, ptr %i.l, align 8, !alias.scope !191, !noalias !192
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !187
  br label %bb.q

bb.q:                                             ; preds = %bb.t, %bb.p
  store i16 0, ptr %i.av, align 4, !alias.scope !176, !noalias !183
  br label %_RNvMs9_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_3Rle14prev_code_size.exit.i

bb.r:                                             ; preds = %bb.m
  %i.bt = zext i8 %i.be to i64
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %i.bt ; 2 uses
  %i.bv = load i16, ptr %i.bu, align 2, !alias.scope !185, !noalias !186, !noundef !4
  %i.bw = add i16 %i.bv, %i.bj
  store i16 %i.bw, ptr %i.bu, align 2, !alias.scope !185, !noalias !186
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !187
  store i8 %i.be, ptr %i.h, align 1, !noalias !187
  store i8 %i.be, ptr %i.bc, align 1, !noalias !187
  store i8 %i.be, ptr %i.bd, align 1, !noalias !187
  %i.bx = zext nneg i16 %i.bj to i64              ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !196)
  %i.by = load i64, ptr %i.l, align 8, !alias.scope !199, !noalias !200, !noundef !4 ; 3 uses
  %i.bz = add i64 %i.by, %i.bx                    ; 3 uses
  %i.ca = icmp ult i64 %i.bz, %i.by
  %i.cb = icmp ugt i64 %i.bz, 320
  %or.cond.not.i2.i.i = or i1 %i.ca, %i.cb
  br i1 %or.cond.not.i2.i.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !187
  br label %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide19start_dynamic_block.exit.thread

bb.t:                                             ; preds = %bb.r
  %i.cc = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.by
  call void @_RINvNtCshzWfHUSfYae_4core5slice20copy_from_slice_implhECsjkkKzr5dxZe_11miniz_oxide(ptr noalias nofree noundef nonnull %i.cc, i64 noundef range(i64 0, 4) %i.bx, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef range(i64 0, 4) %i.bx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66), !noalias !203
  store i64 %i.bz, ptr %i.l, align 8, !alias.scope !199, !noalias !200
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !187
  br label %bb.q

bb.u:                                             ; preds = %bb.k
  %i.cd = call fastcc noundef zeroext i1 @_RNvMs9_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_3Rle14zero_code_size(ptr noalias nofree noundef align 4 dereferenceable(8) %i.m, ptr noalias nofree noundef nonnull %i.n, ptr noalias nofree noundef align 8 dereferenceable(8) %i.l, ptr noalias nofree noundef nonnull align 2 dereferenceable(4320) %0)
  br i1 %i.cd, label %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide19start_dynamic_block.exit.thread, label %bb.x

_RNvMs9_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_3Rle14prev_code_size.exit.i: ; preds = %bb.q, %bb.l
  %i.ce = load i32, ptr %i.m, align 8, !noalias !172, !noundef !4
  %i.cf = add i32 %i.ce, 1                        ; 2 uses
  store i32 %i.cf, ptr %i.m, align 8, !noalias !172
  %i.cg = icmp eq i32 %i.cf, 138
  br i1 %i.cg, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_RNvMs9_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_3Rle14prev_code_size.exit.i
  %i.ch = call fastcc noundef zeroext i1 @_RNvMs9_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_3Rle14zero_code_size(ptr noalias nofree noundef align 4 dereferenceable(8) %i.m, ptr noalias nofree noundef nonnull %i.n, ptr noalias nofree noundef align 8 dereferenceable(8) %i.l, ptr noalias nofree noundef nonnull align 2 dereferenceable(4320) %0)
  br i1 %i.ch, label %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide19start_dynamic_block.exit.thread, label %bb.w

bb.w:                                             ; preds = %bb.ak, %_RNvMs9_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_3Rle14prev_code_size.exit40.i, %bb.y, %bb.v, %_RNvMs9_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_3Rle14prev_code_size.exit.i
  store i8 %i.bg, ptr %i.au, align 2, !noalias !172
  %i.ci = icmp eq ptr %i.bf, %i.as
  br i1 %i.ci, label %._crit_edge.i, label %bb.k

bb.x:                                             ; preds = %bb.u
  %i.cj = load i8, ptr %i.au, align 2, !noalias !172, !noundef !4 ; 5 uses
  %.not.i = icmp eq i8 %i.bg, %i.cj
  br i1 %.not.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ck = load i16, ptr %i.av, align 4, !noalias !172, !noundef !4
  %i.cl = add i16 %i.ck, 1                        ; 2 uses
  store i16 %i.cl, ptr %i.av, align 4, !noalias !172
  %i.cm = icmp eq i16 %i.cl, 6
  br i1 %i.cm, label %bb.ai, label %bb.w

bb.z:                                             ; preds = %bb.x
  call void @llvm.experimental.noalias.scope.decl(metadata !204)
  call void @llvm.experimental.noalias.scope.decl(metadata !207)
  call void @llvm.experimental.noalias.scope.decl(metadata !209)
  %i.cn = load i16, ptr %i.av, align 4, !alias.scope !204, !noalias !211, !noundef !4 ; 5 uses
  %i.co = icmp eq i16 %i.cn, 0
  br i1 %i.co, label %._RNvMs9_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_3Rle14prev_code_size.exit36_crit_edge.i, label %bb.aa

._RNvMs9_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_3Rle14prev_code_size.exit36_crit_edge.i: ; preds = %bb.z
  %.pre.i = load i64, ptr %i.l, align 8, !alias.scope !213, !noalias !216
  br label %_RNvMs9_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_3Rle14prev_code_size.exit36.i

bb.aa:                                            ; preds = %bb.z
  %i.cp = icmp ult i16 %i.cn, 3
  br i1 %i.cp, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cq = load i16, ptr %i.aw, align 2, !alias.scope !219, !noalias !220, !noundef !4
  %i.cr = add i16 %i.cq, 1
  store i16 %i.cr, ptr %i.aw, align 2, !alias.scope !219, !noalias !220
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !221
  %i.cs = trunc i16 %i.cn to i8
  %i.ct = add i8 %i.cs, -3
  store i8 16, ptr %i.e, align 1, !noalias !221
  store i8 %i.ct, ptr %i.ax, align 1, !noalias !221
  call void @llvm.experimental.noalias.scope.decl(metadata !222)
  %i.cu = load i64, ptr %i.l, align 8, !alias.scope !225, !noalias !226, !noundef !4 ; 3 uses
  %or.cond.not.i.i33.i = icmp ugt i64 %i.cu, 318
  br i1 %or.cond.not.i.i33.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !221
  br label %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide19start_dynamic_block.exit.thread

bb.ad:                                            ; preds = %bb.ab
  %i.cv = add nuw nsw i64 %i.cu, 2
  %i.cw = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.cu
  call void @_RINvNtCshzWfHUSfYae_4core5slice20copy_from_slice_implhECsjkkKzr5dxZe_11miniz_oxide(ptr noalias nofree noundef nonnull %i.cw, i64 noundef 2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66), !noalias !229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !221
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ah, %bb.ad
  %i.cx = phi i64 [ %i.de, %bb.ah ], [ %i.cv, %bb.ad ]
  store i16 0, ptr %i.av, align 4, !alias.scope !204, !noalias !211
  br label %_RNvMs9_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_3Rle14prev_code_size.exit36.i

bb.af:                                            ; preds = %bb.aa
  %i.cy = zext i8 %i.cj to i64
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %i.cy ; 2 uses
  %i.da = load i16, ptr %i.cz, align 2, !alias.scope !219, !noalias !220, !noundef !4
  %i.db = add i16 %i.da, %i.cn
  store i16 %i.db, ptr %i.cz, align 2, !alias.scope !219, !noalias !220
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !221
  store i8 %i.cj, ptr %i.f, align 1, !noalias !221
  store i8 %i.cj, ptr %i.ay, align 1, !noalias !221
  store i8 %i.cj, ptr %i.az, align 1, !noalias !221
  %i.dc = zext nneg i16 %i.cn to i64              ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !230)
  %i.dd = load i64, ptr %i.l, align 8, !alias.scope !233, !noalias !234, !noundef !4 ; 3 uses
  %i.de = add i64 %i.dd, %i.dc                    ; 3 uses
  %i.df = icmp ult i64 %i.de, %i.dd
  %i.dg = icmp ugt i64 %i.de, 320
  %or.cond.not.i2.i35.i = or i1 %i.df, %i.dg
  br i1 %or.cond.not.i2.i35.i, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !221
  br label %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide19start_dynamic_block.exit.thread

bb.ah:                                            ; preds = %bb.af
  %i.dh = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.dd
  call void @_RINvNtCshzWfHUSfYae_4core5slice20copy_from_slice_implhECsjkkKzr5dxZe_11miniz_oxide(ptr noalias nofree noundef nonnull %i.dh, i64 noundef range(i64 0, 4) %i.dc, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef range(i64 0, 4) %i.dc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66), !noalias !237
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !221
  br label %bb.ae

bb.ai:                                            ; preds = %bb.y
  call void @llvm.experimental.noalias.scope.decl(metadata !238)
  call void @llvm.experimental.noalias.scope.decl(metadata !241)
  call void @llvm.experimental.noalias.scope.decl(metadata !243)
  %i.di = load i16, ptr %i.aw, align 2, !alias.scope !245, !noalias !246, !noundef !4
  %i.dj = add i16 %i.di, 1
  store i16 %i.dj, ptr %i.aw, align 2, !alias.scope !245, !noalias !246
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !248
  store i8 16, ptr %i.d, align 1, !noalias !248
  store i8 3, ptr %i.ba, align 1, !noalias !248
  call void @llvm.experimental.noalias.scope.decl(metadata !249)
  %i.dk = load i64, ptr %i.l, align 8, !alias.scope !252, !noalias !253, !noundef !4 ; 3 uses
  %or.cond.not.i.i37.i = icmp ugt i64 %i.dk, 318
  br i1 %or.cond.not.i.i37.i, label %_RNvMs9_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_3Rle14prev_code_size.exit40.thread.i, label %_RNvMs9_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_3Rle14prev_code_size.exit40.i

_RNvMs9_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_3Rle14prev_code_size.exit40.thread.i: ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !248
  br label %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide19start_dynamic_block.exit.thread

_RNvMs9_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_3Rle14prev_code_size.exit40.i: ; preds = %bb.ai
  %i.dl = add nuw nsw i64 %i.dk, 2
  %i.dm = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.dk
  call void @_RINvNtCshzWfHUSfYae_4core5slice20copy_from_slice_implhECsjkkKzr5dxZe_11miniz_oxide(ptr noalias nofree noundef nonnull %i.dm, i64 noundef 2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66), !noalias !256
  store i64 %i.dl, ptr %i.l, align 8, !alias.scope !252, !noalias !253
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !248
  store i16 0, ptr %i.av, align 4, !alias.scope !238, !noalias !257
  br label %bb.w

_RNvMs9_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_3Rle14prev_code_size.exit36.i: ; preds = %bb.ae, %._RNvMs9_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_3Rle14prev_code_size.exit36_crit_edge.i
  %i.dn = phi i64 [ %.pre.i, %._RNvMs9_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_3Rle14prev_code_size.exit36_crit_edge.i ], [ %i.cx, %bb.ae ] ; 3 uses
  %i.do = zext i8 %i.bg to i64
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %i.do ; 2 uses
  %i.dq = load i16, ptr %i.dp, align 2, !alias.scope !167, !noalias !170, !noundef !4
  %i.dr = add i16 %i.dq, 1
  store i16 %i.dr, ptr %i.dp, align 2, !alias.scope !167, !noalias !170
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !172
  store i8 %i.bg, ptr %i.k, align 1, !noalias !172
  call void @llvm.experimental.noalias.scope.decl(metadata !213)
  %or.cond.not.i.i = icmp ugt i64 %i.dn, 319
  br i1 %or.cond.not.i.i, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %_RNvMs9_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_3Rle14prev_code_size.exit36.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !172
  br label %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide19start_dynamic_block.exit.thread

bb.ak:                                            ; preds = %_RNvMs9_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_3Rle14prev_code_size.exit36.i
  %i.ds = add nuw nsw i64 %i.dn, 1
  %i.dt = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.dn
  call void @_RINvNtCshzWfHUSfYae_4core5slice20copy_from_slice_implhECsjkkKzr5dxZe_11miniz_oxide(ptr noalias nofree noundef nonnull %i.dt, i64 noundef 1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.k, i64 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66), !noalias !258
  store i64 %i.ds, ptr %i.l, align 8, !alias.scope !213, !noalias !216
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !172
  br label %bb.w

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.j
  %i.du = call fastcc noundef zeroext i1 @_RNvMs9_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_3Rle14zero_code_size(ptr noalias nofree noundef align 4 dereferenceable(8) %i.m, ptr noalias nofree noundef nonnull %i.n, ptr noalias nofree noundef align 8 dereferenceable(8) %i.l, ptr noalias nofree noundef nonnull align 2 dereferenceable(4320) %0)
  br i1 %i.du, label %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide19start_dynamic_block.exit.thread, label %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3rev3RevINtNtNtBc_5slice4iter4IterhEENCNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB22_12HuffmanOxide19start_dynamic_blocks0_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3u_5count0EB26_.exit.i

bb.al:                                            ; preds = %._crit_edge.i
  call void @llvm.experimental.noalias.scope.decl(metadata !259)
  call void @llvm.experimental.noalias.scope.decl(metadata !262)
  %i.dv = icmp ult i16 %.pre136.i, 3
  br i1 %i.dv, label %bb.ap, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dw = load i16, ptr %i.aw, align 2, !alias.scope !264, !noalias !265, !noundef !4
  %i.dx = add i16 %i.dw, 1
  store i16 %i.dx, ptr %i.aw, align 2, !alias.scope !264, !noalias !265
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !268
  %i.dy = trunc i16 %.pre136.i to i8
  %i.dz = add i8 %i.dy, -3
  store i8 16, ptr %i.b, align 1, !noalias !268
  %i.ea = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.dz, ptr %i.ea, align 1, !noalias !268
  call void @llvm.experimental.noalias.scope.decl(metadata !269)
  %i.eb = load i64, ptr %i.l, align 8, !alias.scope !272, !noalias !273, !noundef !4 ; 3 uses
  %or.cond.not.i.i41.i = icmp ugt i64 %i.eb, 318
  br i1 %or.cond.not.i.i41.i, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !268
  br label %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide19start_dynamic_block.exit.thread

bb.ao:                                            ; preds = %bb.am
  %i.ec = add nuw nsw i64 %i.eb, 2
  %i.ed = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.eb
  call void @_RINvNtCshzWfHUSfYae_4core5slice20copy_from_slice_implhECsjkkKzr5dxZe_11miniz_oxide(ptr noalias nofree noundef nonnull %i.ed, i64 noundef 2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66), !noalias !276
  store i64 %i.ec, ptr %i.l, align 8, !alias.scope !272, !noalias !273
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !268
  br label %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3rev3RevINtNtNtBc_5slice4iter4IterhEENCNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB22_12HuffmanOxide19start_dynamic_blocks0_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3u_5count0EB26_.exit.i

bb.ap:                                            ; preds = %bb.al
  %i.ee = zext i8 %i.bg to i64
  %i.ef = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %i.ee ; 2 uses
  %i.eg = load i16, ptr %i.ef, align 2, !alias.scope !264, !noalias !265, !noundef !4
  %i.eh = add i16 %i.eg, %.pre136.i
  store i16 %i.eh, ptr %i.ef, align 2, !alias.scope !264, !noalias !265
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !268
  store i8 %i.bg, ptr %i.c, align 1, !noalias !268
  %i.ei = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %i.bg, ptr %i.ei, align 1, !noalias !268
  %i.ej = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i8 %i.bg, ptr %i.ej, align 1, !noalias !268
  %i.ek = zext nneg i16 %.pre136.i to i64         ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !277)
  %i.el = load i64, ptr %i.l, align 8, !alias.scope !280, !noalias !281, !noundef !4 ; 3 uses
  %i.em = add i64 %i.el, %i.ek                    ; 3 uses
  %i.en = icmp ult i64 %i.em, %i.el
  %i.eo = icmp ugt i64 %i.em, 320
  %or.cond.not.i2.i43.i = or i1 %i.en, %i.eo
  br i1 %or.cond.not.i2.i43.i, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !268
  br label %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide19start_dynamic_block.exit.thread

bb.ar:                                            ; preds = %bb.ap
  %i.ep = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.el
  call void @_RINvNtCshzWfHUSfYae_4core5slice20copy_from_slice_implhECsjkkKzr5dxZe_11miniz_oxide(ptr noalias nofree noundef nonnull %i.ep, i64 noundef range(i64 0, 4) %i.ek, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef range(i64 0, 4) %i.ek, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66), !noalias !284
  store i64 %i.em, ptr %i.l, align 8, !alias.scope !280, !noalias !281
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !268
  br label %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3rev3RevINtNtNtBc_5slice4iter4IterhEENCNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB22_12HuffmanOxide19start_dynamic_blocks0_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3u_5count0EB26_.exit.i

_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3rev3RevINtNtNtBc_5slice4iter4IterhEENCNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB22_12HuffmanOxide19start_dynamic_blocks0_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3u_5count0EB26_.exit.i: ; preds = %bb.ar, %bb.ao, %._crit_edge.thread.i
  call fastcc void @_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide14optimize_table(ptr noalias nofree noundef nonnull align 2 dereferenceable(4320) %0, i64 noundef 2, i64 noundef 19, i64 noundef 7, i1 noundef zeroext false), !noalias !170
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 10 uses
  %i.er = load i32, ptr %i.eq, align 4, !alias.scope !170, !noalias !167, !noundef !4 ; 5 uses
  %i.es = and i32 %i.er, 31
  %i.et = shl i32 2, %i.es
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 10 uses
  %i.ev = load i32, ptr %i.eu, align 8, !alias.scope !170, !noalias !167, !noundef !4
  %i.ew = or i32 %i.et, %i.ev
  %i.ex = add i32 %i.er, 2
  %i.ey = trunc i64 %i.z to i32
  %i.ez = sub i32 29, %i.ey
  %i.fa = and i32 %i.ex, 31
  %i.fb = shl i32 %i.ez, %i.fa
  %i.fc = or i32 %i.ew, %i.fb
  %i.fd = add i32 %i.er, 7
  %i.fe = trunc i64 %i.ai to i32
  %i.ff = sub i32 29, %i.fe
  %i.fg = and i32 %i.fd, 31
  %i.fh = shl i32 %i.ff, %i.fg
  %i.fi = or i32 %i.fc, %i.fh                     ; 2 uses
  store i32 %i.fi, ptr %i.eu, align 8, !alias.scope !170, !noalias !167
  %i.fj = add i32 %i.er, 12                       ; 2 uses
  store i32 %i.fj, ptr %i.eq, align 4, !alias.scope !170, !noalias !167
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !172
  store ptr @25, ptr %i.j, align 8, !noalias !172
  %i.fk = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr getelementptr inbounds nuw (i8, ptr @25, i64 19), ptr %i.fk, align 8, !noalias !172
  %i.fl = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  store i8 0, ptr %i.fl, align 8, !noalias !172
  %i.fm = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  store ptr %i.s, ptr %i.fm, align 8, !noalias !172
  %i.fn = call { i64, i64 } @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters3revINtB5_3RevINtNtNtBb_5slice4iter4IterhEENtNtNtB9_6traits8iterator8Iterator8try_foldjNCINvNvXs0_NtB7_10take_whileINtB2i_9TakeWhileppEB1p_8try_fold5checkRhjINtNtNtBb_3ops9try_trait17NeverShortCircuitjENCNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB46_12HuffmanOxide19start_dynamic_blocks0_0NCINvMB3i_B3f_10wrap_mut_2jB3c_NCNvYIB2A_BM_B3Y_EB1p_5count0E0E0INtNtB3k_12control_flow11ControlFlowB3f_jEEB4a_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.j, i64 noundef 0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.fm, ptr noalias nofree noundef nonnull dereferenceable(1) %i.fl), !noalias !170
  %i.fo = extractvalue { i64, i64 } %i.fn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !172
  %i.fp = sub i64 19, %i.fo                       ; 2 uses
  %..i.i = call noundef range(i64 4, 0) i64 @llvm.umax.i64(i64 %i.fp, i64 4) ; 3 uses
  %i.fq = trunc i64 %..i.i to i32
  %i.fr = add i32 %i.fq, -4                       ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !285)
  %.not.not.i.i = icmp ult i32 %i.fr, 16
  br i1 %.not.not.i.i, label %bb.at, label %bb.as, !prof !67

bb.as:                                            ; preds = %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3rev3RevINtNtNtBc_5slice4iter4IterhEENCNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB22_12HuffmanOxide19start_dynamic_blocks0_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3u_5count0EB26_.exit.i
  call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 48, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #22, !noalias !288
  unreachable

bb.at:                                            ; preds = %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3rev3RevINtNtNtBc_5slice4iter4IterhEENCNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB22_12HuffmanOxide19start_dynamic_blocks0_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3u_5count0EB26_.exit.i
  %i.fs = and i32 %i.fj, 31
  %i.ft = shl i32 %i.fr, %i.fs
  %i.fu = or i32 %i.ft, %i.fi                     ; 3 uses
  store i32 %i.fu, ptr %i.eu, align 8, !alias.scope !288, !noalias !167
  %i.fv = add i32 %i.er, 16                       ; 3 uses
  %i.fw = icmp ugt i32 %i.fv, 7
  br i1 %i.fw, label %.lr.ph.i.i, label %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit.i

.lr.ph.i.i:                                       ; preds = %bb.at
  %i.fx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fz = load i64, ptr %i.fy, align 8, !alias.scope !288, !noalias !167, !noundef !4 ; 2 uses
  %i.ga = load ptr, ptr %1, align 8, !alias.scope !288, !noalias !167, !nonnull !4
  %.promoted6.i.i = load i64, ptr %i.fx, align 8, !alias.scope !288, !noalias !167 ; 2 uses
  %umax.i.i = call i64 @llvm.umax.i64(i64 %.promoted6.i.i, i64 %i.fz) ; 2 uses
  br label %bb.au

bb.au:                                            ; preds = %bb.av, %.lr.ph.i.i
  %i.gb = phi i64 [ %.promoted6.i.i, %.lr.ph.i.i ], [ %i.gf, %bb.av ] ; 3 uses
  %storemerge5.i.i = phi i32 [ %i.fv, %.lr.ph.i.i ], [ %i.gh, %bb.av ] ; 2 uses
  %i.gc = phi i32 [ %i.fu, %.lr.ph.i.i ], [ %i.gg, %bb.av ] ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.gb, %umax.i.i
  br i1 %exitcond.not.i.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.gb
  %i.ge = trunc i32 %i.gc to i8
  store i8 %i.ge, ptr %i.gd, align 1, !noalias !288
  %i.gf = add i64 %i.gb, 1                        ; 2 uses
  store i64 %i.gf, ptr %i.fx, align 8, !alias.scope !288, !noalias !167
  %i.gg = lshr i32 %i.gc, 8                       ; 3 uses
  store i32 %i.gg, ptr %i.eu, align 8, !alias.scope !288, !noalias !167
  %i.gh = add i32 %storemerge5.i.i, -8            ; 3 uses
  %i.gi = icmp ugt i32 %i.gh, 7
  br i1 %i.gi, label %bb.au, label %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit.i

bb.aw:                                            ; preds = %bb.au
  store i32 %storemerge5.i.i, ptr %i.eq, align 4, !alias.scope !288, !noalias !167
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %umax.i.i, i64 noundef %i.fz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #22, !noalias !288
  unreachable

_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit.i: ; preds = %bb.av, %bb.at
  %.promoted95.i = phi i32 [ %i.fu, %bb.at ], [ %i.gg, %bb.av ]
  %.promoted.i = phi i32 [ %i.fv, %bb.at ], [ %i.gh, %bb.av ] ; 2 uses
  store i32 %.promoted.i, ptr %i.eq, align 4, !alias.scope !288, !noalias !167
  %i.gj = icmp ult i64 %i.fp, 20
  br i1 %i.gj, label %.lr.ph99.i, label %bb.ax, !prof !46

bb.ax:                                            ; preds = %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit.i
  call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %..i.i, i64 noundef 19, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #22, !noalias !170
  unreachable

.lr.ph99.i:                                       ; preds = %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit.i
  %i.gk = getelementptr inbounds nuw i8, ptr @25, i64 %..i.i
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 4032 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.go = load i64, ptr %i.gn, align 8, !alias.scope !170, !noalias !167 ; 6 uses
  %i.gp = load ptr, ptr %1, align 8, !alias.scope !170, !noalias !167, !nonnull !4 ; 3 uses
  %.promoted100.i = load i64, ptr %i.gm, align 8, !alias.scope !170, !noalias !167
  br label %bb.ay

.preheader.i:                                     ; preds = %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit54.i
  %i.gq = load i64, ptr %i.l, align 8, !noalias !172, !noundef !4 ; 2 uses
  %.not115.i = icmp eq i64 %i.gq, 0
  br i1 %.not115.i, label %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide19start_dynamic_block.exit, label %.lr.ph110.i

.lr.ph110.i:                                      ; preds = %.preheader.i
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 2880
  %i.gs = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.gt = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  br label %bb.bc

bb.ay:                                            ; preds = %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit54.i, %.lr.ph99.i
  %i.gu = phi i64 [ %.promoted100.i, %.lr.ph99.i ], [ %.promoted112.i, %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit54.i ] ; 5 uses
  %.sroa.013.097.i = phi ptr [ @25, %.lr.ph99.i ], [ %i.gz, %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit54.i ] ; 2 uses
  %i.gv = phi i32 [ %.promoted.i, %.lr.ph99.i ], [ %storemerge.lcssa.i48.i, %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit54.i ] ; 4 uses
  %i.gw = phi i32 [ %.promoted95.i, %.lr.ph99.i ], [ %i.hm, %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit54.i ]
  %i.gx = load i8, ptr %.sroa.013.097.i, align 1, !noalias !172, !noundef !4
  %i.gy = zext i8 %i.gx to i64
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.013.097.i, i64 1 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gl, i64 %i.gy
  %i.hb = load i8, ptr %i.ha, align 1, !alias.scope !167, !noalias !170, !noundef !4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !289)
  %.not.not.i47.i = icmp ult i8 %i.hb, 8
  br i1 %.not.not.i47.i, label %bb.ba, label %bb.az, !prof !67

bb.az:                                            ; preds = %bb.ay
  call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 48, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #22, !noalias !292
  unreachable

bb.ba:                                            ; preds = %bb.ay
  %i.hc = zext nneg i8 %i.hb to i32
  %i.hd = shl nuw nsw i32 %i.hc, %i.gv
  %i.he = or i32 %i.hd, %i.gw                     ; 4 uses
  store i32 %i.he, ptr %i.eu, align 8, !alias.scope !292, !noalias !167
  %i.hf = add nuw nsw i32 %i.gv, 3                ; 2 uses
  %i.hg = icmp ugt i32 %i.gv, 4
  br i1 %i.hg, label %.lr.ph.i49.i, label %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit54.i

.lr.ph.i49.i:                                     ; preds = %bb.ba
  %exitcond.not.i53.not.i = icmp ult i64 %i.gu, %i.go
  br i1 %exitcond.not.i53.not.i, label %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit54.loopexit.i, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph.i49.i
  store i32 %i.hf, ptr %i.eq, align 4, !alias.scope !292, !noalias !167
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.gu, i64 noundef %i.go, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #22, !noalias !292
  unreachable

_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit54.loopexit.i: ; preds = %.lr.ph.i49.i
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.gu
  %i.hi = trunc i32 %i.he to i8
  store i8 %i.hi, ptr %i.hh, align 1, !noalias !292
  %i.hj = add nuw i64 %i.gu, 1                    ; 2 uses
  store i64 %i.hj, ptr %i.gm, align 8, !alias.scope !292, !noalias !167
  %i.hk = lshr i32 %i.he, 8                       ; 2 uses
  store i32 %i.hk, ptr %i.eu, align 8, !alias.scope !292, !noalias !167
  %i.hl = add nsw i32 %i.gv, -5
  br label %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit54.i

_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit54.i: ; preds = %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit54.loopexit.i, %bb.ba
  %.promoted112.i = phi i64 [ %i.gu, %bb.ba ], [ %i.hj, %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit54.loopexit.i ] ; 2 uses
  %i.hm = phi i32 [ %i.he, %bb.ba ], [ %i.hk, %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit54.loopexit.i ] ; 3 uses
  %storemerge.lcssa.i48.i = phi i32 [ %i.hf, %bb.ba ], [ %i.hl, %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit54.loopexit.i ] ; 4 uses
  store i32 %storemerge.lcssa.i48.i, ptr %i.eq, align 4, !alias.scope !292, !noalias !167
  %i.hn = icmp eq ptr %i.gz, %i.gk
  br i1 %i.hn, label %.preheader.i, label %bb.ay

bb.bc:                                            ; preds = %bb.bm, %.lr.ph110.i
  %i.ho = phi i64 [ %.promoted112.i, %.lr.ph110.i ], [ %i.is, %bb.bm ] ; 3 uses
  %.sroa.016.0109.i = phi i64 [ 0, %.lr.ph110.i ], [ %.sroa.016.1.i, %bb.bm ] ; 6 uses
  %storemerge.lcssa.i66103108.i = phi i32 [ %storemerge.lcssa.i48.i, %.lr.ph110.i ], [ %storemerge.lcssa.i66104.i, %bb.bm ] ; 2 uses
  %i.hp = phi i32 [ %i.hm, %.lr.ph110.i ], [ %i.it, %bb.bm ]
  %i.hq = icmp ult i64 %.sroa.016.0109.i, 320
  br i1 %i.hq, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.hr = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.016.0109.i
  %i.hs = load i8, ptr %i.hr, align 1, !noalias !172, !noundef !4 ; 3 uses
  %i.ht = zext i8 %i.hs to i64                    ; 3 uses
  %i.hu = add nuw nsw i64 %.sroa.016.0109.i, 1    ; 2 uses
  %i.hv = icmp ult i8 %i.hs, 19
  br i1 %i.hv, label %bb.bg, label %bb.bf, !prof !67

bb.be:                                            ; preds = %bb.bc
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %.sroa.016.0109.i, i64 noundef 320, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #22, !noalias !170
  unreachable

end_hunk_2
begin_hunk_3_@_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core14compress_block:bb.a
  %i.js = phi i32 [ %i.hm, %.preheader.i ], [ %i.it, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !172
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !172
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !172
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !172
  br label %bb.bz

bb.bv:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !301)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !304)
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 3456
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(144) %i.jt, i8 8, i64 144, i1 false), !alias.scope !301, !noalias !304
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 3600
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(112) %i.ju, i8 9, i64 112, i1 false), !alias.scope !301, !noalias !304
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 3712
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.jv, i8 7, i64 24, i1 false), !alias.scope !301, !noalias !304
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 3736
  store i64 578721382704613384, ptr %i.jw, align 2, !alias.scope !301, !noalias !304
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 3744
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %i.jx, i8 5, i64 32, i1 false), !alias.scope !301, !noalias !304
  tail call fastcc void @_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide14optimize_table(ptr noalias nofree noundef nonnull align 2 dereferenceable(4320) %0, i64 noundef 0, i64 noundef 288, i64 noundef 15, i1 noundef zeroext true), !noalias !304
  tail call fastcc void @_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide14optimize_table(ptr noalias nofree noundef nonnull align 2 dereferenceable(4320) %0, i64 noundef 1, i64 noundef 32, i64 noundef 15, i1 noundef zeroext true), !noalias !304
  tail call void @llvm.experimental.noalias.scope.decl(metadata !306)
  %i.jy = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 3 uses
  %i.jz = load i32, ptr %i.jy, align 4, !alias.scope !309, !noalias !301, !noundef !4 ; 2 uses
  %i.ka = and i32 %i.jz, 31
  %i.kb = shl nuw i32 1, %i.ka
  %i.kc = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.kd = load i32, ptr %i.kc, align 8, !alias.scope !309, !noalias !301, !noundef !4
  %i.ke = or i32 %i.kb, %i.kd                     ; 3 uses
  store i32 %i.ke, ptr %i.kc, align 8, !alias.scope !309, !noalias !301
  %i.kf = add i32 %i.jz, 2                        ; 3 uses
  %i.kg = icmp ugt i32 %i.kf, 7
  br i1 %i.kg, label %.lr.ph.i.i2, label %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide18start_static_block.exit

.lr.ph.i.i2:                                      ; preds = %bb.bv
  %i.kh = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.kj = load i64, ptr %i.ki, align 8, !alias.scope !309, !noalias !301, !noundef !4 ; 2 uses
  %i.kk = load ptr, ptr %1, align 8, !alias.scope !309, !noalias !301, !nonnull !4
  %.promoted6.i.i3 = load i64, ptr %i.kh, align 8, !alias.scope !309, !noalias !301 ; 2 uses
  %umax.i.i4 = tail call i64 @llvm.umax.i64(i64 %.promoted6.i.i3, i64 %i.kj) ; 2 uses
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bx, %.lr.ph.i.i2
  %i.kl = phi i64 [ %.promoted6.i.i3, %.lr.ph.i.i2 ], [ %i.kp, %bb.bx ] ; 3 uses
  %storemerge5.i.i5 = phi i32 [ %i.kf, %.lr.ph.i.i2 ], [ %i.kr, %bb.bx ] ; 2 uses
  %i.km = phi i32 [ %i.ke, %.lr.ph.i.i2 ], [ %i.kq, %bb.bx ] ; 2 uses
  %exitcond.not.i.i6 = icmp eq i64 %i.kl, %umax.i.i4
  br i1 %exitcond.not.i.i6, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kk, i64 %i.kl
  %i.ko = trunc i32 %i.km to i8
  store i8 %i.ko, ptr %i.kn, align 1, !noalias !310
  %i.kp = add i64 %i.kl, 1                        ; 2 uses
  store i64 %i.kp, ptr %i.kh, align 8, !alias.scope !309, !noalias !301
  %i.kq = lshr i32 %i.km, 8                       ; 3 uses
  store i32 %i.kq, ptr %i.kc, align 8, !alias.scope !309, !noalias !301
  %i.kr = add i32 %storemerge5.i.i5, -8           ; 3 uses
  %i.ks = icmp ugt i32 %i.kr, 7
  br i1 %i.ks, label %bb.bw, label %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide18start_static_block.exit

bb.by:                                            ; preds = %bb.bw
  store i32 %storemerge5.i.i5, ptr %i.jy, align 4, !alias.scope !309, !noalias !301
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %umax.i.i4, i64 noundef %i.kj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #22, !noalias !310
  unreachable

_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide18start_static_block.exit: ; preds = %bb.bx, %bb.bv
  %i.kt = phi i32 [ %i.ke, %bb.bv ], [ %i.kq, %bb.bx ]
  %storemerge.lcssa.i.i = phi i32 [ %i.kf, %bb.bv ], [ %i.kr, %bb.bx ] ; 2 uses
  store i32 %storemerge.lcssa.i.i, ptr %i.jy, align 4, !alias.scope !309, !noalias !301
  br label %bb.bz

bb.bz:                                            ; preds = %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide19start_dynamic_block.exit, %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide18start_static_block.exit
  %i.ku = phi i32 [ %i.jr, %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide19start_dynamic_block.exit ], [ %storemerge.lcssa.i.i, %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide18start_static_block.exit ] ; 2 uses
  %i.kv = phi i32 [ %i.js, %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide19start_dynamic_block.exit ], [ %i.kt, %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide18start_static_block.exit ]
  %i.kw = getelementptr inbounds nuw i8, ptr %2, i64 65536
  %i.kx = load i64, ptr %i.kw, align 8, !noundef !4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !311)
  call void @llvm.experimental.noalias.scope.decl(metadata !314)
  call void @llvm.experimental.noalias.scope.decl(metadata !316)
  %i.ky = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.kz = zext i32 %i.kv to i64                   ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 5 uses
  %..i.i7 = call noundef i64 @llvm.umin.i64(i64 %i.kx, i64 65536) ; 3 uses
  %.not106.i = icmp eq i64 %i.kx, 0
  br i1 %.not106.i, label %._crit_edge.i12, label %.lr.ph.i8

.lr.ph.i8:                                        ; preds = %bb.bz
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 1728 ; 4 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 3456 ; 4 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 2304
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 3744
  %i.lf = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.lh = load i64, ptr %i.lg, align 8, !alias.scope !314, !noalias !318 ; 3 uses
  %i.li = load ptr, ptr %1, align 8, !alias.scope !314, !noalias !318, !nonnull !4
  %.promoted.i9 = load i64, ptr %i.lf, align 8, !alias.scope !314, !noalias !318
  br label %bb.ca

._crit_edge.i12:                                  ; preds = %_RNvMs8_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_9BitBuffer5flush.exit.i, %bb.bz
  %.sroa.19.0.lcssa.i = phi i32 [ %i.ku, %bb.bz ], [ %i.rg, %_RNvMs8_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_9BitBuffer5flush.exit.i ] ; 2 uses
  %.sroa.0.066.lcssa.i = phi i64 [ %i.kz, %bb.bz ], [ %i.rf, %_RNvMs8_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_9BitBuffer5flush.exit.i ]
  store i32 0, ptr %i.la, align 4, !alias.scope !314, !noalias !318
  store i32 0, ptr %i.ky, align 8, !alias.scope !314, !noalias !318
  %i.lj = icmp eq i32 %.sroa.19.0.lcssa.i, 0
  br i1 %i.lj, label %._crit_edge103.i, label %.lr.ph102.i

.lr.ph102.i:                                      ; preds = %._crit_edge.i12
  %i.lk = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.lm = load i64, ptr %i.ll, align 8, !alias.scope !314, !noalias !318 ; 2 uses
  %i.ln = load ptr, ptr %1, align 8, !alias.scope !314, !noalias !318, !nonnull !4
  %.promoted104.i = load i64, ptr %i.lk, align 8, !alias.scope !314, !noalias !318
  br label %bb.cg

bb.ca:                                            ; preds = %_RNvMs8_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_9BitBuffer5flush.exit.i, %.lr.ph.i8
  %i.lo = phi i64 [ %.promoted.i9, %.lr.ph.i8 ], [ %i.rb, %_RNvMs8_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_9BitBuffer5flush.exit.i ] ; 6 uses
  %.sroa.02.094.i = phi i32 [ 1, %.lr.ph.i8 ], [ %.sroa.02.2.i, %_RNvMs8_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_9BitBuffer5flush.exit.i ] ; 2 uses
  %.sroa.07.093.i = phi i64 [ 0, %.lr.ph.i8 ], [ %.sroa.07.2.i, %_RNvMs8_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_9BitBuffer5flush.exit.i ] ; 3 uses
  %.sroa.0.06692.i = phi i64 [ %i.kz, %.lr.ph.i8 ], [ %i.rf, %_RNvMs8_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_9BitBuffer5flush.exit.i ] ; 2 uses
  %.sroa.19.091.i = phi i32 [ %i.ku, %.lr.ph.i8 ], [ %i.rg, %_RNvMs8_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_9BitBuffer5flush.exit.i ] ; 4 uses
  %i.lp = icmp eq i32 %.sroa.02.094.i, 1
  br i1 %i.lp, label %bb.cm, label %bb.cn

._crit_edge103.i:                                 ; preds = %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit46.i, %._crit_edge.i12
  %i.lq = phi i32 [ 0, %._crit_edge.i12 ], [ %i.nk, %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit46.i ]
  %i.lr = phi i32 [ 0, %._crit_edge.i12 ], [ %storemerge.lcssa.i40.i, %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit46.i ] ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 2240
  %i.lt = load i16, ptr %i.ls, align 2, !alias.scope !311, !noalias !319, !noundef !4
  %i.lu = zext i16 %i.lt to i32                   ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 3712
  %i.lw = load i8, ptr %i.lv, align 2, !alias.scope !311, !noalias !319, !noundef !4
  %i.lx = zext i8 %i.lw to i32                    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !320)
  %i.ly = and i32 %i.lx, 31
  %.highbits.i.i = lshr i32 %i.lu, %i.ly
  %.not.not.i.i13 = icmp eq i32 %.highbits.i.i, 0
  br i1 %.not.not.i.i13, label %bb.cc, label %bb.cb, !prof !67

bb.cb:                                            ; preds = %._crit_edge103.i
  call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 48, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #22, !noalias !323
  unreachable

bb.cc:                                            ; preds = %._crit_edge103.i
  %i.lz = shl nuw nsw i32 %i.lu, %i.lr
  %i.ma = or i32 %i.lz, %i.lq                     ; 2 uses
  store i32 %i.ma, ptr %i.ky, align 8, !alias.scope !324, !noalias !318
  %i.mb = add nuw nsw i32 %i.lr, %i.lx            ; 3 uses
  %i.mc = icmp samesign ugt i32 %i.mb, 7
  br i1 %i.mc, label %.lr.ph.i.i16, label %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit.i14

.lr.ph.i.i16:                                     ; preds = %bb.cc
  %i.md = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.mf = load i64, ptr %i.me, align 8, !alias.scope !324, !noalias !318, !noundef !4 ; 2 uses
  %i.mg = load ptr, ptr %1, align 8, !alias.scope !324, !noalias !318, !nonnull !4
  %.promoted6.i.i17 = load i64, ptr %i.md, align 8, !alias.scope !324, !noalias !318 ; 2 uses
  %umax.i.i18 = call i64 @llvm.umax.i64(i64 %.promoted6.i.i17, i64 %i.mf) ; 2 uses
  br label %bb.cd

bb.cd:                                            ; preds = %bb.ce, %.lr.ph.i.i16
  %i.mh = phi i64 [ %.promoted6.i.i17, %.lr.ph.i.i16 ], [ %i.ml, %bb.ce ] ; 3 uses
  %storemerge5.i.i19 = phi i32 [ %i.mb, %.lr.ph.i.i16 ], [ %i.mn, %bb.ce ] ; 2 uses
  %i.mi = phi i32 [ %i.ma, %.lr.ph.i.i16 ], [ %i.mm, %bb.ce ] ; 2 uses
  %exitcond.not.i.i20 = icmp eq i64 %i.mh, %umax.i.i18
  br i1 %exitcond.not.i.i20, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mg, i64 %i.mh
  %i.mk = trunc i32 %i.mi to i8
  store i8 %i.mk, ptr %i.mj, align 1, !noalias !323
  %i.ml = add i64 %i.mh, 1                        ; 2 uses
  store i64 %i.ml, ptr %i.md, align 8, !alias.scope !324, !noalias !318
  %i.mm = lshr i32 %i.mi, 8                       ; 2 uses
  store i32 %i.mm, ptr %i.ky, align 8, !alias.scope !324, !noalias !318
  %i.mn = add nsw i32 %storemerge5.i.i19, -8      ; 3 uses
  %i.mo = icmp ugt i32 %i.mn, 7
  br i1 %i.mo, label %bb.cd, label %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit.i14

bb.cf:                                            ; preds = %bb.cd
  store i32 %storemerge5.i.i19, ptr %i.la, align 4, !alias.scope !324, !noalias !318
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %umax.i.i18, i64 noundef %i.mf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #22, !noalias !323
  unreachable

_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit.i14: ; preds = %bb.ce, %bb.cc
  %storemerge.lcssa.i.i15 = phi i32 [ %i.mb, %bb.cc ], [ %i.mn, %bb.ce ]
  store i32 %storemerge.lcssa.i.i15, ptr %i.la, align 4, !alias.scope !324, !noalias !318
  br label %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core17compress_lz_codes.exit

bb.cg:                                            ; preds = %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit46.i, %.lr.ph102.i
  %i.mp = phi i64 [ %.promoted104.i, %.lr.ph102.i ], [ %i.nj, %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit46.i ] ; 3 uses
  %.sroa.0.1100.i = phi i64 [ %.sroa.0.066.lcssa.i, %.lr.ph102.i ], [ %i.nl, %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit46.i ] ; 2 uses
  %.sroa.19.199.i = phi i32 [ %.sroa.19.0.lcssa.i, %.lr.ph102.i ], [ %i.nm, %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit46.i ] ; 2 uses
  %i.mq = phi i32 [ 0, %.lr.ph102.i ], [ %storemerge.lcssa.i40.i, %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit46.i ] ; 2 uses
  %i.mr = phi i32 [ 0, %.lr.ph102.i ], [ %i.nk, %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit46.i ]
  %..i37.i = call noundef i32 @llvm.umin.i32(i32 range(i32 1, 0) %.sroa.19.199.i, i32 16) ; 4 uses
  %i.ms = zext nneg i32 %..i37.i to i64           ; 2 uses
  %i.mt = trunc i64 %.sroa.0.1100.i to i32
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr @57, i64 %i.ms
  %i.mv = load i32, ptr %i.mu, align 4, !noalias !325, !noundef !4
  %i.mw = and i32 %i.mv, %i.mt                    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !326)
  %.highbits.i38.i = lshr i32 %i.mw, %..i37.i
  %.not.not.i39.i = icmp eq i32 %.highbits.i38.i, 0
  br i1 %.not.not.i39.i, label %bb.ci, label %bb.ch, !prof !67

bb.ch:                                            ; preds = %bb.cg
  call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 48, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #22, !noalias !329
  unreachable

bb.ci:                                            ; preds = %bb.cg
  %i.mx = shl i32 %i.mw, %i.mq
  %i.my = or i32 %i.mx, %i.mr                     ; 3 uses
  store i32 %i.my, ptr %i.ky, align 8, !alias.scope !330, !noalias !318
  %i.mz = add nuw nsw i32 %i.mq, %..i37.i         ; 3 uses
  %i.na = icmp ugt i32 %i.mz, 7
  br i1 %i.na, label %.lr.ph.i41.i, label %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit46.i

.lr.ph.i41.i:                                     ; preds = %bb.ci
  %umax.i43.i = call i64 @llvm.umax.i64(i64 %i.mp, i64 %i.lm) ; 2 uses
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ck, %.lr.ph.i41.i
  %i.nb = phi i64 [ %i.mp, %.lr.ph.i41.i ], [ %i.nf, %bb.ck ] ; 3 uses
  %storemerge5.i44.i = phi i32 [ %i.mz, %.lr.ph.i41.i ], [ %i.nh, %bb.ck ] ; 2 uses
  %i.nc = phi i32 [ %i.my, %.lr.ph.i41.i ], [ %i.ng, %bb.ck ] ; 2 uses
  %exitcond.not.i45.i = icmp eq i64 %i.nb, %umax.i43.i
  br i1 %exitcond.not.i45.i, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.nd = getelementptr inbounds nuw i8, ptr %i.ln, i64 %i.nb
  %i.ne = trunc i32 %i.nc to i8
  store i8 %i.ne, ptr %i.nd, align 1, !noalias !329
  %i.nf = add i64 %i.nb, 1                        ; 3 uses
  store i64 %i.nf, ptr %i.lk, align 8, !alias.scope !330, !noalias !318
  %i.ng = lshr i32 %i.nc, 8                       ; 3 uses
  store i32 %i.ng, ptr %i.ky, align 8, !alias.scope !330, !noalias !318
  %i.nh = add nsw i32 %storemerge5.i44.i, -8      ; 3 uses
  %i.ni = icmp ugt i32 %i.nh, 7
  br i1 %i.ni, label %bb.cj, label %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit46.i

bb.cl:                                            ; preds = %bb.cj
  store i32 %storemerge5.i44.i, ptr %i.la, align 4, !alias.scope !330, !noalias !318
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %umax.i43.i, i64 noundef %i.lm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #22, !noalias !329
  unreachable

_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit46.i: ; preds = %bb.ck, %bb.ci
  %i.nj = phi i64 [ %i.mp, %bb.ci ], [ %i.nf, %bb.ck ]
  %i.nk = phi i32 [ %i.my, %bb.ci ], [ %i.ng, %bb.ck ] ; 2 uses
  %storemerge.lcssa.i40.i = phi i32 [ %i.mz, %bb.ci ], [ %i.nh, %bb.ck ] ; 3 uses
  store i32 %storemerge.lcssa.i40.i, ptr %i.la, align 4, !alias.scope !330, !noalias !318
  %i.nl = lshr i64 %.sroa.0.1100.i, %i.ms
  %i.nm = sub i32 %.sroa.19.199.i, %..i37.i       ; 2 uses
  %i.nn = icmp eq i32 %i.nm, 0
  br i1 %i.nn, label %._crit_edge103.i, label %bb.cg

bb.cm:                                            ; preds = %bb.ca
  %i.no = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.07.093.i
  %i.np = load i8, ptr %i.no, align 1, !alias.scope !316, !noalias !331, !noundef !4
  %i.nq = zext i8 %i.np to i32
  %i.nr = or disjoint i32 %i.nq, 256
  %i.ns = add nuw nsw i64 %.sroa.07.093.i, 1
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.ca
  %.sroa.07.1.i = phi i64 [ %i.ns, %bb.cm ], [ %.sroa.07.093.i, %bb.ca ] ; 8 uses
  %.sroa.02.1.i = phi i32 [ %i.nr, %bb.cm ], [ %.sroa.02.094.i, %bb.ca ] ; 7 uses
  %i.nt = and i32 %.sroa.02.1.i, 1
  %.not.i10 = icmp eq i32 %i.nt, 0
  br i1 %.not.i10, label %.preheader.i21, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.nu = lshr i32 %.sroa.02.1.i, 1
  %i.nv = and i64 %.sroa.07.1.i, 65535
  %i.nw = getelementptr inbounds nuw i8, ptr %2, i64 %i.nv
  %i.nx = load i8, ptr %i.nw, align 1, !alias.scope !316, !noalias !331, !noundef !4
  %i.ny = zext i8 %i.nx to i64                    ; 3 uses
  %i.nz = add nuw nsw i64 %.sroa.07.1.i, 2
  %i.oa = and i64 %i.nz, 65535
  %i.ob = add nuw nsw i64 %.sroa.07.1.i, 1
  %i.oc = and i64 %i.ob, 65535
  %i.od = getelementptr inbounds nuw i8, ptr %2, i64 %i.oc
  %i.oe = load i8, ptr %i.od, align 1, !alias.scope !316, !noalias !331, !noundef !4
  %i.of = zext i8 %i.oe to i16
  %i.og = getelementptr inbounds nuw i8, ptr %2, i64 %i.oa
  %i.oh = load i8, ptr %i.og, align 1, !alias.scope !316, !noalias !331, !noundef !4 ; 4 uses
  %i.oi = zext i8 %i.oh to i16
  %i.oj = shl nuw i16 %i.oi, 8
  %i.ok = or disjoint i16 %i.oj, %i.of            ; 2 uses
  %i.ol = add nuw nsw i64 %.sroa.07.1.i, 3
  %i.om = getelementptr inbounds nuw i8, ptr @45, i64 %i.ny
  %i.on = load i8, ptr %i.om, align 1, !noalias !325, !noundef !4
  %i.oo = and i8 %i.on, 31
  %i.op = zext nneg i8 %i.oo to i64
  %i.oq = or disjoint i64 %i.op, 256              ; 2 uses
  %i.or = getelementptr inbounds nuw [2 x i8], ptr %i.lb, i64 %i.oq
  %i.os = load i16, ptr %i.or, align 2, !alias.scope !311, !noalias !319, !noundef !4
  %i.ot = zext i16 %i.os to i64
  %i.ou = getelementptr inbounds nuw i8, ptr %i.lc, i64 %i.oq
  %i.ov = load i8, ptr %i.ou, align 1, !alias.scope !311, !noalias !319, !noundef !4
  %i.ow = zext i8 %i.ov to i32
  %i.ox = and i32 %.sroa.19.091.i, 63
  %i.oy = zext nneg i32 %i.ox to i64
  %i.oz = shl i64 %i.ot, %i.oy
  %i.pa = add i32 %.sroa.19.091.i, %i.ow          ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr @58, i64 %i.ny
  %i.pc = load i8, ptr %i.pb, align 1, !noalias !325, !noundef !4 ; 2 uses
  %i.pd = and i8 %i.pc, 7
  %i.pe = zext nneg i8 %i.pd to i64
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr @57, i64 %i.pe
  %i.pg = load i32, ptr %i.pf, align 4, !noalias !325, !noundef !4
  %i.ph = zext i32 %i.pg to i64
  %i.pi = and i64 %i.ph, %i.ny
  %i.pj = zext i8 %i.pc to i32
  %i.pk = and i32 %i.pa, 63
  %i.pl = zext nneg i32 %i.pk to i64
  %i.pm = shl i64 %i.pi, %i.pl
  %i.pn = add i32 %i.pa, %i.pj                    ; 2 uses
  %i.po = icmp ult i8 %i.oh, 2
  br i1 %i.po, label %bb.ct, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.pp = zext i8 %i.oh to i64                    ; 3 uses
  %i.pq = icmp sgt i8 %i.oh, -1
  br i1 %i.pq, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.pr = getelementptr inbounds nuw i8, ptr @43, i64 %i.pp
  %i.ps = getelementptr inbounds nuw i8, ptr @60, i64 %i.pp
  br label %bb.cs

bb.cr:                                            ; preds = %bb.cp
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.pp, i64 noundef 128, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #22, !noalias !325
  unreachable

bb.cs:                                            ; preds = %bb.ct, %bb.cq
  %.sroa.021.0.in.in.i = phi ptr [ %i.qv, %bb.ct ], [ %i.ps, %bb.cq ]
  %.sroa.017.0.in.in.i = phi ptr [ %i.qu, %bb.ct ], [ %i.pr, %bb.cq ]
  %.sroa.017.0.in.i = load i8, ptr %.sroa.017.0.in.in.i, align 1, !noalias !325, !noundef !4
  %.sroa.017.0.i = zext i8 %.sroa.017.0.in.i to i64 ; 2 uses
  %.sroa.021.0.in.i = load i8, ptr %.sroa.021.0.in.in.i, align 1, !noalias !325, !noundef !4 ; 2 uses
  %i.pt = getelementptr inbounds nuw [2 x i8], ptr %i.ld, i64 %.sroa.017.0.i
  %i.pu = load i16, ptr %i.pt, align 2, !alias.scope !311, !noalias !319, !noundef !4
  %i.pv = zext i16 %i.pu to i64
  %i.pw = getelementptr inbounds nuw i8, ptr %i.le, i64 %.sroa.017.0.i
  %i.px = load i8, ptr %i.pw, align 1, !alias.scope !311, !noalias !319, !noundef !4
  %i.py = zext i8 %i.px to i32
  %i.pz = and i32 %i.pn, 63
  %i.qa = zext nneg i32 %i.pz to i64
  %i.qb = shl i64 %i.pv, %i.qa
  %i.qc = add i32 %i.pn, %i.py                    ; 2 uses
  %i.qd = and i8 %.sroa.021.0.in.i, 15
  %i.qe = zext nneg i8 %i.qd to i64
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr @57, i64 %i.qe
  %i.qg = load i32, ptr %i.qf, align 4, !noalias !325, !noundef !4
  %i.qh = zext i16 %i.ok to i32
  %i.qi = and i32 %i.qg, %i.qh
  %i.qj = zext nneg i32 %i.qi to i64
  %i.qk = zext i8 %.sroa.021.0.in.i to i32
  %i.ql = and i32 %i.qc, 63
  %i.qm = zext nneg i32 %i.ql to i64
  %i.qn = shl i64 %i.qj, %i.qm
  %i.qo = or i64 %i.oz, %i.pm
  %i.qp = or i64 %i.qo, %i.qb
  %i.qq = or i64 %i.qp, %i.qn
  %i.qr = or i64 %i.qq, %.sroa.0.06692.i
  %i.qs = add i32 %i.qc, %i.qk
  br label %.loopexit.i

bb.ct:                                            ; preds = %bb.co
  %i.qt = zext nneg i16 %i.ok to i64              ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr @44, i64 %i.qt
  %i.qv = getelementptr inbounds nuw i8, ptr @61, i64 %i.qt
  br label %bb.cs

.loopexit.i:                                      ; preds = %.preheader.i21.2, %.preheader.i21, %.preheader.i21.1, %bb.cs
  %.sroa.19.2.i = phi i32 [ %i.qs, %bb.cs ], [ %i.ry, %.preheader.i21 ], [ %i.tk, %.preheader.i21.2 ], [ %i.sr, %.preheader.i21.1 ] ; 3 uses
  %.sroa.0.2.i11 = phi i64 [ %i.qr, %bb.cs ], [ %i.rx, %.preheader.i21 ], [ %i.tj, %.preheader.i21.2 ], [ %i.sq, %.preheader.i21.1 ] ; 2 uses
  %.sroa.07.2.i = phi i64 [ %i.ol, %bb.cs ], [ %i.rj, %.preheader.i21 ], [ %i.sv, %.preheader.i21.2 ], [ %i.sc, %.preheader.i21.1 ] ; 2 uses
  %.sroa.02.2.i = phi i32 [ %i.nu, %bb.cs ], [ %i.ri, %.preheader.i21 ], [ %i.su, %.preheader.i21.2 ], [ %i.sb, %.preheader.i21.1 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !332)
  %i.qw = add i64 %i.lo, 8                        ; 2 uses
  %i.qx = icmp ugt i64 %i.lo, -9
  %.not.i.i = icmp ugt i64 %i.qw, %i.lh
  %or.cond.i.i = or i1 %i.qx, %.not.i.i
  br i1 %or.cond.i.i, label %bb.cv, label %bb.cu, !prof !74

bb.cu:                                            ; preds = %.loopexit.i
  %i.qy = getelementptr inbounds nuw i8, ptr %i.li, i64 %i.lo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !335
  store i64 %.sroa.0.2.i11, ptr %i.a, align 8, !noalias !335
  call void @_RINvNtCshzWfHUSfYae_4core5slice20copy_from_slice_implhECsjkkKzr5dxZe_11miniz_oxide(ptr noalias nofree noundef nonnull %i.qy, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11), !noalias !335
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !335
  %i.qz = lshr i32 %.sroa.19.2.i, 3
  %i.ra = zext nneg i32 %i.qz to i64
  %i.rb = add i64 %i.lo, %i.ra                    ; 4 uses
  %i.rc = icmp ult i64 %i.rb, %i.lo
  %.not5.i.i = icmp ugt i64 %i.rb, %i.lh
  %or.cond6.i.i = or i1 %i.rc, %.not5.i.i
  br i1 %or.cond6.i.i, label %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core17compress_lz_codes.exit, label %_RNvMs8_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_9BitBuffer5flush.exit.i, !prof !337

bb.cv:                                            ; preds = %.loopexit.i
  call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %i.lo, i64 noundef %i.qw, i64 noundef %i.lh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #22, !noalias !335
  unreachable

_RNvMs8_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_9BitBuffer5flush.exit.i: ; preds = %bb.cu
  store i64 %i.rb, ptr %i.lf, align 8, !alias.scope !338, !noalias !339
  %i.rd = and i32 %.sroa.19.2.i, 56
  %i.re = zext nneg i32 %i.rd to i64
  %i.rf = lshr i64 %.sroa.0.2.i11, %i.re          ; 2 uses
  %i.rg = and i32 %.sroa.19.2.i, 7                ; 2 uses
  %i.rh = icmp ult i64 %.sroa.07.2.i, %..i.i7
  br i1 %i.rh, label %bb.ca, label %._crit_edge.i12

.preheader.i21:                                   ; preds = %bb.cn
  %i.ri = lshr exact i32 %.sroa.02.1.i, 1
  %i.rj = add i64 %.sroa.07.1.i, 1                ; 3 uses
  %i.rk = and i64 %.sroa.07.1.i, 65535
  %i.rl = getelementptr inbounds nuw i8, ptr %2, i64 %i.rk
  %i.rm = load i8, ptr %i.rl, align 1, !alias.scope !316, !noalias !331, !noundef !4
  %i.rn = zext i8 %i.rm to i64                    ; 2 uses
  %i.ro = getelementptr inbounds nuw [2 x i8], ptr %i.lb, i64 %i.rn
  %i.rp = load i16, ptr %i.ro, align 2, !alias.scope !311, !noalias !319, !noundef !4
  %i.rq = zext i16 %i.rp to i64
  %i.rr = getelementptr inbounds nuw i8, ptr %i.lc, i64 %i.rn
  %i.rs = load i8, ptr %i.rr, align 1, !alias.scope !311, !noalias !319, !noundef !4
  %i.rt = zext i8 %i.rs to i32
  %i.ru = and i32 %.sroa.19.091.i, 63
  %i.rv = zext nneg i32 %i.ru to i64
  %i.rw = shl i64 %i.rq, %i.rv
  %i.rx = or i64 %i.rw, %.sroa.0.06692.i          ; 2 uses
  %i.ry = add i32 %.sroa.19.091.i, %i.rt          ; 3 uses
  %i.rz = and i32 %.sroa.02.1.i, 2
  %.not36.i = icmp eq i32 %i.rz, 0
  %i.sa = icmp ult i64 %i.rj, %..i.i7
  %or.cond = select i1 %.not36.i, i1 %i.sa, i1 false
  br i1 %or.cond, label %.preheader.i21.1, label %.loopexit.i

.preheader.i21.1:                                 ; preds = %.preheader.i21
  %i.sb = lshr exact i32 %.sroa.02.1.i, 2
  %i.sc = add i64 %.sroa.07.1.i, 2                ; 3 uses
  %i.sd = and i64 %i.rj, 65535
  %i.se = getelementptr inbounds nuw i8, ptr %2, i64 %i.sd
  %i.sf = load i8, ptr %i.se, align 1, !alias.scope !316, !noalias !331, !noundef !4
  %i.sg = zext i8 %i.sf to i64                    ; 2 uses
  %i.sh = getelementptr inbounds nuw [2 x i8], ptr %i.lb, i64 %i.sg
  %i.si = load i16, ptr %i.sh, align 2, !alias.scope !311, !noalias !319, !noundef !4
  %i.sj = zext i16 %i.si to i64
  %i.sk = getelementptr inbounds nuw i8, ptr %i.lc, i64 %i.sg
  %i.sl = load i8, ptr %i.sk, align 1, !alias.scope !311, !noalias !319, !noundef !4
  %i.sm = zext i8 %i.sl to i32
  %i.sn = and i32 %i.ry, 63
  %i.so = zext nneg i32 %i.sn to i64
  %i.sp = shl i64 %i.sj, %i.so
  %i.sq = or i64 %i.sp, %i.rx                     ; 2 uses
  %i.sr = add i32 %i.ry, %i.sm                    ; 3 uses
  %i.ss = and i32 %.sroa.02.1.i, 4
  %.not36.i.1 = icmp eq i32 %i.ss, 0
  %i.st = icmp ult i64 %i.sc, %..i.i7
  %or.cond415 = select i1 %.not36.i.1, i1 %i.st, i1 false
  br i1 %or.cond415, label %.preheader.i21.2, label %.loopexit.i

.preheader.i21.2:                                 ; preds = %.preheader.i21.1
  %i.su = lshr exact i32 %.sroa.02.1.i, 3
  %i.sv = add i64 %.sroa.07.1.i, 3
  %i.sw = and i64 %i.sc, 65535
  %i.sx = getelementptr inbounds nuw i8, ptr %2, i64 %i.sw
  %i.sy = load i8, ptr %i.sx, align 1, !alias.scope !316, !noalias !331, !noundef !4
  %i.sz = zext i8 %i.sy to i64                    ; 2 uses
  %i.ta = getelementptr inbounds nuw [2 x i8], ptr %i.lb, i64 %i.sz
  %i.tb = load i16, ptr %i.ta, align 2, !alias.scope !311, !noalias !319, !noundef !4
  %i.tc = zext i16 %i.tb to i64
  %i.td = getelementptr inbounds nuw i8, ptr %i.lc, i64 %i.sz
  %i.te = load i8, ptr %i.td, align 1, !alias.scope !311, !noalias !319, !noundef !4
  %i.tf = zext i8 %i.te to i32
  %i.tg = and i32 %i.sr, 63
  %i.th = zext nneg i32 %i.tg to i64
  %i.ti = shl i64 %i.tc, %i.th
  %i.tj = or i64 %i.ti, %i.sq
  %i.tk = add i32 %i.sr, %i.tf
  br label %.loopexit.i

_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core17compress_lz_codes.exit: ; preds = %bb.cu, %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit.i14, %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide19start_dynamic_block.exit.thread
  %.sroa.0.0 = phi i8 [ 2, %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide19start_dynamic_block.exit.thread ], [ 1, %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit.i14 ], [ 2, %bb.cu ]
  ret i8 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core14compress_inner(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(65712) initializes((65640, 65656)) %1, ptr noalias nofree noundef align 8 dereferenceable(56) %2, i8 noundef range(i8 0, 5) %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 65640 ; 15 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 65648 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 65700 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.d = load i32, ptr %i.c, align 4, !range !340, !noundef !4
  %i.e = icmp eq i32 %i.d, 0                      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 65705 ; 9 uses
  %i.g = load i8, ptr %i.f, align 1, !range !341, !noundef !4
  %.not18 = icmp eq i8 %i.g, 4
  br i1 %.not18, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i8 %3, 4
  store i8 %3, ptr %i.f, align 1
  %or.cond = and i1 %i.h, %i.e
  br i1 %or.cond, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  store i8 %3, ptr %i.f, align 1
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store i32 -2, ptr %i.c, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 -2, ptr %i.i, align 8
  store i64 0, ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.j, align 8
  br label %bb.fb

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 65684 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !noundef !4
  %i.m = icmp ne i32 %i.l, 0
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 65707 ; 2 uses
  %i.o = load i8, ptr %i.n, align 1, !range !92
  %i.p = trunc nuw i8 %i.o to i1
  %or.cond7 = select i1 %i.m, i1 true, i1 %i.p
  br i1 %or.cond7, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 65664 ; 3 uses
  %i.r = load i32, ptr %i.q, align 8, !noundef !4 ; 2 uses
  %i.s = and i32 %i.r, 524288
  %.not20 = icmp eq i32 %i.s, 0
  br i1 %.not20, label %bb.h, label %.split

bb.g:                                             ; preds = %bb.e
  tail call fastcc void @_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core19flush_output_buffer(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %2, ptr noalias nofree noundef align 8 dereferenceable(72) %i.a)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load i32, ptr %i.t, align 8, !range !340, !noundef !4
  store i32 %i.u, ptr %i.c, align 4
  br label %bb.fb

bb.h:                                             ; preds = %bb.f
  %i.v = and i32 %i.r, 151551
  %brmerge3.not = icmp eq i32 %i.v, 16385
  br i1 %brmerge3.not, label %bb.cc, label %bb.i

.split:                                           ; preds = %bb.f
  %i.w = tail call noundef zeroext i1 @_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate6stored15compress_stored(ptr noalias nofree noundef nonnull align 8 dereferenceable(65712) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %2)
  br i1 %i.w, label %.split._RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core15compress_normal.exit.thread_crit_edge, label %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core15compress_normal.exit.thread41

.split._RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core15compress_normal.exit.thread_crit_edge: ; preds = %.split
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core15compress_normal.exit.thread

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !342)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !345)
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !345, !noalias !342, !noundef !4 ; 5 uses
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core15compress_normal.exit.thread.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !345, !noalias !342, !noundef !4 ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 65560 ; 12 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 65600 ; 3 uses
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !342, !noalias !345, !noundef !4
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 65608 ; 3 uses
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !342, !noalias !345, !noundef !4
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 65704 ; 4 uses
  %i.ah = load i8, ptr %i.ag, align 8, !alias.scope !342, !noalias !345, !noundef !4
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 65672 ; 4 uses
  %i.aj = load i32, ptr %i.ai, align 8, !alias.scope !342, !noalias !345, !noundef !4
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 65676 ; 4 uses
  %i.al = load i32, ptr %i.ak, align 4, !alias.scope !342, !noalias !345, !noundef !4
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 65616 ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 65576 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 65568 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 65624
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 65632 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 65552 ; 11 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 65536 ; 16 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 65544 ; 10 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 65556 ; 15 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 65706
  br label %bb.k

bb.k:                                             ; preds = %.backedge, %bb.j
  %.sroa.0148.0.i = phi i8 [ %i.ah, %bb.j ], [ %.sroa.0148.1.i, %.backedge ] ; 7 uses
  %.sroa.056.0.i = phi i32 [ %i.al, %bb.j ], [ %.sroa.056.1.i, %.backedge ] ; 8 uses
  %.sroa.053.0.i = phi i32 [ %i.aj, %bb.j ], [ %.sroa.053.1.i, %.backedge ] ; 6 uses
  %.sroa.043.0.i = phi i64 [ %i.af, %bb.j ], [ %i.nv, %.backedge ] ; 13 uses
  %.sroa.025.0.i = phi i64 [ %i.ad, %bb.j ], [ %i.sn, %.backedge ] ; 8 uses
  %.sroa.015.0.i = phi i64 [ 0, %bb.j ], [ %.sroa.015.2.i, %.backedge ] ; 11 uses
  %i.aw = icmp ult i64 %.sroa.015.0.i, %i.aa
  br i1 %i.aw, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ax = load i8, ptr %i.f, align 1, !range !341, !alias.scope !342, !noalias !345, !noundef !4
  %i.ay = icmp eq i8 %i.ax, 0
  %i.az = icmp eq i64 %.sroa.025.0.i, 0
  %or.cond8.i = or i1 %i.az, %i.ay
  br i1 %or.cond8.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.loopexit.i, %bb.l
  %.sroa.025.1.i = phi i64 [ %.sroa.025.3.i, %.loopexit.i ], [ %.sroa.025.0.i, %bb.l ]
  %.sroa.015.1.i = phi i64 [ %.sroa.015.2.i, %.loopexit.i ], [ %.sroa.015.0.i, %bb.l ]
  store i64 %.sroa.015.1.i, ptr %i.a, align 8, !alias.scope !342, !noalias !345
  store i64 %.sroa.025.1.i, ptr %i.ac, align 8, !alias.scope !342, !noalias !345
  store i64 %.sroa.043.0.i, ptr %i.ae, align 8, !alias.scope !342, !noalias !345
  store i8 %.sroa.0148.0.i, ptr %i.ag, align 8, !alias.scope !342, !noalias !345
  store i32 %.sroa.053.0.i, ptr %i.ai, align 8, !alias.scope !342, !noalias !345
  store i32 %.sroa.056.0.i, ptr %i.ak, align 4, !alias.scope !342, !noalias !345
  br label %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core15compress_normal.exit.thread

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.ba = sub i64 %i.aa, %.sroa.015.0.i
  %i.bb = sub i64 258, %.sroa.025.0.i
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.bb, i64 %i.ba) ; 7 uses
  %i.bc = load i64, ptr %i.am, align 8, !alias.scope !342, !noalias !345, !noundef !4
  %i.bd = add i64 %i.bc, %.sroa.025.0.i
  %i.be = icmp ugt i64 %i.bd, 1
  %i.bf = icmp ne i64 %..i.i, 0
  %or.cond.i = and i1 %i.bf, %i.be
  br i1 %or.cond.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bg = add i64 %..i.i, %.sroa.015.0.i          ; 5 uses
  %i.bh = icmp ult i64 %i.bg, %.sroa.015.0.i
  %.not169.i = icmp ugt i64 %i.bg, %i.aa
  %or.cond182.i = or i1 %i.bh, %.not169.i
  br i1 %or.cond182.i, label %bb.q, label %bb.r, !prof !74

bb.p:                                             ; preds = %bb.n
  %i.bi = add i64 %..i.i, %.sroa.025.0.i
  %i.bj = add i64 %..i.i, %.sroa.015.0.i          ; 4 uses
  %i.bk = icmp ult i64 %i.bj, %.sroa.015.0.i
  %.not170.i = icmp ugt i64 %i.bj, %i.aa
  %or.cond183.i = or i1 %i.bk, %.not170.i
  br i1 %or.cond183.i, label %bb.w, label %.lr.ph254.preheader.i, !prof !74

bb.q:                                             ; preds = %bb.o
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %.sroa.015.0.i, i64 noundef %i.bg, i64 noundef %i.aa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #22, !noalias !345
  unreachable

bb.r:                                             ; preds = %bb.o
  %i.bl = getelementptr inbounds nuw i8, ptr %i.y, i64 %.sroa.015.0.i ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %..i.i
  %i.bn = icmp samesign eq i64 %..i.i, 0
  br i1 %i.bn, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.r, %bb.v
  %.sroa.025.2248.i = phi i64 [ %i.bv, %bb.v ], [ %.sroa.025.0.i, %bb.r ] ; 2 uses
  %.sroa.079.0247.i = phi ptr [ %i.bo, %bb.v ], [ %i.bl, %bb.r ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.079.0247.i, i64 1 ; 2 uses
  %i.bp = load i8, ptr %.sroa.079.0247.i, align 1, !noalias !345, !noundef !4 ; 3 uses
  %i.bq = add i64 %.sroa.025.2248.i, %.sroa.043.0.i
  %i.br = and i64 %i.bq, 32767                    ; 3 uses
  %i.bs = load ptr, ptr %i.ab, align 8, !alias.scope !342, !noalias !345, !nonnull !4, !noundef !4
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.br
  store i8 %i.bp, ptr %i.bt, align 1, !noalias !345
  %i.bu = icmp samesign ult i64 %i.br, 257
  br i1 %i.bu, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.t, %.lr.ph.i
  %i.bv = add i64 %.sroa.025.2248.i, 1            ; 4 uses
  %i.bw = load i64, ptr %i.am, align 8, !alias.scope !342, !noalias !345, !noundef !4
  %i.bx = add i64 %i.bw, %i.bv
  %i.by = icmp ugt i64 %i.bx, 2
  br i1 %i.by, label %bb.u, label %bb.v

bb.t:                                             ; preds = %.lr.ph.i
  %i.bz = load ptr, ptr %i.ab, align 8, !alias.scope !342, !noalias !345, !nonnull !4, !noundef !4
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.br
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 32768
  store i8 %i.bp, ptr %i.cb, align 1, !noalias !345
  br label %bb.s

bb.u:                                             ; preds = %bb.s
  %i.cc = add i64 %i.bv, %.sroa.043.0.i           ; 2 uses
  %i.cd = add i64 %i.cc, -3                       ; 2 uses
  %i.ce = and i64 %i.cd, 32767                    ; 2 uses
  %i.cf = add i64 %i.cc, 32766
  %i.cg = and i64 %i.cf, 32767
  %i.ch = load ptr, ptr %i.ab, align 8, !alias.scope !342, !noalias !345, !nonnull !4, !noundef !4 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.ce
  %i.cj = load i8, ptr %i.ci, align 1, !noalias !345, !noundef !4
  %i.ck = zext i8 %i.cj to i64
  %i.cl = shl nuw nsw i64 %i.ck, 10
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cg
  %i.cn = load i8, ptr %i.cm, align 1, !noalias !345, !noundef !4
  %i.co = zext i8 %i.cn to i64
  %i.cp = shl nuw nsw i64 %i.co, 5
  %i.cq = zext i8 %i.bp to i64
  %i.cr = xor i64 %i.cp, %i.cq
  %.masked.i = and i64 %i.cl, 31744
  %i.cs = xor i64 %i.cr, %.masked.i               ; 2 uses
  %i.ct = load ptr, ptr %i.an, align 8, !alias.scope !342, !noalias !345, !nonnull !4, !noundef !4
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %i.cs
  %i.cv = load i16, ptr %i.cu, align 2, !noalias !345, !noundef !4
  %i.cw = load ptr, ptr %i.ao, align 8, !alias.scope !342, !noalias !345, !nonnull !4, !noundef !4
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %i.cw, i64 %i.ce
  store i16 %i.cv, ptr %i.cx, align 2, !noalias !345
  %i.cy = load ptr, ptr %i.an, align 8, !alias.scope !342, !noalias !345, !nonnull !4, !noundef !4
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr %i.cy, i64 %i.cs
  %i.da = trunc i64 %i.cd to i16
  store i16 %i.da, ptr %i.cz, align 2, !noalias !345
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.s
  %i.db = icmp eq ptr %i.bo, %i.bm
  br i1 %i.db, label %.loopexit.i, label %.lr.ph.i

.loopexit.i:                                      ; preds = %bb.v, %bb.x, %bb.r
  %.sroa.025.3.i = phi i64 [ %i.bi, %bb.x ], [ %.sroa.025.0.i, %bb.r ], [ %i.bv, %bb.v ] ; 10 uses
  %.sroa.015.2.i = phi i64 [ %i.bj, %bb.x ], [ %i.bg, %bb.r ], [ %i.bg, %bb.v ] ; 3 uses
  %i.dc = sub i64 32768, %.sroa.025.3.i
  %i.dd = load i64, ptr %i.am, align 8, !alias.scope !342, !noalias !345, !noundef !4
  %..i187.i = tail call noundef i64 @llvm.umin.i64(i64 %i.dd, i64 %i.dc) ; 9 uses
  store i64 %..i187.i, ptr %i.am, align 8, !alias.scope !342, !noalias !345
  %i.de = load i8, ptr %i.f, align 1, !range !341, !alias.scope !342, !noalias !345, !noundef !4
  %i.df = icmp eq i8 %i.de, 0
  %i.dg = icmp ult i64 %.sroa.025.3.i, 258
  %or.cond11.i = and i1 %i.dg, %i.df
  br i1 %or.cond11.i, label %bb.m, label %bb.z

bb.w:                                             ; preds = %bb.p
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %.sroa.015.0.i, i64 noundef %i.bj, i64 noundef %i.aa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #22, !noalias !345
  unreachable

.lr.ph254.preheader.i:                            ; preds = %bb.p
  %i.dh = getelementptr inbounds nuw i8, ptr %i.y, i64 %.sroa.015.0.i ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %..i.i
  %i.dj = load ptr, ptr %i.ab, align 8, !alias.scope !342, !noalias !345, !nonnull !4, !noundef !4 ; 2 uses
  %i.dk = add i64 %.sroa.025.0.i, %.sroa.043.0.i  ; 3 uses
  %i.dl = add i64 %i.dk, -2                       ; 2 uses
  %i.dm = and i64 %i.dl, 32767
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 1, !noalias !345, !noundef !4
  %i.dp = zext i8 %i.do to i16
  %i.dq = shl nuw nsw i16 %i.dp, 5
  %i.dr = add i64 %i.dk, 32767
  %i.ds = and i64 %i.dr, 32767
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.ds
  %i.du = load i8, ptr %i.dt, align 1, !noalias !345, !noundef !4
  %i.dv = zext i8 %i.du to i16
  %i.dw = xor i16 %i.dq, %i.dv
  br label %.lr.ph254.i

.lr.ph254.i:                                      ; preds = %bb.x, %.lr.ph254.preheader.i
  %.sroa.065.0253.in.i = phi i64 [ %i.ep, %bb.x ], [ %i.dk, %.lr.ph254.preheader.i ]
  %.sroa.069.0252.i = phi i64 [ %i.eq, %bb.x ], [ %i.dl, %.lr.ph254.preheader.i ] ; 3 uses
  %.sroa.074.0251.i = phi ptr [ %i.dx, %bb.x ], [ %i.dh, %.lr.ph254.preheader.i ] ; 2 uses
  %.sroa.076.0250.i = phi i16 [ %i.ee, %bb.x ], [ %i.dw, %.lr.ph254.preheader.i ]
  %.sroa.065.0253.i = and i64 %.sroa.065.0253.in.i, 32767 ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.074.0251.i, i64 1 ; 2 uses
  %i.dy = load i8, ptr %.sroa.074.0251.i, align 1, !noalias !345, !noundef !4 ; 3 uses
  %i.dz = load ptr, ptr %i.ab, align 8, !alias.scope !342, !noalias !345, !nonnull !4, !noundef !4
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 %.sroa.065.0253.i
  store i8 %i.dy, ptr %i.ea, align 1, !noalias !345
  %i.eb = icmp samesign ult i64 %.sroa.065.0253.i, 257
  br i1 %i.eb, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.y, %.lr.ph254.i
  %i.ec = shl i16 %.sroa.076.0250.i, 5
  %i.ed = zext i8 %i.dy to i16
  %.masked171.i = and i16 %i.ec, 32736
  %i.ee = xor i16 %.masked171.i, %i.ed            ; 2 uses
  %i.ef = zext nneg i16 %i.ee to i64              ; 2 uses
  %i.eg = and i64 %.sroa.069.0252.i, 32767
  %i.eh = load ptr, ptr %i.an, align 8, !alias.scope !342, !noalias !345, !nonnull !4, !noundef !4
  %i.ei = getelementptr inbounds nuw [2 x i8], ptr %i.eh, i64 %i.ef
  %i.ej = load i16, ptr %i.ei, align 2, !noalias !345, !noundef !4
  %i.ek = load ptr, ptr %i.ao, align 8, !alias.scope !342, !noalias !345, !nonnull !4, !noundef !4
  %i.el = getelementptr inbounds nuw [2 x i8], ptr %i.ek, i64 %i.eg
  store i16 %i.ej, ptr %i.el, align 2, !noalias !345
  %i.em = load ptr, ptr %i.an, align 8, !alias.scope !342, !noalias !345, !nonnull !4, !noundef !4
  %i.en = getelementptr inbounds nuw [2 x i8], ptr %i.em, i64 %i.ef
  %i.eo = trunc i64 %.sroa.069.0252.i to i16
  store i16 %i.eo, ptr %i.en, align 2, !noalias !345
  %i.ep = add nuw nsw i64 %.sroa.065.0253.i, 1
  %i.eq = add i64 %.sroa.069.0252.i, 1
  %i.er = icmp eq ptr %i.dx, %i.di
  br i1 %i.er, label %.loopexit.i, label %.lr.ph254.i

bb.y:                                             ; preds = %.lr.ph254.i
  %i.es = load ptr, ptr %i.ab, align 8, !alias.scope !342, !noalias !345, !nonnull !4, !noundef !4
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 %.sroa.065.0253.i
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 32768
  store i8 %i.dy, ptr %i.eu, align 1, !noalias !345
  br label %bb.x

bb.z:                                             ; preds = %.loopexit.i
  %i.ev = icmp eq i32 %.sroa.056.0.i, 0           ; 3 uses
  %i.ew = and i64 %.sroa.043.0.i, 32767           ; 14 uses
  %i.ex = load i32, ptr %i.q, align 8, !alias.scope !342, !noalias !345, !noundef !4 ; 3 uses
  %i.ey = and i32 %i.ex, 65536                    ; 2 uses
  %.not174.i = icmp eq i32 %i.ey, 0               ; 2 uses
  br i1 %i.ev, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  br i1 %.not174.i, label %bb.ac, label %bb.ax

bb.ab:                                            ; preds = %bb.z
  br i1 %.not174.i, label %bb.ac, label %bb.az

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.sroa.0118.0.i = phi i32 [ 2, %bb.aa ], [ %.sroa.056.0.i, %bb.ab ] ; 12 uses
  %i.ez = trunc i64 %.sroa.025.3.i to i32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !347)
  %..i.i.i = tail call noundef i32 @llvm.umin.i32(i32 %i.ez, i32 258) ; 4 uses
  %.not.i.i = icmp ugt i32 %..i.i.i, %.sroa.0118.0.i
  br i1 %.not.i.i, label %bb.ad, label %_RNvMsc_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_9DictOxide10find_match.exit.i

bb.ad:                                            ; preds = %bb.ac
  %i.fa = icmp samesign ult i32 %.sroa.0118.0.i, 32
  %.sroa.026.0.in.v.i.i = select i1 %i.fa, i64 24, i64 28
  %.sroa.026.0.in.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.sroa.026.0.in.v.i.i
  %.sroa.026.0.i.i = load i32, ptr %.sroa.026.0.in.i.i, align 4, !alias.scope !350, !noalias !345, !noundef !4
  %i.fb = load ptr, ptr %i.ab, align 8, !alias.scope !350, !noalias !345, !nonnull !4, !noundef !4 ; 8 uses
  %i.fc = zext nneg i32 %.sroa.0118.0.i to i64    ; 2 uses
  %i.fd = getelementptr i8, ptr %i.fb, i64 %i.ew  ; 2 uses
  %i.fe = getelementptr i8, ptr %i.fd, i64 %i.fc
  %i.ff = getelementptr i8, ptr %i.fe, i64 -1
  %i.fg = load i16, ptr %i.ff, align 1, !noalias !351 ; 4 uses
  %i.fh = load i16, ptr %i.fd, align 1, !noalias !351 ; 2 uses
  %i.fi = add i32 %.sroa.026.0.i.i, -1            ; 3 uses
  %i.fj = icmp eq i32 %i.fi, 0
  br i1 %i.fj, label %_RNvMsc_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_9DictOxide10find_match.exit.i, label %.preheader.lr.ph.lr.ph.i.i

.preheader.lr.ph.lr.ph.i.i:                       ; preds = %bb.ad
  %i.fk = load ptr, ptr %i.ao, align 8, !alias.scope !350, !noalias !345, !nonnull !4, !noundef !4 ; 6 uses
  %i.fl = add nuw nsw i64 %i.ew, 2
  %i.fm = load i8, ptr %i.ap, align 8, !alias.scope !350, !noalias !345
  %.fr.i.i = freeze i8 %i.fm                      ; 2 uses
  %i.fn = zext i8 %.fr.i.i to i32
  %.not228.i.i = icmp eq i8 %.fr.i.i, 0
  br i1 %.not228.i.i, label %.preheader.lr.ph.preheader.i.i, label %.preheader.lr.ph.us.i.i

.preheader.lr.ph.us.i.i:                          ; preds = %.preheader.lr.ph.lr.ph.i.i, %bb.ap
  %i.fo = phi i32 [ %i.hq, %bb.ap ], [ %i.fi, %.preheader.lr.ph.lr.ph.i.i ]
  %.sroa.0.0173.us.i.i = phi i32 [ %.sroa.0.2.us.i.i, %bb.ap ], [ 0, %.preheader.lr.ph.lr.ph.i.i ] ; 8 uses
  %.sroa.05.0172.us.i.i = phi i32 [ %.sroa.05.2.us.i.i, %bb.ap ], [ %.sroa.0118.0.i, %.preheader.lr.ph.lr.ph.i.i ] ; 9 uses
  %.sroa.020.0171.us.i.i = phi i64 [ %.lcssa248.ph.i.i, %bb.ap ], [ %i.ew, %.preheader.lr.ph.lr.ph.i.i ]
  %.sroa.033.0170.us.i.i = phi i16 [ %.sroa.033.2.us.i.i, %bb.ap ], [ %i.fg, %.preheader.lr.ph.lr.ph.i.i ] ; 5 uses
  %i.fp = zext nneg i32 %.sroa.05.0172.us.i.i to i64 ; 2 uses
  %i.fq = icmp eq i32 %.sroa.05.0172.us.i.i, 0
  br i1 %i.fq, label %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterhENCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core15compress_normal0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2I_5count0EB1L_.exit.thread.i, label %.preheader.us177.preheader.i.i

.preheader.us177.preheader.i.i:                   ; preds = %.preheader.lr.ph.us.i.i
  %invariant.gep.i.i = getelementptr i8, ptr %i.fb, i64 %i.fp ; 3 uses
  br label %.preheader.us177.i.i

bb.ae:                                            ; preds = %.preheader.us177.i.i
  %i.fr = and i64 %i.hv, 32767                    ; 3 uses
  %gep.i.i = getelementptr i8, ptr %invariant.gep.i.i, i64 %i.fr
  %i.fs = getelementptr i8, ptr %gep.i.i, i64 -1
  %i.ft = load i16, ptr %i.fs, align 1, !noalias !351
  %i.fu = icmp eq i16 %i.ft, %.sroa.033.0170.us.i.i
  br i1 %i.fu, label %.loopexit.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fv = getelementptr inbounds nuw [2 x i8], ptr %i.fk, i64 %i.fr
  %i.fw = load i16, ptr %i.fv, align 2, !noalias !351, !noundef !4 ; 2 uses
  %i.fx = zext i16 %i.fw to i64                   ; 2 uses
  %i.fy = sub i64 %.sroa.043.0.i, %i.fx
  %i.fz = and i64 %i.fy, 65535                    ; 2 uses
  %i.ga = icmp eq i16 %i.fw, 0
  %i.gb = icmp ugt i64 %i.fz, %..i187.i
  %or.cond.us176.1.i.i = or i1 %i.ga, %i.gb
  br i1 %or.cond.us176.1.i.i, label %_RNvMsc_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_9DictOxide10find_match.exit.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gc = and i64 %i.fx, 32767                    ; 3 uses
  %gep312.i.i = getelementptr i8, ptr %invariant.gep.i.i, i64 %i.gc
  %i.gd = getelementptr i8, ptr %gep312.i.i, i64 -1
  %i.ge = load i16, ptr %i.gd, align 1, !noalias !351
  %i.gf = icmp eq i16 %i.ge, %.sroa.033.0170.us.i.i
  br i1 %i.gf, label %.loopexit.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gg = getelementptr inbounds nuw [2 x i8], ptr %i.fk, i64 %i.gc
  %i.gh = load i16, ptr %i.gg, align 2, !noalias !351, !noundef !4 ; 2 uses
  %i.gi = zext i16 %i.gh to i64                   ; 2 uses
  %i.gj = sub i64 %.sroa.043.0.i, %i.gi
  %i.gk = and i64 %i.gj, 65535                    ; 2 uses
  %i.gl = icmp eq i16 %i.gh, 0
  %i.gm = icmp ugt i64 %i.gk, %..i187.i
  %or.cond.us176.2.i.i = or i1 %i.gl, %i.gm
  br i1 %or.cond.us176.2.i.i, label %_RNvMsc_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_9DictOxide10find_match.exit.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gn = and i64 %i.gi, 32767                    ; 3 uses
  %gep314.i.i = getelementptr i8, ptr %invariant.gep.i.i, i64 %i.gn
  %i.go = getelementptr i8, ptr %gep314.i.i, i64 -1
  %i.gp = load i16, ptr %i.go, align 1, !noalias !351
  %i.gq = icmp eq i16 %i.gp, %.sroa.033.0170.us.i.i
  br i1 %i.gq, label %.loopexit.i.i, label %.loopexit.split.us.i.i

.loopexit.i.i:                                    ; preds = %bb.ai, %bb.ag, %bb.ae
  %.lcssa248.ph.i.i = phi i64 [ %i.gn, %bb.ai ], [ %i.gc, %bb.ag ], [ %i.fr, %bb.ae ] ; 3 uses
  %.lcssa244.ph.i.i = phi i64 [ %i.gk, %bb.ai ], [ %i.fz, %bb.ag ], [ %i.hx, %bb.ae ] ; 3 uses
  %i.gr = icmp eq i64 %.lcssa244.ph.i.i, 0
  br i1 %i.gr, label %_RNvMsc_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_9DictOxide10find_match.exit.i, label %bb.aj

bb.aj:                                            ; preds = %.loopexit.i.i
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fb, i64 %.lcssa248.ph.i.i
  %i.gt = load i16, ptr %i.gs, align 1, !noalias !351
  %.not63.us.i.i = icmp eq i16 %i.gt, %i.fh
  br i1 %.not63.us.i.i, label %.lr.ph.us.i.i, label %bb.ap

.lr.ph.us.i.i:                                    ; preds = %bb.aj
  %i.gu = add nuw nsw i64 %.lcssa248.ph.i.i, 2
  br label %bb.ak

bb.ak:                                            ; preds = %bb.al, %.lr.ph.us.i.i
  %.sroa.028.0166.us.i.i = phi i64 [ %i.fl, %.lr.ph.us.i.i ], [ %i.hb, %bb.al ] ; 3 uses
  %.sroa.031.0165.us.i.i = phi i64 [ %i.gu, %.lr.ph.us.i.i ], [ %i.hc, %bb.al ] ; 2 uses
  %.sroa.036.0164.us.i.i = phi i32 [ 0, %.lr.ph.us.i.i ], [ %i.ha, %bb.al ]
  %i.gv = and i64 %.sroa.028.0166.us.i.i, 32767
  %i.gw = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.gv
  %.sroa.01.0.copyload.i.us.i.i = load i64, ptr %i.gw, align 1, !noalias !351 ; 2 uses
  %i.gx = and i64 %.sroa.031.0165.us.i.i, 32767
  %i.gy = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.gx
  %.sroa.01.0.copyload.i68.us.i.i = load i64, ptr %i.gy, align 1, !noalias !351 ; 2 uses
  %i.gz = icmp eq i64 %.sroa.01.0.copyload.i.us.i.i, %.sroa.01.0.copyload.i68.us.i.i
  br i1 %i.gz, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.ha = add nuw nsw i32 %.sroa.036.0164.us.i.i, 1 ; 2 uses
  %i.hb = add nuw nsw i64 %.sroa.028.0166.us.i.i, 8
  %i.hc = add nuw nsw i64 %.sroa.031.0165.us.i.i, 8
  %exitcond.not.i.i = icmp eq i32 %i.ha, %i.fn
  br i1 %exitcond.not.i.i, label %._crit_edge168.i.i, label %bb.ak

bb.am:                                            ; preds = %bb.ak
  %i.hd = xor i64 %.sroa.01.0.copyload.i68.us.i.i, %.sroa.01.0.copyload.i.us.i.i
  %i.he = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.hd, i1 true)
  %i.hf = sub nsw i64 %.sroa.028.0166.us.i.i, %i.ew
  %i.hg = lshr i64 %i.he, 3
  %i.hh = add i64 %i.hg, %i.hf                    ; 2 uses
  %i.hi = icmp ugt i64 %i.hh, %i.fp
  br i1 %i.hi, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.hj = trunc nuw nsw i64 %.lcssa244.ph.i.i to i32 ; 2 uses
  %i.hk = trunc i64 %i.hh to i32                  ; 2 uses
  %..i69.us.i.i = tail call noundef i32 @llvm.umin.i32(i32 %i.hk, i32 range(i32 1, 0) %..i.i.i) ; 3 uses
  %.not64.us.i.i = icmp ugt i32 %..i.i.i, %i.hk
  br i1 %.not64.us.i.i, label %bb.ao, label %_RNvMsc_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_9DictOxide10find_match.exit.i

bb.ao:                                            ; preds = %bb.an
  %i.hl = zext nneg i32 %..i69.us.i.i to i64
  %i.hm = add nuw nsw i64 %i.ew, %i.hl
  %i.hn = tail call i64 @llvm.usub.sat.i64(i64 %i.hm, i64 1)
  %i.ho = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.hn
  %i.hp = load i16, ptr %i.ho, align 1, !noalias !351
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.am, %bb.aj
  %.sroa.033.2.us.i.i = phi i16 [ %.sroa.033.0170.us.i.i, %bb.aj ], [ %i.hp, %bb.ao ], [ %.sroa.033.0170.us.i.i, %bb.am ]
  %.sroa.05.2.us.i.i = phi i32 [ %.sroa.05.0172.us.i.i, %bb.aj ], [ %..i69.us.i.i, %bb.ao ], [ %.sroa.05.0172.us.i.i, %bb.am ] ; 2 uses
  %.sroa.0.2.us.i.i = phi i32 [ %.sroa.0.0173.us.i.i, %bb.aj ], [ %i.hj, %bb.ao ], [ %.sroa.0.0173.us.i.i, %bb.am ] ; 2 uses
  %i.hq = add i32 %i.hs, -1                       ; 2 uses
  %i.hr = icmp eq i32 %i.hq, 0
  br i1 %i.hr, label %_RNvMsc_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_9DictOxide10find_match.exit.i, label %.preheader.lr.ph.us.i.i

.preheader.us177.i.i:                             ; preds = %.loopexit.split.us.i.i, %.preheader.us177.preheader.i.i
  %i.hs = phi i32 [ %i.ia, %.loopexit.split.us.i.i ], [ %i.fo, %.preheader.us177.preheader.i.i ] ; 2 uses
  %.sroa.020.1114.us178.i.i = phi i64 [ %i.gn, %.loopexit.split.us.i.i ], [ %.sroa.020.0171.us.i.i, %.preheader.us177.preheader.i.i ]
  %i.ht = getelementptr inbounds nuw [2 x i8], ptr %i.fk, i64 %.sroa.020.1114.us178.i.i
  %i.hu = load i16, ptr %i.ht, align 2, !noalias !351, !noundef !4 ; 2 uses
  %i.hv = zext i16 %i.hu to i64                   ; 2 uses
  %i.hw = sub i64 %.sroa.043.0.i, %i.hv
  %i.hx = and i64 %i.hw, 65535                    ; 2 uses
  %i.hy = icmp eq i16 %i.hu, 0
  %i.hz = icmp ugt i64 %i.hx, %..i187.i
  %or.cond.us176.i.i = or i1 %i.hy, %i.hz
  br i1 %or.cond.us176.i.i, label %_RNvMsc_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_9DictOxide10find_match.exit.i, label %bb.ae

.loopexit.split.us.i.i:                           ; preds = %bb.ai
  %i.ia = add i32 %i.hs, -1                       ; 2 uses
  %i.ib = icmp eq i32 %i.ia, 0
  br i1 %i.ib, label %_RNvMsc_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_9DictOxide10find_match.exit.i, label %.preheader.us177.i.i

.preheader.lr.ph.preheader.i.i:                   ; preds = %.preheader.lr.ph.lr.ph.i.i
  %invariant.gep315.i.i = getelementptr i8, ptr %i.fb, i64 %i.fc ; 3 uses
  br label %.preheader.i.i

.loopexit.split.i.i:                              ; preds = %bb.au
  %i.ic = add i32 %i.ie, -1                       ; 2 uses
  %i.id = icmp eq i32 %i.ic, 0
  br i1 %i.id, label %_RNvMsc_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_9DictOxide10find_match.exit.i, label %.preheader.i.i.backedge

.preheader.i.i.backedge:                          ; preds = %.loopexit.split.i.i, %bb.aw
  %.be = phi i32 [ %i.ic, %.loopexit.split.i.i ], [ %i.jq, %bb.aw ]
  %.sroa.020.1114.i.i.be = phi i64 [ %i.ji, %.loopexit.split.i.i ], [ %.lcssa239.ph.i.i, %bb.aw ]
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.backedge, %.preheader.lr.ph.preheader.i.i
  %i.ie = phi i32 [ %i.fi, %.preheader.lr.ph.preheader.i.i ], [ %.be, %.preheader.i.i.backedge ] ; 2 uses
  %.sroa.020.1114.i.i = phi i64 [ %i.ew, %.preheader.lr.ph.preheader.i.i ], [ %.sroa.020.1114.i.i.be, %.preheader.i.i.backedge ]
  %i.if = getelementptr inbounds nuw [2 x i8], ptr %i.fk, i64 %.sroa.020.1114.i.i
  %i.ig = load i16, ptr %i.if, align 2, !noalias !351, !noundef !4 ; 2 uses
  %i.ih = zext i16 %i.ig to i64                   ; 2 uses
  %i.ii = sub i64 %.sroa.043.0.i, %i.ih
  %i.ij = and i64 %i.ii, 65535                    ; 2 uses
  %i.ik = icmp eq i16 %i.ig, 0
  %i.il = icmp ugt i64 %i.ij, %..i187.i
  %or.cond.i.i = or i1 %i.ik, %i.il
  br i1 %or.cond.i.i, label %_RNvMsc_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_9DictOxide10find_match.exit.i, label %bb.aq

bb.aq:                                            ; preds = %.preheader.i.i
  %i.im = and i64 %i.ih, 32767                    ; 3 uses
  %gep316.i.i = getelementptr i8, ptr %invariant.gep315.i.i, i64 %i.im
  %i.in = getelementptr i8, ptr %gep316.i.i, i64 -1
  %i.io = load i16, ptr %i.in, align 1, !noalias !351
  %i.ip = icmp eq i16 %i.io, %i.fg
  br i1 %i.ip, label %.loopexit280.i.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.iq = getelementptr inbounds nuw [2 x i8], ptr %i.fk, i64 %i.im
  %i.ir = load i16, ptr %i.iq, align 2, !noalias !351, !noundef !4 ; 2 uses
  %i.is = zext i16 %i.ir to i64                   ; 2 uses
  %i.it = sub i64 %.sroa.043.0.i, %i.is
  %i.iu = and i64 %i.it, 65535                    ; 2 uses
  %i.iv = icmp eq i16 %i.ir, 0
  %i.iw = icmp ugt i64 %i.iu, %..i187.i
  %or.cond.1.i.i = or i1 %i.iv, %i.iw
  br i1 %or.cond.1.i.i, label %_RNvMsc_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_9DictOxide10find_match.exit.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ix = and i64 %i.is, 32767                    ; 3 uses
  %gep318.i.i = getelementptr i8, ptr %invariant.gep315.i.i, i64 %i.ix
  %i.iy = getelementptr i8, ptr %gep318.i.i, i64 -1
  %i.iz = load i16, ptr %i.iy, align 1, !noalias !351
  %i.ja = icmp eq i16 %i.iz, %i.fg
  br i1 %i.ja, label %.loopexit280.i.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.jb = getelementptr inbounds nuw [2 x i8], ptr %i.fk, i64 %i.ix
  %i.jc = load i16, ptr %i.jb, align 2, !noalias !351, !noundef !4 ; 2 uses
  %i.jd = zext i16 %i.jc to i64                   ; 2 uses
  %i.je = sub i64 %.sroa.043.0.i, %i.jd
  %i.jf = and i64 %i.je, 65535                    ; 2 uses
  %i.jg = icmp eq i16 %i.jc, 0
  %i.jh = icmp ugt i64 %i.jf, %..i187.i
  %or.cond.2.i.i = or i1 %i.jg, %i.jh
  br i1 %or.cond.2.i.i, label %_RNvMsc_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_9DictOxide10find_match.exit.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ji = and i64 %i.jd, 32767                    ; 3 uses
  %gep320.i.i = getelementptr i8, ptr %invariant.gep315.i.i, i64 %i.ji
  %i.jj = getelementptr i8, ptr %gep320.i.i, i64 -1
  %i.jk = load i16, ptr %i.jj, align 1, !noalias !351
  %i.jl = icmp eq i16 %i.jk, %i.fg
  br i1 %i.jl, label %.loopexit280.i.i, label %.loopexit.split.i.i

.loopexit280.i.i:                                 ; preds = %bb.au, %bb.as, %bb.aq
  %.lcssa239.ph.i.i = phi i64 [ %i.ji, %bb.au ], [ %i.ix, %bb.as ], [ %i.im, %bb.aq ] ; 2 uses
  %.lcssa237.ph.i.i = phi i64 [ %i.jf, %bb.au ], [ %i.iu, %bb.as ], [ %i.ij, %bb.aq ] ; 2 uses
  %i.jm = icmp eq i64 %.lcssa237.ph.i.i, 0
  br i1 %i.jm, label %_RNvMsc_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_9DictOxide10find_match.exit.i, label %bb.av

bb.av:                                            ; preds = %.loopexit280.i.i
  %i.jn = getelementptr inbounds nuw i8, ptr %i.fb, i64 %.lcssa239.ph.i.i
  %i.jo = load i16, ptr %i.jn, align 1, !noalias !351
  %.not63.i.i = icmp eq i16 %i.jo, %i.fh
  br i1 %.not63.i.i, label %._crit_edge168.i.i, label %bb.aw

._crit_edge168.i.i:                               ; preds = %bb.av, %bb.al
  %.lcssa75.lcssa76.i.i = phi i64 [ %.lcssa244.ph.i.i, %bb.al ], [ %.lcssa237.ph.i.i, %bb.av ]
  %i.jp = trunc nuw nsw i64 %.lcssa75.lcssa76.i.i to i32
  br label %_RNvMsc_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_9DictOxide10find_match.exit.i

bb.aw:                                            ; preds = %bb.av
  %i.jq = add i32 %i.ie, -1                       ; 2 uses
  %i.jr = icmp eq i32 %i.jq, 0
  br i1 %i.jr, label %_RNvMsc_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_9DictOxide10find_match.exit.i, label %.preheader.i.i.backedge

bb.ax:                                            ; preds = %bb.aa
  %.not175.i = icmp eq i64 %..i187.i, 0
  br i1 %.not175.i, label %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterhENCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core15compress_normal0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2I_5count0EB1L_.exit.thread.i, label %bb.ay

bb.ay:                                            ; preds = %bb.az, %bb.ax
  %i.js = add i64 %.sroa.043.0.i, 32767
  %i.jt = and i64 %i.js, 32767
  %i.ju = load ptr, ptr %i.ab, align 8, !alias.scope !342, !noalias !345, !nonnull !4, !noundef !4 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 %i.jt
  %i.jw = load i8, ptr %i.jv, align 1, !noalias !345, !noundef !4
  %i.jx = add i64 %.sroa.025.3.i, %i.ew           ; 3 uses
  %i.jy = icmp uge i64 %i.jx, %i.ew
  %i.jz = icmp ult i64 %i.jx, 33027
  %or.cond184.i = and i1 %i.jy, %i.jz
  br i1 %or.cond184.i, label %bb.bb, label %bb.ba, !prof !46

bb.az:                                            ; preds = %bb.ab
  %.not173.i = icmp eq i64 %..i187.i, 0
  br i1 %.not173.i, label %_RNvMsc_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_9DictOxide10find_match.exit.i, label %bb.ay

_RNvMsc_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_9DictOxide10find_match.exit.i: ; preds = %bb.ap, %bb.an, %.loopexit.i.i, %bb.aw, %.loopexit280.i.i, %bb.at, %bb.ar, %.preheader.i.i, %.loopexit.split.i.i, %.loopexit.split.us.i.i, %.preheader.us177.i.i, %bb.ah, %bb.af, %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterhENCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core15compress_normal0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2I_5count0EB1L_.exit.i, %bb.az, %._crit_edge168.i.i, %bb.ad, %bb.ac
  %.sroa.0118.2.i = phi i32 [ %i.kk, %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterhENCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core15compress_normal0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2I_5count0EB1L_.exit.i ], [ %.sroa.056.0.i, %bb.az ], [ %.sroa.0118.0.i, %bb.ac ], [ %.sroa.05.0172.us.i.i, %.loopexit.split.us.i.i ], [ %.sroa.0118.0.i, %bb.ad ], [ %..i.i.i, %._crit_edge168.i.i ], [ %.sroa.0118.0.i, %bb.aw ], [ %.sroa.05.0172.us.i.i, %bb.af ], [ %.sroa.05.0172.us.i.i, %bb.ah ], [ %.sroa.05.0172.us.i.i, %.preheader.us177.i.i ], [ %.sroa.0118.0.i, %.loopexit.split.i.i ], [ %.sroa.0118.0.i, %.preheader.i.i ], [ %.sroa.0118.0.i, %bb.ar ], [ %.sroa.0118.0.i, %bb.at ], [ %.sroa.0118.0.i, %.loopexit280.i.i ], [ %.sroa.05.0172.us.i.i, %.loopexit.i.i ], [ %..i69.us.i.i, %bb.an ], [ %.sroa.05.2.us.i.i, %bb.ap ] ; 2 uses
  %.sroa.0110.0.i = phi i32 [ 1, %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterhENCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core15compress_normal0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2I_5count0EB1L_.exit.i ], [ 0, %bb.az ], [ 0, %bb.ac ], [ %.sroa.0.0173.us.i.i, %.loopexit.split.us.i.i ], [ 0, %bb.ad ], [ %i.jp, %._crit_edge168.i.i ], [ 0, %bb.aw ], [ %.sroa.0.0173.us.i.i, %bb.af ], [ %.sroa.0.0173.us.i.i, %bb.ah ], [ %.sroa.0.0173.us.i.i, %.preheader.us177.i.i ], [ 0, %.loopexit.split.i.i ], [ 0, %.preheader.i.i ], [ 0, %bb.ar ], [ 0, %bb.at ], [ 0, %.loopexit280.i.i ], [ %.sroa.0.0173.us.i.i, %.loopexit.i.i ], [ %i.hj, %bb.an ], [ %.sroa.0.2.us.i.i, %bb.ap ] ; 3 uses
  %i.ka = icmp eq i32 %.sroa.0118.2.i, 3
  br i1 %i.ka, label %bb.bc, label %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterhENCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core15compress_normal0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2I_5count0EB1L_.exit.thread.i

bb.ba:                                            ; preds = %bb.ay
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %i.ew, i64 noundef %i.jx, i64 noundef 33026, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #22, !noalias !345
  unreachable

bb.bb:                                            ; preds = %bb.ay
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ju, i64 %i.ew ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 %.sroa.025.3.i
  %i.kd = icmp samesign eq i64 %.sroa.025.3.i, 0
  br i1 %i.kd, label %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterhENCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core15compress_normal0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2I_5count0EB1L_.exit.thread.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.bb, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core15compress_normal0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Z_.exit.i.i.i.i
  %.sroa.01.019.i.i.i.i = phi i64 [ %i.ki, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core15compress_normal0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Z_.exit.i.i.i.i ], [ 0, %bb.bb ] ; 2 uses
  %i.ke = phi ptr [ %i.kh, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core15compress_normal0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Z_.exit.i.i.i.i ], [ %i.kb, %bb.bb ] ; 2 uses
  %i.kf = load i8, ptr %i.ke, align 1, !alias.scope !352, !noalias !355, !noundef !4
  %i.kg = icmp eq i8 %i.kf, %i.jw
  br i1 %i.kg, label %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core15compress_normal0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Z_.exit.i.i.i.i, label %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterhENCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core15compress_normal0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2I_5count0EB1L_.exit.i

_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core15compress_normal0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Z_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ke, i64 1 ; 2 uses
  %i.ki = add nuw i64 %.sroa.01.019.i.i.i.i, 1
  %i.kj = icmp eq ptr %i.kh, %i.kc
  br i1 %i.kj, label %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterhENCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core15compress_normal0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2I_5count0EB1L_.exit.i, label %.lr.ph.i.i.i.i

_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterhENCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core15compress_normal0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2I_5count0EB1L_.exit.i: ; preds = %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core15compress_normal0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Z_.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %.sroa.0.1.i.i.i = phi i64 [ %.sroa.025.3.i, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core15compress_normal0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Z_.exit.i.i.i.i ], [ %.sroa.01.019.i.i.i.i, %.lr.ph.i.i.i.i ]
  %i.kk = trunc i64 %.sroa.0.1.i.i.i to i32       ; 2 uses
  %i.kl = icmp ult i32 %i.kk, 3
  br i1 %i.kl, label %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterhENCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core15compress_normal0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2I_5count0EB1L_.exit.thread.i, label %_RNvMsc_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_9DictOxide10find_match.exit.i

_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterhENCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core15compress_normal0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2I_5count0EB1L_.exit.thread.i: ; preds = %.preheader.lr.ph.us.i.i, %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterhENCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core15compress_normal0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2I_5count0EB1L_.exit.i, %bb.bb, %_RNvMsc_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_9DictOxide10find_match.exit.i, %bb.ax
  %.sroa.0118.4.i = phi i32 [ %.sroa.0118.2.i, %_RNvMsc_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_9DictOxide10find_match.exit.i ], [ 2, %bb.ax ], [ 0, %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterhENCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core15compress_normal0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2I_5count0EB1L_.exit.i ], [ 0, %bb.bb ], [ 0, %.preheader.lr.ph.us.i.i ] ; 2 uses
  %.sroa.0110.2.i = phi i32 [ %.sroa.0110.0.i, %_RNvMsc_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_9DictOxide10find_match.exit.i ], [ 0, %bb.ax ], [ 0, %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterhENCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core15compress_normal0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2I_5count0EB1L_.exit.i ], [ 0, %bb.bb ], [ %.sroa.0.0173.us.i.i, %.preheader.lr.ph.us.i.i ]
  %i.km = and i32 %i.ex, 131072
  %.not177.i = icmp ne i32 %i.km, 0
  %i.kn = icmp ult i32 %.sroa.0118.4.i, 6
  %or.cond185.i = and i1 %.not177.i, %i.kn
  br i1 %or.cond185.i, label %bb.bd, label %bb.be

bb.bc:                                            ; preds = %_RNvMsc_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_9DictOxide10find_match.exit.i
  %i.ko = and i32 %i.ex, 131072
  %.not176.i = icmp ne i32 %i.ko, 0
  %i.kp = icmp ugt i32 %.sroa.0110.0.i, 8191
  %or.cond186.i = select i1 %.not176.i, i1 true, i1 %i.kp
  br i1 %or.cond186.i, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.be, %bb.bc, %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterhENCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core15compress_normal0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2I_5count0EB1L_.exit.thread.i
  %.pre307.i = load i32, ptr %i.ar, align 8, !alias.scope !342, !noalias !345 ; 2 uses
  %.pre308.i = load i64, ptr %i.as, align 8, !alias.scope !342, !noalias !345 ; 2 uses
  br i1 %i.ev, label %bb.bn, label %.thread.i

bb.be:                                            ; preds = %bb.bc, %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterhENCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core15compress_normal0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2I_5count0EB1L_.exit.thread.i
  %.sroa.0118.5.i = phi i32 [ %.sroa.0118.4.i, %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterhENCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core15compress_normal0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2I_5count0EB1L_.exit.thread.i ], [ 3, %bb.bc ] ; 11 uses
  %.sroa.0110.3.i = phi i32 [ %.sroa.0110.2.i, %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterhENCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core15compress_normal0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2I_5count0EB1L_.exit.thread.i ], [ %.sroa.0110.0.i, %bb.bc ] ; 7 uses
  %i.kq = zext i32 %.sroa.0110.3.i to i64
  %i.kr = icmp eq i64 %i.ew, %i.kq
  br i1 %i.kr, label %bb.bd, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  br i1 %i.ev, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.ks = icmp eq i32 %.sroa.0110.3.i, 0
  br i1 %i.ks, label %._crit_edge.i, label %bb.bi

._crit_edge.i:                                    ; preds = %bb.bg
  %.pre306.i = load i32, ptr %i.ar, align 8, !alias.scope !364, !noalias !367
  %.pre.i = load i64, ptr %i.as, align 8, !alias.scope !364, !noalias !367
  br label %bb.bn

bb.bh:                                            ; preds = %bb.bf
  %i.kt = icmp ugt i32 %.sroa.0118.5.i, %.sroa.056.0.i
  %.pre303.i = load i32, ptr %i.ar, align 8, !alias.scope !342, !noalias !345 ; 2 uses
  %.pre305.i = load i64, ptr %i.as, align 8, !alias.scope !342, !noalias !345 ; 4 uses
  br i1 %i.kt, label %bb.br, label %.thread.i

bb.bi:                                            ; preds = %bb.bg
  %i.ku = load i8, ptr %i.av, align 2, !range !92, !alias.scope !342, !noalias !345, !noundef !4
  %i.kv = trunc nuw i8 %i.ku to i1
  br i1 %i.kv, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.kw = icmp ne i32 %i.ey, 0
  %i.kx = icmp ugt i32 %.sroa.0118.5.i, 127
  %or.cond14.i = or i1 %i.kw, %i.kx
  br i1 %or.cond14.i, label %bb.bk, label %bb.bm

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.ky = load ptr, ptr %i.aq, align 8, !alias.scope !342, !noalias !345, !nonnull !4, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !369)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !372)
  %i.kz = load i32, ptr %i.ar, align 8, !alias.scope !374, !noalias !375, !noundef !4
  %i.la = add i32 %i.kz, %.sroa.0118.5.i
  store i32 %i.la, ptr %i.ar, align 8, !alias.scope !374, !noalias !375
  %i.lb = add i32 %.sroa.0110.3.i, -1             ; 3 uses
  %i.lc = trunc i32 %.sroa.0118.5.i to i8
  %i.ld = add i8 %i.lc, -3                        ; 2 uses
  %i.le = load i64, ptr %i.as, align 8, !alias.scope !374, !noalias !375, !noundef !4 ; 5 uses
  %i.lf = and i64 %i.le, 65535
  %i.lg = getelementptr inbounds nuw i8, ptr %1, i64 %i.lf
  store i8 %i.ld, ptr %i.lg, align 1, !alias.scope !374, !noalias !375
  %i.lh = add i64 %i.le, 1
  %i.li = and i64 %i.lh, 65535
  %i.lj = trunc i32 %i.lb to i8
  %i.lk = getelementptr inbounds nuw i8, ptr %1, i64 %i.li
  store i8 %i.lj, ptr %i.lk, align 1, !alias.scope !374, !noalias !375
  %i.ll = add i64 %i.le, 2
  %i.lm = lshr i32 %i.lb, 8                       ; 2 uses
  %i.ln = and i64 %i.ll, 65535
  %i.lo = trunc i32 %i.lm to i8
  %i.lp = getelementptr inbounds nuw i8, ptr %1, i64 %i.ln
  store i8 %i.lo, ptr %i.lp, align 1, !alias.scope !374, !noalias !375
  %i.lq = add i64 %i.le, 3                        ; 2 uses
  store i64 %i.lq, ptr %i.as, align 8, !alias.scope !374, !noalias !375
  %i.lr = load i64, ptr %i.at, align 8, !alias.scope !374, !noalias !375, !noundef !4
  %i.ls = and i64 %i.lr, 65535
  %i.lt = getelementptr inbounds nuw i8, ptr %1, i64 %i.ls ; 2 uses
  %i.lu = load i8, ptr %i.lt, align 1, !alias.scope !374, !noalias !375, !noundef !4
  %i.lv = lshr i8 %i.lu, 1
  %i.lw = or disjoint i8 %i.lv, -128
  store i8 %i.lw, ptr %i.lt, align 1, !alias.scope !374, !noalias !375
  %i.lx = load i32, ptr %i.au, align 4, !alias.scope !374, !noalias !375, !noundef !4
  %i.ly = add i32 %i.lx, -1                       ; 2 uses
  store i32 %i.ly, ptr %i.au, align 4, !alias.scope !374, !noalias !375
  %i.lz = icmp eq i32 %i.ly, 0
  br i1 %i.lz, label %bb.bl, label %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core12record_match.exit.i

bb.bl:                                            ; preds = %bb.bk
  store i32 8, ptr %i.au, align 4, !alias.scope !374, !noalias !375
  store i64 %i.lq, ptr %i.at, align 8, !alias.scope !374, !noalias !375
  %i.ma = add i64 %i.le, 4
  store i64 %i.ma, ptr %i.as, align 8, !alias.scope !374, !noalias !375
  br label %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core12record_match.exit.i

_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core12record_match.exit.i: ; preds = %bb.bl, %bb.bk
  %i.mb = icmp ult i32 %.sroa.0110.3.i, 513
  %i.mc = zext nneg i32 %i.lb to i64
  %i.md = getelementptr inbounds nuw i8, ptr @44, i64 %i.mc
  %i.me = and i32 %i.lm, 127
  %i.mf = zext nneg i32 %i.me to i64
  %i.mg = getelementptr inbounds nuw i8, ptr @43, i64 %i.mf
  %.sroa.06.0.in.i.i = select i1 %i.mb, ptr %i.md, ptr %i.mg
  %.sroa.06.0.i.i = load i8, ptr %.sroa.06.0.in.i.i, align 1, !noalias !376, !noundef !4
  %i.mh = zext i8 %.sroa.06.0.i.i to i64
  %i.mi = getelementptr inbounds nuw i8, ptr %i.ky, i64 576
  %i.mj = getelementptr inbounds nuw [2 x i8], ptr %i.mi, i64 %i.mh ; 2 uses
  %i.mk = load i16, ptr %i.mj, align 2, !alias.scope !369, !noalias !377, !noundef !4
  %i.ml = add i16 %i.mk, 1
  store i16 %i.ml, ptr %i.mj, align 2, !alias.scope !369, !noalias !377
  %i.mm = zext i8 %i.ld to i64
  %i.mn = getelementptr inbounds nuw i8, ptr @45, i64 %i.mm
  %i.mo = load i8, ptr %i.mn, align 1, !noalias !376, !noundef !4
  %i.mp = and i8 %i.mo, 31
  %i.mq = zext nneg i8 %i.mp to i64
  %i.mr = getelementptr inbounds nuw [2 x i8], ptr %i.ky, i64 %i.mq
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 512 ; 2 uses
  %i.mt = load i16, ptr %i.ms, align 2, !alias.scope !369, !noalias !377, !noundef !4
  %i.mu = add i16 %i.mt, 1
  store i16 %i.mu, ptr %i.ms, align 2, !alias.scope !369, !noalias !377
  br label %bb.bp

bb.bm:                                            ; preds = %bb.bj
  %i.mv = load ptr, ptr %i.ab, align 8, !alias.scope !342, !noalias !345, !nonnull !4, !noundef !4
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 %i.ew
  %i.mx = load i8, ptr %i.mw, align 1, !noalias !345, !noundef !4
  br label %bb.bp

bb.bn:                                            ; preds = %._crit_edge.i, %bb.bd
  %i.my = phi i64 [ %.pre.i, %._crit_edge.i ], [ %.pre308.i, %bb.bd ] ; 3 uses
  %i.mz = phi i32 [ %.pre306.i, %._crit_edge.i ], [ %.pre307.i, %bb.bd ]
  %i.na = load ptr, ptr %i.aq, align 8, !alias.scope !342, !noalias !345, !nonnull !4, !noundef !4
  %i.nb = load ptr, ptr %i.ab, align 8, !alias.scope !342, !noalias !345, !nonnull !4, !noundef !4
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 %i.ew
  %i.nd = load i8, ptr %i.nc, align 1, !noalias !345, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !378)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !379)
  %i.ne = add i32 %i.mz, 1
  store i32 %i.ne, ptr %i.ar, align 8, !alias.scope !364, !noalias !367
  %i.nf = and i64 %i.my, 65535
  %i.ng = getelementptr inbounds nuw i8, ptr %1, i64 %i.nf
  store i8 %i.nd, ptr %i.ng, align 1, !alias.scope !364, !noalias !367
  %i.nh = add i64 %i.my, 1                        ; 2 uses
  store i64 %i.nh, ptr %i.as, align 8, !alias.scope !364, !noalias !367
  %i.ni = load i64, ptr %i.at, align 8, !alias.scope !364, !noalias !367, !noundef !4
  %i.nj = and i64 %i.ni, 65535
  %i.nk = getelementptr inbounds nuw i8, ptr %1, i64 %i.nj ; 2 uses
  %i.nl = load i8, ptr %i.nk, align 1, !alias.scope !364, !noalias !367, !noundef !4
  %i.nm = lshr i8 %i.nl, 1
  store i8 %i.nm, ptr %i.nk, align 1, !alias.scope !364, !noalias !367
  %i.nn = load i32, ptr %i.au, align 4, !alias.scope !364, !noalias !367, !noundef !4
  %i.no = add i32 %i.nn, -1                       ; 2 uses
  store i32 %i.no, ptr %i.au, align 4, !alias.scope !364, !noalias !367
  %i.np = icmp eq i32 %i.no, 0
  br i1 %i.np, label %bb.bo, label %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core14record_literal.exit.i

bb.bo:                                            ; preds = %bb.bn
  store i32 8, ptr %i.au, align 4, !alias.scope !364, !noalias !367
  store i64 %i.nh, ptr %i.at, align 8, !alias.scope !364, !noalias !367
  %i.nq = add i64 %i.my, 2
  store i64 %i.nq, ptr %i.as, align 8, !alias.scope !364, !noalias !367
  br label %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core14record_literal.exit.i

_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core14record_literal.exit.i: ; preds = %bb.bo, %bb.bn
  %i.nr = zext i8 %i.nd to i64
  %i.ns = getelementptr inbounds nuw [2 x i8], ptr %i.na, i64 %i.nr ; 2 uses
  %i.nt = load i16, ptr %i.ns, align 2, !alias.scope !378, !noalias !380, !noundef !4
  %i.nu = add i16 %i.nt, 1
  store i16 %i.nu, ptr %i.ns, align 2, !alias.scope !378, !noalias !380
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bv, %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core12record_match.exit196.i, %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core12record_match.exit192.i, %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core14record_literal.exit.i, %bb.bm, %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core12record_match.exit.i
  %.sroa.0148.1.i = phi i8 [ %.sroa.0148.0.i, %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core12record_match.exit196.i ], [ %i.sm, %bb.bv ], [ %.sroa.0148.0.i, %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core12record_match.exit192.i ], [ %.sroa.0148.0.i, %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core14record_literal.exit.i ], [ %.sroa.0148.0.i, %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core12record_match.exit.i ], [ %i.mx, %bb.bm ] ; 3 uses
  %.sroa.082.0.shrunk.i = phi i32 [ %.sroa.0118.5.i, %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core12record_match.exit196.i ], [ 1, %bb.bv ], [ %i.pt, %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core12record_match.exit192.i ], [ 1, %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core14record_literal.exit.i ], [ %.sroa.0118.5.i, %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core12record_match.exit.i ], [ 1, %bb.bm ]
  %.sroa.056.1.i = phi i32 [ 0, %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core12record_match.exit196.i ], [ %.sroa.0118.5.i, %bb.bv ], [ 0, %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core12record_match.exit192.i ], [ 0, %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core14record_literal.exit.i ], [ 0, %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core12record_match.exit.i ], [ %.sroa.0118.5.i, %bb.bm ] ; 3 uses
  %.sroa.053.1.i = phi i32 [ %.sroa.053.0.i, %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core12record_match.exit196.i ], [ %.sroa.0110.3.i, %bb.bv ], [ %.sroa.053.0.i, %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core12record_match.exit192.i ], [ %.sroa.053.0.i, %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core14record_literal.exit.i ], [ %.sroa.053.0.i, %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core12record_match.exit.i ], [ %.sroa.0110.3.i, %bb.bm ] ; 3 uses
  %.sroa.082.0.i = zext i32 %.sroa.082.0.shrunk.i to i64 ; 4 uses
  %i.nv = add i64 %.sroa.043.0.i, %.sroa.082.0.i  ; 2 uses
  %.not180.i = icmp ult i64 %.sroa.025.3.i, %.sroa.082.0.i
  br i1 %.not180.i, label %bb.bw, label %bb.bx, !prof !11

.thread.i:                                        ; preds = %bb.bh, %bb.bd
  %i.nw = phi i64 [ %.pre305.i, %bb.bh ], [ %.pre308.i, %bb.bd ] ; 5 uses
  %i.nx = phi i32 [ %.pre303.i, %bb.bh ], [ %.pre307.i, %bb.bd ]
  %i.ny = load ptr, ptr %i.aq, align 8, !alias.scope !342, !noalias !345, !nonnull !4, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !381)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !384)
  %i.nz = add i32 %i.nx, %.sroa.056.0.i
  store i32 %i.nz, ptr %i.ar, align 8, !alias.scope !386, !noalias !387
  %i.oa = add i32 %.sroa.053.0.i, -1              ; 4 uses
  %i.ob = trunc i32 %.sroa.056.0.i to i8
  %i.oc = add i8 %i.ob, -3                        ; 2 uses
  %i.od = and i64 %i.nw, 65535
  %i.oe = getelementptr inbounds nuw i8, ptr %1, i64 %i.od
  store i8 %i.oc, ptr %i.oe, align 1, !alias.scope !386, !noalias !387
  %i.of = add i64 %i.nw, 1
  %i.og = and i64 %i.of, 65535
  %i.oh = trunc i32 %i.oa to i8
  %i.oi = getelementptr inbounds nuw i8, ptr %1, i64 %i.og
  store i8 %i.oh, ptr %i.oi, align 1, !alias.scope !386, !noalias !387
  %i.oj = add i64 %i.nw, 2
  %i.ok = lshr i32 %i.oa, 8                       ; 2 uses
  %i.ol = and i64 %i.oj, 65535
  %i.om = trunc i32 %i.ok to i8
  %i.on = getelementptr inbounds nuw i8, ptr %1, i64 %i.ol
  store i8 %i.om, ptr %i.on, align 1, !alias.scope !386, !noalias !387
  %i.oo = add i64 %i.nw, 3                        ; 2 uses
  store i64 %i.oo, ptr %i.as, align 8, !alias.scope !386, !noalias !387
  %i.op = load i64, ptr %i.at, align 8, !alias.scope !386, !noalias !387, !noundef !4
  %i.oq = and i64 %i.op, 65535
  %i.or = getelementptr inbounds nuw i8, ptr %1, i64 %i.oq ; 2 uses
  %i.os = load i8, ptr %i.or, align 1, !alias.scope !386, !noalias !387, !noundef !4
  %i.ot = lshr i8 %i.os, 1
  %i.ou = or disjoint i8 %i.ot, -128
  store i8 %i.ou, ptr %i.or, align 1, !alias.scope !386, !noalias !387
  %i.ov = load i32, ptr %i.au, align 4, !alias.scope !386, !noalias !387, !noundef !4
  %i.ow = add i32 %i.ov, -1                       ; 2 uses
  store i32 %i.ow, ptr %i.au, align 4, !alias.scope !386, !noalias !387
  %i.ox = icmp eq i32 %i.ow, 0
  br i1 %i.ox, label %bb.bq, label %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core12record_match.exit192.i

bb.bq:                                            ; preds = %.thread.i
  store i32 8, ptr %i.au, align 4, !alias.scope !386, !noalias !387
  store i64 %i.oo, ptr %i.at, align 8, !alias.scope !386, !noalias !387
  %i.oy = add i64 %i.nw, 4
  store i64 %i.oy, ptr %i.as, align 8, !alias.scope !386, !noalias !387
  br label %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core12record_match.exit192.i

_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core12record_match.exit192.i: ; preds = %bb.bq, %.thread.i
  %i.oz = icmp ult i32 %i.oa, 512
  %i.pa = zext nneg i32 %i.oa to i64
  %i.pb = getelementptr inbounds nuw i8, ptr @44, i64 %i.pa
  %i.pc = and i32 %i.ok, 127
  %i.pd = zext nneg i32 %i.pc to i64
  %i.pe = getelementptr inbounds nuw i8, ptr @43, i64 %i.pd
  %.sroa.06.0.in.i190.i = select i1 %i.oz, ptr %i.pb, ptr %i.pe
  %.sroa.06.0.i191.i = load i8, ptr %.sroa.06.0.in.i190.i, align 1, !noalias !388, !noundef !4
  %i.pf = zext i8 %.sroa.06.0.i191.i to i64
  %i.pg = getelementptr inbounds nuw i8, ptr %i.ny, i64 576
  %i.ph = getelementptr inbounds nuw [2 x i8], ptr %i.pg, i64 %i.pf ; 2 uses
  %i.pi = load i16, ptr %i.ph, align 2, !alias.scope !381, !noalias !389, !noundef !4
  %i.pj = add i16 %i.pi, 1
  store i16 %i.pj, ptr %i.ph, align 2, !alias.scope !381, !noalias !389
  %i.pk = zext i8 %i.oc to i64
  %i.pl = getelementptr inbounds nuw i8, ptr @45, i64 %i.pk
  %i.pm = load i8, ptr %i.pl, align 1, !noalias !388, !noundef !4
  %i.pn = and i8 %i.pm, 31
  %i.po = zext nneg i8 %i.pn to i64
  %i.pp = getelementptr inbounds nuw [2 x i8], ptr %i.ny, i64 %i.po
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 512 ; 2 uses
  %i.pr = load i16, ptr %i.pq, align 2, !alias.scope !381, !noalias !389, !noundef !4
  %i.ps = add i16 %i.pr, 1
  store i16 %i.ps, ptr %i.pq, align 2, !alias.scope !381, !noalias !389
  %i.pt = add i32 %.sroa.056.0.i, -1
  br label %bb.bp

bb.br:                                            ; preds = %bb.bh
  %i.pu = load ptr, ptr %i.aq, align 8, !alias.scope !342, !noalias !345, !nonnull !4, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !390)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !393)
  %i.pv = add i32 %.pre303.i, 1
  store i32 %i.pv, ptr %i.ar, align 8, !alias.scope !395, !noalias !396
  %i.pw = and i64 %.pre305.i, 65535
  %i.px = getelementptr inbounds nuw i8, ptr %1, i64 %i.pw
  store i8 %.sroa.0148.0.i, ptr %i.px, align 1, !alias.scope !395, !noalias !396
  %i.py = add i64 %.pre305.i, 1                   ; 2 uses
  store i64 %i.py, ptr %i.as, align 8, !alias.scope !395, !noalias !396
  %i.pz = load i64, ptr %i.at, align 8, !alias.scope !395, !noalias !396, !noundef !4
  %i.qa = and i64 %i.pz, 65535
  %i.qb = getelementptr inbounds nuw i8, ptr %1, i64 %i.qa ; 2 uses
  %i.qc = load i8, ptr %i.qb, align 1, !alias.scope !395, !noalias !396, !noundef !4
  %i.qd = lshr i8 %i.qc, 1
  store i8 %i.qd, ptr %i.qb, align 1, !alias.scope !395, !noalias !396
  %i.qe = load i32, ptr %i.au, align 4, !alias.scope !395, !noalias !396, !noundef !4
  %i.qf = add i32 %i.qe, -1                       ; 2 uses
  store i32 %i.qf, ptr %i.au, align 4, !alias.scope !395, !noalias !396
  %i.qg = icmp eq i32 %i.qf, 0
  br i1 %i.qg, label %bb.bs, label %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core14record_literal.exit193.i

bb.bs:                                            ; preds = %bb.br
  store i32 8, ptr %i.au, align 4, !alias.scope !395, !noalias !396
  store i64 %i.py, ptr %i.at, align 8, !alias.scope !395, !noalias !396
  %i.qh = add i64 %.pre305.i, 2
  store i64 %i.qh, ptr %i.as, align 8, !alias.scope !395, !noalias !396
  br label %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core14record_literal.exit193.i

_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core14record_literal.exit193.i: ; preds = %bb.bs, %bb.br
  %i.qi = zext i8 %.sroa.0148.0.i to i64
  %i.qj = getelementptr inbounds nuw [2 x i8], ptr %i.pu, i64 %i.qi ; 2 uses
  %i.qk = load i16, ptr %i.qj, align 2, !alias.scope !390, !noalias !397, !noundef !4
  %i.ql = add i16 %i.qk, 1
  store i16 %i.ql, ptr %i.qj, align 2, !alias.scope !390, !noalias !397
  %i.qm = icmp ugt i32 %.sroa.0118.5.i, 127
  br i1 %i.qm, label %bb.bt, label %bb.bv

bb.bt:                                            ; preds = %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core14record_literal.exit193.i
  %i.qn = load ptr, ptr %i.aq, align 8, !alias.scope !342, !noalias !345, !nonnull !4, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !398)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !401)
  %i.qo = load i32, ptr %i.ar, align 8, !alias.scope !403, !noalias !404, !noundef !4
  %i.qp = add i32 %i.qo, %.sroa.0118.5.i
  store i32 %i.qp, ptr %i.ar, align 8, !alias.scope !403, !noalias !404
  %i.qq = add i32 %.sroa.0110.3.i, -1             ; 4 uses
  %i.qr = trunc i32 %.sroa.0118.5.i to i8
  %i.qs = add i8 %i.qr, -3                        ; 2 uses
  %i.qt = load i64, ptr %i.as, align 8, !alias.scope !403, !noalias !404, !noundef !4 ; 5 uses
  %i.qu = and i64 %i.qt, 65535
  %i.qv = getelementptr inbounds nuw i8, ptr %1, i64 %i.qu
  store i8 %i.qs, ptr %i.qv, align 1, !alias.scope !403, !noalias !404
  %i.qw = add i64 %i.qt, 1
  %i.qx = and i64 %i.qw, 65535
  %i.qy = trunc i32 %i.qq to i8
  %i.qz = getelementptr inbounds nuw i8, ptr %1, i64 %i.qx
  store i8 %i.qy, ptr %i.qz, align 1, !alias.scope !403, !noalias !404
  %i.ra = add i64 %i.qt, 2
  %i.rb = lshr i32 %i.qq, 8                       ; 2 uses
  %i.rc = and i64 %i.ra, 65535
  %i.rd = trunc i32 %i.rb to i8
  %i.re = getelementptr inbounds nuw i8, ptr %1, i64 %i.rc
  store i8 %i.rd, ptr %i.re, align 1, !alias.scope !403, !noalias !404
  %i.rf = add i64 %i.qt, 3                        ; 2 uses
  store i64 %i.rf, ptr %i.as, align 8, !alias.scope !403, !noalias !404
  %i.rg = load i64, ptr %i.at, align 8, !alias.scope !403, !noalias !404, !noundef !4
  %i.rh = and i64 %i.rg, 65535
  %i.ri = getelementptr inbounds nuw i8, ptr %1, i64 %i.rh ; 2 uses
  %i.rj = load i8, ptr %i.ri, align 1, !alias.scope !403, !noalias !404, !noundef !4
  %i.rk = lshr i8 %i.rj, 1
  %i.rl = or disjoint i8 %i.rk, -128
  store i8 %i.rl, ptr %i.ri, align 1, !alias.scope !403, !noalias !404
  %i.rm = load i32, ptr %i.au, align 4, !alias.scope !403, !noalias !404, !noundef !4
  %i.rn = add i32 %i.rm, -1                       ; 2 uses
  store i32 %i.rn, ptr %i.au, align 4, !alias.scope !403, !noalias !404
  %i.ro = icmp eq i32 %i.rn, 0
  br i1 %i.ro, label %bb.bu, label %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core12record_match.exit196.i

bb.bu:                                            ; preds = %bb.bt
  store i32 8, ptr %i.au, align 4, !alias.scope !403, !noalias !404
  store i64 %i.rf, ptr %i.at, align 8, !alias.scope !403, !noalias !404
  %i.rp = add i64 %i.qt, 4
  store i64 %i.rp, ptr %i.as, align 8, !alias.scope !403, !noalias !404
  br label %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core12record_match.exit196.i

_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core12record_match.exit196.i: ; preds = %bb.bu, %bb.bt
  %i.rq = icmp ult i32 %i.qq, 512
  %i.rr = zext nneg i32 %i.qq to i64
  %i.rs = getelementptr inbounds nuw i8, ptr @44, i64 %i.rr
  %i.rt = and i32 %i.rb, 127
  %i.ru = zext nneg i32 %i.rt to i64
  %i.rv = getelementptr inbounds nuw i8, ptr @43, i64 %i.ru
  %.sroa.06.0.in.i194.i = select i1 %i.rq, ptr %i.rs, ptr %i.rv
  %.sroa.06.0.i195.i = load i8, ptr %.sroa.06.0.in.i194.i, align 1, !noalias !405, !noundef !4
  %i.rw = zext i8 %.sroa.06.0.i195.i to i64
  %i.rx = getelementptr inbounds nuw i8, ptr %i.qn, i64 576
  %i.ry = getelementptr inbounds nuw [2 x i8], ptr %i.rx, i64 %i.rw ; 2 uses
  %i.rz = load i16, ptr %i.ry, align 2, !alias.scope !398, !noalias !406, !noundef !4
  %i.sa = add i16 %i.rz, 1
  store i16 %i.sa, ptr %i.ry, align 2, !alias.scope !398, !noalias !406
  %i.sb = zext i8 %i.qs to i64
  %i.sc = getelementptr inbounds nuw i8, ptr @45, i64 %i.sb
  %i.sd = load i8, ptr %i.sc, align 1, !noalias !405, !noundef !4
  %i.se = and i8 %i.sd, 31
  %i.sf = zext nneg i8 %i.se to i64
  %i.sg = getelementptr inbounds nuw [2 x i8], ptr %i.qn, i64 %i.sf
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sg, i64 512 ; 2 uses
  %i.si = load i16, ptr %i.sh, align 2, !alias.scope !398, !noalias !406, !noundef !4
  %i.sj = add i16 %i.si, 1
  store i16 %i.sj, ptr %i.sh, align 2, !alias.scope !398, !noalias !406
  br label %bb.bp

bb.bv:                                            ; preds = %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core14record_literal.exit193.i
  %i.sk = load ptr, ptr %i.ab, align 8, !alias.scope !342, !noalias !345, !nonnull !4, !noundef !4
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 %i.ew
  %i.sm = load i8, ptr %i.sl, align 1, !noalias !345, !noundef !4
  br label %bb.bp

bb.bw:                                            ; preds = %bb.bp
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @53, i64 noundef 47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #22, !noalias !345
  unreachable

bb.bx:                                            ; preds = %bb.bp
  %i.sn = sub nuw i64 %.sroa.025.3.i, %.sroa.082.0.i ; 2 uses
  %i.so = load i64, ptr %i.am, align 8, !alias.scope !342, !noalias !345, !noundef !4
  %i.sp = add i64 %i.so, %.sroa.082.0.i
  %..i197.i = tail call noundef i64 @llvm.umin.i64(i64 %i.sp, i64 32768)
  store i64 %..i197.i, ptr %i.am, align 8, !alias.scope !342, !noalias !345
  %i.sq = load i64, ptr %i.as, align 8, !alias.scope !342, !noalias !345, !noundef !4 ; 2 uses
  %i.sr = icmp ugt i64 %i.sq, 65528               ; 2 uses
  %i.ss = load i32, ptr %i.ar, align 8, !alias.scope !342, !noalias !345, !noundef !4 ; 2 uses
  %i.st = icmp ugt i32 %i.ss, 31744
  br i1 %i.st, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  br i1 %i.sr, label %bb.ca, label %.backedge

bb.bz:                                            ; preds = %bb.bx
  %i.su = mul i64 %i.sq, 115
  %i.sv = lshr i64 %i.su, 7
  %i.sw = zext i32 %i.ss to i64
  %i.sx = icmp samesign uge i64 %i.sv, %i.sw
  %or.cond5.i = select i1 %i.sr, i1 true, i1 %i.sx
  br i1 %or.cond5.i, label %bb.ca, label %.backedge

bb.ca:                                            ; preds = %bb.bz, %bb.by
  store i64 %.sroa.015.2.i, ptr %i.a, align 8, !alias.scope !342, !noalias !345
  store i64 %i.sn, ptr %i.ac, align 8, !alias.scope !342, !noalias !345
  store i64 %i.nv, ptr %i.ae, align 8, !alias.scope !342, !noalias !345
  %i.sy = tail call { i32, i32 } @_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core11flush_block(ptr noalias nofree noundef nonnull align 8 dereferenceable(65712) %1, ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(56) %2, i8 noundef 0) ; 2 uses
  %i.sz = extractvalue { i32, i32 } %i.sy, 0
  %i.ta = trunc i32 %i.sz to i1
  br i1 %i.ta, label %.split43.thread, label %bb.cb

.split43.thread:                                  ; preds = %bb.ca
  store i8 %.sroa.0148.1.i, ptr %i.ag, align 8, !alias.scope !342, !noalias !345
  store i32 %.sroa.053.1.i, ptr %i.ai, align 8, !alias.scope !342, !noalias !345
  store i32 %.sroa.056.1.i, ptr %i.ak, align 4, !alias.scope !342, !noalias !345
  br label %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core15compress_normal.exit.thread41

bb.cb:                                            ; preds = %bb.ca
  %i.tb = extractvalue { i32, i32 } %i.sy, 1      ; 2 uses
  %.not181.i = icmp eq i32 %i.tb, 0
  br i1 %.not181.i, label %.backedge, label %.split43

.backedge:                                        ; preds = %bb.cb, %bb.bz, %bb.by
  br label %bb.k

.split43:                                         ; preds = %bb.cb
  store i8 %.sroa.0148.1.i, ptr %i.ag, align 8, !alias.scope !342, !noalias !345
  store i32 %.sroa.053.1.i, ptr %i.ai, align 8, !alias.scope !342, !noalias !345
  store i32 %.sroa.056.1.i, ptr %i.ak, align 4, !alias.scope !342, !noalias !345
  %i.tc = icmp sgt i32 %i.tb, 0
  br i1 %i.tc, label %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core15compress_normal.exit.thread, label %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core15compress_normal.exit.thread41

bb.cc:                                            ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !407)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !410)
  %i.td = getelementptr inbounds nuw i8, ptr %1, i64 65560 ; 5 uses
  %i.te = getelementptr inbounds nuw i8, ptr %1, i64 65600 ; 6 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %1, i64 65608 ; 6 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.th = load ptr, ptr %i.tg, align 8, !alias.scope !410, !noalias !407, !noundef !4 ; 5 uses
  %.not.i28 = icmp eq ptr %i.th, null
  br i1 %.not.i28, label %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core15compress_normal.exit.thread.thread, label %.split207.i

.split207.i:                                      ; preds = %bb.cc
  %i.ti = load i64, ptr %i.tf, align 8, !alias.scope !407, !noalias !410, !noundef !4 ; 2 uses
  %i.tj = and i64 %i.ti, 32767
  %i.tk = load i64, ptr %i.te, align 8, !alias.scope !407, !noalias !410, !noundef !4
  %i.tl = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.tm = load i64, ptr %i.tl, align 8, !alias.scope !410, !noalias !407, !noundef !4 ; 6 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %1, i64 65616 ; 7 uses
  %i.to = getelementptr inbounds nuw i8, ptr %1, i64 65576
  %i.tp = getelementptr inbounds nuw i8, ptr %1, i64 65536 ; 12 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %1, i64 65544 ; 6 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %1, i64 65632 ; 5 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %1, i64 65556 ; 4 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %1, i64 65552 ; 4 uses
  br label %.loopexit.i33

.loopexit.i33:                                    ; preds = %.loopexit.i33.backedge, %.split207.i
  %.sroa.0114.0.i = phi i64 [ %i.tj, %.split207.i ], [ %.sroa.0114.0.i.be, %.loopexit.i33.backedge ] ; 2 uses
  %.sroa.063.0.i = phi i64 [ %i.ti, %.split207.i ], [ %.sroa.063.0.i.be, %.loopexit.i33.backedge ] ; 4 uses
  %.sroa.049.0.i = phi i64 [ %i.tk, %.split207.i ], [ 0, %.loopexit.i33.backedge ] ; 5 uses
  %.sroa.06.0.i = phi i64 [ 0, %.split207.i ], [ %.sroa.06.2.lcssa.i, %.loopexit.i33.backedge ] ; 5 uses
  %i.tu = icmp ult i64 %.sroa.06.0.i, %i.tm
  br i1 %i.tu, label %.split.i, label %bb.cd

bb.cd:                                            ; preds = %.loopexit.i33
  %i.tv = load i8, ptr %i.f, align 1, !range !341, !alias.scope !407, !noalias !410, !noundef !4
  %i.tw = icmp ne i8 %i.tv, 0
  %i.tx = icmp ne i64 %.sroa.049.0.i, 0
  %or.cond.i29 = and i1 %i.tx, %i.tw
  br i1 %or.cond.i29, label %.split.i, label %bb.ce

bb.ce:                                            ; preds = %._crit_edge.i32, %bb.cd
  %.sroa.049.1.i = phi i64 [ %.sroa.049.0.i, %bb.cd ], [ %i.ua, %._crit_edge.i32 ]
  %.sroa.06.1.i = phi i64 [ %.sroa.06.0.i, %bb.cd ], [ %.sroa.06.2.lcssa.i, %._crit_edge.i32 ]
  store i64 %.sroa.06.1.i, ptr %i.a, align 8, !alias.scope !407, !noalias !410
  store i64 %.sroa.049.1.i, ptr %i.te, align 8, !alias.scope !407, !noalias !410
  store i64 %.sroa.063.0.i, ptr %i.tf, align 8, !alias.scope !407, !noalias !410
  br label %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core15compress_normal.exit.thread

.split.i:                                         ; preds = %bb.cd, %.loopexit.i33
  %i.ty = sub i64 %i.tm, %.sroa.06.0.i
  %i.tz = sub i64 4096, %.sroa.049.0.i
  %..i.i30 = tail call noundef i64 @llvm.umin.i64(i64 %i.tz, i64 %i.ty) ; 3 uses
  %i.ua = add i64 %..i.i30, %.sroa.049.0.i        ; 6 uses
  %i.ub = icmp eq i64 %..i.i30, 0
  br i1 %i.ub, label %._crit_edge.i32, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.split.i
  %i.uc = add i64 %.sroa.049.0.i, %.sroa.063.0.i
  br label %.lr.ph.i31

._crit_edge.i32:                                  ; preds = %bb.em, %.split.i
  %.sroa.06.2.lcssa.i = phi i64 [ %.sroa.06.0.i, %.split.i ], [ %i.ul, %bb.em ] ; 6 uses
  %i.ud = sub i64 32768, %i.ua
  %i.ue = load i64, ptr %i.tn, align 8, !alias.scope !407, !noalias !410, !noundef !4
  %..i99.i = tail call noundef i64 @llvm.umin.i64(i64 %i.ue, i64 %i.ud)
  store i64 %..i99.i, ptr %i.tn, align 8, !alias.scope !407, !noalias !410
  %i.uf = load i8, ptr %i.f, align 1, !range !341, !alias.scope !407, !noalias !410, !noundef !4
  %i.ug = icmp eq i8 %i.uf, 0
  %i.uh = icmp ult i64 %i.ua, 4096
  %or.cond3.i = and i1 %i.uh, %i.ug
  br i1 %or.cond3.i, label %bb.ce, label %.preheader130.i

.preheader130.i:                                  ; preds = %._crit_edge.i32
  %i.ui = icmp ugt i64 %i.ua, 3
  br i1 %i.ui, label %.lr.ph197.i, label %.preheader.i

.lr.ph.i31:                                       ; preds = %bb.em, %.lr.ph.preheader.i
  %.sroa.018.0191.in.i = phi i64 [ %i.uk, %bb.em ], [ %i.uc, %.lr.ph.preheader.i ]
  %.sroa.06.2190.i = phi i64 [ %i.ul, %bb.em ], [ %.sroa.06.0.i, %.lr.ph.preheader.i ] ; 7 uses
  %.sroa.026.0189.i = phi i64 [ %i.ajw, %bb.em ], [ %..i.i30, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.018.0191.i = and i64 %.sroa.018.0191.in.i, 32767 ; 6 uses
  %i.uj = sub nuw nsw i64 32768, %.sroa.018.0191.i
  %..i100.i = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.026.0189.i, i64 %i.uj) ; 6 uses
  %i.uk = add nuw nsw i64 %..i100.i, %.sroa.018.0191.i
  %i.ul = add i64 %..i100.i, %.sroa.06.2190.i     ; 5 uses
  %i.um = icmp ult i64 %i.ul, %.sroa.06.2190.i
  %.not90.i = icmp ugt i64 %i.ul, %i.tm
  %or.cond95.i = or i1 %i.um, %.not90.i
  br i1 %or.cond95.i, label %bb.ej, label %bb.ek, !prof !74

.preheader.i:                                     ; preds = %bb.cn, %.preheader130.i
  %.sroa.0114.1.lcssa.i = phi i64 [ %.sroa.0114.0.i, %.preheader130.i ], [ %.sroa.0114.3.i, %bb.cn ] ; 2 uses
  %.sroa.063.1.lcssa.i = phi i64 [ %.sroa.063.0.i, %.preheader130.i ], [ %.sroa.063.4.i, %bb.cn ] ; 2 uses
  %.sroa.049.2.lcssa.i = phi i64 [ %i.ua, %.preheader130.i ], [ %.sroa.049.5.i, %bb.cn ] ; 2 uses
  %i.un = icmp eq i64 %.sroa.049.2.lcssa.i, 0
  br i1 %i.un, label %.loopexit.i33.backedge, label %.lr.ph204.preheader.i

.loopexit.i33.backedge:                           ; preds = %bb.ci, %.preheader.i
  %.sroa.0114.0.i.be = phi i64 [ %.sroa.0114.1.lcssa.i, %.preheader.i ], [ %i.wa, %bb.ci ]
  %.sroa.063.0.i.be = phi i64 [ %.sroa.063.1.lcssa.i, %.preheader.i ], [ %.sroa.063.3.i, %bb.ci ]
  br label %.loopexit.i33

.lr.ph197.i:                                      ; preds = %.preheader130.i, %bb.cn
  %.sroa.049.2195.i = phi i64 [ %.sroa.049.5.i, %bb.cn ], [ %i.ua, %.preheader130.i ] ; 3 uses
  %.sroa.063.1194.i = phi i64 [ %.sroa.063.4.i, %bb.cn ], [ %.sroa.063.0.i, %.preheader130.i ] ; 3 uses
  %.sroa.0114.1192.i = phi i64 [ %.sroa.0114.3.i, %bb.cn ], [ %.sroa.0114.0.i, %.preheader130.i ] ; 36 uses
  %.val98.i = load ptr, ptr %i.td, align 8, !alias.scope !407, !noalias !410, !nonnull !4, !noundef !4
  %i.uo = getelementptr inbounds nuw i8, ptr %.val98.i, i64 %.sroa.0114.1192.i
  %.sroa.02.0.copyload.i.i = load i32, ptr %i.uo, align 1, !noalias !410 ; 6 uses
  %i.up = and i32 %.sroa.02.0.copyload.i.i, 16777215 ; 2 uses
  %.masked.i34 = and i32 %.sroa.02.0.copyload.i.i, 4095
  %i.uq = lshr i32 %i.up, 17
  %i.ur = xor i32 %i.uq, %.masked.i34
  %i.us = zext nneg i32 %i.ur to i64
  %i.ut = load ptr, ptr %i.to, align 8, !alias.scope !407, !noalias !410, !nonnull !4, !noundef !4
  %i.uu = getelementptr inbounds nuw [2 x i8], ptr %i.ut, i64 %i.us ; 2 uses
  %i.uv = load i16, ptr %i.uu, align 2, !noalias !410, !noundef !4 ; 3 uses
  %i.uw = trunc i64 %.sroa.063.1194.i to i16      ; 3 uses
  store i16 %i.uw, ptr %i.uu, align 2, !noalias !410
  %i.ux = sub i16 %i.uw, %i.uv                    ; 3 uses
  %i.uy = zext i16 %i.ux to i64
  %i.uz = load i64, ptr %i.tn, align 8, !alias.scope !407, !noalias !410, !noundef !4
  %.not92.i = icmp ult i64 %i.uz, %i.uy
  br i1 %.not92.i, label %bb.cn, label %bb.cm

.lr.ph204.preheader.i:                            ; preds = %.preheader.i, %bb.ci
  %.sroa.049.3203.i = phi i64 [ %.sroa.049.4.i, %bb.ci ], [ %.sroa.049.2.lcssa.i, %.preheader.i ]
  %.sroa.063.2202.i = phi i64 [ %.sroa.063.3.i, %bb.ci ], [ %.sroa.063.1.lcssa.i, %.preheader.i ]
  %.sroa.0114.2201.i = phi i64 [ %i.wa, %bb.ci ], [ %.sroa.0114.1.lcssa.i, %.preheader.i ] ; 2 uses
  %i.va = load ptr, ptr %i.td, align 8, !alias.scope !407, !noalias !410, !nonnull !4, !noundef !4
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 %.sroa.0114.2201.i
  %i.vc = load i8, ptr %i.vb, align 1, !noalias !410, !noundef !4 ; 2 uses
  %i.vd = load i64, ptr %i.tp, align 8, !alias.scope !407, !noalias !410, !noundef !4 ; 3 uses
  %i.ve = and i64 %i.vd, 65535
  %i.vf = getelementptr inbounds nuw i8, ptr %1, i64 %i.ve
  store i8 %i.vc, ptr %i.vf, align 1, !alias.scope !407, !noalias !410
  %i.vg = add i64 %i.vd, 1                        ; 2 uses
  store i64 %i.vg, ptr %i.tp, align 8, !alias.scope !407, !noalias !410
  %i.vh = load i64, ptr %i.tq, align 8, !alias.scope !407, !noalias !410, !noundef !4
  %i.vi = and i64 %i.vh, 65535
  %i.vj = getelementptr inbounds nuw i8, ptr %1, i64 %i.vi ; 2 uses
  %i.vk = load i8, ptr %i.vj, align 1, !alias.scope !407, !noalias !410, !noundef !4
  %i.vl = lshr i8 %i.vk, 1
  store i8 %i.vl, ptr %i.vj, align 1, !alias.scope !407, !noalias !410
end_hunk_3
begin_hunk_4_@_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core14compress_inner:bb.a
  %.sroa.01.0.copyload.i.i.23.i = load i64, ptr %i.ada, align 1, !noalias !412 ; 2 uses
  %i.adb = and i64 %i.acy, 32767
  %i.adc = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.adb
  %.sroa.01.0.copyload.i4.i.23.i = load i64, ptr %i.adc, align 1, !noalias !412 ; 2 uses
  %i.add = icmp eq i64 %.sroa.01.0.copyload.i.i.23.i, %.sroa.01.0.copyload.i4.i.23.i
  br i1 %i.add, label %bb.dm, label %_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core13compress_fast0B7_.exit.i

bb.dm:                                            ; preds = %bb.dl
  %i.ade = add nuw nsw i64 %.sroa.0114.1192.i, 195 ; 2 uses
  %i.adf = add nuw nsw i64 %i.wn, 195
  %i.adg = and i64 %i.ade, 32767
  %i.adh = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.adg
  %.sroa.01.0.copyload.i.i.24.i = load i64, ptr %i.adh, align 1, !noalias !412 ; 2 uses
  %i.adi = and i64 %i.adf, 32767
  %i.adj = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.adi
  %.sroa.01.0.copyload.i4.i.24.i = load i64, ptr %i.adj, align 1, !noalias !412 ; 2 uses
  %i.adk = icmp eq i64 %.sroa.01.0.copyload.i.i.24.i, %.sroa.01.0.copyload.i4.i.24.i
  br i1 %i.adk, label %bb.dn, label %_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core13compress_fast0B7_.exit.i

bb.dn:                                            ; preds = %bb.dm
  %i.adl = add nuw nsw i64 %.sroa.0114.1192.i, 203 ; 2 uses
  %i.adm = add nuw nsw i64 %i.wn, 203
  %i.adn = and i64 %i.adl, 32767
  %i.ado = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.adn
  %.sroa.01.0.copyload.i.i.25.i = load i64, ptr %i.ado, align 1, !noalias !412 ; 2 uses
  %i.adp = and i64 %i.adm, 32767
  %i.adq = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.adp
  %.sroa.01.0.copyload.i4.i.25.i = load i64, ptr %i.adq, align 1, !noalias !412 ; 2 uses
  %i.adr = icmp eq i64 %.sroa.01.0.copyload.i.i.25.i, %.sroa.01.0.copyload.i4.i.25.i
  br i1 %i.adr, label %bb.do, label %_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core13compress_fast0B7_.exit.i

bb.do:                                            ; preds = %bb.dn
  %i.ads = add nuw nsw i64 %.sroa.0114.1192.i, 211 ; 2 uses
  %i.adt = add nuw nsw i64 %i.wn, 211
  %i.adu = and i64 %i.ads, 32767
  %i.adv = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.adu
  %.sroa.01.0.copyload.i.i.26.i = load i64, ptr %i.adv, align 1, !noalias !412 ; 2 uses
  %i.adw = and i64 %i.adt, 32767
  %i.adx = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.adw
  %.sroa.01.0.copyload.i4.i.26.i = load i64, ptr %i.adx, align 1, !noalias !412 ; 2 uses
  %i.ady = icmp eq i64 %.sroa.01.0.copyload.i.i.26.i, %.sroa.01.0.copyload.i4.i.26.i
  br i1 %i.ady, label %bb.dp, label %_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core13compress_fast0B7_.exit.i

bb.dp:                                            ; preds = %bb.do
  %i.adz = add nuw nsw i64 %.sroa.0114.1192.i, 219 ; 2 uses
  %i.aea = add nuw nsw i64 %i.wn, 219
  %i.aeb = and i64 %i.adz, 32767
  %i.aec = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.aeb
  %.sroa.01.0.copyload.i.i.27.i = load i64, ptr %i.aec, align 1, !noalias !412 ; 2 uses
  %i.aed = and i64 %i.aea, 32767
  %i.aee = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.aed
  %.sroa.01.0.copyload.i4.i.27.i = load i64, ptr %i.aee, align 1, !noalias !412 ; 2 uses
  %i.aef = icmp eq i64 %.sroa.01.0.copyload.i.i.27.i, %.sroa.01.0.copyload.i4.i.27.i
  br i1 %i.aef, label %bb.dq, label %_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core13compress_fast0B7_.exit.i

bb.dq:                                            ; preds = %bb.dp
  %i.aeg = add nuw nsw i64 %.sroa.0114.1192.i, 227 ; 2 uses
  %i.aeh = add nuw nsw i64 %i.wn, 227
  %i.aei = and i64 %i.aeg, 32767
  %i.aej = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.aei
  %.sroa.01.0.copyload.i.i.28.i = load i64, ptr %i.aej, align 1, !noalias !412 ; 2 uses
  %i.aek = and i64 %i.aeh, 32767
  %i.ael = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.aek
  %.sroa.01.0.copyload.i4.i.28.i = load i64, ptr %i.ael, align 1, !noalias !412 ; 2 uses
  %i.aem = icmp eq i64 %.sroa.01.0.copyload.i.i.28.i, %.sroa.01.0.copyload.i4.i.28.i
  br i1 %i.aem, label %bb.dr, label %_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core13compress_fast0B7_.exit.i

bb.dr:                                            ; preds = %bb.dq
  %i.aen = add nuw nsw i64 %.sroa.0114.1192.i, 235 ; 2 uses
  %i.aeo = add nuw nsw i64 %i.wn, 235
  %i.aep = and i64 %i.aen, 32767
  %i.aeq = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.aep
  %.sroa.01.0.copyload.i.i.29.i = load i64, ptr %i.aeq, align 1, !noalias !412 ; 2 uses
  %i.aer = and i64 %i.aeo, 32767
  %i.aes = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.aer
  %.sroa.01.0.copyload.i4.i.29.i = load i64, ptr %i.aes, align 1, !noalias !412 ; 2 uses
  %i.aet = icmp eq i64 %.sroa.01.0.copyload.i.i.29.i, %.sroa.01.0.copyload.i4.i.29.i
  br i1 %i.aet, label %bb.ds, label %_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core13compress_fast0B7_.exit.i

bb.ds:                                            ; preds = %bb.dr
  %i.aeu = add nuw nsw i64 %.sroa.0114.1192.i, 243 ; 2 uses
  %i.aev = add nuw nsw i64 %i.wn, 243
  %i.aew = and i64 %i.aeu, 32767
  %i.aex = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.aew
  %.sroa.01.0.copyload.i.i.30.i = load i64, ptr %i.aex, align 1, !noalias !412 ; 2 uses
  %i.aey = and i64 %i.aev, 32767
  %i.aez = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.aey
  %.sroa.01.0.copyload.i4.i.30.i = load i64, ptr %i.aez, align 1, !noalias !412 ; 2 uses
  %i.afa = icmp eq i64 %.sroa.01.0.copyload.i.i.30.i, %.sroa.01.0.copyload.i4.i.30.i
  br i1 %i.afa, label %bb.dt, label %_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core13compress_fast0B7_.exit.i

bb.dt:                                            ; preds = %bb.ds
  %i.afb = add nuw nsw i64 %.sroa.0114.1192.i, 251 ; 2 uses
  %i.afc = add nuw nsw i64 %i.wn, 251
  %i.afd = and i64 %i.afb, 32767
  %i.afe = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.afd
  %.sroa.01.0.copyload.i.i.31.i = load i64, ptr %i.afe, align 1, !noalias !412 ; 2 uses
  %i.aff = and i64 %i.afc, 32767
  %i.afg = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.aff
  %.sroa.01.0.copyload.i4.i.31.i = load i64, ptr %i.afg, align 1, !noalias !412 ; 2 uses
  %i.afh = icmp eq i64 %.sroa.01.0.copyload.i.i.31.i, %.sroa.01.0.copyload.i4.i.31.i
  br i1 %i.afh, label %bb.du, label %_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core13compress_fast0B7_.exit.i

bb.du:                                            ; preds = %bb.dt
  %i.afi = icmp eq i16 %i.uv, %i.uw
  br i1 %i.afi, label %_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core13compress_fast0B7_.exit.thread.i, label %.thread.i37

_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core13compress_fast0B7_.exit.i: ; preds = %bb.dt, %bb.ds, %bb.dr, %bb.dq, %bb.dp, %bb.do, %bb.dn, %bb.dm, %bb.dl, %bb.dk, %bb.dj, %bb.di, %bb.dh, %bb.dg, %bb.df, %bb.de, %bb.dd, %bb.dc, %bb.db, %bb.da, %bb.cz, %bb.cy, %bb.cx, %bb.cw, %bb.cv, %bb.cu, %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.cp, %bb.co
  %.sroa.0122.0.lcssa.i = phi i64 [ %i.ws, %bb.co ], [ %i.wz, %bb.cp ], [ %i.xg, %bb.cq ], [ %i.xn, %bb.cr ], [ %i.xu, %bb.cs ], [ %i.yb, %bb.ct ], [ %i.yi, %bb.cu ], [ %i.yp, %bb.cv ], [ %i.yw, %bb.cw ], [ %i.zd, %bb.cx ], [ %i.zk, %bb.cy ], [ %i.zr, %bb.cz ], [ %i.zy, %bb.da ], [ %i.aaf, %bb.db ], [ %i.aam, %bb.dc ], [ %i.aat, %bb.dd ], [ %i.aba, %bb.de ], [ %i.abh, %bb.df ], [ %i.abo, %bb.dg ], [ %i.abv, %bb.dh ], [ %i.acc, %bb.di ], [ %i.acj, %bb.dj ], [ %i.acq, %bb.dk ], [ %i.acx, %bb.dl ], [ %i.ade, %bb.dm ], [ %i.adl, %bb.dn ], [ %i.ads, %bb.do ], [ %i.adz, %bb.dp ], [ %i.aeg, %bb.dq ], [ %i.aen, %bb.dr ], [ %i.aeu, %bb.ds ], [ %i.afb, %bb.dt ]
  %.sroa.01.0.copyload.i.i.lcssa.i = phi i64 [ %.sroa.01.0.copyload.i.i.i, %bb.co ], [ %.sroa.01.0.copyload.i.i.1.i, %bb.cp ], [ %.sroa.01.0.copyload.i.i.2.i, %bb.cq ], [ %.sroa.01.0.copyload.i.i.3.i, %bb.cr ], [ %.sroa.01.0.copyload.i.i.4.i, %bb.cs ], [ %.sroa.01.0.copyload.i.i.5.i, %bb.ct ], [ %.sroa.01.0.copyload.i.i.6.i, %bb.cu ], [ %.sroa.01.0.copyload.i.i.7.i, %bb.cv ], [ %.sroa.01.0.copyload.i.i.8.i, %bb.cw ], [ %.sroa.01.0.copyload.i.i.9.i, %bb.cx ], [ %.sroa.01.0.copyload.i.i.10.i, %bb.cy ], [ %.sroa.01.0.copyload.i.i.11.i, %bb.cz ], [ %.sroa.01.0.copyload.i.i.12.i, %bb.da ], [ %.sroa.01.0.copyload.i.i.13.i, %bb.db ], [ %.sroa.01.0.copyload.i.i.14.i, %bb.dc ], [ %.sroa.01.0.copyload.i.i.15.i, %bb.dd ], [ %.sroa.01.0.copyload.i.i.16.i, %bb.de ], [ %.sroa.01.0.copyload.i.i.17.i, %bb.df ], [ %.sroa.01.0.copyload.i.i.18.i, %bb.dg ], [ %.sroa.01.0.copyload.i.i.19.i, %bb.dh ], [ %.sroa.01.0.copyload.i.i.20.i, %bb.di ], [ %.sroa.01.0.copyload.i.i.21.i, %bb.dj ], [ %.sroa.01.0.copyload.i.i.22.i, %bb.dk ], [ %.sroa.01.0.copyload.i.i.23.i, %bb.dl ], [ %.sroa.01.0.copyload.i.i.24.i, %bb.dm ], [ %.sroa.01.0.copyload.i.i.25.i, %bb.dn ], [ %.sroa.01.0.copyload.i.i.26.i, %bb.do ], [ %.sroa.01.0.copyload.i.i.27.i, %bb.dp ], [ %.sroa.01.0.copyload.i.i.28.i, %bb.dq ], [ %.sroa.01.0.copyload.i.i.29.i, %bb.dr ], [ %.sroa.01.0.copyload.i.i.30.i, %bb.ds ], [ %.sroa.01.0.copyload.i.i.31.i, %bb.dt ]
  %.sroa.01.0.copyload.i4.i.lcssa.i = phi i64 [ %.sroa.01.0.copyload.i4.i.i, %bb.co ], [ %.sroa.01.0.copyload.i4.i.1.i, %bb.cp ], [ %.sroa.01.0.copyload.i4.i.2.i, %bb.cq ], [ %.sroa.01.0.copyload.i4.i.3.i, %bb.cr ], [ %.sroa.01.0.copyload.i4.i.4.i, %bb.cs ], [ %.sroa.01.0.copyload.i4.i.5.i, %bb.ct ], [ %.sroa.01.0.copyload.i4.i.6.i, %bb.cu ], [ %.sroa.01.0.copyload.i4.i.7.i, %bb.cv ], [ %.sroa.01.0.copyload.i4.i.8.i, %bb.cw ], [ %.sroa.01.0.copyload.i4.i.9.i, %bb.cx ], [ %.sroa.01.0.copyload.i4.i.10.i, %bb.cy ], [ %.sroa.01.0.copyload.i4.i.11.i, %bb.cz ], [ %.sroa.01.0.copyload.i4.i.12.i, %bb.da ], [ %.sroa.01.0.copyload.i4.i.13.i, %bb.db ], [ %.sroa.01.0.copyload.i4.i.14.i, %bb.dc ], [ %.sroa.01.0.copyload.i4.i.15.i, %bb.dd ], [ %.sroa.01.0.copyload.i4.i.16.i, %bb.de ], [ %.sroa.01.0.copyload.i4.i.17.i, %bb.df ], [ %.sroa.01.0.copyload.i4.i.18.i, %bb.dg ], [ %.sroa.01.0.copyload.i4.i.19.i, %bb.dh ], [ %.sroa.01.0.copyload.i4.i.20.i, %bb.di ], [ %.sroa.01.0.copyload.i4.i.21.i, %bb.dj ], [ %.sroa.01.0.copyload.i4.i.22.i, %bb.dk ], [ %.sroa.01.0.copyload.i4.i.23.i, %bb.dl ], [ %.sroa.01.0.copyload.i4.i.24.i, %bb.dm ], [ %.sroa.01.0.copyload.i4.i.25.i, %bb.dn ], [ %.sroa.01.0.copyload.i4.i.26.i, %bb.do ], [ %.sroa.01.0.copyload.i4.i.27.i, %bb.dp ], [ %.sroa.01.0.copyload.i4.i.28.i, %bb.dq ], [ %.sroa.01.0.copyload.i4.i.29.i, %bb.dr ], [ %.sroa.01.0.copyload.i4.i.30.i, %bb.ds ], [ %.sroa.01.0.copyload.i4.i.31.i, %bb.dt ]
  %i.afj = xor i64 %.sroa.01.0.copyload.i4.i.lcssa.i, %.sroa.01.0.copyload.i.i.lcssa.i
  %i.afk = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.afj, i1 true)
  %i.afl = trunc nuw nsw i64 %i.afk to i32
  %i.afm = trunc nuw nsw i64 %.sroa.0122.0.lcssa.i to i32
  %i.afn = trunc nuw nsw i64 %.sroa.0114.1192.i to i32
  %i.afo = lshr i32 %i.afl, 3
  %i.afp = sub nsw i32 %i.afm, %i.afn
  %i.afq = add nsw i32 %i.afo, %i.afp             ; 3 uses
  %i.afr = icmp ult i32 %i.afq, 3
  br i1 %i.afr, label %_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core13compress_fast0B7_.exit.thread.i, label %bb.dx

bb.dv:                                            ; preds = %bb.cm
  %i.afs = trunc i32 %.sroa.02.0.copyload.i.i to i8
  %i.aft = load i64, ptr %i.tp, align 8, !alias.scope !407, !noalias !410, !noundef !4 ; 2 uses
  %i.afu = and i64 %i.aft, 65535
  %i.afv = getelementptr inbounds nuw i8, ptr %1, i64 %i.afu
  store i8 %i.afs, ptr %i.afv, align 1, !alias.scope !407, !noalias !410
  %i.afw = add i64 %i.aft, 1
  store i64 %i.afw, ptr %i.tp, align 8, !alias.scope !407, !noalias !410
  %i.afx = load i64, ptr %i.tq, align 8, !alias.scope !407, !noalias !410, !noundef !4
  %i.afy = and i64 %i.afx, 65535
  %i.afz = getelementptr inbounds nuw i8, ptr %1, i64 %i.afy ; 2 uses
  %i.aga = load i8, ptr %i.afz, align 1, !alias.scope !407, !noalias !410, !noundef !4
  %i.agb = lshr i8 %i.aga, 1
  store i8 %i.agb, ptr %i.afz, align 1, !alias.scope !407, !noalias !410
  %.mask.i = and i32 %.sroa.02.0.copyload.i.i, 255
  %i.agc = zext nneg i32 %.mask.i to i64
  %i.agd = load ptr, ptr %i.tr, align 8, !alias.scope !407, !noalias !410, !nonnull !4, !noundef !4
  %i.age = getelementptr inbounds nuw [2 x i8], ptr %i.agd, i64 %i.agc ; 2 uses
  %i.agf = load i16, ptr %i.age, align 2, !noalias !410, !noundef !4
  %i.agg = add i16 %i.agf, 1
  store i16 %i.agg, ptr %i.age, align 2, !noalias !410
  br label %bb.dw

bb.dw:                                            ; preds = %_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core13compress_fast0B7_.exit.thread.i, %bb.ec, %bb.dv
  %.sroa.034.0.i = phi i32 [ 1, %bb.dv ], [ 1, %_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core13compress_fast0B7_.exit.thread.i ], [ %..i104.i, %bb.ec ] ; 2 uses
  %i.agh = load i32, ptr %i.ts, align 4, !alias.scope !407, !noalias !410, !noundef !4
  %i.agi = add i32 %i.agh, -1                     ; 2 uses
  store i32 %i.agi, ptr %i.ts, align 4, !alias.scope !407, !noalias !410
  %i.agj = icmp eq i32 %i.agi, 0
  %.pre.i35 = load i64, ptr %i.tp, align 8, !alias.scope !407, !noalias !410 ; 3 uses
  br i1 %i.agj, label %bb.ed, label %bb.ee

bb.dx:                                            ; preds = %_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core13compress_fast0B7_.exit.i
  %i.agk = icmp eq i32 %i.afq, 3
  %i.agl = icmp ugt i16 %i.ux, 8191
  %or.cond5.i36 = and i1 %i.agl, %i.agk
  br i1 %or.cond5.i36, label %_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core13compress_fast0B7_.exit.thread.i, label %.thread.i37

.thread.i37:                                      ; preds = %bb.dx, %bb.du
  %.sroa.0.0.i126129.i = phi i32 [ %i.afq, %bb.dx ], [ 258, %bb.du ]
  %i.agm = trunc i64 %.sroa.049.2195.i to i32
  %..i104.i = tail call noundef i32 @llvm.umin.i32(i32 %i.agm, i32 range(i32 1, 0) %.sroa.0.0.i126129.i) ; 2 uses
  %i.agn = add i16 %i.ux, -1                      ; 5 uses
  %i.ago = add i32 %..i104.i, -3                  ; 2 uses
  %i.agp = load i64, ptr %i.tp, align 8, !alias.scope !407, !noalias !410, !noundef !4 ; 4 uses
  %i.agq = and i64 %i.agp, 65535
  %i.agr = trunc i32 %i.ago to i8
  %i.ags = getelementptr inbounds nuw i8, ptr %1, i64 %i.agq
  store i8 %i.agr, ptr %i.ags, align 1, !alias.scope !407, !noalias !410
  %i.agt = add i64 %i.agp, 1
  %i.agu = and i64 %i.agt, 65535
  %i.agv = trunc i16 %i.agn to i8
  %i.agw = getelementptr inbounds nuw i8, ptr %1, i64 %i.agu
  store i8 %i.agv, ptr %i.agw, align 1, !alias.scope !407, !noalias !410
  %i.agx = add i64 %i.agp, 2
  %i.agy = and i64 %i.agx, 65535
  %i.agz = lshr i16 %i.agn, 8                     ; 2 uses
  %i.aha = trunc nuw i16 %i.agz to i8
  %i.ahb = getelementptr inbounds nuw i8, ptr %1, i64 %i.agy
  store i8 %i.aha, ptr %i.ahb, align 1, !alias.scope !407, !noalias !410
  %i.ahc = add i64 %i.agp, 3
  store i64 %i.ahc, ptr %i.tp, align 8, !alias.scope !407, !noalias !410
  %i.ahd = load i64, ptr %i.tq, align 8, !alias.scope !407, !noalias !410, !noundef !4
  %i.ahe = and i64 %i.ahd, 65535
  %i.ahf = getelementptr inbounds nuw i8, ptr %1, i64 %i.ahe ; 2 uses
  %i.ahg = load i8, ptr %i.ahf, align 1, !alias.scope !407, !noalias !410, !noundef !4
  %i.ahh = lshr i8 %i.ahg, 1
  %i.ahi = or disjoint i8 %i.ahh, -128
  store i8 %i.ahi, ptr %i.ahf, align 1, !alias.scope !407, !noalias !410
  %i.ahj = icmp ult i16 %i.agn, 512
  br i1 %i.ahj, label %bb.eb, label %bb.dy

bb.dy:                                            ; preds = %.thread.i37
  %i.ahk = zext nneg i16 %i.agz to i64            ; 2 uses
  %i.ahl = icmp sgt i16 %i.agn, -1
  br i1 %i.ahl, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.ahk, i64 noundef 128, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #22, !noalias !410
  unreachable

bb.ea:                                            ; preds = %bb.dy
  %i.ahm = getelementptr inbounds nuw i8, ptr @43, i64 %i.ahk
  br label %bb.ec

bb.eb:                                            ; preds = %.thread.i37
  %i.ahn = zext nneg i16 %i.agn to i64
  %i.aho = getelementptr inbounds nuw i8, ptr @44, i64 %i.ahn
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %bb.ea
  %.sink.in.i = phi ptr [ %i.aho, %bb.eb ], [ %i.ahm, %bb.ea ]
  %.sink.i = load i8, ptr %.sink.in.i, align 1, !noalias !415, !noundef !4
  %i.ahp = zext i8 %.sink.i to i64
  %i.ahq = load ptr, ptr %i.tr, align 8, !alias.scope !407, !noalias !410, !nonnull !4, !noundef !4
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ahq, i64 576
  %i.ahs = getelementptr inbounds nuw [2 x i8], ptr %i.ahr, i64 %i.ahp ; 2 uses
  %i.aht = load i16, ptr %i.ahs, align 2, !noalias !410, !noundef !4
  %i.ahu = add i16 %i.aht, 1
  store i16 %i.ahu, ptr %i.ahs, align 2, !noalias !410
  %i.ahv = and i32 %i.ago, 255
  %i.ahw = zext nneg i32 %i.ahv to i64
  %i.ahx = getelementptr inbounds nuw i8, ptr @45, i64 %i.ahw
  %i.ahy = load i8, ptr %i.ahx, align 1, !noalias !415, !noundef !4
  %i.ahz = and i8 %i.ahy, 31
  %i.aia = zext nneg i8 %i.ahz to i64
  %i.aib = load ptr, ptr %i.tr, align 8, !alias.scope !407, !noalias !410, !nonnull !4, !noundef !4
  %i.aic = getelementptr inbounds nuw [2 x i8], ptr %i.aib, i64 %i.aia
  %i.aid = getelementptr inbounds nuw i8, ptr %i.aic, i64 512 ; 2 uses
  %i.aie = load i16, ptr %i.aid, align 2, !noalias !410, !noundef !4
  %i.aif = add i16 %i.aie, 1
  store i16 %i.aif, ptr %i.aid, align 2, !noalias !410
  br label %bb.dw

_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core13compress_fast0B7_.exit.thread.i: ; preds = %bb.dx, %_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core13compress_fast0B7_.exit.i, %bb.du
  %i.aig = trunc i32 %.sroa.02.0.copyload.i.i to i8
  %i.aih = load i64, ptr %i.tp, align 8, !alias.scope !407, !noalias !410, !noundef !4 ; 2 uses
  %i.aii = and i64 %i.aih, 65535
  %i.aij = getelementptr inbounds nuw i8, ptr %1, i64 %i.aii
  store i8 %i.aig, ptr %i.aij, align 1, !alias.scope !407, !noalias !410
  %i.aik = add i64 %i.aih, 1
  store i64 %i.aik, ptr %i.tp, align 8, !alias.scope !407, !noalias !410
  %i.ail = load i64, ptr %i.tq, align 8, !alias.scope !407, !noalias !410, !noundef !4
  %i.aim = and i64 %i.ail, 65535
  %i.ain = getelementptr inbounds nuw i8, ptr %1, i64 %i.aim ; 2 uses
  %i.aio = load i8, ptr %i.ain, align 1, !alias.scope !407, !noalias !410, !noundef !4
  %i.aip = lshr i8 %i.aio, 1
  store i8 %i.aip, ptr %i.ain, align 1, !alias.scope !407, !noalias !410
  %.mask93.i = and i32 %.sroa.02.0.copyload.i.i, 255
  %i.aiq = zext nneg i32 %.mask93.i to i64
  %i.air = load ptr, ptr %i.tr, align 8, !alias.scope !407, !noalias !410, !nonnull !4, !noundef !4
  %i.ais = getelementptr inbounds nuw [2 x i8], ptr %i.air, i64 %i.aiq ; 2 uses
  %i.ait = load i16, ptr %i.ais, align 2, !noalias !410, !noundef !4
  %i.aiu = add i16 %i.ait, 1
  store i16 %i.aiu, ptr %i.ais, align 2, !noalias !410
  br label %bb.dw

bb.ed:                                            ; preds = %bb.dw
  store i32 8, ptr %i.ts, align 4, !alias.scope !407, !noalias !410
  store i64 %.pre.i35, ptr %i.tq, align 8, !alias.scope !407, !noalias !410
  %i.aiv = add i64 %.pre.i35, 1                   ; 2 uses
  store i64 %i.aiv, ptr %i.tp, align 8, !alias.scope !407, !noalias !410
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.dw
  %i.aiw = phi i64 [ %.pre.i35, %bb.dw ], [ %i.aiv, %bb.ed ]
  %i.aix = load i32, ptr %i.tt, align 8, !alias.scope !407, !noalias !410, !noundef !4
  %i.aiy = add i32 %i.aix, %.sroa.034.0.i
  store i32 %i.aiy, ptr %i.tt, align 8, !alias.scope !407, !noalias !410
  %i.aiz = zext i32 %.sroa.034.0.i to i64         ; 4 uses
  %i.aja = add i64 %.sroa.063.1194.i, %i.aiz      ; 2 uses
  %i.ajb = load i64, ptr %i.tn, align 8, !alias.scope !407, !noalias !410, !noundef !4
  %i.ajc = add i64 %i.ajb, %i.aiz
  %..i105.i = tail call noundef i64 @llvm.umin.i64(i64 %i.ajc, i64 32768)
  store i64 %..i105.i, ptr %i.tn, align 8, !alias.scope !407, !noalias !410
  %i.ajd = add nuw nsw i64 %.sroa.0114.1192.i, %i.aiz
  %i.aje = and i64 %i.ajd, 32767                  ; 2 uses
  %i.ajf = sub i64 %.sroa.049.2195.i, %i.aiz      ; 2 uses
  %i.ajg = icmp ugt i64 %i.aiw, 65528
  br i1 %i.ajg, label %bb.ef, label %bb.cn

bb.ef:                                            ; preds = %bb.ee
  store i64 %i.ajf, ptr %i.te, align 8, !alias.scope !407, !noalias !410
  store i64 %i.aja, ptr %i.tf, align 8, !alias.scope !407, !noalias !410
  %i.ajh = tail call { i32, i32 } @_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core11flush_block(ptr noalias nofree noundef nonnull align 8 dereferenceable(65712) %1, ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(56) %2, i8 noundef 0) ; 2 uses
  %i.aji = extractvalue { i32, i32 } %i.ajh, 0
  %i.ajj = trunc i32 %i.aji to i1
  br i1 %i.ajj, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  store i64 %.sroa.06.2.lcssa.i, ptr %i.a, align 8, !alias.scope !407, !noalias !410
  store i32 -1, ptr %i.c, align 4, !alias.scope !407, !noalias !410
  br label %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core15compress_normal.exit.thread41

bb.eh:                                            ; preds = %bb.ef
  %i.ajk = extractvalue { i32, i32 } %i.ajh, 1    ; 2 uses
  %i.ajl = icmp eq i32 %i.ajk, 0
  br i1 %i.ajl, label %bb.ei, label %.split44

bb.ei:                                            ; preds = %bb.eh
  %i.ajm = load i64, ptr %i.te, align 8, !alias.scope !407, !noalias !410, !noundef !4
  %i.ajn = load i64, ptr %i.tf, align 8, !alias.scope !407, !noalias !410, !noundef !4
  br label %bb.cn

.split44:                                         ; preds = %bb.eh
  store i64 %.sroa.06.2.lcssa.i, ptr %i.a, align 8, !alias.scope !407, !noalias !410
  %i.ajo = icmp sgt i32 %i.ajk, 0
  br i1 %i.ajo, label %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core15compress_normal.exit.thread, label %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core15compress_normal.exit.thread41

bb.ej:                                            ; preds = %.lr.ph.i31
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %.sroa.06.2190.i, i64 noundef %i.ul, i64 noundef %i.tm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #22, !noalias !410
  unreachable

bb.ek:                                            ; preds = %.lr.ph.i31
  %i.ajp = load ptr, ptr %i.td, align 8, !alias.scope !407, !noalias !410, !nonnull !4, !noundef !4
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.ajp, i64 %.sroa.018.0191.i
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.th, i64 %.sroa.06.2190.i ; 2 uses
  tail call void @_RINvNtCshzWfHUSfYae_4core5slice20copy_from_slice_implhECsjkkKzr5dxZe_11miniz_oxide(ptr noalias nofree noundef nonnull %i.ajq, i64 noundef %..i100.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ajr, i64 noundef %..i100.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47), !noalias !410
  %i.ajs = icmp samesign ult i64 %.sroa.018.0191.i, 257
  br i1 %i.ajs, label %bb.el, label %bb.em

bb.el:                                            ; preds = %bb.ek
  %i.ajt = sub nuw nsw i64 257, %.sroa.018.0191.i
  %..i106.i = tail call noundef i64 @llvm.umin.i64(i64 %i.ajt, i64 %..i100.i) ; 3 uses
  %i.aju = add i64 %..i106.i, %.sroa.06.2190.i    ; 3 uses
  %i.ajv = icmp ult i64 %i.aju, %.sroa.06.2190.i
  %.not91.i = icmp ugt i64 %i.aju, %i.tm
  %or.cond97.i = or i1 %i.ajv, %.not91.i
  br i1 %or.cond97.i, label %bb.en, label %bb.eo, !prof !74

bb.em:                                            ; preds = %bb.eo, %bb.ek
  %i.ajw = sub i64 %.sroa.026.0189.i, %..i100.i   ; 2 uses
  %i.ajx = icmp eq i64 %i.ajw, 0
  br i1 %i.ajx, label %._crit_edge.i32, label %.lr.ph.i31

bb.en:                                            ; preds = %bb.el
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %.sroa.06.2190.i, i64 noundef %i.aju, i64 noundef %i.tm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #22, !noalias !410
  unreachable

bb.eo:                                            ; preds = %bb.el
  %i.ajy = load ptr, ptr %i.td, align 8, !alias.scope !407, !noalias !410, !nonnull !4, !noundef !4
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.ajy, i64 %.sroa.018.0191.i
  %i.aka = getelementptr inbounds nuw i8, ptr %i.ajz, i64 32768
  tail call void @_RINvNtCshzWfHUSfYae_4core5slice20copy_from_slice_implhECsjkkKzr5dxZe_11miniz_oxide(ptr noalias nofree noundef nonnull %i.aka, i64 noundef %..i106.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ajr, i64 noundef %..i106.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48), !noalias !410
  br label %bb.em

_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core15compress_normal.exit: ; preds = %bb.ck
  store i64 %.sroa.06.2.lcssa.i, ptr %i.a, align 8, !alias.scope !407, !noalias !410
  %i.akb = icmp sgt i32 %i.wi, 0
  br i1 %i.akb, label %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core15compress_normal.exit.thread, label %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core15compress_normal.exit.thread41

_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core15compress_normal.exit.thread41: ; preds = %bb.eg, %bb.cj, %.split43.thread, %.split44, %.split43, %.split, %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core15compress_normal.exit
  %i.akc = load i32, ptr %i.c, align 4, !range !340, !noundef !4
  %i.akd = load i64, ptr %i.a, align 8, !noundef !4
  %i.ake = load i64, ptr %i.b, align 8, !noundef !4
  %i.akf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.akc, ptr %i.akf, align 8
  store i64 %i.akd, ptr %0, align 8
  %i.akg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ake, ptr %i.akg, align 8
  br label %bb.fb

_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core15compress_normal.exit.thread: ; preds = %.split._RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core15compress_normal.exit.thread_crit_edge, %bb.ce, %bb.m, %.split44, %.split43, %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core15compress_normal.exit
  %i.akh = phi ptr [ %.pre, %.split._RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core15compress_normal.exit.thread_crit_edge ], [ %i.y, %.split43 ], [ %i.th, %bb.ce ], [ %i.y, %bb.m ], [ %i.th, %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core15compress_normal.exit ], [ %i.th, %.split44 ] ; 2 uses
  %i.aki = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.akj = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.akh, null
  %.pre223 = load i64, ptr %i.akj, align 8        ; 3 uses
  br i1 %.not, label %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core15compress_normal.exit.thread.thread, label %bb.ep

bb.ep:                                            ; preds = %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core15compress_normal.exit.thread
  %i.akk = load i32, ptr %i.q, align 8, !noundef !4
  %i.akl = and i32 %i.akk, 12288
  %i.akm = icmp eq i32 %i.akl, 0
  br i1 %i.akm, label %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core15compress_normal.exit.thread.thread, label %bb.eq

_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core15compress_normal.exit.thread.thread: ; preds = %bb.i, %bb.cc, %bb.er, %bb.ep, %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core15compress_normal.exit.thread
  %.not.i38 = phi i64 [ %i.akw, %bb.er ], [ %.pre223, %bb.ep ], [ 0, %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core15compress_normal.exit.thread ], [ 0, %bb.cc ], [ 0, %bb.i ]
  %i.akn = load i8, ptr %i.f, align 1, !range !341, !noundef !4 ; 2 uses
  %i.ako = load i64, ptr %i.a, align 8, !noundef !4
  %i.akp = icmp ne i64 %.not.i38, %i.ako
  %i.akq = icmp eq i8 %i.akn, 0
  %or.cond46 = or i1 %i.akq, %i.akp
  br i1 %or.cond46, label %bb.eu, label %bb.et

bb.eq:                                            ; preds = %bb.ep
  %i.akr = load i64, ptr %i.a, align 8, !noundef !4 ; 3 uses
  %.not21 = icmp ugt i64 %i.akr, %.pre223
  br i1 %.not21, label %bb.es, label %bb.er, !prof !74

bb.er:                                            ; preds = %bb.eq
  %i.aks = getelementptr inbounds nuw i8, ptr %1, i64 65688 ; 2 uses
  %i.akt = load i32, ptr %i.aks, align 8, !noundef !4
  %i.aku = tail call noundef i32 @_RNvNtCsjkkKzr5dxZe_11miniz_oxide6shared14update_adler32(i32 noundef %i.akt, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.akh, i64 noundef %i.akr)
  store i32 %i.aku, ptr %i.aks, align 8
  %.pre221 = load ptr, ptr %i.aki, align 8
  %.pre222 = load i64, ptr %i.akj, align 8
  %i.akv = icmp eq ptr %.pre221, null
  %i.akw = select i1 %i.akv, i64 0, i64 %.pre222
  br label %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core15compress_normal.exit.thread.thread

bb.es:                                            ; preds = %bb.eq
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.akr, i64 noundef %.pre223, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51) #22
  unreachable

bb.et:                                            ; preds = %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core15compress_normal.exit.thread.thread
  %i.akx = load i32, ptr %i.k, align 4, !noundef !4
  %.not22 = icmp ne i32 %i.akx, 0
  %i.aky = getelementptr inbounds nuw i8, ptr %1, i64 65600
  %i.akz = load i64, ptr %i.aky, align 8, !noundef !4
  %i.ala = icmp ne i64 %i.akz, 0
  %brmerge = or i1 %.not22, %i.ala
  br i1 %brmerge, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core15compress_normal.exit.thread.thread, %bb.ey, %bb.fa, %bb.et
  tail call fastcc void @_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core19flush_output_buffer(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %2, ptr noalias nofree noundef align 8 dereferenceable(72) %i.a)
  %i.alb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.alc = load i32, ptr %i.alb, align 8, !range !340, !noundef !4
  store i32 %i.alc, ptr %i.c, align 4
  br label %bb.fb

bb.ev:                                            ; preds = %bb.et
  %i.ald = tail call { i32, i32 } @_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core11flush_block(ptr noalias nofree noundef nonnull align 8 dereferenceable(65712) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %2, i8 noundef %i.akn) ; 2 uses
  %i.ale = extractvalue { i32, i32 } %i.ald, 0
  %i.alf = trunc i32 %i.ale to i1
  br i1 %i.alf, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %bb.ev
  store i32 -1, ptr %i.c, align 4
  %i.alg = load i64, ptr %i.a, align 8, !noundef !4
  %i.alh = load i64, ptr %i.b, align 8, !noundef !4
  %i.ali = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 -1, ptr %i.ali, align 8
  store i64 %i.alg, ptr %0, align 8
  %i.alj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.alh, ptr %i.alj, align 8
  br label %bb.fb

bb.ex:                                            ; preds = %bb.ev
  %i.alk = extractvalue { i32, i32 } %i.ald, 1
  %i.all = icmp slt i32 %i.alk, 0
  br i1 %i.all, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.alm = load i8, ptr %i.f, align 1, !range !341, !noundef !4 ; 2 uses
  %i.aln = icmp eq i8 %i.alm, 4
  %i.alo = zext i1 %i.aln to i8
  store i8 %i.alo, ptr %i.n, align 1
  %i.alp = icmp eq i8 %i.alm, 3
  br i1 %i.alp, label %bb.fa, label %bb.eu

bb.ez:                                            ; preds = %bb.ex
  %i.alq = load i32, ptr %i.c, align 4, !range !340, !noundef !4
  %i.alr = load i64, ptr %i.a, align 8, !noundef !4
  %i.als = load i64, ptr %i.b, align 8, !noundef !4
  %i.alt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.alq, ptr %i.alt, align 8
  store i64 %i.alr, ptr %0, align 8
  %i.alu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.als, ptr %i.alu, align 8
  br label %bb.fb

bb.fa:                                            ; preds = %bb.ey
  %i.alv = getelementptr inbounds nuw i8, ptr %1, i64 65576
  %i.alw = load ptr, ptr %i.alv, align 8, !nonnull !4, !noundef !4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(65536) %i.alw, i8 0, i64 65536, i1 false), !alias.scope !416
  %i.alx = getelementptr inbounds nuw i8, ptr %1, i64 65568
  %i.aly = load ptr, ptr %i.alx, align 8, !nonnull !4, !noundef !4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(65536) %i.aly, i8 0, i64 65536, i1 false), !alias.scope !419
  %i.alz = getelementptr inbounds nuw i8, ptr %1, i64 65616
  store i64 0, ptr %i.alz, align 8
  br label %bb.eu

bb.fb:                                            ; preds = %bb.ew, %bb.ez, %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core15compress_normal.exit.thread41, %bb.d, %bb.g, %bb.eu
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core19flush_output_buffer(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 12), (16, 24)) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %2, align 8, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 0, ptr %i.b, align 8
  store i64 %i.a, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 0, ptr %i.c, align 8
  %i.d = load i64, ptr %1, align 8, !range !81, !noundef !4
  %i.e = trunc nuw i64 %i.d to i1
  br i1 %i.e, label %bb.b, label %._crit_edge9

._crit_edge9:                                     ; preds = %bb.a
  %.phi.trans.insert10 = getelementptr inbounds nuw i8, ptr %2, i64 44
  %.pre11 = load i32, ptr %.phi.trans.insert10, align 4
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !4 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !noundef !4 ; 6 uses
  %i.j = sub i64 %i.g, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !noundef !4 ; 2 uses
  %i.m = zext i32 %i.l to i64
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.m, i64 %i.j) ; 6 uses
  %i.n = icmp eq i64 %..i, 0
  br i1 %i.n, label %._crit_edge, label %bb.e

._crit_edge:                                      ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.pre = load i32, ptr %.phi.trans.insert, align 8
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge9, %bb.d
  %i.o = phi i32 [ %.pre11, %._crit_edge9 ], [ %i.x, %bb.d ]
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 67
  %i.q = load i8, ptr %i.p, align 1, !range !92, !noundef !4
  %i.r = trunc nuw i8 %i.q to i1
  %i.s = icmp eq i32 %i.o, 0
  %or.cond = select i1 %i.r, i1 %i.s, i1 false
  br i1 %or.cond, label %bb.k, label %bb.j

bb.d:                                             ; preds = %._crit_edge, %bb.i
  %.pre-phi = phi i64 [ %i.i, %._crit_edge ], [ %i.y, %bb.i ] ; 2 uses
  %i.t = phi i32 [ %.pre, %._crit_edge ], [ %i.ab, %bb.i ]
  %i.u = trunc nuw i64 %..i to i32                ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.w = add i32 %i.t, %i.u
  store i32 %i.w, ptr %i.v, align 8
  %i.x = sub i32 %i.l, %i.u                       ; 2 uses
  store i32 %i.x, ptr %i.k, align 4
  store i64 %.pre-phi, ptr %i.h, align 8
  store i64 %.pre-phi, ptr %i.c, align 8
  br label %bb.c

bb.e:                                             ; preds = %bb.b
  %i.y = add i64 %..i, %i.i                       ; 4 uses
  %i.z = icmp ult i64 %i.y, %i.i
  %.not = icmp ugt i64 %i.y, %i.g
  %or.cond7 = or i1 %i.z, %.not
  br i1 %or.cond7, label %bb.g, label %bb.f, !prof !74

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ab = load i32, ptr %i.aa, align 8, !noundef !4 ; 2 uses
  %i.ac = zext i32 %i.ab to i64                   ; 3 uses
  %i.ad = add nuw nsw i64 %..i, %i.ac             ; 2 uses
  %i.ae = icmp samesign ult i64 %i.ad, 85197
  br i1 %i.ae, label %bb.i, label %bb.h, !prof !46

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %i.i, i64 noundef %i.y, i64 noundef %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #22
  unreachable

bb.h:                                             ; preds = %bb.f
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %i.ac, i64 noundef %i.ad, i64 noundef 85196, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @63) #22
  unreachable

bb.i:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !nonnull !4, !noundef !4
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !4, !noundef !4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ac
  tail call void @_RINvNtCshzWfHUSfYae_4core5slice20copy_from_slice_implhECsjkkKzr5dxZe_11miniz_oxide(ptr noalias nofree noundef nonnull %i.aj, i64 noundef %..i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ak, i64 noundef %..i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @62)
  br label %bb.d

bb.j:                                             ; preds = %bb.k, %bb.c
  ret void

bb.k:                                             ; preds = %bb.c
  store i32 1, ptr %i.b, align 8
  br label %bb.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef range(i32 0, 589824) i32 @_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core33create_comp_flags_from_zip_params(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp sgt i32 %0, -1
  %..i = tail call range(i32 0, 11) i32 @llvm.umin.i32(i32 range(i32 0, -2147483648) %0, i32 10)
  %narrow = select i1 %i.a, i32 %..i, i32 6
  %.sroa.07.0 = zext nneg i32 %narrow to i64
  %i.b = icmp slt i32 %0, 4
  %. = select i1 %i.b, i32 16384, i32 0
  %i.c = getelementptr inbounds nuw [2 x i8], ptr @65, i64 %.sroa.07.0
  %i.d = load i16, ptr %i.c, align 2, !noundef !4
  %i.e = zext i16 %i.d to i32
  %i.f = or i32 %., %i.e                          ; 2 uses
  %i.g = icmp sgt i32 %1, 0
  %i.h = or i32 %i.f, 4096
  %spec.select = select i1 %i.g, i32 %i.h, i32 %i.f ; 6 uses
  %i.i = icmp eq i32 %0, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = or disjoint i32 %spec.select, 524288
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  switch i32 %2, label %bb.d [
    i32 1, label %bb.e
    i32 2, label %bb.f
    i32 4, label %bb.g
    i32 3, label %bb.h
  ]

bb.d:                                             ; preds = %bb.h, %bb.c, %bb.g, %bb.f, %bb.e, %bb.b
  %.sroa.0.1 = phi i32 [ %i.j, %bb.b ], [ %spec.select, %bb.c ], [ %i.k, %bb.e ], [ %i.l, %bb.f ], [ %i.m, %bb.g ], [ %i.n, %bb.h ]
  ret i32 %.sroa.0.1

bb.e:                                             ; preds = %bb.c
  %i.k = or disjoint i32 %spec.select, 131072
  br label %bb.d

bb.f:                                             ; preds = %bb.c
  %i.l = and i32 %spec.select, 61440
  br label %bb.d

bb.g:                                             ; preds = %bb.c
  %i.m = or disjoint i32 %spec.select, 262144
  br label %bb.d

bb.h:                                             ; preds = %bb.c
  %i.n = or disjoint i32 %spec.select, 65536
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core8compress(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(65712) initializes((65640, 65656)) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef nonnull %4, i64 noundef range(i64 0, -9223372036854775808) %5, i8 noundef range(i8 0, 5) %6) unnamed_addr #3 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %3, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  store i64 1, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %4, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %5, ptr %.sroa.5.0..sroa_idx, align 8
  call void @_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core14compress_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(65712) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.a, i8 noundef %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_15CompressorOxideNtNtCshzWfHUSfYae_4core7default7Default7default(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([65712 x i8]) align 8 captures(none) dereferenceable(65712) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 8 uses
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !422
  %_RNvCsiZ68L5R9VjM_7___rustc19___rust_alloc_zeroed.i.i = tail call dereferenceable_or_null(85196) ptr @_RNvCsiZ68L5R9VjM_7___rustc19___rust_alloc_zeroed(i64 85196, i64 1), !noalias !422 ; 3 uses
  %i.b = icmp eq ptr %_RNvCsiZ68L5R9VjM_7___rustc19___rust_alloc_zeroed.i.i, null
  br i1 %i.b, label %bb.b, label %_RNvMsd_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_11ParamsOxide3new.exit, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 85196) #21, !noalias !422
  unreachable

_RNvMsd_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_11ParamsOxide3new.exit: ; preds = %bb.a
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20
  %_RNvCsiZ68L5R9VjM_7___rustc19___rust_alloc_zeroed.i = tail call align 2 dereferenceable_or_null(4320) ptr @_RNvCsiZ68L5R9VjM_7___rustc19___rust_alloc_zeroed(i64 4320, i64 2) ; 3 uses
  %i.c = icmp eq ptr %_RNvCsiZ68L5R9VjM_7___rustc19___rust_alloc_zeroed.i, null
  br i1 %i.c, label %bb.c, label %_RNvXs9_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxNtNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core12HuffmanOxideENtNtCshzWfHUSfYae_4core7default7Default7defaultBN_.exit, !prof !11

bb.c:                                             ; preds = %_RNvMsd_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_11ParamsOxide3new.exit
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 2, i64 noundef 4320) #21
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

_RNvXs9_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxNtNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core12HuffmanOxideENtNtCshzWfHUSfYae_4core7default7Default7defaultBN_.exit: ; preds = %_RNvMsd_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_11ParamsOxide3new.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXs_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate6bufferNtB4_11HashBuffersNtNtCshzWfHUSfYae_4core7default7Default7default(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(72) %i.a)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %_RNvXs9_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxNtNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core12HuffmanOxideENtNtCshzWfHUSfYae_4core7default7Default7defaultBN_.exit
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %_RNvCsiZ68L5R9VjM_7___rustc19___rust_alloc_zeroed.i, i64 noundef 4320, i64 noundef 2) #20
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs9_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxNtNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core12HuffmanOxideENtNtCshzWfHUSfYae_4core7default7Default7defaultBN_.exit
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 7, ptr %i.f, align 8, !alias.scope !425
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store i32 3, ptr %.sroa.4.0..sroa_idx.i, align 4, !alias.scope !425
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i8 0, i64 32, i1 false), !alias.scope !425
  store i8 32, ptr %i.h, align 8, !alias.scope !425
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65536) %0, i8 0, i64 65536, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 65536
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 65544
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 65552
  store i32 0, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 65556
  store i32 8, ptr %.sroa.7.0..sroa_idx, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 65640
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  %.sroa.4.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %0, i64 65656
  store ptr %_RNvCsiZ68L5R9VjM_7___rustc19___rust_alloc_zeroed.i.i, ptr %.sroa.4.0..sroa_idx7, align 8
  %.sroa.6.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 65664
  store i32 4112, ptr %.sroa.6.0..sroa_idx8, align 8
  %.sroa.7.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %0, i64 65668
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.7.0..sroa_idx9, i8 0, i64 20, i1 false)
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 65688
  store i32 1, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 65692
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 65632
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.9.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr %_RNvCsiZ68L5R9VjM_7___rustc19___rust_alloc_zeroed.i, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 65560
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.k, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.g:                                             ; preds = %bb.d, %bb.e
  %.pn = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.d, %bb.d ]
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %_RNvCsiZ68L5R9VjM_7___rustc19___rust_alloc_zeroed.i.i, i64 noundef 85196, i64 noundef 1) #20
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal fastcc { i64, ptr } @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4takeINtB4_4TakeINtNtB6_9enumerate9EnumerateINtNtNtBa_5slice4iter4IterlEEENtNtNtB8_6traits8iterator8Iterator3nthCsjkkKzr5dxZe_11miniz_oxide(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, i64 noundef range(i64 1, 0) %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 5 uses
  %i.c = icmp ugt i64 %i.b, %1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterlEENtNtNtB8_6traits8iterator8Iterator3nthCsjkkKzr5dxZe_11miniz_oxide.exit, label %bb.e

bb.c:                                             ; preds = %bb.a
  %.neg = xor i64 %1, -1
  %i.d = add i64 %i.b, %.neg
  store i64 %i.d, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !428, !nonnull !4, !noundef !4 ; 2 uses
  %i.g = load ptr, ptr %0, align 8, !alias.scope !428, !nonnull !4, !noundef !4 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub nuw i64 %i.h, %i.i
  %i.k = lshr exact i64 %i.j, 2
  %.not.i.not.i = icmp ult i64 %1, %i.k           ; 2 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %1 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %storemerge.i.i = select i1 %.not.i.not.i, ptr %i.m, ptr %i.f
  store ptr %storemerge.i.i, ptr %0, align 8, !alias.scope !428
  br i1 %.not.i.not.i, label %bb.d, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterlEENtNtNtB8_6traits8iterator8Iterator3nthCsjkkKzr5dxZe_11miniz_oxide.exit

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !433, !noundef !4
  %i.p = add i64 %i.o, %1                         ; 2 uses
  %i.q = add i64 %i.p, 1
  store i64 %i.q, ptr %i.n, align 8, !alias.scope !433
  br label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterlEENtNtNtB8_6traits8iterator8Iterator3nthCsjkkKzr5dxZe_11miniz_oxide.exit

bb.e:                                             ; preds = %bb.b
  %i.r = add i64 %i.b, -1                         ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !434, !nonnull !4, !noundef !4 ; 2 uses
  %i.u = load ptr, ptr %0, align 8, !alias.scope !434, !nonnull !4, !noundef !4 ; 2 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub nuw i64 %i.v, %i.w
  %i.y = lshr exact i64 %i.x, 2
  %.not.i.not.i2 = icmp ult i64 %i.r, %i.y        ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.r
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %storemerge.i.i3 = select i1 %.not.i.not.i2, ptr %i.aa, ptr %i.t
  store ptr %storemerge.i.i3, ptr %0, align 8, !alias.scope !434
end_hunk_4
