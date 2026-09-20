Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zlib-ng_ubsan/original/chunkset_sse2?download=true
inline.NumInlined: 21
inline.NumDeleted: 12
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.src = private unnamed_addr constant [53 x i8] c"/opt-bench/work/zlib-ng_ubsan/zlib-ng/chunkset_tpl.h\00", align 1
@0 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 249, i32 27 } }
@1 = private unnamed_addr constant { i16, i16, [32 x i8] } { i16 0, i16 6, [32 x i8] c"'uint8_t' (aka 'unsigned char')\00" }
@2 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 249, i32 22 }, ptr @1, i8 0, i8 0 }
@3 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 249, i32 17 } }
@4 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 249, i32 13 }, ptr @1, i8 0, i8 1 }
@5 = private unnamed_addr constant { i16, i16, [15 x i8] } { i16 0, i16 10, [15 x i8] c"'unsigned int'\00" }
@.src.1 = private unnamed_addr constant [52 x i8] c"/opt-bench/work/zlib-ng_ubsan/zlib-ng/inffast_tpl.h\00", align 1
@6 = private unnamed_addr constant { i16, i16, [41 x i8] } { i16 -1, i16 0, [41 x i8] c"'zng_stream' (aka 'struct zng_stream_s')\00" }
@7 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.1, i32 119, i32 43 }, ptr @6, i8 3, i8 3 }
@8 = private unnamed_addr constant { i16, i16, [26 x i8] } { i16 -1, i16 0, [26 x i8] c"'struct internal_state *'\00" }
@9 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.1, i32 119, i32 43 }, ptr @8, i8 3, i8 0 }
@10 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.1, i32 120, i32 16 }, ptr @6, i8 3, i8 3 }
@11 = private unnamed_addr constant { i16, i16, [48 x i8] } { i16 -1, i16 0, [48 x i8] c"'const uint8_t *' (aka 'const unsigned char *')\00" }
@12 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.1, i32 120, i32 16 }, ptr @11, i8 3, i8 0 }
@13 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.1, i32 121, i32 24 }, ptr @6, i8 3, i8 3 }
@14 = private unnamed_addr constant { i16, i16, [32 x i8] } { i16 0, i16 10, [32 x i8] c"'uint32_t' (aka 'unsigned int')\00" }
@15 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src.1, i32 121, i32 33 }, ptr @14 }
@16 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src.1, i32 121, i32 15 } }
@17 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.1, i32 122, i32 17 }, ptr @6, i8 3, i8 3 }
@18 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.1, i32 123, i32 32 }, ptr @6, i8 3, i8 3 }
@19 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src.1, i32 123, i32 24 }, ptr @14 }
@20 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src.1, i32 123, i32 15 } }
@21 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.1, i32 124, i32 24 }, ptr @6, i8 3, i8 3 }
@22 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src.1, i32 124, i32 34 }, ptr @14 }
@23 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src.1, i32 124, i32 15 } }
@24 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.1, i32 125, i32 24 }, ptr @6, i8 3, i8 3 }
@25 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src.1, i32 125, i32 16 } }
@26 = private unnamed_addr constant { i16, i16, [23 x i8] } { i16 -1, i16 0, [23 x i8] c"'struct inflate_state'\00" }
@27 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.1, i32 126, i32 20 }, ptr @26, i8 6, i8 3 }
@28 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.1, i32 126, i32 20 }, ptr @14, i8 6, i8 0 }
@29 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.1, i32 127, i32 20 }, ptr @26, i8 6, i8 3 }
@30 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.1, i32 128, i32 20 }, ptr @26, i8 6, i8 3 }
@31 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.1, i32 129, i32 21 }, ptr @26, i8 6, i8 3 }
@32 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.1, i32 130, i32 19 }, ptr @26, i8 6, i8 3 }
@33 = private unnamed_addr constant { i16, i16, [33 x i8] } { i16 0, i16 12, [33 x i8] c"'uint64_t' (aka 'unsigned long')\00" }
@34 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.1, i32 131, i32 19 }, ptr @26, i8 6, i8 3 }
@35 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.1, i32 132, i32 20 }, ptr @26, i8 6, i8 3 }
@36 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.1, i32 133, i32 20 }, ptr @26, i8 6, i8 3 }
@37 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.1, i32 134, i32 27 }, ptr @26, i8 6, i8 3 }
@38 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src.1, i32 134, i32 17 }, ptr @5, ptr @5 }
@39 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.1, i32 135, i32 27 }, ptr @26, i8 6, i8 3 }
@40 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src.1, i32 135, i32 17 }, ptr @5, ptr @5 }
@41 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src.1, i32 140, i32 54 } }
@42 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.1, i32 140, i32 97 }, ptr @26, i8 6, i8 3 }
@43 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src.1, i32 140, i32 88 } }
@44 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src.1, i32 152, i32 9 } }
@45 = private unnamed_addr constant { i16, i16, [6 x i8] } { i16 0, i16 11, [6 x i8] c"'int'\00" }
@46 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src.1, i32 152, i32 9 } }
@47 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src.1, i32 153, i32 22 } }
@48 = private unnamed_addr constant { i16, i16, [13 x i8] } { i16 -1, i16 0, [13 x i8] c"'const code'\00" }
@49 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.1, i32 154, i32 19 }, ptr @48, i8 1, i8 3 }
@50 = private unnamed_addr constant { i16, i16, [22 x i8] } { i16 0, i16 6, [22 x i8] c"'const unsigned char'\00" }
@51 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.1, i32 154, i32 19 }, ptr @50, i8 1, i8 0 }
@52 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.1, i32 155, i32 44 }, ptr @48, i8 1, i8 3 }
@53 = private unnamed_addr constant { i16, i16, [46 x i8] } { i16 0, i16 8, [46 x i8] c"'const uint16_t' (aka 'const unsigned short')\00" }
@54 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src.1, i32 155, i32 17 } }
@55 = private unnamed_addr constant { i16, i16, [16 x i8] } { i16 0, i16 6, [16 x i8] c"'unsigned char'\00" }
@56 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.1, i32 155, i32 13 }, ptr @55, i8 0, i8 1 }
@57 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.1, i32 156, i32 13 }, ptr @48, i8 1, i8 3 }
@58 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src.1, i32 156, i32 13 }, ptr @33, ptr @45 }
@59 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.1, i32 156, i32 13 }, ptr @48, i8 1, i8 3 }
@60 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src.1, i32 156, i32 13 }, ptr @5 }
@61 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src.1, i32 157, i32 26 } }
@62 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.1, i32 158, i32 23 }, ptr @48, i8 1, i8 3 }
@63 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.1, i32 158, i32 23 }, ptr @50, i8 1, i8 0 }
@64 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.1, i32 159, i32 48 }, ptr @48, i8 1, i8 3 }
@65 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src.1, i32 159, i32 21 } }
@66 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.1, i32 160, i32 17 }, ptr @48, i8 1, i8 3 }
@67 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src.1, i32 160, i32 17 }, ptr @33, ptr @45 }
@68 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.1, i32 160, i32 17 }, ptr @48, i8 1, i8 3 }
@69 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src.1, i32 160, i32 17 }, ptr @5 }
@70 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src.1, i32 161, i32 30 } }
@71 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.1, i32 165, i32 9 }, ptr @48, i8 1, i8 3 }
@72 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src.1, i32 165, i32 9 }, ptr @33, ptr @45 }
@73 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.1, i32 165, i32 9 }, ptr @48, i8 1, i8 3 }
@74 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src.1, i32 165, i32 9 }, ptr @5 }
@75 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.1, i32 166, i32 20 }, ptr @48, i8 1, i8 3 }
@76 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.1, i32 166, i32 20 }, ptr @50, i8 1, i8 0 }
@77 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.1, i32 171, i32 44 }, ptr @48, i8 1, i8 3 }
@78 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.1, i32 171, i32 44 }, ptr @53, i8 1, i8 0 }
@79 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src.1, i32 171, i32 17 } }
@80 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.1, i32 171, i32 13 }, ptr @55, i8 0, i8 1 }
@81 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.1, i32 173, i32 25 }, ptr @48, i8 1, i8 3 }
@82 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.1, i32 173, i32 25 }, ptr @53, i8 1, i8 0 }
@83 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src.1, i32 176, i32 13 }, ptr @5 }
@84 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src.1, i32 178, i32 26 } }
@85 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src.1, i32 180, i32 17 } }
@86 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src.1, i32 180, i32 17 } }
@87 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.1, i32 183, i32 13 }, ptr @48, i8 1, i8 3 }
@88 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src.1, i32 183, i32 13 }, ptr @33, ptr @45 }
@89 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.1, i32 183, i32 13 }, ptr @48, i8 1, i8 3 }
@90 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src.1, i32 183, i32 13 }, ptr @5 }
@91 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.1, i32 184, i32 24 }, ptr @48, i8 1, i8 3 }
@92 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.1, i32 184, i32 24 }, ptr @50, i8 1, i8 0 }
@93 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.1, i32 186, i32 30 }, ptr @48, i8 1, i8 3 }
@94 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.1, i32 186, i32 30 }, ptr @53, i8 1, i8 0 }
@95 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src.1, i32 195, i32 17 }, ptr @5 }
@96 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.1, i32 224, i32 25 }, ptr @26, i8 6, i8 3 }
@.str = private unnamed_addr constant [30 x i8] c"invalid distance too far back\00", align 1
@97 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.1, i32 224, i32 25 }, ptr @6, i8 3, i8 3 }
@98 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src.1, i32 230, i32 39 }, ptr @5 }
@99 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src.1, i32 230, i32 30 } }
@100 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src.1, i32 232, i32 30 } }
@101 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src.1, i32 235, i32 39 }, ptr @5 }
@102 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src.1, i32 235, i32 30 } }
@103 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src.1, i32 251, i32 59 } }
@104 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src.1, i32 254, i32 59 } }
@105 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src.1, i32 267, i32 55 } }
@106 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src.1, i32 276, i32 50 } }
@107 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src.1, i32 278, i32 52 } }
@108 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.1, i32 281, i32 38 }, ptr @48, i8 1, i8 3 }
@109 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src.1, i32 281, i32 30 } }
@110 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src.1, i32 281, i32 44 }, ptr @5, ptr @5 }
@111 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src.1, i32 281, i32 42 } }
@112 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.1, i32 284, i32 17 }, ptr @26, i8 6, i8 3 }
@.str.2 = private unnamed_addr constant [22 x i8] c"invalid distance code\00", align 1
@113 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.1, i32 284, i32 17 }, ptr @6, i8 3, i8 3 }
@114 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.1, i32 288, i32 34 }, ptr @48, i8 1, i8 3 }
@115 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src.1, i32 288, i32 26 } }
@116 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src.1, i32 288, i32 40 }, ptr @5, ptr @5 }
@117 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src.1, i32 288, i32 38 } }
@118 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.1, i32 292, i32 20 }, ptr @26, i8 6, i8 3 }
@119 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.1, i32 295, i32 13 }, ptr @26, i8 6, i8 3 }
@.str.3 = private unnamed_addr constant [28 x i8] c"invalid literal/length code\00", align 1
@120 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.1, i32 295, i32 13 }, ptr @6, i8 3, i8 3 }
@121 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src.1, i32 302, i32 8 } }
@122 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src.1, i32 303, i32 10 }, ptr @5 }
@123 = private unnamed_addr constant { i16, i16, [16 x i8] } { i16 0, i16 12, [16 x i8] c"'unsigned long'\00" }
@124 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src.1, i32 304, i32 26 }, ptr @123, ptr @5 }
@125 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.1, i32 307, i32 11 }, ptr @6, i8 3, i8 3 }
@126 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.1, i32 307, i32 11 }, ptr @11, i8 3, i8 1 }
@127 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.1, i32 308, i32 11 }, ptr @6, i8 3, i8 3 }
@128 = private unnamed_addr constant { i16, i16, [27 x i8] } { i16 0, i16 13, [27 x i8] c"'__ptrdiff_t' (aka 'long')\00" }
@129 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src.1, i32 309, i32 73 }, ptr @128 }
@130 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src.1, i32 310, i32 73 }, ptr @128 }
@131 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.1, i32 309, i32 11 }, ptr @6, i8 3, i8 3 }
@132 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src.1, i32 311, i32 74 }, ptr @128 }
@133 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src.1, i32 312, i32 74 }, ptr @128 }
@134 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.1, i32 311, i32 11 }, ptr @6, i8 3, i8 3 }
@135 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.1, i32 315, i32 12 }, ptr @26, i8 6, i8 3 }
@136 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.1, i32 316, i32 12 }, ptr @26, i8 6, i8 3 }
@137 = private unnamed_addr constant { i16, i16, [12 x i8] } { i16 0, i16 13, [12 x i8] c"'long long'\00" }
@138 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 121, i32 27 }, ptr @137 }
@.src.4 = private unnamed_addr constant [22 x i8] c"/usr/include/string.h\00", align 1
@139 = private unnamed_addr global { { ptr, i32, i32 }, { ptr, i32, i32 }, i32 } { { ptr, i32, i32 } { ptr @.src, i32 139, i32 17 }, { ptr, i32, i32 } { ptr @.src.4, i32 48, i32 14 }, i32 1 }
@140 = private unnamed_addr global { { ptr, i32, i32 }, { ptr, i32, i32 }, i32 } { { ptr, i32, i32 } { ptr @.src, i32 139, i32 22 }, { ptr, i32, i32 } { ptr @.src.4, i32 48, i32 14 }, i32 2 }
@141 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 140, i32 20 } }
@142 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 144, i32 21 }, ptr @1, i8 0, i8 0 }
@143 = private unnamed_addr global { { ptr, i32, i32 }, { ptr, i32, i32 }, i32 } { { ptr, i32, i32 } { ptr @.src, i32 144, i32 16 }, { ptr, i32, i32 } { ptr @.src.4, i32 61, i32 62 }, i32 1 }
@144 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 145, i32 20 } }
@145 = private unnamed_addr constant { i16, i16, [33 x i8] } { i16 0, i16 12, [33 x i8] c"'__size_t' (aka 'unsigned long')\00" }
@146 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 199, i32 34 }, ptr @145 }
@147 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 203, i32 24 } }
@148 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 204, i32 18 }, ptr @14 }
@149 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 204, i32 13 } }
@150 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 205, i32 18 }, ptr @14 }
@151 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 205, i32 13 }, ptr @5 }
@152 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 214, i32 13 }, ptr @5 }
@153 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 215, i32 13 } }
@154 = private unnamed_addr global { { ptr, i32, i32 }, { ptr, i32, i32 }, i32 } { { ptr, i32, i32 } { ptr @.src, i32 222, i32 16 }, { ptr, i32, i32 } { ptr @.src.4, i32 44, i32 28 }, i32 1 }
@155 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 223, i32 13 } }
@.src.6 = private unnamed_addr constant [50 x i8] c"/usr/lib/llvm-24/lib/clang/24/include/emmintrin.h\00", align 1
@.src.7 = private unnamed_addr constant [48 x i8] c"/opt-bench/work/zlib-ng_ubsan/zlib-ng/zmemory.h\00", align 1
@156 = private unnamed_addr constant { i16, i16, [27 x i8] } { i16 -1, i16 0, [27 x i8] c"'const unaligned_uint16_t'\00" }
@157 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.7, i32 15, i32 47 }, ptr @156, i8 0, i8 3 }
@158 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.7, i32 15, i32 47 }, ptr @53, i8 0, i8 0 }
@159 = private unnamed_addr constant { i16, i16, [27 x i8] } { i16 -1, i16 0, [27 x i8] c"'const unaligned_uint32_t'\00" }
@160 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.7, i32 26, i32 47 }, ptr @159, i8 0, i8 3 }
@161 = private unnamed_addr constant { i16, i16, [44 x i8] } { i16 0, i16 10, [44 x i8] c"'const uint32_t' (aka 'const unsigned int')\00" }
@162 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.7, i32 26, i32 47 }, ptr @161, i8 0, i8 0 }
@163 = private unnamed_addr constant { i16, i16, [27 x i8] } { i16 -1, i16 0, [27 x i8] c"'const unaligned_uint64_t'\00" }
@164 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.7, i32 37, i32 47 }, ptr @163, i8 0, i8 3 }
@165 = private unnamed_addr constant { i16, i16, [45 x i8] } { i16 0, i16 12, [45 x i8] c"'const uint64_t' (aka 'const unsigned long')\00" }
@166 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.7, i32 37, i32 47 }, ptr @165, i8 0, i8 0 }
@167 = private unnamed_addr global { { ptr, i32, i32 }, { ptr, i32, i32 }, i32 } { { ptr, i32, i32 } { ptr @.src, i32 78, i32 31 }, { ptr, i32, i32 } { ptr @.src.4, i32 44, i32 28 }, i32 2 }
@168 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 79, i32 29 }, ptr @33 }
@169 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 80, i32 23 } }
@170 = private unnamed_addr constant { i16, i16, [24 x i8] } { i16 -1, i16 0, [24 x i8] c"'struct __storeu_si128'\00" }
@171 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.6, i32 3923, i32 35 }, ptr @170, i8 0, i8 3 }
@172 = private unnamed_addr constant { i16, i16, [45 x i8] } { i16 -1, i16 0, [45 x i8] c"'__m128i_u' (vector of 2 'long long' values)\00" }
@173 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.6, i32 3923, i32 35 }, ptr @172, i8 0, i8 1 }
@.src.8 = private unnamed_addr constant [50 x i8] c"/opt-bench/work/zlib-ng_ubsan/zlib-ng/inflate_p.h\00", align 1
@174 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src.8, i32 145, i32 18 }, ptr @33, ptr @5 }
@175 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 266, i32 20 } }
@176 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 272, i32 42 }, ptr @137 }
@177 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 274, i32 19 }, ptr @33 }
@178 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 275, i32 27 } }
@179 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 275, i32 22 }, ptr @1, i8 0, i8 0 }
@180 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 275, i32 17 } }
@181 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 275, i32 13 }, ptr @1, i8 0, i8 1 }
@182 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 54, i32 37 } }
@183 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 59, i32 13 } }
@184 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 60, i32 14 }, ptr @5 }
@185 = private unnamed_addr constant { i16, i16, [29 x i8] } { i16 -1, i16 0, [29 x i8] c"'const struct __loadu_si128'\00" }
@186 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.6, i32 3469, i32 47 }, ptr @185, i8 0, i8 3 }
@187 = private unnamed_addr constant { i16, i16, [51 x i8] } { i16 -1, i16 0, [51 x i8] c"'const __m128i_u' (vector of 2 'long long' values)\00" }
@188 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.6, i32 3469, i32 47 }, ptr @187, i8 0, i8 0 }
@189 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src.8, i32 155, i32 50 } }
@190 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src.8, i32 156, i32 50 } }
@191 = private unnamed_addr global { { ptr, i32, i32 }, { ptr, i32, i32 }, i32 } { { ptr, i32, i32 } { ptr @.src.8, i32 161, i32 16 }, { ptr, i32, i32 } { ptr @.src.4, i32 44, i32 28 }, i32 1 }
@192 = private unnamed_addr global { { ptr, i32, i32 }, { ptr, i32, i32 }, i32 } { { ptr, i32, i32 } { ptr @.src.8, i32 161, i32 21 }, { ptr, i32, i32 } { ptr @.src.4, i32 44, i32 28 }, i32 2 }
@193 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src.8, i32 162, i32 20 } }
@194 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src.8, i32 167, i32 20 } }
@195 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src.8, i32 175, i32 36 }, ptr @137 }
@196 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src.8, i32 184, i32 13 }, ptr @33 }
@197 = private unnamed_addr global { { ptr, i32, i32 }, { ptr, i32, i32 }, i32 } { { ptr, i32, i32 } { ptr @.src.8, i32 187, i32 20 }, { ptr, i32, i32 } { ptr @.src.4, i32 44, i32 28 }, i32 1 }
@198 = private unnamed_addr global { { ptr, i32, i32 }, { ptr, i32, i32 }, i32 } { { ptr, i32, i32 } { ptr @.src.8, i32 187, i32 25 }, { ptr, i32, i32 } { ptr @.src.4, i32 44, i32 28 }, i32 2 }
@199 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src.8, i32 188, i32 17 } }
@200 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src.8, i32 189, i32 18 } }
@201 = private unnamed_addr global { { ptr, i32, i32 }, { ptr, i32, i32 }, i32 } { { ptr, i32, i32 } { ptr @.src.8, i32 194, i32 20 }, { ptr, i32, i32 } { ptr @.src.4, i32 44, i32 28 }, i32 1 }
@202 = private unnamed_addr global { { ptr, i32, i32 }, { ptr, i32, i32 }, i32 } { { ptr, i32, i32 } { ptr @.src.8, i32 194, i32 25 }, { ptr, i32, i32 } { ptr @.src.4, i32 44, i32 28 }, i32 2 }
@203 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src.8, i32 195, i32 17 } }
@204 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src.8, i32 196, i32 18 } }
@205 = private unnamed_addr global { { ptr, i32, i32 }, { ptr, i32, i32 }, i32 } { { ptr, i32, i32 } { ptr @.src.8, i32 201, i32 20 }, { ptr, i32, i32 } { ptr @.src.4, i32 44, i32 28 }, i32 1 }
@206 = private unnamed_addr global { { ptr, i32, i32 }, { ptr, i32, i32 }, i32 } { { ptr, i32, i32 } { ptr @.src.8, i32 201, i32 25 }, { ptr, i32, i32 } { ptr @.src.4, i32 44, i32 28 }, i32 2 }
@207 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src.8, i32 202, i32 17 } }
@208 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src.8, i32 203, i32 18 } }
@209 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src.8, i32 207, i32 22 }, ptr @33 }
@210 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src.8, i32 208, i32 27 } }
@211 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.8, i32 208, i32 22 }, ptr @1, i8 0, i8 0 }
@212 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src.8, i32 208, i32 17 } }
@213 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.8, i32 208, i32 13 }, ptr @1, i8 0, i8 1 }
@214 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 27, i32 27 }, ptr @5 }
@215 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 30, i32 9 } }
@216 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 31, i32 10 } }
@217 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 32, i32 9 }, ptr @5 }
@218 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 36, i32 13 } }
@219 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 37, i32 14 } }
@220 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 38, i32 13 }, ptr @145 }

