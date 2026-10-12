Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zlib-ng_ubsan/original/compare256_sse2?download=true
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
@50 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 152, i32 68 }, ptr @14 }
@51 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 157, i32 16 }, ptr @0, i8 6, i8 3 }
@52 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 175, i32 42 } }
@53 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 227, i32 37 } }
@54 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 237, i32 9 }, ptr @14 }
@55 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 237, i32 9 } }
@56 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 237, i32 9 }, ptr @35, i8 1, i8 0 }
@57 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 30, i32 32 }, ptr @0, i8 6, i8 3 }
@58 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 30, i32 32 }, ptr @2, i8 2, i8 0 }
@59 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 31, i32 31 }, ptr @0, i8 6, i8 3 }
@60 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 31, i32 31 }, ptr @2, i8 3, i8 0 }
@61 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 32, i32 32 }, ptr @0, i8 6, i8 3 }
@62 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 33, i32 34 } }
@63 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 36, i32 26 }, ptr @0, i8 6, i8 3 }
@64 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 36, i32 26 }, ptr @9, i8 5, i8 0 }
@65 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 44, i32 29 }, ptr @0, i8 6, i8 3 }
@66 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 57, i32 19 }, ptr @0, i8 6, i8 3 }
@67 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 57, i32 36 }, ptr @0, i8 6, i8 3 }
@68 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 62, i32 22 }, ptr @14 }
@69 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 64, i32 16 }, ptr @14 }
@70 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 66, i32 20 }, ptr @14 }
@71 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 70, i32 34 } }
@72 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 71, i32 30 } }
@73 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 74, i32 23 }, ptr @0, i8 6, i8 3 }
@74 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 75, i32 24 }, ptr @0, i8 6, i8 3 }
@75 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 77, i32 31 }, ptr @0, i8 6, i8 3 }
@76 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 82, i32 24 }, ptr @0, i8 6, i8 3 }
@77 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 82, i32 24 }, ptr @2, i8 6, i8 0 }
@78 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 82, i32 24 }, ptr @2 }
@79 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 82, i32 55 }, ptr @0, i8 6, i8 3 }
@80 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 82, i32 55 }, ptr @2, i8 6, i8 0 }
@81 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 82, i32 55 }, ptr @2 }
@82 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 82, i32 53 }, ptr @2 }
@83 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 94, i32 19 }, ptr @0, i8 6, i8 3 }
@84 = private unnamed_addr constant { i16, i16, [47 x i8] } { i16 -1, i16 0, [47 x i8] c"'unsigned int (*)(unsigned int, unsigned int)'\00" }
@85 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 94, i32 16 }, ptr @84 }
@86 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 94, i32 34 } }
@87 = private unnamed_addr constant { i16, i16, [16 x i8] } { i16 0, i16 6, [16 x i8] c"'unsigned char'\00" }
@88 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 95, i32 19 }, ptr @0, i8 6, i8 3 }
@89 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 95, i32 16 }, ptr @84 }
@90 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 95, i32 37 } }
@91 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 98, i32 23 }, ptr @0, i8 6, i8 3 }
@92 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 98, i32 20 }, ptr @84 }
@93 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 98, i32 41 } }
@94 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 98, i32 41 }, ptr @87, i8 0, i8 0 }
@95 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 101, i32 22 }, ptr @0, i8 6, i8 3 }
@96 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 101, i32 19 } }
@97 = private unnamed_addr constant { i16, i16, [29 x i8] } { i16 0, i16 8, [29 x i8] c"'Pos' (aka 'unsigned short')\00" }
@98 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 101, i32 19 }, ptr @97, i8 1, i8 0 }
@99 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 103, i32 40 }, ptr @14 }
@100 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 97, i32 37 }, ptr @14 }
@101 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 112, i32 21 } }
@102 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 113, i32 19 } }
@103 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 132, i32 43 } }
@104 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 133, i32 45 } }
@105 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 135, i32 17 }, ptr @14 }
@106 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 135, i32 17 } }
@107 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 135, i32 17 }, ptr @35, i8 1, i8 0 }
@108 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 139, i32 43 } }
@109 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 140, i32 45 } }
@110 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 142, i32 17 }, ptr @14 }
@111 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 142, i32 17 } }
@112 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 142, i32 17 }, ptr @35, i8 1, i8 0 }
@113 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 146, i32 43 } }
@114 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 147, i32 45 } }
@115 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 149, i32 17 }, ptr @14 }
@116 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 149, i32 17 } }
@117 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 149, i32 17 }, ptr @35, i8 1, i8 0 }
@118 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 152, i32 39 } }
@119 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 152, i32 54 } }
@120 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 152, i32 64 } }
@121 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 152, i32 68 }, ptr @14 }
@122 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 157, i32 16 }, ptr @0, i8 6, i8 3 }
@123 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 175, i32 42 } }
@124 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 179, i32 17 }, ptr @14 }
@125 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 189, i32 43 }, ptr @14 }
@126 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 189, i32 27 } }
@127 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 189, i32 27 }, ptr @35, i8 1, i8 0 }
@128 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 192, i32 47 }, ptr @14 }
@129 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 206, i32 36 } }
@130 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 206, i32 42 } }
@131 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 208, i32 27 }, ptr @0, i8 6, i8 3 }
@132 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 208, i32 24 }, ptr @84 }
@133 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 209, i32 27 }, ptr @0, i8 6, i8 3 }
@134 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 209, i32 24 }, ptr @84 }
@135 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 209, i32 45 } }
@136 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 210, i32 27 }, ptr @0, i8 6, i8 3 }
@137 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 210, i32 24 }, ptr @84 }
@138 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 210, i32 45 } }
@139 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 212, i32 26 }, ptr @0, i8 6, i8 3 }
@140 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 212, i32 23 } }
@141 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 212, i32 23 }, ptr @97, i8 1, i8 0 }
@142 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 222, i32 37 } }
@143 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 223, i32 41 } }
@144 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 227, i32 37 } }
@145 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 237, i32 9 }, ptr @14 }
@146 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 237, i32 9 } }
@147 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 237, i32 9 }, ptr @35, i8 1, i8 0 }
@148 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 244, i32 23 }, ptr @0, i8 6, i8 3 }
@149 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 247, i32 15 }, ptr @0, i8 6, i8 3 }
@.src.1 = private unnamed_addr constant [65 x i8] c"/opt-bench/work/zlib-ng_ubsan/zlib-ng/arch/x86/compare256_sse2.c\00", align 1
@150 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src.1, i32 18, i32 32 } }
@151 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src.1, i32 19, i32 32 } }
@152 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src.1, i32 39, i32 10 } }
@153 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src.1, i32 40, i32 10 } }
@154 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src.1, i32 56, i32 24 }, ptr @14 }
@155 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src.1, i32 59, i32 25 } }
@156 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src.1, i32 59, i32 37 } }
@157 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src.1, i32 63, i32 21 } }
@158 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src.1, i32 64, i32 21 } }
@.src.2 = private unnamed_addr constant [50 x i8] c"/usr/lib/llvm-24/lib/clang/24/include/emmintrin.h\00", align 1
@159 = private unnamed_addr constant { i16, i16, [29 x i8] } { i16 -1, i16 0, [29 x i8] c"'const struct __loadu_si128'\00" }
@160 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.2, i32 3469, i32 47 }, ptr @159, i8 0, i8 3 }
@161 = private unnamed_addr constant { i16, i16, [51 x i8] } { i16 -1, i16 0, [51 x i8] c"'const __m128i_u' (vector of 2 'long long' values)\00" }
@162 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.2, i32 3469, i32 47 }, ptr @161, i8 0, i8 0 }
@163 = private unnamed_addr constant { i16, i16, [49 x i8] } { i16 -1, i16 0, [49 x i8] c"'const __m128i' (vector of 2 'long long' values)\00" }
@164 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.2, i32 3451, i32 10 }, ptr @163, i8 4, i8 0 }
@.src.3 = private unnamed_addr constant [48 x i8] c"/opt-bench/work/zlib-ng_ubsan/zlib-ng/zmemory.h\00", align 1
@165 = private unnamed_addr constant { i16, i16, [27 x i8] } { i16 -1, i16 0, [27 x i8] c"'const unaligned_uint64_t'\00" }
@166 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.3, i32 37, i32 47 }, ptr @165, i8 0, i8 3 }
@167 = private unnamed_addr constant { i16, i16, [45 x i8] } { i16 0, i16 12, [45 x i8] c"'const uint64_t' (aka 'const unsigned long')\00" }
@168 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.3, i32 37, i32 47 }, ptr @167, i8 0, i8 0 }
@169 = private unnamed_addr constant { i16, i16, [27 x i8] } { i16 -1, i16 0, [27 x i8] c"'const unaligned_uint16_t'\00" }
@170 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.3, i32 15, i32 47 }, ptr @169, i8 0, i8 3 }
@171 = private unnamed_addr constant { i16, i16, [46 x i8] } { i16 0, i16 8, [46 x i8] c"'const uint16_t' (aka 'const unsigned short')\00" }
@172 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.3, i32 15, i32 47 }, ptr @171, i8 0, i8 0 }
@173 = private unnamed_addr constant { i16, i16, [27 x i8] } { i16 -1, i16 0, [27 x i8] c"'const unaligned_uint32_t'\00" }
@174 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.3, i32 26, i32 47 }, ptr @173, i8 0, i8 3 }
@175 = private unnamed_addr constant { i16, i16, [44 x i8] } { i16 0, i16 10, [44 x i8] c"'const uint32_t' (aka 'const unsigned int')\00" }
@176 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.3, i32 26, i32 47 }, ptr @175, i8 0, i8 0 }

; Function Attrs: nounwind uwtable
define hidden i32 @compare256_sse2(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !func_sanitize !12 {
bb.a:
  %i.a = call fastcc i32 @compare256_sse2_static(ptr noundef %0, ptr noundef %1)
  ret i32 %i.a
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @compare256_sse2_static(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !func_sanitize !12 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 8 uses
  %i.b = trunc i64 %i.a to i32
  %i.c = and i32 %i.b, 15                         ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.e = add i64 %i.a, 256, !nosanitize !13       ; 2 uses
  %i.f = icmp ne ptr %0, null, !nosanitize !13    ; 3 uses
  %i.g = icmp ne i64 %i.e, 0
  %i.h = icmp ult ptr %0, inttoptr (i64 -256 to ptr)
  %i.i = and i1 %i.h, %i.g
  %i.j = and i1 %i.f, %i.i
  br i1 %i.j, label %bb.c, label %bb.b, !prof !14, !nosanitize !13

bb.b:                                             ; preds = %bb.a
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @150, i64 %i.a, i64 %i.e) #5, !nosanitize !13
  br label %bb.c, !nosanitize !13

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  %i.l = ptrtoint ptr %1 to i64, !nosanitize !13  ; 7 uses
  %i.m = add i64 %i.l, 256, !nosanitize !13       ; 2 uses
  %i.n = icmp ne ptr %1, null, !nosanitize !13    ; 3 uses
  %i.o = icmp ne i64 %i.m, 0
  %i.p = icmp ult ptr %1, inttoptr (i64 -256 to ptr)
  %i.q = and i1 %i.p, %i.o
  %i.r = and i1 %i.n, %i.q
  br i1 %i.r, label %bb.e, label %bb.d, !prof !14, !nosanitize !13

bb.d:                                             ; preds = %bb.c
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @151, i64 %i.l, i64 %i.m) #5, !nosanitize !13
  br label %bb.e, !nosanitize !13

bb.e:                                             ; preds = %bb.d, %bb.c
  br i1 %i.f, label %_mm_loadu_si128.exit71, label %bb.f, !prof !14, !nosanitize !13

bb.f:                                             ; preds = %bb.e
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @160, i64 %i.a) #5, !nosanitize !13
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @162, i64 %i.a) #5, !nosanitize !13
  br label %_mm_loadu_si128.exit71, !nosanitize !13

_mm_loadu_si128.exit71:                           ; preds = %bb.e, %bb.f
  %i.s = load <16 x i8>, ptr %0, align 1, !tbaa !15
  br i1 %i.n, label %_mm_loadu_si128.exit70, label %bb.g, !prof !14, !nosanitize !13

bb.g:                                             ; preds = %_mm_loadu_si128.exit71
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @160, i64 %i.l) #5, !nosanitize !13
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @162, i64 %i.l) #5, !nosanitize !13
  br label %_mm_loadu_si128.exit70, !nosanitize !13

_mm_loadu_si128.exit70:                           ; preds = %_mm_loadu_si128.exit71, %bb.g
  %i.t = load <16 x i8>, ptr %1, align 1, !tbaa !15
  %i.u = icmp eq <16 x i8> %i.s, %i.t
  %i.v = bitcast <16 x i1> %i.u to i16            ; 2 uses
  %.not = icmp eq i16 %i.v, -1
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_mm_loadu_si128.exit70
  %i.w = zext i16 %i.v to i32
  %i.x = xor i32 %i.w, -1
  %i.y = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.x, i1 true)
  br label %.thread

bb.i:                                             ; preds = %_mm_loadu_si128.exit70
  %i.z = sub nuw nsw i32 16, %i.c
  %i.aa = zext nneg i32 %i.z to i64               ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 %i.aa
  %i.ac = add i64 %i.aa, %i.a, !nosanitize !13    ; 2 uses
  %i.ad = icmp uge i64 %i.ac, %i.a, !nosanitize !13
  %i.ae = and i1 %i.f, %i.ad
  br i1 %i.ae, label %bb.k, label %bb.j, !prof !14, !nosanitize !13

bb.j:                                             ; preds = %bb.i
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @152, i64 %i.a, i64 %i.ac) #5, !nosanitize !13
  br label %bb.k, !nosanitize !13

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %i.aa
  %i.ag = add i64 %i.aa, %i.l, !nosanitize !13    ; 2 uses
  %i.ah = icmp uge i64 %i.ag, %i.l, !nosanitize !13
  %i.ai = and i1 %i.n, %i.ah
  br i1 %i.ai, label %.preheader, label %bb.l, !prof !14, !nosanitize !13

bb.l:                                             ; preds = %bb.k
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @153, i64 %i.l, i64 %i.ag) #5, !nosanitize !13
  br label %.preheader, !nosanitize !13

.preheader:                                       ; preds = %bb.k, %bb.l
  br label %bb.m

bb.m:                                             ; preds = %.preheader, %bb.t
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.t ], [ %i.aa, %.preheader ] ; 3 uses
  %.077 = phi i32 [ %i.az, %bb.t ], [ 0, %.preheader ]
  %.05075 = phi ptr [ %i.aw, %bb.t ], [ %i.af, %.preheader ] ; 4 uses
  %.05174 = phi ptr [ %i.au, %bb.t ], [ %i.ab, %.preheader ] ; 4 uses
  %i.aj = ptrtoint ptr %.05174 to i64, !nosanitize !13 ; 4 uses
  %i.ak = and i64 %i.aj, 15, !nosanitize !13
  %i.al = icmp eq i64 %i.ak, 0, !nosanitize !13
  br i1 %i.al, label %_mm_loadu_si128.exit69, label %bb.n, !prof !14, !nosanitize !13

bb.n:                                             ; preds = %bb.m
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @164, i64 %i.aj) #5, !nosanitize !13
  br label %_mm_loadu_si128.exit69, !nosanitize !13

