Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zlib-ng_ubsan/original/compare256_avx512?download=true
inline.NumInlined: 24
inline.NumDeleted: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.src = private unnamed_addr constant [50 x i8] c"/opt-bench/work/zlib-ng_ubsan/zlib-ng/match_tpl.h\00", align 1
@0 = private unnamed_addr constant { i16, i16, [46 x i8] } { i16 -1, i16 0, [46 x i8] c"'deflate_state' (aka 'struct internal_state')\00" }
@1 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 30, i32 32 }, ptr @0, i8 6, i8 3 }
@2 = private unnamed_addr constant { i16, i16, [15 x i8] } { i16 0, i16 10, [15 x i8] c"'unsigned int'\00" }
@3 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 30, i32 32 }, ptr @2, i8 2, i8 0 }
@4 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 31, i32 31 }, ptr @0, i8 6, i8 3 }
@5 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 31, i32 31 }, ptr @2, i8 3, i8 0 }
@6 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 32, i32 32 }, ptr @0, i8 6, i8 3 }
@7 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 33, i32 34 } }
@8 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 36, i32 26 }, ptr @0, i8 6, i8 3 }
@9 = private unnamed_addr constant { i16, i16, [33 x i8] } { i16 -1, i16 0, [33 x i8] c"'Pos *' (aka 'unsigned short *')\00" }
@10 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 36, i32 26 }, ptr @9, i8 5, i8 0 }
@11 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 44, i32 29 }, ptr @0, i8 6, i8 3 }
@12 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 57, i32 19 }, ptr @0, i8 6, i8 3 }
@13 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 57, i32 36 }, ptr @0, i8 6, i8 3 }
@14 = private unnamed_addr constant { i16, i16, [32 x i8] } { i16 0, i16 10, [32 x i8] c"'uint32_t' (aka 'unsigned int')\00" }
@15 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 62, i32 22 }, ptr @14 }
@16 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 64, i32 16 }, ptr @14 }
@17 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 66, i32 20 }, ptr @14 }
@18 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 70, i32 34 } }
@19 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 71, i32 30 } }
@20 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 74, i32 23 }, ptr @0, i8 6, i8 3 }
@21 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 75, i32 24 }, ptr @0, i8 6, i8 3 }
@22 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 77, i32 31 }, ptr @0, i8 6, i8 3 }
@23 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 82, i32 24 }, ptr @0, i8 6, i8 3 }
@24 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 82, i32 24 }, ptr @2, i8 6, i8 0 }
@25 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 82, i32 24 }, ptr @2 }
@26 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 82, i32 55 }, ptr @0, i8 6, i8 3 }
@27 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 82, i32 55 }, ptr @2, i8 6, i8 0 }
@28 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 82, i32 55 }, ptr @2 }
@29 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 82, i32 53 }, ptr @2 }
@30 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 116, i32 21 }, ptr @0, i8 6, i8 3 }
@31 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 132, i32 43 } }
@32 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 133, i32 45 } }
@33 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 135, i32 17 }, ptr @14 }
@34 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 135, i32 17 } }
@35 = private unnamed_addr constant { i16, i16, [41 x i8] } { i16 0, i16 8, [41 x i8] c"'const Pos' (aka 'const unsigned short')\00" }
@36 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 135, i32 17 }, ptr @35, i8 1, i8 0 }
@37 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 139, i32 43 } }
@38 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 140, i32 45 } }
@39 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 142, i32 17 }, ptr @14 }
@40 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 142, i32 17 } }
@41 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 142, i32 17 }, ptr @35, i8 1, i8 0 }
@42 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 146, i32 43 } }
@43 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 147, i32 45 } }
@44 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 149, i32 17 }, ptr @14 }
@45 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 149, i32 17 } }
@46 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 149, i32 17 }, ptr @35, i8 1, i8 0 }
@47 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 152, i32 39 } }
@48 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 152, i32 54 } }
@49 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 152, i32 64 } }
@50 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 157, i32 16 }, ptr @0, i8 6, i8 3 }
@51 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 175, i32 42 } }
@52 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 227, i32 37 } }
@53 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 237, i32 9 }, ptr @14 }
@54 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 237, i32 9 } }
@55 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 237, i32 9 }, ptr @35, i8 1, i8 0 }
@56 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 30, i32 32 }, ptr @0, i8 6, i8 3 }
@57 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 30, i32 32 }, ptr @2, i8 2, i8 0 }
@58 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 31, i32 31 }, ptr @0, i8 6, i8 3 }
@59 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 31, i32 31 }, ptr @2, i8 3, i8 0 }
@60 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 32, i32 32 }, ptr @0, i8 6, i8 3 }
@61 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 33, i32 34 } }
@62 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 36, i32 26 }, ptr @0, i8 6, i8 3 }
@63 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 36, i32 26 }, ptr @9, i8 5, i8 0 }
@64 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 44, i32 29 }, ptr @0, i8 6, i8 3 }
@65 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 57, i32 19 }, ptr @0, i8 6, i8 3 }
@66 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 57, i32 36 }, ptr @0, i8 6, i8 3 }
@67 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 62, i32 22 }, ptr @14 }
@68 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 64, i32 16 }, ptr @14 }
@69 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 66, i32 20 }, ptr @14 }
@70 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 70, i32 34 } }
@71 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 71, i32 30 } }
@72 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 74, i32 23 }, ptr @0, i8 6, i8 3 }
@73 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 75, i32 24 }, ptr @0, i8 6, i8 3 }
@74 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 77, i32 31 }, ptr @0, i8 6, i8 3 }
@75 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 82, i32 24 }, ptr @0, i8 6, i8 3 }
@76 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 82, i32 24 }, ptr @2, i8 6, i8 0 }
@77 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 82, i32 24 }, ptr @2 }
@78 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 82, i32 55 }, ptr @0, i8 6, i8 3 }
@79 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 82, i32 55 }, ptr @2, i8 6, i8 0 }
@80 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 82, i32 55 }, ptr @2 }
@81 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 82, i32 53 }, ptr @2 }
@82 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 94, i32 19 }, ptr @0, i8 6, i8 3 }
@83 = private unnamed_addr constant { i16, i16, [47 x i8] } { i16 -1, i16 0, [47 x i8] c"'unsigned int (*)(unsigned int, unsigned int)'\00" }
@84 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 94, i32 16 }, ptr @83 }
@85 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 94, i32 34 } }
@86 = private unnamed_addr constant { i16, i16, [16 x i8] } { i16 0, i16 6, [16 x i8] c"'unsigned char'\00" }
@87 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 95, i32 19 }, ptr @0, i8 6, i8 3 }
@88 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 95, i32 16 }, ptr @83 }
@89 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 95, i32 37 } }
@90 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 98, i32 23 }, ptr @0, i8 6, i8 3 }
@91 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 98, i32 20 }, ptr @83 }
@92 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 98, i32 41 } }
@93 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 98, i32 41 }, ptr @86, i8 0, i8 0 }
@94 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 101, i32 22 }, ptr @0, i8 6, i8 3 }
@95 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 101, i32 19 } }
@96 = private unnamed_addr constant { i16, i16, [29 x i8] } { i16 0, i16 8, [29 x i8] c"'Pos' (aka 'unsigned short')\00" }
@97 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 101, i32 19 }, ptr @96, i8 1, i8 0 }
@98 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 103, i32 40 }, ptr @14 }
@99 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 97, i32 37 }, ptr @14 }
@100 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 112, i32 21 } }
@101 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 113, i32 19 } }
@102 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 132, i32 43 } }
@103 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 133, i32 45 } }
@104 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 135, i32 17 }, ptr @14 }
@105 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 135, i32 17 } }
@106 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 135, i32 17 }, ptr @35, i8 1, i8 0 }
@107 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 139, i32 43 } }
@108 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 140, i32 45 } }
@109 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 142, i32 17 }, ptr @14 }
@110 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 142, i32 17 } }
@111 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 142, i32 17 }, ptr @35, i8 1, i8 0 }
@112 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 146, i32 43 } }
@113 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 147, i32 45 } }
@114 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 149, i32 17 }, ptr @14 }
@115 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 149, i32 17 } }
@116 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 149, i32 17 }, ptr @35, i8 1, i8 0 }
@117 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 152, i32 39 } }
@118 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 152, i32 54 } }
@119 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 152, i32 64 } }
@120 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 157, i32 16 }, ptr @0, i8 6, i8 3 }
@121 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 175, i32 42 } }
@122 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 179, i32 17 }, ptr @14 }
@123 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 189, i32 43 }, ptr @14 }
@124 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 189, i32 27 } }
@125 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 189, i32 27 }, ptr @35, i8 1, i8 0 }
@126 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 192, i32 47 }, ptr @14 }
@127 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 188, i32 56 }, ptr @14 }
@128 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 206, i32 36 } }
@129 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 206, i32 42 } }
@130 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 208, i32 27 }, ptr @0, i8 6, i8 3 }
@131 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 208, i32 24 }, ptr @83 }
@132 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 209, i32 27 }, ptr @0, i8 6, i8 3 }
@133 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 209, i32 24 }, ptr @83 }
@134 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 209, i32 45 } }
@135 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 210, i32 27 }, ptr @0, i8 6, i8 3 }
@136 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 210, i32 24 }, ptr @83 }
@137 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 210, i32 45 } }
@138 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 212, i32 26 }, ptr @0, i8 6, i8 3 }
@139 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 212, i32 23 } }
@140 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 212, i32 23 }, ptr @96, i8 1, i8 0 }
@141 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 214, i32 46 }, ptr @14 }
@142 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 222, i32 37 } }
@143 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 223, i32 41 } }
@144 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 227, i32 37 } }
@145 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 237, i32 9 }, ptr @14 }
@146 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 237, i32 9 } }
@147 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 237, i32 9 }, ptr @35, i8 1, i8 0 }
@148 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 244, i32 23 }, ptr @0, i8 6, i8 3 }
@149 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 247, i32 15 }, ptr @0, i8 6, i8 3 }
@.src.1 = private unnamed_addr constant [67 x i8] c"/opt-bench/work/zlib-ng_ubsan/zlib-ng/arch/x86/compare256_avx512.c\00", align 1
@150 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src.1, i32 44, i32 53 } }
@151 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src.1, i32 45, i32 53 } }
@152 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src.1, i32 53, i32 53 } }
@153 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src.1, i32 54, i32 53 } }
@154 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src.1, i32 62, i32 53 } }
@155 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src.1, i32 63, i32 53 } }
@156 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src.1, i32 71, i32 53 } }
@157 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src.1, i32 72, i32 53 } }
@.src.2 = private unnamed_addr constant [50 x i8] c"/usr/lib/llvm-24/lib/clang/24/include/emmintrin.h\00", align 1
@158 = private unnamed_addr constant { i16, i16, [29 x i8] } { i16 -1, i16 0, [29 x i8] c"'const struct __loadu_si128'\00" }
@159 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.2, i32 3469, i32 47 }, ptr @158, i8 0, i8 3 }
@160 = private unnamed_addr constant { i16, i16, [51 x i8] } { i16 -1, i16 0, [51 x i8] c"'const __m128i_u' (vector of 2 'long long' values)\00" }
@161 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.2, i32 3469, i32 47 }, ptr @160, i8 0, i8 0 }
@.src.4 = private unnamed_addr constant [48 x i8] c"/opt-bench/work/zlib-ng_ubsan/zlib-ng/zmemory.h\00", align 1
@162 = private unnamed_addr constant { i16, i16, [27 x i8] } { i16 -1, i16 0, [27 x i8] c"'const unaligned_uint64_t'\00" }
@163 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.4, i32 37, i32 47 }, ptr @162, i8 0, i8 3 }
@164 = private unnamed_addr constant { i16, i16, [45 x i8] } { i16 0, i16 12, [45 x i8] c"'const uint64_t' (aka 'const unsigned long')\00" }
@165 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.4, i32 37, i32 47 }, ptr @164, i8 0, i8 0 }
@166 = private unnamed_addr constant { i16, i16, [27 x i8] } { i16 -1, i16 0, [27 x i8] c"'const unaligned_uint16_t'\00" }
@167 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.4, i32 15, i32 47 }, ptr @166, i8 0, i8 3 }
@168 = private unnamed_addr constant { i16, i16, [46 x i8] } { i16 0, i16 8, [46 x i8] c"'const uint16_t' (aka 'const unsigned short')\00" }
@169 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.4, i32 15, i32 47 }, ptr @168, i8 0, i8 0 }
@170 = private unnamed_addr constant { i16, i16, [27 x i8] } { i16 -1, i16 0, [27 x i8] c"'const unaligned_uint32_t'\00" }
@171 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.4, i32 26, i32 47 }, ptr @170, i8 0, i8 3 }
@172 = private unnamed_addr constant { i16, i16, [44 x i8] } { i16 0, i16 10, [44 x i8] c"'const uint32_t' (aka 'const unsigned int')\00" }
@173 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.4, i32 26, i32 47 }, ptr @172, i8 0, i8 0 }

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 257) i32 @compare256_avx512(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !func_sanitize !12 {
bb.a:
  %i.a = call fastcc i32 @compare256_avx512_static(ptr noundef %0, ptr noundef %1)
  ret i32 %i.a
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i32 0, 257) i32 @compare256_avx512_static(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !func_sanitize !12 {
bb.a:
  %.not57 = icmp eq ptr %0, null, !nosanitize !13
  br i1 %.not57, label %bb.b, label %_mm_loadu_si128.exit44, !prof !14, !nosanitize !13

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %0 to i64, !nosanitize !13  ; 2 uses
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @159, i64 %i.a) #5, !nosanitize !13
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @161, i64 %i.a) #5, !nosanitize !13
  br label %_mm_loadu_si128.exit44, !nosanitize !13

_mm_loadu_si128.exit44:                           ; preds = %bb.a, %bb.b
  %i.b = load <16 x i8>, ptr %0, align 1, !tbaa !15
  %.not58 = icmp eq ptr %1, null, !nosanitize !13
  br i1 %.not58, label %bb.c, label %_mm_loadu_si128.exit, !prof !14, !nosanitize !13

bb.c:                                             ; preds = %_mm_loadu_si128.exit44
  %i.c = ptrtoint ptr %1 to i64, !nosanitize !13  ; 2 uses
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @159, i64 %i.c) #5, !nosanitize !13
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @161, i64 %i.c) #5, !nosanitize !13
  br label %_mm_loadu_si128.exit, !nosanitize !13

_mm_loadu_si128.exit:                             ; preds = %_mm_loadu_si128.exit44, %bb.c
  %i.d = load <16 x i8>, ptr %1, align 1, !tbaa !15
  %i.e = icmp eq <16 x i8> %i.b, %i.d
  %i.f = bitcast <16 x i1> %i.e to i16            ; 2 uses
  %.not = icmp eq i16 %i.f, -1
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_mm_loadu_si128.exit
  %i.g = zext i16 %i.f to i32
  %i.h = xor i32 %i.g, -1
  %i.i = call range(i32 0, 17) i32 @llvm.cttz.i32(i32 %i.h, i1 true)
  br label %bb.u

bb.e:                                             ; preds = %_mm_loadu_si128.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = ptrtoint ptr %0 to i64, !nosanitize !13  ; 8 uses
  %i.l = add i64 %i.k, 16, !nosanitize !13        ; 2 uses
  %i.m = icmp ne i64 %i.l, 0
  %i.n = icmp ult ptr %0, inttoptr (i64 -16 to ptr)
  %i.o = and i1 %i.n, %i.m
  br i1 %i.o, label %_mm512_loadu_si512.exit51, label %bb.f, !prof !16, !nosanitize !13

bb.f:                                             ; preds = %bb.e
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @150, i64 %i.k, i64 %i.l) #5, !nosanitize !13
  br label %_mm512_loadu_si512.exit51, !nosanitize !13

_mm512_loadu_si512.exit51:                        ; preds = %bb.e, %bb.f
  %i.p = load <64 x i8>, ptr %i.j, align 1, !tbaa !15
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = ptrtoint ptr %1 to i64, !nosanitize !13  ; 8 uses
  %i.s = add i64 %i.r, 16, !nosanitize !13        ; 2 uses
  %i.t = icmp ne i64 %i.s, 0
  %i.u = icmp ult ptr %1, inttoptr (i64 -16 to ptr)
  %i.v = and i1 %i.u, %i.t
  br i1 %i.v, label %_mm512_loadu_si512.exit50, label %bb.g, !prof !16, !nosanitize !13

bb.g:                                             ; preds = %_mm512_loadu_si512.exit51
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @151, i64 %i.r, i64 %i.s) #5, !nosanitize !13
  br label %_mm512_loadu_si512.exit50, !nosanitize !13

_mm512_loadu_si512.exit50:                        ; preds = %_mm512_loadu_si512.exit51, %bb.g
  %i.w = load <64 x i8>, ptr %i.q, align 1, !tbaa !15
  %i.x = icmp eq <64 x i8> %i.p, %i.w
  %i.y = bitcast <64 x i1> %i.x to i64            ; 2 uses
  %.not40 = icmp eq i64 %i.y, -1
  br i1 %.not40, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_mm512_loadu_si512.exit50
  %i.z = xor i64 %i.y, -1
  %i.aa = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.z, i1 true)
  %i.ab = trunc nuw nsw i64 %i.aa to i32
  %i.ac = add nuw nsw i32 %i.ab, 16
  br label %bb.u

bb.i:                                             ; preds = %_mm512_loadu_si512.exit50
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ae = add i64 %i.k, 80, !nosanitize !13       ; 2 uses
  %i.af = icmp ne i64 %i.ae, 0
  %i.ag = icmp ult ptr %0, inttoptr (i64 -80 to ptr)
  %i.ah = and i1 %i.ag, %i.af
  br i1 %i.ah, label %_mm512_loadu_si512.exit49, label %bb.j, !prof !16, !nosanitize !13

bb.j:                                             ; preds = %bb.i
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @152, i64 %i.k, i64 %i.ae) #5, !nosanitize !13
  br label %_mm512_loadu_si512.exit49, !nosanitize !13

_mm512_loadu_si512.exit49:                        ; preds = %bb.i, %bb.j
  %i.ai = load <64 x i8>, ptr %i.ad, align 1, !tbaa !15
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ak = add i64 %i.r, 80, !nosanitize !13       ; 2 uses
  %i.al = icmp ne i64 %i.ak, 0
  %i.am = icmp ult ptr %1, inttoptr (i64 -80 to ptr)
  %i.an = and i1 %i.am, %i.al
  br i1 %i.an, label %_mm512_loadu_si512.exit48, label %bb.k, !prof !16, !nosanitize !13

bb.k:                                             ; preds = %_mm512_loadu_si512.exit49
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @153, i64 %i.r, i64 %i.ak) #5, !nosanitize !13
  br label %_mm512_loadu_si512.exit48, !nosanitize !13

_mm512_loadu_si512.exit48:                        ; preds = %_mm512_loadu_si512.exit49, %bb.k
  %i.ao = load <64 x i8>, ptr %i.aj, align 1, !tbaa !15
  %i.ap = icmp eq <64 x i8> %i.ai, %i.ao
  %i.aq = bitcast <64 x i1> %i.ap to i64          ; 2 uses
  %.not41 = icmp eq i64 %i.aq, -1
  br i1 %.not41, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_mm512_loadu_si512.exit48
  %i.ar = xor i64 %i.aq, -1
  %i.as = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ar, i1 true)
  %i.at = trunc nuw nsw i64 %i.as to i32
  %i.au = add nuw nsw i32 %i.at, 80
  br label %bb.u

bb.m:                                             ; preds = %_mm512_loadu_si512.exit48
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.aw = add i64 %i.k, 144, !nosanitize !13      ; 2 uses
  %i.ax = icmp ne i64 %i.aw, 0
  %i.ay = icmp ult ptr %0, inttoptr (i64 -144 to ptr)
  %i.az = and i1 %i.ay, %i.ax
  br i1 %i.az, label %_mm512_loadu_si512.exit47, label %bb.n, !prof !16, !nosanitize !13

bb.n:                                             ; preds = %bb.m
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @154, i64 %i.k, i64 %i.aw) #5, !nosanitize !13
  br label %_mm512_loadu_si512.exit47, !nosanitize !13

_mm512_loadu_si512.exit47:                        ; preds = %bb.m, %bb.n
  %i.ba = load <64 x i8>, ptr %i.av, align 1, !tbaa !15
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.bc = add i64 %i.r, 144, !nosanitize !13      ; 2 uses
  %i.bd = icmp ne i64 %i.bc, 0
  %i.be = icmp ult ptr %1, inttoptr (i64 -144 to ptr)
  %i.bf = and i1 %i.be, %i.bd
  br i1 %i.bf, label %_mm512_loadu_si512.exit46, label %bb.o, !prof !16, !nosanitize !13