; Function Attrs: nounwind uwtable
define hidden ptr @chunkmemset_safe_sse2(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 !func_sanitize !23 {
bb.a:
  %i.a = call i32 @llvm.umin.i32(i32 %2, i32 %3)  ; 3 uses
  %i.b = icmp ult i32 %3, 16
  br i1 %i.b, label %.preheader, label %bb.j, !prof !12

.preheader:                                       ; preds = %bb.a
  %.not1920 = icmp eq i32 %i.a, 0
  br i1 %.not1920, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.i
  %.01523 = phi i32 [ %i.p, %bb.i ], [ %i.a, %.preheader ]
  %.01622 = phi ptr [ %i.c, %bb.i ], [ %1, %.preheader ] ; 4 uses
  %.01721 = phi ptr [ %i.j, %bb.i ], [ %0, %.preheader ] ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.01622, i64 1
  %i.d = ptrtoint ptr %.01622 to i64, !nosanitize !13 ; 3 uses
  %i.e = add i64 %i.d, 1, !nosanitize !13         ; 2 uses
  %i.f = icmp ne ptr %.01622, null, !nosanitize !13 ; 2 uses
  %i.g = icmp ne i64 %i.e, 0
  %i.h = and i1 %i.f, %i.g, !nosanitize !13
  br i1 %i.h, label %bb.c, label %bb.b, !prof !14, !nosanitize !13

bb.b:                                             ; preds = %.lr.ph
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @0, i64 %i.d, i64 %i.e) #9, !nosanitize !13
  br label %bb.c, !nosanitize !13

bb.c:                                             ; preds = %bb.b, %.lr.ph
  br i1 %i.f, label %bb.e, label %bb.d, !prof !14, !nosanitize !13

bb.d:                                             ; preds = %bb.c
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @2, i64 %i.d) #9, !nosanitize !13
  br label %bb.e, !nosanitize !13

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = load i8, ptr %.01622, align 1, !tbaa !15
  %i.j = getelementptr inbounds nuw i8, ptr %.01721, i64 1 ; 2 uses
  %i.k = ptrtoint ptr %.01721 to i64, !nosanitize !13 ; 3 uses
  %i.l = add i64 %i.k, 1, !nosanitize !13         ; 2 uses
  %i.m = icmp ne ptr %.01721, null, !nosanitize !13 ; 2 uses
  %i.n = icmp ne i64 %i.l, 0
  %i.o = and i1 %i.m, %i.n, !nosanitize !13
  br i1 %i.o, label %bb.g, label %bb.f, !prof !14, !nosanitize !13

bb.f:                                             ; preds = %bb.e
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @3, i64 %i.k, i64 %i.l) #9, !nosanitize !13
  br label %bb.g, !nosanitize !13

bb.g:                                             ; preds = %bb.f, %bb.e
  br i1 %i.m, label %bb.i, label %bb.h, !prof !14, !nosanitize !13

bb.h:                                             ; preds = %bb.g
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @4, i64 %i.k) #9, !nosanitize !13
  br label %bb.i, !nosanitize !13

bb.i:                                             ; preds = %bb.h, %bb.g
  store i8 %i.i, ptr %.01721, align 1, !tbaa !15
  %i.p = add i32 %.01523, -1                      ; 2 uses
  %.not19 = icmp eq i32 %i.p, 0
  br i1 %.not19, label %.loopexit, label %.lr.ph, !llvm.loop !22

bb.j:                                             ; preds = %bb.a
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = call fastcc ptr @chunkmemset_sse2(ptr noundef %0, ptr noundef %1, i32 noundef %i.a)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.i, %.preheader, %bb.j, %bb.k
  %.0 = phi ptr [ %0, %bb.j ], [ %i.q, %bb.k ], [ %0, %.preheader ], [ %i.j, %bb.i ]
  ret ptr %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: uwtable
declare void @__ubsan_handle_pointer_overflow(ptr, i64, i64) local_unnamed_addr #2

; Function Attrs: uwtable
declare void @__ubsan_handle_type_mismatch_v1(ptr, i64) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) #1

; Function Attrs: uwtable
declare void @__ubsan_handle_sub_overflow(ptr, i64, i64) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @chunkmemset_sse2(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #3 !func_sanitize !27 {
bb.a:
  %i.a = alloca <2 x i64>, align 16               ; 4 uses
  %i.b = alloca <2 x i64>, align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = ptrtoint ptr %0 to i64                   ; 7 uses
  %i.d = ptrtoint ptr %1 to i64                   ; 8 uses
  %i.e = sub i64 %i.c, %i.d                       ; 4 uses
  %i.f = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 0, i64 %i.e), !nosanitize !13 ; 2 uses
  %i.g = extractvalue { i64, i1 } %i.f, 0, !nosanitize !13 ; 2 uses
  %i.h = extractvalue { i64, i1 } %i.f, 1, !nosanitize !13
  br i1 %i.h, label %bb.b, label %bb.c, !prof !17, !nosanitize !13

bb.b:                                             ; preds = %bb.a
  call void @__ubsan_handle_negate_overflow(ptr nonnull @138, i64 %i.e) #9, !nosanitize !13
  br label %bb.c, !nosanitize !13

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = icmp slt i64 %i.e, 0, !nosanitize !13    ; 2 uses
  %i.j = select i1 %i.i, i64 %i.g, i64 %i.e, !nosanitize !13 ; 6 uses
  br i1 %i.i, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.k = zext i32 %2 to i64                       ; 4 uses
  %i.l = icmp ult i64 %i.g, %i.k
  br i1 %i.l, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.m = icmp ne ptr %0, null, !nosanitize !13    ; 2 uses
  br i1 %i.m, label %bb.g, label %bb.f, !prof !14, !nosanitize !13

bb.f:                                             ; preds = %bb.e
  call void @__ubsan_handle_nonnull_arg(ptr nonnull @139) #9, !nosanitize !13
  br label %bb.g, !nosanitize !13

bb.g:                                             ; preds = %bb.f, %bb.e
  %.not57 = icmp eq ptr %1, null, !nosanitize !13
  br i1 %.not57, label %bb.h, label %bb.i, !prof !17, !nosanitize !13

bb.h:                                             ; preds = %bb.g
  call void @__ubsan_handle_nonnull_arg(ptr nonnull @140) #9, !nosanitize !13
  br label %bb.i, !nosanitize !13

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %0, ptr align 1 %1, i64 %i.k, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %i.k ; 2 uses
  %i.o = add i64 %i.k, %i.c, !nosanitize !13      ; 3 uses
  %i.p = icmp ne i64 %i.o, 0
  %i.q = icmp uge i64 %i.o, %i.c, !nosanitize !13
  %i.r = and i1 %i.p, %i.q
  %i.s = and i1 %i.m, %i.r
  br i1 %i.s, label %bb.au, label %bb.j, !prof !14, !nosanitize !13

bb.j:                                             ; preds = %bb.i
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @141, i64 %i.c, i64 %i.o) #9, !nosanitize !13
  br label %bb.au, !nosanitize !13

bb.k:                                             ; preds = %bb.d, %bb.c
  %i.t = icmp eq i64 %i.j, 1
  br i1 %i.t, label %bb.l, label %bb.r

bb.l:                                             ; preds = %bb.k
  %.not115 = icmp eq ptr %1, null, !nosanitize !13
  br i1 %.not115, label %bb.m, label %bb.n, !prof !17, !nosanitize !13

bb.m:                                             ; preds = %bb.l
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @142, i64 %i.d) #9, !nosanitize !13
  br label %bb.n, !nosanitize !13

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.u = load i8, ptr %1, align 1, !tbaa !15
  %i.v = zext i32 %2 to i64                       ; 3 uses
  %i.w = icmp ne ptr %0, null, !nosanitize !13    ; 2 uses
  br i1 %i.w, label %bb.p, label %bb.o, !prof !14, !nosanitize !13

bb.o:                                             ; preds = %bb.n
  call void @__ubsan_handle_nonnull_arg(ptr nonnull @143) #9, !nosanitize !13
  br label %bb.p, !nosanitize !13

bb.p:                                             ; preds = %bb.o, %bb.n
  call void @llvm.memset.p0.i64(ptr align 1 %0, i8 %i.u, i64 %i.v, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %i.v ; 2 uses
  %i.y = add i64 %i.v, %i.c, !nosanitize !13      ; 3 uses
  %i.z = icmp eq i64 %i.y, 0
  %i.aa = xor i1 %i.w, %i.z
  %i.ab = icmp uge i64 %i.y, %i.c, !nosanitize !13
  %i.ac = and i1 %i.ab, %i.aa, !nosanitize !13
  br i1 %i.ac, label %bb.au, label %bb.q, !prof !14, !nosanitize !13

bb.q:                                             ; preds = %bb.p
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @144, i64 %i.c, i64 %i.y) #9, !nosanitize !13
  br label %bb.au, !nosanitize !13

bb.r:                                             ; preds = %bb.k
  %i.ad = icmp ugt i64 %i.j, 15
  br i1 %i.ad, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ae = call fastcc ptr @chunkcopy_sse2(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  br label %bb.au

bb.t:                                             ; preds = %bb.r
  switch i64 %i.j, label %.split.us.i [
    i64 2, label %bb.u
    i64 4, label %bb.w
    i64 8, label %bb.y
  ]

bb.u:                                             ; preds = %bb.t
  %.not112 = icmp eq ptr %1, null, !nosanitize !13
  br i1 %.not112, label %bb.v, label %zng_memread_2.exit.i, !prof !17, !nosanitize !13

bb.v:                                             ; preds = %bb.u
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @157, i64 %i.d) #9, !nosanitize !13
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @158, i64 %i.d) #9, !nosanitize !13
  br label %zng_memread_2.exit.i, !nosanitize !13

zng_memread_2.exit.i:                             ; preds = %bb.v, %bb.u
  %i.af = load i16, ptr %1, align 1, !tbaa !15
  %i.ag = insertelement <8 x i16> poison, i16 %i.af, i64 0
  %i.ah = shufflevector <8 x i16> %i.ag, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.ai = bitcast <8 x i16> %i.ah to <2 x i64>
  store <8 x i16> %i.ah, ptr %i.b, align 16, !tbaa !15
  br label %bb.ae

bb.w:                                             ; preds = %bb.t
  %.not111 = icmp eq ptr %1, null, !nosanitize !13
  br i1 %.not111, label %bb.x, label %zng_memread_4.exit.i, !prof !17, !nosanitize !13

bb.x:                                             ; preds = %bb.w
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @160, i64 %i.d) #9, !nosanitize !13
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @162, i64 %i.d) #9, !nosanitize !13
  br label %zng_memread_4.exit.i, !nosanitize !13

zng_memread_4.exit.i:                             ; preds = %bb.x, %bb.w
  %i.aj = load i32, ptr %1, align 1, !tbaa !15
  %i.ak = insertelement <4 x i32> poison, i32 %i.aj, i64 0
  %i.al = shufflevector <4 x i32> %i.ak, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.am = bitcast <4 x i32> %i.al to <2 x i64>
  store <4 x i32> %i.al, ptr %i.b, align 16, !tbaa !15
  br label %bb.ae

bb.y:                                             ; preds = %bb.t
  %.not110.a = icmp eq ptr %1, null, !nosanitize !13
  br i1 %.not110.a, label %bb.z, label %zng_memread_8.exit.i, !prof !17, !nosanitize !13

bb.z:                                             ; preds = %bb.y
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @164, i64 %i.d) #9, !nosanitize !13
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @166, i64 %i.d) #9, !nosanitize !13
  br label %zng_memread_8.exit.i, !nosanitize !13

zng_memread_8.exit.i:                             ; preds = %bb.z, %bb.y
  %i.an = load i64, ptr %1, align 1, !tbaa !15
  %i.ao = insertelement <2 x i64> poison, i64 %i.an, i64 0
  %i.ap = shufflevector <2 x i64> %i.ao, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  store <2 x i64> %i.ap, ptr %i.b, align 16, !tbaa !15
  br label %bb.ae

.split.us.i:                                      ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %.not14.i = icmp eq ptr %1, null, !nosanitize !13
  br i1 %.not14.i, label %.split.us.split.us.preheader.i, label %.split.us.split.i, !prof !17, !nosanitize !13

.split.us.split.us.preheader.i:                   ; preds = %.split.us.i
  %i.aq = icmp eq i64 %i.j, 0
  br label %bb.aa

bb.aa:                                            ; preds = %.split.us.split.us.preheader.i, %bb.aa
  %.01315.us.us.i = phi i64 [ %i.ar, %bb.aa ], [ 16, %.split.us.split.us.preheader.i ] ; 2 uses
  call void @__ubsan_handle_nonnull_arg(ptr nonnull @167) #9, !nosanitize !13
  call void @llvm.assume(i1 %i.aq)
  %i.ar = sub nuw nsw i64 %.01315.us.us.i, %i.j
  %.not.us.us.i = icmp eq i64 %.01315.us.us.i, 0
  br i1 %.not.us.us.i, label %GET_CHUNK_MAG.exit, label %bb.aa, !llvm.loop !24

.split.us.split.i:                                ; preds = %.split.us.i, %12
  %.016.us.i = phi ptr [ %6, %12 ], [ %i.a, %.split.us.i ] ; 3 uses
  %.01315.us.i = phi i64 [ %4, %12 ], [ 16, %.split.us.i ] ; 3 uses
  %i.as = call i64 @llvm.umin.i64(i64 %.01315.us.i, i64 %i.j) ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.016.us.i, ptr nonnull readonly align 1 %1, i64 %i.as, i1 false)
  %3 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %.01315.us.i, i64 %i.as), !nosanitize !13 ; 2 uses
  %4 = extractvalue { i64, i1 } %3, 0, !nosanitize !13 ; 2 uses
  %5 = extractvalue { i64, i1 } %3, 1, !nosanitize !13
  br i1 %5, label %bb.ab, label %bb.ac, !prof !17, !nosanitize !13

bb.ab:                                            ; preds = %.split.us.split.i
  call void @__ubsan_handle_sub_overflow(ptr nonnull @168, i64 %.01315.us.i, i64 %i.as) #10, !nosanitize !13
  br label %bb.ac, !nosanitize !13

bb.ac:                                            ; preds = %bb.ab, %.split.us.split.i
  %6 = getelementptr inbounds nuw i8, ptr %.016.us.i, i64 %i.as
  %7 = ptrtoint ptr %.016.us.i to i64, !nosanitize !13 ; 3 uses
  %8 = add i64 %i.as, %7, !nosanitize !13         ; 3 uses
  %9 = icmp ne i64 %8, 0, !nosanitize !13
  %10 = icmp uge i64 %8, %7, !nosanitize !13
  %11 = and i1 %9, %10, !nosanitize !13
  br i1 %11, label %12, label %bb.ad, !prof !14, !nosanitize !13

bb.ad:                                            ; preds = %bb.ac
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @169, i64 %7, i64 %8) #9, !nosanitize !13
  br label %12, !nosanitize !13

12:                                               ; preds = %bb.ad, %bb.ac
  %.not.us.i = icmp eq i64 %4, 0
  br i1 %.not.us.i, label %GET_CHUNK_MAG.exit, label %.split.us.split.i, !llvm.loop !24

GET_CHUNK_MAG.exit:                               ; preds = %12, %bb.aa
  %storemerge = phi i64 [ 0, %bb.aa ], [ %i.as, %12 ]
  %i.at = load <2 x i64>, ptr %i.a, align 16, !tbaa !15 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  store <2 x i64> %i.at, ptr %i.b, align 16, !tbaa !15
  br label %bb.ae

bb.ae:                                            ; preds = %zng_memread_4.exit.i, %GET_CHUNK_MAG.exit, %zng_memread_8.exit.i, %zng_memread_2.exit.i
  %.0.81 = phi <2 x i64> [ %i.at, %GET_CHUNK_MAG.exit ], [ %i.ai, %zng_memread_2.exit.i ], [ %i.am, %zng_memread_4.exit.i ], [ %i.ap, %zng_memread_8.exit.i ] ; 3 uses
  %.0 = phi i64 [ %storemerge, %GET_CHUNK_MAG.exit ], [ 0, %zng_memread_2.exit.i ], [ 0, %zng_memread_4.exit.i ], [ 0, %zng_memread_8.exit.i ] ; 2 uses
  %13 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 16, i64 %.0), !nosanitize !13 ; 2 uses
  %14 = extractvalue { i64, i1 } %13, 0, !nosanitize !13 ; 3 uses
  %15 = extractvalue { i64, i1 } %13, 1, !nosanitize !13
  br i1 %15, label %16, label %17, !prof !17, !nosanitize !13

16:                                               ; preds = %bb.ae
  call void @__ubsan_handle_sub_overflow(ptr nonnull @146, i64 16, i64 %.0) #10, !nosanitize !13
  br label %17, !nosanitize !13

17:                                               ; preds = %16, %bb.ae
  %18 = trunc i64 %14 to i32                      ; 3 uses
  %19 = icmp ugt i32 %2, 31
  br i1 %19, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %17
  %20 = and i64 %14, 4294967295                   ; 4 uses
  %i.au = shl i32 %18, 1                          ; 2 uses
  %21 = icmp sgt i32 %18, -1                      ; 2 uses
  %i.av = zext i32 %i.au to i64                   ; 3 uses
  br label %bb.af

.preheader:                                       ; preds = %32, %17
  %.050.lcssa = phi ptr [ %0, %17 ], [ %i.az, %32 ] ; 2 uses
  %.0.lcssa = phi i32 [ %2, %17 ], [ %29, %32 ]   ; 4 uses
  %22 = zext nneg i32 %.0.lcssa to i64            ; 2 uses
  %i.aw = icmp samesign ugt i32 %.0.lcssa, 15
  br i1 %i.aw, label %.lr.ph71, label %._crit_edge

.lr.ph71:                                         ; preds = %.preheader
  %23 = and i64 %14, 4294967295                   ; 3 uses
  br label %bb.al

bb.af:                                            ; preds = %.lr.ph, %32
  %.067 = phi i32 [ %2, %.lr.ph ], [ %29, %32 ]   ; 2 uses
  %.05066 = phi ptr [ %0, %.lr.ph ], [ %i.az, %32 ] ; 5 uses
  %24 = zext i32 %.067 to i64
  %.not113 = icmp eq ptr %.05066, null, !nosanitize !13
  %.pre = ptrtoint ptr %.05066 to i64, !nosanitize !13 ; 8 uses
  br i1 %.not113, label %bb.ag, label %storechunk.exit, !prof !17, !nosanitize !13

bb.ag:                                            ; preds = %bb.af
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @171, i64 %.pre) #9, !nosanitize !13
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @173, i64 %.pre) #9, !nosanitize !13
  br label %storechunk.exit, !nosanitize !13

storechunk.exit:                                  ; preds = %bb.af, %bb.ag
  store <2 x i64> %.0.81, ptr %.05066, align 1, !tbaa !15
  %i.ax = getelementptr inbounds nuw i8, ptr %.05066, i64 %20
  %i.ay = add i64 %20, %.pre, !nosanitize !13     ; 2 uses
  %.not61 = icmp ult i64 %i.ay, %.pre, !nosanitize !13
  br i1 %.not61, label %25, label %storechunk.exit58, !prof !17, !nosanitize !13

25:                                               ; preds = %storechunk.exit
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @147, i64 %.pre, i64 %i.ay) #9, !nosanitize !13
  br label %storechunk.exit58, !nosanitize !13

storechunk.exit58:                                ; preds = %25, %storechunk.exit
  store <2 x i64> %.0.81, ptr %i.ax, align 1, !tbaa !15
  br i1 %21, label %bb.ai, label %bb.ah, !prof !14, !nosanitize !13

bb.ah:                                            ; preds = %storechunk.exit58
  call void @__ubsan_handle_mul_overflow(ptr nonnull @148, i64 2, i64 %20) #10, !nosanitize !13
  br label %bb.ai, !nosanitize !13

bb.ai:                                            ; preds = %bb.ah, %storechunk.exit58
  %i.az = getelementptr inbounds nuw i8, ptr %.05066, i64 %i.av ; 2 uses
  %i.ba = add i64 %.pre, %i.av, !nosanitize !13   ; 2 uses
  %.not62 = icmp ult i64 %i.ba, %.pre, !nosanitize !13
  br i1 %.not62, label %26, label %27, !prof !17, !nosanitize !13

26:                                               ; preds = %bb.ai
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @149, i64 %.pre, i64 %i.ba) #9, !nosanitize !13
  br label %27, !nosanitize !13

27:                                               ; preds = %26, %bb.ai
  br i1 %21, label %bb.ak, label %bb.aj, !prof !14, !nosanitize !13

bb.aj:                                            ; preds = %27
  call void @__ubsan_handle_mul_overflow(ptr nonnull @150, i64 2, i64 %20) #10, !nosanitize !13
  br label %bb.ak, !nosanitize !13

bb.ak:                                            ; preds = %bb.aj, %27
  %28 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %.067, i32 %i.au), !nosanitize !13 ; 2 uses
  %29 = extractvalue { i32, i1 } %28, 0, !nosanitize !13 ; 3 uses
  %30 = extractvalue { i32, i1 } %28, 1, !nosanitize !13
  br i1 %30, label %31, label %32, !prof !17, !nosanitize !13

31:                                               ; preds = %bb.ak
  call void @__ubsan_handle_sub_overflow(ptr nonnull @151, i64 %24, i64 %i.av) #10, !nosanitize !13
  br label %32, !nosanitize !13

32:                                               ; preds = %31, %bb.ak
  %33 = icmp ugt i32 %29, 31
  br i1 %33, label %bb.af, label %.preheader, !llvm.loop !25

bb.al:                                            ; preds = %.lr.ph71, %bb.ap
  %34 = phi i64 [ %22, %.lr.ph71 ], [ %39, %bb.ap ]
  %.170 = phi i32 [ %.0.lcssa, %.lr.ph71 ], [ %36, %bb.ap ]
  %.15169 = phi ptr [ %.050.lcssa, %.lr.ph71 ], [ %i.bc, %bb.ap ] ; 5 uses
  %.not114 = icmp eq ptr %.15169, null, !nosanitize !13
  br i1 %.not114, label %bb.am, label %storechunk.exit59, !prof !17, !nosanitize !13

bb.am:                                            ; preds = %bb.al
  %i.bb = ptrtoint ptr %.15169 to i64, !nosanitize !13 ; 2 uses
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @171, i64 %i.bb) #9, !nosanitize !13
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @173, i64 %i.bb) #9, !nosanitize !13
  br label %storechunk.exit59, !nosanitize !13