_mm_loadu_si128.exit69:                           ; preds = %bb.n, %bb.m
  %i.am = load <16 x i8>, ptr %.05174, align 16, !tbaa !15
  %i.an = load <16 x i8>, ptr %.05075, align 1, !tbaa !15
  %i.ao = icmp eq <16 x i8> %i.am, %i.an
  %i.ap = bitcast <16 x i1> %i.ao to i16          ; 2 uses
  %.not60 = icmp eq i16 %i.ap, -1
  br i1 %.not60, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_mm_loadu_si128.exit69
  %i.aq = trunc nuw nsw i64 %indvars.iv to i32
  %i.ar = zext i16 %i.ap to i32
  %i.as = xor i32 %i.ar, -1
  %i.at = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.as, i1 true) ; 2 uses
  %2 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.aq, i32 %i.at), !nosanitize !13 ; 2 uses
  %3 = extractvalue { i32, i1 } %2, 0, !nosanitize !13 ; 2 uses
  %4 = extractvalue { i32, i1 } %2, 1, !nosanitize !13
  br i1 %4, label %5, label %.thread, !prof !16, !nosanitize !13

5:                                                ; preds = %bb.o
  %6 = zext nneg i32 %i.at to i64, !nosanitize !13
  call void @__ubsan_handle_add_overflow(ptr nonnull @154, i64 %indvars.iv, i64 %6) #6, !nosanitize !13
  br label %.thread, !nosanitize !13

bb.p:                                             ; preds = %_mm_loadu_si128.exit69
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 16
  %i.au = getelementptr inbounds nuw i8, ptr %.05174, i64 16
  %.not61 = icmp ugt ptr %.05174, inttoptr (i64 -17 to ptr)
  br i1 %.not61, label %bb.q, label %bb.r, !prof !16, !nosanitize !13

bb.q:                                             ; preds = %bb.p
  %i.av = add i64 %i.aj, 16, !nosanitize !13
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @155, i64 %i.aj, i64 %i.av) #5, !nosanitize !13
  br label %bb.r, !nosanitize !13

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.aw = getelementptr inbounds nuw i8, ptr %.05075, i64 16
  %.not62 = icmp ugt ptr %.05075, inttoptr (i64 -17 to ptr)
  br i1 %.not62, label %bb.s, label %bb.t, !prof !16, !nosanitize !13

bb.s:                                             ; preds = %bb.r
  %i.ax = ptrtoint ptr %.05075 to i64, !nosanitize !13 ; 2 uses
  %i.ay = add i64 %i.ax, 16, !nosanitize !13
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @156, i64 %i.ax, i64 %i.ay) #5, !nosanitize !13
  br label %bb.t, !nosanitize !13

bb.t:                                             ; preds = %bb.r, %bb.s
  %i.az = add nuw nsw i32 %.077, 1                ; 2 uses
  %exitcond = icmp eq i32 %i.az, 15
  br i1 %exitcond, label %bb.u, label %bb.m, !llvm.loop !45

bb.u:                                             ; preds = %bb.t
  %.not64 = icmp eq i32 %i.c, 0
  br i1 %.not64, label %.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.bb = ptrtoint ptr %i.d to i64, !nosanitize !13 ; 2 uses
  %i.bc = add i64 %i.bb, -16, !nosanitize !13     ; 2 uses
  %i.bd = icmp ne i64 %i.bc, 0, !nosanitize !13
  %i.be = icmp ugt ptr %i.d, inttoptr (i64 15 to ptr)
  %i.bf = and i1 %i.be, %i.bd, !nosanitize !13
  br i1 %i.bf, label %bb.x, label %bb.w, !prof !14, !nosanitize !13

bb.w:                                             ; preds = %bb.v
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @157, i64 %i.bb, i64 %i.bc) #5, !nosanitize !13
  br label %bb.x, !nosanitize !13

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.bh = ptrtoint ptr %i.k to i64, !nosanitize !13 ; 2 uses
  %i.bi = add i64 %i.bh, -16, !nosanitize !13     ; 2 uses
  %i.bj = icmp ne i64 %i.bi, 0, !nosanitize !13
  %i.bk = icmp ugt ptr %i.k, inttoptr (i64 15 to ptr)
  %i.bl = and i1 %i.bk, %i.bj, !nosanitize !13
  br i1 %i.bl, label %_mm_loadu_si128.exit, label %bb.y, !prof !14, !nosanitize !13

bb.y:                                             ; preds = %bb.x
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @158, i64 %i.bh, i64 %i.bi) #5, !nosanitize !13
  br label %_mm_loadu_si128.exit, !nosanitize !13

_mm_loadu_si128.exit:                             ; preds = %bb.y, %bb.x
  %i.bm = load <16 x i8>, ptr %i.ba, align 1, !tbaa !15
  %i.bn = load <16 x i8>, ptr %i.bg, align 1, !tbaa !15
  %i.bo = icmp eq <16 x i8> %i.bm, %i.bn
  %i.bp = bitcast <16 x i1> %i.bo to i16          ; 2 uses
  %.not65 = icmp eq i16 %i.bp, -1
  br i1 %.not65, label %.thread, label %bb.z

bb.z:                                             ; preds = %_mm_loadu_si128.exit
  %i.bq = zext i16 %i.bp to i32
  %i.br = xor i32 %i.bq, -1
  %i.bs = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.br, i1 true)
  %i.bt = add nuw nsw i32 %i.bs, 240
  br label %.thread

.thread:                                          ; preds = %5, %bb.o, %bb.z, %_mm_loadu_si128.exit, %bb.u, %bb.h
  %.2 = phi i32 [ %i.y, %bb.h ], [ %i.bt, %bb.z ], [ 256, %bb.u ], [ 256, %_mm_loadu_si128.exit ], [ %3, %bb.o ], [ %3, %5 ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define hidden i32 @longest_match_sse2(ptr noundef %0, i16 noundef zeroext %1) local_unnamed_addr #0 !func_sanitize !18 {
bb.a:
  %i.a = icmp ne ptr %0, null, !nosanitize !13
  %i.b = ptrtoint ptr %0 to i64, !nosanitize !13  ; 15 uses
  %i.c = and i64 %i.b, 63, !nosanitize !13
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !13
  %i.e = and i1 %i.a, %i.d, !nosanitize !13       ; 14 uses
  br i1 %i.e, label %bb.c, label %bb.b, !prof !14, !nosanitize !13

bb.b:                                             ; preds = %bb.a
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @1, i64 %i.b) #5, !nosanitize !13
  br label %bb.c, !nosanitize !13

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  %i.g = ptrtoint ptr %i.f to i64, !nosanitize !13 ; 2 uses
  %i.h = and i64 %i.g, 3, !nosanitize !13
  %i.i = icmp eq i64 %i.h, 0, !nosanitize !13
  br i1 %i.i, label %bb.e, label %bb.d, !prof !14, !nosanitize !13

bb.d:                                             ; preds = %bb.c
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @3, i64 %i.g) #5, !nosanitize !13
  br label %bb.e, !nosanitize !13

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = load i32, ptr %i.f, align 4, !tbaa !32   ; 4 uses
  br i1 %i.e, label %bb.g, label %bb.f, !prof !14, !nosanitize !13

bb.f:                                             ; preds = %bb.e
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @4, i64 %i.b) #5, !nosanitize !13
  br label %bb.g, !nosanitize !13

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.l = ptrtoint ptr %i.k to i64, !nosanitize !13 ; 2 uses
  %i.m = and i64 %i.l, 7, !nosanitize !13
  %i.n = icmp eq i64 %i.m, 0, !nosanitize !13
  br i1 %i.n, label %bb.i, label %bb.h, !prof !14, !nosanitize !13

bb.h:                                             ; preds = %bb.g
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @5, i64 %i.l) #5, !nosanitize !13
  br label %bb.i, !nosanitize !13

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.o = load i32, ptr %i.k, align 8, !tbaa !33   ; 4 uses
  br i1 %i.e, label %bb.k, label %bb.j, !prof !14, !nosanitize !13

bb.j:                                             ; preds = %bb.i
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @6, i64 %i.b) #5, !nosanitize !13
  br label %bb.k, !nosanitize !13

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !34   ; 9 uses
  %i.r = zext i32 %i.j to i64                     ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.r ; 6 uses
  %i.t = ptrtoint ptr %i.q to i64, !nosanitize !13 ; 21 uses
  %i.u = add i64 %i.t, %i.r, !nosanitize !13      ; 3 uses
  %i.v = icmp ne ptr %i.q, null                   ; 13 uses
  %i.w = icmp eq i64 %i.u, 0
  %i.x = xor i1 %i.v, %i.w
  %i.y = icmp uge i64 %i.u, %i.t, !nosanitize !13
  %i.z = and i1 %i.y, %i.x, !nosanitize !13
  br i1 %i.z, label %bb.m, label %bb.l, !prof !14, !nosanitize !13

bb.l:                                             ; preds = %bb.k
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @7, i64 %i.t, i64 %i.u) #5, !nosanitize !13
  br label %bb.m, !nosanitize !13

bb.m:                                             ; preds = %bb.l, %bb.k
  br i1 %i.e, label %bb.o, label %bb.n, !prof !14, !nosanitize !13

bb.n:                                             ; preds = %bb.m
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @8, i64 %i.b) #5, !nosanitize !13
  br label %bb.o, !nosanitize !13

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ab = ptrtoint ptr %i.aa to i64, !nosanitize !13 ; 2 uses
  %i.ac = and i64 %i.ab, 31, !nosanitize !13
  %i.ad = icmp eq i64 %i.ac, 0, !nosanitize !13
  br i1 %i.ad, label %bb.q, label %bb.p, !prof !14, !nosanitize !13

bb.p:                                             ; preds = %bb.o
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @10, i64 %i.ab) #5, !nosanitize !13
  br label %bb.q, !nosanitize !13

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ae = load ptr, ptr %i.aa, align 32, !tbaa !35 ; 6 uses
  br i1 %i.e, label %bb.s, label %bb.r, !prof !14, !nosanitize !13

bb.r:                                             ; preds = %bb.q
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @11, i64 %i.b) #5, !nosanitize !13
  br label %bb.s, !nosanitize !13

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !36 ; 2 uses
  br i1 %i.e, label %bb.u, label %bb.t, !prof !14, !nosanitize !13

bb.t:                                             ; preds = %bb.s
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @12, i64 %i.b) #5, !nosanitize !13
  br label %bb.u, !nosanitize !13

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !37
  %.not = icmp eq i32 %i.ai, 0
  br i1 %.not, label %.thread157, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %i.e, label %bb.x, label %bb.w, !prof !14, !nosanitize !13

bb.w:                                             ; preds = %bb.v
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @13, i64 %i.b) #5, !nosanitize !13
  br label %bb.x, !nosanitize !13

bb.x:                                             ; preds = %bb.v, %bb.w
  %i.aj = load i32, ptr %i.ah, align 4, !tbaa !37 ; 8 uses
  %i.ak = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %i.aj, i32 1), !nosanitize !13 ; 2 uses
  %i.al = extractvalue { i32, i1 } %i.ak, 0, !nosanitize !13 ; 4 uses
  %i.am = extractvalue { i32, i1 } %i.ak, 1, !nosanitize !13
  br i1 %i.am, label %.thread, label %bb.y, !prof !16, !nosanitize !13

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
  br i1 %i.ar, label %bb.aa, label %bb.ab, !prof !16, !nosanitize !13

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
  br i1 %i.aw, label %bb.ad, label %.thread157, !prof !16, !nosanitize !13

bb.ad:                                            ; preds = %bb.ac
  %i.ax = zext nneg i32 %i.aq to i64, !nosanitize !13
  call void @__ubsan_handle_sub_overflow(ptr nonnull @17, i64 %i.ax, i64 4) #6, !nosanitize !13
  br label %.thread157, !nosanitize !13

.thread157:                                       ; preds = %bb.u, %.thread, %bb.ac, %bb.ad, %bb.ab, %bb.y
  %i.ay = phi i32 [ %i.aj, %bb.y ], [ %i.aj, %bb.ab ], [ %i.aj, %bb.ad ], [ %i.aj, %bb.ac ], [ 0, %.thread ], [ 2, %bb.u ] ; 2 uses
  %.099 = phi i32 [ %i.al, %bb.y ], [ %i.aq, %bb.ab ], [ %i.av, %bb.ad ], [ %i.av, %bb.ac ], [ %i.al, %.thread ], [ 1, %bb.u ]
  %.pre = ptrtoint ptr %i.s to i64, !nosanitize !13 ; 10 uses
  br i1 %i.v, label %zng_memread_8.exit, label %bb.ae, !prof !14, !nosanitize !13

bb.ae:                                            ; preds = %.thread157
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @166, i64 %.pre) #5, !nosanitize !13
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @168, i64 %.pre) #5, !nosanitize !13
  br label %zng_memread_8.exit, !nosanitize !13

zng_memread_8.exit:                               ; preds = %.thread157, %bb.ae
  %i.az = load i64, ptr %i.s, align 1, !tbaa !15  ; 4 uses
  %.sroa.0.sroa.0238.0.extract.trunc = trunc i64 %i.az to i16
  %i.ba = trunc i64 %i.az to i32
  %.sroa.0.sroa.6.0.insert.shift = and i32 %i.ba, -65536
  %.sroa.6.0.extract.shift = and i64 %i.az, -4294967296
  %i.bb = zext i32 %.099 to i64                   ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.bb
  %i.bd = add i64 %.pre, %i.bb, !nosanitize !13   ; 2 uses
  %i.be = icmp uge i64 %i.bd, %.pre, !nosanitize !13
  %i.bf = and i1 %i.v, %i.be
  br i1 %i.bf, label %zng_memread_8.exit148, label %bb.af, !prof !14, !nosanitize !13

bb.af:                                            ; preds = %zng_memread_8.exit
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @18, i64 %.pre, i64 %i.bd) #5, !nosanitize !13
  br label %zng_memread_8.exit148, !nosanitize !13

zng_memread_8.exit148:                            ; preds = %zng_memread_8.exit, %bb.af
  %i.bg = load i64, ptr %i.bc, align 1, !tbaa !15 ; 3 uses
  %.sroa.0.sroa.0.0.extract.trunc = trunc i64 %i.bg to i16
  %.sroa.0.sroa.7.0.extract.shift259 = lshr i64 %i.bg, 16
  %.sroa.0.sroa.7.0.extract.trunc = trunc i64 %.sroa.0.sroa.7.0.extract.shift259 to i16
  %.sroa.7.0.extract.shift = lshr i64 %i.bg, 32
  %.sroa.7.0.extract.trunc = trunc nuw i64 %.sroa.7.0.extract.shift to i32
  %i.bh = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.bb
  %i.bi = add i64 %i.bb, %i.t, !nosanitize !13    ; 3 uses
  %i.bj = icmp eq i64 %i.bi, 0
  %i.bk = xor i1 %i.v, %i.bj
  %i.bl = icmp uge i64 %i.bi, %i.t, !nosanitize !13
  %i.bm = and i1 %i.bl, %i.bk, !nosanitize !13
  br i1 %i.bm, label %bb.ah, label %bb.ag, !prof !14, !nosanitize !13

bb.ag:                                            ; preds = %zng_memread_8.exit148
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @19, i64 %i.t, i64 %i.bi) #5, !nosanitize !13
  br label %bb.ah, !nosanitize !13

bb.ah:                                            ; preds = %bb.ag, %zng_memread_8.exit148
  br i1 %i.e, label %bb.aj, label %bb.ai, !prof !14, !nosanitize !13