bb.o:                                             ; preds = %_mm512_loadu_si512.exit47
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @155, i64 %i.r, i64 %i.bc) #5, !nosanitize !13
  br label %_mm512_loadu_si512.exit46, !nosanitize !13

_mm512_loadu_si512.exit46:                        ; preds = %_mm512_loadu_si512.exit47, %bb.o
  %i.bg = load <64 x i8>, ptr %i.bb, align 1, !tbaa !15
  %i.bh = icmp eq <64 x i8> %i.ba, %i.bg
  %i.bi = bitcast <64 x i1> %i.bh to i64          ; 2 uses
  %.not42 = icmp eq i64 %i.bi, -1
  br i1 %.not42, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_mm512_loadu_si512.exit46
  %i.bj = xor i64 %i.bi, -1
  %i.bk = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.bj, i1 true)
  %i.bl = trunc nuw nsw i64 %i.bk to i32
  %i.bm = add nuw nsw i32 %i.bl, 144
  br label %bb.u

bb.q:                                             ; preds = %_mm512_loadu_si512.exit46
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bo = add i64 %i.k, 192, !nosanitize !13      ; 2 uses
  %i.bp = icmp ne i64 %i.bo, 0
  %i.bq = icmp ult ptr %0, inttoptr (i64 -192 to ptr)
  %i.br = and i1 %i.bq, %i.bp
  br i1 %i.br, label %_mm512_loadu_si512.exit45, label %bb.r, !prof !16, !nosanitize !13

bb.r:                                             ; preds = %bb.q
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @156, i64 %i.k, i64 %i.bo) #5, !nosanitize !13
  br label %_mm512_loadu_si512.exit45, !nosanitize !13

_mm512_loadu_si512.exit45:                        ; preds = %bb.q, %bb.r
  %i.bs = load <64 x i8>, ptr %i.bn, align 1, !tbaa !15
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.bu = add i64 %i.r, 192, !nosanitize !13      ; 2 uses
  %i.bv = icmp ne i64 %i.bu, 0
  %i.bw = icmp ult ptr %1, inttoptr (i64 -192 to ptr)
  %i.bx = and i1 %i.bw, %i.bv
  br i1 %i.bx, label %_mm512_loadu_si512.exit, label %bb.s, !prof !16, !nosanitize !13

bb.s:                                             ; preds = %_mm512_loadu_si512.exit45
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @157, i64 %i.r, i64 %i.bu) #5, !nosanitize !13
  br label %_mm512_loadu_si512.exit, !nosanitize !13

_mm512_loadu_si512.exit:                          ; preds = %_mm512_loadu_si512.exit45, %bb.s
  %i.by = load <64 x i8>, ptr %i.bt, align 1, !tbaa !15
  %i.bz = icmp eq <64 x i8> %i.bs, %i.by
  %i.ca = bitcast <64 x i1> %i.bz to i64          ; 2 uses
  %.not43 = icmp eq i64 %i.ca, -1
  br i1 %.not43, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_mm512_loadu_si512.exit
  %i.cb = xor i64 %i.ca, -1
  %i.cc = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.cb, i1 true)
  %i.cd = trunc nuw nsw i64 %i.cc to i32
  %i.ce = or disjoint i32 %i.cd, 192
  br label %bb.u

bb.u:                                             ; preds = %_mm512_loadu_si512.exit, %bb.t, %bb.p, %bb.l, %bb.h, %bb.d
  %.0 = phi i32 [ %i.i, %bb.d ], [ %i.ac, %bb.h ], [ %i.au, %bb.l ], [ %i.bm, %bb.p ], [ %i.ce, %bb.t ], [ 256, %_mm512_loadu_si512.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden i32 @longest_match_avx512(ptr noundef %0, i16 noundef zeroext %1) local_unnamed_addr #0 !func_sanitize !17 {
bb.a:
  %i.a = icmp ne ptr %0, null, !nosanitize !13
  %i.b = ptrtoint ptr %0 to i64, !nosanitize !13  ; 15 uses
  %i.c = and i64 %i.b, 63, !nosanitize !13
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !13
  %i.e = and i1 %i.a, %i.d, !nosanitize !13       ; 14 uses
  br i1 %i.e, label %bb.c, label %bb.b, !prof !16, !nosanitize !13

bb.b:                                             ; preds = %bb.a
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @1, i64 %i.b) #5, !nosanitize !13
  br label %bb.c, !nosanitize !13

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  %i.g = ptrtoint ptr %i.f to i64, !nosanitize !13 ; 2 uses
  %i.h = and i64 %i.g, 3, !nosanitize !13
  %i.i = icmp eq i64 %i.h, 0, !nosanitize !13
  br i1 %i.i, label %bb.e, label %bb.d, !prof !16, !nosanitize !13

bb.d:                                             ; preds = %bb.c
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @3, i64 %i.g) #5, !nosanitize !13
  br label %bb.e, !nosanitize !13

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = load i32, ptr %i.f, align 4, !tbaa !31   ; 4 uses
  br i1 %i.e, label %bb.g, label %bb.f, !prof !16, !nosanitize !13

bb.f:                                             ; preds = %bb.e
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @4, i64 %i.b) #5, !nosanitize !13
  br label %bb.g, !nosanitize !13

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.l = ptrtoint ptr %i.k to i64, !nosanitize !13 ; 2 uses
  %i.m = and i64 %i.l, 7, !nosanitize !13
  %i.n = icmp eq i64 %i.m, 0, !nosanitize !13
  br i1 %i.n, label %bb.i, label %bb.h, !prof !16, !nosanitize !13

bb.h:                                             ; preds = %bb.g
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @5, i64 %i.l) #5, !nosanitize !13
  br label %bb.i, !nosanitize !13

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.o = load i32, ptr %i.k, align 8, !tbaa !32   ; 4 uses
  br i1 %i.e, label %bb.k, label %bb.j, !prof !16, !nosanitize !13

bb.j:                                             ; preds = %bb.i
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @6, i64 %i.b) #5, !nosanitize !13
  br label %bb.k, !nosanitize !13

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !33   ; 9 uses
  %i.r = zext i32 %i.j to i64                     ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.r ; 6 uses
  %i.t = ptrtoint ptr %i.q to i64, !nosanitize !13 ; 21 uses
  %i.u = add i64 %i.t, %i.r, !nosanitize !13      ; 3 uses
  %i.v = icmp ne ptr %i.q, null                   ; 13 uses
  %i.w = icmp eq i64 %i.u, 0
  %i.x = xor i1 %i.v, %i.w
  %i.y = icmp uge i64 %i.u, %i.t, !nosanitize !13
  %i.z = and i1 %i.y, %i.x, !nosanitize !13
  br i1 %i.z, label %bb.m, label %bb.l, !prof !16, !nosanitize !13

bb.l:                                             ; preds = %bb.k
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @7, i64 %i.t, i64 %i.u) #5, !nosanitize !13
  br label %bb.m, !nosanitize !13

bb.m:                                             ; preds = %bb.l, %bb.k
  br i1 %i.e, label %bb.o, label %bb.n, !prof !16, !nosanitize !13

bb.n:                                             ; preds = %bb.m
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @8, i64 %i.b) #5, !nosanitize !13
  br label %bb.o, !nosanitize !13

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ab = ptrtoint ptr %i.aa to i64, !nosanitize !13 ; 2 uses
  %i.ac = and i64 %i.ab, 31, !nosanitize !13
  %i.ad = icmp eq i64 %i.ac, 0, !nosanitize !13
  br i1 %i.ad, label %bb.q, label %bb.p, !prof !16, !nosanitize !13

bb.p:                                             ; preds = %bb.o
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @10, i64 %i.ab) #5, !nosanitize !13
  br label %bb.q, !nosanitize !13

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ae = load ptr, ptr %i.aa, align 32, !tbaa !34 ; 6 uses
  br i1 %i.e, label %bb.s, label %bb.r, !prof !16, !nosanitize !13

bb.r:                                             ; preds = %bb.q
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @11, i64 %i.b) #5, !nosanitize !13
  br label %bb.s, !nosanitize !13

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !35 ; 2 uses
  br i1 %i.e, label %bb.u, label %bb.t, !prof !16, !nosanitize !13

bb.t:                                             ; preds = %bb.s
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @12, i64 %i.b) #5, !nosanitize !13
  br label %bb.u, !nosanitize !13

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !36
  %.not = icmp eq i32 %i.ai, 0
  br i1 %.not, label %.thread157, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %i.e, label %bb.x, label %bb.w, !prof !16, !nosanitize !13

bb.w:                                             ; preds = %bb.v
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @13, i64 %i.b) #5, !nosanitize !13
  br label %bb.x, !nosanitize !13

bb.x:                                             ; preds = %bb.v, %bb.w
  %i.aj = load i32, ptr %i.ah, align 4, !tbaa !36 ; 8 uses
  %i.ak = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %i.aj, i32 1), !nosanitize !13 ; 2 uses
  %i.al = extractvalue { i32, i1 } %i.ak, 0, !nosanitize !13 ; 4 uses
  %i.am = extractvalue { i32, i1 } %i.ak, 1, !nosanitize !13
  br i1 %i.am, label %.thread, label %bb.y, !prof !14, !nosanitize !13

.thread:                                          ; preds = %bb.x
  %i.an = zext nneg i32 %i.aj to i64, !nosanitize !13
  call void @__ubsan_handle_sub_overflow(ptr nonnull @15, i64 %i.an, i64 1) #6, !nosanitize !13
  br label %.thread157

bb.y:                                             ; preds = %bb.x
  %i.ao = icmp ugt i32 %i.aj, 3
  br i1 %i.ao, label %bb.z, label %.thread157

bb.z:                                             ; preds = %bb.y
  %i.ap = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %i.al, i32 2), !nosanitize !13 ; 2 uses
  %i.aq = extractvalue { i32, i1 } %i.ap, 0, !nosanitize !13 ; 3 uses
  %i.ar = extractvalue { i32, i1 } %i.ap, 1, !nosanitize !13
  br i1 %i.ar, label %bb.aa, label %bb.ab, !prof !14, !nosanitize !13

bb.aa:                                            ; preds = %bb.z
  %i.as = zext nneg i32 %i.al to i64, !nosanitize !13
  call void @__ubsan_handle_sub_overflow(ptr nonnull @16, i64 %i.as, i64 2) #6, !nosanitize !13
  br label %bb.ab, !nosanitize !13

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.at = icmp ugt i32 %i.aj, 7
  br i1 %i.at, label %bb.ac, label %.thread157

bb.ac:                                            ; preds = %bb.ab
  %i.au = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %i.aq, i32 4), !nosanitize !13 ; 2 uses
  %i.av = extractvalue { i32, i1 } %i.au, 0, !nosanitize !13 ; 2 uses
  %i.aw = extractvalue { i32, i1 } %i.au, 1, !nosanitize !13
  br i1 %i.aw, label %bb.ad, label %.thread157, !prof !14, !nosanitize !13

bb.ad:                                            ; preds = %bb.ac
  %i.ax = zext nneg i32 %i.aq to i64, !nosanitize !13
  call void @__ubsan_handle_sub_overflow(ptr nonnull @17, i64 %i.ax, i64 4) #6, !nosanitize !13
  br label %.thread157, !nosanitize !13

.thread157:                                       ; preds = %bb.u, %.thread, %bb.ac, %bb.ad, %bb.ab, %bb.y
  %i.ay = phi i32 [ %i.aj, %bb.y ], [ %i.aj, %bb.ab ], [ %i.aj, %bb.ad ], [ %i.aj, %bb.ac ], [ 0, %.thread ], [ 2, %bb.u ] ; 2 uses
  %.099 = phi i32 [ %i.al, %bb.y ], [ %i.aq, %bb.ab ], [ %i.av, %bb.ad ], [ %i.av, %bb.ac ], [ %i.al, %.thread ], [ 1, %bb.u ]
  %.pre = ptrtoint ptr %i.s to i64, !nosanitize !13 ; 10 uses
  br i1 %i.v, label %zng_memread_8.exit, label %bb.ae, !prof !16, !nosanitize !13

bb.ae:                                            ; preds = %.thread157
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @163, i64 %.pre) #5, !nosanitize !13
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @165, i64 %.pre) #5, !nosanitize !13
  br label %zng_memread_8.exit, !nosanitize !13

zng_memread_8.exit:                               ; preds = %.thread157, %bb.ae
  %i.az = load i64, ptr %i.s, align 1, !tbaa !15  ; 4 uses
  %.sroa.0.sroa.0236.0.extract.trunc = trunc i64 %i.az to i16
  %i.ba = trunc i64 %i.az to i32
  %.sroa.0.sroa.6.0.insert.shift = and i32 %i.ba, -65536
  %.sroa.6.0.extract.shift = and i64 %i.az, -4294967296
  %i.bb = zext i32 %.099 to i64                   ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.bb
  %i.bd = add i64 %.pre, %i.bb, !nosanitize !13   ; 2 uses
  %i.be = icmp uge i64 %i.bd, %.pre, !nosanitize !13
  %i.bf = and i1 %i.v, %i.be
  br i1 %i.bf, label %zng_memread_8.exit148, label %bb.af, !prof !16, !nosanitize !13

bb.af:                                            ; preds = %zng_memread_8.exit
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @18, i64 %.pre, i64 %i.bd) #5, !nosanitize !13
  br label %zng_memread_8.exit148, !nosanitize !13

zng_memread_8.exit148:                            ; preds = %zng_memread_8.exit, %bb.af
  %i.bg = load i64, ptr %i.bc, align 1, !tbaa !15 ; 3 uses
  %.sroa.0.sroa.0.0.extract.trunc = trunc i64 %i.bg to i16
  %.sroa.0.sroa.7.0.extract.shift258 = lshr i64 %i.bg, 16
  %.sroa.0.sroa.7.0.extract.trunc = trunc i64 %.sroa.0.sroa.7.0.extract.shift258 to i16
  %.sroa.7.0.extract.shift = lshr i64 %i.bg, 32
  %.sroa.7.0.extract.trunc = trunc nuw i64 %.sroa.7.0.extract.shift to i32
  %i.bh = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.bb
  %i.bi = add i64 %i.bb, %i.t, !nosanitize !13    ; 3 uses
  %i.bj = icmp eq i64 %i.bi, 0
  %i.bk = xor i1 %i.v, %i.bj
  %i.bl = icmp uge i64 %i.bi, %i.t, !nosanitize !13
  %i.bm = and i1 %i.bl, %i.bk, !nosanitize !13
  br i1 %i.bm, label %bb.ah, label %bb.ag, !prof !16, !nosanitize !13

bb.ag:                                            ; preds = %zng_memread_8.exit148
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @19, i64 %i.t, i64 %i.bi) #5, !nosanitize !13
  br label %bb.ah, !nosanitize !13

bb.ah:                                            ; preds = %bb.ag, %zng_memread_8.exit148
  br i1 %i.e, label %bb.aj, label %bb.ai, !prof !16, !nosanitize !13

bb.ai:                                            ; preds = %bb.ah
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @20, i64 %i.b) #5, !nosanitize !13
  br label %bb.aj, !nosanitize !13

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bo = load i32, ptr %i.bn, align 16, !tbaa !37 ; 2 uses
  br i1 %i.e, label %bb.al, label %bb.ak, !prof !16, !nosanitize !13

bb.ak:                                            ; preds = %bb.aj
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @21, i64 %i.b) #5, !nosanitize !13
  br label %bb.al, !nosanitize !13

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !38
  %.not136 = icmp ult i32 %i.ay, %i.bq
  %i.br = lshr i32 %i.bo, 2
  %spec.select = select i1 %.not136, i32 %i.bo, i32 %i.br
  br i1 %i.e, label %bb.an, label %bb.am, !prof !16, !nosanitize !13

bb.am:                                            ; preds = %bb.al
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @22, i64 %i.b) #5, !nosanitize !13
  br label %bb.an, !nosanitize !13

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !39
  br i1 %i.e, label %bb.ap, label %bb.ao, !prof !16, !nosanitize !13

bb.ao:                                            ; preds = %bb.an
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @23, i64 %i.b) #5, !nosanitize !13
  br label %bb.ap, !nosanitize !13

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.bv = ptrtoint ptr %i.bu to i64, !nosanitize !13 ; 3 uses
  %i.bw = and i64 %i.bv, 63, !nosanitize !13
  %i.bx = icmp eq i64 %i.bw, 0, !nosanitize !13   ; 2 uses
  br i1 %i.bx, label %bb.ar, label %bb.aq, !prof !16, !nosanitize !13

bb.aq:                                            ; preds = %bb.ap
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @24, i64 %i.bv) #5, !nosanitize !13
  br label %bb.ar, !nosanitize !13

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.by = load i32, ptr %i.bu, align 64, !tbaa !40 ; 2 uses
  %i.bz = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %i.by, i32 262), !nosanitize !13 ; 2 uses
  %i.ca = extractvalue { i32, i1 } %i.bz, 0, !nosanitize !13
  %i.cb = extractvalue { i32, i1 } %i.bz, 1, !nosanitize !13
  br i1 %i.cb, label %bb.as, label %bb.at, !prof !14, !nosanitize !13

bb.as:                                            ; preds = %bb.ar
  %i.cc = zext nneg i32 %i.by to i64, !nosanitize !13
  call void @__ubsan_handle_sub_overflow(ptr nonnull @25, i64 %i.cc, i64 262) #6, !nosanitize !13
  br label %bb.at, !nosanitize !13

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.cd = icmp ugt i32 %i.j, %i.ca
  br i1 %i.cd, label %bb.au, label %bb.bd

bb.au:                                            ; preds = %bb.at
  br i1 %i.e, label %bb.aw, label %bb.av, !prof !16, !nosanitize !13

bb.av:                                            ; preds = %bb.au
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @26, i64 %i.b) #5, !nosanitize !13
  br label %bb.aw, !nosanitize !13

bb.aw:                                            ; preds = %bb.av, %bb.au
  br i1 %i.bx, label %bb.ay, label %bb.ax, !prof !16, !nosanitize !13

bb.ax:                                            ; preds = %bb.aw
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @27, i64 %i.bv) #5, !nosanitize !13
  br label %bb.ay, !nosanitize !13

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.ce = load i32, ptr %i.bu, align 64, !tbaa !40 ; 2 uses
  %i.cf = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %i.ce, i32 262), !nosanitize !13 ; 2 uses
  %i.cg = extractvalue { i32, i1 } %i.cf, 0, !nosanitize !13 ; 2 uses
  %i.ch = extractvalue { i32, i1 } %i.cf, 1, !nosanitize !13
  br i1 %i.ch, label %bb.az, label %bb.ba, !prof !14, !nosanitize !13

bb.az:                                            ; preds = %bb.ay
  %i.ci = zext nneg i32 %i.ce to i64, !nosanitize !13
  call void @__ubsan_handle_sub_overflow(ptr nonnull @28, i64 %i.ci, i64 262) #6, !nosanitize !13
  br label %bb.ba, !nosanitize !13

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.cj = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %i.j, i32 %i.cg), !nosanitize !13 ; 2 uses
  %i.ck = extractvalue { i32, i1 } %i.cj, 0, !nosanitize !13
  %i.cl = extractvalue { i32, i1 } %i.cj, 1, !nosanitize !13
  br i1 %i.cl, label %bb.bb, label %bb.bc, !prof !14, !nosanitize !13

bb.bb:                                            ; preds = %bb.ba
  %i.cm = zext i32 %i.cg to i64, !nosanitize !13
  call void @__ubsan_handle_sub_overflow(ptr nonnull @29, i64 %i.r, i64 %i.cm) #6, !nosanitize !13
  br label %bb.bc, !nosanitize !13

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.cn = trunc i32 %i.ck to i16
  br label %bb.bd

bb.bd:                                            ; preds = %bb.at, %bb.bc
  %i.co = phi i16 [ %i.cn, %bb.bc ], [ 0, %bb.at ] ; 4 uses
  br i1 %i.e, label %bb.bf, label %bb.be, !prof !16, !nosanitize !13

bb.be:                                            ; preds = %bb.bd
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @30, i64 %i.b) #5, !nosanitize !13
  br label %bb.bf, !nosanitize !13

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.cq = load i32, ptr %i.cp, align 16, !tbaa !44
  %i.cr = icmp slt i32 %i.cq, 5
  %i.cs = trunc i64 %i.az to i32
  %.sroa.0.sroa.0236.0.insert.ext = and i32 %i.cs, 65535
  %.sroa.0.sroa.0236.0.insert.insert = or disjoint i32 %.sroa.0.sroa.6.0.insert.shift, %.sroa.0.sroa.0236.0.insert.ext ; 2 uses
  %i.ct = ptrtoint ptr %i.ae to i64               ; 12 uses
  %i.cu = icmp ne ptr %i.ae, null                 ; 8 uses
  %.sroa.0.0.insert.ext233 = zext i32 %.sroa.0.sroa.0236.0.insert.insert to i64
  %.sroa.0.0.insert.insert235 = or disjoint i64 %.sroa.6.0.extract.shift, %.sroa.0.0.insert.ext233
  %i.cv = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  %.not141 = icmp ugt ptr %i.s, inttoptr (i64 -3 to ptr)
  %i.cw = add i64 %.pre, 2
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 136
  br label %bb.bg