storechunk.exit59:                                ; preds = %bb.al, %bb.am
  store <2 x i64> %.0.81, ptr %.15169, align 1, !tbaa !15
  %35 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %.170, i32 %18), !nosanitize !13 ; 2 uses
  %36 = extractvalue { i32, i1 } %35, 0, !nosanitize !13 ; 4 uses
  %37 = extractvalue { i32, i1 } %35, 1, !nosanitize !13
  br i1 %37, label %38, label %bb.an, !prof !17, !nosanitize !13

38:                                               ; preds = %storechunk.exit59
  call void @__ubsan_handle_sub_overflow(ptr nonnull @152, i64 %34, i64 %23) #10, !nosanitize !13
  br label %bb.an, !nosanitize !13

bb.an:                                            ; preds = %38, %storechunk.exit59
  %i.bc = getelementptr inbounds nuw i8, ptr %.15169, i64 %23 ; 2 uses
  %i.bd = ptrtoint ptr %.15169 to i64, !nosanitize !13 ; 3 uses
  %i.be = add i64 %23, %i.bd, !nosanitize !13     ; 2 uses
  %.not60 = icmp ult i64 %i.be, %i.bd, !nosanitize !13
  br i1 %.not60, label %bb.ao, label %bb.ap, !prof !17, !nosanitize !13

bb.ao:                                            ; preds = %bb.an
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @153, i64 %i.bd, i64 %i.be) #9, !nosanitize !13
  br label %bb.ap, !nosanitize !13

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %39 = zext i32 %36 to i64                       ; 2 uses
  %i.bf = icmp ugt i32 %36, 15
  br i1 %i.bf, label %bb.al, label %._crit_edge, !llvm.loop !26

._crit_edge:                                      ; preds = %bb.ap, %.preheader
  %.151.lcssa = phi ptr [ %.050.lcssa, %.preheader ], [ %i.bc, %bb.ap ] ; 5 uses
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader ], [ %36, %bb.ap ]
  %.lcssa = phi i64 [ %22, %.preheader ], [ %39, %bb.ap ] ; 3 uses
  %.not = icmp eq i32 %.1.lcssa, 0
  br i1 %.not, label %bb.au, label %bb.aq

bb.aq:                                            ; preds = %._crit_edge
  %i.bg = icmp ne ptr %.151.lcssa, null, !nosanitize !13 ; 2 uses
  br i1 %i.bg, label %bb.as, label %bb.ar, !prof !14, !nosanitize !13

bb.ar:                                            ; preds = %bb.aq
  call void @__ubsan_handle_nonnull_arg(ptr nonnull @154) #9, !nosanitize !13
  br label %bb.as, !nosanitize !13

bb.as:                                            ; preds = %bb.aq, %bb.ar
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.151.lcssa, ptr nonnull align 16 %i.b, i64 %.lcssa, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %.151.lcssa, i64 %.lcssa ; 2 uses
  %i.bi = ptrtoint ptr %.151.lcssa to i64, !nosanitize !13 ; 3 uses
  %i.bj = add i64 %.lcssa, %i.bi, !nosanitize !13 ; 3 uses
  %i.bk = icmp ne i64 %i.bj, 0
  %i.bl = icmp uge i64 %i.bj, %i.bi, !nosanitize !13
  %i.bm = and i1 %i.bk, %i.bl
  %i.bn = and i1 %i.bg, %i.bm
  br i1 %i.bn, label %bb.au, label %bb.at, !prof !14, !nosanitize !13

bb.at:                                            ; preds = %bb.as
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @155, i64 %i.bi, i64 %i.bj) #9, !nosanitize !13
  br label %bb.au, !nosanitize !13

bb.au:                                            ; preds = %._crit_edge, %bb.at, %bb.as, %bb.p, %bb.q, %bb.i, %bb.j, %bb.s
  %.049 = phi ptr [ %i.x, %bb.p ], [ %i.n, %bb.i ], [ %i.ae, %bb.s ], [ %i.n, %bb.j ], [ %i.x, %bb.q ], [ %.151.lcssa, %._crit_edge ], [ %i.bh, %bb.at ], [ %i.bh, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %.049
}

; Function Attrs: nounwind uwtable
define hidden void @inflate_fast_sse2(ptr noundef %0, i32 noundef %1) local_unnamed_addr #4 !func_sanitize !30 {
bb.a:
  %i.a = icmp ne ptr %0, null, !nosanitize !13    ; 2 uses
  %i.b = ptrtoint ptr %0 to i64, !nosanitize !13  ; 17 uses
  %i.c = and i64 %i.b, 7, !nosanitize !13
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !13     ; 13 uses
  %i.e = and i1 %i.a, %i.d, !nosanitize !13       ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.b, !prof !14, !nosanitize !13

bb.b:                                             ; preds = %bb.a
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @7, i64 %i.b) #9, !nosanitize !13
  br label %bb.c, !nosanitize !13

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.g = ptrtoint ptr %i.f to i64, !nosanitize !13 ; 2 uses
  %i.h = and i64 %i.g, 7, !nosanitize !13
  %i.i = icmp eq i64 %i.h, 0, !nosanitize !13
  br i1 %i.i, label %bb.e, label %bb.d, !prof !14, !nosanitize !13

bb.d:                                             ; preds = %bb.c
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @9, i64 %i.g) #9, !nosanitize !13
  br label %bb.e, !nosanitize !13

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !36   ; 17 uses
  br i1 %i.e, label %bb.g, label %bb.f, !prof !14, !nosanitize !13

bb.f:                                             ; preds = %bb.e
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @10, i64 %i.b) #9, !nosanitize !13
  br label %bb.g, !nosanitize !13

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.k = and i1 %i.a, %i.d, !nosanitize !13
  br i1 %i.k, label %bb.i, label %bb.h, !prof !14, !nosanitize !13

bb.h:                                             ; preds = %bb.g
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @12, i64 %i.b) #9, !nosanitize !13
  br label %bb.i, !nosanitize !13

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.l = load ptr, ptr %0, align 8, !tbaa !37     ; 4 uses
  br i1 %i.d, label %bb.k, label %bb.j, !prof !14, !nosanitize !13

bb.j:                                             ; preds = %bb.i
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @13, i64 %i.b) #9, !nosanitize !13
  br label %bb.k, !nosanitize !13

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !38   ; 2 uses
  %i.o = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %i.n, i32 14), !nosanitize !13 ; 2 uses
  %i.p = extractvalue { i32, i1 } %i.o, 0, !nosanitize !13
  %i.q = extractvalue { i32, i1 } %i.o, 1, !nosanitize !13
  br i1 %i.q, label %bb.l, label %bb.m, !prof !17, !nosanitize !13

bb.l:                                             ; preds = %bb.k
  %i.r = zext nneg i32 %i.n to i64, !nosanitize !13
  call void @__ubsan_handle_sub_overflow(ptr nonnull @15, i64 %i.r, i64 14) #10, !nosanitize !13
  br label %bb.m, !nosanitize !13

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.s = zext i32 %i.p to i64                     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.s ; 4 uses
  %i.u = ptrtoint ptr %i.l to i64, !nosanitize !13 ; 3 uses
  %i.v = add i64 %i.s, %i.u, !nosanitize !13      ; 3 uses
  %i.w = icmp ne ptr %i.l, null, !nosanitize !13
  %i.x = icmp eq i64 %i.v, 0
  %i.y = xor i1 %i.w, %i.x
  %i.z = icmp uge i64 %i.v, %i.u, !nosanitize !13
  %i.aa = and i1 %i.z, %i.y, !nosanitize !13
  br i1 %i.aa, label %bb.o, label %bb.n, !prof !14, !nosanitize !13

bb.n:                                             ; preds = %bb.m
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @16, i64 %i.u, i64 %i.v) #9, !nosanitize !13
  br label %bb.o, !nosanitize !13

bb.o:                                             ; preds = %bb.n, %bb.m
  br i1 %i.d, label %bb.q, label %bb.p, !prof !14, !nosanitize !13

bb.p:                                             ; preds = %bb.o
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @17, i64 %i.b) #9, !nosanitize !13
  br label %bb.q, !nosanitize !13

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !39 ; 9 uses
  br i1 %i.d, label %bb.s, label %bb.r, !prof !14, !nosanitize !13

bb.r:                                             ; preds = %bb.q
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @18, i64 %i.b) #9, !nosanitize !13
  br label %bb.s, !nosanitize !13

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !40 ; 2 uses
  %i.af = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1, i32 %i.ae), !nosanitize !13 ; 2 uses
  %i.ag = extractvalue { i32, i1 } %i.af, 0, !nosanitize !13
  %i.ah = extractvalue { i32, i1 } %i.af, 1, !nosanitize !13
  br i1 %i.ah, label %bb.t, label %bb.u, !prof !17, !nosanitize !13

bb.t:                                             ; preds = %bb.s
  %i.ai = zext i32 %1 to i64, !nosanitize !13
  %i.aj = zext i32 %i.ae to i64, !nosanitize !13
  call void @__ubsan_handle_sub_overflow(ptr nonnull @19, i64 %i.ai, i64 %i.aj) #10, !nosanitize !13
  br label %bb.u, !nosanitize !13

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ak = zext i32 %i.ag to i64                   ; 4 uses
  %i.al = sub nsw i64 0, %i.ak
  %i.am = getelementptr inbounds i8, ptr %i.ac, i64 %i.al
  %i.an = ptrtoint ptr %i.ac to i64, !nosanitize !13 ; 12 uses
  %i.ao = icmp ne ptr %i.ac, null, !nosanitize !13 ; 4 uses
  %i.ap = icmp eq i64 %i.an, %i.ak
  %i.aq = xor i1 %i.ao, %i.ap
  %i.ar = icmp ule i64 %i.ak, %i.an
  %i.as = and i1 %i.ar, %i.aq, !nosanitize !13
  br i1 %i.as, label %bb.w, label %bb.v, !prof !14, !nosanitize !13

bb.v:                                             ; preds = %bb.u
  %i.at = sub i64 %i.an, %i.ak
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @20, i64 %i.an, i64 %i.at) #9, !nosanitize !13
  br label %bb.w, !nosanitize !13

bb.w:                                             ; preds = %bb.v, %bb.u
  br i1 %i.d, label %bb.y, label %bb.x, !prof !14, !nosanitize !13

bb.x:                                             ; preds = %bb.w
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @21, i64 %i.b) #9, !nosanitize !13
  br label %bb.y, !nosanitize !13

bb.y:                                             ; preds = %bb.w, %bb.x
  %i.au = load i32, ptr %i.ad, align 8, !tbaa !40 ; 2 uses
  %i.av = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %i.au, i32 259), !nosanitize !13 ; 2 uses
  %i.aw = extractvalue { i32, i1 } %i.av, 0, !nosanitize !13
  %i.ax = extractvalue { i32, i1 } %i.av, 1, !nosanitize !13
  br i1 %i.ax, label %bb.z, label %bb.aa, !prof !17, !nosanitize !13

bb.z:                                             ; preds = %bb.y
  %i.ay = zext nneg i32 %i.au to i64, !nosanitize !13
  call void @__ubsan_handle_sub_overflow(ptr nonnull @22, i64 %i.ay, i64 259) #10, !nosanitize !13
  br label %bb.aa, !nosanitize !13

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.az = zext i32 %i.aw to i64                   ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.az ; 4 uses
  %i.bb = add i64 %i.az, %i.an, !nosanitize !13   ; 3 uses
  %i.bc = icmp eq i64 %i.bb, 0
  %i.bd = xor i1 %i.ao, %i.bc
  %i.be = icmp uge i64 %i.bb, %i.an, !nosanitize !13
  %i.bf = and i1 %i.be, %i.bd, !nosanitize !13
  br i1 %i.bf, label %bb.ac, label %bb.ab, !prof !14, !nosanitize !13

bb.ab:                                            ; preds = %bb.aa
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @23, i64 %i.an, i64 %i.bb) #9, !nosanitize !13
  br label %bb.ac, !nosanitize !13

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  br i1 %i.d, label %bb.ae, label %bb.ad, !prof !14, !nosanitize !13

bb.ad:                                            ; preds = %bb.ac
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @24, i64 %i.b) #9, !nosanitize !13
  br label %bb.ae, !nosanitize !13

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %i.bg = load i32, ptr %i.ad, align 8, !tbaa !40
  %i.bh = zext i32 %i.bg to i64                   ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.bh ; 8 uses
  %i.bj = add i64 %i.bh, %i.an, !nosanitize !13   ; 3 uses
  %i.bk = icmp eq i64 %i.bj, 0
  %i.bl = xor i1 %i.ao, %i.bk
  %i.bm = icmp uge i64 %i.bj, %i.an, !nosanitize !13
  %i.bn = and i1 %i.bm, %i.bl, !nosanitize !13
  br i1 %i.bn, label %bb.ag, label %bb.af, !prof !14, !nosanitize !13

bb.af:                                            ; preds = %bb.ae
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @25, i64 %i.an, i64 %i.bj) #9, !nosanitize !13
  br label %bb.ag, !nosanitize !13

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.bo = icmp ne ptr %i.j, null, !nosanitize !13
  %i.bp = ptrtoint ptr %i.j to i64, !nosanitize !13 ; 18 uses
  %i.bq = and i64 %i.bp, 63, !nosanitize !13
  %i.br = icmp eq i64 %i.bq, 0, !nosanitize !13
  %i.bs = and i1 %i.bo, %i.br, !nosanitize !13    ; 16 uses
  br i1 %i.bs, label %bb.ai, label %bb.ah, !prof !14, !nosanitize !13

bb.ah:                                            ; preds = %bb.ag
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @27, i64 %i.bp) #9, !nosanitize !13
  br label %bb.ai, !nosanitize !13

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.bt = getelementptr inbounds nuw i8, ptr %i.j, i64 64 ; 2 uses
  %i.bu = ptrtoint ptr %i.bt to i64, !nosanitize !13 ; 2 uses
  %i.bv = and i64 %i.bu, 63, !nosanitize !13
  %i.bw = icmp eq i64 %i.bv, 0, !nosanitize !13
  br i1 %i.bw, label %bb.ak, label %bb.aj, !prof !14, !nosanitize !13

bb.aj:                                            ; preds = %bb.ai
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @28, i64 %i.bu) #9, !nosanitize !13
  br label %bb.ak, !nosanitize !13

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.bx = load i32, ptr %i.bt, align 64, !tbaa !46 ; 4 uses
  br i1 %i.bs, label %bb.am, label %bb.al, !prof !14, !nosanitize !13

bb.al:                                            ; preds = %bb.ak
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @29, i64 %i.bp) #9, !nosanitize !13
  br label %bb.am, !nosanitize !13

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.by = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !47
  br i1 %i.bs, label %bb.ao, label %bb.an, !prof !14, !nosanitize !13

bb.an:                                            ; preds = %bb.am
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @30, i64 %i.bp) #9, !nosanitize !13
  br label %bb.ao, !nosanitize !13

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.ca = getelementptr inbounds nuw i8, ptr %i.j, i64 76
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !48 ; 5 uses
  br i1 %i.bs, label %bb.aq, label %bb.ap, !prof !14, !nosanitize !13

bb.ap:                                            ; preds = %bb.ao
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @31, i64 %i.bp) #9, !nosanitize !13
  br label %bb.aq, !nosanitize !13

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.cc = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  %i.cd = load ptr, ptr %i.cc, align 16, !tbaa !49 ; 10 uses
  br i1 %i.bs, label %bb.as, label %bb.ar, !prof !14, !nosanitize !13

bb.ar:                                            ; preds = %bb.aq
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @32, i64 %i.bp) #9, !nosanitize !13
  br label %bb.as, !nosanitize !13

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.ce = getelementptr inbounds nuw i8, ptr %i.j, i64 88 ; 3 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !50
  br i1 %i.bs, label %bb.au, label %bb.at, !prof !14, !nosanitize !13

bb.at:                                            ; preds = %bb.as
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @34, i64 %i.bp) #9, !nosanitize !13
  br label %bb.au, !nosanitize !13

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.cg = getelementptr inbounds nuw i8, ptr %i.j, i64 96 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 32, !tbaa !51
  br i1 %i.bs, label %bb.aw, label %bb.av, !prof !14, !nosanitize !13

bb.av:                                            ; preds = %bb.au
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @35, i64 %i.bp) #9, !nosanitize !13
  br label %bb.aw, !nosanitize !13

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.ci = getelementptr inbounds nuw i8, ptr %i.j, i64 104
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !52 ; 6 uses
  br i1 %i.bs, label %bb.ay, label %bb.ax, !prof !14, !nosanitize !13

bb.ax:                                            ; preds = %bb.aw
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @36, i64 %i.bp) #9, !nosanitize !13
  br label %bb.ay, !nosanitize !13

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.ck = getelementptr inbounds nuw i8, ptr %i.j, i64 112
  %i.cl = load ptr, ptr %i.ck, align 16, !tbaa !53 ; 4 uses
  br i1 %i.bs, label %bb.ba, label %bb.az, !prof !14, !nosanitize !13

bb.az:                                            ; preds = %bb.ay
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @37, i64 %i.bp) #9, !nosanitize !13
  br label %bb.ba, !nosanitize !13

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.cm = getelementptr inbounds nuw i8, ptr %i.j, i64 100
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !54 ; 3 uses
  %i.co = icmp ult i32 %i.cn, 32
  br i1 %i.co, label %bb.bc, label %bb.bb, !prof !14, !nosanitize !13

bb.bb:                                            ; preds = %bb.ba
  %i.cp = zext i32 %i.cn to i64, !nosanitize !13
  call void @__ubsan_handle_shift_out_of_bounds(ptr nonnull @38, i64 1, i64 %i.cp) #10, !nosanitize !13
  br label %bb.bc, !nosanitize !13

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %notmask = shl nsw i32 -1, %i.cn
  %i.cq = xor i32 %notmask, -1
  br i1 %i.bs, label %bb.be, label %bb.bd, !prof !14, !nosanitize !13

bb.bd:                                            ; preds = %bb.bc
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @39, i64 %i.bp) #9, !nosanitize !13
  br label %bb.be, !nosanitize !13

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.cr = getelementptr inbounds nuw i8, ptr %i.j, i64 120
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !55 ; 3 uses
  %i.ct = icmp ult i32 %i.cs, 32
  br i1 %i.ct, label %bb.bg, label %bb.bf, !prof !14, !nosanitize !13

bb.bf:                                            ; preds = %bb.be
  %i.cu = zext i32 %i.cs to i64, !nosanitize !13
  call void @__ubsan_handle_shift_out_of_bounds(ptr nonnull @40, i64 1, i64 %i.cu) #10, !nosanitize !13
  br label %bb.bg, !nosanitize !13

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %notmask256 = shl nsw i32 -1, %i.cs
  %i.cv = xor i32 %notmask256, -1
  %.not = icmp eq i32 %i.bx, 0
  %.not257 = icmp ult ptr %i.ac, %i.cd
  %or.cond = select i1 %.not, i1 true, i1 %.not257
  br i1 %or.cond, label %._crit_edge, label %bb.bh

._crit_edge:                                      ; preds = %bb.bg
  %.pre395 = ptrtoint ptr %i.cd to i64
  br label %bb.bo

bb.bh:                                            ; preds = %bb.bg
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ac, i64 260
  %i.cx = add i64 %i.an, 260, !nosanitize !13     ; 2 uses
  %i.cy = icmp ne i64 %i.cx, 0
  %i.cz = icmp ult ptr %i.ac, inttoptr (i64 -260 to ptr)
  %i.da = and i1 %i.cz, %i.cy
  %i.db = and i1 %i.ao, %i.da
  br i1 %i.db, label %bb.bj, label %bb.bi, !prof !14, !nosanitize !13

bb.bi:                                            ; preds = %bb.bh
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @41, i64 %i.an, i64 %i.cx) #9, !nosanitize !13
  br label %bb.bj, !nosanitize !13

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  br i1 %i.bs, label %bb.bl, label %bb.bk, !prof !14, !nosanitize !13

bb.bk:                                            ; preds = %bb.bj
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @42, i64 %i.bp) #9, !nosanitize !13
  br label %bb.bl, !nosanitize !13

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.dc = getelementptr inbounds nuw i8, ptr %i.j, i64 68
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !56
  %i.de = zext i32 %i.dd to i64                   ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.de
  %i.dg = ptrtoint ptr %i.cd to i64               ; 4 uses
  %i.dh = add i64 %i.de, %i.dg, !nosanitize !13   ; 3 uses
  %i.di = icmp ne ptr %i.cd, null, !nosanitize !13
  %i.dj = icmp eq i64 %i.dh, 0
  %i.dk = xor i1 %i.di, %i.dj
  %i.dl = icmp uge i64 %i.dh, %i.dg, !nosanitize !13
  %i.dm = and i1 %i.dl, %i.dk, !nosanitize !13
  br i1 %i.dm, label %bb.bn, label %bb.bm, !prof !14, !nosanitize !13

bb.bm:                                            ; preds = %bb.bl
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @43, i64 %i.dg, i64 %i.dh) #9, !nosanitize !13
  br label %bb.bn, !nosanitize !13

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.dn = icmp ule ptr %i.cw, %i.df
  br label %bb.bo

bb.bo:                                            ; preds = %._crit_edge, %bb.bn
  %.pre-phi396 = phi i64 [ %.pre395, %._crit_edge ], [ %i.dg, %bb.bn ] ; 9 uses
  %i.do = phi i1 [ false, %._crit_edge ], [ %i.dn, %bb.bn ] ; 3 uses
  %i.dp = zext nneg i32 %i.cq to i64              ; 3 uses
  %i.dq = ptrtoint ptr %i.cj to i64               ; 12 uses
  %i.dr = icmp ne ptr %i.cj, null                 ; 9 uses
  %i.ds = zext nneg i32 %i.cv to i64
  %i.dt = ptrtoint ptr %i.cl to i64               ; 6 uses
  %i.du = icmp ne ptr %i.cl, null                 ; 3 uses
  %i.dv = ptrtoint ptr %i.am to i64
  %i.dw = icmp eq i32 %i.cb, 0
  %i.dx = icmp ne ptr %i.cd, null                 ; 3 uses
  %i.dy = zext i32 %i.bx to i64                   ; 2 uses
  br label %bb.bp

