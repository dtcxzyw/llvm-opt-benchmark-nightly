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
  %3 = insertelement <2 x i16> poison, i16 %i.t, i64 0
  %4 = trunc nuw nsw i32 %i.r to i16
  %5 = insertelement <2 x i16> %3, i16 %4, i64 1
  %6 = add nuw nsw <2 x i16> %5, splat (i16 2)
  %7 = udiv <2 x i16> %6, splat (i16 3)
  %i.u = add nuw nsw <2 x i16> %7, splat (i16 1)
  %i.v = zext nneg <2 x i16> %i.u to <2 x i32>
  store <2 x i32> %i.v, ptr %i.s, align 8
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
  %2 = insertelement <2 x i16> poison, i16 %i.w, i64 0
  %3 = trunc nuw nsw i32 %i.u to i16
  %4 = insertelement <2 x i16> %2, i16 %3, i64 1
  %5 = add nuw nsw <2 x i16> %4, splat (i16 2)
  %6 = udiv <2 x i16> %5, splat (i16 3)
  %i.x = add nuw nsw <2 x i16> %6, splat (i16 1)
  %i.y = zext nneg <2 x i16> %i.x to <2 x i32>
  store <2 x i32> %i.y, ptr %i.v, align 8, !alias.scope !5
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
  %.sink10.in.in.in.in = trunc nuw nsw i32 %.sink10.in.in.in.in.in to i16
  %2 = insertelement <2 x i16> poison, i16 %.sink10.in.in.in.in, i64 0
  %3 = trunc nuw nsw i32 %.sink.in.in.in.in.in to i16
  %4 = insertelement <2 x i16> %2, i16 %3, i64 1
  %5 = add nuw nsw <2 x i16> %4, splat (i16 2)
  %6 = udiv <2 x i16> %5, splat (i16 3)
  %i.q = add nuw nsw <2 x i16> %6, splat (i16 1)
  %i.r = zext nneg <2 x i16> %i.q to <2 x i32>
  store <2 x i32> %i.r, ptr %i.p, align 8
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
  %2 = insertelement <2 x i16> poison, i16 %i.l, i64 0
  %3 = trunc nuw nsw i32 %i.g to i16
  %4 = insertelement <2 x i16> %2, i16 %3, i64 1
  %5 = add nuw nsw <2 x i16> %4, splat (i16 2)
  %6 = udiv <2 x i16> %5, splat (i16 3)
  %i.m = add nuw nsw <2 x i16> %6, splat (i16 1)
  %i.n = zext nneg <2 x i16> %i.m to <2 x i32>
  store <2 x i32> %i.n, ptr %i.k, align 8, !alias.scope !12
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, i8 0, i64 32, i1 false), !alias.scope !12
  store i8 32, ptr %i.p, align 8, !alias.scope !12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65536) %0, i8 0, i64 65536, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 65536
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 65544
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 65552
  store i32 0, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 65556
  store i32 8, ptr %.sroa.7.0..sroa_idx, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 65640
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
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
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 65632
  store ptr %_RNvCsiZ68L5R9VjM_7___rustc19___rust_alloc_zeroed.i, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 65560
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.s, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false)
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
end_hunk_0