bb.bg:                                            ; preds = %bb.dx, %bb.bf
  %.sroa.0.sroa.7.0 = phi i16 [ %.sroa.0.sroa.7.0.extract.trunc, %bb.bf ], [ %.sroa.0.sroa.7.1, %bb.dx ] ; 3 uses
  %.sroa.0.sroa.0.0 = phi i16 [ %.sroa.0.sroa.0.0.extract.trunc, %bb.bf ], [ %.sroa.0.sroa.0.1, %bb.dx ] ; 4 uses
  %.sroa.7.0 = phi i32 [ %.sroa.7.0.extract.trunc, %bb.bf ], [ %.sroa.7.1, %bb.dx ] ; 2 uses
  %.0112 = phi i16 [ %1, %bb.bf ], [ %i.je, %bb.dx ] ; 4 uses
  %.0108 = phi ptr [ %i.bh, %bb.bf ], [ %.2110, %bb.dx ] ; 7 uses
  %.1104 = phi i32 [ %spec.select, %bb.bf ], [ %i.io, %bb.dx ] ; 3 uses
  %.0101 = phi i32 [ %i.ay, %bb.bf ], [ %.2, %bb.dx ] ; 12 uses
  %i.cy = zext i16 %.0112 to i32
  %.not137 = icmp ugt i32 %i.j, %i.cy
  br i1 %.not137, label %bb.bh, label %.thread164

bb.bh:                                            ; preds = %bb.bg
  %i.cz = icmp ult i32 %.0101, 4
  br i1 %i.cz, label %.preheader, label %bb.bw

.preheader:                                       ; preds = %bb.bh
  %i.da = ptrtoint ptr %.0108 to i64, !nosanitize !13 ; 3 uses
  br label %bb.bi

bb.bi:                                            ; preds = %.preheader, %bb.bv
  %.1113 = phi i16 [ %i.ei, %bb.bv ], [ %.0112, %.preheader ] ; 3 uses
  %.2105 = phi i32 [ %i.ds, %bb.bv ], [ %.1104, %.preheader ] ; 3 uses
  %i.db = zext i16 %.1113 to i32
  %i.dc = zext i16 %.1113 to i64                  ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.0108, i64 %i.dc
  %i.de = add i64 %i.dc, %i.da, !nosanitize !13   ; 3 uses
  %i.df = icmp ne i64 %i.de, 0
  %i.dg = icmp uge i64 %i.de, %i.da, !nosanitize !13
  %i.dh = and i1 %i.dg, %i.df, !nosanitize !13
  br i1 %i.dh, label %zng_memread_2.exit.i, label %bb.bj, !prof !16, !nosanitize !13

bb.bj:                                            ; preds = %bb.bi
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @31, i64 %i.da, i64 %i.de) #5, !nosanitize !13
  br label %zng_memread_2.exit.i, !nosanitize !13

zng_memread_2.exit.i:                             ; preds = %bb.bi, %bb.bj
  %i.di = load i16, ptr %i.dd, align 1, !tbaa !15
  %.not183 = icmp eq i16 %i.di, %.sroa.0.sroa.0.0
  br i1 %.not183, label %bb.bk, label %bb.bo

bb.bk:                                            ; preds = %zng_memread_2.exit.i
  %i.dj = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.dc ; 2 uses
  %i.dk = add i64 %i.dc, %i.t, !nosanitize !13    ; 3 uses
  %i.dl = icmp eq i64 %i.dk, 0
  %i.dm = xor i1 %i.v, %i.dl
  %i.dn = icmp uge i64 %i.dk, %i.t, !nosanitize !13
  %i.do = and i1 %i.dn, %i.dm, !nosanitize !13
  br i1 %i.do, label %bb.bm, label %bb.bl, !prof !16, !nosanitize !13

bb.bl:                                            ; preds = %bb.bk
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @32, i64 %i.t, i64 %i.dk) #5, !nosanitize !13
  br label %bb.bm, !nosanitize !13

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  br i1 %i.v, label %zng_memread_2.exit.i149, label %bb.bn, !prof !16, !nosanitize !13

bb.bn:                                            ; preds = %bb.bm
  %i.dp = ptrtoint ptr %i.dj to i64, !nosanitize !13 ; 2 uses
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @167, i64 %i.dp) #5, !nosanitize !13
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @169, i64 %i.dp) #5, !nosanitize !13
  br label %zng_memread_2.exit.i149, !nosanitize !13

zng_memread_2.exit.i149:                          ; preds = %bb.bn, %bb.bm
  %i.dq = load i16, ptr %i.dj, align 1, !tbaa !15
  %.not184 = icmp eq i16 %i.dq, %.sroa.0.sroa.0236.0.extract.trunc
  br i1 %.not184, label %.loopexit, label %bb.bo

bb.bo:                                            ; preds = %zng_memread_2.exit.i149, %zng_memread_2.exit.i
  %i.dr = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %.2105, i32 1), !nosanitize !13 ; 2 uses
  %i.ds = extractvalue { i32, i1 } %i.dr, 0, !nosanitize !13 ; 2 uses
  %i.dt = extractvalue { i32, i1 } %i.dr, 1, !nosanitize !13
  br i1 %i.dt, label %bb.bp, label %bb.bq, !prof !14, !nosanitize !13

bb.bp:                                            ; preds = %bb.bo
  %i.du = zext nneg i32 %.2105 to i64, !nosanitize !13
  call void @__ubsan_handle_sub_overflow(ptr nonnull @33, i64 %i.du, i64 1) #6, !nosanitize !13
  br label %bb.bq, !nosanitize !13

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %.not140 = icmp eq i32 %i.ds, 0
  br i1 %.not140, label %.thread164, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.dv = and i32 %i.o, %i.db
  %i.dw = zext nneg i32 %i.dv to i64              ; 2 uses
  %i.dx = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %i.dw ; 2 uses
  %i.dy = shl nuw nsw i64 %i.dw, 1
  %i.dz = add i64 %i.dy, %i.ct, !nosanitize !13   ; 3 uses
  %i.ea = icmp eq i64 %i.dz, 0
  %i.eb = xor i1 %i.cu, %i.ea
  %i.ec = icmp uge i64 %i.dz, %i.ct, !nosanitize !13
  %i.ed = and i1 %i.ec, %i.eb, !nosanitize !13
  br i1 %i.ed, label %bb.bt, label %bb.bs, !prof !16, !nosanitize !13

bb.bs:                                            ; preds = %bb.br
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @34, i64 %i.ct, i64 %i.dz) #5, !nosanitize !13
  br label %bb.bt, !nosanitize !13

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %i.ee = ptrtoint ptr %i.dx to i64, !nosanitize !13 ; 2 uses
  %i.ef = and i64 %i.ee, 1, !nosanitize !13
  %i.eg = icmp eq i64 %i.ef, 0, !nosanitize !13
  %i.eh = and i1 %i.cu, %i.eg
  br i1 %i.eh, label %bb.bv, label %bb.bu, !prof !16, !nosanitize !13

bb.bu:                                            ; preds = %bb.bt
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @36, i64 %i.ee) #5, !nosanitize !13
  br label %bb.bv, !nosanitize !13

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.ei = load i16, ptr %i.dx, align 2, !tbaa !41 ; 2 uses
  %i.ej = icmp ult i16 %i.co, %i.ei
  br i1 %i.ej, label %bb.bi, label %.thread164

bb.bw:                                            ; preds = %bb.bh
  %i.ek = icmp ugt i32 %.0101, 7
  %i.el = ptrtoint ptr %.0108 to i64, !nosanitize !13 ; 6 uses
  %i.em = icmp ne ptr %.0108, null                ; 4 uses
  br i1 %i.ek, label %.preheader185, label %.preheader188

.preheader188:                                    ; preds = %bb.bw
  %.sroa.0.sroa.7.0.insert.ext = zext i16 %.sroa.0.sroa.7.0 to i32
  %.sroa.0.sroa.7.0.insert.shift = shl nuw i32 %.sroa.0.sroa.7.0.insert.ext, 16
  %.sroa.0.sroa.0.0.insert.ext = zext i16 %.sroa.0.sroa.0.0 to i32
  %.sroa.0.sroa.0.0.insert.insert = or disjoint i32 %.sroa.0.sroa.7.0.insert.shift, %.sroa.0.sroa.0.0.insert.ext
  br label %bb.cn

.preheader185:                                    ; preds = %bb.bw
  %.sroa.0.sroa.7.0.insert.ext226 = zext i16 %.sroa.0.sroa.7.0 to i64
  %.sroa.0.sroa.7.0.insert.shift227 = shl nuw nsw i64 %.sroa.0.sroa.7.0.insert.ext226, 16
  %.sroa.0.sroa.0.0.insert.ext221 = zext i16 %.sroa.0.sroa.0.0 to i64
  %.sroa.0.sroa.0.0.insert.insert223 = or disjoint i64 %.sroa.0.sroa.7.0.insert.shift227, %.sroa.0.sroa.0.0.insert.ext221
  %.sroa.7.0.insert.ext = zext i32 %.sroa.7.0 to i64
  %.sroa.7.0.insert.shift = shl nuw i64 %.sroa.7.0.insert.ext, 32
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.7.0.insert.shift, %.sroa.0.sroa.0.0.insert.insert223
  br label %bb.bx

bb.bx:                                            ; preds = %.preheader185, %bb.cm
  %.2114 = phi i16 [ %i.fw, %bb.cm ], [ %.0112, %.preheader185 ] ; 3 uses
  %.3106 = phi i32 [ %i.fg, %bb.cm ], [ %.1104, %.preheader185 ] ; 3 uses
  %i.en = zext i16 %.2114 to i32
  %i.eo = zext i16 %.2114 to i64                  ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.0108, i64 %i.eo ; 2 uses
  %i.eq = add i64 %i.eo, %i.el, !nosanitize !13   ; 3 uses
  %i.er = icmp eq i64 %i.eq, 0
  %i.es = xor i1 %i.em, %i.er
  %i.et = icmp uge i64 %i.eq, %i.el, !nosanitize !13
  %i.eu = and i1 %i.et, %i.es, !nosanitize !13
  br i1 %i.eu, label %bb.bz, label %bb.by, !prof !16, !nosanitize !13

bb.by:                                            ; preds = %bb.bx
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @37, i64 %i.el, i64 %i.eq) #5, !nosanitize !13
  br label %bb.bz, !nosanitize !13

bb.bz:                                            ; preds = %bb.by, %bb.bx
  br i1 %i.em, label %zng_memread_8.exit.i, label %bb.ca, !prof !16, !nosanitize !13

bb.ca:                                            ; preds = %bb.bz
  %i.ev = ptrtoint ptr %i.ep to i64, !nosanitize !13 ; 2 uses
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @163, i64 %i.ev) #5, !nosanitize !13
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @165, i64 %i.ev) #5, !nosanitize !13
  br label %zng_memread_8.exit.i, !nosanitize !13

zng_memread_8.exit.i:                             ; preds = %bb.ca, %bb.bz
  %i.ew = load i64, ptr %i.ep, align 1, !tbaa !15
  %.not181 = icmp eq i64 %i.ew, %.sroa.0.0.insert.insert
  br i1 %.not181, label %bb.cb, label %bb.cf

bb.cb:                                            ; preds = %zng_memread_8.exit.i
  %i.ex = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.eo ; 2 uses
  %i.ey = add i64 %i.eo, %i.t, !nosanitize !13    ; 3 uses
  %i.ez = icmp eq i64 %i.ey, 0
  %i.fa = xor i1 %i.v, %i.ez
  %i.fb = icmp uge i64 %i.ey, %i.t, !nosanitize !13
  %i.fc = and i1 %i.fb, %i.fa, !nosanitize !13
  br i1 %i.fc, label %bb.cd, label %bb.cc, !prof !16, !nosanitize !13

bb.cc:                                            ; preds = %bb.cb
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @38, i64 %i.t, i64 %i.ey) #5, !nosanitize !13
  br label %bb.cd, !nosanitize !13

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  br i1 %i.v, label %zng_memread_8.exit.i151, label %bb.ce, !prof !16, !nosanitize !13

bb.ce:                                            ; preds = %bb.cd
  %i.fd = ptrtoint ptr %i.ex to i64, !nosanitize !13 ; 2 uses
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @163, i64 %i.fd) #5, !nosanitize !13
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @165, i64 %i.fd) #5, !nosanitize !13
  br label %zng_memread_8.exit.i151, !nosanitize !13

zng_memread_8.exit.i151:                          ; preds = %bb.ce, %bb.cd
  %i.fe = load i64, ptr %i.ex, align 1, !tbaa !15
  %.not182 = icmp eq i64 %i.fe, %.sroa.0.0.insert.insert235
  br i1 %.not182, label %.loopexit, label %bb.cf

bb.cf:                                            ; preds = %zng_memread_8.exit.i151, %zng_memread_8.exit.i
  %i.ff = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %.3106, i32 1), !nosanitize !13 ; 2 uses
  %i.fg = extractvalue { i32, i1 } %i.ff, 0, !nosanitize !13 ; 2 uses
  %i.fh = extractvalue { i32, i1 } %i.ff, 1, !nosanitize !13
  br i1 %i.fh, label %bb.cg, label %bb.ch, !prof !14, !nosanitize !13

bb.cg:                                            ; preds = %bb.cf
  %i.fi = zext nneg i32 %.3106 to i64, !nosanitize !13
  call void @__ubsan_handle_sub_overflow(ptr nonnull @39, i64 %i.fi, i64 1) #6, !nosanitize !13
  br label %bb.ch, !nosanitize !13

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %.not139 = icmp eq i32 %i.fg, 0
  br i1 %.not139, label %.thread164, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.fj = and i32 %i.o, %i.en
  %i.fk = zext nneg i32 %i.fj to i64              ; 2 uses
  %i.fl = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %i.fk ; 2 uses
  %i.fm = shl nuw nsw i64 %i.fk, 1
  %i.fn = add i64 %i.fm, %i.ct, !nosanitize !13   ; 3 uses
  %i.fo = icmp eq i64 %i.fn, 0
  %i.fp = xor i1 %i.cu, %i.fo
  %i.fq = icmp uge i64 %i.fn, %i.ct, !nosanitize !13
  %i.fr = and i1 %i.fq, %i.fp, !nosanitize !13
  br i1 %i.fr, label %bb.ck, label %bb.cj, !prof !16, !nosanitize !13

bb.cj:                                            ; preds = %bb.ci
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @40, i64 %i.ct, i64 %i.fn) #5, !nosanitize !13
  br label %bb.ck, !nosanitize !13

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.fs = ptrtoint ptr %i.fl to i64, !nosanitize !13 ; 2 uses
  %i.ft = and i64 %i.fs, 1, !nosanitize !13
  %i.fu = icmp eq i64 %i.ft, 0, !nosanitize !13
  %i.fv = and i1 %i.cu, %i.fu
  br i1 %i.fv, label %bb.cm, label %bb.cl, !prof !16, !nosanitize !13

bb.cl:                                            ; preds = %bb.ck
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @41, i64 %i.fs) #5, !nosanitize !13
  br label %bb.cm, !nosanitize !13

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %i.fw = load i16, ptr %i.fl, align 2, !tbaa !41 ; 2 uses
  %i.fx = icmp ult i16 %i.co, %i.fw
  br i1 %i.fx, label %bb.bx, label %.thread164

bb.cn:                                            ; preds = %.preheader188, %bb.dc
  %.3115 = phi i16 [ %i.hh, %bb.dc ], [ %.0112, %.preheader188 ] ; 3 uses
  %.4107 = phi i32 [ %i.gr, %bb.dc ], [ %.1104, %.preheader188 ] ; 3 uses
  %i.fy = zext i16 %.3115 to i32
  %i.fz = zext i16 %.3115 to i64                  ; 4 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.0108, i64 %i.fz ; 2 uses
  %i.gb = add i64 %i.fz, %i.el, !nosanitize !13   ; 3 uses
  %i.gc = icmp eq i64 %i.gb, 0
  %i.gd = xor i1 %i.em, %i.gc
  %i.ge = icmp uge i64 %i.gb, %i.el, !nosanitize !13
  %i.gf = and i1 %i.ge, %i.gd, !nosanitize !13
  br i1 %i.gf, label %bb.cp, label %bb.co, !prof !16, !nosanitize !13

bb.co:                                            ; preds = %bb.cn
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @42, i64 %i.el, i64 %i.gb) #5, !nosanitize !13
  br label %bb.cp, !nosanitize !13

bb.cp:                                            ; preds = %bb.co, %bb.cn
  br i1 %i.em, label %zng_memread_4.exit.i, label %bb.cq, !prof !16, !nosanitize !13

bb.cq:                                            ; preds = %bb.cp
  %i.gg = ptrtoint ptr %i.ga to i64, !nosanitize !13 ; 2 uses
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @171, i64 %i.gg) #5, !nosanitize !13
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @173, i64 %i.gg) #5, !nosanitize !13
  br label %zng_memread_4.exit.i, !nosanitize !13

zng_memread_4.exit.i:                             ; preds = %bb.cq, %bb.cp
  %i.gh = load i32, ptr %i.ga, align 1, !tbaa !15
  %.not179 = icmp eq i32 %i.gh, %.sroa.0.sroa.0.0.insert.insert
  br i1 %.not179, label %bb.cr, label %bb.cv

bb.cr:                                            ; preds = %zng_memread_4.exit.i
  %i.gi = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.fz ; 2 uses
  %i.gj = add i64 %i.fz, %i.t, !nosanitize !13    ; 3 uses
  %i.gk = icmp eq i64 %i.gj, 0
  %i.gl = xor i1 %i.v, %i.gk
  %i.gm = icmp uge i64 %i.gj, %i.t, !nosanitize !13
  %i.gn = and i1 %i.gm, %i.gl, !nosanitize !13
  br i1 %i.gn, label %bb.ct, label %bb.cs, !prof !16, !nosanitize !13

bb.cs:                                            ; preds = %bb.cr
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @43, i64 %i.t, i64 %i.gj) #5, !nosanitize !13
  br label %bb.ct, !nosanitize !13

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  br i1 %i.v, label %zng_memread_4.exit.i153, label %bb.cu, !prof !16, !nosanitize !13

bb.cu:                                            ; preds = %bb.ct
  %i.go = ptrtoint ptr %i.gi to i64, !nosanitize !13 ; 2 uses
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @171, i64 %i.go) #5, !nosanitize !13
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @173, i64 %i.go) #5, !nosanitize !13
  br label %zng_memread_4.exit.i153, !nosanitize !13

zng_memread_4.exit.i153:                          ; preds = %bb.cu, %bb.ct
  %i.gp = load i32, ptr %i.gi, align 1, !tbaa !15
  %.not180 = icmp eq i32 %i.gp, %.sroa.0.sroa.0236.0.insert.insert
  br i1 %.not180, label %.loopexit, label %bb.cv

bb.cv:                                            ; preds = %zng_memread_4.exit.i153, %zng_memread_4.exit.i
  %i.gq = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %.4107, i32 1), !nosanitize !13 ; 2 uses
  %i.gr = extractvalue { i32, i1 } %i.gq, 0, !nosanitize !13 ; 2 uses
  %i.gs = extractvalue { i32, i1 } %i.gq, 1, !nosanitize !13
  br i1 %i.gs, label %bb.cw, label %bb.cx, !prof !14, !nosanitize !13

bb.cw:                                            ; preds = %bb.cv
  %i.gt = zext nneg i32 %.4107 to i64, !nosanitize !13
  call void @__ubsan_handle_sub_overflow(ptr nonnull @44, i64 %i.gt, i64 1) #6, !nosanitize !13
  br label %bb.cx, !nosanitize !13

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %.not138 = icmp eq i32 %i.gr, 0
  br i1 %.not138, label %.thread164, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.gu = and i32 %i.o, %i.fy
  %i.gv = zext nneg i32 %i.gu to i64              ; 2 uses
  %i.gw = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %i.gv ; 2 uses
  %i.gx = shl nuw nsw i64 %i.gv, 1
  %i.gy = add i64 %i.gx, %i.ct, !nosanitize !13   ; 3 uses
  %i.gz = icmp eq i64 %i.gy, 0
  %i.ha = xor i1 %i.cu, %i.gz
  %i.hb = icmp uge i64 %i.gy, %i.ct, !nosanitize !13
  %i.hc = and i1 %i.hb, %i.ha, !nosanitize !13
  br i1 %i.hc, label %bb.da, label %bb.cz, !prof !16, !nosanitize !13