bb.bp:                                            ; preds = %bb.iw, %bb.bo
  %.0227 = phi ptr [ %i.l, %bb.bo ], [ %.2229, %bb.iw ] ; 6 uses
  %.0222 = phi ptr [ %i.ac, %bb.bo ], [ %.3225, %bb.iw ] ; 6 uses
  %.0215 = phi i32 [ %i.ch, %bb.bo ], [ %.5220, %bb.iw ] ; 4 uses
  %.0212 = phi i64 [ %i.cf, %bb.bo ], [ %.5, %bb.iw ]
  %.not519 = icmp eq ptr %.0227, null, !nosanitize !13
  br i1 %.not519, label %bb.bq, label %zng_memread_8.exit.i, !prof !17, !nosanitize !13

bb.bq:                                            ; preds = %bb.bp
  %i.dz = ptrtoint ptr %.0227 to i64, !nosanitize !13 ; 2 uses
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @164, i64 %i.dz) #9, !nosanitize !13
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @166, i64 %i.dz) #9, !nosanitize !13
  br label %zng_memread_8.exit.i, !nosanitize !13

zng_memread_8.exit.i:                             ; preds = %bb.bq, %bb.bp
  %i.ea = load i64, ptr %.0227, align 1, !tbaa !15 ; 3 uses
  %i.eb = zext i32 %.0215 to i64                  ; 3 uses
  %i.ec = icmp ult i32 %.0215, 64
  %i.ed = sub nuw nsw i64 63, %i.eb
  %i.ee = lshr i64 %i.ea, %i.ed
  %i.ef = icmp ult i64 %i.ee, 2
  %i.eg = select i1 %i.ec, i1 %i.ef, i1 false
  br i1 %i.eg, label %load_64_bits.exit, label %bb.br, !prof !14, !nosanitize !13

bb.br:                                            ; preds = %zng_memread_8.exit.i
  call void @__ubsan_handle_shift_out_of_bounds(ptr nonnull @174, i64 %i.ea, i64 %i.eb) #10, !nosanitize !13
  br label %load_64_bits.exit, !nosanitize !13

load_64_bits.exit:                                ; preds = %zng_memread_8.exit.i, %bb.br
  %i.eh = shl i64 %i.ea, %i.eb
  %i.ei = or i64 %i.eh, %.0212                    ; 4 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.0227, i64 7 ; 2 uses
  %i.ek = ptrtoint ptr %.0227 to i64, !nosanitize !13 ; 2 uses
  %i.el = add i64 %i.ek, 7, !nosanitize !13       ; 2 uses
  %i.em = icmp ne i64 %i.el, 0
  %switch = icmp ult ptr %.0227, inttoptr (i64 -7 to ptr)
  %or.cond276 = and i1 %switch, %i.em
  br i1 %or.cond276, label %bb.bt, label %bb.bs, !prof !18

bb.bs:                                            ; preds = %load_64_bits.exit
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @44, i64 %i.ek, i64 %i.el) #9, !nosanitize !13
  br label %bb.bt, !nosanitize !13

bb.bt:                                            ; preds = %load_64_bits.exit, %bb.bs
  %i.en = lshr i32 %.0215, 3
  %i.eo = and i32 %i.en, 7
  %i.ep = zext nneg i32 %i.eo to i64              ; 3 uses
  %i.eq = sub nsw i64 0, %i.ep
  %i.er = getelementptr inbounds i8, ptr %i.ej, i64 %i.eq ; 8 uses
  %i.es = ptrtoint ptr %i.ej to i64, !nosanitize !13 ; 3 uses
  %i.et = icmp ult i64 %i.ep, %i.es
  br i1 %i.et, label %bb.bv, label %bb.bu, !prof !14, !nosanitize !13

bb.bu:                                            ; preds = %bb.bt
  %i.eu = sub nsw i64 %i.es, %i.ep
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @46, i64 %i.es, i64 %i.eu) #9, !nosanitize !13
  br label %bb.bv, !nosanitize !13

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.ev = or i32 %.0215, 56                       ; 3 uses
  %i.ew = and i64 %i.ei, %i.dp                    ; 2 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.ew ; 5 uses
  %i.ey = shl nuw nsw i64 %i.ew, 2
  %i.ez = add i64 %i.ey, %i.dq, !nosanitize !13   ; 3 uses
  %i.fa = icmp eq i64 %i.ez, 0
  %i.fb = xor i1 %i.dr, %i.fa
  %i.fc = icmp uge i64 %i.ez, %i.dq, !nosanitize !13
  %i.fd = and i1 %i.fc, %i.fb, !nosanitize !13
  br i1 %i.fd, label %bb.bx, label %bb.bw, !prof !14, !nosanitize !13

bb.bw:                                            ; preds = %bb.bv
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @47, i64 %i.dq, i64 %i.ez) #9, !nosanitize !13
  br label %bb.bx, !nosanitize !13

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %i.fe = ptrtoint ptr %i.ex to i64, !nosanitize !13 ; 6 uses
  %i.ff = and i64 %i.fe, 1, !nosanitize !13
  %i.fg = icmp eq i64 %i.ff, 0, !nosanitize !13   ; 5 uses
  %i.fh = and i1 %i.dr, %i.fg, !nosanitize !13
  br i1 %i.fh, label %bb.bz, label %bb.by, !prof !14, !nosanitize !13

bb.by:                                            ; preds = %bb.bx
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @49, i64 %i.fe) #9, !nosanitize !13
  br label %bb.bz, !nosanitize !13

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %i.fi = and i1 %i.dr, %i.fg, !nosanitize !13
  br i1 %i.fi, label %bb.cb, label %bb.ca, !prof !14, !nosanitize !13

bb.ca:                                            ; preds = %bb.bz
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @51, i64 %i.fe) #9, !nosanitize !13
  br label %bb.cb, !nosanitize !13

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %i.fj = load i8, ptr %i.ex, align 2, !tbaa !59
  %i.fk = icmp eq i8 %i.fj, 0
  br i1 %i.fk, label %bb.cc, label %bb.dl

bb.cc:                                            ; preds = %bb.cb
  br i1 %i.fg, label %bb.ce, label %bb.cd, !prof !14, !nosanitize !13

bb.cd:                                            ; preds = %bb.cc
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @52, i64 %i.fe) #9, !nosanitize !13
  br label %bb.ce, !nosanitize !13

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ex, i64 2
  %i.fm = load i16, ptr %i.fl, align 2, !tbaa !60
  %i.fn = trunc i16 %i.fm to i8
  %i.fo = getelementptr inbounds nuw i8, ptr %.0222, i64 1 ; 4 uses
  %i.fp = ptrtoint ptr %.0222 to i64, !nosanitize !13 ; 3 uses
  %i.fq = add i64 %i.fp, 1, !nosanitize !13       ; 2 uses
  %i.fr = icmp ne ptr %.0222, null, !nosanitize !13 ; 2 uses
  %i.fs = icmp ne i64 %i.fq, 0
  %i.ft = and i1 %i.fr, %i.fs, !nosanitize !13
  br i1 %i.ft, label %bb.cg, label %bb.cf, !prof !14, !nosanitize !13

bb.cf:                                            ; preds = %bb.ce
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @54, i64 %i.fp, i64 %i.fq) #9, !nosanitize !13
  br label %bb.cg, !nosanitize !13

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  br i1 %i.fr, label %bb.ci, label %bb.ch, !prof !14, !nosanitize !13

bb.ch:                                            ; preds = %bb.cg
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @56, i64 %i.fp) #9, !nosanitize !13
  br label %bb.ci, !nosanitize !13

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  store i8 %i.fn, ptr %.0222, align 1, !tbaa !15
  br i1 %i.fg, label %bb.ck, label %bb.cj, !prof !14, !nosanitize !13

bb.cj:                                            ; preds = %bb.ci
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @57, i64 %i.fe) #9, !nosanitize !13
  br label %bb.ck, !nosanitize !13

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ex, i64 1 ; 2 uses
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !61  ; 2 uses
  %i.fw = zext i8 %i.fv to i64                    ; 2 uses
  %i.fx = icmp ult i8 %i.fv, 64
  br i1 %i.fx, label %bb.cm, label %bb.cl, !prof !14, !nosanitize !13

bb.cl:                                            ; preds = %bb.ck
  call void @__ubsan_handle_shift_out_of_bounds(ptr nonnull @58, i64 %i.ei, i64 %i.fw) #9, !nosanitize !13
  br label %bb.cm, !nosanitize !13

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %i.fy = lshr i64 %i.ei, %i.fw                   ; 4 uses
  br i1 %i.fg, label %bb.co, label %bb.cn, !prof !14, !nosanitize !13

bb.cn:                                            ; preds = %bb.cm
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @59, i64 %i.fe) #9, !nosanitize !13
  br label %bb.co, !nosanitize !13

bb.co:                                            ; preds = %bb.cm, %bb.cn
  %i.fz = load i8, ptr %i.fu, align 1, !tbaa !61  ; 2 uses
  %i.ga = zext i8 %i.fz to i32
  %i.gb = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %i.ev, i32 %i.ga), !nosanitize !13 ; 2 uses
  %i.gc = extractvalue { i32, i1 } %i.gb, 0, !nosanitize !13 ; 3 uses
  %i.gd = extractvalue { i32, i1 } %i.gb, 1, !nosanitize !13
  br i1 %i.gd, label %bb.cp, label %bb.cq, !prof !17, !nosanitize !13

bb.cp:                                            ; preds = %bb.co
  %i.ge = zext i32 %i.ev to i64, !nosanitize !13
  %i.gf = zext i8 %i.fz to i64
  call void @__ubsan_handle_sub_overflow(ptr nonnull @60, i64 %i.ge, i64 %i.gf) #10, !nosanitize !13
  br label %bb.cq, !nosanitize !13

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %i.gg = and i64 %i.fy, %i.dp                    ; 2 uses
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.gg ; 5 uses
  %i.gi = shl nuw nsw i64 %i.gg, 2
  %i.gj = add i64 %i.gi, %i.dq, !nosanitize !13   ; 3 uses
  %i.gk = icmp eq i64 %i.gj, 0
  %i.gl = xor i1 %i.dr, %i.gk
  %i.gm = icmp uge i64 %i.gj, %i.dq, !nosanitize !13
  %i.gn = and i1 %i.gm, %i.gl, !nosanitize !13
  br i1 %i.gn, label %bb.cs, label %bb.cr, !prof !14, !nosanitize !13

bb.cr:                                            ; preds = %bb.cq
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @61, i64 %i.dq, i64 %i.gj) #9, !nosanitize !13
  br label %bb.cs, !nosanitize !13

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %i.go = ptrtoint ptr %i.gh to i64, !nosanitize !13 ; 6 uses
  %i.gp = and i64 %i.go, 1, !nosanitize !13
  %i.gq = icmp eq i64 %i.gp, 0, !nosanitize !13   ; 5 uses
  %i.gr = and i1 %i.dr, %i.gq, !nosanitize !13
  br i1 %i.gr, label %bb.cu, label %bb.ct, !prof !14, !nosanitize !13

bb.ct:                                            ; preds = %bb.cs
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @62, i64 %i.go) #9, !nosanitize !13
  br label %bb.cu, !nosanitize !13

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %i.gs = and i1 %i.dr, %i.gq, !nosanitize !13
  br i1 %i.gs, label %bb.cw, label %bb.cv, !prof !14, !nosanitize !13

bb.cv:                                            ; preds = %bb.cu
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @63, i64 %i.go) #9, !nosanitize !13
  br label %bb.cw, !nosanitize !13

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %i.gt = load i8, ptr %i.gh, align 2, !tbaa !59
  %i.gu = icmp eq i8 %i.gt, 0
  br i1 %i.gu, label %bb.cx, label %bb.dl

bb.cx:                                            ; preds = %bb.cw
  br i1 %i.gq, label %bb.cz, label %bb.cy, !prof !14, !nosanitize !13

bb.cy:                                            ; preds = %bb.cx
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @64, i64 %i.go) #9, !nosanitize !13
  br label %bb.cz, !nosanitize !13

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gh, i64 2
  %i.gw = load i16, ptr %i.gv, align 2, !tbaa !60
  %i.gx = trunc i16 %i.gw to i8
  %i.gy = getelementptr inbounds nuw i8, ptr %.0222, i64 2 ; 2 uses
  %.not259 = icmp eq ptr %i.fo, inttoptr (i64 -1 to ptr)
  br i1 %.not259, label %bb.da, label %bb.db, !prof !17, !nosanitize !13

bb.da:                                            ; preds = %bb.cz
  %i.gz = ptrtoint ptr %i.fo to i64, !nosanitize !13 ; 2 uses
  %i.ha = add i64 %i.gz, 1, !nosanitize !13
end_hunk_0
begin_hunk_1_@inflate_fast_sse2:bb.a
  %i.ht = icmp uge i64 %i.hq, %i.dq, !nosanitize !13
  %i.hu = and i1 %i.ht, %i.hs, !nosanitize !13
  br i1 %i.hu, label %bb.dl, label %bb.dk, !prof !14, !nosanitize !13

bb.dk:                                            ; preds = %bb.dj
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @70, i64 %i.dq, i64 %i.hq) #9, !nosanitize !13
  br label %bb.dl, !nosanitize !13

bb.dl:                                            ; preds = %bb.dj, %bb.dk, %bb.cw, %bb.cb
  %.1223 = phi ptr [ %.0222, %bb.cb ], [ %i.fo, %bb.cw ], [ %i.gy, %bb.dk ], [ %i.gy, %bb.dj ] ; 22 uses
  %.1216 = phi i32 [ %i.ev, %bb.cb ], [ %i.gc, %bb.cw ], [ %i.hj, %bb.dk ], [ %i.hj, %bb.dj ]
  %.1213 = phi i64 [ %i.ei, %bb.cb ], [ %i.fy, %bb.cw ], [ %i.hf, %bb.dk ], [ %i.hf, %bb.dj ]
  %.0211 = phi ptr [ %i.ex, %bb.cb ], [ %i.gh, %bb.cw ], [ %i.ho, %bb.dk ], [ %i.ho, %bb.dj ]
  br label %bb.dm

bb.dm:                                            ; preds = %.backedge525, %bb.dl
  %.2217 = phi i32 [ %.1216, %bb.dl ], [ %i.ii, %.backedge525 ] ; 2 uses
  %.2214 = phi i64 [ %.1213, %bb.dl ], [ %i.ie, %.backedge525 ] ; 2 uses
  %.1 = phi ptr [ %.0211, %bb.dl ], [ %i.sh, %.backedge525 ] ; 7 uses
  %i.hv = icmp ne ptr %.1, null, !nosanitize !13  ; 2 uses
  %i.hw = ptrtoint ptr %.1 to i64, !nosanitize !13 ; 8 uses
  %i.hx = and i64 %i.hw, 1, !nosanitize !13
  %i.hy = icmp eq i64 %i.hx, 0, !nosanitize !13   ; 5 uses
  %i.hz = and i1 %i.hv, %i.hy, !nosanitize !13    ; 3 uses
  br i1 %i.hz, label %bb.do, label %bb.dn, !prof !14, !nosanitize !13

bb.dn:                                            ; preds = %bb.dm
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @71, i64 %i.hw) #9, !nosanitize !13
  br label %bb.do, !nosanitize !13

bb.do:                                            ; preds = %bb.dn, %bb.dm
  %i.ia = getelementptr inbounds nuw i8, ptr %.1, i64 1 ; 2 uses
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !61  ; 2 uses
  %i.ic = zext i8 %i.ib to i64                    ; 2 uses
  %i.id = icmp ult i8 %i.ib, 64
  br i1 %i.id, label %bb.dq, label %bb.dp, !prof !14, !nosanitize !13

bb.dp:                                            ; preds = %bb.do
  call void @__ubsan_handle_shift_out_of_bounds(ptr nonnull @72, i64 %.2214, i64 %i.ic) #9, !nosanitize !13
  br label %bb.dq, !nosanitize !13

bb.dq:                                            ; preds = %bb.dp, %bb.do
  %i.ie = lshr i64 %.2214, %i.ic                  ; 7 uses
  br i1 %i.hz, label %bb.ds, label %bb.dr, !prof !14, !nosanitize !13

bb.dr:                                            ; preds = %bb.dq
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @73, i64 %i.hw) #9, !nosanitize !13
  br label %bb.ds, !nosanitize !13

bb.ds:                                            ; preds = %bb.dq, %bb.dr
  %i.if = load i8, ptr %i.ia, align 1, !tbaa !61  ; 2 uses
  %i.ig = zext i8 %i.if to i32
  %i.ih = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %.2217, i32 %i.ig), !nosanitize !13 ; 2 uses
  %i.ii = extractvalue { i32, i1 } %i.ih, 0, !nosanitize !13 ; 6 uses
  %i.ij = extractvalue { i32, i1 } %i.ih, 1, !nosanitize !13
  br i1 %i.ij, label %bb.dt, label %bb.du, !prof !17, !nosanitize !13

bb.dt:                                            ; preds = %bb.ds
  %i.ik = zext i32 %.2217 to i64, !nosanitize !13
  %i.il = zext i8 %i.if to i64
  call void @__ubsan_handle_sub_overflow(ptr nonnull @74, i64 %i.ik, i64 %i.il) #10, !nosanitize !13
  br label %bb.du, !nosanitize !13

bb.du:                                            ; preds = %bb.dt, %bb.ds
  br i1 %i.hz, label %bb.dw, label %bb.dv, !prof !14, !nosanitize !13

bb.dv:                                            ; preds = %bb.du
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @75, i64 %i.hw) #9, !nosanitize !13
  br label %bb.dw, !nosanitize !13

bb.dw:                                            ; preds = %bb.dv, %bb.du
  %i.im = and i1 %i.hv, %i.hy, !nosanitize !13
  br i1 %i.im, label %bb.dy, label %bb.dx, !prof !14, !nosanitize !13

bb.dx:                                            ; preds = %bb.dw
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @76, i64 %i.hw) #9, !nosanitize !13
  br label %bb.dy, !nosanitize !13

bb.dy:                                            ; preds = %bb.dx, %bb.dw
  %i.in = load i8, ptr %.1, align 2, !tbaa !59    ; 4 uses
  %i.io = zext i8 %i.in to i32                    ; 5 uses
  %i.ip = icmp eq i8 %i.in, 0
  br i1 %i.ip, label %bb.dz, label %bb.ei

bb.dz:                                            ; preds = %bb.dy
  br i1 %i.hy, label %bb.eb, label %bb.ea, !prof !14, !nosanitize !13

bb.ea:                                            ; preds = %bb.dz
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @77, i64 %i.hw) #9, !nosanitize !13
  br label %bb.eb, !nosanitize !13

bb.eb:                                            ; preds = %bb.ea, %bb.dz
  %i.iq = getelementptr inbounds nuw i8, ptr %.1, i64 2 ; 2 uses
  %i.ir = ptrtoint ptr %i.iq to i64, !nosanitize !13 ; 2 uses
  %i.is = and i64 %i.ir, 1, !nosanitize !13
  %i.it = icmp eq i64 %i.is, 0, !nosanitize !13
  br i1 %i.it, label %bb.ed, label %bb.ec, !prof !14, !nosanitize !13

bb.ec:                                            ; preds = %bb.eb
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @78, i64 %i.ir) #9, !nosanitize !13
  br label %bb.ed, !nosanitize !13

bb.ed:                                            ; preds = %bb.ec, %bb.eb
  %i.iu = load i16, ptr %i.iq, align 2, !tbaa !60
  %i.iv = trunc i16 %i.iu to i8
  %i.iw = getelementptr inbounds nuw i8, ptr %.1223, i64 1
  %i.ix = ptrtoint ptr %.1223 to i64, !nosanitize !13 ; 3 uses
  %i.iy = add i64 %i.ix, 1, !nosanitize !13       ; 2 uses
  %i.iz = icmp ne ptr %.1223, null, !nosanitize !13 ; 2 uses
  %i.ja = icmp ne i64 %i.iy, 0
  %i.jb = and i1 %i.iz, %i.ja, !nosanitize !13
  br i1 %i.jb, label %bb.ef, label %bb.ee, !prof !14, !nosanitize !13

bb.ee:                                            ; preds = %bb.ed
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @79, i64 %i.ix, i64 %i.iy) #9, !nosanitize !13
  br label %bb.ef, !nosanitize !13

bb.ef:                                            ; preds = %bb.ee, %bb.ed
  br i1 %i.iz, label %bb.eh, label %bb.eg, !prof !14, !nosanitize !13

bb.eg:                                            ; preds = %bb.ef
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @80, i64 %i.ix) #9, !nosanitize !13
  br label %bb.eh, !nosanitize !13

bb.eh:                                            ; preds = %bb.eg, %bb.ef
  store i8 %i.iv, ptr %.1223, align 1, !tbaa !15
  br label %bb.iw

bb.ei:                                            ; preds = %bb.dy
  %i.jc = and i32 %i.io, 16
  %.not263 = icmp eq i32 %i.jc, 0
  br i1 %.not263, label %bb.ie, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  br i1 %i.hy, label %bb.el, label %bb.ek, !prof !14, !nosanitize !13

bb.ek:                                            ; preds = %bb.ej
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @81, i64 %i.hw) #9, !nosanitize !13
  br label %bb.el, !nosanitize !13

bb.el:                                            ; preds = %bb.ek, %bb.ej
  %i.jd = getelementptr inbounds nuw i8, ptr %.1, i64 2 ; 2 uses
  %i.je = ptrtoint ptr %i.jd to i64, !nosanitize !13 ; 2 uses
  %i.jf = and i64 %i.je, 1, !nosanitize !13
  %i.jg = icmp eq i64 %i.jf, 0, !nosanitize !13
  br i1 %i.jg, label %bb.en, label %bb.em, !prof !14, !nosanitize !13

bb.em:                                            ; preds = %bb.el
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @82, i64 %i.je) #9, !nosanitize !13
  br label %bb.en, !nosanitize !13

bb.en:                                            ; preds = %bb.em, %bb.el
  %i.jh = load i16, ptr %i.jd, align 2, !tbaa !60
  %i.ji = zext i16 %i.jh to i32
  %i.jj = and i32 %i.io, 15                       ; 3 uses
  %notmask266 = shl nsw i32 -1, %i.jj
  %i.jk = xor i32 %notmask266, -1
  %i.jl = trunc i64 %i.ie to i32
  %i.jm = and i32 %i.jk, %i.jl
  %i.jn = add nuw nsw i32 %i.jm, %i.ji            ; 11 uses
  %i.jo = zext nneg i32 %i.jj to i64              ; 2 uses
  %i.jp = lshr i64 %i.ie, %i.jo                   ; 3 uses
  %i.jq = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %i.ii, i32 %i.jj), !nosanitize !13 ; 2 uses
  %i.jr = extractvalue { i32, i1 } %i.jq, 0, !nosanitize !13 ; 5 uses
  %i.js = extractvalue { i32, i1 } %i.jq, 1, !nosanitize !13
  br i1 %i.js, label %bb.eo, label %bb.ep, !prof !17, !nosanitize !13