bb.ai:                                            ; preds = %bb.ah
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @20, i64 %i.b) #5, !nosanitize !13
  br label %bb.aj, !nosanitize !13

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bo = load i32, ptr %i.bn, align 16, !tbaa !38 ; 2 uses
  br i1 %i.e, label %bb.al, label %bb.ak, !prof !14, !nosanitize !13

bb.ak:                                            ; preds = %bb.aj
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @21, i64 %i.b) #5, !nosanitize !13
  br label %bb.al, !nosanitize !13

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !39
  %.not136 = icmp ult i32 %i.ay, %i.bq
  %i.br = lshr i32 %i.bo, 2
  %spec.select = select i1 %.not136, i32 %i.bo, i32 %i.br
  br i1 %i.e, label %bb.an, label %bb.am, !prof !14, !nosanitize !13

bb.am:                                            ; preds = %bb.al
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @22, i64 %i.b) #5, !nosanitize !13
  br label %bb.an, !nosanitize !13

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !40
  br i1 %i.e, label %bb.ap, label %bb.ao, !prof !14, !nosanitize !13

bb.ao:                                            ; preds = %bb.an
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @23, i64 %i.b) #5, !nosanitize !13
  br label %bb.ap, !nosanitize !13

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.bv = ptrtoint ptr %i.bu to i64, !nosanitize !13 ; 3 uses
  %i.bw = and i64 %i.bv, 63, !nosanitize !13
  %i.bx = icmp eq i64 %i.bw, 0, !nosanitize !13   ; 2 uses
  br i1 %i.bx, label %bb.ar, label %bb.aq, !prof !14, !nosanitize !13

bb.aq:                                            ; preds = %bb.ap
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @24, i64 %i.bv) #5, !nosanitize !13
  br label %bb.ar, !nosanitize !13

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.by = load i32, ptr %i.bu, align 64, !tbaa !41 ; 2 uses
  %i.bz = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %i.by, i32 262), !nosanitize !13 ; 2 uses
  %i.ca = extractvalue { i32, i1 } %i.bz, 0, !nosanitize !13
  %i.cb = extractvalue { i32, i1 } %i.bz, 1, !nosanitize !13
  br i1 %i.cb, label %bb.as, label %bb.at, !prof !16, !nosanitize !13

bb.as:                                            ; preds = %bb.ar
  %i.cc = zext nneg i32 %i.by to i64, !nosanitize !13
  call void @__ubsan_handle_sub_overflow(ptr nonnull @25, i64 %i.cc, i64 262) #6, !nosanitize !13
  br label %bb.at, !nosanitize !13

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.cd = icmp ugt i32 %i.j, %i.ca
  br i1 %i.cd, label %bb.au, label %bb.bd

bb.au:                                            ; preds = %bb.at
  br i1 %i.e, label %bb.aw, label %bb.av, !prof !14, !nosanitize !13

bb.av:                                            ; preds = %bb.au
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @26, i64 %i.b) #5, !nosanitize !13
  br label %bb.aw, !nosanitize !13

bb.aw:                                            ; preds = %bb.av, %bb.au
  br i1 %i.bx, label %bb.ay, label %bb.ax, !prof !14, !nosanitize !13

bb.ax:                                            ; preds = %bb.aw
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @27, i64 %i.bv) #5, !nosanitize !13
  br label %bb.ay, !nosanitize !13

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.ce = load i32, ptr %i.bu, align 64, !tbaa !41 ; 2 uses
  %i.cf = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %i.ce, i32 262), !nosanitize !13 ; 2 uses
  %i.cg = extractvalue { i32, i1 } %i.cf, 0, !nosanitize !13 ; 2 uses
  %i.ch = extractvalue { i32, i1 } %i.cf, 1, !nosanitize !13
  br i1 %i.ch, label %bb.az, label %bb.ba, !prof !16, !nosanitize !13

bb.az:                                            ; preds = %bb.ay
  %i.ci = zext nneg i32 %i.ce to i64, !nosanitize !13
  call void @__ubsan_handle_sub_overflow(ptr nonnull @28, i64 %i.ci, i64 262) #6, !nosanitize !13
  br label %bb.ba, !nosanitize !13

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.cj = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %i.j, i32 %i.cg), !nosanitize !13 ; 2 uses
  %i.ck = extractvalue { i32, i1 } %i.cj, 0, !nosanitize !13
  %i.cl = extractvalue { i32, i1 } %i.cj, 1, !nosanitize !13
  br i1 %i.cl, label %bb.bb, label %bb.bc, !prof !16, !nosanitize !13

bb.bb:                                            ; preds = %bb.ba
  %i.cm = zext i32 %i.cg to i64, !nosanitize !13
  call void @__ubsan_handle_sub_overflow(ptr nonnull @29, i64 %i.r, i64 %i.cm) #6, !nosanitize !13
  br label %bb.bc, !nosanitize !13

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.cn = trunc i32 %i.ck to i16
  br label %bb.bd

bb.bd:                                            ; preds = %bb.at, %bb.bc
  %i.co = phi i16 [ %i.cn, %bb.bc ], [ 0, %bb.at ] ; 4 uses
  br i1 %i.e, label %bb.bf, label %bb.be, !prof !14, !nosanitize !13

bb.be:                                            ; preds = %bb.bd
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @30, i64 %i.b) #5, !nosanitize !13
  br label %bb.bf, !nosanitize !13

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.cq = load i32, ptr %i.cp, align 16, !tbaa !46
  %i.cr = icmp slt i32 %i.cq, 5
  %i.cs = trunc i64 %i.az to i32
  %.sroa.0.sroa.0238.0.insert.ext = and i32 %i.cs, 65535
  %.sroa.0.sroa.0238.0.insert.insert = or disjoint i32 %.sroa.0.sroa.6.0.insert.shift, %.sroa.0.sroa.0238.0.insert.ext ; 2 uses
  %i.ct = ptrtoint ptr %i.ae to i64               ; 12 uses
  %i.cu = icmp ne ptr %i.ae, null                 ; 8 uses
  %.sroa.0.0.insert.ext235 = zext i32 %.sroa.0.sroa.0238.0.insert.insert to i64
  %.sroa.0.0.insert.insert237 = or disjoint i64 %.sroa.6.0.extract.shift, %.sroa.0.0.insert.ext235
  %i.cv = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  %.not141 = icmp ugt ptr %i.s, inttoptr (i64 -3 to ptr)
  %i.cw = add i64 %.pre, 2
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 136
  br label %bb.bg

bb.bg:                                            ; preds = %bb.dz, %bb.bf
  %.sroa.0.sroa.7.0 = phi i16 [ %.sroa.0.sroa.7.0.extract.trunc, %bb.bf ], [ %.sroa.0.sroa.7.1, %bb.dz ] ; 3 uses
  %.sroa.0.sroa.0.0 = phi i16 [ %.sroa.0.sroa.0.0.extract.trunc, %bb.bf ], [ %.sroa.0.sroa.0.1, %bb.dz ] ; 4 uses
  %.sroa.7.0 = phi i32 [ %.sroa.7.0.extract.trunc, %bb.bf ], [ %.sroa.7.1, %bb.dz ] ; 2 uses
  %.0112 = phi i16 [ %1, %bb.bf ], [ %i.jh, %bb.dz ] ; 4 uses
  %.0108 = phi ptr [ %i.bh, %bb.bf ], [ %.2110, %bb.dz ] ; 7 uses
  %.1104 = phi i32 [ %spec.select, %bb.bf ], [ %i.ir, %bb.dz ] ; 3 uses
  %.0101 = phi i32 [ %i.ay, %bb.bf ], [ %.2, %bb.dz ] ; 12 uses
  %i.cy = zext i16 %.0112 to i32
  %.not137 = icmp ugt i32 %i.j, %i.cy
  br i1 %.not137, label %bb.bh, label %.thread165

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
  br i1 %i.dh, label %zng_memread_2.exit.i, label %bb.bj, !prof !14, !nosanitize !13

bb.bj:                                            ; preds = %bb.bi
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @31, i64 %i.da, i64 %i.de) #5, !nosanitize !13
  br label %zng_memread_2.exit.i, !nosanitize !13

zng_memread_2.exit.i:                             ; preds = %bb.bi, %bb.bj
  %i.di = load i16, ptr %i.dd, align 1, !tbaa !15
  %.not184 = icmp eq i16 %i.di, %.sroa.0.sroa.0.0
  br i1 %.not184, label %bb.bk, label %bb.bo

bb.bk:                                            ; preds = %zng_memread_2.exit.i
  %i.dj = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.dc ; 2 uses
  %i.dk = add i64 %i.dc, %i.t, !nosanitize !13    ; 3 uses
  %i.dl = icmp eq i64 %i.dk, 0
  %i.dm = xor i1 %i.v, %i.dl
  %i.dn = icmp uge i64 %i.dk, %i.t, !nosanitize !13
  %i.do = and i1 %i.dn, %i.dm, !nosanitize !13
  br i1 %i.do, label %bb.bm, label %bb.bl, !prof !14, !nosanitize !13

bb.bl:                                            ; preds = %bb.bk
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @32, i64 %i.t, i64 %i.dk) #5, !nosanitize !13
  br label %bb.bm, !nosanitize !13

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  br i1 %i.v, label %zng_memread_2.exit.i149, label %bb.bn, !prof !14, !nosanitize !13

bb.bn:                                            ; preds = %bb.bm
  %i.dp = ptrtoint ptr %i.dj to i64, !nosanitize !13 ; 2 uses
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @170, i64 %i.dp) #5, !nosanitize !13
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @172, i64 %i.dp) #5, !nosanitize !13
  br label %zng_memread_2.exit.i149, !nosanitize !13

zng_memread_2.exit.i149:                          ; preds = %bb.bn, %bb.bm
  %i.dq = load i16, ptr %i.dj, align 1, !tbaa !15
  %.not185 = icmp eq i16 %i.dq, %.sroa.0.sroa.0238.0.extract.trunc
  br i1 %.not185, label %.loopexit, label %bb.bo

bb.bo:                                            ; preds = %zng_memread_2.exit.i149, %zng_memread_2.exit.i
  %i.dr = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %.2105, i32 1), !nosanitize !13 ; 2 uses
  %i.ds = extractvalue { i32, i1 } %i.dr, 0, !nosanitize !13 ; 2 uses
  %i.dt = extractvalue { i32, i1 } %i.dr, 1, !nosanitize !13
  br i1 %i.dt, label %bb.bp, label %bb.bq, !prof !16, !nosanitize !13

bb.bp:                                            ; preds = %bb.bo
  %i.du = zext nneg i32 %.2105 to i64, !nosanitize !13
  call void @__ubsan_handle_sub_overflow(ptr nonnull @33, i64 %i.du, i64 1) #6, !nosanitize !13
  br label %bb.bq, !nosanitize !13

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %.not140 = icmp eq i32 %i.ds, 0
  br i1 %.not140, label %.thread165, label %bb.br

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
  br i1 %i.ed, label %bb.bt, label %bb.bs, !prof !14, !nosanitize !13

bb.bs:                                            ; preds = %bb.br
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @34, i64 %i.ct, i64 %i.dz) #5, !nosanitize !13
  br label %bb.bt, !nosanitize !13

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %i.ee = ptrtoint ptr %i.dx to i64, !nosanitize !13 ; 2 uses
  %i.ef = and i64 %i.ee, 1, !nosanitize !13
  %i.eg = icmp eq i64 %i.ef, 0, !nosanitize !13
  %i.eh = and i1 %i.cu, %i.eg
  br i1 %i.eh, label %bb.bv, label %bb.bu, !prof !14, !nosanitize !13

bb.bu:                                            ; preds = %bb.bt
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @36, i64 %i.ee) #5, !nosanitize !13
  br label %bb.bv, !nosanitize !13

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.ei = load i16, ptr %i.dx, align 2, !tbaa !42 ; 2 uses
  %i.ej = icmp ult i16 %i.co, %i.ei
  br i1 %i.ej, label %bb.bi, label %.thread165

bb.bw:                                            ; preds = %bb.bh
  %i.ek = icmp ugt i32 %.0101, 7
  %i.el = ptrtoint ptr %.0108 to i64, !nosanitize !13 ; 6 uses
  %i.em = icmp ne ptr %.0108, null                ; 4 uses
  br i1 %i.ek, label %.preheader186, label %.preheader189

.preheader189:                                    ; preds = %bb.bw
  %.sroa.0.sroa.7.0.insert.ext = zext i16 %.sroa.0.sroa.7.0 to i32
  %.sroa.0.sroa.7.0.insert.shift = shl nuw i32 %.sroa.0.sroa.7.0.insert.ext, 16
  %.sroa.0.sroa.0.0.insert.ext = zext i16 %.sroa.0.sroa.0.0 to i32
  %.sroa.0.sroa.0.0.insert.insert = or disjoint i32 %.sroa.0.sroa.7.0.insert.shift, %.sroa.0.sroa.0.0.insert.ext
  br label %bb.cn

.preheader186:                                    ; preds = %bb.bw
  %.sroa.0.sroa.7.0.insert.ext228 = zext i16 %.sroa.0.sroa.7.0 to i64
  %.sroa.0.sroa.7.0.insert.shift229 = shl nuw nsw i64 %.sroa.0.sroa.7.0.insert.ext228, 16
  %.sroa.0.sroa.0.0.insert.ext223 = zext i16 %.sroa.0.sroa.0.0 to i64
  %.sroa.0.sroa.0.0.insert.insert225 = or disjoint i64 %.sroa.0.sroa.7.0.insert.shift229, %.sroa.0.sroa.0.0.insert.ext223
  %.sroa.7.0.insert.ext = zext i32 %.sroa.7.0 to i64
  %.sroa.7.0.insert.shift = shl nuw i64 %.sroa.7.0.insert.ext, 32
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.7.0.insert.shift, %.sroa.0.sroa.0.0.insert.insert225
  br label %bb.bx

bb.bx:                                            ; preds = %.preheader186, %bb.cm
  %.2114 = phi i16 [ %i.fw, %bb.cm ], [ %.0112, %.preheader186 ] ; 3 uses
  %.3106 = phi i32 [ %i.fg, %bb.cm ], [ %.1104, %.preheader186 ] ; 3 uses
  %i.en = zext i16 %.2114 to i32
  %i.eo = zext i16 %.2114 to i64                  ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.0108, i64 %i.eo ; 2 uses
  %i.eq = add i64 %i.eo, %i.el, !nosanitize !13   ; 3 uses
  %i.er = icmp eq i64 %i.eq, 0
  %i.es = xor i1 %i.em, %i.er
  %i.et = icmp uge i64 %i.eq, %i.el, !nosanitize !13
  %i.eu = and i1 %i.et, %i.es, !nosanitize !13
  br i1 %i.eu, label %bb.bz, label %bb.by, !prof !14, !nosanitize !13

bb.by:                                            ; preds = %bb.bx
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @37, i64 %i.el, i64 %i.eq) #5, !nosanitize !13
  br label %bb.bz, !nosanitize !13

bb.bz:                                            ; preds = %bb.by, %bb.bx
  br i1 %i.em, label %zng_memread_8.exit.i, label %bb.ca, !prof !14, !nosanitize !13

bb.ca:                                            ; preds = %bb.bz
  %i.ev = ptrtoint ptr %i.ep to i64, !nosanitize !13 ; 2 uses
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @166, i64 %i.ev) #5, !nosanitize !13
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @168, i64 %i.ev) #5, !nosanitize !13
  br label %zng_memread_8.exit.i, !nosanitize !13