bb.cz:                                            ; preds = %bb.cy
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @45, i64 %i.ct, i64 %i.gy) #5, !nosanitize !13
  br label %bb.da, !nosanitize !13

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %i.hd = ptrtoint ptr %i.gw to i64, !nosanitize !13 ; 2 uses
  %i.he = and i64 %i.hd, 1, !nosanitize !13
  %i.hf = icmp eq i64 %i.he, 0, !nosanitize !13
  %i.hg = and i1 %i.cu, %i.hf
  br i1 %i.hg, label %bb.dc, label %bb.db, !prof !16, !nosanitize !13

bb.db:                                            ; preds = %bb.da
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @46, i64 %i.hd) #5, !nosanitize !13
  br label %bb.dc, !nosanitize !13

bb.dc:                                            ; preds = %bb.db, %bb.da
  %i.hh = load i16, ptr %i.gw, align 2, !tbaa !41 ; 2 uses
  %i.hi = icmp ult i16 %i.co, %i.hh
  br i1 %i.hi, label %bb.cn, label %.thread164

.loopexit:                                        ; preds = %zng_memread_4.exit.i153, %zng_memread_8.exit.i151, %zng_memread_2.exit.i149
  %.4116 = phi i16 [ %.1113, %zng_memread_2.exit.i149 ], [ %.2114, %zng_memread_8.exit.i151 ], [ %.3115, %zng_memread_4.exit.i153 ] ; 2 uses
  %.5 = phi i32 [ %.2105, %zng_memread_2.exit.i149 ], [ %.3106, %zng_memread_8.exit.i151 ], [ %.4107, %zng_memread_4.exit.i153 ] ; 2 uses
  br i1 %.not141, label %bb.dd, label %bb.de, !prof !14, !nosanitize !13

bb.dd:                                            ; preds = %.loopexit
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @47, i64 %.pre, i64 %i.cw) #5, !nosanitize !13
  br label %bb.de, !nosanitize !13

bb.de:                                            ; preds = %bb.dd, %.loopexit
  %i.hj = zext i16 %.4116 to i32                  ; 2 uses
  %i.hk = zext i16 %.4116 to i64                  ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.hk ; 3 uses
  %i.hm = add i64 %i.hk, %i.t, !nosanitize !13    ; 3 uses
  %i.hn = icmp eq i64 %i.hm, 0
  %i.ho = xor i1 %i.v, %i.hn
  %i.hp = icmp uge i64 %i.hm, %i.t, !nosanitize !13
  %i.hq = and i1 %i.hp, %i.ho, !nosanitize !13
  br i1 %i.hq, label %bb.dg, label %bb.df, !prof !16, !nosanitize !13

bb.df:                                            ; preds = %bb.de
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @48, i64 %i.t, i64 %i.hm) #5, !nosanitize !13
  br label %bb.dg, !nosanitize !13

bb.dg:                                            ; preds = %bb.df, %bb.de
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hl, i64 2
  %i.hs = ptrtoint ptr %i.hl to i64, !nosanitize !13 ; 2 uses
  %i.ht = add i64 %i.hs, 2, !nosanitize !13       ; 2 uses
  %i.hu = icmp eq i64 %i.ht, 0
  %i.hv = xor i1 %i.v, %i.hu
  %i.hw = icmp ult ptr %i.hl, inttoptr (i64 -2 to ptr)
  %i.hx = and i1 %i.hw, %i.hv, !nosanitize !13
  br i1 %i.hx, label %bb.di, label %bb.dh, !prof !16, !nosanitize !13

bb.dh:                                            ; preds = %bb.dg
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @49, i64 %i.hs, i64 %i.ht) #5, !nosanitize !13
  br label %bb.di, !nosanitize !13

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %i.hy = call fastcc i32 @compare256_avx512_static(ptr noundef nonnull %i.cv, ptr noundef nonnull %i.hr) ; 4 uses
  %i.hz = add nuw nsw i32 %i.hy, 2                ; 6 uses
  %i.ia = icmp ugt i32 %i.hz, %.0101
  br i1 %i.ia, label %bb.dj, label %bb.dq

bb.dj:                                            ; preds = %bb.di
  br i1 %i.e, label %bb.dl, label %bb.dk, !prof !16, !nosanitize !13

bb.dk:                                            ; preds = %bb.dj
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @50, i64 %i.b) #5, !nosanitize !13
  br label %bb.dl, !nosanitize !13

bb.dl:                                            ; preds = %bb.dj, %bb.dk
  store i32 %i.hj, ptr %i.cx, align 8, !tbaa !42
  %.not142 = icmp ult i32 %i.hz, %i.ag
  br i1 %.not142, label %bb.dm, label %.thread164

bb.dm:                                            ; preds = %bb.dl
  %.not143 = icmp ult i32 %i.hz, %i.bt
  br i1 %.not143, label %bb.dn, label %.thread164

bb.dn:                                            ; preds = %bb.dm
  %i.ib = icmp samesign ugt i32 %i.hy, 1
  %i.ic = icmp samesign ugt i32 %i.hy, 5
  %spec.select288.v = select i1 %i.ic, i32 -5, i32 -1
  %.1100.v = select i1 %i.ib, i32 %spec.select288.v, i32 1
  %.1100 = add nsw i32 %i.hy, %.1100.v
  %i.id = zext nneg i32 %.1100 to i64             ; 4 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.id
  %i.if = add i64 %.pre, %i.id, !nosanitize !13   ; 2 uses
  %.not144 = icmp ult i64 %i.if, %.pre, !nosanitize !13
  br i1 %.not144, label %bb.do, label %zng_memread_8.exit155, !prof !14, !nosanitize !13

bb.do:                                            ; preds = %bb.dn
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @51, i64 %.pre, i64 %i.if) #5, !nosanitize !13
  br label %zng_memread_8.exit155, !nosanitize !13

zng_memread_8.exit155:                            ; preds = %bb.dn, %bb.do
  %i.ig = load i64, ptr %i.ie, align 1, !tbaa !15 ; 3 uses
  %.sroa.0.sroa.0.0.extract.trunc220 = trunc i64 %i.ig to i16 ; 2 uses
  %.sroa.0.sroa.7.0.extract.shift224259 = lshr i64 %i.ig, 16
  %.sroa.0.sroa.7.0.extract.trunc225 = trunc i64 %.sroa.0.sroa.7.0.extract.shift224259 to i16 ; 2 uses
  %.sroa.7.0.extract.shift218 = lshr i64 %i.ig, 32
  %.sroa.7.0.extract.trunc219 = trunc nuw i64 %.sroa.7.0.extract.shift218 to i32 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.id ; 2 uses
  %i.ii = add i64 %i.id, %i.t, !nosanitize !13    ; 3 uses
  %i.ij = icmp eq i64 %i.ii, 0
  %i.ik = xor i1 %i.v, %i.ij
  %i.il = icmp uge i64 %i.ii, %i.t, !nosanitize !13
  %i.im = and i1 %i.il, %i.ik, !nosanitize !13
  br i1 %i.im, label %.thread158, label %bb.dp, !prof !16, !nosanitize !13

bb.dp:                                            ; preds = %zng_memread_8.exit155
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @52, i64 %i.t, i64 %i.ii) #5, !nosanitize !13
  br label %.thread158, !nosanitize !13

bb.dq:                                            ; preds = %bb.di
  br i1 %i.cr, label %.thread164, label %.thread158, !prof !43

.thread158:                                       ; preds = %zng_memread_8.exit155, %bb.dp, %bb.dq
  %.sroa.0.sroa.7.1 = phi i16 [ %.sroa.0.sroa.7.0.extract.trunc225, %zng_memread_8.exit155 ], [ %.sroa.0.sroa.7.0.extract.trunc225, %bb.dp ], [ %.sroa.0.sroa.7.0, %bb.dq ]
  %.sroa.0.sroa.0.1 = phi i16 [ %.sroa.0.sroa.0.0.extract.trunc220, %zng_memread_8.exit155 ], [ %.sroa.0.sroa.0.0.extract.trunc220, %bb.dp ], [ %.sroa.0.sroa.0.0, %bb.dq ]
  %.sroa.7.1 = phi i32 [ %.sroa.7.0.extract.trunc219, %zng_memread_8.exit155 ], [ %.sroa.7.0.extract.trunc219, %bb.dp ], [ %.sroa.7.0, %bb.dq ]
  %.2110 = phi ptr [ %i.ih, %zng_memread_8.exit155 ], [ %i.ih, %bb.dp ], [ %.0108, %bb.dq ]
  %.2 = phi i32 [ %i.hz, %zng_memread_8.exit155 ], [ %i.hz, %bb.dp ], [ %.0101, %bb.dq ] ; 3 uses
  %i.in = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %.5, i32 1), !nosanitize !13 ; 2 uses
  %i.io = extractvalue { i32, i1 } %i.in, 0, !nosanitize !13 ; 2 uses
  %i.ip = extractvalue { i32, i1 } %i.in, 1, !nosanitize !13
  br i1 %i.ip, label %bb.dr, label %bb.ds, !prof !14, !nosanitize !13

bb.dr:                                            ; preds = %.thread158
  %i.iq = zext nneg i32 %.5 to i64, !nosanitize !13
  call void @__ubsan_handle_sub_overflow(ptr nonnull @53, i64 %i.iq, i64 1) #6, !nosanitize !13
  br label %bb.ds, !nosanitize !13

bb.ds:                                            ; preds = %bb.dr, %.thread158
  %.not145 = icmp eq i32 %i.io, 0
  br i1 %.not145, label %.thread164, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.ir = and i32 %i.o, %i.hj
  %i.is = zext nneg i32 %i.ir to i64              ; 2 uses
  %i.it = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %i.is ; 2 uses
  %i.iu = shl nuw nsw i64 %i.is, 1
  %i.iv = add i64 %i.iu, %i.ct, !nosanitize !13   ; 3 uses
  %i.iw = icmp eq i64 %i.iv, 0
  %i.ix = xor i1 %i.cu, %i.iw
  %i.iy = icmp uge i64 %i.iv, %i.ct, !nosanitize !13
  %i.iz = and i1 %i.iy, %i.ix, !nosanitize !13
  br i1 %i.iz, label %bb.dv, label %bb.du, !prof !16, !nosanitize !13

bb.du:                                            ; preds = %bb.dt
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @54, i64 %i.ct, i64 %i.iv) #5, !nosanitize !13
  br label %bb.dv, !nosanitize !13

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %i.ja = ptrtoint ptr %i.it to i64, !nosanitize !13 ; 2 uses
  %i.jb = and i64 %i.ja, 1, !nosanitize !13
  %i.jc = icmp eq i64 %i.jb, 0, !nosanitize !13
  %i.jd = and i1 %i.cu, %i.jc
  br i1 %i.jd, label %bb.dx, label %bb.dw, !prof !16, !nosanitize !13

bb.dw:                                            ; preds = %bb.dv
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @55, i64 %i.ja) #5, !nosanitize !13
  br label %bb.dx, !nosanitize !13

bb.dx:                                            ; preds = %bb.dw, %bb.dv
  %i.je = load i16, ptr %i.it, align 2, !tbaa !41 ; 2 uses
  %i.jf = icmp ult i16 %i.co, %i.je
  br i1 %i.jf, label %bb.bg, label %.thread164

.thread164:                                       ; preds = %bb.dl, %bb.dm, %bb.ds, %bb.dx, %bb.dq, %bb.bg, %bb.cx, %bb.dc, %bb.ch, %bb.cm, %bb.bq, %bb.bv
  %.4123 = phi i32 [ %.0101, %bb.ch ], [ %.0101, %bb.cx ], [ %.0101, %bb.bq ], [ %.0101, %bb.bv ], [ %.0101, %bb.cm ], [ %.0101, %bb.dc ], [ %.0101, %bb.bg ], [ %.2, %bb.dx ], [ %i.hz, %bb.dm ], [ %.0101, %bb.dq ], [ %.2, %bb.ds ], [ %i.ag, %bb.dl ]
  ret i32 %.4123
}

; Function Attrs: uwtable
declare void @__ubsan_handle_type_mismatch_v1(ptr, i64) local_unnamed_addr #2

; Function Attrs: uwtable
declare void @__ubsan_handle_pointer_overflow(ptr, i64, i64) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) #3

; Function Attrs: uwtable
declare void @__ubsan_handle_sub_overflow(ptr, i64, i64) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #3

; Function Attrs: uwtable
declare void @__ubsan_handle_add_overflow(ptr, i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden i32 @longest_match_slow_avx512(ptr noundef %0, i16 noundef zeroext %1) local_unnamed_addr #0 !func_sanitize !17 {
bb.a:
  %i.a = icmp ne ptr %0, null, !nosanitize !13
  %i.b = ptrtoint ptr %0 to i64, !nosanitize !13  ; 24 uses
  %i.c = and i64 %i.b, 63, !nosanitize !13
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !13
  %i.e = and i1 %i.a, %i.d, !nosanitize !13       ; 23 uses
  br i1 %i.e, label %bb.c, label %bb.b, !prof !16, !nosanitize !13

bb.b:                                             ; preds = %bb.a
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @56, i64 %i.b) #5, !nosanitize !13
  br label %bb.c, !nosanitize !13

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  %i.g = ptrtoint ptr %i.f to i64, !nosanitize !13 ; 2 uses
  %i.h = and i64 %i.g, 3, !nosanitize !13
  %i.i = icmp eq i64 %i.h, 0, !nosanitize !13
  br i1 %i.i, label %bb.e, label %bb.d, !prof !16, !nosanitize !13

bb.d:                                             ; preds = %bb.c
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @57, i64 %i.g) #5, !nosanitize !13
  br label %bb.e, !nosanitize !13

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = load i32, ptr %i.f, align 4, !tbaa !31   ; 6 uses
  br i1 %i.e, label %bb.g, label %bb.f, !prof !16, !nosanitize !13

bb.f:                                             ; preds = %bb.e
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @58, i64 %i.b) #5, !nosanitize !13
  br label %bb.g, !nosanitize !13

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.l = ptrtoint ptr %i.k to i64, !nosanitize !13 ; 2 uses
  %i.m = and i64 %i.l, 7, !nosanitize !13
  %i.n = icmp eq i64 %i.m, 0, !nosanitize !13
  br i1 %i.n, label %bb.i, label %bb.h, !prof !16, !nosanitize !13

bb.h:                                             ; preds = %bb.g
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @59, i64 %i.l) #5, !nosanitize !13
  br label %bb.i, !nosanitize !13

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.o = load i32, ptr %i.k, align 8, !tbaa !32   ; 5 uses
  br i1 %i.e, label %bb.k, label %bb.j, !prof !16, !nosanitize !13

bb.j:                                             ; preds = %bb.i
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @60, i64 %i.b) #5, !nosanitize !13
  br label %bb.k, !nosanitize !13

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !33   ; 7 uses
  %i.r = zext i32 %i.j to i64                     ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.r ; 12 uses
  %i.t = ptrtoint ptr %i.q to i64, !nosanitize !13 ; 14 uses
  %i.u = add i64 %i.t, %i.r, !nosanitize !13      ; 3 uses
  %i.v = icmp ne ptr %i.q, null                   ; 12 uses
  %i.w = icmp eq i64 %i.u, 0
  %i.x = xor i1 %i.v, %i.w
  %i.y = icmp uge i64 %i.u, %i.t, !nosanitize !13
  %i.z = and i1 %i.y, %i.x, !nosanitize !13
  br i1 %i.z, label %bb.m, label %bb.l, !prof !16, !nosanitize !13

bb.l:                                             ; preds = %bb.k
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @61, i64 %i.t, i64 %i.u) #5, !nosanitize !13
  br label %bb.m, !nosanitize !13

bb.m:                                             ; preds = %bb.l, %bb.k
  br i1 %i.e, label %bb.o, label %bb.n, !prof !16, !nosanitize !13

bb.n:                                             ; preds = %bb.m
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @62, i64 %i.b) #5, !nosanitize !13
  br label %bb.o, !nosanitize !13

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ab = ptrtoint ptr %i.aa to i64, !nosanitize !13 ; 2 uses
  %i.ac = and i64 %i.ab, 31, !nosanitize !13
  %i.ad = icmp eq i64 %i.ac, 0, !nosanitize !13
  br i1 %i.ad, label %bb.q, label %bb.p, !prof !16, !nosanitize !13

bb.p:                                             ; preds = %bb.o
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @63, i64 %i.ab) #5, !nosanitize !13
  br label %bb.q, !nosanitize !13

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ae = load ptr, ptr %i.aa, align 32, !tbaa !34 ; 7 uses
  br i1 %i.e, label %bb.s, label %bb.r, !prof !16, !nosanitize !13

bb.r:                                             ; preds = %bb.q
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @64, i64 %i.b) #5, !nosanitize !13
  br label %bb.s, !nosanitize !13

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 3 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !35 ; 2 uses
  br i1 %i.e, label %bb.u, label %bb.t, !prof !16, !nosanitize !13

bb.t:                                             ; preds = %bb.s
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @65, i64 %i.b) #5, !nosanitize !13
  br label %bb.u, !nosanitize !13

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !36
  %.not = icmp eq i32 %i.ai, 0
  br i1 %.not, label %.thread290, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %i.e, label %bb.x, label %bb.w, !prof !16, !nosanitize !13

bb.w:                                             ; preds = %bb.v
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @66, i64 %i.b) #5, !nosanitize !13
  br label %bb.x, !nosanitize !13

bb.x:                                             ; preds = %bb.v, %bb.w
  %i.aj = load i32, ptr %i.ah, align 4, !tbaa !36 ; 8 uses
  %i.ak = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %i.aj, i32 1), !nosanitize !13 ; 2 uses
  %i.al = extractvalue { i32, i1 } %i.ak, 0, !nosanitize !13 ; 4 uses
  %i.am = extractvalue { i32, i1 } %i.ak, 1, !nosanitize !13
  br i1 %i.am, label %.thread, label %bb.y, !prof !14, !nosanitize !13

.thread:                                          ; preds = %bb.x
  %i.an = zext nneg i32 %i.aj to i64, !nosanitize !13
  call void @__ubsan_handle_sub_overflow(ptr nonnull @67, i64 %i.an, i64 1) #6, !nosanitize !13
  br label %.thread290

bb.y:                                             ; preds = %bb.x
  %i.ao = icmp ugt i32 %i.aj, 3
  br i1 %i.ao, label %bb.z, label %.thread290

bb.z:                                             ; preds = %bb.y
  %i.ap = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %i.al, i32 2), !nosanitize !13 ; 2 uses
  %i.aq = extractvalue { i32, i1 } %i.ap, 0, !nosanitize !13 ; 3 uses
  %i.ar = extractvalue { i32, i1 } %i.ap, 1, !nosanitize !13
  br i1 %i.ar, label %bb.aa, label %bb.ab, !prof !14, !nosanitize !13

bb.aa:                                            ; preds = %bb.z
  %i.as = zext nneg i32 %i.al to i64, !nosanitize !13
  call void @__ubsan_handle_sub_overflow(ptr nonnull @68, i64 %i.as, i64 2) #6, !nosanitize !13
  br label %bb.ab, !nosanitize !13

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.at = icmp ugt i32 %i.aj, 7
  br i1 %i.at, label %bb.ac, label %.thread290

bb.ac:                                            ; preds = %bb.ab
  %i.au = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %i.aq, i32 4), !nosanitize !13 ; 2 uses
  %i.av = extractvalue { i32, i1 } %i.au, 0, !nosanitize !13 ; 2 uses
  %i.aw = extractvalue { i32, i1 } %i.au, 1, !nosanitize !13
  br i1 %i.aw, label %bb.ad, label %.thread290, !prof !14, !nosanitize !13

bb.ad:                                            ; preds = %bb.ac
  %i.ax = zext nneg i32 %i.aq to i64, !nosanitize !13
  call void @__ubsan_handle_sub_overflow(ptr nonnull @69, i64 %i.ax, i64 4) #6, !nosanitize !13
  br label %.thread290, !nosanitize !13

.thread290:                                       ; preds = %bb.u, %.thread, %bb.ac, %bb.ad, %bb.ab, %bb.y
  %i.ay = phi i32 [ %i.aj, %bb.y ], [ %i.aj, %bb.ab ], [ %i.aj, %bb.ad ], [ %i.aj, %bb.ac ], [ 0, %.thread ], [ 2, %bb.u ] ; 6 uses
  %.0186 = phi i32 [ %i.al, %bb.y ], [ %i.aq, %bb.ab ], [ %i.av, %bb.ad ], [ %i.av, %bb.ac ], [ %i.al, %.thread ], [ 1, %bb.u ]
  %.pre = ptrtoint ptr %i.s to i64, !nosanitize !13 ; 20 uses
  br i1 %i.v, label %zng_memread_8.exit, label %bb.ae, !prof !16, !nosanitize !13