bb.eo:                                            ; preds = %bb.en
  %i.jt = zext i32 %i.ii to i64, !nosanitize !13
  call void @__ubsan_handle_sub_overflow(ptr nonnull @83, i64 %i.jt, i64 %i.jo) #10, !nosanitize !13
  br label %bb.ep, !nosanitize !13

bb.ep:                                            ; preds = %bb.eo, %bb.en
  %i.ju = and i64 %i.jp, %i.ds                    ; 2 uses
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.ju
  %i.jw = shl nuw nsw i64 %i.ju, 2
  %i.jx = add i64 %i.jw, %i.dt, !nosanitize !13   ; 3 uses
  %i.jy = icmp eq i64 %i.jx, 0
  %i.jz = xor i1 %i.du, %i.jy
  %i.ka = icmp uge i64 %i.jx, %i.dt, !nosanitize !13
  %i.kb = and i1 %i.ka, %i.jz, !nosanitize !13
  br i1 %i.kb, label %bb.er, label %bb.eq, !prof !14, !nosanitize !13

bb.eq:                                            ; preds = %bb.ep
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @84, i64 %i.dt, i64 %i.jx) #9, !nosanitize !13
  br label %bb.er, !nosanitize !13

bb.er:                                            ; preds = %bb.eq, %bb.ep
  %i.kc = icmp ult i32 %i.jr, 28
  br i1 %i.kc, label %zng_memread_8.exit.i277, label %bb.ex

zng_memread_8.exit.i277:                          ; preds = %bb.er
  %i.kd = load i64, ptr %i.er, align 1, !tbaa !15 ; 3 uses
  %i.ke = zext nneg i32 %i.jr to i64              ; 3 uses
  %i.kf = sub nuw nsw i64 63, %i.ke
  %i.kg = lshr i64 %i.kd, %i.kf
  %i.kh = icmp samesign ult i64 %i.kg, 2
  br i1 %i.kh, label %load_64_bits.exit278, label %bb.es, !prof !14, !nosanitize !13

bb.es:                                            ; preds = %zng_memread_8.exit.i277
  call void @__ubsan_handle_shift_out_of_bounds(ptr nonnull @174, i64 %i.kd, i64 %i.ke) #10, !nosanitize !13
  br label %load_64_bits.exit278, !nosanitize !13

load_64_bits.exit278:                             ; preds = %zng_memread_8.exit.i277, %bb.es
  %i.ki = shl i64 %i.kd, %i.ke
  %i.kj = or i64 %i.ki, %i.jp
  %i.kk = getelementptr inbounds nuw i8, ptr %i.er, i64 7 ; 2 uses
  %.not267 = icmp ugt ptr %i.er, inttoptr (i64 -8 to ptr)
  br i1 %.not267, label %bb.et, label %bb.eu, !prof !17, !nosanitize !13

bb.et:                                            ; preds = %load_64_bits.exit278
  %i.kl = ptrtoint ptr %i.er to i64, !nosanitize !13 ; 2 uses
  %i.km = add i64 %i.kl, 7, !nosanitize !13
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @85, i64 %i.kl, i64 %i.km) #9, !nosanitize !13
  br label %bb.eu, !nosanitize !13

bb.eu:                                            ; preds = %bb.et, %load_64_bits.exit278
  %i.kn = lshr i32 %i.jr, 3
  %i.ko = zext nneg i32 %i.kn to i64              ; 3 uses
  %i.kp = sub nsw i64 0, %i.ko
  %i.kq = getelementptr inbounds i8, ptr %i.kk, i64 %i.kp
  %i.kr = ptrtoint ptr %i.kk to i64, !nosanitize !13 ; 3 uses
  %i.ks = icmp ult i64 %i.ko, %i.kr
  br i1 %i.ks, label %bb.ew, label %bb.ev, !prof !14, !nosanitize !13

bb.ev:                                            ; preds = %bb.eu
  %i.kt = sub nsw i64 %i.kr, %i.ko
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @86, i64 %i.kr, i64 %i.kt) #9, !nosanitize !13
  br label %bb.ew, !nosanitize !13

bb.ew:                                            ; preds = %bb.ev, %bb.eu
  %i.ku = or i32 %i.jr, 56
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.er
  %.1228 = phi ptr [ %i.kq, %bb.ew ], [ %i.er, %bb.er ] ; 9 uses
  %.3218 = phi i32 [ %i.ku, %bb.ew ], [ %i.jr, %bb.er ]
  %.3 = phi i64 [ %i.kj, %bb.ew ], [ %i.jp, %bb.er ]
  br label %bb.ey

bb.ey:                                            ; preds = %.backedge, %bb.ex
  %.4219 = phi i32 [ %.3218, %bb.ex ], [ %i.li, %.backedge ] ; 2 uses
  %.4 = phi i64 [ %.3, %bb.ex ], [ %i.le, %.backedge ] ; 2 uses
  %.2 = phi ptr [ %i.jv, %bb.ex ], [ %i.rg, %.backedge ] ; 6 uses
  %i.kv = icmp ne ptr %.2, null, !nosanitize !13  ; 2 uses
  %i.kw = ptrtoint ptr %.2 to i64, !nosanitize !13 ; 7 uses
  %i.kx = and i64 %i.kw, 1, !nosanitize !13
  %i.ky = icmp eq i64 %i.kx, 0, !nosanitize !13   ; 4 uses
  %i.kz = and i1 %i.kv, %i.ky, !nosanitize !13    ; 3 uses
  br i1 %i.kz, label %bb.fa, label %bb.ez, !prof !14, !nosanitize !13

bb.ez:                                            ; preds = %bb.ey
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @87, i64 %i.kw) #9, !nosanitize !13
  br label %bb.fa, !nosanitize !13

bb.fa:                                            ; preds = %bb.ez, %bb.ey
  %i.la = getelementptr inbounds nuw i8, ptr %.2, i64 1 ; 2 uses
  %i.lb = load i8, ptr %i.la, align 1, !tbaa !61  ; 2 uses
  %i.lc = zext i8 %i.lb to i64                    ; 2 uses
  %i.ld = icmp ult i8 %i.lb, 64
  br i1 %i.ld, label %bb.fc, label %bb.fb, !prof !14, !nosanitize !13

bb.fb:                                            ; preds = %bb.fa
  call void @__ubsan_handle_shift_out_of_bounds(ptr nonnull @88, i64 %.4, i64 %i.lc) #9, !nosanitize !13
  br label %bb.fc, !nosanitize !13

bb.fc:                                            ; preds = %bb.fb, %bb.fa
  %i.le = lshr i64 %.4, %i.lc                     ; 5 uses
  br i1 %i.kz, label %bb.fe, label %bb.fd, !prof !14, !nosanitize !13

bb.fd:                                            ; preds = %bb.fc
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @89, i64 %i.kw) #9, !nosanitize !13
  br label %bb.fe, !nosanitize !13

bb.fe:                                            ; preds = %bb.fc, %bb.fd
  %i.lf = load i8, ptr %i.la, align 1, !tbaa !61  ; 2 uses
  %i.lg = zext i8 %i.lf to i32
  %i.lh = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %.4219, i32 %i.lg), !nosanitize !13 ; 2 uses
  %i.li = extractvalue { i32, i1 } %i.lh, 0, !nosanitize !13 ; 4 uses
  %i.lj = extractvalue { i32, i1 } %i.lh, 1, !nosanitize !13
  br i1 %i.lj, label %bb.ff, label %bb.fg, !prof !17, !nosanitize !13

bb.ff:                                            ; preds = %bb.fe
  %i.lk = zext i32 %.4219 to i64, !nosanitize !13
  %i.ll = zext i8 %i.lf to i64
  call void @__ubsan_handle_sub_overflow(ptr nonnull @90, i64 %i.lk, i64 %i.ll) #10, !nosanitize !13
  br label %bb.fg, !nosanitize !13

bb.fg:                                            ; preds = %bb.ff, %bb.fe
  br i1 %i.kz, label %bb.fi, label %bb.fh, !prof !14, !nosanitize !13

bb.fh:                                            ; preds = %bb.fg
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @91, i64 %i.kw) #9, !nosanitize !13
  br label %bb.fi, !nosanitize !13

bb.fi:                                            ; preds = %bb.fh, %bb.fg
  %i.lm = and i1 %i.kv, %i.ky, !nosanitize !13
  br i1 %i.lm, label %bb.fk, label %bb.fj, !prof !14, !nosanitize !13

bb.fj:                                            ; preds = %bb.fi
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @92, i64 %i.kw) #9, !nosanitize !13
  br label %bb.fk, !nosanitize !13

bb.fk:                                            ; preds = %bb.fj, %bb.fi
  %i.ln = load i8, ptr %.2, align 2, !tbaa !59    ; 3 uses
  %i.lo = zext i8 %i.ln to i32                    ; 4 uses
  %i.lp = and i32 %i.lo, 16
  %.not269 = icmp eq i32 %i.lp, 0
  br i1 %.not269, label %bb.hq, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  br i1 %i.ky, label %bb.fn, label %bb.fm, !prof !14, !nosanitize !13

bb.fm:                                            ; preds = %bb.fl
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @93, i64 %i.kw) #9, !nosanitize !13
  br label %bb.fn, !nosanitize !13

bb.fn:                                            ; preds = %bb.fm, %bb.fl
  %i.lq = getelementptr inbounds nuw i8, ptr %.2, i64 2 ; 2 uses
  %i.lr = ptrtoint ptr %i.lq to i64, !nosanitize !13 ; 2 uses
  %i.ls = and i64 %i.lr, 1, !nosanitize !13
  %i.lt = icmp eq i64 %i.ls, 0, !nosanitize !13
  br i1 %i.lt, label %bb.fp, label %bb.fo, !prof !14, !nosanitize !13

bb.fo:                                            ; preds = %bb.fn
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @94, i64 %i.lr) #9, !nosanitize !13
  br label %bb.fp, !nosanitize !13

bb.fp:                                            ; preds = %bb.fo, %bb.fn
  %i.lu = load i16, ptr %i.lq, align 2, !tbaa !60
  %i.lv = zext i16 %i.lu to i32
  %i.lw = and i32 %i.lo, 15                       ; 3 uses
  %notmask271 = shl nsw i32 -1, %i.lw
  %i.lx = xor i32 %notmask271, -1
  %i.ly = trunc i64 %i.le to i32
  %i.lz = and i32 %i.lx, %i.ly
  %i.ma = add nuw nsw i32 %i.lz, %i.lv            ; 10 uses
  %i.mb = zext nneg i32 %i.lw to i64              ; 2 uses
  %i.mc = lshr i64 %i.le, %i.mb                   ; 8 uses
  %i.md = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %i.li, i32 %i.lw), !nosanitize !13 ; 2 uses
  %i.me = extractvalue { i32, i1 } %i.md, 0, !nosanitize !13 ; 8 uses
  %i.mf = extractvalue { i32, i1 } %i.md, 1, !nosanitize !13
  br i1 %i.mf, label %bb.fq, label %bb.fr, !prof !17, !nosanitize !13

bb.fq:                                            ; preds = %bb.fp
  %i.mg = zext i32 %i.li to i64, !nosanitize !13
  call void @__ubsan_handle_sub_overflow(ptr nonnull @95, i64 %i.mg, i64 %i.mb) #10, !nosanitize !13
  br label %bb.fr, !nosanitize !13

bb.fr:                                            ; preds = %bb.fq, %bb.fp
  %i.mh = ptrtoint ptr %.1223 to i64              ; 11 uses
  %i.mi = sub i64 %i.mh, %i.dv
  %i.mj = trunc i64 %i.mi to i32                  ; 2 uses
  %i.mk = icmp ugt i32 %i.ma, %i.mj
  br i1 %i.mk, label %bb.fs, label %bb.hf

bb.fs:                                            ; preds = %bb.fr
  %i.ml = sub nuw nsw i32 %i.ma, %i.mj            ; 10 uses
  %i.mm = icmp ugt i32 %i.ml, %i.bz
  br i1 %i.mm, label %bb.ft, label %bb.fy

bb.ft:                                            ; preds = %bb.fs
  br i1 %i.bs, label %bb.fv, label %bb.fu, !prof !14, !nosanitize !13

bb.fu:                                            ; preds = %bb.ft
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @96, i64 %i.bp) #9, !nosanitize !13
  br label %bb.fv, !nosanitize !13

bb.fv:                                            ; preds = %bb.fu, %bb.ft
  %i.mn = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i32 16209, ptr %i.mn, align 8, !tbaa !62
  br i1 %i.d, label %bb.fx, label %bb.fw, !prof !14, !nosanitize !13

bb.fw:                                            ; preds = %bb.fv
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @97, i64 %i.b) #9, !nosanitize !13
  br label %bb.fx, !nosanitize !13

bb.fx:                                            ; preds = %bb.fw, %bb.fv
  %i.mo = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @.str, ptr %i.mo, align 8, !tbaa !63
  br label %.loopexit

bb.fy:                                            ; preds = %bb.fs
  br i1 %i.dw, label %bb.fz, label %bb.gd

bb.fz:                                            ; preds = %bb.fy
  %i.mp = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %i.bx, i32 %i.ml), !nosanitize !13 ; 2 uses
  %i.mq = extractvalue { i32, i1 } %i.mp, 0, !nosanitize !13
  %i.mr = extractvalue { i32, i1 } %i.mp, 1, !nosanitize !13
  br i1 %i.mr, label %bb.ga, label %bb.gb, !prof !17, !nosanitize !13

bb.ga:                                            ; preds = %bb.fz
  %i.ms = zext nneg i32 %i.ml to i64, !nosanitize !13
  call void @__ubsan_handle_sub_overflow(ptr nonnull @98, i64 %i.dy, i64 %i.ms) #10, !nosanitize !13
  br label %bb.gb, !nosanitize !13

bb.gb:                                            ; preds = %bb.ga, %bb.fz
  %i.mt = zext i32 %i.mq to i64                   ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.mt ; 2 uses
  %i.mv = add i64 %.pre-phi396, %i.mt, !nosanitize !13 ; 3 uses
  %i.mw = icmp eq i64 %i.mv, 0
  %i.mx = xor i1 %i.dx, %i.mw
  %i.my = icmp uge i64 %i.mv, %.pre-phi396, !nosanitize !13
  %i.mz = and i1 %i.my, %i.mx, !nosanitize !13
  br i1 %i.mz, label %bb.gm, label %bb.gc, !prof !14, !nosanitize !13

bb.gc:                                            ; preds = %bb.gb
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @99, i64 %.pre-phi396, i64 %i.mv) #9, !nosanitize !13
  br label %bb.gm, !nosanitize !13

bb.gd:                                            ; preds = %bb.fy
  %.not273 = icmp ult i32 %i.cb, %i.ml
  br i1 %.not273, label %bb.gg, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.na = sub nuw i32 %i.cb, %i.ml
  %i.nb = zext i32 %i.na to i64                   ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.nb ; 2 uses
  %i.nd = add i64 %.pre-phi396, %i.nb, !nosanitize !13 ; 3 uses
  %i.ne = icmp eq i64 %i.nd, 0
  %i.nf = xor i1 %i.dx, %i.ne
  %i.ng = icmp uge i64 %i.nd, %.pre-phi396, !nosanitize !13
  %i.nh = and i1 %i.ng, %i.nf, !nosanitize !13
  br i1 %i.nh, label %bb.gm, label %bb.gf, !prof !14, !nosanitize !13

bb.gf:                                            ; preds = %bb.ge
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @100, i64 %.pre-phi396, i64 %i.nd) #9, !nosanitize !13
  br label %bb.gm, !nosanitize !13

bb.gg:                                            ; preds = %bb.gd
  %i.ni = sub nuw nsw i32 %i.ml, %i.cb            ; 6 uses
  %i.nj = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %i.bx, i32 %i.ni), !nosanitize !13 ; 2 uses
  %i.nk = extractvalue { i32, i1 } %i.nj, 0, !nosanitize !13
  %i.nl = extractvalue { i32, i1 } %i.nj, 1, !nosanitize !13
  br i1 %i.nl, label %bb.gh, label %bb.gi, !prof !17, !nosanitize !13

bb.gh:                                            ; preds = %bb.gg
  %i.nm = zext nneg i32 %i.ni to i64, !nosanitize !13
  call void @__ubsan_handle_sub_overflow(ptr nonnull @101, i64 %i.dy, i64 %i.nm) #10, !nosanitize !13
  br label %bb.gi, !nosanitize !13

bb.gi:                                            ; preds = %bb.gh, %bb.gg
  %i.nn = zext i32 %i.nk to i64                   ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.nn ; 2 uses
  %i.np = add i64 %.pre-phi396, %i.nn, !nosanitize !13 ; 3 uses
  %i.nq = icmp eq i64 %i.np, 0
  %i.nr = xor i1 %i.dx, %i.nq
  %i.ns = icmp uge i64 %i.np, %.pre-phi396, !nosanitize !13
  %i.nt = and i1 %i.ns, %i.nr, !nosanitize !13
  br i1 %i.nt, label %bb.gk, label %bb.gj, !prof !14, !nosanitize !13

bb.gj:                                            ; preds = %bb.gi
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @102, i64 %.pre-phi396, i64 %i.np) #9, !nosanitize !13
  br label %bb.gk, !nosanitize !13

bb.gk:                                            ; preds = %bb.gj, %bb.gi
  %i.nu = icmp samesign ult i32 %i.ni, %i.jn
  br i1 %i.nu, label %bb.gl, label %bb.gm

bb.gl:                                            ; preds = %bb.gk
  %i.nv = sub nuw nsw i32 %i.jn, %i.ni
  %i.nw = zext nneg i32 %i.ni to i64
  %i.nx = call fastcc ptr @CHUNKCOPY_SAFE(ptr noundef %.1223, ptr noundef %i.no, i64 noundef %i.nw, ptr noundef %i.bi)
  br label %bb.gm

bb.gm:                                            ; preds = %bb.ge, %bb.gf, %bb.gb, %bb.gc, %bb.gl, %bb.gk
  %.0389 = phi i32 [ %i.jn, %bb.gb ], [ %i.jn, %bb.gc ], [ %i.nv, %bb.gl ], [ %i.jn, %bb.gk ], [ %i.jn, %bb.ge ], [ %i.jn, %bb.gf ] ; 3 uses
  %.2224 = phi ptr [ %.1223, %bb.gb ], [ %.1223, %bb.gc ], [ %i.nx, %bb.gl ], [ %.1223, %bb.gk ], [ %.1223, %bb.ge ], [ %.1223, %bb.gf ] ; 4 uses
  %.0210 = phi i32 [ %i.ml, %bb.gb ], [ %i.ml, %bb.gc ], [ %i.cb, %bb.gl ], [ %i.ni, %bb.gk ], [ %i.ml, %bb.ge ], [ %i.ml, %bb.gf ] ; 3 uses
  %.0 = phi ptr [ %i.mu, %bb.gb ], [ %i.mu, %bb.gc ], [ %i.cd, %bb.gl ], [ %i.no, %bb.gk ], [ %i.nc, %bb.ge ], [ %i.nc, %bb.gf ] ; 4 uses
  %i.ny = icmp ult i32 %.0210, %.0389
  br i1 %i.ny, label %bb.gn, label %bb.hc

bb.gn:                                            ; preds = %bb.gm
  %i.nz = sub nuw nsw i32 %.0389, %.0210          ; 4 uses
  %i.oa = zext nneg i32 %.0210 to i64             ; 2 uses
  %i.ob = zext nneg i32 %i.ma to i64              ; 6 uses
  %i.oc = sub nsw i64 0, %i.ob                    ; 3 uses
  br i1 %i.do, label %bb.gz, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.od = call fastcc ptr @CHUNKCOPY_SAFE(ptr noundef %.2224, ptr noundef %.0, i64 noundef %i.oa, ptr noundef %i.bi) ; 5 uses
  %i.oe = getelementptr inbounds i8, ptr %i.od, i64 %i.oc ; 2 uses
  %i.of = ptrtoint ptr %i.od to i64, !nosanitize !13 ; 4 uses
  %.not520 = icmp eq ptr %i.od, null
  %i.og = icmp ugt i64 %i.of, %i.ob
  br i1 %i.og, label %bb.gq, label %bb.gp, !prof !14, !nosanitize !13

bb.gp:                                            ; preds = %bb.go
  %i.oh = sub nsw i64 %i.of, %i.ob
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @182, i64 %i.of, i64 %i.oh) #9, !nosanitize !13
  br label %bb.gq, !nosanitize !13

bb.gq:                                            ; preds = %bb.gp, %bb.go
  %i.oi = ptrtoint ptr %i.oe to i64               ; 2 uses
  %i.oj = icmp ult i32 %i.ma, %i.nz
  %i.ok = icmp samesign ult i32 %i.ma, 16
  %or.cond281327 = and i1 %i.oj, %i.ok
  br i1 %or.cond281327, label %.lr.ph, label %chunkunroll_sse2.exit

.lr.ph:                                           ; preds = %bb.gq, %bb.gw
  %.0.i328 = phi ptr [ %i.op, %bb.gw ], [ %i.od, %bb.gq ] ; 4 uses
  %i.ol = phi i32 [ %i.ov, %bb.gw ], [ %i.ma, %bb.gq ] ; 3 uses
  %i.om = phi i32 [ %i.os, %bb.gw ], [ %i.nz, %bb.gq ] ; 2 uses
  br i1 %.not520, label %bb.gr, label %loadchunk.exit.thread.i, !prof !17, !nosanitize !13

bb.gr:                                            ; preds = %.lr.ph
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @186, i64 %i.oi) #9, !nosanitize !13
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @188, i64 %i.oi) #9, !nosanitize !13
  br label %loadchunk.exit.thread.i, !nosanitize !13