zng_memread_8.exit.i:                             ; preds = %bb.ca, %bb.bz
  %i.ew = load i64, ptr %i.ep, align 1, !tbaa !15
  %.not182 = icmp eq i64 %i.ew, %.sroa.0.0.insert.insert
  br i1 %.not182, label %bb.cb, label %bb.cf

bb.cb:                                            ; preds = %zng_memread_8.exit.i
  %i.ex = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.eo ; 2 uses
  %i.ey = add i64 %i.eo, %i.t, !nosanitize !13    ; 3 uses
  %i.ez = icmp eq i64 %i.ey, 0
  %i.fa = xor i1 %i.v, %i.ez
  %i.fb = icmp uge i64 %i.ey, %i.t, !nosanitize !13
  %i.fc = and i1 %i.fb, %i.fa, !nosanitize !13
  br i1 %i.fc, label %bb.cd, label %bb.cc, !prof !14, !nosanitize !13

bb.cc:                                            ; preds = %bb.cb
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @38, i64 %i.t, i64 %i.ey) #5, !nosanitize !13
  br label %bb.cd, !nosanitize !13

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  br i1 %i.v, label %zng_memread_8.exit.i151, label %bb.ce, !prof !14, !nosanitize !13

bb.ce:                                            ; preds = %bb.cd
  %i.fd = ptrtoint ptr %i.ex to i64, !nosanitize !13 ; 2 uses
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @166, i64 %i.fd) #5, !nosanitize !13
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @168, i64 %i.fd) #5, !nosanitize !13
  br label %zng_memread_8.exit.i151, !nosanitize !13

zng_memread_8.exit.i151:                          ; preds = %bb.ce, %bb.cd
  %i.fe = load i64, ptr %i.ex, align 1, !tbaa !15
  %.not183 = icmp eq i64 %i.fe, %.sroa.0.0.insert.insert237
  br i1 %.not183, label %.loopexit, label %bb.cf

bb.cf:                                            ; preds = %zng_memread_8.exit.i151, %zng_memread_8.exit.i
  %i.ff = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %.3106, i32 1), !nosanitize !13 ; 2 uses
  %i.fg = extractvalue { i32, i1 } %i.ff, 0, !nosanitize !13 ; 2 uses
  %i.fh = extractvalue { i32, i1 } %i.ff, 1, !nosanitize !13
  br i1 %i.fh, label %bb.cg, label %bb.ch, !prof !16, !nosanitize !13

bb.cg:                                            ; preds = %bb.cf
  %i.fi = zext nneg i32 %.3106 to i64, !nosanitize !13
  call void @__ubsan_handle_sub_overflow(ptr nonnull @39, i64 %i.fi, i64 1) #6, !nosanitize !13
  br label %bb.ch, !nosanitize !13

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %.not139 = icmp eq i32 %i.fg, 0
  br i1 %.not139, label %.thread165, label %bb.ci

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
  br i1 %i.fr, label %bb.ck, label %bb.cj, !prof !14, !nosanitize !13

bb.cj:                                            ; preds = %bb.ci
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @40, i64 %i.ct, i64 %i.fn) #5, !nosanitize !13
  br label %bb.ck, !nosanitize !13

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.fs = ptrtoint ptr %i.fl to i64, !nosanitize !13 ; 2 uses
  %i.ft = and i64 %i.fs, 1, !nosanitize !13
  %i.fu = icmp eq i64 %i.ft, 0, !nosanitize !13
  %i.fv = and i1 %i.cu, %i.fu
  br i1 %i.fv, label %bb.cm, label %bb.cl, !prof !14, !nosanitize !13

bb.cl:                                            ; preds = %bb.ck
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @41, i64 %i.fs) #5, !nosanitize !13
  br label %bb.cm, !nosanitize !13

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %i.fw = load i16, ptr %i.fl, align 2, !tbaa !42 ; 2 uses
  %i.fx = icmp ult i16 %i.co, %i.fw
  br i1 %i.fx, label %bb.bx, label %.thread165

bb.cn:                                            ; preds = %.preheader189, %bb.dc
  %.3115 = phi i16 [ %i.hh, %bb.dc ], [ %.0112, %.preheader189 ] ; 3 uses
  %.4107 = phi i32 [ %i.gr, %bb.dc ], [ %.1104, %.preheader189 ] ; 3 uses
  %i.fy = zext i16 %.3115 to i32
  %i.fz = zext i16 %.3115 to i64                  ; 4 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.0108, i64 %i.fz ; 2 uses
  %i.gb = add i64 %i.fz, %i.el, !nosanitize !13   ; 3 uses
  %i.gc = icmp eq i64 %i.gb, 0
  %i.gd = xor i1 %i.em, %i.gc
  %i.ge = icmp uge i64 %i.gb, %i.el, !nosanitize !13
  %i.gf = and i1 %i.ge, %i.gd, !nosanitize !13
  br i1 %i.gf, label %bb.cp, label %bb.co, !prof !14, !nosanitize !13

bb.co:                                            ; preds = %bb.cn
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @42, i64 %i.el, i64 %i.gb) #5, !nosanitize !13
  br label %bb.cp, !nosanitize !13

bb.cp:                                            ; preds = %bb.co, %bb.cn
  br i1 %i.em, label %zng_memread_4.exit.i, label %bb.cq, !prof !14, !nosanitize !13

bb.cq:                                            ; preds = %bb.cp
  %i.gg = ptrtoint ptr %i.ga to i64, !nosanitize !13 ; 2 uses
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @174, i64 %i.gg) #5, !nosanitize !13
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @176, i64 %i.gg) #5, !nosanitize !13
  br label %zng_memread_4.exit.i, !nosanitize !13

zng_memread_4.exit.i:                             ; preds = %bb.cq, %bb.cp
  %i.gh = load i32, ptr %i.ga, align 1, !tbaa !15
  %.not180 = icmp eq i32 %i.gh, %.sroa.0.sroa.0.0.insert.insert
  br i1 %.not180, label %bb.cr, label %bb.cv

bb.cr:                                            ; preds = %zng_memread_4.exit.i
  %i.gi = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.fz ; 2 uses
  %i.gj = add i64 %i.fz, %i.t, !nosanitize !13    ; 3 uses
  %i.gk = icmp eq i64 %i.gj, 0
  %i.gl = xor i1 %i.v, %i.gk
  %i.gm = icmp uge i64 %i.gj, %i.t, !nosanitize !13
  %i.gn = and i1 %i.gm, %i.gl, !nosanitize !13
  br i1 %i.gn, label %bb.ct, label %bb.cs, !prof !14, !nosanitize !13

bb.cs:                                            ; preds = %bb.cr
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @43, i64 %i.t, i64 %i.gj) #5, !nosanitize !13
  br label %bb.ct, !nosanitize !13

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  br i1 %i.v, label %zng_memread_4.exit.i153, label %bb.cu, !prof !14, !nosanitize !13

bb.cu:                                            ; preds = %bb.ct
  %i.go = ptrtoint ptr %i.gi to i64, !nosanitize !13 ; 2 uses
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @174, i64 %i.go) #5, !nosanitize !13
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @176, i64 %i.go) #5, !nosanitize !13
  br label %zng_memread_4.exit.i153, !nosanitize !13

zng_memread_4.exit.i153:                          ; preds = %bb.cu, %bb.ct
  %i.gp = load i32, ptr %i.gi, align 1, !tbaa !15
  %.not181 = icmp eq i32 %i.gp, %.sroa.0.sroa.0238.0.insert.insert
  br i1 %.not181, label %.loopexit, label %bb.cv

bb.cv:                                            ; preds = %zng_memread_4.exit.i153, %zng_memread_4.exit.i
  %i.gq = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %.4107, i32 1), !nosanitize !13 ; 2 uses
  %i.gr = extractvalue { i32, i1 } %i.gq, 0, !nosanitize !13 ; 2 uses
  %i.gs = extractvalue { i32, i1 } %i.gq, 1, !nosanitize !13
  br i1 %i.gs, label %bb.cw, label %bb.cx, !prof !16, !nosanitize !13

bb.cw:                                            ; preds = %bb.cv
  %i.gt = zext nneg i32 %.4107 to i64, !nosanitize !13
  call void @__ubsan_handle_sub_overflow(ptr nonnull @44, i64 %i.gt, i64 1) #6, !nosanitize !13
  br label %bb.cx, !nosanitize !13

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %.not138 = icmp eq i32 %i.gr, 0
  br i1 %.not138, label %.thread165, label %bb.cy

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
  br i1 %i.hc, label %bb.da, label %bb.cz, !prof !14, !nosanitize !13

bb.cz:                                            ; preds = %bb.cy
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @45, i64 %i.ct, i64 %i.gy) #5, !nosanitize !13
  br label %bb.da, !nosanitize !13

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %i.hd = ptrtoint ptr %i.gw to i64, !nosanitize !13 ; 2 uses
  %i.he = and i64 %i.hd, 1, !nosanitize !13
  %i.hf = icmp eq i64 %i.he, 0, !nosanitize !13
  %i.hg = and i1 %i.cu, %i.hf
  br i1 %i.hg, label %bb.dc, label %bb.db, !prof !14, !nosanitize !13

bb.db:                                            ; preds = %bb.da
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @46, i64 %i.hd) #5, !nosanitize !13
  br label %bb.dc, !nosanitize !13

bb.dc:                                            ; preds = %bb.db, %bb.da
  %i.hh = load i16, ptr %i.gw, align 2, !tbaa !42 ; 2 uses
  %i.hi = icmp ult i16 %i.co, %i.hh
  br i1 %i.hi, label %bb.cn, label %.thread165

.loopexit:                                        ; preds = %zng_memread_4.exit.i153, %zng_memread_8.exit.i151, %zng_memread_2.exit.i149
  %.4116 = phi i16 [ %.1113, %zng_memread_2.exit.i149 ], [ %.2114, %zng_memread_8.exit.i151 ], [ %.3115, %zng_memread_4.exit.i153 ] ; 2 uses
  %.5 = phi i32 [ %.2105, %zng_memread_2.exit.i149 ], [ %.3106, %zng_memread_8.exit.i151 ], [ %.4107, %zng_memread_4.exit.i153 ] ; 2 uses
  br i1 %.not141, label %bb.dd, label %bb.de, !prof !16, !nosanitize !13

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
  br i1 %i.hq, label %bb.dg, label %bb.df, !prof !14, !nosanitize !13

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
  br i1 %i.hx, label %bb.di, label %bb.dh, !prof !14, !nosanitize !13

bb.dh:                                            ; preds = %bb.dg
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @49, i64 %i.hs, i64 %i.ht) #5, !nosanitize !13
  br label %bb.di, !nosanitize !13

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %i.hy = call fastcc i32 @compare256_sse2_static(ptr noundef nonnull %i.cv, ptr noundef nonnull %i.hr) ; 2 uses
  %i.hz = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.hy, i32 2), !nosanitize !13 ; 2 uses
  %i.ia = extractvalue { i32, i1 } %i.hz, 0, !nosanitize !13 ; 9 uses
  %i.ib = extractvalue { i32, i1 } %i.hz, 1, !nosanitize !13
  br i1 %i.ib, label %bb.dj, label %bb.dk, !prof !16, !nosanitize !13

bb.dj:                                            ; preds = %bb.di
  %i.ic = zext i32 %i.hy to i64, !nosanitize !13
  call void @__ubsan_handle_add_overflow(ptr nonnull @50, i64 %i.ic, i64 2) #6, !nosanitize !13
  br label %bb.dk, !nosanitize !13

bb.dk:                                            ; preds = %bb.dj, %bb.di
  %i.id = icmp ugt i32 %i.ia, %.0101
  br i1 %i.id, label %bb.dl, label %bb.ds

bb.dl:                                            ; preds = %bb.dk
  br i1 %i.e, label %bb.dn, label %bb.dm, !prof !14, !nosanitize !13

bb.dm:                                            ; preds = %bb.dl
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @51, i64 %i.b) #5, !nosanitize !13
  br label %bb.dn, !nosanitize !13

bb.dn:                                            ; preds = %bb.dl, %bb.dm
  store i32 %i.hj, ptr %i.cx, align 8, !tbaa !43
  %.not142 = icmp ult i32 %i.ia, %i.ag
  br i1 %.not142, label %bb.do, label %.thread165

bb.do:                                            ; preds = %bb.dn
  %.not143 = icmp ult i32 %i.ia, %i.bt
  br i1 %.not143, label %bb.dp, label %.thread165

bb.dp:                                            ; preds = %bb.do
  %i.ie = icmp ugt i32 %i.ia, 3
  %i.if = icmp ugt i32 %i.ia, 7
  %spec.select202.v = select i1 %i.if, i32 -7, i32 -3
  %.1100.v = select i1 %i.ie, i32 %spec.select202.v, i32 -1
  %.1100 = add i32 %i.ia, %.1100.v
  %i.ig = zext i32 %.1100 to i64                  ; 4 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.ig
  %i.ii = add i64 %.pre, %i.ig, !nosanitize !13   ; 2 uses
  %.not144 = icmp ult i64 %i.ii, %.pre, !nosanitize !13
  br i1 %.not144, label %bb.dq, label %zng_memread_8.exit155, !prof !16, !nosanitize !13

bb.dq:                                            ; preds = %bb.dp
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @52, i64 %.pre, i64 %i.ii) #5, !nosanitize !13
  br label %zng_memread_8.exit155, !nosanitize !13

zng_memread_8.exit155:                            ; preds = %bb.dp, %bb.dq
  %i.ij = load i64, ptr %i.ih, align 1, !tbaa !15 ; 3 uses
  %.sroa.0.sroa.0.0.extract.trunc222 = trunc i64 %i.ij to i16 ; 2 uses
  %.sroa.0.sroa.7.0.extract.shift226260 = lshr i64 %i.ij, 16
  %.sroa.0.sroa.7.0.extract.trunc227 = trunc i64 %.sroa.0.sroa.7.0.extract.shift226260 to i16 ; 2 uses
  %.sroa.7.0.extract.shift220 = lshr i64 %i.ij, 32
  %.sroa.7.0.extract.trunc221 = trunc nuw i64 %.sroa.7.0.extract.shift220 to i32 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ig ; 2 uses
  %i.il = add i64 %i.ig, %i.t, !nosanitize !13    ; 3 uses
  %i.im = icmp eq i64 %i.il, 0
  %i.in = xor i1 %i.v, %i.im
  %i.io = icmp uge i64 %i.il, %i.t, !nosanitize !13
  %i.ip = and i1 %i.io, %i.in, !nosanitize !13
  br i1 %i.ip, label %.thread159, label %bb.dr, !prof !14, !nosanitize !13

bb.dr:                                            ; preds = %zng_memread_8.exit155
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @53, i64 %i.t, i64 %i.il) #5, !nosanitize !13
  br label %.thread159, !nosanitize !13

bb.ds:                                            ; preds = %bb.dk
  br i1 %i.cr, label %.thread165, label %.thread159, !prof !44