bb.ae:                                            ; preds = %.thread290
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @163, i64 %.pre) #5, !nosanitize !13
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @165, i64 %.pre) #5, !nosanitize !13
  br label %zng_memread_8.exit, !nosanitize !13

zng_memread_8.exit:                               ; preds = %.thread290, %bb.ae
  %i.az = load i64, ptr %i.s, align 1, !tbaa !15  ; 4 uses
  %.sroa.0.sroa.0431.0.extract.trunc = trunc i64 %i.az to i16
  %i.ba = zext i32 %.0186 to i64                  ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.ba
  %i.bc = add i64 %.pre, %i.ba, !nosanitize !13   ; 2 uses
  %i.bd = icmp uge i64 %i.bc, %.pre, !nosanitize !13
  %i.be = and i1 %i.v, %i.bd
  br i1 %i.be, label %zng_memread_8.exit281, label %bb.af, !prof !16, !nosanitize !13

bb.af:                                            ; preds = %zng_memread_8.exit
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @70, i64 %.pre, i64 %i.bc) #5, !nosanitize !13
  br label %zng_memread_8.exit281, !nosanitize !13

zng_memread_8.exit281:                            ; preds = %zng_memread_8.exit, %bb.af
  %i.bf = load i64, ptr %i.bb, align 1, !tbaa !15 ; 3 uses
  %.sroa.0.sroa.0.0.extract.trunc = trunc i64 %i.bf to i16
  %.sroa.0.sroa.7.0.extract.shift463 = lshr i64 %i.bf, 16
  %.sroa.0.sroa.7.0.extract.trunc = trunc i64 %.sroa.0.sroa.7.0.extract.shift463 to i16
  %.sroa.7.0.extract.shift = lshr i64 %i.bf, 32
  %.sroa.7.0.extract.trunc = trunc nuw i64 %.sroa.7.0.extract.shift to i32
  %i.bg = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ba ; 3 uses
  %i.bh = add i64 %i.ba, %i.t, !nosanitize !13    ; 3 uses
  %i.bi = icmp eq i64 %i.bh, 0
  %i.bj = xor i1 %i.v, %i.bi
  %i.bk = icmp uge i64 %i.bh, %i.t, !nosanitize !13
  %i.bl = and i1 %i.bk, %i.bj, !nosanitize !13
  br i1 %i.bl, label %bb.ah, label %bb.ag, !prof !16, !nosanitize !13

bb.ag:                                            ; preds = %zng_memread_8.exit281
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @71, i64 %i.t, i64 %i.bh) #5, !nosanitize !13
  br label %bb.ah, !nosanitize !13

bb.ah:                                            ; preds = %bb.ag, %zng_memread_8.exit281
  br i1 %i.e, label %bb.aj, label %bb.ai, !prof !16, !nosanitize !13

bb.ai:                                            ; preds = %bb.ah
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @72, i64 %i.b) #5, !nosanitize !13
  br label %bb.aj, !nosanitize !13

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bn = load i32, ptr %i.bm, align 16, !tbaa !37 ; 2 uses
  br i1 %i.e, label %bb.al, label %bb.ak, !prof !16, !nosanitize !13

bb.ak:                                            ; preds = %bb.aj
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @73, i64 %i.b) #5, !nosanitize !13
  br label %bb.al, !nosanitize !13

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !38
  %.not256 = icmp ult i32 %i.ay, %i.bp
  %i.bq = lshr i32 %i.bn, 2
  %spec.select = select i1 %.not256, i32 %i.bn, i32 %i.bq
  br i1 %i.e, label %bb.an, label %bb.am, !prof !16, !nosanitize !13

bb.am:                                            ; preds = %bb.al
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @74, i64 %i.b) #5, !nosanitize !13
  br label %bb.an, !nosanitize !13

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !39
  br i1 %i.e, label %bb.ap, label %bb.ao, !prof !16, !nosanitize !13

bb.ao:                                            ; preds = %bb.an
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @75, i64 %i.b) #5, !nosanitize !13
  br label %bb.ap, !nosanitize !13

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.bu = ptrtoint ptr %i.bt to i64, !nosanitize !13 ; 3 uses
  %i.bv = and i64 %i.bu, 63, !nosanitize !13
  %i.bw = icmp eq i64 %i.bv, 0, !nosanitize !13   ; 2 uses
  br i1 %i.bw, label %bb.ar, label %bb.aq, !prof !16, !nosanitize !13

bb.aq:                                            ; preds = %bb.ap
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @76, i64 %i.bu) #5, !nosanitize !13
  br label %bb.ar, !nosanitize !13

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.bx = load i32, ptr %i.bt, align 64, !tbaa !40 ; 2 uses
  %i.by = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %i.bx, i32 262), !nosanitize !13 ; 2 uses
  %i.bz = extractvalue { i32, i1 } %i.by, 0, !nosanitize !13
  %i.ca = extractvalue { i32, i1 } %i.by, 1, !nosanitize !13
  br i1 %i.ca, label %bb.as, label %bb.at, !prof !14, !nosanitize !13

bb.as:                                            ; preds = %bb.ar
  %i.cb = zext nneg i32 %i.bx to i64, !nosanitize !13
  call void @__ubsan_handle_sub_overflow(ptr nonnull @77, i64 %i.cb, i64 262) #6, !nosanitize !13
  br label %bb.at, !nosanitize !13

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.cc = icmp ugt i32 %i.j, %i.bz
  br i1 %i.cc, label %bb.au, label %bb.bd

bb.au:                                            ; preds = %bb.at
  br i1 %i.e, label %bb.aw, label %bb.av, !prof !16, !nosanitize !13

bb.av:                                            ; preds = %bb.au
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @78, i64 %i.b) #5, !nosanitize !13
  br label %bb.aw, !nosanitize !13

bb.aw:                                            ; preds = %bb.av, %bb.au
  br i1 %i.bw, label %bb.ay, label %bb.ax, !prof !16, !nosanitize !13

bb.ax:                                            ; preds = %bb.aw
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @79, i64 %i.bu) #5, !nosanitize !13
  br label %bb.ay, !nosanitize !13

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.cd = load i32, ptr %i.bt, align 64, !tbaa !40 ; 2 uses
  %i.ce = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %i.cd, i32 262), !nosanitize !13 ; 2 uses
  %i.cf = extractvalue { i32, i1 } %i.ce, 0, !nosanitize !13 ; 2 uses
  %i.cg = extractvalue { i32, i1 } %i.ce, 1, !nosanitize !13
  br i1 %i.cg, label %bb.az, label %bb.ba, !prof !14, !nosanitize !13

bb.az:                                            ; preds = %bb.ay
  %i.ch = zext nneg i32 %i.cd to i64, !nosanitize !13
  call void @__ubsan_handle_sub_overflow(ptr nonnull @80, i64 %i.ch, i64 262) #6, !nosanitize !13
  br label %bb.ba, !nosanitize !13

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.ci = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %i.j, i32 %i.cf), !nosanitize !13 ; 2 uses
  %i.cj = extractvalue { i32, i1 } %i.ci, 0, !nosanitize !13
  %i.ck = extractvalue { i32, i1 } %i.ci, 1, !nosanitize !13
  br i1 %i.ck, label %bb.bb, label %bb.bc, !prof !14, !nosanitize !13

bb.bb:                                            ; preds = %bb.ba
  %i.cl = zext i32 %i.cf to i64, !nosanitize !13
  call void @__ubsan_handle_sub_overflow(ptr nonnull @81, i64 %i.r, i64 %i.cl) #6, !nosanitize !13
  br label %bb.bc, !nosanitize !13

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.cm = trunc i32 %i.cj to i16
  br label %bb.bd

bb.bd:                                            ; preds = %bb.at, %bb.bc
  %i.cn = phi i16 [ %i.cm, %bb.bc ], [ 0, %bb.at ] ; 5 uses
  %i.co = icmp ugt i32 %i.ay, 2
  br i1 %i.co, label %bb.be, label %.thread291

bb.be:                                            ; preds = %bb.bd
  br i1 %i.e, label %bb.bg, label %bb.bf, !prof !16, !nosanitize !13

bb.bf:                                            ; preds = %bb.be
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @82, i64 %i.b) #5, !nosanitize !13
  br label %bb.bg, !nosanitize !13

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !47 ; 4 uses
  %i.cr = getelementptr i8, ptr %i.cq, i64 -8
  %i.cs = load i32, ptr %i.cr, align 4, !nosanitize !13
  %i.ct = icmp eq i32 %i.cs, -1056584962, !nosanitize !13
  br i1 %i.ct, label %bb.bh, label %bb.bj, !nosanitize !13

bb.bh:                                            ; preds = %bb.bg
  %i.cu = getelementptr i8, ptr %i.cq, i64 -4
  %i.cv = load i32, ptr %i.cu, align 8, !nosanitize !13
  %i.cw = icmp eq i32 %i.cv, -455559067, !nosanitize !13
  br i1 %i.cw, label %bb.bj, label %bb.bi, !prof !16, !nosanitize !13

bb.bi:                                            ; preds = %bb.bh
  %i.cx = ptrtoint ptr %i.cq to i64, !nosanitize !13
  call void @__ubsan_handle_function_type_mismatch(ptr nonnull @84, i64 %i.cx) #5, !nosanitize !13
  br label %bb.bj, !nosanitize !13

bb.bj:                                            ; preds = %bb.bh, %bb.bi, %bb.bg
  %i.cy = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.cz = add i64 %.pre, 1, !nosanitize !13       ; 2 uses
  %i.da = icmp eq i64 %i.cz, 0
  %i.db = xor i1 %i.v, %i.da
  %i.dc = icmp ne ptr %i.s, inttoptr (i64 -1 to ptr)
  %i.dd = and i1 %i.dc, %i.db, !nosanitize !13
  br i1 %i.dd, label %bb.bl, label %bb.bk, !prof !16, !nosanitize !13

bb.bk:                                            ; preds = %bb.bj
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @85, i64 %.pre, i64 %i.cz) #5, !nosanitize !13
  br label %bb.bl, !nosanitize !13

bb.bl:                                            ; preds = %bb.bj, %bb.bk
  %i.de = load i8, ptr %i.cy, align 1, !tbaa !15
  %i.df = zext i8 %i.de to i32
  %i.dg = call i32 %i.cq(i32 noundef 0, i32 noundef %i.df) #5
  br i1 %i.e, label %bb.bn, label %bb.bm, !prof !16, !nosanitize !13

bb.bm:                                            ; preds = %bb.bl
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @87, i64 %i.b) #5, !nosanitize !13
  br label %bb.bn, !nosanitize !13

bb.bn:                                            ; preds = %bb.bl, %bb.bm
  %i.dh = load ptr, ptr %i.cp, align 8, !tbaa !47 ; 4 uses
  %i.di = getelementptr i8, ptr %i.dh, i64 -8
  %i.dj = load i32, ptr %i.di, align 4, !nosanitize !13
  %i.dk = icmp eq i32 %i.dj, -1056584962, !nosanitize !13
  br i1 %i.dk, label %bb.bo, label %bb.bq, !nosanitize !13
end_hunk_0
begin_hunk_1_@longest_match_slow_avx512:bb.a
  %i.ei = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.eh ; 2 uses
  %i.ej = add i64 %.pre, %i.eh, !nosanitize !13   ; 2 uses
  %i.ek = icmp uge i64 %i.ej, %.pre, !nosanitize !13
  %i.el = and i1 %i.v, %i.ek
  br i1 %i.el, label %bb.bz, label %bb.by, !prof !16, !nosanitize !13

bb.by:                                            ; preds = %bb.bx
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @92, i64 %.pre, i64 %i.ej) #5, !nosanitize !13
  br label %bb.bz, !nosanitize !13

bb.bz:                                            ; preds = %bb.by, %bb.bx
  br i1 %i.v, label %bb.cb, label %bb.ca, !prof !16, !nosanitize !13

bb.ca:                                            ; preds = %bb.bz
  %i.em = ptrtoint ptr %i.ei to i64, !nosanitize !13
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @93, i64 %i.em) #5, !nosanitize !13
  br label %bb.cb, !nosanitize !13

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %i.en = load i8, ptr %i.ei, align 1, !tbaa !15
  %i.eo = zext i8 %i.en to i32
  %i.ep = call i32 %i.dz(i32 noundef %.0180369, i32 noundef %i.eo) #5 ; 2 uses
  br i1 %i.e, label %bb.cd, label %bb.cc, !prof !16, !nosanitize !13

bb.cc:                                            ; preds = %bb.cb
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @94, i64 %i.b) #5, !nosanitize !13
  br label %bb.cd, !nosanitize !13

bb.cd:                                            ; preds = %bb.cb, %bb.cc
  %i.eq = load ptr, ptr %i.dy, align 8, !tbaa !48 ; 3 uses
  %i.er = zext i32 %i.ep to i64                   ; 2 uses
  %i.es = getelementptr inbounds nuw [2 x i8], ptr %i.eq, i64 %i.er ; 2 uses
  %i.et = shl nuw nsw i64 %i.er, 1
  %i.eu = ptrtoint ptr %i.eq to i64, !nosanitize !13 ; 3 uses
  %i.ev = add i64 %i.et, %i.eu, !nosanitize !13   ; 3 uses
  %i.ew = icmp ne ptr %i.eq, null, !nosanitize !13 ; 2 uses
  %i.ex = icmp eq i64 %i.ev, 0
  %i.ey = xor i1 %i.ew, %i.ex
  %i.ez = icmp uge i64 %i.ev, %i.eu, !nosanitize !13
  %i.fa = and i1 %i.ez, %i.ey, !nosanitize !13
  br i1 %i.fa, label %bb.cf, label %bb.ce, !prof !16, !nosanitize !13

bb.ce:                                            ; preds = %bb.cd
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @95, i64 %i.eu, i64 %i.ev) #5, !nosanitize !13
  br label %bb.cf, !nosanitize !13

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %i.fb = ptrtoint ptr %i.es to i64, !nosanitize !13 ; 2 uses
  %i.fc = and i64 %i.fb, 1, !nosanitize !13
  %i.fd = icmp eq i64 %i.fc, 0, !nosanitize !13
  %i.fe = and i1 %i.ew, %i.fd
  br i1 %i.fe, label %bb.ch, label %bb.cg, !prof !16, !nosanitize !13

bb.cg:                                            ; preds = %bb.cf
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @97, i64 %i.fb) #5, !nosanitize !13
  br label %bb.ch, !nosanitize !13

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %i.ff = load i16, ptr %i.es, align 2, !tbaa !41 ; 2 uses
  %i.fg = icmp ult i16 %i.ff, %.0220366
  br i1 %i.fg, label %bb.ci, label %bb.cl

bb.ci:                                            ; preds = %bb.ch
  %i.fh = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %.0181368, i32 2), !nosanitize !13 ; 2 uses
  %i.fi = extractvalue { i32, i1 } %i.fh, 0, !nosanitize !13
  %i.fj = extractvalue { i32, i1 } %i.fh, 1, !nosanitize !13
  br i1 %i.fj, label %bb.cj, label %bb.ck, !prof !14, !nosanitize !13

bb.cj:                                            ; preds = %bb.ci
  call void @__ubsan_handle_sub_overflow(ptr nonnull @98, i64 %i.eh, i64 2) #6, !nosanitize !13
  br label %bb.ck, !nosanitize !13

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.fk = trunc i32 %i.fi to i16
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ch, %bb.ck
  %.1221 = phi i16 [ %i.ff, %bb.ck ], [ %.0220366, %bb.ch ] ; 4 uses
  %.1183 = phi i16 [ %i.fk, %bb.ck ], [ %.0182367, %bb.ch ] ; 6 uses
  %i.fl = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.0181368, i32 1), !nosanitize !13 ; 2 uses
  %i.fm = extractvalue { i32, i1 } %i.fl, 0, !nosanitize !13 ; 2 uses
  %i.fn = extractvalue { i32, i1 } %i.fl, 1, !nosanitize !13
  br i1 %i.fn, label %bb.cm, label %bb.cn, !prof !14, !nosanitize !13

bb.cm:                                            ; preds = %bb.cl
  call void @__ubsan_handle_add_overflow(ptr nonnull @99, i64 %i.eh, i64 1) #6, !nosanitize !13
  br label %bb.cn, !nosanitize !13

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %.not259 = icmp ugt i32 %i.fm, %i.ay
  br i1 %.not259, label %._crit_edge, label %bb.bs, !llvm.loop !45

._crit_edge:                                      ; preds = %bb.cn
  %i.fo = add i16 %.1183, %i.cn                   ; 3 uses
  %.not260 = icmp ugt i16 %.1221, %i.fo
  br i1 %.not260, label %bb.co, label %.thread296.thread327

bb.co:                                            ; preds = %._crit_edge
  %i.fp = zext i16 %.1183 to i64                  ; 5 uses
  %i.fq = sub nsw i64 0, %i.fp                    ; 2 uses
  %i.fr = getelementptr inbounds i8, ptr %i.q, i64 %i.fq ; 2 uses
  %i.fs = sub i64 %i.t, %i.fp                     ; 2 uses
  %i.ft = icmp eq i64 %i.t, %i.fp
  %i.fu = xor i1 %i.v, %i.ft
  %i.fv = icmp eq i16 %.1183, 0                   ; 2 uses
  %i.fw = icmp ult i64 %i.fs, %i.t, !nosanitize !13
  %i.fx = or i1 %i.fv, %i.fw
  %i.fy = and i1 %i.fu, %i.fx, !nosanitize !13
  br i1 %i.fy, label %bb.cq, label %bb.cp, !prof !16, !nosanitize !13

bb.cp:                                            ; preds = %bb.co
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @100, i64 %i.t, i64 %i.fs) #5, !nosanitize !13
  br label %bb.cq, !nosanitize !13

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %i.fz = getelementptr inbounds i8, ptr %i.bg, i64 %i.fq ; 2 uses
  %i.ga = ptrtoint ptr %i.bg to i64, !nosanitize !13 ; 4 uses
  %i.gb = sub i64 %i.ga, %i.fp                    ; 2 uses
  %i.gc = icmp eq i64 %i.ga, %i.fp
  %i.gd = xor i1 %i.v, %i.gc
  %i.ge = icmp ult i64 %i.gb, %i.ga, !nosanitize !13
  %i.gf = or i1 %i.fv, %i.ge
  %i.gg = and i1 %i.gd, %i.gf, !nosanitize !13
  br i1 %i.gg, label %.thread291, label %bb.cr, !prof !16, !nosanitize !13

bb.cr:                                            ; preds = %bb.cq
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @101, i64 %i.ga, i64 %i.gb) #5, !nosanitize !13
  br label %.thread291, !nosanitize !13

.thread291:                                       ; preds = %bb.cq, %bb.cr, %bb.bd
  %.2222 = phi i16 [ %1, %bb.bd ], [ %.1221, %bb.cr ], [ %.1221, %bb.cq ] ; 2 uses
  %.1214 = phi ptr [ %i.q, %bb.bd ], [ %i.fr, %bb.cr ], [ %i.fr, %bb.cq ]
  %.1207 = phi ptr [ %i.bg, %bb.bd ], [ %i.fz, %bb.cr ], [ %i.fz, %bb.cq ]
  %.0200 = phi i16 [ %i.cn, %bb.bd ], [ %i.fo, %bb.cr ], [ %i.fo, %bb.cq ]
  %.2184 = phi i16 [ 0, %bb.bd ], [ %.1183, %bb.cr ], [ %.1183, %bb.cq ]
  %i.gh = zext i16 %.2222 to i32
  %.not261371 = icmp ugt i32 %i.j, %i.gh
  br i1 %.not261371, label %.lr.ph379, label %.thread307

.lr.ph379:                                        ; preds = %.thread291
  %i.gi = ptrtoint ptr %i.ae to i64               ; 15 uses
  %i.gj = icmp ne ptr %i.ae, null                 ; 10 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  %.not265 = icmp ugt ptr %i.s, inttoptr (i64 -3 to ptr)
  %i.gl = add i64 %.pre, 2
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.gn = zext i16 %i.cn to i32                   ; 2 uses
  %i.go = zext i16 %i.cn to i64
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.gr = trunc i64 %i.az to i32
  %.sroa.0.sroa.6.0.insert.ext = and i32 %i.gr, -65536
  %i.gs = trunc i64 %i.az to i32
  %.sroa.0.sroa.0431.0.insert.ext = and i32 %i.gs, 65535
  %.sroa.0.sroa.0431.0.insert.insert = or disjoint i32 %.sroa.0.sroa.6.0.insert.ext, %.sroa.0.sroa.0431.0.insert.ext
  br label %bb.cs