loadchunk.exit.thread.i:                          ; preds = %bb.gr, %.lr.ph
  %i.on = load <2 x i64>, ptr %i.oe, align 1, !tbaa !15
  %.not521 = icmp eq ptr %.0.i328, null, !nosanitize !13
  %.pre397 = ptrtoint ptr %.0.i328 to i64, !nosanitize !13 ; 5 uses
  br i1 %.not521, label %bb.gs, label %storechunk.exit.i, !prof !17, !nosanitize !13

bb.gs:                                            ; preds = %loadchunk.exit.thread.i
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @171, i64 %.pre397) #9, !nosanitize !13
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @173, i64 %.pre397) #9, !nosanitize !13
  br label %storechunk.exit.i, !nosanitize !13

storechunk.exit.i:                                ; preds = %loadchunk.exit.thread.i, %bb.gs
  store <2 x i64> %i.on, ptr %.0.i328, align 1, !tbaa !15
  %i.oo = zext nneg i32 %i.ol to i64              ; 3 uses
  %i.op = getelementptr inbounds nuw i8, ptr %.0.i328, i64 %i.oo ; 3 uses
  %i.oq = add i64 %.pre397, %i.oo, !nosanitize !13 ; 2 uses
  %.not.i = icmp ult i64 %i.oq, %.pre397, !nosanitize !13
  br i1 %.not.i, label %bb.gt, label %bb.gu, !prof !17, !nosanitize !13

bb.gt:                                            ; preds = %storechunk.exit.i
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @183, i64 %.pre397, i64 %i.oq) #9, !nosanitize !13
  br label %bb.gu, !nosanitize !13

bb.gu:                                            ; preds = %storechunk.exit.i, %bb.gt
  %i.or = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %i.om, i32 %i.ol), !nosanitize !13 ; 2 uses
  %i.os = extractvalue { i32, i1 } %i.or, 0, !nosanitize !13 ; 3 uses
  %i.ot = extractvalue { i32, i1 } %i.or, 1, !nosanitize !13
  br i1 %i.ot, label %bb.gv, label %bb.gw, !prof !17, !nosanitize !13

bb.gv:                                            ; preds = %bb.gu
  %i.ou = zext i32 %i.om to i64, !nosanitize !13
  call void @__ubsan_handle_sub_overflow(ptr nonnull @184, i64 %i.ou, i64 %i.oo) #10, !nosanitize !13
  br label %bb.gw, !nosanitize !13

bb.gw:                                            ; preds = %bb.gu, %bb.gv
  %i.ov = shl i32 %i.ol, 1                        ; 4 uses
  %i.ow = icmp ult i32 %i.ov, %i.os
  %i.ox = icmp ult i32 %i.ov, 16
  %or.cond281 = and i1 %i.ow, %i.ox
  br i1 %or.cond281, label %.lr.ph, label %chunkunroll_sse2.exit.loopexit, !llvm.loop !28

chunkunroll_sse2.exit.loopexit:                   ; preds = %bb.gw
  %.pre = zext nneg i32 %i.ov to i64              ; 2 uses
  %.pre391 = sub nsw i64 0, %.pre
  %.pre393 = ptrtoint ptr %i.op to i64, !nosanitize !13
  br label %chunkunroll_sse2.exit

chunkunroll_sse2.exit:                            ; preds = %chunkunroll_sse2.exit.loopexit, %bb.gq
  %.pre-phi394 = phi i64 [ %.pre393, %chunkunroll_sse2.exit.loopexit ], [ %i.of, %bb.gq ] ; 4 uses
  %.pre-phi392 = phi i64 [ %.pre391, %chunkunroll_sse2.exit.loopexit ], [ %i.oc, %bb.gq ]
  %.pre-phi390 = phi i64 [ %.pre, %chunkunroll_sse2.exit.loopexit ], [ %i.ob, %bb.gq ] ; 3 uses
  %.lcssa326 = phi i32 [ %i.os, %chunkunroll_sse2.exit.loopexit ], [ %i.nz, %bb.gq ]
  %.0.i.lcssa = phi ptr [ %i.op, %chunkunroll_sse2.exit.loopexit ], [ %i.od, %bb.gq ] ; 3 uses
  %i.oy = getelementptr inbounds i8, ptr %.0.i.lcssa, i64 %.pre-phi392
  %i.oz = icmp ne ptr %.0.i.lcssa, null, !nosanitize !13
  %i.pa = icmp eq i64 %.pre-phi394, %.pre-phi390
  %i.pb = xor i1 %i.oz, %i.pa
  %i.pc = icmp ule i64 %.pre-phi390, %.pre-phi394
  %i.pd = and i1 %i.pc, %i.pb, !nosanitize !13
  br i1 %i.pd, label %bb.gy, label %bb.gx, !prof !14, !nosanitize !13

bb.gx:                                            ; preds = %chunkunroll_sse2.exit
  %i.pe = sub i64 %.pre-phi394, %.pre-phi390
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @103, i64 %.pre-phi394, i64 %i.pe) #9, !nosanitize !13
  br label %bb.gy, !nosanitize !13

bb.gy:                                            ; preds = %bb.gx, %chunkunroll_sse2.exit
  %i.pf = zext i32 %.lcssa326 to i64
  %i.pg = call fastcc ptr @CHUNKCOPY_SAFE(ptr noundef %.0.i.lcssa, ptr noundef %i.oy, i64 noundef %i.pf, ptr noundef %i.bi)
  br label %bb.iw

bb.gz:                                            ; preds = %bb.gn
  %i.ph = call fastcc ptr @chunkcopy_safe(ptr noundef %.2224, ptr noundef %.0, i64 noundef %i.oa, ptr noundef %i.bi) ; 3 uses
  %i.pi = getelementptr inbounds i8, ptr %i.ph, i64 %i.oc
  %i.pj = ptrtoint ptr %i.ph to i64, !nosanitize !13 ; 3 uses
  %i.pk = icmp ugt i64 %i.pj, %i.ob
  br i1 %i.pk, label %bb.hb, label %bb.ha, !prof !14, !nosanitize !13

bb.ha:                                            ; preds = %bb.gz
  %i.pl = sub nsw i64 %i.pj, %i.ob
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @104, i64 %i.pj, i64 %i.pl) #9, !nosanitize !13
  br label %bb.hb, !nosanitize !13

bb.hb:                                            ; preds = %bb.ha, %bb.gz
  %i.pm = zext nneg i32 %i.nz to i64
  %i.pn = call fastcc ptr @chunkcopy_safe(ptr noundef %i.ph, ptr noundef nonnull %i.pi, i64 noundef %i.pm, ptr noundef %i.bi)
  br label %bb.iw

bb.hc:                                            ; preds = %bb.gm
  %i.po = zext nneg i32 %.0389 to i64             ; 2 uses
  br i1 %i.do, label %bb.hd, label %bb.he

bb.hd:                                            ; preds = %bb.hc
  %i.pp = call fastcc ptr @chunkcopy_safe(ptr noundef %.2224, ptr noundef %.0, i64 noundef %i.po, ptr noundef %i.bi)
  br label %bb.iw

bb.he:                                            ; preds = %bb.hc
  %i.pq = call fastcc ptr @CHUNKCOPY_SAFE(ptr noundef %.2224, ptr noundef %.0, i64 noundef %i.po, ptr noundef %i.bi)
  br label %bb.iw

bb.hf:                                            ; preds = %bb.fr
  br i1 %i.do, label %bb.hg, label %bb.hj

bb.hg:                                            ; preds = %bb.hf
  %i.pr = zext nneg i32 %i.ma to i64              ; 4 uses
  %i.ps = sub nsw i64 0, %i.pr
  %i.pt = getelementptr inbounds i8, ptr %.1223, i64 %i.ps
  %i.pu = icmp ne ptr %.1223, null, !nosanitize !13
  %i.pv = icmp eq i64 %i.mh, %i.pr
  %i.pw = xor i1 %i.pu, %i.pv
  %i.px = icmp ule i64 %i.pr, %i.mh
  %i.py = and i1 %i.px, %i.pw, !nosanitize !13
  br i1 %i.py, label %bb.hi, label %bb.hh, !prof !14, !nosanitize !13

bb.hh:                                            ; preds = %bb.hg
  %i.pz = sub i64 %i.mh, %i.pr
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @105, i64 %i.mh, i64 %i.pz) #9, !nosanitize !13
  br label %bb.hi, !nosanitize !13

bb.hi:                                            ; preds = %bb.hh, %bb.hg
  %i.qa = zext nneg i32 %i.jn to i64
  %i.qb = call fastcc ptr @chunkcopy_safe(ptr noundef %.1223, ptr noundef %i.pt, i64 noundef %i.qa, ptr noundef %i.bi)
  br label %bb.iw

bb.hj:                                            ; preds = %bb.hf
  %.not272 = icmp samesign uge i32 %i.ma, %i.jn
  %i.qc = icmp samesign ugt i32 %i.ma, 15
  %or.cond279 = or i1 %i.qc, %.not272
  %i.qd = zext nneg i32 %i.ma to i64              ; 5 uses
  %i.qe = sub nsw i64 0, %i.qd
  %i.qf = getelementptr inbounds i8, ptr %.1223, i64 %i.qe ; 2 uses
  %i.qg = icmp ne ptr %.1223, null, !nosanitize !13
  %i.qh = icmp eq i64 %i.mh, %i.qd
  %i.qi = xor i1 %i.qg, %i.qh
  %i.qj = icmp ule i64 %i.qd, %i.mh
  %i.qk = and i1 %i.qj, %i.qi, !nosanitize !13    ; 2 uses
  br i1 %or.cond279, label %bb.hk, label %bb.hn

bb.hk:                                            ; preds = %bb.hj
  br i1 %i.qk, label %bb.hm, label %bb.hl, !prof !14, !nosanitize !13

bb.hl:                                            ; preds = %bb.hk
  %i.ql = sub i64 %i.mh, %i.qd
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @106, i64 %i.mh, i64 %i.ql) #9, !nosanitize !13
  br label %bb.hm, !nosanitize !13

bb.hm:                                            ; preds = %bb.hl, %bb.hk
  %i.qm = call fastcc ptr @chunkcopy_sse2(ptr noundef %.1223, ptr noundef %i.qf, i32 noundef %i.jn)
  br label %bb.iw

bb.hn:                                            ; preds = %bb.hj
  br i1 %i.qk, label %bb.hp, label %bb.ho, !prof !14, !nosanitize !13

bb.ho:                                            ; preds = %bb.hn
  %i.qn = sub i64 %i.mh, %i.qd
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @107, i64 %i.mh, i64 %i.qn) #9, !nosanitize !13
  br label %bb.hp, !nosanitize !13

bb.hp:                                            ; preds = %bb.ho, %bb.hn
  %i.qo = call fastcc ptr @chunkmemset_sse2(ptr noundef %.1223, ptr noundef %i.qf, i32 noundef %i.jn)
  br label %bb.iw

bb.hq:                                            ; preds = %bb.fk
  %i.qp = and i32 %i.lo, 64
  %i.qq = icmp eq i32 %i.qp, 0
  br i1 %i.qq, label %bb.hr, label %bb.hz

bb.hr:                                            ; preds = %bb.hq
  br i1 %i.ky, label %bb.ht, label %bb.hs, !prof !14, !nosanitize !13

bb.hs:                                            ; preds = %bb.hr
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @108, i64 %i.kw) #9, !nosanitize !13
  br label %bb.ht, !nosanitize !13

bb.ht:                                            ; preds = %bb.hs, %bb.hr
  %i.qr = getelementptr inbounds nuw i8, ptr %.2, i64 2
  %i.qs = load i16, ptr %i.qr, align 2, !tbaa !60
  %i.qt = zext i16 %i.qs to i64                   ; 2 uses
  %i.qu = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.qt ; 2 uses
  %i.qv = shl nuw nsw i64 %i.qt, 2
  %i.qw = add i64 %i.qv, %i.dt, !nosanitize !13   ; 3 uses
  %i.qx = icmp eq i64 %i.qw, 0
  %i.qy = xor i1 %i.du, %i.qx
  %i.qz = icmp uge i64 %i.qw, %i.dt, !nosanitize !13
  %i.ra = and i1 %i.qz, %i.qy, !nosanitize !13
  br i1 %i.ra, label %bb.hv, label %bb.hu, !prof !14, !nosanitize !13

bb.hu:                                            ; preds = %bb.ht
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @109, i64 %i.dt, i64 %i.qw) #9, !nosanitize !13
  br label %bb.hv, !nosanitize !13

bb.hv:                                            ; preds = %bb.hu, %bb.ht
  %i.rb = icmp ult i8 %i.ln, 32
  br i1 %i.rb, label %bb.hx, label %bb.hw, !prof !14, !nosanitize !13

bb.hw:                                            ; preds = %bb.hv
  %i.rc = zext i8 %i.ln to i64
  call void @__ubsan_handle_shift_out_of_bounds(ptr nonnull @110, i64 1, i64 %i.rc) #10, !nosanitize !13
  br label %bb.hx, !nosanitize !13

bb.hx:                                            ; preds = %bb.hw, %bb.hv
  %notmask270 = shl nsw i32 -1, %i.lo
  %i.rd = xor i32 %notmask270, -1
  %i.re = zext nneg i32 %i.rd to i64
  %i.rf = and i64 %i.le, %i.re                    ; 2 uses
  %i.rg = getelementptr inbounds nuw [4 x i8], ptr %i.qu, i64 %i.rf
  %i.rh = shl nuw nsw i64 %i.rf, 2
  %i.ri = ptrtoint ptr %i.qu to i64, !nosanitize !13 ; 3 uses
  %i.rj = add i64 %i.rh, %i.ri, !nosanitize !13   ; 3 uses
  %i.rk = icmp eq i64 %i.rj, 0
  %i.rl = xor i1 %i.du, %i.rk
  %i.rm = icmp uge i64 %i.rj, %i.ri, !nosanitize !13
  %i.rn = and i1 %i.rm, %i.rl, !nosanitize !13
  br i1 %i.rn, label %.backedge, label %bb.hy, !prof !14, !nosanitize !13

bb.hy:                                            ; preds = %bb.hx
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @111, i64 %i.ri, i64 %i.rj) #9, !nosanitize !13
  br label %.backedge, !nosanitize !13

.backedge:                                        ; preds = %bb.hy, %bb.hx
  br label %bb.ey

bb.hz:                                            ; preds = %bb.hq
  br i1 %i.bs, label %bb.ib, label %bb.ia, !prof !14, !nosanitize !13

bb.ia:                                            ; preds = %bb.hz
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @112, i64 %i.bp) #9, !nosanitize !13
  br label %bb.ib, !nosanitize !13

bb.ib:                                            ; preds = %bb.ia, %bb.hz
  %i.ro = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i32 16209, ptr %i.ro, align 8, !tbaa !62
end_hunk_1
begin_hunk_2_@inflate_fast_sse2:bb.a
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @120, i64 %i.b) #9, !nosanitize !13
  br label %bb.iv, !nosanitize !13

bb.iv:                                            ; preds = %bb.iu, %bb.it
  %i.ss = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @.str.3, ptr %i.ss, align 8, !tbaa !63
  br label %.loopexit

bb.iw:                                            ; preds = %bb.eh, %bb.hi, %bb.hp, %bb.hm, %bb.hb, %bb.gy, %bb.he, %bb.hd
  %.2229 = phi ptr [ %i.er, %bb.eh ], [ %.1228, %bb.hb ], [ %.1228, %bb.gy ], [ %.1228, %bb.hd ], [ %.1228, %bb.he ], [ %.1228, %bb.hi ], [ %.1228, %bb.hm ], [ %.1228, %bb.hp ] ; 3 uses
  %.3225 = phi ptr [ %i.iw, %bb.eh ], [ %i.pn, %bb.hb ], [ %i.pg, %bb.gy ], [ %i.pp, %bb.hd ], [ %i.pq, %bb.he ], [ %i.qb, %bb.hi ], [ %i.qm, %bb.hm ], [ %i.qo, %bb.hp ] ; 3 uses
  %.5220 = phi i32 [ %i.ii, %bb.eh ], [ %i.me, %bb.hb ], [ %i.me, %bb.gy ], [ %i.me, %bb.hd ], [ %i.me, %bb.he ], [ %i.me, %bb.hi ], [ %i.me, %bb.hm ], [ %i.me, %bb.hp ] ; 2 uses
  %.5 = phi i64 [ %i.ie, %bb.eh ], [ %i.mc, %bb.hb ], [ %i.mc, %bb.gy ], [ %i.mc, %bb.hd ], [ %i.mc, %bb.he ], [ %i.mc, %bb.hi ], [ %i.mc, %bb.hm ], [ %i.mc, %bb.hp ] ; 2 uses
  %i.st = icmp ult ptr %.2229, %i.t
  %i.su = icmp ult ptr %.3225, %i.ba
  %i.sv = select i1 %i.st, i1 %i.su, i1 false
  br i1 %i.sv, label %bb.bp, label %.loopexit, !llvm.loop !29

.loopexit:                                        ; preds = %bb.iw, %bb.iv, %bb.iq, %bb.id, %bb.fx
  %.3230 = phi ptr [ %i.er, %bb.iv ], [ %.1228, %bb.fx ], [ %.1228, %bb.id ], [ %i.er, %bb.iq ], [ %.2229, %bb.iw ] ; 2 uses
  %.4226 = phi ptr [ %.1223, %bb.iv ], [ %.1223, %bb.fx ], [ %.1223, %bb.id ], [ %.1223, %bb.iq ], [ %.3225, %bb.iw ] ; 4 uses
  %.6221 = phi i32 [ %i.ii, %bb.iv ], [ %i.me, %bb.fx ], [ %i.li, %bb.id ], [ %i.ii, %bb.iq ], [ %.5220, %bb.iw ] ; 4 uses
  %.6 = phi i64 [ %i.ie, %bb.iv ], [ %i.mc, %bb.fx ], [ %i.le, %bb.id ], [ %i.ie, %bb.iq ], [ %.5, %bb.iw ]
  %i.sw = lshr i32 %.6221, 3
  %i.sx = zext nneg i32 %i.sw to i64              ; 3 uses
  %i.sy = sub nsw i64 0, %i.sx
  %i.sz = getelementptr inbounds i8, ptr %.3230, i64 %i.sy ; 5 uses
  %i.ta = ptrtoint ptr %.3230 to i64, !nosanitize !13 ; 3 uses
  %i.tb = icmp ult i64 %i.sx, %i.ta
  br i1 %i.tb, label %bb.iy, label %bb.ix, !prof !14, !nosanitize !13

bb.ix:                                            ; preds = %.loopexit
  %i.tc = sub nsw i64 %i.ta, %i.sx
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @121, i64 %i.ta, i64 %i.tc) #9, !nosanitize !13
  br label %bb.iy, !nosanitize !13

bb.iy:                                            ; preds = %.loopexit, %bb.ix
  %i.td = and i32 %.6221, -8                      ; 2 uses
  %i.te = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %.6221, i32 %i.td), !nosanitize !13 ; 2 uses
  %i.tf = extractvalue { i32, i1 } %i.te, 0, !nosanitize !13 ; 3 uses
  %i.tg = extractvalue { i32, i1 } %i.te, 1, !nosanitize !13
  br i1 %i.tg, label %bb.iz, label %bb.ja, !prof !17, !nosanitize !13

bb.iz:                                            ; preds = %bb.iy
  %i.th = zext i32 %.6221 to i64, !nosanitize !13
  %i.ti = zext i32 %i.td to i64, !nosanitize !13
  call void @__ubsan_handle_sub_overflow(ptr nonnull @122, i64 %i.th, i64 %i.ti) #10, !nosanitize !13
  br label %bb.ja, !nosanitize !13

bb.ja:                                            ; preds = %bb.iz, %bb.iy
  %i.tj = zext i32 %i.tf to i64                   ; 2 uses
  %i.tk = icmp ult i32 %i.tf, 64
  br i1 %i.tk, label %bb.jc, label %bb.jb, !prof !14, !nosanitize !13

bb.jb:                                            ; preds = %bb.ja
  call void @__ubsan_handle_shift_out_of_bounds(ptr nonnull @124, i64 1, i64 %i.tj) #10, !nosanitize !13
  br label %bb.jc, !nosanitize !13

bb.jc:                                            ; preds = %bb.jb, %bb.ja
  %notmask274 = shl nsw i64 -1, %i.tj
  %i.tl = xor i64 %notmask274, -1
  br i1 %i.d, label %.critedge522, label %.critedge, !prof !14, !nosanitize !13

.critedge:                                        ; preds = %bb.jc
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @125, i64 %i.b) #9, !nosanitize !13
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @126, i64 %i.b) #9, !nosanitize !13
  store ptr %i.sz, ptr %0, align 8, !tbaa !37
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @127, i64 %i.b) #9, !nosanitize !13
  br label %bb.jd, !nosanitize !13

.critedge522:                                     ; preds = %bb.jc
  store ptr %i.sz, ptr %0, align 8, !tbaa !37
  br label %bb.jd

bb.jd:                                            ; preds = %.critedge, %.critedge522
  store ptr %.4226, ptr %i.ab, align 8, !tbaa !39
  %i.tm = icmp ult ptr %i.sz, %i.t
  br i1 %i.tm, label %bb.je, label %bb.jg

bb.je:                                            ; preds = %bb.jd
  %i.tn = ptrtoint ptr %i.t to i64
  %i.to = ptrtoint ptr %i.sz to i64
  %i.tp = sub i64 %i.tn, %i.to                    ; 2 uses
  %i.tq = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.tp, i64 14), !nosanitize !13 ; 3 uses
  %i.tr = extractvalue { i64, i1 } %i.tq, 1, !nosanitize !13
  br i1 %i.tr, label %bb.jf, label %bb.ji, !prof !17, !nosanitize !13

bb.jf:                                            ; preds = %bb.je
  call void @__ubsan_handle_add_overflow(ptr nonnull @129, i64 14, i64 %i.tp) #9, !nosanitize !13
  br label %bb.ji, !nosanitize !13

bb.jg:                                            ; preds = %bb.jd
  %i.ts = ptrtoint ptr %i.sz to i64
  %i.tt = ptrtoint ptr %i.t to i64
  %i.tu = sub i64 %i.ts, %i.tt                    ; 2 uses
  %i.tv = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 14, i64 %i.tu), !nosanitize !13 ; 3 uses
  %i.tw = extractvalue { i64, i1 } %i.tv, 1, !nosanitize !13
  br i1 %i.tw, label %bb.jh, label %bb.ji, !prof !17, !nosanitize !13