.thread159:                                       ; preds = %zng_memread_8.exit155, %bb.dr, %bb.ds
  %.sroa.0.sroa.7.1 = phi i16 [ %.sroa.0.sroa.7.0.extract.trunc227, %zng_memread_8.exit155 ], [ %.sroa.0.sroa.7.0.extract.trunc227, %bb.dr ], [ %.sroa.0.sroa.7.0, %bb.ds ]
  %.sroa.0.sroa.0.1 = phi i16 [ %.sroa.0.sroa.0.0.extract.trunc222, %zng_memread_8.exit155 ], [ %.sroa.0.sroa.0.0.extract.trunc222, %bb.dr ], [ %.sroa.0.sroa.0.0, %bb.ds ]
  %.sroa.7.1 = phi i32 [ %.sroa.7.0.extract.trunc221, %zng_memread_8.exit155 ], [ %.sroa.7.0.extract.trunc221, %bb.dr ], [ %.sroa.7.0, %bb.ds ]
  %.2110 = phi ptr [ %i.ik, %zng_memread_8.exit155 ], [ %i.ik, %bb.dr ], [ %.0108, %bb.ds ]
  %.2 = phi i32 [ %i.ia, %zng_memread_8.exit155 ], [ %i.ia, %bb.dr ], [ %.0101, %bb.ds ] ; 3 uses
  %i.iq = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %.5, i32 1), !nosanitize !13 ; 2 uses
  %i.ir = extractvalue { i32, i1 } %i.iq, 0, !nosanitize !13 ; 2 uses
  %i.is = extractvalue { i32, i1 } %i.iq, 1, !nosanitize !13
  br i1 %i.is, label %bb.dt, label %bb.du, !prof !16, !nosanitize !13

bb.dt:                                            ; preds = %.thread159
  %i.it = zext nneg i32 %.5 to i64, !nosanitize !13
  call void @__ubsan_handle_sub_overflow(ptr nonnull @54, i64 %i.it, i64 1) #6, !nosanitize !13
  br label %bb.du, !nosanitize !13

bb.du:                                            ; preds = %bb.dt, %.thread159
  %.not145 = icmp eq i32 %i.ir, 0
  br i1 %.not145, label %.thread165, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.iu = and i32 %i.o, %i.hj
  %i.iv = zext nneg i32 %i.iu to i64              ; 2 uses
  %i.iw = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %i.iv ; 2 uses
  %i.ix = shl nuw nsw i64 %i.iv, 1
  %i.iy = add i64 %i.ix, %i.ct, !nosanitize !13   ; 3 uses
  %i.iz = icmp eq i64 %i.iy, 0
  %i.ja = xor i1 %i.cu, %i.iz
  %i.jb = icmp uge i64 %i.iy, %i.ct, !nosanitize !13
  %i.jc = and i1 %i.jb, %i.ja, !nosanitize !13
  br i1 %i.jc, label %bb.dx, label %bb.dw, !prof !14, !nosanitize !13

bb.dw:                                            ; preds = %bb.dv
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @55, i64 %i.ct, i64 %i.iy) #5, !nosanitize !13
  br label %bb.dx, !nosanitize !13

bb.dx:                                            ; preds = %bb.dw, %bb.dv
  %i.jd = ptrtoint ptr %i.iw to i64, !nosanitize !13 ; 2 uses
end_hunk_0
begin_hunk_1_@longest_match_sse2:bb.a

bb.dy:                                            ; preds = %bb.dx
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @56, i64 %i.jd) #5, !nosanitize !13
  br label %bb.dz, !nosanitize !13

bb.dz:                                            ; preds = %bb.dy, %bb.dx
  %i.jh = load i16, ptr %i.iw, align 2, !tbaa !42 ; 2 uses
  %i.ji = icmp ult i16 %i.co, %i.jh
  br i1 %i.ji, label %bb.bg, label %.thread165

.thread165:                                       ; preds = %bb.dn, %bb.do, %bb.du, %bb.dz, %bb.ds, %bb.bg, %bb.cx, %bb.dc, %bb.ch, %bb.cm, %bb.bq, %bb.bv
  %.4123 = phi i32 [ %.0101, %bb.ch ], [ %.0101, %bb.cx ], [ %.0101, %bb.bq ], [ %.0101, %bb.bv ], [ %.0101, %bb.cm ], [ %.0101, %bb.dc ], [ %.0101, %bb.bg ], [ %.2, %bb.dz ], [ %i.ia, %bb.do ], [ %.0101, %bb.ds ], [ %.2, %bb.du ], [ %i.ag, %bb.dn ]
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
define hidden i32 @longest_match_slow_sse2(ptr noundef %0, i16 noundef zeroext %1) local_unnamed_addr #0 !func_sanitize !18 {
bb.a:
  %i.a = icmp ne ptr %0, null, !nosanitize !13
  %i.b = ptrtoint ptr %0 to i64, !nosanitize !13  ; 24 uses
  %i.c = and i64 %i.b, 63, !nosanitize !13
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !13
  %i.e = and i1 %i.a, %i.d, !nosanitize !13       ; 23 uses
  br i1 %i.e, label %bb.c, label %bb.b, !prof !14, !nosanitize !13

bb.b:                                             ; preds = %bb.a
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @57, i64 %i.b) #5, !nosanitize !13
  br label %bb.c, !nosanitize !13

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  %i.g = ptrtoint ptr %i.f to i64, !nosanitize !13 ; 2 uses
  %i.h = and i64 %i.g, 3, !nosanitize !13
  %i.i = icmp eq i64 %i.h, 0, !nosanitize !13
  br i1 %i.i, label %bb.e, label %bb.d, !prof !14, !nosanitize !13

bb.d:                                             ; preds = %bb.c
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @58, i64 %i.g) #5, !nosanitize !13
  br label %bb.e, !nosanitize !13

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = load i32, ptr %i.f, align 4, !tbaa !32   ; 6 uses
  br i1 %i.e, label %bb.g, label %bb.f, !prof !14, !nosanitize !13

bb.f:                                             ; preds = %bb.e
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @59, i64 %i.b) #5, !nosanitize !13
  br label %bb.g, !nosanitize !13

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.l = ptrtoint ptr %i.k to i64, !nosanitize !13 ; 2 uses
  %i.m = and i64 %i.l, 7, !nosanitize !13
  %i.n = icmp eq i64 %i.m, 0, !nosanitize !13
  br i1 %i.n, label %bb.i, label %bb.h, !prof !14, !nosanitize !13

bb.h:                                             ; preds = %bb.g
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @60, i64 %i.l) #5, !nosanitize !13
  br label %bb.i, !nosanitize !13

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.o = load i32, ptr %i.k, align 8, !tbaa !33   ; 5 uses
  br i1 %i.e, label %bb.k, label %bb.j, !prof !14, !nosanitize !13

bb.j:                                             ; preds = %bb.i
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @61, i64 %i.b) #5, !nosanitize !13
  br label %bb.k, !nosanitize !13

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !34   ; 7 uses
  %i.r = zext i32 %i.j to i64                     ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.r ; 12 uses
  %i.t = ptrtoint ptr %i.q to i64, !nosanitize !13 ; 14 uses
  %i.u = add i64 %i.t, %i.r, !nosanitize !13      ; 3 uses
  %i.v = icmp ne ptr %i.q, null                   ; 12 uses
  %i.w = icmp eq i64 %i.u, 0
  %i.x = xor i1 %i.v, %i.w
  %i.y = icmp uge i64 %i.u, %i.t, !nosanitize !13
  %i.z = and i1 %i.y, %i.x, !nosanitize !13
  br i1 %i.z, label %bb.m, label %bb.l, !prof !14, !nosanitize !13

bb.l:                                             ; preds = %bb.k
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @62, i64 %i.t, i64 %i.u) #5, !nosanitize !13
  br label %bb.m, !nosanitize !13

bb.m:                                             ; preds = %bb.l, %bb.k
  br i1 %i.e, label %bb.o, label %bb.n, !prof !14, !nosanitize !13

bb.n:                                             ; preds = %bb.m
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @63, i64 %i.b) #5, !nosanitize !13
  br label %bb.o, !nosanitize !13

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ab = ptrtoint ptr %i.aa to i64, !nosanitize !13 ; 2 uses
  %i.ac = and i64 %i.ab, 31, !nosanitize !13
  %i.ad = icmp eq i64 %i.ac, 0, !nosanitize !13
  br i1 %i.ad, label %bb.q, label %bb.p, !prof !14, !nosanitize !13

bb.p:                                             ; preds = %bb.o
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @64, i64 %i.ab) #5, !nosanitize !13
  br label %bb.q, !nosanitize !13

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ae = load ptr, ptr %i.aa, align 32, !tbaa !35 ; 7 uses
  br i1 %i.e, label %bb.s, label %bb.r, !prof !14, !nosanitize !13

bb.r:                                             ; preds = %bb.q
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @65, i64 %i.b) #5, !nosanitize !13
  br label %bb.s, !nosanitize !13

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 3 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !36 ; 2 uses
  br i1 %i.e, label %bb.u, label %bb.t, !prof !14, !nosanitize !13

bb.t:                                             ; preds = %bb.s
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @66, i64 %i.b) #5, !nosanitize !13
  br label %bb.u, !nosanitize !13

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !37
  %.not = icmp eq i32 %i.ai, 0
  br i1 %.not, label %.thread290, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %i.e, label %bb.x, label %bb.w, !prof !14, !nosanitize !13

bb.w:                                             ; preds = %bb.v
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @67, i64 %i.b) #5, !nosanitize !13
  br label %bb.x, !nosanitize !13

bb.x:                                             ; preds = %bb.v, %bb.w
  %i.aj = load i32, ptr %i.ah, align 4, !tbaa !37 ; 8 uses
  %i.ak = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %i.aj, i32 1), !nosanitize !13 ; 2 uses
  %i.al = extractvalue { i32, i1 } %i.ak, 0, !nosanitize !13 ; 4 uses
  %i.am = extractvalue { i32, i1 } %i.ak, 1, !nosanitize !13
  br i1 %i.am, label %.thread, label %bb.y, !prof !16, !nosanitize !13

.thread:                                          ; preds = %bb.x
  %i.an = zext nneg i32 %i.aj to i64, !nosanitize !13
  call void @__ubsan_handle_sub_overflow(ptr nonnull @68, i64 %i.an, i64 1) #6, !nosanitize !13
  br label %.thread290

bb.y:                                             ; preds = %bb.x
  %i.ao = icmp ugt i32 %i.aj, 3
  br i1 %i.ao, label %bb.z, label %.thread290

bb.z:                                             ; preds = %bb.y
  %i.ap = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %i.al, i32 2), !nosanitize !13 ; 2 uses
  %i.aq = extractvalue { i32, i1 } %i.ap, 0, !nosanitize !13 ; 3 uses
  %i.ar = extractvalue { i32, i1 } %i.ap, 1, !nosanitize !13
  br i1 %i.ar, label %bb.aa, label %bb.ab, !prof !16, !nosanitize !13

bb.aa:                                            ; preds = %bb.z
  %i.as = zext nneg i32 %i.al to i64, !nosanitize !13
  call void @__ubsan_handle_sub_overflow(ptr nonnull @69, i64 %i.as, i64 2) #6, !nosanitize !13
  br label %bb.ab, !nosanitize !13

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.at = icmp ugt i32 %i.aj, 7
  br i1 %i.at, label %bb.ac, label %.thread290

bb.ac:                                            ; preds = %bb.ab
  %i.au = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %i.aq, i32 4), !nosanitize !13 ; 2 uses
  %i.av = extractvalue { i32, i1 } %i.au, 0, !nosanitize !13 ; 2 uses
  %i.aw = extractvalue { i32, i1 } %i.au, 1, !nosanitize !13
  br i1 %i.aw, label %bb.ad, label %.thread290, !prof !16, !nosanitize !13

bb.ad:                                            ; preds = %bb.ac
  %i.ax = zext nneg i32 %i.aq to i64, !nosanitize !13
  call void @__ubsan_handle_sub_overflow(ptr nonnull @70, i64 %i.ax, i64 4) #6, !nosanitize !13
  br label %.thread290, !nosanitize !13

.thread290:                                       ; preds = %bb.u, %.thread, %bb.ac, %bb.ad, %bb.ab, %bb.y
  %i.ay = phi i32 [ %i.aj, %bb.y ], [ %i.aj, %bb.ab ], [ %i.aj, %bb.ad ], [ %i.aj, %bb.ac ], [ 0, %.thread ], [ 2, %bb.u ] ; 6 uses
  %.0186 = phi i32 [ %i.al, %bb.y ], [ %i.aq, %bb.ab ], [ %i.av, %bb.ad ], [ %i.av, %bb.ac ], [ %i.al, %.thread ], [ 1, %bb.u ]
  %.pre = ptrtoint ptr %i.s to i64, !nosanitize !13 ; 20 uses
  br i1 %i.v, label %zng_memread_8.exit, label %bb.ae, !prof !14, !nosanitize !13

bb.ae:                                            ; preds = %.thread290
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @166, i64 %.pre) #5, !nosanitize !13
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @168, i64 %.pre) #5, !nosanitize !13
  br label %zng_memread_8.exit, !nosanitize !13

zng_memread_8.exit:                               ; preds = %.thread290, %bb.ae
  %i.az = load i64, ptr %i.s, align 1, !tbaa !15  ; 4 uses
  %.sroa.0.sroa.0433.0.extract.trunc = trunc i64 %i.az to i16
  %i.ba = zext i32 %.0186 to i64                  ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.ba
  %i.bc = add i64 %.pre, %i.ba, !nosanitize !13   ; 2 uses
  %i.bd = icmp uge i64 %i.bc, %.pre, !nosanitize !13
  %i.be = and i1 %i.v, %i.bd
  br i1 %i.be, label %zng_memread_8.exit281, label %bb.af, !prof !14, !nosanitize !13

bb.af:                                            ; preds = %zng_memread_8.exit
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @71, i64 %.pre, i64 %i.bc) #5, !nosanitize !13
  br label %zng_memread_8.exit281, !nosanitize !13

zng_memread_8.exit281:                            ; preds = %zng_memread_8.exit, %bb.af
  %i.bf = load i64, ptr %i.bb, align 1, !tbaa !15 ; 3 uses
  %.sroa.0.sroa.0.0.extract.trunc = trunc i64 %i.bf to i16
  %.sroa.0.sroa.7.0.extract.shift464 = lshr i64 %i.bf, 16
  %.sroa.0.sroa.7.0.extract.trunc = trunc i64 %.sroa.0.sroa.7.0.extract.shift464 to i16
  %.sroa.7.0.extract.shift = lshr i64 %i.bf, 32
  %.sroa.7.0.extract.trunc = trunc nuw i64 %.sroa.7.0.extract.shift to i32
  %i.bg = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ba ; 3 uses
  %i.bh = add i64 %i.ba, %i.t, !nosanitize !13    ; 3 uses
  %i.bi = icmp eq i64 %i.bh, 0
  %i.bj = xor i1 %i.v, %i.bi
  %i.bk = icmp uge i64 %i.bh, %i.t, !nosanitize !13
  %i.bl = and i1 %i.bk, %i.bj, !nosanitize !13
  br i1 %i.bl, label %bb.ah, label %bb.ag, !prof !14, !nosanitize !13

bb.ag:                                            ; preds = %zng_memread_8.exit281
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @72, i64 %i.t, i64 %i.bh) #5, !nosanitize !13
  br label %bb.ah, !nosanitize !13

bb.ah:                                            ; preds = %bb.ag, %zng_memread_8.exit281
  br i1 %i.e, label %bb.aj, label %bb.ai, !prof !14, !nosanitize !13

bb.ai:                                            ; preds = %bb.ah
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @73, i64 %i.b) #5, !nosanitize !13
  br label %bb.aj, !nosanitize !13

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bn = load i32, ptr %i.bm, align 16, !tbaa !38 ; 2 uses
  br i1 %i.e, label %bb.al, label %bb.ak, !prof !14, !nosanitize !13

