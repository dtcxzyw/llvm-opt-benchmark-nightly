Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/miniz_oxide-4bb6cbd72a4a2a9a.miniz_oxide.e11ffb1e97ec6fa2-cgu.0?download=true
inline.NumInlined: 178
inline.NumDeleted: 95
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 22
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [107 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/miniz_oxide-0.8.9/src/deflate/core.rs\00", align 1, !guid !4
@1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00\C7\01\00\00C\00\00\00" }>, align 8, !guid !4
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00\DF\01\00\00\12\00\00\00" }>, align 8, !guid !4
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00\DF\01\00\005\00\00\00" }>, align 8, !guid !4
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00\DE\01\00\00\1A\00\00\00" }>, align 8, !guid !4
@5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00\FE\01\00\00 \00\00\00" }>, align 8, !guid !4
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00\8A\02\00\00B\00\00\00" }>, align 8, !guid !4
@7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00\8A\02\00\00\13\00\00\00" }>, align 8, !guid !4
@8 = private unnamed_addr constant [48 x i8] c"assertion failed: bits <= ((1u32 << len) - 1u32)", align 1, !guid !4
@9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00Y\02\00\00\09\00\00\00" }>, align 8, !guid !4
@10 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00^\02\00\00\0D\00\00\00" }>, align 8, !guid !4
@11 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00\A7\02\00\00\13\00\00\00" }>, align 8, !guid !4
@12 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00\A5\02\00\00*\00\00\00" }>, align 8, !guid !4
@13 = private unnamed_addr constant [3 x i8] zeroinitializer, align 1, !guid !4
@14 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00\B7\03\00\00\11\00\00\00" }>, align 8, !guid !4
@15 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00\C8\03\00\00\15\00\00\00" }>, align 8, !guid !4
@16 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00\C7\03\00\00'\00\00\00" }>, align 8, !guid !4
@17 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00\B1\03\00\00\1E\00\00\00" }>, align 8, !guid !4
@18 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00\A8\03\00\00\15\00\00\00" }>, align 8, !guid !4
@19 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00\99\03\00\00\11\00\00\00" }>, align 8, !guid !4
@20 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00\DE\03\00\00\18\00\00\00" }>, align 8, !guid !4
@21 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\003\03\00\00\11\00\00\00" }>, align 8, !guid !4
@22 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00\10\04\00\00P\00\00\00" }>, align 8, !guid !4
@23 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00\10\04\00\00-\00\00\00" }>, align 8, !guid !4
@24 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00\13\04\00\00\0E\00\00\00" }>, align 8, !guid !4
@25 = private unnamed_addr constant [19 x i8] c"\10\11\12\00\08\07\09\06\0A\05\0B\04\0C\03\0D\02\0E\01\0F", align 1, !guid !4
@26 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00U\04\00\00\18\00\00\00" }>, align 8, !guid !4
@27 = private unnamed_addr constant [43 x i8] c"assertion failed: code < MAX_HUFF_SYMBOLS_2", align 1, !guid !4
@28 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00W\04\00\00\0D\00\00\00" }>, align 8, !guid !4
@29 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00^\04\00\00\1F\00\00\00" }>, align 8, !guid !4
@30 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00L\04\00\00.\00\00\00" }>, align 8, !guid !4
@31 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00\13\04\00\001\00\00\00" }>, align 8, !guid !4
@32 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00\12\04\00\00\1B\00\00\00" }>, align 8, !guid !4
@33 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00\10\04\00\00\1B\00\00\00" }>, align 8, !guid !4
@34 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00d\03\00\00+\00\00\00" }>, align 8, !guid !4
@35 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00i\03\00\00\19\00\00\00" }>, align 8, !guid !4
@36 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00[\03\00\00)\00\00\00" }>, align 8, !guid !4
@37 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00F\03\00\00(\00\00\00" }>, align 8, !guid !4
@38 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00G\03\00\00-\00\00\00" }>, align 8, !guid !4
@39 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00P\03\00\00L\00\00\00" }>, align 8, !guid !4
@40 = private unnamed_addr constant [47 x i8] c"assertion failed: d.params.flush_remaining == 0", align 1, !guid !4
@41 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00P\06\00\00\09\00\00\00" }>, align 8, !guid !4
@42 = private unnamed_addr constant [128 x i8] c"\00\00\12\13\14\14\15\15\16\16\16\16\17\17\17\17\18\18\18\18\18\18\18\18\19\19\19\19\19\19\19\19\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D", align 1, !guid !4
@43 = private unnamed_addr constant [512 x i8] c"\00\01\02\03\04\04\05\05\06\06\06\06\07\07\07\07\08\08\08\08\08\08\08\08\09\09\09\09\09\09\09\09\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11", align 1, !guid !4
@44 = private unnamed_addr constant [256 x i8] c"\01\02\03\04\05\06\07\08\09\09\0A\0A\0B\0B\0C\0C\0D\0D\0D\0D\0E\0E\0E\0E\0F\0F\0F\0F\10\10\10\10\11\11\11\11\11\11\11\11\12\12\12\12\12\12\12\12\13\13\13\13\13\13\13\13\14\14\14\14\14\14\14\14\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1D", align 1, !guid !4
@45 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00\16\08\00\00\22\00\00\00" }>, align 8, !guid !4
@46 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00\BE\07\00\001\00\00\00" }>, align 8, !guid !4
@47 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00\C3\07\00\00\16\00\00\00" }>, align 8, !guid !4
@48 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00\C3\07\00\00-\00\00\00" }>, align 8, !guid !4
@49 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00\BE\07\00\00H\00\00\00" }>, align 8, !guid !4
@50 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00\EC\08\00\00H\00\00\00" }>, align 8, !guid !4
@51 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00\15\07\00\00\1E\00\00\00" }>, align 8, !guid !4
@52 = private unnamed_addr constant [47 x i8] c"assertion failed: lookahead_size >= len_to_move", align 1, !guid !4
@53 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00\83\07\00\00\09\00\00\00" }>, align 8, !guid !4
@54 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00?\07\00\00.\00\00\00" }>, align 8, !guid !4
@55 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00\02\07\00\00\1E\00\00\00" }>, align 8, !guid !4
@56 = private unnamed_addr constant [68 x i8] c"\00\00\00\00\01\00\00\00\03\00\00\00\07\00\00\00\0F\00\00\00\1F\00\00\00?\00\00\00\7F\00\00\00\FF\00\00\00\FF\01\00\00\FF\03\00\00\FF\07\00\00\FF\0F\00\00\FF\1F\00\00\FF?\00\00\FF\7F\00\00\FF\FF\00\00", align 4, !guid !4
@57 = private unnamed_addr constant [256 x i8] c"\00\00\00\00\00\00\00\00\01\01\01\01\01\01\01\01\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\00", align 1, !guid !4
@58 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00\F7\05\00\00\17\00\00\00" }>, align 8, !guid !4
@59 = private unnamed_addr constant [128 x i8] c"\00\00\08\08\09\09\09\09\0A\0A\0A\0A\0A\0A\0A\0A\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D", align 1, !guid !4
@60 = private unnamed_addr constant [512 x i8] c"\00\00\00\00\01\01\01\01\02\02\02\02\02\02\02\02\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07", align 1, !guid !4
@61 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00v\08\00\00\12\00\00\00" }>, align 8, !guid !4
@62 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00v\08\00\000\00\00\00" }>, align 8, !guid !4
@63 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00u\08\00\00\17\00\00\00" }>, align 8, !guid !4
@64 = private unnamed_addr constant [22 x i8] c"\00\00\01\00\06\00 \00\10\00 \00\80\00\00\01\00\02\00\03\DC\05", align 2, !guid !4
@65 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00\04\03\00\00\16\00\00\00" }>, align 8, !guid !4

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvMs1_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_15CompressorOxide20set_format_and_level(ptr noalias nofree noundef writeonly align 8 captures(none) dereferenceable(65712) initializes((65584, 65592), (65664, 65668), (65706, 65707)) %0, i8 noundef range(i8 0, 3) %1, i8 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !12 {
bb.a:
  %i.a = icmp eq i8 %1, 2
  %i.b = tail call i8 @llvm.umin.i8(i8 %2, i8 10)
  %.sroa.07.0.i5 = zext nneg i8 %i.b to i64       ; 2 uses
  %i.c = icmp ult i8 %2, 4                        ; 2 uses
  br i1 %i.a, label %.split, label %.split3

.split3:                                          ; preds = %bb.a
  %i.d = getelementptr inbounds nuw [2 x i8], ptr @64, i64 %.sroa.07.0.i5
  %i.e = load i16, ptr %i.d, align 2, !noundef !5
  %i.f = zext i16 %i.e to i32
  %i.g = icmp eq i8 %2, 0
  %i.h = select i1 %i.c, i32 20480, i32 4096
  %i.i = select i1 %i.g, i32 544768, i32 %i.h
  %spec.select = or i32 %i.i, %i.f
  br label %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core33create_comp_flags_from_zip_params.exit

.split:                                           ; preds = %bb.a
  %..i6 = select i1 %i.c, i32 16384, i32 0
  %i.j = getelementptr inbounds nuw [2 x i8], ptr @64, i64 %.sroa.07.0.i5
  %i.k = load i16, ptr %i.j, align 2, !noundef !5
  %i.l = zext i16 %i.k to i32
  %i.m = or i32 %..i6, %i.l                       ; 2 uses
  %i.n = icmp eq i8 %2, 0
  %i.o = or disjoint i32 %i.m, 524288
  %spec.select11 = select i1 %i.n, i32 %i.o, i32 %i.m
  br label %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core33create_comp_flags_from_zip_params.exit

_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core33create_comp_flags_from_zip_params.exit: ; preds = %.split, %.split3
  %phi.call = phi i32 [ %spec.select, %.split3 ], [ %spec.select11, %.split ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 65664
  store i32 %phi.call, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 65706
  %i.r = lshr i32 %phi.call, 14
  %i.s = trunc nuw nsw i32 %i.r to i8
  %i.t = and i8 %i.s, 1
  store i8 %i.t, ptr %i.q, align 2
  %i.u = and i32 %phi.call, 4095                  ; 2 uses
  %i.v = lshr i32 %i.u, 2
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 65584
  %i.x = trunc nuw nsw i32 %i.u to i16
  %i.y = insertelement <2 x i16> poison, i16 %i.x, i64 0
  %i.z = trunc nuw nsw i32 %i.v to i16
  %i.aa = insertelement <2 x i16> %i.y, i16 %i.z, i64 1
  %i.ab = add nuw nsw <2 x i16> %i.aa, splat (i16 2)
  %i.ac = udiv <2 x i16> %i.ab, splat (i16 3)
  %i.ad = add nuw nsw <2 x i16> %i.ac, splat (i16 1)
  %i.ae = zext nneg <2 x i16> %i.ad to <2 x i32>
  store <2 x i32> %i.ae, ptr %i.w, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_RNvMs1_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_15CompressorOxide21set_compression_level(ptr noalias nofree noundef align 8 captures(none) dereferenceable(65712) initializes((65584, 65592), (65706, 65707)) %0, i32 noundef range(i32 -1, 11) %1) unnamed_addr #1 personality ptr @rust_eh_personality !guid !15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 65664 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !noundef !5
  %i.c = and i32 %i.b, 4096
  %i.d = icmp eq i32 %i.c, 0
  %i.e = trunc nsw i32 %1 to i8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16)
  %i.f = tail call i8 @llvm.umin.i8(i8 %i.e, i8 10)
  %.sroa.07.0.i5.i = zext nneg i8 %i.f to i64     ; 2 uses
  %i.g = icmp ult i32 %1, 4                       ; 2 uses
  br i1 %i.d, label %.split.i, label %.split3.i

.split3.i:                                        ; preds = %bb.a
  %i.h = getelementptr inbounds nuw [2 x i8], ptr @64, i64 %.sroa.07.0.i5.i
  %i.i = load i16, ptr %i.h, align 2, !noalias !16, !noundef !5
  %i.j = zext i16 %i.i to i32
  %i.k = icmp eq i32 %1, 0
  %i.l = select i1 %i.g, i32 20480, i32 4096
  %i.m = select i1 %i.k, i32 544768, i32 %i.l
  %spec.select.i = or i32 %i.m, %i.j
  br label %_RNvMs1_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_15CompressorOxide20set_format_and_level.exit

.split.i:                                         ; preds = %bb.a
  %..i6.i = select i1 %i.g, i32 16384, i32 0
  %i.n = getelementptr inbounds nuw [2 x i8], ptr @64, i64 %.sroa.07.0.i5.i
  %i.o = load i16, ptr %i.n, align 2, !noalias !16, !noundef !5
  %i.p = zext i16 %i.o to i32
  %i.q = or i32 %..i6.i, %i.p                     ; 2 uses
  %i.r = icmp eq i32 %1, 0
  %i.s = or disjoint i32 %i.q, 524288
  %spec.select11.i = select i1 %i.r, i32 %i.s, i32 %i.q
  br label %_RNvMs1_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_15CompressorOxide20set_format_and_level.exit

_RNvMs1_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_15CompressorOxide20set_format_and_level.exit: ; preds = %.split3.i, %.split.i
  %phi.call.i = phi i32 [ %spec.select.i, %.split3.i ], [ %spec.select11.i, %.split.i ] ; 3 uses
  store i32 %phi.call.i, ptr %i.a, align 8, !alias.scope !16
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 65706
  %i.u = lshr i32 %phi.call.i, 14
  %i.v = trunc nuw nsw i32 %i.u to i8
  %i.w = and i8 %i.v, 1
  store i8 %i.w, ptr %i.t, align 2, !alias.scope !16
  %i.x = and i32 %phi.call.i, 4095                ; 2 uses
  %i.y = lshr i32 %i.x, 2
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 65584
  %i.aa = trunc nuw nsw i32 %i.x to i16
  %i.ab = insertelement <2 x i16> poison, i16 %i.aa, i64 0
  %i.ac = trunc nuw nsw i32 %i.y to i16
  %i.ad = insertelement <2 x i16> %i.ab, i16 %i.ac, i64 1
  %i.ae = add nuw nsw <2 x i16> %i.ad, splat (i16 2)
  %i.af = udiv <2 x i16> %i.ae, splat (i16 3)
  %i.ag = add nuw nsw <2 x i16> %i.af, splat (i16 1)
  %i.ah = zext nneg <2 x i16> %i.ag to <2 x i32>
  store <2 x i32> %i.ah, ptr %i.z, align 8, !alias.scope !16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvMs1_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_15CompressorOxide25set_compression_level_raw(ptr noalias nofree noundef align 8 captures(none) dereferenceable(65712) initializes((65584, 65592), (65706, 65707)) %0, i8 noundef %1) unnamed_addr #2 personality ptr @rust_eh_personality !guid !21 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 65664 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !noundef !5
  %i.c = and i32 %i.b, 4096
  %i.d = icmp eq i32 %i.c, 0
  %i.e = tail call i8 @llvm.umin.i8(i8 %1, i8 10)
  %.sroa.07.0.i5.i = zext nneg i8 %i.e to i64     ; 2 uses
  %i.f = icmp ult i8 %1, 4                        ; 2 uses
  br i1 %i.d, label %.split2, label %.split

.split2:                                          ; preds = %bb.a
  %..i6.i = select i1 %i.f, i32 16384, i32 0
  %i.g = getelementptr inbounds nuw [2 x i8], ptr @64, i64 %.sroa.07.0.i5.i
  %i.h = load i16, ptr %i.g, align 2, !noalias !22, !noundef !5
  %i.i = zext i16 %i.h to i32
  %i.j = or i32 %..i6.i, %i.i                     ; 2 uses
  %i.k = icmp eq i8 %1, 0
  %i.l = or disjoint i32 %i.j, 524288
  %spec.select11.i = select i1 %i.k, i32 %i.l, i32 %i.j ; 2 uses
  br label %bb.b

.split:                                           ; preds = %bb.a
  %i.m = getelementptr inbounds nuw [2 x i8], ptr @64, i64 %.sroa.07.0.i5.i
  %i.n = load i16, ptr %i.m, align 2, !noalias !23, !noundef !5
  %i.o = zext i16 %i.n to i32                     ; 2 uses
  %i.p = icmp eq i8 %1, 0
  %i.q = select i1 %i.f, i32 20480, i32 4096
  %i.r = select i1 %i.p, i32 544768, i32 %i.q
  %spec.select.i = or i32 %i.r, %i.o
  br label %bb.b

bb.b:                                             ; preds = %.split, %.split2
  %spec.select.i.sink = phi i32 [ %spec.select11.i, %.split2 ], [ %spec.select.i, %.split ] ; 2 uses
  %.sink9.in.in.in.in.in.in = phi i32 [ %spec.select11.i, %.split2 ], [ %i.o, %.split ]
  %.sink9.in.in.in.in.in = and i32 %.sink9.in.in.in.in.in.in, 4095 ; 2 uses
  %.sink.in.in.in.in.in = lshr i32 %.sink9.in.in.in.in.in, 2
  %.sink10.in.in = lshr i32 %spec.select.i.sink, 14
  %.sink10.in = trunc nuw nsw i32 %.sink10.in.in to i8
  %.sink10 = and i8 %.sink10.in, 1
  store i32 %spec.select.i.sink, ptr %i.a, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 65706
  store i8 %.sink10, ptr %i.s, align 2
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 65584
  %i.u = trunc nuw nsw i32 %.sink9.in.in.in.in.in to i16
  %i.v = insertelement <2 x i16> poison, i16 %i.u, i64 0
  %i.w = trunc nuw nsw i32 %.sink.in.in.in.in.in to i16
  %i.x = insertelement <2 x i16> %i.v, i16 %i.w, i64 1
  %i.y = add nuw nsw <2 x i16> %i.x, splat (i16 2)
  %i.z = udiv <2 x i16> %i.y, splat (i16 3)
  %i.aa = add nuw nsw <2 x i16> %i.z, splat (i16 1)
  %i.ab = zext nneg <2 x i16> %i.aa to <2 x i32>
  store <2 x i32> %i.ab, ptr %i.t, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_15CompressorOxide3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([65712 x i8]) align 8 captures(none) dereferenceable(65712) %0, i32 noundef %1) unnamed_addr #3 personality ptr @rust_eh_personality !guid !28 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 7 uses
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !29
  %_RNvCsiZ68L5R9VjM_7___rustc19___rust_alloc_zeroed.i.i = tail call dereferenceable_or_null(85196) ptr @_RNvCsiZ68L5R9VjM_7___rustc19___rust_alloc_zeroed(i64 85196, i64 1), !noalias !29 ; 3 uses
  %i.b = icmp eq ptr %_RNvCsiZ68L5R9VjM_7___rustc19___rust_alloc_zeroed.i.i, null
  br i1 %i.b, label %bb.b, label %_RNvMsd_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_11ParamsOxide3new.exit, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 85196) #21, !noalias !29
  unreachable

_RNvMsd_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_11ParamsOxide3new.exit: ; preds = %bb.a
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20
  %_RNvCsiZ68L5R9VjM_7___rustc19___rust_alloc_zeroed.i = tail call align 2 dereferenceable_or_null(4320) ptr @_RNvCsiZ68L5R9VjM_7___rustc19___rust_alloc_zeroed(i64 4320, i64 2) ; 3 uses
  %i.c = icmp eq ptr %_RNvCsiZ68L5R9VjM_7___rustc19___rust_alloc_zeroed.i, null
  br i1 %i.c, label %bb.c, label %_RNvXs9_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxNtNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core12HuffmanOxideENtNtCshzWfHUSfYae_4core7default7Default7defaultBN_.exit, !prof !6

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
  store <2 x i32> %i.s, ptr %i.k, align 8, !alias.scope !30
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, i8 0, i64 32, i1 false), !alias.scope !30
  store i8 32, ptr %i.u, align 8, !alias.scope !30
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
define void @_RNvMs1_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_15CompressorOxide5reset(ptr noalias nofree noundef align 8 captures(none) dereferenceable(65712) initializes((0, 65560), (65592, 65624), (65640, 65656), (65668, 65706), (65707, 65708)) %0) unnamed_addr #4 !guid !39 {
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
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5, !noundef !5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(85196) %i.h, i8 0, i64 85196, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 65632
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !5, !noundef !5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(4320) %i.j, i8 0, i64 4320, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 65560
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41)
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !42, !nonnull !5, !noundef !5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(33026) %i.l, i8 0, i64 33026, i1 false), !noalias !42
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 65568
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !42, !nonnull !5, !noundef !5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(65536) %i.n, i8 0, i64 65536, i1 false), !alias.scope !43, !noalias !42
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 65576
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !42, !nonnull !5, !noundef !5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(65536) %i.p, i8 0, i64 65536, i1 false), !alias.scope !44, !noalias !42
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 65592
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i8 0, i64 32, i1 false), !alias.scope !40
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvMs9_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_3Rle14zero_code_size(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef nonnull %1, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(8) %2, ptr noalias nofree noundef nonnull align 2 captures(none) dereferenceable(4320) %3) unnamed_addr #3 !guid !51 {
bb.a:
  %i.a = alloca [2 x i8], align 1                 ; 6 uses
  %i.b = alloca [2 x i8], align 1                 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 1152 ; 2 uses
  %i.d = load i32, ptr %0, align 4, !noundef !5   ; 6 uses
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
  %i.j = load i16, ptr %i.i, align 2, !noundef !5
  %i.k = add i16 %i.j, 1
  store i16 %i.k, ptr %i.i, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.l = add i8 %i.h, -11
  store i8 18, ptr %i.a, align 1
end_hunk_0