bb.jh:                                            ; preds = %bb.jg
  call void @__ubsan_handle_sub_overflow(ptr nonnull @130, i64 14, i64 %i.tu) #9, !nosanitize !13
  br label %bb.ji, !nosanitize !13

bb.ji:                                            ; preds = %bb.jg, %bb.jh, %bb.je, %bb.jf
  %.pn = phi { i64, i1 } [ %i.tq, %bb.je ], [ %i.tq, %bb.jf ], [ %i.tv, %bb.jh ], [ %i.tv, %bb.jg ]
  %i.tx = extractvalue { i64, i1 } %.pn, 0
  %i.ty = trunc i64 %i.tx to i32
  br i1 %i.d, label %bb.jk, label %bb.jj, !prof !14, !nosanitize !13

bb.jj:                                            ; preds = %bb.ji
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @131, i64 %i.b) #9, !nosanitize !13
  br label %bb.jk, !nosanitize !13

bb.jk:                                            ; preds = %bb.ji, %bb.jj
  store i32 %i.ty, ptr %i.m, align 8, !tbaa !38
  %i.tz = icmp ult ptr %.4226, %i.ba
  br i1 %i.tz, label %bb.jl, label %bb.jn

bb.jl:                                            ; preds = %bb.jk
  %i.ua = ptrtoint ptr %i.ba to i64
  %i.ub = ptrtoint ptr %.4226 to i64
  %i.uc = sub i64 %i.ua, %i.ub                    ; 2 uses
  %i.ud = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.uc, i64 259), !nosanitize !13 ; 3 uses
  %i.ue = extractvalue { i64, i1 } %i.ud, 1, !nosanitize !13
  br i1 %i.ue, label %bb.jm, label %bb.jp, !prof !17, !nosanitize !13

bb.jm:                                            ; preds = %bb.jl
  call void @__ubsan_handle_add_overflow(ptr nonnull @132, i64 259, i64 %i.uc) #9, !nosanitize !13
  br label %bb.jp, !nosanitize !13

bb.jn:                                            ; preds = %bb.jk
  %i.uf = ptrtoint ptr %.4226 to i64
  %i.ug = ptrtoint ptr %i.ba to i64
  %i.uh = sub i64 %i.uf, %i.ug                    ; 2 uses
  %i.ui = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 259, i64 %i.uh), !nosanitize !13 ; 3 uses
  %i.uj = extractvalue { i64, i1 } %i.ui, 1, !nosanitize !13
  br i1 %i.uj, label %bb.jo, label %bb.jp, !prof !17, !nosanitize !13

bb.jo:                                            ; preds = %bb.jn
  call void @__ubsan_handle_sub_overflow(ptr nonnull @133, i64 259, i64 %i.uh) #9, !nosanitize !13
  br label %bb.jp, !nosanitize !13

bb.jp:                                            ; preds = %bb.jn, %bb.jo, %bb.jl, %bb.jm
  %.pn275 = phi { i64, i1 } [ %i.ud, %bb.jl ], [ %i.ud, %bb.jm ], [ %i.ui, %bb.jo ], [ %i.ui, %bb.jn ]
  %i.uk = extractvalue { i64, i1 } %.pn275, 0
  %i.ul = trunc i64 %i.uk to i32
  br i1 %i.d, label %bb.jr, label %bb.jq, !prof !14, !nosanitize !13

bb.jq:                                            ; preds = %bb.jp
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @134, i64 %i.b) #9, !nosanitize !13
  br label %bb.jr, !nosanitize !13

bb.jr:                                            ; preds = %bb.jp, %bb.jq
  store i32 %i.ul, ptr %i.ad, align 8, !tbaa !40
  %i.um = and i64 %.6, 4294967295
  %i.un = and i64 %i.um, %i.tl                    ; 2 uses
  br i1 %i.bs, label %.critedge524, label %bb.js, !prof !14, !nosanitize !13

bb.js:                                            ; preds = %bb.jr
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @135, i64 %i.bp) #9, !nosanitize !13
  store i64 %i.un, ptr %i.ce, align 8, !tbaa !50
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @136, i64 %i.bp) #9, !nosanitize !13
  br label %bb.jt, !nosanitize !13

.critedge524:                                     ; preds = %bb.jr
  store i64 %i.un, ptr %i.ce, align 8, !tbaa !50
  br label %bb.jt

bb.jt:                                            ; preds = %bb.js, %.critedge524
  store i32 %i.tf, ptr %i.cg, align 32, !tbaa !51
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: uwtable
declare void @__ubsan_handle_shift_out_of_bounds(ptr, i64, i64) local_unnamed_addr #2

; Function Attrs: uwtable
declare void @__ubsan_handle_add_overflow(ptr, i64, i64) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @CHUNKCOPY_SAFE(ptr noundef %0, ptr noundef %1, i64 noundef range(i64 0, 4294967296) %2, ptr noundef %3) unnamed_addr #6 !func_sanitize !19 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  %i.b = ptrtoint ptr %0 to i64                   ; 4 uses
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %2 ; 2 uses
  %i.d = add i64 %2, %i.b, !nosanitize !13        ; 3 uses
  %i.e = icmp ne ptr %0, null, !nosanitize !13
  %i.f = icmp eq i64 %i.d, 0
  %i.g = xor i1 %i.e, %i.f
  %i.h = icmp uge i64 %i.d, %i.b, !nosanitize !13
  %i.i = and i1 %i.h, %i.g, !nosanitize !13
  br i1 %i.i, label %bb.p, label %bb.c, !prof !14, !nosanitize !13

bb.c:                                             ; preds = %bb.b
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @175, i64 %i.b, i64 %i.d) #9, !nosanitize !13
  br label %bb.p, !nosanitize !13

bb.d:                                             ; preds = %bb.a
  %i.j = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.k = sub i64 %i.j, %i.b                       ; 2 uses
  %i.l = call i64 @llvm.umin.i64(i64 %2, i64 %i.k) ; 2 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.j, %i.m                       ; 4 uses
  %i.o = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 0, i64 %i.n), !nosanitize !13 ; 2 uses
  %i.p = extractvalue { i64, i1 } %i.o, 0, !nosanitize !13
  %i.q = extractvalue { i64, i1 } %i.o, 1, !nosanitize !13
  br i1 %i.q, label %bb.e, label %bb.f, !prof !17, !nosanitize !13

bb.e:                                             ; preds = %bb.d
  call void @__ubsan_handle_negate_overflow(ptr nonnull @176, i64 %i.n) #9, !nosanitize !13
  br label %bb.f, !nosanitize !13

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.r = icmp slt i64 %i.n, 0, !nosanitize !13
  %i.s = select i1 %i.r, i64 %i.p, i64 %i.n, !nosanitize !13
  %i.t = icmp ult i64 %i.s, 16
  %i.u = icmp ult i64 %i.k, 16
  %i.v = or i1 %i.u, %i.t
  br i1 %i.v, label %.preheader, label %bb.o, !prof !12

.preheader:                                       ; preds = %bb.f
  %i.w = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.l, i64 1), !nosanitize !13 ; 2 uses
  %i.x = extractvalue { i64, i1 } %i.w, 1, !nosanitize !13
  br i1 %i.x, label %.thread, label %.lr.ph, !prof !20, !nosanitize !13

.thread:                                          ; preds = %bb.n, %.preheader
  %.023.lcssa = phi ptr [ %0, %.preheader ], [ %i.ag, %bb.n ]
  call void @__ubsan_handle_sub_overflow(ptr nonnull @177, i64 0, i64 1) #10, !nosanitize !13
  br label %bb.p

.lr.ph:                                           ; preds = %.preheader, %bb.n
  %.pn = phi { i64, i1 } [ %i.am, %bb.n ], [ %i.w, %.preheader ]
  %.02229 = phi ptr [ %i.z, %bb.n ], [ %1, %.preheader ] ; 4 uses
  %.02328 = phi ptr [ %i.ag, %bb.n ], [ %0, %.preheader ] ; 4 uses
  %i.y = extractvalue { i64, i1 } %.pn, 0
  %i.z = getelementptr inbounds nuw i8, ptr %.02229, i64 1
  %i.aa = ptrtoint ptr %.02229 to i64, !nosanitize !13 ; 3 uses
  %i.ab = add i64 %i.aa, 1, !nosanitize !13       ; 2 uses
  %i.ac = icmp ne ptr %.02229, null, !nosanitize !13 ; 2 uses
  %i.ad = icmp ne i64 %i.ab, 0
  %i.ae = and i1 %i.ac, %i.ad, !nosanitize !13
  br i1 %i.ae, label %bb.h, label %bb.g, !prof !14, !nosanitize !13

bb.g:                                             ; preds = %.lr.ph
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @178, i64 %i.aa, i64 %i.ab) #9, !nosanitize !13
  br label %bb.h, !nosanitize !13

bb.h:                                             ; preds = %bb.g, %.lr.ph
  br i1 %i.ac, label %bb.j, label %bb.i, !prof !14, !nosanitize !13

bb.i:                                             ; preds = %bb.h
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @179, i64 %i.aa) #9, !nosanitize !13
  br label %bb.j, !nosanitize !13

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.af = load i8, ptr %.02229, align 1, !tbaa !15
  %i.ag = getelementptr inbounds nuw i8, ptr %.02328, i64 1 ; 2 uses
  %i.ah = ptrtoint ptr %.02328 to i64, !nosanitize !13 ; 3 uses
  %i.ai = add i64 %i.ah, 1, !nosanitize !13       ; 2 uses
  %i.aj = icmp ne ptr %.02328, null, !nosanitize !13 ; 2 uses
  %i.ak = icmp ne i64 %i.ai, 0
  %i.al = and i1 %i.aj, %i.ak, !nosanitize !13
  br i1 %i.al, label %bb.l, label %bb.k, !prof !14, !nosanitize !13

bb.k:                                             ; preds = %bb.j
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @180, i64 %i.ah, i64 %i.ai) #9, !nosanitize !13
  br label %bb.l, !nosanitize !13

bb.l:                                             ; preds = %bb.k, %bb.j
  br i1 %i.aj, label %bb.n, label %bb.m, !prof !14, !nosanitize !13

bb.m:                                             ; preds = %bb.l
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @181, i64 %i.ah) #9, !nosanitize !13
  br label %bb.n, !nosanitize !13

bb.n:                                             ; preds = %bb.m, %bb.l
  store i8 %i.af, ptr %.02328, align 1, !tbaa !15
  %i.am = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.y, i64 1), !nosanitize !13 ; 2 uses
  %i.an = extractvalue { i64, i1 } %i.am, 1, !nosanitize !13
  br i1 %i.an, label %.thread, label %.lr.ph, !prof !21, !llvm.loop !64, !nosanitize !13

bb.o:                                             ; preds = %bb.f
  %i.ao = trunc nuw i64 %i.l to i32
  %i.ap = call fastcc ptr @chunkmemset_sse2(ptr noundef %0, ptr noundef %1, i32 noundef %i.ao)
  br label %bb.p

bb.p:                                             ; preds = %.thread, %bb.o, %bb.b, %bb.c
  %.1 = phi ptr [ %i.c, %bb.b ], [ %i.c, %bb.c ], [ %i.ap, %bb.o ], [ %.023.lcssa, %.thread ]
  ret ptr %.1
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @chunkcopy_safe(ptr noundef %0, ptr noundef %1, i64 noundef range(i64 0, 4294967296) %2, ptr noundef %3) unnamed_addr #6 !func_sanitize !19 {
bb.a:
  %i.a = ptrtoint ptr %3 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 11 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = call i64 @llvm.umin.i64(i64 %2, i64 %i.c) ; 11 uses
  %.not = icmp ult ptr %1, %0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %i.d
  %i.f = add i64 %i.d, %i.b, !nosanitize !13      ; 3 uses
  %i.g = icmp ne ptr %0, null, !nosanitize !13
  %i.h = icmp eq i64 %i.f, 0
  %i.i = xor i1 %i.g, %i.h
  %i.j = icmp uge i64 %i.f, %i.b, !nosanitize !13
  %i.k = and i1 %i.j, %i.i, !nosanitize !13
  br i1 %i.k, label %bb.d, label %bb.c, !prof !14, !nosanitize !13

bb.c:                                             ; preds = %bb.b
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @189, i64 %i.b, i64 %i.f) #9, !nosanitize !13
  br label %bb.d, !nosanitize !13

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = icmp ult ptr %1, %i.e
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %i.m = phi i1 [ false, %bb.a ], [ %i.l, %bb.d ]
  %.not77 = icmp ult ptr %0, %1
  br i1 %.not77, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %i.d
  %i.o = ptrtoint ptr %1 to i64, !nosanitize !13  ; 3 uses
  %i.p = add i64 %i.d, %i.o, !nosanitize !13      ; 3 uses
  %i.q = icmp ne ptr %1, null, !nosanitize !13
  %i.r = icmp eq i64 %i.p, 0
  %i.s = xor i1 %i.q, %i.r
  %i.t = icmp uge i64 %i.p, %i.o, !nosanitize !13
  %i.u = and i1 %i.t, %i.s, !nosanitize !13
  br i1 %i.u, label %bb.h, label %bb.g, !prof !14, !nosanitize !13

bb.g:                                             ; preds = %bb.f
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @190, i64 %i.o, i64 %i.p) #9, !nosanitize !13
  br label %bb.h, !nosanitize !13

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.v = icmp ult ptr %0, %i.n
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %i.w = phi i1 [ false, %bb.e ], [ %i.v, %bb.h ]
  %or.cond = select i1 %i.m, i1 true, i1 %i.w
  br i1 %or.cond, label %bb.p, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = icmp ne ptr %0, null, !nosanitize !13    ; 2 uses
  br i1 %i.x, label %bb.l, label %bb.k, !prof !14, !nosanitize !13

bb.k:                                             ; preds = %bb.j
  call void @__ubsan_handle_nonnull_arg(ptr nonnull @191) #9, !nosanitize !13
  br label %bb.l, !nosanitize !13

bb.l:                                             ; preds = %bb.k, %bb.j
  %.not78 = icmp eq ptr %1, null, !nosanitize !13
  br i1 %.not78, label %bb.m, label %bb.n, !prof !17, !nosanitize !13

bb.m:                                             ; preds = %bb.l
  call void @__ubsan_handle_nonnull_arg(ptr nonnull @192) #9, !nosanitize !13
  br label %bb.n, !nosanitize !13

bb.n:                                             ; preds = %bb.m, %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr align 1 %1, i64 %i.d, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %i.d ; 2 uses
  %i.z = add i64 %i.d, %i.b, !nosanitize !13      ; 3 uses
  %i.aa = icmp eq i64 %i.z, 0
  %i.ab = xor i1 %i.x, %i.aa
  %i.ac = icmp uge i64 %i.z, %i.b, !nosanitize !13
  %i.ad = and i1 %i.ac, %i.ab, !nosanitize !13
  br i1 %i.ad, label %.loopexit, label %bb.o, !prof !14, !nosanitize !13

bb.o:                                             ; preds = %bb.n
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @193, i64 %i.b, i64 %i.z) #9, !nosanitize !13
  br label %.loopexit, !nosanitize !13

bb.p:                                             ; preds = %bb.i
  %i.ae = icmp eq ptr %0, %1
  br i1 %i.ae, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %i.d ; 2 uses
  %i.ag = add i64 %i.d, %i.b, !nosanitize !13     ; 3 uses
  %i.ah = icmp ne ptr %0, null, !nosanitize !13
  %i.ai = icmp eq i64 %i.ag, 0
  %i.aj = xor i1 %i.ah, %i.ai
  %i.ak = icmp uge i64 %i.ag, %i.b, !nosanitize !13
  %i.al = and i1 %i.ak, %i.aj, !nosanitize !13
  br i1 %i.al, label %.loopexit, label %bb.r, !prof !14, !nosanitize !13

bb.r:                                             ; preds = %bb.q
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @194, i64 %i.b, i64 %i.ag) #9, !nosanitize !13
  br label %.loopexit, !nosanitize !13

bb.s:                                             ; preds = %bb.p
  %i.am = ptrtoint ptr %1 to i64
  %i.an = sub i64 %i.am, %i.b                     ; 4 uses
  %i.ao = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 0, i64 %i.an), !nosanitize !13 ; 2 uses
  %i.ap = extractvalue { i64, i1 } %i.ao, 0, !nosanitize !13
  %i.aq = extractvalue { i64, i1 } %i.ao, 1, !nosanitize !13
  br i1 %i.aq, label %bb.t, label %bb.u, !prof !17, !nosanitize !13

bb.t:                                             ; preds = %bb.s
  call void @__ubsan_handle_negate_overflow(ptr nonnull @195, i64 %i.an) #9, !nosanitize !13
  br label %bb.u, !nosanitize !13

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ar = icmp slt i64 %i.an, 0, !nosanitize !13
  %i.as = select i1 %i.ar, i64 %i.ap, i64 %i.an, !nosanitize !13
  %.not79116 = icmp eq i64 %i.d, 0
  br i1 %.not79116, label %.loopexit, label %.lr.ph121

.lr.ph121:                                        ; preds = %bb.u, %._crit_edge112
  %.060119 = phi i64 [ %i.av, %._crit_edge112 ], [ %i.d, %bb.u ] ; 3 uses
  %.061118 = phi ptr [ %.4.lcssa, %._crit_edge112 ], [ %1, %bb.u ] ; 2 uses
  %.065117 = phi ptr [ %.469.lcssa, %._crit_edge112 ], [ %0, %bb.u ] ; 2 uses
  %i.at = call i64 @llvm.umin.i64(i64 %i.as, i64 %.060119) ; 5 uses
  %i.au = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %.060119, i64 %i.at), !nosanitize !13 ; 2 uses
  %i.av = extractvalue { i64, i1 } %i.au, 0, !nosanitize !13 ; 2 uses
  %i.aw = extractvalue { i64, i1 } %i.au, 1, !nosanitize !13
  br i1 %i.aw, label %bb.v, label %bb.w, !prof !17, !nosanitize !13

bb.v:                                             ; preds = %.lr.ph121
  call void @__ubsan_handle_sub_overflow(ptr nonnull @196, i64 %.060119, i64 %i.at) #10, !nosanitize !13
  br label %bb.w, !nosanitize !13

bb.w:                                             ; preds = %bb.v, %.lr.ph121
  %i.ax = icmp ugt i64 %i.at, 15
  br i1 %i.ax, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.w, %bb.ae
  %.0105 = phi i64 [ %i.bo, %bb.ae ], [ %i.at, %bb.w ]
  %.162104 = phi ptr [ %i.bh, %bb.ae ], [ %.061118, %bb.w ] ; 5 uses
  %.166103 = phi ptr [ %i.ba, %bb.ae ], [ %.065117, %bb.w ] ; 5 uses
  %i.ay = icmp ne ptr %.166103, null, !nosanitize !13 ; 2 uses
  br i1 %i.ay, label %bb.y, label %bb.x, !prof !14, !nosanitize !13

bb.x:                                             ; preds = %.lr.ph
  call void @__ubsan_handle_nonnull_arg(ptr nonnull @197) #9, !nosanitize !13
  br label %bb.y, !nosanitize !13

bb.y:                                             ; preds = %bb.x, %.lr.ph
  %i.az = icmp ne ptr %.162104, null, !nosanitize !13 ; 2 uses
  br i1 %i.az, label %bb.aa, label %bb.z, !prof !14, !nosanitize !13

bb.z:                                             ; preds = %bb.y
  call void @__ubsan_handle_nonnull_arg(ptr nonnull @198) #9, !nosanitize !13
  br label %bb.aa, !nosanitize !13

bb.aa:                                            ; preds = %bb.z, %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.166103, ptr noundef nonnull align 1 dereferenceable(16) %.162104, i64 16, i1 false)
  %i.ba = getelementptr i8, ptr %.166103, i64 16  ; 2 uses
  %i.bb = ptrtoint ptr %.166103 to i64, !nosanitize !13 ; 2 uses
  %i.bc = add i64 %i.bb, 16, !nosanitize !13      ; 2 uses
  %i.bd = icmp ne i64 %i.bc, 0
  %i.be = icmp ult ptr %.166103, inttoptr (i64 -16 to ptr)
  %i.bf = and i1 %i.be, %i.bd
  %i.bg = and i1 %i.ay, %i.bf
  br i1 %i.bg, label %bb.ac, label %bb.ab, !prof !14, !nosanitize !13

bb.ab:                                            ; preds = %bb.aa
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @199, i64 %i.bb, i64 %i.bc) #9, !nosanitize !13
  br label %bb.ac, !nosanitize !13

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.bh = getelementptr i8, ptr %.162104, i64 16  ; 2 uses
  %i.bi = ptrtoint ptr %.162104 to i64, !nosanitize !13 ; 2 uses
  %i.bj = add i64 %i.bi, 16, !nosanitize !13      ; 2 uses
  %i.bk = icmp ne i64 %i.bj, 0
  %i.bl = icmp ult ptr %.162104, inttoptr (i64 -16 to ptr)
  %i.bm = and i1 %i.bl, %i.bk
  %i.bn = and i1 %i.az, %i.bm
  br i1 %i.bn, label %bb.ae, label %bb.ad, !prof !14, !nosanitize !13

bb.ad:                                            ; preds = %bb.ac
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @200, i64 %i.bi, i64 %i.bj) #9, !nosanitize !13
  br label %bb.ae, !nosanitize !13

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %i.bo = add i64 %.0105, -16                     ; 3 uses
  %i.bp = icmp ugt i64 %i.bo, 15
  br i1 %i.bp, label %.lr.ph, label %._crit_edge, !llvm.loop !65

._crit_edge:                                      ; preds = %bb.ae, %bb.w
  %.166.lcssa = phi ptr [ %.065117, %bb.w ], [ %i.ba, %bb.ae ] ; 6 uses
  %.162.lcssa = phi ptr [ %.061118, %bb.w ], [ %i.bh, %bb.ae ] ; 6 uses
  %.0.lcssa = phi i64 [ %i.at, %bb.w ], [ %i.bo, %bb.ae ] ; 3 uses
  %i.bq = icmp samesign ugt i64 %.0.lcssa, 7
  br i1 %i.bq, label %bb.af, label %bb.ao

bb.af:                                            ; preds = %._crit_edge
  %.not95 = icmp eq ptr %.166.lcssa, null, !nosanitize !13
  br i1 %.not95, label %bb.ag, label %bb.ah, !prof !17, !nosanitize !13