bb.ak:                                            ; preds = %bb.aj
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @74, i64 %i.b) #5, !nosanitize !13
  br label %bb.al, !nosanitize !13

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !39
  %.not256 = icmp ult i32 %i.ay, %i.bp
  %i.bq = lshr i32 %i.bn, 2
  %spec.select = select i1 %.not256, i32 %i.bn, i32 %i.bq
  br i1 %i.e, label %bb.an, label %bb.am, !prof !14, !nosanitize !13

bb.am:                                            ; preds = %bb.al
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @75, i64 %i.b) #5, !nosanitize !13
  br label %bb.an, !nosanitize !13

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !40
  br i1 %i.e, label %bb.ap, label %bb.ao, !prof !14, !nosanitize !13

bb.ao:                                            ; preds = %bb.an
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @76, i64 %i.b) #5, !nosanitize !13
  br label %bb.ap, !nosanitize !13

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.bu = ptrtoint ptr %i.bt to i64, !nosanitize !13 ; 3 uses
  %i.bv = and i64 %i.bu, 63, !nosanitize !13
  %i.bw = icmp eq i64 %i.bv, 0, !nosanitize !13   ; 2 uses
  br i1 %i.bw, label %bb.ar, label %bb.aq, !prof !14, !nosanitize !13

bb.aq:                                            ; preds = %bb.ap
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @77, i64 %i.bu) #5, !nosanitize !13
  br label %bb.ar, !nosanitize !13

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.bx = load i32, ptr %i.bt, align 64, !tbaa !41 ; 2 uses
  %i.by = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %i.bx, i32 262), !nosanitize !13 ; 2 uses
  %i.bz = extractvalue { i32, i1 } %i.by, 0, !nosanitize !13
  %i.ca = extractvalue { i32, i1 } %i.by, 1, !nosanitize !13
  br i1 %i.ca, label %bb.as, label %bb.at, !prof !16, !nosanitize !13

bb.as:                                            ; preds = %bb.ar
  %i.cb = zext nneg i32 %i.bx to i64, !nosanitize !13
  call void @__ubsan_handle_sub_overflow(ptr nonnull @78, i64 %i.cb, i64 262) #6, !nosanitize !13
  br label %bb.at, !nosanitize !13

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.cc = icmp ugt i32 %i.j, %i.bz
  br i1 %i.cc, label %bb.au, label %bb.bd

bb.au:                                            ; preds = %bb.at
  br i1 %i.e, label %bb.aw, label %bb.av, !prof !14, !nosanitize !13

bb.av:                                            ; preds = %bb.au
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @79, i64 %i.b) #5, !nosanitize !13
  br label %bb.aw, !nosanitize !13

bb.aw:                                            ; preds = %bb.av, %bb.au
  br i1 %i.bw, label %bb.ay, label %bb.ax, !prof !14, !nosanitize !13

bb.ax:                                            ; preds = %bb.aw
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @80, i64 %i.bu) #5, !nosanitize !13
  br label %bb.ay, !nosanitize !13

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.cd = load i32, ptr %i.bt, align 64, !tbaa !41 ; 2 uses
  %i.ce = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %i.cd, i32 262), !nosanitize !13 ; 2 uses
  %i.cf = extractvalue { i32, i1 } %i.ce, 0, !nosanitize !13 ; 2 uses
  %i.cg = extractvalue { i32, i1 } %i.ce, 1, !nosanitize !13
  br i1 %i.cg, label %bb.az, label %bb.ba, !prof !16, !nosanitize !13

bb.az:                                            ; preds = %bb.ay
  %i.ch = zext nneg i32 %i.cd to i64, !nosanitize !13
  call void @__ubsan_handle_sub_overflow(ptr nonnull @81, i64 %i.ch, i64 262) #6, !nosanitize !13
  br label %bb.ba, !nosanitize !13

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.ci = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %i.j, i32 %i.cf), !nosanitize !13 ; 2 uses
  %i.cj = extractvalue { i32, i1 } %i.ci, 0, !nosanitize !13
  %i.ck = extractvalue { i32, i1 } %i.ci, 1, !nosanitize !13
  br i1 %i.ck, label %bb.bb, label %bb.bc, !prof !16, !nosanitize !13

bb.bb:                                            ; preds = %bb.ba
  %i.cl = zext i32 %i.cf to i64, !nosanitize !13
  call void @__ubsan_handle_sub_overflow(ptr nonnull @82, i64 %i.r, i64 %i.cl) #6, !nosanitize !13
  br label %bb.bc, !nosanitize !13

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.cm = trunc i32 %i.cj to i16
  br label %bb.bd

bb.bd:                                            ; preds = %bb.at, %bb.bc
  %i.cn = phi i16 [ %i.cm, %bb.bc ], [ 0, %bb.at ] ; 5 uses
  %i.co = icmp ugt i32 %i.ay, 2
  br i1 %i.co, label %bb.be, label %.thread291

bb.be:                                            ; preds = %bb.bd
  br i1 %i.e, label %bb.bg, label %bb.bf, !prof !14, !nosanitize !13

bb.bf:                                            ; preds = %bb.be
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @83, i64 %i.b) #5, !nosanitize !13
  br label %bb.bg, !nosanitize !13

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !49 ; 4 uses
  %i.cr = getelementptr i8, ptr %i.cq, i64 -8
  %i.cs = load i32, ptr %i.cr, align 4, !nosanitize !13
  %i.ct = icmp eq i32 %i.cs, -1056584962, !nosanitize !13
  br i1 %i.ct, label %bb.bh, label %bb.bj, !nosanitize !13

bb.bh:                                            ; preds = %bb.bg
  %i.cu = getelementptr i8, ptr %i.cq, i64 -4
  %i.cv = load i32, ptr %i.cu, align 8, !nosanitize !13
  %i.cw = icmp eq i32 %i.cv, -455559067, !nosanitize !13
  br i1 %i.cw, label %bb.bj, label %bb.bi, !prof !14, !nosanitize !13

bb.bi:                                            ; preds = %bb.bh
  %i.cx = ptrtoint ptr %i.cq to i64, !nosanitize !13
  call void @__ubsan_handle_function_type_mismatch(ptr nonnull @85, i64 %i.cx) #5, !nosanitize !13
  br label %bb.bj, !nosanitize !13

bb.bj:                                            ; preds = %bb.bh, %bb.bi, %bb.bg
  %i.cy = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.cz = add i64 %.pre, 1, !nosanitize !13       ; 2 uses
  %i.da = icmp eq i64 %i.cz, 0
  %i.db = xor i1 %i.v, %i.da
  %i.dc = icmp ne ptr %i.s, inttoptr (i64 -1 to ptr)
  %i.dd = and i1 %i.dc, %i.db, !nosanitize !13
  br i1 %i.dd, label %bb.bl, label %bb.bk, !prof !14, !nosanitize !13

bb.bk:                                            ; preds = %bb.bj
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @86, i64 %.pre, i64 %i.cz) #5, !nosanitize !13
  br label %bb.bl, !nosanitize !13

bb.bl:                                            ; preds = %bb.bj, %bb.bk
  %i.de = load i8, ptr %i.cy, align 1, !tbaa !15
  %i.df = zext i8 %i.de to i32
  %i.dg = call i32 %i.cq(i32 noundef 0, i32 noundef %i.df) #5
  br i1 %i.e, label %bb.bn, label %bb.bm, !prof !14, !nosanitize !13

bb.bm:                                            ; preds = %bb.bl
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @88, i64 %i.b) #5, !nosanitize !13
  br label %bb.bn, !nosanitize !13

bb.bn:                                            ; preds = %bb.bl, %bb.bm
  %i.dh = load ptr, ptr %i.cp, align 8, !tbaa !49 ; 4 uses
  %i.di = getelementptr i8, ptr %i.dh, i64 -8
  %i.dj = load i32, ptr %i.di, align 4, !nosanitize !13
  %i.dk = icmp eq i32 %i.dj, -1056584962, !nosanitize !13
  br i1 %i.dk, label %bb.bo, label %bb.bq, !nosanitize !13
end_hunk_1
begin_hunk_2_@longest_match_slow_sse2:bb.a
  %i.ei = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.eh ; 2 uses
  %i.ej = add i64 %.pre, %i.eh, !nosanitize !13   ; 2 uses
  %i.ek = icmp uge i64 %i.ej, %.pre, !nosanitize !13
  %i.el = and i1 %i.v, %i.ek
  br i1 %i.el, label %bb.bz, label %bb.by, !prof !14, !nosanitize !13

bb.by:                                            ; preds = %bb.bx
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @93, i64 %.pre, i64 %i.ej) #5, !nosanitize !13
  br label %bb.bz, !nosanitize !13

bb.bz:                                            ; preds = %bb.by, %bb.bx
  br i1 %i.v, label %bb.cb, label %bb.ca, !prof !14, !nosanitize !13

bb.ca:                                            ; preds = %bb.bz
  %i.em = ptrtoint ptr %i.ei to i64, !nosanitize !13
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @94, i64 %i.em) #5, !nosanitize !13
  br label %bb.cb, !nosanitize !13

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %i.en = load i8, ptr %i.ei, align 1, !tbaa !15
  %i.eo = zext i8 %i.en to i32
  %i.ep = call i32 %i.dz(i32 noundef %.0180370, i32 noundef %i.eo) #5 ; 2 uses
  br i1 %i.e, label %bb.cd, label %bb.cc, !prof !14, !nosanitize !13

bb.cc:                                            ; preds = %bb.cb
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @95, i64 %i.b) #5, !nosanitize !13
  br label %bb.cd, !nosanitize !13

bb.cd:                                            ; preds = %bb.cb, %bb.cc
  %i.eq = load ptr, ptr %i.dy, align 8, !tbaa !50 ; 3 uses
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
  br i1 %i.fa, label %bb.cf, label %bb.ce, !prof !14, !nosanitize !13

bb.ce:                                            ; preds = %bb.cd
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @96, i64 %i.eu, i64 %i.ev) #5, !nosanitize !13
  br label %bb.cf, !nosanitize !13

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %i.fb = ptrtoint ptr %i.es to i64, !nosanitize !13 ; 2 uses
  %i.fc = and i64 %i.fb, 1, !nosanitize !13
  %i.fd = icmp eq i64 %i.fc, 0, !nosanitize !13
  %i.fe = and i1 %i.ew, %i.fd
  br i1 %i.fe, label %bb.ch, label %bb.cg, !prof !14, !nosanitize !13

bb.cg:                                            ; preds = %bb.cf
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @98, i64 %i.fb) #5, !nosanitize !13
  br label %bb.ch, !nosanitize !13

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %i.ff = load i16, ptr %i.es, align 2, !tbaa !42 ; 2 uses
  %i.fg = icmp ult i16 %i.ff, %.0220367
  br i1 %i.fg, label %bb.ci, label %bb.cl

bb.ci:                                            ; preds = %bb.ch
  %i.fh = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %.0181369, i32 2), !nosanitize !13 ; 2 uses
  %i.fi = extractvalue { i32, i1 } %i.fh, 0, !nosanitize !13
  %i.fj = extractvalue { i32, i1 } %i.fh, 1, !nosanitize !13
  br i1 %i.fj, label %bb.cj, label %bb.ck, !prof !16, !nosanitize !13

bb.cj:                                            ; preds = %bb.ci
  call void @__ubsan_handle_sub_overflow(ptr nonnull @99, i64 %i.eh, i64 2) #6, !nosanitize !13
  br label %bb.ck, !nosanitize !13

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.fk = trunc i32 %i.fi to i16
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ch, %bb.ck
  %.1221 = phi i16 [ %i.ff, %bb.ck ], [ %.0220367, %bb.ch ] ; 4 uses
  %.1183 = phi i16 [ %i.fk, %bb.ck ], [ %.0182368, %bb.ch ] ; 6 uses
  %i.fl = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.0181369, i32 1), !nosanitize !13 ; 2 uses
  %i.fm = extractvalue { i32, i1 } %i.fl, 0, !nosanitize !13 ; 2 uses
  %i.fn = extractvalue { i32, i1 } %i.fl, 1, !nosanitize !13
  br i1 %i.fn, label %bb.cm, label %bb.cn, !prof !16, !nosanitize !13

bb.cm:                                            ; preds = %bb.cl
  call void @__ubsan_handle_add_overflow(ptr nonnull @100, i64 %i.eh, i64 1) #6, !nosanitize !13
  br label %bb.cn, !nosanitize !13

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %.not259 = icmp ugt i32 %i.fm, %i.ay
  br i1 %.not259, label %._crit_edge, label %bb.bs, !llvm.loop !47

._crit_edge:                                      ; preds = %bb.cn
  %i.fo = add i16 %.1183, %i.cn                   ; 3 uses
  %.not260 = icmp ugt i16 %.1221, %i.fo
  br i1 %.not260, label %bb.co, label %.thread297.thread328

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
  br i1 %i.fy, label %bb.cq, label %bb.cp, !prof !14, !nosanitize !13

bb.cp:                                            ; preds = %bb.co
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @101, i64 %i.t, i64 %i.fs) #5, !nosanitize !13
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
  br i1 %i.gg, label %.thread291, label %bb.cr, !prof !14, !nosanitize !13

bb.cr:                                            ; preds = %bb.cq
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @102, i64 %i.ga, i64 %i.gb) #5, !nosanitize !13
  br label %.thread291, !nosanitize !13

.thread291:                                       ; preds = %bb.cq, %bb.cr, %bb.bd
  %.2222 = phi i16 [ %1, %bb.bd ], [ %.1221, %bb.cr ], [ %.1221, %bb.cq ] ; 2 uses
  %.1214 = phi ptr [ %i.q, %bb.bd ], [ %i.fr, %bb.cr ], [ %i.fr, %bb.cq ]
  %.1207 = phi ptr [ %i.bg, %bb.bd ], [ %i.fz, %bb.cr ], [ %i.fz, %bb.cq ]
  %.0200 = phi i16 [ %i.cn, %bb.bd ], [ %i.fo, %bb.cr ], [ %i.fo, %bb.cq ]
  %.2184 = phi i16 [ 0, %bb.bd ], [ %.1183, %bb.cr ], [ %.1183, %bb.cq ]
  %i.gh = zext i16 %.2222 to i32
  %.not261372 = icmp ugt i32 %i.j, %i.gh
  br i1 %.not261372, label %.lr.ph380, label %.thread308

.lr.ph380:                                        ; preds = %.thread291
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
  %.sroa.0.sroa.0433.0.insert.ext = and i32 %i.gs, 65535
  %.sroa.0.sroa.0433.0.insert.insert = or disjoint i32 %.sroa.0.sroa.6.0.insert.ext, %.sroa.0.sroa.0433.0.insert.ext
  br label %bb.cs