bb.cs:                                            ; preds = %.lr.ph379, %.thread296
  %.sroa.0.sroa.7.0 = phi i16 [ %.sroa.0.sroa.7.0.extract.trunc, %.lr.ph379 ], [ %.sroa.0.sroa.7.2, %.thread296 ] ; 3 uses
  %.sroa.0.sroa.0.0 = phi i16 [ %.sroa.0.sroa.0.0.extract.trunc, %.lr.ph379 ], [ %.sroa.0.sroa.0.2, %.thread296 ] ; 4 uses
  %.sroa.7.0 = phi i32 [ %.sroa.7.0.extract.trunc, %.lr.ph379 ], [ %.sroa.7.2, %.thread296 ] ; 2 uses
  %.3185378 = phi i16 [ %.2184, %.lr.ph379 ], [ %.10, %.thread296 ] ; 3 uses
  %.0188377 = phi i32 [ %i.ay, %.lr.ph379 ], [ %.3191, %.thread296 ] ; 10 uses
  %.1194376 = phi i32 [ %spec.select, %.lr.ph379 ], [ %.6199, %.thread296 ] ; 3 uses
  %.1201375 = phi i16 [ %.0200, %.lr.ph379 ], [ %.5205, %.thread296 ] ; 5 uses
  %.2208374 = phi ptr [ %.1207, %.lr.ph379 ], [ %.6212, %.thread296 ] ; 8 uses
  %.2215373 = phi ptr [ %.1214, %.lr.ph379 ], [ %.6219, %.thread296 ] ; 13 uses
  %.3223372 = phi i16 [ %.2222, %.lr.ph379 ], [ %.13, %.thread296 ] ; 3 uses
  %i.gt = icmp ult i32 %.0188377, 4
  br i1 %i.gt, label %.preheader, label %bb.dj

.preheader:                                       ; preds = %bb.cs
  %i.gu = ptrtoint ptr %.2208374 to i64, !nosanitize !13 ; 3 uses
  %i.gv = icmp ne ptr %.2208374, null             ; 2 uses
  %i.gw = ptrtoint ptr %.2215373 to i64           ; 3 uses
  %i.gx = icmp ne ptr %.2215373, null             ; 2 uses
  br label %bb.ct

bb.ct:                                            ; preds = %.preheader, %bb.di
  %.4224 = phi i16 [ %i.ih, %bb.di ], [ %.3223372, %.preheader ] ; 3 uses
  %.2195 = phi i32 [ %i.hr, %bb.di ], [ %.1194376, %.preheader ] ; 3 uses
  %i.gy = zext i16 %.4224 to i32
  %i.gz = zext i16 %.4224 to i64                  ; 4 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.2208374, i64 %i.gz ; 2 uses
  %i.hb = add i64 %i.gz, %i.gu, !nosanitize !13   ; 3 uses
  %i.hc = icmp eq i64 %i.hb, 0
  %i.hd = xor i1 %i.gv, %i.hc
  %i.he = icmp uge i64 %i.hb, %i.gu, !nosanitize !13
  %i.hf = and i1 %i.he, %i.hd, !nosanitize !13
  br i1 %i.hf, label %bb.cv, label %bb.cu, !prof !16, !nosanitize !13

bb.cu:                                            ; preds = %bb.ct
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @102, i64 %i.gu, i64 %i.hb) #5, !nosanitize !13
  br label %bb.cv, !nosanitize !13

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  br i1 %i.gv, label %zng_memread_2.exit.i, label %bb.cw, !prof !16, !nosanitize !13

bb.cw:                                            ; preds = %bb.cv
  %i.hg = ptrtoint ptr %i.ha to i64, !nosanitize !13 ; 2 uses
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @167, i64 %i.hg) #5, !nosanitize !13
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @169, i64 %i.hg) #5, !nosanitize !13
  br label %zng_memread_2.exit.i, !nosanitize !13

zng_memread_2.exit.i:                             ; preds = %bb.cw, %bb.cv
  %i.hh = load i16, ptr %i.ha, align 1, !tbaa !15
  %.not341 = icmp eq i16 %i.hh, %.sroa.0.sroa.0.0
  br i1 %.not341, label %bb.cx, label %bb.db

bb.cx:                                            ; preds = %zng_memread_2.exit.i
  %i.hi = getelementptr inbounds nuw i8, ptr %.2215373, i64 %i.gz ; 2 uses
  %i.hj = add i64 %i.gz, %i.gw, !nosanitize !13   ; 3 uses
  %i.hk = icmp eq i64 %i.hj, 0
  %i.hl = xor i1 %i.gx, %i.hk
  %i.hm = icmp uge i64 %i.hj, %i.gw, !nosanitize !13
  %i.hn = and i1 %i.hm, %i.hl, !nosanitize !13
  br i1 %i.hn, label %bb.cz, label %bb.cy, !prof !16, !nosanitize !13

bb.cy:                                            ; preds = %bb.cx
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @103, i64 %i.gw, i64 %i.hj) #5, !nosanitize !13
  br label %bb.cz, !nosanitize !13

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  br i1 %i.gx, label %zng_memread_2.exit.i282, label %bb.da, !prof !16, !nosanitize !13

bb.da:                                            ; preds = %bb.cz
  %i.ho = ptrtoint ptr %i.hi to i64, !nosanitize !13 ; 2 uses
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @167, i64 %i.ho) #5, !nosanitize !13
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @169, i64 %i.ho) #5, !nosanitize !13
  br label %zng_memread_2.exit.i282, !nosanitize !13

zng_memread_2.exit.i282:                          ; preds = %bb.da, %bb.cz
  %i.hp = load i16, ptr %i.hi, align 1, !tbaa !15
  %.not342 = icmp eq i16 %i.hp, %.sroa.0.sroa.0431.0.extract.trunc
  br i1 %.not342, label %.loopexit, label %bb.db

bb.db:                                            ; preds = %zng_memread_2.exit.i282, %zng_memread_2.exit.i
  %i.hq = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %.2195, i32 1), !nosanitize !13 ; 2 uses
  %i.hr = extractvalue { i32, i1 } %i.hq, 0, !nosanitize !13 ; 2 uses
  %i.hs = extractvalue { i32, i1 } %i.hq, 1, !nosanitize !13
  br i1 %i.hs, label %bb.dc, label %bb.dd, !prof !14, !nosanitize !13

bb.dc:                                            ; preds = %bb.db
  %i.ht = zext nneg i32 %.2195 to i64, !nosanitize !13
  call void @__ubsan_handle_sub_overflow(ptr nonnull @104, i64 %i.ht, i64 1) #6, !nosanitize !13
  br label %bb.dd, !nosanitize !13

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %.not264 = icmp eq i32 %i.hr, 0
  br i1 %.not264, label %.thread307, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.hu = and i32 %i.o, %i.gy
  %i.hv = zext nneg i32 %i.hu to i64              ; 2 uses
  %i.hw = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %i.hv ; 2 uses
  %i.hx = shl nuw nsw i64 %i.hv, 1
  %i.hy = add i64 %i.hx, %i.gi, !nosanitize !13   ; 3 uses
  %i.hz = icmp eq i64 %i.hy, 0
  %i.ia = xor i1 %i.gj, %i.hz
  %i.ib = icmp uge i64 %i.hy, %i.gi, !nosanitize !13
  %i.ic = and i1 %i.ib, %i.ia, !nosanitize !13
  br i1 %i.ic, label %bb.dg, label %bb.df, !prof !16, !nosanitize !13

bb.df:                                            ; preds = %bb.de
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @105, i64 %i.gi, i64 %i.hy) #5, !nosanitize !13
  br label %bb.dg, !nosanitize !13

bb.dg:                                            ; preds = %bb.df, %bb.de
  %i.id = ptrtoint ptr %i.hw to i64, !nosanitize !13 ; 2 uses
  %i.ie = and i64 %i.id, 1, !nosanitize !13
  %i.if = icmp eq i64 %i.ie, 0, !nosanitize !13
  %i.ig = and i1 %i.gj, %i.if
  br i1 %i.ig, label %bb.di, label %bb.dh, !prof !16, !nosanitize !13

bb.dh:                                            ; preds = %bb.dg
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @106, i64 %i.id) #5, !nosanitize !13
  br label %bb.di, !nosanitize !13

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %i.ih = load i16, ptr %i.hw, align 2, !tbaa !41 ; 2 uses
  %i.ii = icmp ugt i16 %i.ih, %.1201375
  br i1 %i.ii, label %bb.ct, label %.thread307

bb.dj:                                            ; preds = %bb.cs
  %i.ij = icmp ugt i32 %.0188377, 7
  %i.ik = ptrtoint ptr %.2208374 to i64, !nosanitize !13 ; 6 uses
  %i.il = icmp ne ptr %.2208374, null             ; 4 uses
  br i1 %i.ij, label %.preheader343, label %.preheader346

.preheader346:                                    ; preds = %bb.dj
  %.sroa.0.sroa.7.0.insert.ext = zext i16 %.sroa.0.sroa.7.0 to i32
  %.sroa.0.sroa.7.0.insert.shift = shl nuw i32 %.sroa.0.sroa.7.0.insert.ext, 16
  %.sroa.0.sroa.0.0.insert.ext = zext i16 %.sroa.0.sroa.0.0 to i32
  %.sroa.0.sroa.0.0.insert.insert = or disjoint i32 %.sroa.0.sroa.7.0.insert.shift, %.sroa.0.sroa.0.0.insert.ext
  %i.im = ptrtoint ptr %.2215373 to i64           ; 3 uses
  %i.in = icmp ne ptr %.2215373, null             ; 2 uses
  br label %bb.ea

.preheader343:                                    ; preds = %bb.dj
  %.sroa.0.sroa.7.0.insert.ext421 = zext i16 %.sroa.0.sroa.7.0 to i64
  %.sroa.0.sroa.7.0.insert.shift422 = shl nuw nsw i64 %.sroa.0.sroa.7.0.insert.ext421, 16
  %.sroa.0.sroa.0.0.insert.ext416 = zext i16 %.sroa.0.sroa.0.0 to i64
  %.sroa.0.sroa.0.0.insert.insert418 = or disjoint i64 %.sroa.0.sroa.7.0.insert.shift422, %.sroa.0.sroa.0.0.insert.ext416
  %.sroa.7.0.insert.ext = zext i32 %.sroa.7.0 to i64
  %.sroa.7.0.insert.shift = shl nuw i64 %.sroa.7.0.insert.ext, 32
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.7.0.insert.shift, %.sroa.0.sroa.0.0.insert.insert418
  %i.io = ptrtoint ptr %.2215373 to i64           ; 3 uses
  %i.ip = icmp ne ptr %.2215373, null             ; 2 uses
  br label %bb.dk

bb.dk:                                            ; preds = %.preheader343, %bb.dz
  %.5225 = phi i16 [ %i.jz, %bb.dz ], [ %.3223372, %.preheader343 ] ; 3 uses
  %.3196 = phi i32 [ %i.jj, %bb.dz ], [ %.1194376, %.preheader343 ] ; 3 uses
  %i.iq = zext i16 %.5225 to i32
  %i.ir = zext i16 %.5225 to i64                  ; 4 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.2208374, i64 %i.ir ; 2 uses
  %i.it = add i64 %i.ir, %i.ik, !nosanitize !13   ; 3 uses
  %i.iu = icmp eq i64 %i.it, 0
  %i.iv = xor i1 %i.il, %i.iu
  %i.iw = icmp uge i64 %i.it, %i.ik, !nosanitize !13
  %i.ix = and i1 %i.iw, %i.iv, !nosanitize !13
  br i1 %i.ix, label %bb.dm, label %bb.dl, !prof !16, !nosanitize !13

bb.dl:                                            ; preds = %bb.dk
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @107, i64 %i.ik, i64 %i.it) #5, !nosanitize !13
  br label %bb.dm, !nosanitize !13

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  br i1 %i.il, label %zng_memread_8.exit.i, label %bb.dn, !prof !16, !nosanitize !13

bb.dn:                                            ; preds = %bb.dm
  %i.iy = ptrtoint ptr %i.is to i64, !nosanitize !13 ; 2 uses
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @163, i64 %i.iy) #5, !nosanitize !13
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @165, i64 %i.iy) #5, !nosanitize !13
  br label %zng_memread_8.exit.i, !nosanitize !13

zng_memread_8.exit.i:                             ; preds = %bb.dn, %bb.dm
  %i.iz = load i64, ptr %i.is, align 1, !tbaa !15
  %.not339 = icmp eq i64 %i.iz, %.sroa.0.0.insert.insert
  br i1 %.not339, label %bb.do, label %bb.ds

bb.do:                                            ; preds = %zng_memread_8.exit.i
  %i.ja = getelementptr inbounds nuw i8, ptr %.2215373, i64 %i.ir ; 2 uses
  %i.jb = add i64 %i.ir, %i.io, !nosanitize !13   ; 3 uses
  %i.jc = icmp eq i64 %i.jb, 0
  %i.jd = xor i1 %i.ip, %i.jc
  %i.je = icmp uge i64 %i.jb, %i.io, !nosanitize !13
  %i.jf = and i1 %i.je, %i.jd, !nosanitize !13
  br i1 %i.jf, label %bb.dq, label %bb.dp, !prof !16, !nosanitize !13

bb.dp:                                            ; preds = %bb.do
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @108, i64 %i.io, i64 %i.jb) #5, !nosanitize !13
  br label %bb.dq, !nosanitize !13

bb.dq:                                            ; preds = %bb.dp, %bb.do
  br i1 %i.ip, label %zng_memread_8.exit.i284, label %bb.dr, !prof !16, !nosanitize !13

bb.dr:                                            ; preds = %bb.dq
  %i.jg = ptrtoint ptr %i.ja to i64, !nosanitize !13 ; 2 uses
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @163, i64 %i.jg) #5, !nosanitize !13
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @165, i64 %i.jg) #5, !nosanitize !13
  br label %zng_memread_8.exit.i284, !nosanitize !13

zng_memread_8.exit.i284:                          ; preds = %bb.dr, %bb.dq
  %i.jh = load i64, ptr %i.ja, align 1, !tbaa !15
  %.not340 = icmp eq i64 %i.jh, %i.az
  br i1 %.not340, label %.loopexit, label %bb.ds

bb.ds:                                            ; preds = %zng_memread_8.exit.i284, %zng_memread_8.exit.i
  %i.ji = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %.3196, i32 1), !nosanitize !13 ; 2 uses
  %i.jj = extractvalue { i32, i1 } %i.ji, 0, !nosanitize !13 ; 2 uses
  %i.jk = extractvalue { i32, i1 } %i.ji, 1, !nosanitize !13
  br i1 %i.jk, label %bb.dt, label %bb.du, !prof !14, !nosanitize !13

bb.dt:                                            ; preds = %bb.ds
  %i.jl = zext nneg i32 %.3196 to i64, !nosanitize !13
  call void @__ubsan_handle_sub_overflow(ptr nonnull @109, i64 %i.jl, i64 1) #6, !nosanitize !13
  br label %bb.du, !nosanitize !13

bb.du:                                            ; preds = %bb.dt, %bb.ds
  %.not263 = icmp eq i32 %i.jj, 0
  br i1 %.not263, label %.thread307, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.jm = and i32 %i.o, %i.iq
  %i.jn = zext nneg i32 %i.jm to i64              ; 2 uses
  %i.jo = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %i.jn ; 2 uses
  %i.jp = shl nuw nsw i64 %i.jn, 1
  %i.jq = add i64 %i.jp, %i.gi, !nosanitize !13   ; 3 uses
  %i.jr = icmp eq i64 %i.jq, 0
  %i.js = xor i1 %i.gj, %i.jr
  %i.jt = icmp uge i64 %i.jq, %i.gi, !nosanitize !13
  %i.ju = and i1 %i.jt, %i.js, !nosanitize !13
  br i1 %i.ju, label %bb.dx, label %bb.dw, !prof !16, !nosanitize !13

bb.dw:                                            ; preds = %bb.dv
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @110, i64 %i.gi, i64 %i.jq) #5, !nosanitize !13
  br label %bb.dx, !nosanitize !13

bb.dx:                                            ; preds = %bb.dw, %bb.dv
  %i.jv = ptrtoint ptr %i.jo to i64, !nosanitize !13 ; 2 uses
  %i.jw = and i64 %i.jv, 1, !nosanitize !13
  %i.jx = icmp eq i64 %i.jw, 0, !nosanitize !13
  %i.jy = and i1 %i.gj, %i.jx
  br i1 %i.jy, label %bb.dz, label %bb.dy, !prof !16, !nosanitize !13

bb.dy:                                            ; preds = %bb.dx
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @111, i64 %i.jv) #5, !nosanitize !13
  br label %bb.dz, !nosanitize !13

bb.dz:                                            ; preds = %bb.dy, %bb.dx
  %i.jz = load i16, ptr %i.jo, align 2, !tbaa !41 ; 2 uses
  %i.ka = icmp ugt i16 %i.jz, %.1201375
  br i1 %i.ka, label %bb.dk, label %.thread307

bb.ea:                                            ; preds = %.preheader346, %bb.ep
  %.6226 = phi i16 [ %i.lk, %bb.ep ], [ %.3223372, %.preheader346 ] ; 3 uses
  %.4197 = phi i32 [ %i.ku, %bb.ep ], [ %.1194376, %.preheader346 ] ; 3 uses
  %i.kb = zext i16 %.6226 to i32
  %i.kc = zext i16 %.6226 to i64                  ; 4 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %.2208374, i64 %i.kc ; 2 uses
  %i.ke = add i64 %i.kc, %i.ik, !nosanitize !13   ; 3 uses
  %i.kf = icmp eq i64 %i.ke, 0
  %i.kg = xor i1 %i.il, %i.kf
  %i.kh = icmp uge i64 %i.ke, %i.ik, !nosanitize !13
  %i.ki = and i1 %i.kh, %i.kg, !nosanitize !13
  br i1 %i.ki, label %bb.ec, label %bb.eb, !prof !16, !nosanitize !13

bb.eb:                                            ; preds = %bb.ea
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @112, i64 %i.ik, i64 %i.ke) #5, !nosanitize !13
  br label %bb.ec, !nosanitize !13

bb.ec:                                            ; preds = %bb.eb, %bb.ea
  br i1 %i.il, label %zng_memread_4.exit.i, label %bb.ed, !prof !16, !nosanitize !13

bb.ed:                                            ; preds = %bb.ec
  %i.kj = ptrtoint ptr %i.kd to i64, !nosanitize !13 ; 2 uses
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @171, i64 %i.kj) #5, !nosanitize !13
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @173, i64 %i.kj) #5, !nosanitize !13
  br label %zng_memread_4.exit.i, !nosanitize !13

zng_memread_4.exit.i:                             ; preds = %bb.ed, %bb.ec
  %i.kk = load i32, ptr %i.kd, align 1, !tbaa !15
  %.not337 = icmp eq i32 %i.kk, %.sroa.0.sroa.0.0.insert.insert
  br i1 %.not337, label %bb.ee, label %bb.ei

bb.ee:                                            ; preds = %zng_memread_4.exit.i
  %i.kl = getelementptr inbounds nuw i8, ptr %.2215373, i64 %i.kc ; 2 uses
  %i.km = add i64 %i.kc, %i.im, !nosanitize !13   ; 3 uses
  %i.kn = icmp eq i64 %i.km, 0
  %i.ko = xor i1 %i.in, %i.kn
  %i.kp = icmp uge i64 %i.km, %i.im, !nosanitize !13
  %i.kq = and i1 %i.kp, %i.ko, !nosanitize !13
  br i1 %i.kq, label %bb.eg, label %bb.ef, !prof !16, !nosanitize !13

bb.ef:                                            ; preds = %bb.ee
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @113, i64 %i.im, i64 %i.km) #5, !nosanitize !13
  br label %bb.eg, !nosanitize !13

bb.eg:                                            ; preds = %bb.ef, %bb.ee
  br i1 %i.in, label %zng_memread_4.exit.i286, label %bb.eh, !prof !16, !nosanitize !13

bb.eh:                                            ; preds = %bb.eg
  %i.kr = ptrtoint ptr %i.kl to i64, !nosanitize !13 ; 2 uses
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @171, i64 %i.kr) #5, !nosanitize !13
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @173, i64 %i.kr) #5, !nosanitize !13
  br label %zng_memread_4.exit.i286, !nosanitize !13

zng_memread_4.exit.i286:                          ; preds = %bb.eh, %bb.eg
  %i.ks = load i32, ptr %i.kl, align 1, !tbaa !15
  %.not338 = icmp eq i32 %i.ks, %.sroa.0.sroa.0431.0.insert.insert
  br i1 %.not338, label %.loopexit, label %bb.ei