bb.ag:                                            ; preds = %bb.af
  call void @__ubsan_handle_nonnull_arg(ptr nonnull @201) #9, !nosanitize !13
  br label %bb.ah, !nosanitize !13

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.not96 = icmp eq ptr %.162.lcssa, null, !nosanitize !13
  br i1 %.not96, label %bb.ai, label %bb.aj, !prof !17, !nosanitize !13

bb.ai:                                            ; preds = %bb.ah
  call void @__ubsan_handle_nonnull_arg(ptr nonnull @202) #9, !nosanitize !13
  br label %bb.aj, !nosanitize !13

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.br = load i64, ptr %.162.lcssa, align 1
  store i64 %i.br, ptr %.166.lcssa, align 1
  %i.bs = getelementptr i8, ptr %.166.lcssa, i64 8
  %i.bt = ptrtoint ptr %.166.lcssa to i64, !nosanitize !13 ; 2 uses
  %i.bu = add i64 %i.bt, 8, !nosanitize !13       ; 2 uses
  %i.bv = icmp ne i64 %i.bu, 0
  %switch = icmp ult ptr %.166.lcssa, inttoptr (i64 -8 to ptr)
  %or.cond87 = select i1 %i.bv, i1 %switch, i1 false, !prof !18
  br i1 %or.cond87, label %bb.al, label %bb.ak, !prof !18

bb.ak:                                            ; preds = %bb.aj
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @203, i64 %i.bt, i64 %i.bu) #9, !nosanitize !13
  br label %bb.al, !nosanitize !13

bb.al:                                            ; preds = %bb.aj, %bb.ak
  %i.bw = getelementptr i8, ptr %.162.lcssa, i64 8
  %i.bx = ptrtoint ptr %.162.lcssa to i64, !nosanitize !13 ; 2 uses
  %i.by = add i64 %i.bx, 8, !nosanitize !13       ; 2 uses
  %i.bz = icmp ne i64 %i.by, 0
  %switch88 = icmp ult ptr %.162.lcssa, inttoptr (i64 -8 to ptr)
  %or.cond89 = select i1 %i.bz, i1 %switch88, i1 false, !prof !18
  br i1 %or.cond89, label %bb.an, label %bb.am, !prof !18

bb.am:                                            ; preds = %bb.al
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @204, i64 %i.bx, i64 %i.by) #9, !nosanitize !13
  br label %bb.an, !nosanitize !13

bb.an:                                            ; preds = %bb.al, %bb.am
  %i.ca = add nsw i64 %.0.lcssa, -8
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %._crit_edge
  %.267 = phi ptr [ %i.bs, %bb.an ], [ %.166.lcssa, %._crit_edge ]
  %.263 = phi ptr [ %i.bw, %bb.an ], [ %.162.lcssa, %._crit_edge ]
  %.1 = phi i64 [ %i.ca, %bb.an ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %.263.fr = freeze ptr %.263                     ; 6 uses
  %.267.fr = freeze ptr %.267                     ; 6 uses
  %i.cb = icmp samesign ugt i64 %.1, 3
  br i1 %i.cb, label %bb.ap, label %bb.ay

bb.ap:                                            ; preds = %bb.ao
  %.not99 = icmp eq ptr %.267.fr, null, !nosanitize !13
  br i1 %.not99, label %bb.aq, label %bb.ar, !prof !17, !nosanitize !13

bb.aq:                                            ; preds = %bb.ap
  call void @__ubsan_handle_nonnull_arg(ptr nonnull @205) #9, !nosanitize !13
  br label %bb.ar, !nosanitize !13

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.not100 = icmp eq ptr %.263.fr, null, !nosanitize !13
  br i1 %.not100, label %bb.as, label %bb.at, !prof !17, !nosanitize !13

bb.as:                                            ; preds = %bb.ar
  call void @__ubsan_handle_nonnull_arg(ptr nonnull @206) #9, !nosanitize !13
  br label %bb.at, !nosanitize !13

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.cc = load i32, ptr %.263.fr, align 1
  store i32 %i.cc, ptr %.267.fr, align 1
  %i.cd = getelementptr i8, ptr %.267.fr, i64 4
  %i.ce = ptrtoint ptr %.267.fr to i64, !nosanitize !13 ; 2 uses
  %i.cf = add i64 %i.ce, 4, !nosanitize !13       ; 2 uses
  %i.cg = icmp ne i64 %i.cf, 0
  %switch90 = icmp ult ptr %.267.fr, inttoptr (i64 -4 to ptr)
  %or.cond91 = and i1 %switch90, %i.cg
  br i1 %or.cond91, label %bb.av, label %bb.au, !prof !18

bb.au:                                            ; preds = %bb.at
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @207, i64 %i.ce, i64 %i.cf) #9, !nosanitize !13
  br label %bb.av, !nosanitize !13

bb.av:                                            ; preds = %bb.at, %bb.au
  %i.ch = getelementptr i8, ptr %.263.fr, i64 4
  %i.ci = ptrtoint ptr %.263.fr to i64, !nosanitize !13 ; 2 uses
  %i.cj = add i64 %i.ci, 4, !nosanitize !13       ; 2 uses
  %i.ck = icmp ne i64 %i.cj, 0
  %switch92 = icmp ult ptr %.263.fr, inttoptr (i64 -4 to ptr)
  %or.cond93 = and i1 %switch92, %i.ck
  br i1 %or.cond93, label %bb.ax, label %bb.aw, !prof !18

bb.aw:                                            ; preds = %bb.av
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @208, i64 %i.ci, i64 %i.cj) #9, !nosanitize !13
  br label %bb.ax, !nosanitize !13

bb.ax:                                            ; preds = %bb.av, %bb.aw
  %i.cl = add nsw i64 %.1, -4
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.ao
  %.368 = phi ptr [ %i.cd, %bb.ax ], [ %.267.fr, %bb.ao ] ; 2 uses
  %.364 = phi ptr [ %i.ch, %bb.ax ], [ %.263.fr, %bb.ao ] ; 2 uses
  %.2 = phi i64 [ %i.cl, %bb.ax ], [ %.1, %bb.ao ]
  %i.cm = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %.2, i64 1), !nosanitize !13 ; 2 uses
  %i.cn = extractvalue { i64, i1 } %i.cm, 1, !nosanitize !13
  br i1 %i.cn, label %._crit_edge112, label %.lr.ph111, !prof !20, !nosanitize !13

._crit_edge112:                                   ; preds = %bb.bg, %bb.ay
  %.469.lcssa = phi ptr [ %.368, %bb.ay ], [ %i.cw, %bb.bg ] ; 2 uses
  %.4.lcssa = phi ptr [ %.364, %bb.ay ], [ %i.cp, %bb.bg ]
  call void @__ubsan_handle_sub_overflow(ptr nonnull @209, i64 0, i64 1) #10, !nosanitize !13
  %.not79 = icmp eq i64 %i.av, 0
  br i1 %.not79, label %.loopexit, label %.lr.ph121, !llvm.loop !66

.lr.ph111:                                        ; preds = %bb.ay, %bb.bg
  %.pn = phi { i64, i1 } [ %i.dc, %bb.bg ], [ %i.cm, %bb.ay ]
  %.4109 = phi ptr [ %i.cp, %bb.bg ], [ %.364, %bb.ay ] ; 4 uses
  %.469108 = phi ptr [ %i.cw, %bb.bg ], [ %.368, %bb.ay ] ; 4 uses
  %i.co = extractvalue { i64, i1 } %.pn, 0
  %i.cp = getelementptr i8, ptr %.4109, i64 1     ; 2 uses
  %i.cq = ptrtoint ptr %.4109 to i64, !nosanitize !13 ; 3 uses
  %i.cr = add i64 %i.cq, 1, !nosanitize !13       ; 2 uses
  %i.cs = icmp ne ptr %.4109, null, !nosanitize !13 ; 2 uses
  %i.ct = icmp ne i64 %i.cr, 0
  %i.cu = and i1 %i.cs, %i.ct, !nosanitize !13
  br i1 %i.cu, label %bb.ba, label %bb.az, !prof !14, !nosanitize !13

bb.az:                                            ; preds = %.lr.ph111
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @210, i64 %i.cq, i64 %i.cr) #9, !nosanitize !13
  br label %bb.ba, !nosanitize !13

bb.ba:                                            ; preds = %bb.az, %.lr.ph111
  br i1 %i.cs, label %bb.bc, label %bb.bb, !prof !14, !nosanitize !13

bb.bb:                                            ; preds = %bb.ba
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @211, i64 %i.cq) #9, !nosanitize !13
  br label %bb.bc, !nosanitize !13

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.cv = load i8, ptr %.4109, align 1, !tbaa !15
  %i.cw = getelementptr i8, ptr %.469108, i64 1   ; 2 uses
  %i.cx = ptrtoint ptr %.469108 to i64, !nosanitize !13 ; 3 uses
  %i.cy = add i64 %i.cx, 1, !nosanitize !13       ; 2 uses
  %i.cz = icmp ne ptr %.469108, null, !nosanitize !13 ; 2 uses
  %i.da = icmp ne i64 %i.cy, 0
  %i.db = and i1 %i.cz, %i.da, !nosanitize !13
  br i1 %i.db, label %bb.be, label %bb.bd, !prof !14, !nosanitize !13

bb.bd:                                            ; preds = %bb.bc
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @212, i64 %i.cx, i64 %i.cy) #9, !nosanitize !13
  br label %bb.be, !nosanitize !13

bb.be:                                            ; preds = %bb.bd, %bb.bc
  br i1 %i.cz, label %bb.bg, label %bb.bf, !prof !14, !nosanitize !13

bb.bf:                                            ; preds = %bb.be
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @213, i64 %i.cx) #9, !nosanitize !13
  br label %bb.bg, !nosanitize !13

bb.bg:                                            ; preds = %bb.bf, %bb.be
  store i8 %i.cv, ptr %.469108, align 1, !tbaa !15
  %i.dc = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.co, i64 1), !nosanitize !13 ; 2 uses
  %i.dd = extractvalue { i64, i1 } %i.dc, 1, !nosanitize !13
  br i1 %i.dd, label %._crit_edge112, label %.lr.ph111, !prof !21, !llvm.loop !67, !nosanitize !13

.loopexit:                                        ; preds = %._crit_edge112, %bb.u, %bb.q, %bb.r, %bb.n, %bb.o
  %.059 = phi ptr [ %i.y, %bb.n ], [ %i.af, %bb.q ], [ %i.y, %bb.o ], [ %i.af, %bb.r ], [ %0, %bb.u ], [ %.469.lcssa, %._crit_edge112 ]
  ret ptr %.059
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc nonnull ptr @chunkcopy_sse2(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #3 !func_sanitize !69 {
bb.a:
  %i.a = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %2, i32 1), !nosanitize !13 ; 2 uses
  %i.b = extractvalue { i32, i1 } %i.a, 0, !nosanitize !13
  %i.c = extractvalue { i32, i1 } %i.a, 1, !nosanitize !13
  br i1 %i.c, label %bb.b, label %bb.c, !prof !17, !nosanitize !13

bb.b:                                             ; preds = %bb.a
  %i.d = zext nneg i32 %2 to i64, !nosanitize !13
  call void @__ubsan_handle_sub_overflow(ptr nonnull @214, i64 %i.d, i64 1) #10, !nosanitize !13
  br label %bb.c, !nosanitize !13

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = and i32 %i.b, 15
  %narrow = add nuw nsw i32 %i.e, 1               ; 2 uses
  %.not36 = icmp eq ptr %1, null, !nosanitize !13
  br i1 %.not36, label %bb.d, label %loadchunk.exit.thread, !prof !17, !nosanitize !13

bb.d:                                             ; preds = %bb.c
  %i.f = ptrtoint ptr %1 to i64, !nosanitize !13  ; 2 uses
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @186, i64 %i.f) #9, !nosanitize !13
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @188, i64 %i.f) #9, !nosanitize !13
  br label %loadchunk.exit.thread, !nosanitize !13

loadchunk.exit.thread:                            ; preds = %bb.c, %bb.d
  %i.g = load <2 x i64>, ptr %1, align 1, !tbaa !15
  %.not37 = icmp eq ptr %0, null, !nosanitize !13
  %.pre = ptrtoint ptr %0 to i64, !nosanitize !13 ; 5 uses
  br i1 %.not37, label %bb.e, label %storechunk.exit, !prof !17, !nosanitize !13

bb.e:                                             ; preds = %loadchunk.exit.thread
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @171, i64 %.pre) #9, !nosanitize !13
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @173, i64 %.pre) #9, !nosanitize !13
  br label %storechunk.exit, !nosanitize !13

storechunk.exit:                                  ; preds = %loadchunk.exit.thread, %bb.e
  store <2 x i64> %i.g, ptr %0, align 1, !tbaa !15
  %i.h = zext nneg i32 %narrow to i64             ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %i.h ; 2 uses
  %i.j = add i64 %.pre, %i.h, !nosanitize !13     ; 2 uses
  %.not20 = icmp ult i64 %i.j, %.pre, !nosanitize !13
  br i1 %.not20, label %bb.f, label %bb.g, !prof !17, !nosanitize !13

bb.f:                                             ; preds = %storechunk.exit
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @215, i64 %.pre, i64 %i.j) #9, !nosanitize !13
  br label %bb.g, !nosanitize !13

bb.g:                                             ; preds = %bb.f, %storechunk.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %i.h
  %i.l = ptrtoint ptr %1 to i64, !nosanitize !13  ; 3 uses
  %i.m = add i64 %i.h, %i.l, !nosanitize !13      ; 2 uses
  %.not21 = icmp ult i64 %i.m, %i.l, !nosanitize !13
  br i1 %.not21, label %bb.h, label %bb.i, !prof !17, !nosanitize !13

bb.h:                                             ; preds = %bb.g
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @216, i64 %i.l, i64 %i.m) #9, !nosanitize !13
  br label %bb.i, !nosanitize !13

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.n = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %2, i32 %narrow), !nosanitize !13 ; 2 uses
  %i.o = extractvalue { i32, i1 } %i.n, 0, !nosanitize !13 ; 2 uses
  %i.p = extractvalue { i32, i1 } %i.n, 1, !nosanitize !13
  br i1 %i.p, label %bb.j, label %bb.k, !prof !17, !nosanitize !13

bb.j:                                             ; preds = %bb.i
  %i.q = zext i32 %2 to i64, !nosanitize !13
  call void @__ubsan_handle_sub_overflow(ptr nonnull @217, i64 %i.q, i64 %i.h) #10, !nosanitize !13
  br label %bb.k, !nosanitize !13

bb.k:                                             ; preds = %bb.j, %bb.i
  %.not22 = icmp eq i32 %i.o, 0
  br i1 %.not22, label %._crit_edge, label %loadchunk.exit18.thread

loadchunk.exit18.thread:                          ; preds = %bb.k, %bb.q
  %.025 = phi i32 [ %i.ah, %bb.q ], [ %i.o, %bb.k ]
  %.01524 = phi ptr [ %i.x, %bb.q ], [ %i.k, %bb.k ] ; 4 uses
  %.01623 = phi ptr [ %i.s, %bb.q ], [ %i.i, %bb.k ] ; 4 uses
  %.pre29 = ptrtoint ptr %.01623 to i64, !nosanitize !13 ; 2 uses
  %i.r = load <2 x i64>, ptr %.01524, align 1, !tbaa !15
  store <2 x i64> %i.r, ptr %.01623, align 1, !tbaa !15
  %i.s = getelementptr inbounds nuw i8, ptr %.01623, i64 16 ; 2 uses
  %i.t = add i64 %.pre29, 16, !nosanitize !13     ; 2 uses
  %i.u = icmp ne i64 %i.t, 0, !nosanitize !13
  %i.v = icmp ult ptr %.01623, inttoptr (i64 -16 to ptr)
  %i.w = and i1 %i.v, %i.u, !nosanitize !13
  br i1 %i.w, label %bb.m, label %bb.l, !prof !14, !nosanitize !13

bb.l:                                             ; preds = %loadchunk.exit18.thread
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @218, i64 %.pre29, i64 %i.t) #9, !nosanitize !13
  br label %bb.m, !nosanitize !13

bb.m:                                             ; preds = %bb.l, %loadchunk.exit18.thread
  %i.x = getelementptr inbounds nuw i8, ptr %.01524, i64 16
  %i.y = ptrtoint ptr %.01524 to i64, !nosanitize !13 ; 2 uses
  %i.z = add i64 %i.y, 16, !nosanitize !13        ; 2 uses
  %i.aa = icmp ne i64 %i.z, 0, !nosanitize !13
  %i.ab = icmp ult ptr %.01524, inttoptr (i64 -16 to ptr)
  %i.ac = and i1 %i.ab, %i.aa, !nosanitize !13
  br i1 %i.ac, label %bb.o, label %bb.n, !prof !14, !nosanitize !13

bb.n:                                             ; preds = %bb.m
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @219, i64 %i.y, i64 %i.z) #9, !nosanitize !13
  br label %bb.o, !nosanitize !13

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ad = zext i32 %.025 to i64                   ; 2 uses
  %i.ae = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.ad, i64 16), !nosanitize !13 ; 2 uses
  %i.af = extractvalue { i64, i1 } %i.ae, 0, !nosanitize !13
  %i.ag = extractvalue { i64, i1 } %i.ae, 1, !nosanitize !13
  br i1 %i.ag, label %bb.p, label %bb.q, !prof !17, !nosanitize !13

bb.p:                                             ; preds = %bb.o
  call void @__ubsan_handle_sub_overflow(ptr nonnull @220, i64 %i.ad, i64 16) #10, !nosanitize !13
  br label %bb.q, !nosanitize !13

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ah = trunc i64 %i.af to i32                  ; 2 uses
  %.not = icmp eq i32 %i.ah, 0
  br i1 %.not, label %._crit_edge, label %loadchunk.exit18.thread, !llvm.loop !68

._crit_edge:                                      ; preds = %bb.q, %bb.k
  %.016.lcssa = phi ptr [ %i.i, %bb.k ], [ %i.s, %bb.q ]
  ret ptr %.016.lcssa
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: uwtable
declare void @__ubsan_handle_negate_overflow(ptr, i64) local_unnamed_addr #2

; Function Attrs: uwtable
declare void @__ubsan_handle_nonnull_arg(ptr) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: uwtable
declare void @__ubsan_handle_mul_overflow(ptr, i64, i64) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { nounwind uwtable "disable-tail-calls"="true" "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { uwtable }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="true" "frame-pointer"="all" "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "disable-tail-calls"="true" "frame-pointer"="all" "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { inlinehint nounwind uwtable "disable-tail-calls"="true" "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }
attributes #10 = { nomerge nounwind }

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
!12 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!13 = !{}
!14 = !{!"branch_weights", i32 1048575, i32 1}
!15 = !{!8, !8, i64 0}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!"branch_weights", i32 1, i32 1048575}
!18 = !{!"branch_weights", i32 1048575, i32 1048575}
!19 = !{i32 -1056584962, i32 -342167888}
!20 = !{!"branch_weights", i32 1, i32 127}
!21 = !{!"branch_weights", i32 127, i32 134217473}
!22 = distinct !{!22, !16}
!23 = !{i32 -1056584962, i32 472789275}
!24 = distinct !{!24, !16}
!25 = distinct !{!25, !16}
!26 = distinct !{!26, !16}
!27 = !{i32 -1056584962, i32 1479425694}
!28 = distinct !{!28, !16}
!29 = distinct !{!29, !16}
!30 = !{i32 -1056584962, i32 -971363099}
!31 = !{!"any pointer", !8, i64 0}
!32 = !{!"p1 omnipotent char", !31, i64 0}
!33 = !{!"long", !8, i64 0}
!34 = !{!"p1 _ZTS14internal_state", !31, i64 0}
!35 = !{!"zng_stream_s", !32, i64 0, !9, i64 8, !33, i64 16, !32, i64 24, !9, i64 32, !33, i64 40, !32, i64 48, !34, i64 56, !31, i64 64, !31, i64 72, !31, i64 80, !9, i64 88, !9, i64 92, !33, i64 96}
!36 = !{!35, !34, i64 56}
!37 = !{!35, !32, i64 0}
!38 = !{!35, !9, i64 8}
!39 = !{!35, !32, i64 24}
!40 = !{!35, !9, i64 32}
!41 = !{!"p1 _ZTS12zng_stream_s", !31, i64 0}
!42 = !{!"p1 _ZTS15zng_gz_header_s", !31, i64 0}
!43 = !{!"crc32_fold_s", !8, i64 0, !9, i64 64}
!44 = !{!"p1 _ZTS16inflate_allocs_s", !31, i64 0}
!45 = !{!"inflate_state", !41, i64 0, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !33, i64 32, !33, i64 40, !42, i64 48, !9, i64 56, !9, i64 60, !9, i64 64, !9, i64 68, !9, i64 72, !9, i64 76, !32, i64 80, !33, i64 88, !9, i64 96, !9, i64 100, !31, i64 104, !31, i64 112, !9, i64 120, !9, i64 124, !9, i64 128, !9, i64 132, !9, i64 136, !9, i64 140, !9, i64 144, !9, i64 148, !31, i64 152, !43, i64 160, !8, i64 228, !8, i64 868, !8, i64 1444, !44, i64 9144}
!46 = !{!45, !9, i64 64}
!47 = !{!45, !9, i64 72}
!48 = !{!45, !9, i64 76}
!49 = !{!45, !32, i64 80}
!50 = !{!45, !33, i64 88}
!51 = !{!45, !9, i64 96}
!52 = !{!45, !31, i64 104}
!53 = !{!45, !31, i64 112}
!54 = !{!45, !9, i64 100}
!55 = !{!45, !9, i64 120}
!56 = !{!45, !9, i64 68}
!57 = !{!"short", !8, i64 0}
!58 = !{!"", !8, i64 0, !8, i64 1, !57, i64 2}
!59 = !{!58, !8, i64 0}
!60 = !{!58, !57, i64 2}
!61 = !{!58, !8, i64 1}
!62 = !{!45, !9, i64 8}
!63 = !{!35, !32, i64 48}
!64 = distinct !{!64, !16}
!65 = distinct !{!65, !16}
!66 = distinct !{!66, !16}
!67 = distinct !{!67, !16}
!68 = distinct !{!68, !16}
!69 = !{i32 -1056584962, i32 2091746863}
end_hunk_2