bb.cs:                                            ; preds = %.lr.ph380, %.thread297
  %.sroa.0.sroa.7.0 = phi i16 [ %.sroa.0.sroa.7.0.extract.trunc, %.lr.ph380 ], [ %.sroa.0.sroa.7.2, %.thread297 ] ; 3 uses
  %.sroa.0.sroa.0.0 = phi i16 [ %.sroa.0.sroa.0.0.extract.trunc, %.lr.ph380 ], [ %.sroa.0.sroa.0.2, %.thread297 ] ; 4 uses
  %.sroa.7.0 = phi i32 [ %.sroa.7.0.extract.trunc, %.lr.ph380 ], [ %.sroa.7.2, %.thread297 ] ; 2 uses
  %.3185379 = phi i16 [ %.2184, %.lr.ph380 ], [ %.10, %.thread297 ] ; 3 uses
  %.0188378 = phi i32 [ %i.ay, %.lr.ph380 ], [ %.3191, %.thread297 ] ; 10 uses
  %.1194377 = phi i32 [ %spec.select, %.lr.ph380 ], [ %.6199, %.thread297 ] ; 3 uses
  %.1201376 = phi i16 [ %.0200, %.lr.ph380 ], [ %.5205, %.thread297 ] ; 5 uses
  %.2208375 = phi ptr [ %.1207, %.lr.ph380 ], [ %.6212, %.thread297 ] ; 8 uses
  %.2215374 = phi ptr [ %.1214, %.lr.ph380 ], [ %.6219, %.thread297 ] ; 13 uses
  %.3223373 = phi i16 [ %.2222, %.lr.ph380 ], [ %.13, %.thread297 ] ; 3 uses
  %i.gt = icmp ult i32 %.0188378, 4
  br i1 %i.gt, label %.preheader, label %bb.dj

.preheader:                                       ; preds = %bb.cs
  %i.gu = ptrtoint ptr %.2208375 to i64, !nosanitize !13 ; 3 uses
  %i.gv = icmp ne ptr %.2208375, null             ; 2 uses
  %i.gw = ptrtoint ptr %.2215374 to i64           ; 3 uses
  %i.gx = icmp ne ptr %.2215374, null             ; 2 uses
  br label %bb.ct

bb.ct:                                            ; preds = %.preheader, %bb.di
  %.4224 = phi i16 [ %i.ih, %bb.di ], [ %.3223373, %.preheader ] ; 3 uses
  %.2195 = phi i32 [ %i.hr, %bb.di ], [ %.1194377, %.preheader ] ; 3 uses
  %i.gy = zext i16 %.4224 to i32
  %i.gz = zext i16 %.4224 to i64                  ; 4 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.2208375, i64 %i.gz ; 2 uses
  %i.hb = add i64 %i.gz, %i.gu, !nosanitize !13   ; 3 uses
  %i.hc = icmp eq i64 %i.hb, 0
  %i.hd = xor i1 %i.gv, %i.hc
  %i.he = icmp uge i64 %i.hb, %i.gu, !nosanitize !13
  %i.hf = and i1 %i.he, %i.hd, !nosanitize !13
  br i1 %i.hf, label %bb.cv, label %bb.cu, !prof !14, !nosanitize !13

bb.cu:                                            ; preds = %bb.ct
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @103, i64 %i.gu, i64 %i.hb) #5, !nosanitize !13
  br label %bb.cv, !nosanitize !13

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  br i1 %i.gv, label %zng_memread_2.exit.i, label %bb.cw, !prof !14, !nosanitize !13

bb.cw:                                            ; preds = %bb.cv
  %i.hg = ptrtoint ptr %i.ha to i64, !nosanitize !13 ; 2 uses
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @170, i64 %i.hg) #5, !nosanitize !13
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @172, i64 %i.hg) #5, !nosanitize !13
  br label %zng_memread_2.exit.i, !nosanitize !13

zng_memread_2.exit.i:                             ; preds = %bb.cw, %bb.cv
  %i.hh = load i16, ptr %i.ha, align 1, !tbaa !15
  %.not342 = icmp eq i16 %i.hh, %.sroa.0.sroa.0.0
  br i1 %.not342, label %bb.cx, label %bb.db

bb.cx:                                            ; preds = %zng_memread_2.exit.i
  %i.hi = getelementptr inbounds nuw i8, ptr %.2215374, i64 %i.gz ; 2 uses
  %i.hj = add i64 %i.gz, %i.gw, !nosanitize !13   ; 3 uses
  %i.hk = icmp eq i64 %i.hj, 0
  %i.hl = xor i1 %i.gx, %i.hk
  %i.hm = icmp uge i64 %i.hj, %i.gw, !nosanitize !13
  %i.hn = and i1 %i.hm, %i.hl, !nosanitize !13
  br i1 %i.hn, label %bb.cz, label %bb.cy, !prof !14, !nosanitize !13

bb.cy:                                            ; preds = %bb.cx
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @104, i64 %i.gw, i64 %i.hj) #5, !nosanitize !13
  br label %bb.cz, !nosanitize !13

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  br i1 %i.gx, label %zng_memread_2.exit.i282, label %bb.da, !prof !14, !nosanitize !13

bb.da:                                            ; preds = %bb.cz
  %i.ho = ptrtoint ptr %i.hi to i64, !nosanitize !13 ; 2 uses
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @170, i64 %i.ho) #5, !nosanitize !13
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @172, i64 %i.ho) #5, !nosanitize !13
  br label %zng_memread_2.exit.i282, !nosanitize !13

zng_memread_2.exit.i282:                          ; preds = %bb.da, %bb.cz
  %i.hp = load i16, ptr %i.hi, align 1, !tbaa !15
  %.not343 = icmp eq i16 %i.hp, %.sroa.0.sroa.0433.0.extract.trunc
  br i1 %.not343, label %.loopexit, label %bb.db

bb.db:                                            ; preds = %zng_memread_2.exit.i282, %zng_memread_2.exit.i
  %i.hq = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %.2195, i32 1), !nosanitize !13 ; 2 uses
  %i.hr = extractvalue { i32, i1 } %i.hq, 0, !nosanitize !13 ; 2 uses
  %i.hs = extractvalue { i32, i1 } %i.hq, 1, !nosanitize !13
  br i1 %i.hs, label %bb.dc, label %bb.dd, !prof !16, !nosanitize !13

bb.dc:                                            ; preds = %bb.db
  %i.ht = zext nneg i32 %.2195 to i64, !nosanitize !13
  call void @__ubsan_handle_sub_overflow(ptr nonnull @105, i64 %i.ht, i64 1) #6, !nosanitize !13
  br label %bb.dd, !nosanitize !13

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %.not264 = icmp eq i32 %i.hr, 0
  br i1 %.not264, label %.thread308, label %bb.de

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
  br i1 %i.ic, label %bb.dg, label %bb.df, !prof !14, !nosanitize !13

bb.df:                                            ; preds = %bb.de
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @106, i64 %i.gi, i64 %i.hy) #5, !nosanitize !13
  br label %bb.dg, !nosanitize !13

bb.dg:                                            ; preds = %bb.df, %bb.de
  %i.id = ptrtoint ptr %i.hw to i64, !nosanitize !13 ; 2 uses
  %i.ie = and i64 %i.id, 1, !nosanitize !13
  %i.if = icmp eq i64 %i.ie, 0, !nosanitize !13
  %i.ig = and i1 %i.gj, %i.if
  br i1 %i.ig, label %bb.di, label %bb.dh, !prof !14, !nosanitize !13

bb.dh:                                            ; preds = %bb.dg
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @107, i64 %i.id) #5, !nosanitize !13
  br label %bb.di, !nosanitize !13

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %i.ih = load i16, ptr %i.hw, align 2, !tbaa !42 ; 2 uses
  %i.ii = icmp ugt i16 %i.ih, %.1201376
  br i1 %i.ii, label %bb.ct, label %.thread308

bb.dj:                                            ; preds = %bb.cs
  %i.ij = icmp ugt i32 %.0188378, 7
  %i.ik = ptrtoint ptr %.2208375 to i64, !nosanitize !13 ; 6 uses
  %i.il = icmp ne ptr %.2208375, null             ; 4 uses
  br i1 %i.ij, label %.preheader344, label %.preheader347

.preheader347:                                    ; preds = %bb.dj
  %.sroa.0.sroa.7.0.insert.ext = zext i16 %.sroa.0.sroa.7.0 to i32
  %.sroa.0.sroa.7.0.insert.shift = shl nuw i32 %.sroa.0.sroa.7.0.insert.ext, 16
  %.sroa.0.sroa.0.0.insert.ext = zext i16 %.sroa.0.sroa.0.0 to i32
  %.sroa.0.sroa.0.0.insert.insert = or disjoint i32 %.sroa.0.sroa.7.0.insert.shift, %.sroa.0.sroa.0.0.insert.ext
  %i.im = ptrtoint ptr %.2215374 to i64           ; 3 uses
  %i.in = icmp ne ptr %.2215374, null             ; 2 uses
  br label %bb.ea

.preheader344:                                    ; preds = %bb.dj
  %.sroa.0.sroa.7.0.insert.ext423 = zext i16 %.sroa.0.sroa.7.0 to i64
  %.sroa.0.sroa.7.0.insert.shift424 = shl nuw nsw i64 %.sroa.0.sroa.7.0.insert.ext423, 16
  %.sroa.0.sroa.0.0.insert.ext418 = zext i16 %.sroa.0.sroa.0.0 to i64
  %.sroa.0.sroa.0.0.insert.insert420 = or disjoint i64 %.sroa.0.sroa.7.0.insert.shift424, %.sroa.0.sroa.0.0.insert.ext418
  %.sroa.7.0.insert.ext = zext i32 %.sroa.7.0 to i64
  %.sroa.7.0.insert.shift = shl nuw i64 %.sroa.7.0.insert.ext, 32
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.7.0.insert.shift, %.sroa.0.sroa.0.0.insert.insert420
  %i.io = ptrtoint ptr %.2215374 to i64           ; 3 uses
  %i.ip = icmp ne ptr %.2215374, null             ; 2 uses
  br label %bb.dk

bb.dk:                                            ; preds = %.preheader344, %bb.dz
  %.5225 = phi i16 [ %i.jz, %bb.dz ], [ %.3223373, %.preheader344 ] ; 3 uses
  %.3196 = phi i32 [ %i.jj, %bb.dz ], [ %.1194377, %.preheader344 ] ; 3 uses
  %i.iq = zext i16 %.5225 to i32
  %i.ir = zext i16 %.5225 to i64                  ; 4 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.2208375, i64 %i.ir ; 2 uses
  %i.it = add i64 %i.ir, %i.ik, !nosanitize !13   ; 3 uses
  %i.iu = icmp eq i64 %i.it, 0
  %i.iv = xor i1 %i.il, %i.iu
  %i.iw = icmp uge i64 %i.it, %i.ik, !nosanitize !13
  %i.ix = and i1 %i.iw, %i.iv, !nosanitize !13
  br i1 %i.ix, label %bb.dm, label %bb.dl, !prof !14, !nosanitize !13

bb.dl:                                            ; preds = %bb.dk
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @108, i64 %i.ik, i64 %i.it) #5, !nosanitize !13
  br label %bb.dm, !nosanitize !13

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  br i1 %i.il, label %zng_memread_8.exit.i, label %bb.dn, !prof !14, !nosanitize !13

bb.dn:                                            ; preds = %bb.dm
  %i.iy = ptrtoint ptr %i.is to i64, !nosanitize !13 ; 2 uses
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @166, i64 %i.iy) #5, !nosanitize !13
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @168, i64 %i.iy) #5, !nosanitize !13
  br label %zng_memread_8.exit.i, !nosanitize !13

zng_memread_8.exit.i:                             ; preds = %bb.dn, %bb.dm
  %i.iz = load i64, ptr %i.is, align 1, !tbaa !15
  %.not340 = icmp eq i64 %i.iz, %.sroa.0.0.insert.insert
  br i1 %.not340, label %bb.do, label %bb.ds

bb.do:                                            ; preds = %zng_memread_8.exit.i
  %i.ja = getelementptr inbounds nuw i8, ptr %.2215374, i64 %i.ir ; 2 uses
  %i.jb = add i64 %i.ir, %i.io, !nosanitize !13   ; 3 uses
  %i.jc = icmp eq i64 %i.jb, 0
  %i.jd = xor i1 %i.ip, %i.jc
  %i.je = icmp uge i64 %i.jb, %i.io, !nosanitize !13
  %i.jf = and i1 %i.je, %i.jd, !nosanitize !13
  br i1 %i.jf, label %bb.dq, label %bb.dp, !prof !14, !nosanitize !13

bb.dp:                                            ; preds = %bb.do
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @109, i64 %i.io, i64 %i.jb) #5, !nosanitize !13
  br label %bb.dq, !nosanitize !13

bb.dq:                                            ; preds = %bb.dp, %bb.do
  br i1 %i.ip, label %zng_memread_8.exit.i284, label %bb.dr, !prof !14, !nosanitize !13

bb.dr:                                            ; preds = %bb.dq
  %i.jg = ptrtoint ptr %i.ja to i64, !nosanitize !13 ; 2 uses
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @166, i64 %i.jg) #5, !nosanitize !13
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @168, i64 %i.jg) #5, !nosanitize !13
  br label %zng_memread_8.exit.i284, !nosanitize !13

zng_memread_8.exit.i284:                          ; preds = %bb.dr, %bb.dq
  %i.jh = load i64, ptr %i.ja, align 1, !tbaa !15
  %.not341 = icmp eq i64 %i.jh, %i.az
  br i1 %.not341, label %.loopexit, label %bb.ds

bb.ds:                                            ; preds = %zng_memread_8.exit.i284, %zng_memread_8.exit.i
  %i.ji = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %.3196, i32 1), !nosanitize !13 ; 2 uses
  %i.jj = extractvalue { i32, i1 } %i.ji, 0, !nosanitize !13 ; 2 uses
  %i.jk = extractvalue { i32, i1 } %i.ji, 1, !nosanitize !13
  br i1 %i.jk, label %bb.dt, label %bb.du, !prof !16, !nosanitize !13

bb.dt:                                            ; preds = %bb.ds
  %i.jl = zext nneg i32 %.3196 to i64, !nosanitize !13
  call void @__ubsan_handle_sub_overflow(ptr nonnull @110, i64 %i.jl, i64 1) #6, !nosanitize !13
  br label %bb.du, !nosanitize !13

bb.du:                                            ; preds = %bb.dt, %bb.ds
  %.not263 = icmp eq i32 %i.jj, 0
  br i1 %.not263, label %.thread308, label %bb.dv

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
  br i1 %i.ju, label %bb.dx, label %bb.dw, !prof !14, !nosanitize !13

bb.dw:                                            ; preds = %bb.dv
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @111, i64 %i.gi, i64 %i.jq) #5, !nosanitize !13
  br label %bb.dx, !nosanitize !13

bb.dx:                                            ; preds = %bb.dw, %bb.dv
  %i.jv = ptrtoint ptr %i.jo to i64, !nosanitize !13 ; 2 uses
  %i.jw = and i64 %i.jv, 1, !nosanitize !13
  %i.jx = icmp eq i64 %i.jw, 0, !nosanitize !13
  %i.jy = and i1 %i.gj, %i.jx
  br i1 %i.jy, label %bb.dz, label %bb.dy, !prof !14, !nosanitize !13

bb.dy:                                            ; preds = %bb.dx
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @112, i64 %i.jv) #5, !nosanitize !13
  br label %bb.dz, !nosanitize !13

bb.dz:                                            ; preds = %bb.dy, %bb.dx
  %i.jz = load i16, ptr %i.jo, align 2, !tbaa !42 ; 2 uses
  %i.ka = icmp ugt i16 %i.jz, %.1201376
  br i1 %i.ka, label %bb.dk, label %.thread308