bb.ei:                                            ; preds = %zng_memread_4.exit.i286, %zng_memread_4.exit.i
  %i.kt = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %.4197, i32 1), !nosanitize !13 ; 2 uses
  %i.ku = extractvalue { i32, i1 } %i.kt, 0, !nosanitize !13 ; 2 uses
  %i.kv = extractvalue { i32, i1 } %i.kt, 1, !nosanitize !13
  br i1 %i.kv, label %bb.ej, label %bb.ek, !prof !14, !nosanitize !13

bb.ej:                                            ; preds = %bb.ei
  %i.kw = zext nneg i32 %.4197 to i64, !nosanitize !13
  call void @__ubsan_handle_sub_overflow(ptr nonnull @114, i64 %i.kw, i64 1) #6, !nosanitize !13
  br label %bb.ek, !nosanitize !13

bb.ek:                                            ; preds = %bb.ej, %bb.ei
  %.not262 = icmp eq i32 %i.ku, 0
  br i1 %.not262, label %.thread307, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.kx = and i32 %i.o, %i.kb
  %i.ky = zext nneg i32 %i.kx to i64              ; 2 uses
  %i.kz = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %i.ky ; 2 uses
  %i.la = shl nuw nsw i64 %i.ky, 1
  %i.lb = add i64 %i.la, %i.gi, !nosanitize !13   ; 3 uses
  %i.lc = icmp eq i64 %i.lb, 0
  %i.ld = xor i1 %i.gj, %i.lc
  %i.le = icmp uge i64 %i.lb, %i.gi, !nosanitize !13
  %i.lf = and i1 %i.le, %i.ld, !nosanitize !13
  br i1 %i.lf, label %bb.en, label %bb.em, !prof !16, !nosanitize !13

bb.em:                                            ; preds = %bb.el
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @115, i64 %i.gi, i64 %i.lb) #5, !nosanitize !13
  br label %bb.en, !nosanitize !13

bb.en:                                            ; preds = %bb.em, %bb.el
  %i.lg = ptrtoint ptr %i.kz to i64, !nosanitize !13 ; 2 uses
  %i.lh = and i64 %i.lg, 1, !nosanitize !13
  %i.li = icmp eq i64 %i.lh, 0, !nosanitize !13
  %i.lj = and i1 %i.gj, %i.li
  br i1 %i.lj, label %bb.ep, label %bb.eo, !prof !16, !nosanitize !13

bb.eo:                                            ; preds = %bb.en
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @116, i64 %i.lg) #5, !nosanitize !13
  br label %bb.ep, !nosanitize !13

bb.ep:                                            ; preds = %bb.eo, %bb.en
  %i.lk = load i16, ptr %i.kz, align 2, !tbaa !41 ; 2 uses
  %i.ll = icmp ugt i16 %i.lk, %.1201375
  br i1 %i.ll, label %bb.ea, label %.thread307

.loopexit:                                        ; preds = %zng_memread_4.exit.i286, %zng_memread_8.exit.i284, %zng_memread_2.exit.i282
  %.7227 = phi i16 [ %.4224, %zng_memread_2.exit.i282 ], [ %.5225, %zng_memread_8.exit.i284 ], [ %.6226, %zng_memread_4.exit.i286 ] ; 3 uses
  %.5198 = phi i32 [ %.2195, %zng_memread_2.exit.i282 ], [ %.3196, %zng_memread_8.exit.i284 ], [ %.4197, %zng_memread_4.exit.i286 ] ; 4 uses
  br i1 %.not265, label %bb.eq, label %bb.er, !prof !14, !nosanitize !13

bb.eq:                                            ; preds = %.loopexit
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @117, i64 %.pre, i64 %i.gl) #5, !nosanitize !13
  br label %bb.er, !nosanitize !13

bb.er:                                            ; preds = %bb.eq, %.loopexit
  %i.lm = zext i16 %.7227 to i32                  ; 2 uses
  %i.ln = zext i16 %.7227 to i64                  ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %.2215373, i64 %i.ln ; 3 uses
  %i.lp = ptrtoint ptr %.2215373 to i64, !nosanitize !13 ; 6 uses
  %i.lq = add i64 %i.ln, %i.lp, !nosanitize !13   ; 3 uses
  %i.lr = icmp ne i64 %i.lq, 0
  %i.ls = icmp uge i64 %i.lq, %i.lp, !nosanitize !13
  %i.lt = and i1 %i.lr, %i.ls, !nosanitize !13
  br i1 %i.lt, label %bb.et, label %bb.es, !prof !16, !nosanitize !13

bb.es:                                            ; preds = %bb.er
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @118, i64 %i.lp, i64 %i.lq) #5, !nosanitize !13
  br label %bb.et, !nosanitize !13

bb.et:                                            ; preds = %bb.es, %bb.er
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lo, i64 2
  %i.lv = ptrtoint ptr %i.lo to i64, !nosanitize !13 ; 2 uses
  %i.lw = add i64 %i.lv, 2, !nosanitize !13       ; 2 uses
  %i.lx = icmp ne i64 %i.lw, 0
  %i.ly = icmp ult ptr %i.lo, inttoptr (i64 -2 to ptr)
  %i.lz = and i1 %i.ly, %i.lx, !nosanitize !13
  br i1 %i.lz, label %bb.ev, label %bb.eu, !prof !16, !nosanitize !13

bb.eu:                                            ; preds = %bb.et
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @119, i64 %i.lv, i64 %i.lw) #5, !nosanitize !13
  br label %bb.ev, !nosanitize !13

bb.ev:                                            ; preds = %bb.eu, %bb.et
  %i.ma = call fastcc i32 @compare256_avx512_static(ptr noundef nonnull %i.gk, ptr noundef nonnull %i.lu) ; 5 uses
  %i.mb = add nuw nsw i32 %i.ma, 2                ; 13 uses
  %i.mc = icmp ugt i32 %i.mb, %.0188377
  br i1 %i.mc, label %bb.ew, label %bb.hd

bb.ew:                                            ; preds = %bb.ev
  %i.md = zext i16 %.3185378 to i32
  %i.me = sub nsw i32 %i.lm, %i.md                ; 3 uses
  br i1 %i.e, label %bb.ey, label %bb.ex, !prof !16, !nosanitize !13

bb.ex:                                            ; preds = %bb.ew
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @120, i64 %i.b) #5, !nosanitize !13
  br label %bb.ey, !nosanitize !13

bb.ey:                                            ; preds = %bb.ew, %bb.ex
  store i32 %i.me, ptr %i.gm, align 8, !tbaa !42
  %.not266 = icmp ult i32 %i.mb, %i.ag
  br i1 %.not266, label %bb.ez, label %.thread307

bb.ez:                                            ; preds = %bb.ey
  %.not267 = icmp ult i32 %i.mb, %i.bs
  br i1 %.not267, label %bb.fa, label %.thread307

bb.fa:                                            ; preds = %bb.ez
  %i.mf = zext nneg i32 %i.mb to i64              ; 4 uses
  %i.mg = icmp samesign ugt i32 %i.ma, 1          ; 2 uses
  %i.mh = icmp samesign ugt i32 %i.ma, 5
  %spec.select507.v = select i1 %i.mh, i32 -5, i32 -1
  %.1187.v = select i1 %i.mg, i32 %spec.select507.v, i32 1
  %.1187 = add nsw i32 %i.ma, %.1187.v
  %i.mi = zext nneg i32 %.1187 to i64             ; 6 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.mi
  %i.mk = add i64 %.pre, %i.mi, !nosanitize !13   ; 2 uses
  %.not268 = icmp ult i64 %i.mk, %.pre, !nosanitize !13
  br i1 %.not268, label %bb.fb, label %zng_memread_8.exit288, !prof !14, !nosanitize !13

bb.fb:                                            ; preds = %bb.fa
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @121, i64 %.pre, i64 %i.mk) #5, !nosanitize !13
  br label %zng_memread_8.exit288, !nosanitize !13

zng_memread_8.exit288:                            ; preds = %bb.fa, %bb.fb
  %i.ml = load i64, ptr %i.mj, align 1, !tbaa !15 ; 3 uses
  %.sroa.0.sroa.0.0.extract.trunc415 = trunc i64 %i.ml to i16 ; 4 uses
  %.sroa.0.sroa.7.0.extract.shift419464 = lshr i64 %i.ml, 16
  %.sroa.0.sroa.7.0.extract.trunc420 = trunc i64 %.sroa.0.sroa.7.0.extract.shift419464 to i16 ; 4 uses
  %.sroa.7.0.extract.shift413 = lshr i64 %i.ml, 32
  %.sroa.7.0.extract.trunc414 = trunc nuw i64 %.sroa.7.0.extract.shift413 to i32 ; 4 uses
  br i1 %i.mg, label %bb.fc, label %.critedge

bb.fc:                                            ; preds = %zng_memread_8.exit288
  %i.mm = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.me, i32 %i.mb), !nosanitize !13 ; 2 uses
  %i.mn = extractvalue { i32, i1 } %i.mm, 0, !nosanitize !13
  %i.mo = extractvalue { i32, i1 } %i.mm, 1, !nosanitize !13
  br i1 %i.mo, label %bb.fd, label %bb.fe, !prof !14, !nosanitize !13

bb.fd:                                            ; preds = %bb.fc
  %i.mp = zext i32 %i.me to i64, !nosanitize !13
  call void @__ubsan_handle_add_overflow(ptr nonnull @122, i64 %i.mp, i64 %i.mf) #6, !nosanitize !13
  br label %bb.fe, !nosanitize !13

bb.fe:                                            ; preds = %bb.fd, %bb.fc
  %i.mq = icmp ult i32 %i.mn, %i.j
  br i1 %i.mq, label %bb.ff, label %.critedge, !prof !43

bb.ff:                                            ; preds = %bb.fe
  %i.mr = sub i16 %.7227, %.3185378               ; 3 uses
  %i.ms = add nsw i32 %i.ma, -1
  %i.mt = zext i16 %i.mr to i32
  %i.mu = zext i16 %i.mr to i64
  br label %bb.fg

bb.fg:                                            ; preds = %.backedge, %bb.ff
  %.4 = phi i16 [ 0, %bb.ff ], [ %.5, %.backedge ] ; 2 uses
  %.0177 = phi i16 [ %i.mr, %bb.ff ], [ %.1, %.backedge ] ; 4 uses
  %.0 = phi i32 [ 0, %bb.ff ], [ %i.ns, %.backedge ] ; 8 uses
  %.not269 = icmp ugt i32 %.0, %i.ms
  br i1 %.not269, label %bb.ft, label %2

2:                                                ; preds = %bb.fg
  %3 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.mt, i32 %.0), !nosanitize !13 ; 2 uses
  %4 = extractvalue { i32, i1 } %3, 0, !nosanitize !13
  %5 = extractvalue { i32, i1 } %3, 1, !nosanitize !13
  br i1 %5, label %bb.fh, label %bb.fi, !prof !14, !nosanitize !13

bb.fh:                                            ; preds = %2
  %i.mv = zext i32 %.0 to i64, !nosanitize !13
  call void @__ubsan_handle_add_overflow(ptr nonnull @123, i64 %i.mu, i64 %i.mv) #6, !nosanitize !13
  br label %bb.fi, !nosanitize !13

bb.fi:                                            ; preds = %bb.fh, %2
  %i.mw = and i32 %4, %i.o
  %i.mx = zext i32 %i.mw to i64                   ; 2 uses
  %i.my = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %i.mx ; 2 uses
  %i.mz = shl nuw nsw i64 %i.mx, 1
  %i.na = add i64 %i.mz, %i.gi, !nosanitize !13   ; 3 uses
  %i.nb = icmp eq i64 %i.na, 0
  %i.nc = xor i1 %i.gj, %i.nb
  %i.nd = icmp uge i64 %i.na, %i.gi, !nosanitize !13
  %i.ne = and i1 %i.nd, %i.nc, !nosanitize !13
  br i1 %i.ne, label %bb.fk, label %bb.fj, !prof !16, !nosanitize !13

bb.fj:                                            ; preds = %bb.fi
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @124, i64 %i.gi, i64 %i.na) #5, !nosanitize !13
  br label %bb.fk, !nosanitize !13

bb.fk:                                            ; preds = %bb.fj, %bb.fi
  %i.nf = ptrtoint ptr %i.my to i64, !nosanitize !13 ; 2 uses
  %i.ng = and i64 %i.nf, 1, !nosanitize !13
  %i.nh = icmp eq i64 %i.ng, 0, !nosanitize !13
  %i.ni = and i1 %i.gj, %i.nh
  br i1 %i.ni, label %bb.fm, label %bb.fl, !prof !16, !nosanitize !13

bb.fl:                                            ; preds = %bb.fk
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @125, i64 %i.nf) #5, !nosanitize !13
  br label %bb.fm, !nosanitize !13

bb.fm:                                            ; preds = %bb.fl, %bb.fk
  %i.nj = load i16, ptr %i.my, align 2, !tbaa !41 ; 3 uses
  %i.nk = zext i16 %i.nj to i32
  %i.nl = icmp ult i16 %i.nj, %.0177
  br i1 %i.nl, label %bb.fn, label %bb.fr

bb.fn:                                            ; preds = %bb.fm
  %i.nm = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.gn, i32 %.0), !nosanitize !13 ; 2 uses
  %i.nn = extractvalue { i32, i1 } %i.nm, 0, !nosanitize !13
  %i.no = extractvalue { i32, i1 } %i.nm, 1, !nosanitize !13
  br i1 %i.no, label %bb.fo, label %bb.fp, !prof !14, !nosanitize !13

bb.fo:                                            ; preds = %bb.fn
  %i.np = zext i32 %.0 to i64, !nosanitize !13
  call void @__ubsan_handle_add_overflow(ptr nonnull @126, i64 %i.go, i64 %i.np) #6, !nosanitize !13
  br label %bb.fp, !nosanitize !13

bb.fp:                                            ; preds = %bb.fo, %bb.fn
  %.not277 = icmp ult i32 %i.nn, %i.nk
  br i1 %.not277, label %bb.fq, label %.thread296.thread327

bb.fq:                                            ; preds = %bb.fp
  %i.nq = trunc i32 %.0 to i16
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fm, %bb.fq
  %.5 = phi i16 [ %i.nq, %bb.fq ], [ %.4, %bb.fm ]
  %.1 = phi i16 [ %i.nj, %bb.fq ], [ %.0177, %bb.fm ]
  %i.nr = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.0, i32 1), !nosanitize !13 ; 2 uses
  %i.ns = extractvalue { i32, i1 } %i.nr, 0, !nosanitize !13
  %i.nt = extractvalue { i32, i1 } %i.nr, 1, !nosanitize !13
  br i1 %i.nt, label %bb.fs, label %.backedge, !prof !14, !nosanitize !13

bb.fs:                                            ; preds = %bb.fr
  %i.nu = zext i32 %.0 to i64, !nosanitize !13
  call void @__ubsan_handle_add_overflow(ptr nonnull @127, i64 %i.nu, i64 1) #6, !nosanitize !13
  br label %.backedge, !nosanitize !13

.backedge:                                        ; preds = %bb.fs, %bb.fr
  br label %bb.fg, !llvm.loop !46

bb.ft:                                            ; preds = %bb.fg
  %i.nv = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.mf ; 5 uses
  %i.nw = add i64 %.pre, %i.mf, !nosanitize !13   ; 2 uses
  %.not270 = icmp ult i64 %i.nw, %.pre, !nosanitize !13
  br i1 %.not270, label %bb.fu, label %bb.fv, !prof !14, !nosanitize !13

bb.fu:                                            ; preds = %bb.ft
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @128, i64 %.pre, i64 %i.nw) #5, !nosanitize !13
  br label %bb.fv, !nosanitize !13

bb.fv:                                            ; preds = %bb.fu, %bb.ft
  %i.nx = getelementptr inbounds i8, ptr %i.nv, i64 -4 ; 4 uses
  %i.ny = ptrtoint ptr %i.nv to i64, !nosanitize !13 ; 2 uses
  %i.nz = add i64 %i.ny, -4, !nosanitize !13      ; 2 uses
  %i.oa = icmp ne i64 %i.nz, 0, !nosanitize !13
  %i.ob = icmp ugt ptr %i.nv, inttoptr (i64 3 to ptr)
  %i.oc = and i1 %i.ob, %i.oa, !nosanitize !13
  br i1 %i.oc, label %bb.fx, label %bb.fw, !prof !16, !nosanitize !13

bb.fw:                                            ; preds = %bb.fv
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @129, i64 %i.ny, i64 %i.nz) #5, !nosanitize !13
  br label %bb.fx, !nosanitize !13

bb.fx:                                            ; preds = %bb.fw, %bb.fv
  br i1 %i.e, label %bb.fz, label %bb.fy, !prof !16, !nosanitize !13

bb.fy:                                            ; preds = %bb.fx
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @130, i64 %i.b) #5, !nosanitize !13
  br label %bb.fz, !nosanitize !13

bb.fz:                                            ; preds = %bb.fx, %bb.fy
  %i.od = load ptr, ptr %i.gp, align 8, !tbaa !47 ; 4 uses
  %i.oe = getelementptr i8, ptr %i.od, i64 -8
  %i.of = load i32, ptr %i.oe, align 4, !nosanitize !13
  %i.og = icmp eq i32 %i.of, -1056584962, !nosanitize !13
  br i1 %i.og, label %bb.ga, label %bb.gc, !nosanitize !13

bb.ga:                                            ; preds = %bb.fz
  %i.oh = getelementptr i8, ptr %i.od, i64 -4
  %i.oi = load i32, ptr %i.oh, align 8, !nosanitize !13
  %i.oj = icmp eq i32 %i.oi, -455559067, !nosanitize !13
  br i1 %i.oj, label %bb.gc, label %bb.gb, !prof !16, !nosanitize !13

bb.gb:                                            ; preds = %bb.ga
  %i.ok = ptrtoint ptr %i.od to i64, !nosanitize !13
  call void @__ubsan_handle_function_type_mismatch(ptr nonnull @131, i64 %i.ok) #5, !nosanitize !13
  br label %bb.gc, !nosanitize !13

bb.gc:                                            ; preds = %bb.fz, %bb.gb, %bb.ga
  %i.ol = load i8, ptr %i.nx, align 1, !tbaa !15
  %i.om = zext i8 %i.ol to i32
  %i.on = call i32 %i.od(i32 noundef 0, i32 noundef %i.om) #5
  br i1 %i.e, label %bb.ge, label %bb.gd, !prof !16, !nosanitize !13

bb.gd:                                            ; preds = %bb.gc
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @132, i64 %i.b) #5, !nosanitize !13
  br label %bb.ge, !nosanitize !13

bb.ge:                                            ; preds = %bb.gc, %bb.gd
  %i.oo = load ptr, ptr %i.gp, align 8, !tbaa !47 ; 4 uses
  %i.op = getelementptr i8, ptr %i.oo, i64 -8
  %i.oq = load i32, ptr %i.op, align 4, !nosanitize !13
  %i.or = icmp eq i32 %i.oq, -1056584962, !nosanitize !13
  br i1 %i.or, label %bb.gf, label %bb.gh, !nosanitize !13

bb.gf:                                            ; preds = %bb.ge
  %i.os = getelementptr i8, ptr %i.oo, i64 -4
  %i.ot = load i32, ptr %i.os, align 8, !nosanitize !13
  %i.ou = icmp eq i32 %i.ot, -455559067, !nosanitize !13
  br i1 %i.ou, label %bb.gh, label %bb.gg, !prof !16, !nosanitize !13

bb.gg:                                            ; preds = %bb.gf
  %i.ov = ptrtoint ptr %i.oo to i64, !nosanitize !13
  call void @__ubsan_handle_function_type_mismatch(ptr nonnull @133, i64 %i.ov) #5, !nosanitize !13
  br label %bb.gh, !nosanitize !13

bb.gh:                                            ; preds = %bb.gf, %bb.gg, %bb.ge
  %i.ow = getelementptr inbounds i8, ptr %i.nv, i64 -3
  %i.ox = ptrtoint ptr %i.nx to i64, !nosanitize !13 ; 4 uses
  %.not272 = icmp eq ptr %i.nx, inttoptr (i64 -1 to ptr)
  br i1 %.not272, label %bb.gi, label %bb.gj, !prof !14, !nosanitize !13

bb.gi:                                            ; preds = %bb.gh
  %i.oy = add i64 %i.ox, 1, !nosanitize !13
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @134, i64 %i.ox, i64 %i.oy) #5, !nosanitize !13
  br label %bb.gj, !nosanitize !13