bb.ea:                                            ; preds = %.preheader347, %bb.ep
  %.6226 = phi i16 [ %i.lk, %bb.ep ], [ %.3223373, %.preheader347 ] ; 3 uses
  %.4197 = phi i32 [ %i.ku, %bb.ep ], [ %.1194377, %.preheader347 ] ; 3 uses
  %i.kb = zext i16 %.6226 to i32
  %i.kc = zext i16 %.6226 to i64                  ; 4 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %.2208375, i64 %i.kc ; 2 uses
  %i.ke = add i64 %i.kc, %i.ik, !nosanitize !13   ; 3 uses
  %i.kf = icmp eq i64 %i.ke, 0
  %i.kg = xor i1 %i.il, %i.kf
  %i.kh = icmp uge i64 %i.ke, %i.ik, !nosanitize !13
  %i.ki = and i1 %i.kh, %i.kg, !nosanitize !13
  br i1 %i.ki, label %bb.ec, label %bb.eb, !prof !14, !nosanitize !13

bb.eb:                                            ; preds = %bb.ea
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @113, i64 %i.ik, i64 %i.ke) #5, !nosanitize !13
  br label %bb.ec, !nosanitize !13

bb.ec:                                            ; preds = %bb.eb, %bb.ea
  br i1 %i.il, label %zng_memread_4.exit.i, label %bb.ed, !prof !14, !nosanitize !13

bb.ed:                                            ; preds = %bb.ec
  %i.kj = ptrtoint ptr %i.kd to i64, !nosanitize !13 ; 2 uses
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @174, i64 %i.kj) #5, !nosanitize !13
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @176, i64 %i.kj) #5, !nosanitize !13
  br label %zng_memread_4.exit.i, !nosanitize !13

zng_memread_4.exit.i:                             ; preds = %bb.ed, %bb.ec
  %i.kk = load i32, ptr %i.kd, align 1, !tbaa !15
  %.not338 = icmp eq i32 %i.kk, %.sroa.0.sroa.0.0.insert.insert
  br i1 %.not338, label %bb.ee, label %bb.ei

bb.ee:                                            ; preds = %zng_memread_4.exit.i
  %i.kl = getelementptr inbounds nuw i8, ptr %.2215374, i64 %i.kc ; 2 uses
  %i.km = add i64 %i.kc, %i.im, !nosanitize !13   ; 3 uses
  %i.kn = icmp eq i64 %i.km, 0
  %i.ko = xor i1 %i.in, %i.kn
  %i.kp = icmp uge i64 %i.km, %i.im, !nosanitize !13
  %i.kq = and i1 %i.kp, %i.ko, !nosanitize !13
  br i1 %i.kq, label %bb.eg, label %bb.ef, !prof !14, !nosanitize !13

bb.ef:                                            ; preds = %bb.ee
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @114, i64 %i.im, i64 %i.km) #5, !nosanitize !13
  br label %bb.eg, !nosanitize !13

bb.eg:                                            ; preds = %bb.ef, %bb.ee
  br i1 %i.in, label %zng_memread_4.exit.i286, label %bb.eh, !prof !14, !nosanitize !13

bb.eh:                                            ; preds = %bb.eg
  %i.kr = ptrtoint ptr %i.kl to i64, !nosanitize !13 ; 2 uses
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @174, i64 %i.kr) #5, !nosanitize !13
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @176, i64 %i.kr) #5, !nosanitize !13
  br label %zng_memread_4.exit.i286, !nosanitize !13

zng_memread_4.exit.i286:                          ; preds = %bb.eh, %bb.eg
  %i.ks = load i32, ptr %i.kl, align 1, !tbaa !15
  %.not339 = icmp eq i32 %i.ks, %.sroa.0.sroa.0433.0.insert.insert
  br i1 %.not339, label %.loopexit, label %bb.ei

bb.ei:                                            ; preds = %zng_memread_4.exit.i286, %zng_memread_4.exit.i
  %i.kt = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %.4197, i32 1), !nosanitize !13 ; 2 uses
  %i.ku = extractvalue { i32, i1 } %i.kt, 0, !nosanitize !13 ; 2 uses
  %i.kv = extractvalue { i32, i1 } %i.kt, 1, !nosanitize !13
  br i1 %i.kv, label %bb.ej, label %bb.ek, !prof !16, !nosanitize !13

bb.ej:                                            ; preds = %bb.ei
  %i.kw = zext nneg i32 %.4197 to i64, !nosanitize !13
  call void @__ubsan_handle_sub_overflow(ptr nonnull @115, i64 %i.kw, i64 1) #6, !nosanitize !13
  br label %bb.ek, !nosanitize !13

bb.ek:                                            ; preds = %bb.ej, %bb.ei
  %.not262 = icmp eq i32 %i.ku, 0
  br i1 %.not262, label %.thread308, label %bb.el

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
  br i1 %i.lf, label %bb.en, label %bb.em, !prof !14, !nosanitize !13

bb.em:                                            ; preds = %bb.el
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @116, i64 %i.gi, i64 %i.lb) #5, !nosanitize !13
  br label %bb.en, !nosanitize !13

bb.en:                                            ; preds = %bb.em, %bb.el
  %i.lg = ptrtoint ptr %i.kz to i64, !nosanitize !13 ; 2 uses
  %i.lh = and i64 %i.lg, 1, !nosanitize !13
  %i.li = icmp eq i64 %i.lh, 0, !nosanitize !13
  %i.lj = and i1 %i.gj, %i.li
  br i1 %i.lj, label %bb.ep, label %bb.eo, !prof !14, !nosanitize !13

bb.eo:                                            ; preds = %bb.en
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @117, i64 %i.lg) #5, !nosanitize !13
  br label %bb.ep, !nosanitize !13

bb.ep:                                            ; preds = %bb.eo, %bb.en
  %i.lk = load i16, ptr %i.kz, align 2, !tbaa !42 ; 2 uses
  %i.ll = icmp ugt i16 %i.lk, %.1201376
  br i1 %i.ll, label %bb.ea, label %.thread308

.loopexit:                                        ; preds = %zng_memread_4.exit.i286, %zng_memread_8.exit.i284, %zng_memread_2.exit.i282
  %.7227 = phi i16 [ %.4224, %zng_memread_2.exit.i282 ], [ %.5225, %zng_memread_8.exit.i284 ], [ %.6226, %zng_memread_4.exit.i286 ] ; 3 uses
  %.5198 = phi i32 [ %.2195, %zng_memread_2.exit.i282 ], [ %.3196, %zng_memread_8.exit.i284 ], [ %.4197, %zng_memread_4.exit.i286 ] ; 4 uses
  br i1 %.not265, label %bb.eq, label %bb.er, !prof !16, !nosanitize !13

bb.eq:                                            ; preds = %.loopexit
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @118, i64 %.pre, i64 %i.gl) #5, !nosanitize !13
  br label %bb.er, !nosanitize !13

bb.er:                                            ; preds = %bb.eq, %.loopexit
  %i.lm = zext i16 %.7227 to i32                  ; 2 uses
  %i.ln = zext i16 %.7227 to i64                  ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %.2215374, i64 %i.ln ; 3 uses
  %i.lp = ptrtoint ptr %.2215374 to i64, !nosanitize !13 ; 6 uses
  %i.lq = add i64 %i.ln, %i.lp, !nosanitize !13   ; 3 uses
  %i.lr = icmp ne i64 %i.lq, 0
  %i.ls = icmp uge i64 %i.lq, %i.lp, !nosanitize !13
  %i.lt = and i1 %i.lr, %i.ls, !nosanitize !13
  br i1 %i.lt, label %bb.et, label %bb.es, !prof !14, !nosanitize !13

bb.es:                                            ; preds = %bb.er
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @119, i64 %i.lp, i64 %i.lq) #5, !nosanitize !13
  br label %bb.et, !nosanitize !13

bb.et:                                            ; preds = %bb.es, %bb.er
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lo, i64 2
  %i.lv = ptrtoint ptr %i.lo to i64, !nosanitize !13 ; 2 uses
  %i.lw = add i64 %i.lv, 2, !nosanitize !13       ; 2 uses
  %i.lx = icmp ne i64 %i.lw, 0
  %i.ly = icmp ult ptr %i.lo, inttoptr (i64 -2 to ptr)
  %i.lz = and i1 %i.ly, %i.lx, !nosanitize !13
  br i1 %i.lz, label %bb.ev, label %bb.eu, !prof !14, !nosanitize !13

bb.eu:                                            ; preds = %bb.et
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @120, i64 %i.lv, i64 %i.lw) #5, !nosanitize !13
  br label %bb.ev, !nosanitize !13

bb.ev:                                            ; preds = %bb.eu, %bb.et
  %i.ma = call fastcc i32 @compare256_sse2_static(ptr noundef nonnull %i.gk, ptr noundef nonnull %i.lu) ; 2 uses
  %i.mb = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.ma, i32 2), !nosanitize !13 ; 2 uses
  %i.mc = extractvalue { i32, i1 } %i.mb, 0, !nosanitize !13 ; 17 uses
  %i.md = extractvalue { i32, i1 } %i.mb, 1, !nosanitize !13
  br i1 %i.md, label %bb.ew, label %bb.ex, !prof !16, !nosanitize !13

bb.ew:                                            ; preds = %bb.ev
  %i.me = zext i32 %i.ma to i64, !nosanitize !13
  call void @__ubsan_handle_add_overflow(ptr nonnull @121, i64 %i.me, i64 2) #6, !nosanitize !13
  br label %bb.ex, !nosanitize !13

bb.ex:                                            ; preds = %bb.ew, %bb.ev
  %i.mf = icmp ugt i32 %i.mc, %.0188378
  br i1 %i.mf, label %bb.ey, label %bb.he

bb.ey:                                            ; preds = %bb.ex
  %i.mg = zext i16 %.3185379 to i32
  %i.mh = sub nsw i32 %i.lm, %i.mg                ; 3 uses
  br i1 %i.e, label %bb.fa, label %bb.ez, !prof !14, !nosanitize !13

bb.ez:                                            ; preds = %bb.ey
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @122, i64 %i.b) #5, !nosanitize !13
  br label %bb.fa, !nosanitize !13

bb.fa:                                            ; preds = %bb.ey, %bb.ez
  store i32 %i.mh, ptr %i.gm, align 8, !tbaa !43
  %.not266 = icmp ult i32 %i.mc, %i.ag
  br i1 %.not266, label %bb.fb, label %.thread308

bb.fb:                                            ; preds = %bb.fa
  %.not267 = icmp ult i32 %i.mc, %i.bs
  br i1 %.not267, label %bb.fc, label %.thread308

bb.fc:                                            ; preds = %bb.fb
  %i.mi = icmp ugt i32 %i.mc, 3                   ; 2 uses
  %i.mj = icmp ugt i32 %i.mc, 7
  %spec.select390.v = select i1 %i.mj, i32 -7, i32 -3
  %.1187.v = select i1 %i.mi, i32 %spec.select390.v, i32 -1
  %.1187 = add i32 %i.mc, %.1187.v
  %i.mk = zext i32 %i.mc to i64                   ; 3 uses
  %i.ml = zext i32 %.1187 to i64                  ; 6 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.ml
  %i.mn = add i64 %.pre, %i.ml, !nosanitize !13   ; 2 uses
  %.not268 = icmp ult i64 %i.mn, %.pre, !nosanitize !13
  br i1 %.not268, label %bb.fd, label %zng_memread_8.exit288, !prof !16, !nosanitize !13

bb.fd:                                            ; preds = %bb.fc
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @123, i64 %.pre, i64 %i.mn) #5, !nosanitize !13
  br label %zng_memread_8.exit288, !nosanitize !13

zng_memread_8.exit288:                            ; preds = %bb.fc, %bb.fd
  %i.mo = load i64, ptr %i.mm, align 1, !tbaa !15 ; 3 uses
  %.sroa.0.sroa.0.0.extract.trunc417 = trunc i64 %i.mo to i16 ; 4 uses
  %.sroa.0.sroa.7.0.extract.shift421465 = lshr i64 %i.mo, 16
  %.sroa.0.sroa.7.0.extract.trunc422 = trunc i64 %.sroa.0.sroa.7.0.extract.shift421465 to i16 ; 4 uses
  %.sroa.7.0.extract.shift415 = lshr i64 %i.mo, 32
  %.sroa.7.0.extract.trunc416 = trunc nuw i64 %.sroa.7.0.extract.shift415 to i32 ; 4 uses
  br i1 %i.mi, label %bb.fe, label %.critedge

bb.fe:                                            ; preds = %zng_memread_8.exit288
  %i.mp = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.mh, i32 %i.mc), !nosanitize !13 ; 2 uses
  %i.mq = extractvalue { i32, i1 } %i.mp, 0, !nosanitize !13
  %i.mr = extractvalue { i32, i1 } %i.mp, 1, !nosanitize !13
  br i1 %i.mr, label %bb.ff, label %bb.fg, !prof !16, !nosanitize !13

bb.ff:                                            ; preds = %bb.fe
  %i.ms = zext i32 %i.mh to i64, !nosanitize !13
  call void @__ubsan_handle_add_overflow(ptr nonnull @124, i64 %i.ms, i64 %i.mk) #6, !nosanitize !13
  br label %bb.fg, !nosanitize !13

bb.fg:                                            ; preds = %bb.ff, %bb.fe
  %i.mt = icmp ult i32 %i.mq, %i.j
  br i1 %i.mt, label %bb.fh, label %.critedge, !prof !44

bb.fh:                                            ; preds = %bb.fg
  %i.mu = sub i16 %.7227, %.3185379               ; 3 uses
  %i.mv = add i32 %i.mc, -3
  %i.mw = zext i16 %i.mu to i32
  %i.mx = zext i16 %i.mu to i64
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %bb.ft
  %.0510 = phi i32 [ 0, %bb.fh ], [ %i.nx, %bb.ft ] ; 6 uses
  %.0177509 = phi i16 [ %i.mu, %bb.fh ], [ %.1, %bb.ft ] ; 2 uses
  %.4508 = phi i16 [ 0, %bb.fh ], [ %.5, %bb.ft ]
  %i.my = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.mw, i32 %.0510), !nosanitize !13 ; 2 uses
  %i.mz = extractvalue { i32, i1 } %i.my, 0, !nosanitize !13
  %i.na = extractvalue { i32, i1 } %i.my, 1, !nosanitize !13
  br i1 %i.na, label %bb.fj, label %bb.fk, !prof !16, !nosanitize !13

bb.fj:                                            ; preds = %bb.fi
  %i.nb = zext i32 %.0510 to i64, !nosanitize !13
  call void @__ubsan_handle_add_overflow(ptr nonnull @125, i64 %i.mx, i64 %i.nb) #6, !nosanitize !13
  br label %bb.fk, !nosanitize !13

bb.fk:                                            ; preds = %bb.fj, %bb.fi
  %i.nc = and i32 %i.mz, %i.o
  %i.nd = zext i32 %i.nc to i64                   ; 2 uses
  %i.ne = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %i.nd ; 2 uses
  %i.nf = shl nuw nsw i64 %i.nd, 1
  %i.ng = add i64 %i.nf, %i.gi, !nosanitize !13   ; 3 uses
  %i.nh = icmp eq i64 %i.ng, 0
  %i.ni = xor i1 %i.gj, %i.nh
  %i.nj = icmp uge i64 %i.ng, %i.gi, !nosanitize !13
  %i.nk = and i1 %i.nj, %i.ni, !nosanitize !13
  br i1 %i.nk, label %bb.fm, label %bb.fl, !prof !14, !nosanitize !13

bb.fl:                                            ; preds = %bb.fk
end_hunk_2