bb.gj:                                            ; preds = %bb.gh, %bb.gi
  %i.oz = load i8, ptr %i.ow, align 1, !tbaa !15
  %i.pa = zext i8 %i.oz to i32
  %i.pb = call i32 %i.oo(i32 noundef %i.on, i32 noundef %i.pa) #5
  br i1 %i.e, label %bb.gl, label %bb.gk, !prof !16, !nosanitize !13

bb.gk:                                            ; preds = %bb.gj
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @135, i64 %i.b) #5, !nosanitize !13
  br label %bb.gl, !nosanitize !13

bb.gl:                                            ; preds = %bb.gj, %bb.gk
  %i.pc = load ptr, ptr %i.gp, align 8, !tbaa !47 ; 4 uses
  %i.pd = getelementptr i8, ptr %i.pc, i64 -8
  %i.pe = load i32, ptr %i.pd, align 4, !nosanitize !13
  %i.pf = icmp eq i32 %i.pe, -1056584962, !nosanitize !13
  br i1 %i.pf, label %bb.gm, label %bb.go, !nosanitize !13

bb.gm:                                            ; preds = %bb.gl
  %i.pg = getelementptr i8, ptr %i.pc, i64 -4
  %i.ph = load i32, ptr %i.pg, align 8, !nosanitize !13
  %i.pi = icmp eq i32 %i.ph, -455559067, !nosanitize !13
  br i1 %i.pi, label %bb.go, label %bb.gn, !prof !16, !nosanitize !13

bb.gn:                                            ; preds = %bb.gm
  %i.pj = ptrtoint ptr %i.pc to i64, !nosanitize !13
  call void @__ubsan_handle_function_type_mismatch(ptr nonnull @136, i64 %i.pj) #5, !nosanitize !13
  br label %bb.go, !nosanitize !13

bb.go:                                            ; preds = %bb.gm, %bb.gn, %bb.gl
  %i.pk = getelementptr inbounds i8, ptr %i.nv, i64 -2
  %.not274 = icmp ugt ptr %i.nx, inttoptr (i64 -3 to ptr)
  br i1 %.not274, label %bb.gp, label %bb.gq, !prof !14, !nosanitize !13

bb.gp:                                            ; preds = %bb.go
  %i.pl = add i64 %i.ox, 2, !nosanitize !13
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @137, i64 %i.ox, i64 %i.pl) #5, !nosanitize !13
  br label %bb.gq, !nosanitize !13

bb.gq:                                            ; preds = %bb.go, %bb.gp
  %i.pm = load i8, ptr %i.pk, align 1, !tbaa !15
  %i.pn = zext i8 %i.pm to i32
  %i.po = call i32 %i.pc(i32 noundef %i.pb, i32 noundef %i.pn) #5
  br i1 %i.e, label %bb.gs, label %bb.gr, !prof !16, !nosanitize !13

bb.gr:                                            ; preds = %bb.gq
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @138, i64 %i.b) #5, !nosanitize !13
  br label %bb.gs, !nosanitize !13

bb.gs:                                            ; preds = %bb.gq, %bb.gr
  %i.pp = load ptr, ptr %i.gq, align 8, !tbaa !48 ; 3 uses
  %i.pq = zext i32 %i.po to i64                   ; 2 uses
  %i.pr = getelementptr inbounds nuw [2 x i8], ptr %i.pp, i64 %i.pq ; 2 uses
  %i.ps = shl nuw nsw i64 %i.pq, 1
  %i.pt = ptrtoint ptr %i.pp to i64, !nosanitize !13 ; 3 uses
  %i.pu = add i64 %i.ps, %i.pt, !nosanitize !13   ; 3 uses
  %i.pv = icmp ne ptr %i.pp, null, !nosanitize !13 ; 2 uses
  %i.pw = icmp eq i64 %i.pu, 0
  %i.px = xor i1 %i.pv, %i.pw
  %i.py = icmp uge i64 %i.pu, %i.pt, !nosanitize !13
  %i.pz = and i1 %i.py, %i.px, !nosanitize !13
  br i1 %i.pz, label %bb.gu, label %bb.gt, !prof !16, !nosanitize !13

bb.gt:                                            ; preds = %bb.gs
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @139, i64 %i.pt, i64 %i.pu) #5, !nosanitize !13
  br label %bb.gu, !nosanitize !13

bb.gu:                                            ; preds = %bb.gt, %bb.gs
  %i.qa = ptrtoint ptr %i.pr to i64, !nosanitize !13 ; 2 uses
  %i.qb = and i64 %i.qa, 1, !nosanitize !13
  %i.qc = icmp eq i64 %i.qb, 0, !nosanitize !13
  %i.qd = and i1 %i.pv, %i.qc
  br i1 %i.qd, label %bb.gw, label %bb.gv, !prof !16, !nosanitize !13

bb.gv:                                            ; preds = %bb.gu
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @140, i64 %i.qa) #5, !nosanitize !13
  br label %bb.gw, !nosanitize !13

bb.gw:                                            ; preds = %bb.gv, %bb.gu
  %i.qe = load i16, ptr %i.pr, align 2, !tbaa !41 ; 3 uses
  %6 = zext i16 %i.qe to i32
  %i.qf = icmp ult i16 %i.qe, %.0177
  br i1 %i.qf, label %7, label %bb.gy

7:                                                ; preds = %bb.gw
  %8 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %i.mb, i32 4), !nosanitize !13 ; 2 uses
  %9 = extractvalue { i32, i1 } %8, 0, !nosanitize !13 ; 2 uses
  %10 = extractvalue { i32, i1 } %8, 1, !nosanitize !13
  br i1 %10, label %11, label %bb.gx, !prof !14, !nosanitize !13

11:                                               ; preds = %7
  call void @__ubsan_handle_sub_overflow(ptr nonnull @141, i64 %i.mf, i64 4) #6, !nosanitize !13
  br label %bb.gx, !nosanitize !13

bb.gx:                                            ; preds = %11, %7
  %12 = trunc nsw i32 %9 to i16
  %13 = and i32 %9, 65535
  %i.qg = add nuw nsw i32 %13, %i.gn
  %.not276 = icmp samesign ult i32 %i.qg, %6
  br i1 %.not276, label %bb.gy, label %.thread296.thread327

bb.gy:                                            ; preds = %bb.gx, %bb.gw
  %.8228 = phi i16 [ %.0177, %bb.gw ], [ %i.qe, %bb.gx ] ; 2 uses
  %.6 = phi i16 [ %.4, %bb.gw ], [ %12, %bb.gx ]  ; 5 uses
  %i.qh = add i16 %.6, %i.cn                      ; 2 uses
  %i.qi = zext i16 %.6 to i64                     ; 3 uses
  %i.qj = sub nsw i64 0, %i.qi
  %i.qk = getelementptr inbounds i8, ptr %i.q, i64 %i.qj ; 4 uses
  %i.ql = sub i64 %i.t, %i.qi                     ; 2 uses
  %i.qm = icmp eq i64 %i.t, %i.qi
  %i.qn = xor i1 %i.v, %i.qm
  %i.qo = icmp eq i16 %.6, 0
  %i.qp = icmp ult i64 %i.ql, %i.t, !nosanitize !13
  %i.qq = or i1 %i.qo, %i.qp
  %i.qr = and i1 %i.qn, %i.qq, !nosanitize !13
  br i1 %i.qr, label %bb.ha, label %bb.gz, !prof !16, !nosanitize !13

bb.gz:                                            ; preds = %bb.gy
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @142, i64 %i.t, i64 %i.ql) #5, !nosanitize !13
  br label %bb.ha, !nosanitize !13

bb.ha:                                            ; preds = %bb.gz, %bb.gy
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qk, i64 %i.mi ; 2 uses
  %i.qt = ptrtoint ptr %i.qk to i64, !nosanitize !13 ; 3 uses
  %i.qu = add i64 %i.qt, %i.mi, !nosanitize !13   ; 3 uses
  %i.qv = icmp eq i64 %i.qu, 0
  %i.qw = xor i1 %i.v, %i.qv
  %i.qx = icmp uge i64 %i.qu, %i.qt, !nosanitize !13
  %i.qy = and i1 %i.qx, %i.qw, !nosanitize !13
  br i1 %i.qy, label %.thread296, label %bb.hb, !prof !16, !nosanitize !13

bb.hb:                                            ; preds = %bb.ha
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @143, i64 %i.qt, i64 %i.qu) #5, !nosanitize !13
  br label %.thread296, !nosanitize !13

.critedge:                                        ; preds = %zng_memread_8.exit288, %bb.fe
  %i.qz = getelementptr inbounds nuw i8, ptr %.2215373, i64 %i.mi ; 2 uses
  %i.ra = add i64 %i.mi, %i.lp, !nosanitize !13   ; 3 uses
  %i.rb = icmp ne i64 %i.ra, 0
  %i.rc = icmp uge i64 %i.ra, %i.lp, !nosanitize !13
  %i.rd = and i1 %i.rb, %i.rc, !nosanitize !13
  br i1 %i.rd, label %bb.hd, label %bb.hc, !prof !16, !nosanitize !13

bb.hc:                                            ; preds = %.critedge
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @144, i64 %i.lp, i64 %i.ra) #5, !nosanitize !13
  br label %bb.hd, !nosanitize !13

bb.hd:                                            ; preds = %bb.hc, %.critedge, %bb.ev
  %.sroa.0.sroa.7.1 = phi i16 [ %.sroa.0.sroa.7.0.extract.trunc420, %.critedge ], [ %.sroa.0.sroa.7.0.extract.trunc420, %bb.hc ], [ %.sroa.0.sroa.7.0, %bb.ev ]
  %.sroa.0.sroa.0.1 = phi i16 [ %.sroa.0.sroa.0.0.extract.trunc415, %.critedge ], [ %.sroa.0.sroa.0.0.extract.trunc415, %bb.hc ], [ %.sroa.0.sroa.0.0, %bb.ev ]
  %.sroa.7.1 = phi i32 [ %.sroa.7.0.extract.trunc414, %.critedge ], [ %.sroa.7.0.extract.trunc414, %bb.hc ], [ %.sroa.7.0, %bb.ev ]
  %.5211 = phi ptr [ %i.qz, %.critedge ], [ %i.qz, %bb.hc ], [ %.2208374, %bb.ev ]
  %.2190 = phi i32 [ %i.mb, %.critedge ], [ %i.mb, %bb.hc ], [ %.0188377, %bb.ev ] ; 3 uses
  %i.re = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %.5198, i32 1), !nosanitize !13 ; 2 uses
  %i.rf = extractvalue { i32, i1 } %i.re, 0, !nosanitize !13 ; 2 uses
  %i.rg = extractvalue { i32, i1 } %i.re, 1, !nosanitize !13
  br i1 %i.rg, label %bb.he, label %bb.hf, !prof !14, !nosanitize !13

bb.he:                                            ; preds = %bb.hd
  %i.rh = zext nneg i32 %.5198 to i64, !nosanitize !13
  call void @__ubsan_handle_sub_overflow(ptr nonnull @145, i64 %i.rh, i64 1) #6, !nosanitize !13
  br label %bb.hf, !nosanitize !13

bb.hf:                                            ; preds = %bb.he, %bb.hd
  %.not278 = icmp eq i32 %i.rf, 0
  br i1 %.not278, label %.thread307, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.ri = and i32 %i.o, %i.lm
  %i.rj = zext nneg i32 %i.ri to i64              ; 2 uses
  %i.rk = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %i.rj ; 2 uses
  %i.rl = shl nuw nsw i64 %i.rj, 1
  %i.rm = add i64 %i.rl, %i.gi, !nosanitize !13   ; 3 uses
  %i.rn = icmp eq i64 %i.rm, 0
  %i.ro = xor i1 %i.gj, %i.rn
  %i.rp = icmp uge i64 %i.rm, %i.gi, !nosanitize !13
  %i.rq = and i1 %i.rp, %i.ro, !nosanitize !13
  br i1 %i.rq, label %bb.hi, label %bb.hh, !prof !16, !nosanitize !13

bb.hh:                                            ; preds = %bb.hg
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @146, i64 %i.gi, i64 %i.rm) #5, !nosanitize !13
  br label %bb.hi, !nosanitize !13

bb.hi:                                            ; preds = %bb.hh, %bb.hg
  %i.rr = ptrtoint ptr %i.rk to i64, !nosanitize !13 ; 2 uses
  %i.rs = and i64 %i.rr, 1, !nosanitize !13
  %i.rt = icmp eq i64 %i.rs, 0, !nosanitize !13
  %i.ru = and i1 %i.gj, %i.rt
  br i1 %i.ru, label %bb.hk, label %bb.hj, !prof !16, !nosanitize !13

bb.hj:                                            ; preds = %bb.hi
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @147, i64 %i.rr) #5, !nosanitize !13
  br label %bb.hk, !nosanitize !13

bb.hk:                                            ; preds = %bb.hj, %bb.hi
  %i.rv = load i16, ptr %i.rk, align 2, !tbaa !41 ; 2 uses
  %i.rw = icmp ugt i16 %i.rv, %.1201375
  br i1 %i.rw, label %.thread296, label %.thread307

.thread296:                                       ; preds = %bb.hk, %bb.hb, %bb.ha
  %.sroa.0.sroa.7.2 = phi i16 [ %.sroa.0.sroa.7.0.extract.trunc420, %bb.ha ], [ %.sroa.0.sroa.7.0.extract.trunc420, %bb.hb ], [ %.sroa.0.sroa.7.1, %bb.hk ]
  %.sroa.0.sroa.0.2 = phi i16 [ %.sroa.0.sroa.0.0.extract.trunc415, %bb.ha ], [ %.sroa.0.sroa.0.0.extract.trunc415, %bb.hb ], [ %.sroa.0.sroa.0.1, %bb.hk ]
  %.sroa.7.2 = phi i32 [ %.sroa.7.0.extract.trunc414, %bb.ha ], [ %.sroa.7.0.extract.trunc414, %bb.hb ], [ %.sroa.7.1, %bb.hk ]
  %.13 = phi i16 [ %.8228, %bb.ha ], [ %.8228, %bb.hb ], [ %i.rv, %bb.hk ] ; 2 uses
  %.6219 = phi ptr [ %i.qk, %bb.ha ], [ %i.qk, %bb.hb ], [ %.2215373, %bb.hk ]
  %.6212 = phi ptr [ %i.qs, %bb.ha ], [ %i.qs, %bb.hb ], [ %.5211, %bb.hk ]
  %.5205 = phi i16 [ %i.qh, %bb.ha ], [ %i.qh, %bb.hb ], [ %.1201375, %bb.hk ]
  %.6199 = phi i32 [ %.5198, %bb.ha ], [ %.5198, %bb.hb ], [ %i.rf, %bb.hk ]
  %.3191 = phi i32 [ %i.mb, %bb.ha ], [ %i.mb, %bb.hb ], [ %.2190, %bb.hk ] ; 2 uses
  %.10 = phi i16 [ %.6, %bb.ha ], [ %.6, %bb.hb ], [ %.3185378, %bb.hk ]
  %i.rx = zext i16 %.13 to i32
  %.not261 = icmp ugt i32 %i.j, %i.rx
  br i1 %.not261, label %bb.cs, label %.thread307

.thread296.thread327:                             ; preds = %bb.gx, %bb.fp, %._crit_edge
  %.4192 = phi i32 [ %i.ay, %._crit_edge ], [ %i.mb, %bb.fp ], [ %i.mb, %bb.gx ] ; 2 uses
  br i1 %i.e, label %bb.hm, label %bb.hl, !prof !16, !nosanitize !13

bb.hl:                                            ; preds = %.thread296.thread327
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @148, i64 %i.b) #5, !nosanitize !13
  br label %bb.hm, !nosanitize !13

bb.hm:                                            ; preds = %.thread296.thread327, %bb.hl
  %i.ry = load i32, ptr %i.af, align 4, !tbaa !35
  %i.rz = icmp ult i32 %.4192, %i.ry
  br i1 %i.rz, label %.thread307, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  br i1 %i.e, label %bb.hp, label %bb.ho, !prof !16, !nosanitize !13

bb.ho:                                            ; preds = %bb.hn
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @149, i64 %i.b) #5, !nosanitize !13
  br label %bb.hp, !nosanitize !13

bb.hp:                                            ; preds = %bb.hn, %bb.ho
  %i.sa = load i32, ptr %i.af, align 4, !tbaa !35
  br label %.thread307

.thread307:                                       ; preds = %.thread296, %bb.hk, %bb.hf, %bb.ez, %bb.ey, %bb.ek, %bb.ep, %bb.du, %bb.dz, %bb.dd, %bb.di, %.thread291, %bb.hm, %bb.hp
  %.4235 = phi i32 [ %.0188377, %bb.du ], [ %.4192, %bb.hm ], [ %.0188377, %bb.ek ], [ %i.ay, %.thread291 ], [ %i.sa, %bb.hp ], [ %.0188377, %bb.dd ], [ %.0188377, %bb.di ], [ %.0188377, %bb.dz ], [ %.0188377, %bb.ep ], [ %i.mb, %bb.ez ], [ %i.ag, %bb.ey ], [ %.2190, %bb.hk ], [ %.2190, %bb.hf ], [ %.3191, %.thread296 ]
  ret i32 %.4235
}

; Function Attrs: uwtable
declare void @__ubsan_handle_function_type_mismatch(ptr, i64) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="true" "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512dq,+avx512f,+avx512vl,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="cascadelake" }
attributes #1 = { inlinehint nounwind uwtable "disable-tail-calls"="true" "frame-pointer"="all" "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512dq,+avx512f,+avx512vl,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="cascadelake" }
attributes #2 = { uwtable }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }
attributes #6 = { nomerge nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{i32 -1056584962, i32 1620576812}
!13 = !{}
!14 = !{!"branch_weights", i32 1, i32 1048575}
!15 = !{!8, !8, i64 0}
!16 = !{!"branch_weights", i32 1048575, i32 1}
!17 = !{i32 -1056584962, i32 953073260}
!18 = !{!"any pointer", !8, i64 0}
!19 = !{!"p1 _ZTS12zng_stream_s", !18, i64 0}
!20 = !{!"p1 omnipotent char", !18, i64 0}
!21 = !{!"p1 _ZTS15zng_gz_header_s", !18, i64 0}
!22 = !{!"p1 short", !18, i64 0}
!23 = !{!"short", !8, i64 0}
!24 = !{!"crc32_fold_s", !8, i64 0, !9, i64 64}
!25 = !{!"p1 _ZTS9ct_data_s", !18, i64 0}
!26 = !{!"p1 _ZTS18static_tree_desc_s", !18, i64 0}
!27 = !{!"tree_desc_s", !25, i64 0, !9, i64 8, !26, i64 16}
!28 = !{!"long", !8, i64 0}
!29 = !{!"p1 _ZTS16deflate_allocs_s", !18, i64 0}
!30 = !{!"internal_state", !19, i64 0, !20, i64 8, !20, i64 16, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !21, i64 40, !9, i64 48, !9, i64 52, !9, i64 56, !9, i64 60, !9, i64 64, !9, i64 68, !9, i64 72, !9, i64 76, !9, i64 80, !9, i64 84, !20, i64 88, !22, i64 96, !22, i64 104, !9, i64 112, !9, i64 116, !9, i64 120, !23, i64 124, !9, i64 128, !9, i64 132, !9, i64 136, !9, i64 140, !9, i64 144, !9, i64 148, !18, i64 152, !18, i64 160, !18, i64 168, !9, i64 176, !9, i64 180, !9, i64 184, !9, i64 188, !24, i64 192, !8, i64 260, !8, i64 2552, !8, i64 2796, !27, i64 2952, !27, i64 2976, !27, i64 3000, !8, i64 3024, !8, i64 3056, !9, i64 5348, !9, i64 5352, !8, i64 5356, !9, i64 5932, !22, i64 5936, !20, i64 5944, !9, i64 5952, !9, i64 5956, !28, i64 5960, !28, i64 5968, !9, i64 5976, !9, i64 5980, !28, i64 5984, !28, i64 5992, !29, i64 6000, !28, i64 6008, !9, i64 6016, !8, i64 6020}
!31 = !{!30, !9, i64 132}
!32 = !{!30, !9, i64 72}
!33 = !{!30, !20, i64 88}
!34 = !{!30, !22, i64 96}
!35 = !{!30, !9, i64 76}
!36 = !{!30, !9, i64 140}
!37 = !{!30, !9, i64 144}
!38 = !{!30, !9, i64 184}
!39 = !{!30, !9, i64 188}
!40 = !{!30, !9, i64 64}
!41 = !{!23, !23, i64 0}
!42 = !{!30, !9, i64 136}
!43 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!44 = !{!30, !9, i64 176}
!45 = distinct !{!45, !49}
!46 = distinct !{!46, !49}
!47 = !{!30, !18, i64 152}
!48 = !{!30, !22, i64 104}
!49 = !{!"llvm.loop.mustprogress"}
end_hunk_1
