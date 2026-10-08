Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zlib-ng_ubsan/original/gzwrite?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@.src = private unnamed_addr constant [48 x i8] c"/opt-bench/work/zlib-ng_ubsan/zlib-ng/gzwrite.c\00", align 1
@0 = private unnamed_addr constant { i16, i16, [11 x i8] } { i16 -1, i16 0, [11 x i8] c"'gz_state'\00" }
@1 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 227, i32 16 }, ptr @0, i8 3, i8 3 }
@2 = private unnamed_addr constant { i16, i16, [6 x i8] } { i16 0, i16 11, [6 x i8] c"'int'\00" }
@3 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 227, i32 16 }, ptr @2, i8 3, i8 0 }
@4 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 227, i32 43 }, ptr @0, i8 3, i8 3 }
@.str = private unnamed_addr constant [37 x i8] c"requested length does not fit in int\00", align 1
@5 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 256, i32 16 }, ptr @0, i8 3, i8 3 }
@6 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 256, i32 16 }, ptr @2, i8 3, i8 0 }
@7 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 256, i32 43 }, ptr @0, i8 3, i8 3 }
@8 = private unnamed_addr constant { i16, i16, [31 x i8] } { i16 0, i16 12, [31 x i8] c"'size_t' (aka 'unsigned long')\00" }
@9 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 260, i32 18 }, ptr @8 }
@.str.1 = private unnamed_addr constant [33 x i8] c"request does not fit in a size_t\00", align 1
@10 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 281, i32 21 }, ptr @0, i8 3, i8 3 }
@11 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 284, i32 16 }, ptr @0, i8 3, i8 3 }
@12 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 284, i32 16 }, ptr @2, i8 3, i8 0 }
@13 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 284, i32 43 }, ptr @0, i8 3, i8 3 }
@14 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 288, i32 16 }, ptr @0, i8 3, i8 3 }
@15 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 289, i32 16 }, ptr @0, i8 3, i8 3 }
@16 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 290, i32 35 }, ptr @0, i8 3, i8 3 }
@17 = private unnamed_addr constant { i16, i16, [23 x i8] } { i16 0, i16 13, [23 x i8] c"'off64_t' (aka 'long')\00" }
@18 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 296, i32 16 }, ptr @0, i8 3, i8 3 }
@19 = private unnamed_addr constant { i16, i16, [15 x i8] } { i16 0, i16 10, [15 x i8] c"'unsigned int'\00" }
@20 = private unnamed_addr constant { i16, i16, [41 x i8] } { i16 -1, i16 0, [41 x i8] c"'zng_stream' (aka 'struct zng_stream_s')\00" }
@21 = private unnamed_addr constant { i16, i16, [32 x i8] } { i16 0, i16 10, [32 x i8] c"'uint32_t' (aka 'unsigned int')\00" }
@22 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 298, i32 36 }, ptr @0, i8 3, i8 3 }
@23 = private unnamed_addr constant { i16, i16, [48 x i8] } { i16 -1, i16 0, [48 x i8] c"'const uint8_t *' (aka 'const unsigned char *')\00" }
@24 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 299, i32 42 } }
@25 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 299, i32 69 }, ptr @0, i8 3, i8 3 }
@26 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 300, i32 27 }, ptr @0, i8 3, i8 3 }
@27 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 301, i32 20 }, ptr @0, i8 3, i8 3 }
@28 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 301, i32 13 } }
@29 = private unnamed_addr constant { i16, i16, [16 x i8] } { i16 0, i16 6, [16 x i8] c"'unsigned char'\00" }
@30 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 301, i32 13 }, ptr @29, i8 0, i8 1 }
@31 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 302, i32 27 }, ptr @21 }
@32 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 303, i32 20 }, ptr @0, i8 3, i8 3 }
@33 = private unnamed_addr constant { i16, i16, [18 x i8] } { i16 -1, i16 0, [18 x i8] c"'struct gzFile_s'\00" }
@34 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 303, i32 20 }, ptr @33, i8 3, i8 3 }
@35 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 303, i32 25 }, ptr @17 }
@36 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 326, i32 16 }, ptr @0, i8 3, i8 3 }
@37 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 326, i32 16 }, ptr @2, i8 3, i8 0 }
@38 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 326, i32 43 }, ptr @0, i8 3, i8 3 }
@.src.2 = private unnamed_addr constant [22 x i8] c"/usr/include/string.h\00", align 1
@39 = private unnamed_addr global { { ptr, i32, i32 }, { ptr, i32, i32 }, i32 } { { ptr, i32, i32 } { ptr @.src, i32 330, i32 18 }, { ptr, i32, i32 } { ptr @.src.2, i32 408, i32 33 }, i32 1 }
@.str.3 = private unnamed_addr constant [34 x i8] c"string length does not fit in int\00", align 1
@40 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 351, i32 21 }, ptr @0, i8 3, i8 3 }
@41 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 354, i32 16 }, ptr @0, i8 3, i8 3 }
@42 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 354, i32 16 }, ptr @2, i8 3, i8 0 }
@43 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 354, i32 43 }, ptr @0, i8 3, i8 3 }
@44 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 358, i32 16 }, ptr @0, i8 3, i8 3 }
@45 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 359, i32 23 }, ptr @0, i8 3, i8 3 }
@46 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 362, i32 16 }, ptr @0, i8 3, i8 3 }
@47 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 363, i32 16 }, ptr @0, i8 3, i8 3 }
@48 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 364, i32 35 }, ptr @0, i8 3, i8 3 }
@49 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 365, i32 27 }, ptr @0, i8 3, i8 3 }
@50 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 372, i32 32 }, ptr @0, i8 3, i8 3 }
@51 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 373, i32 28 }, ptr @0, i8 3, i8 3 }
@52 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 373, i32 57 }, ptr @0, i8 3, i8 3 }
@53 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 373, i32 31 } }
@54 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 373, i32 61 } }
@55 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 374, i32 17 }, ptr @0, i8 3, i8 3 }
@56 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 374, i32 22 }, ptr @19 }
@57 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 374, i32 5 } }
@58 = private unnamed_addr constant { i16, i16, [7 x i8] } { i16 0, i16 7, [7 x i8] c"'char'\00" }
@59 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 374, i32 5 }, ptr @58, i8 0, i8 1 }
@60 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 375, i32 34 }, ptr @0, i8 3, i8 3 }
@61 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 378, i32 45 }, ptr @0, i8 3, i8 3 }
@62 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 378, i32 65 }, ptr @0, i8 3, i8 3 }
@63 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 378, i32 70 }, ptr @19 }
@64 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 378, i32 53 } }
@65 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 378, i32 53 }, ptr @58, i8 0, i8 0 }
@66 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 382, i32 20 }, ptr @19 }
@67 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 383, i32 12 }, ptr @0, i8 3, i8 3 }
@68 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 383, i32 12 }, ptr @33, i8 3, i8 3 }
@69 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 383, i32 18 }, ptr @17 }
@70 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 384, i32 34 }, ptr @0, i8 3, i8 3 }
@71 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 385, i32 40 }, ptr @0, i8 3, i8 3 }
@72 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 385, i32 31 }, ptr @19 }
@73 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 386, i32 33 }, ptr @0, i8 3, i8 3 }
@74 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 388, i32 27 }, ptr @0, i8 3, i8 3 }
@75 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 389, i32 24 }, ptr @0, i8 3, i8 3 }
@76 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 389, i32 35 }, ptr @0, i8 3, i8 3 }
@77 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 389, i32 47 }, ptr @0, i8 3, i8 3 }
@78 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 389, i32 38 } }
@79 = private unnamed_addr global { { ptr, i32, i32 }, { ptr, i32, i32 }, i32 } { { ptr, i32, i32 } { ptr @.src, i32 389, i32 17 }, { ptr, i32, i32 } { ptr @.src.2, i32 48, i32 14 }, i32 1 }
@80 = private unnamed_addr global { { ptr, i32, i32 }, { ptr, i32, i32 }, i32 } { { ptr, i32, i32 } { ptr @.src, i32 389, i32 28 }, { ptr, i32, i32 } { ptr @.src.2, i32 48, i32 14 }, i32 2 }
@81 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 390, i32 32 }, ptr @0, i8 3, i8 3 }
@82 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 416, i32 16 }, ptr @0, i8 3, i8 3 }
@83 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 416, i32 16 }, ptr @2, i8 3, i8 0 }
@84 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 416, i32 43 }, ptr @0, i8 3, i8 3 }
@85 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 424, i32 16 }, ptr @0, i8 3, i8 3 }
@86 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 425, i32 16 }, ptr @0, i8 3, i8 3 }
@87 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 426, i32 35 }, ptr @0, i8 3, i8 3 }
@88 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 427, i32 27 }, ptr @0, i8 3, i8 3 }
@89 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 432, i32 19 }, ptr @0, i8 3, i8 3 }
@90 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 444, i32 21 }, ptr @0, i8 3, i8 3 }
@91 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 447, i32 16 }, ptr @0, i8 3, i8 3 }
@92 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 447, i32 16 }, ptr @2, i8 3, i8 0 }
@93 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 447, i32 43 }, ptr @0, i8 3, i8 3 }
@94 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 447, i32 65 }, ptr @0, i8 3, i8 3 }
@95 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 451, i32 25 }, ptr @0, i8 3, i8 3 }
@96 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 451, i32 53 }, ptr @0, i8 3, i8 3 }
@97 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 455, i32 16 }, ptr @0, i8 3, i8 3 }
@98 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 456, i32 16 }, ptr @0, i8 3, i8 3 }
@99 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 457, i32 35 }, ptr @0, i8 3, i8 3 }
@100 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 458, i32 27 }, ptr @0, i8 3, i8 3 }
@101 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 462, i32 16 }, ptr @0, i8 3, i8 3 }
@102 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 465, i32 27 }, ptr @0, i8 3, i8 3 }
@103 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 468, i32 12 }, ptr @0, i8 3, i8 3 }
@104 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 469, i32 12 }, ptr @0, i8 3, i8 3 }
@105 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 484, i32 16 }, ptr @0, i8 3, i8 3 }
@106 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 484, i32 16 }, ptr @2, i8 3, i8 0 }
@107 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 488, i32 16 }, ptr @0, i8 3, i8 3 }
@108 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 489, i32 16 }, ptr @0, i8 3, i8 3 }
@109 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 490, i32 35 }, ptr @0, i8 3, i8 3 }
@110 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 491, i32 26 }, ptr @0, i8 3, i8 3 }
@111 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 496, i32 22 }, ptr @0, i8 3, i8 3 }
@112 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 497, i32 16 }, ptr @0, i8 3, i8 3 }
@113 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 498, i32 21 }, ptr @0, i8 3, i8 3 }
@114 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 499, i32 47 }, ptr @0, i8 3, i8 3 }
@115 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 504, i32 17 }, ptr @0, i8 3, i8 3 }
@116 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 505, i32 22 }, ptr @0, i8 3, i8 3 }
@117 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 163, i32 16 }, ptr @0, i8 3, i8 3 }
@118 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 163, i32 16 }, ptr @19, i8 3, i8 0 }
@119 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 167, i32 16 }, ptr @0, i8 3, i8 3 }
@120 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 168, i32 16 }, ptr @0, i8 3, i8 3 }
@121 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 169, i32 35 }, ptr @0, i8 3, i8 3 }
@122 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 174, i32 22 }, ptr @0, i8 3, i8 3 }
@123 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 174, i32 22 }, ptr @19, i8 3, i8 0 }
@124 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 179, i32 24 }, ptr @0, i8 3, i8 3 }
@125 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 180, i32 46 }, ptr @0, i8 3, i8 3 }
@126 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 180, i32 24 }, ptr @0, i8 3, i8 3 }
@127 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 181, i32 39 }, ptr @0, i8 3, i8 3 }
@128 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 181, i32 61 }, ptr @0, i8 3, i8 3 }
@129 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 181, i32 52 } }
@130 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 182, i32 38 }, ptr @0, i8 3, i8 3 }
@131 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 183, i32 27 }, ptr @0, i8 3, i8 3 }
@132 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 183, i32 27 }, ptr @19, i8 3, i8 0 }
@133 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 183, i32 32 }, ptr @19 }
@134 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 186, i32 27 }, ptr @0, i8 3, i8 3 }
@135 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 186, i32 30 } }
@136 = private unnamed_addr global { { ptr, i32, i32 }, { ptr, i32, i32 }, i32 } { { ptr, i32, i32 } { ptr @.src, i32 186, i32 20 }, { ptr, i32, i32 } { ptr @.src.2, i32 44, i32 28 }, i32 1 }
@137 = private unnamed_addr global { { ptr, i32, i32 }, { ptr, i32, i32 }, i32 } { { ptr, i32, i32 } { ptr @.src, i32 186, i32 38 }, { ptr, i32, i32 } { ptr @.src.2, i32 44, i32 28 }, i32 2 }
@138 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 187, i32 20 }, ptr @0, i8 3, i8 3 }
@139 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 187, i32 34 }, ptr @19 }
@140 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 188, i32 20 }, ptr @0, i8 3, i8 3 }
@141 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 188, i32 20 }, ptr @33, i8 3, i8 3 }
@142 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 188, i32 26 }, ptr @17 }
@143 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 189, i32 37 } }
@144 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 190, i32 17 }, ptr @8 }
@145 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 196, i32 20 }, ptr @0, i8 3, i8 3 }
@146 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 200, i32 16 }, ptr @0, i8 3, i8 3 }
@147 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 205, i32 20 }, ptr @0, i8 3, i8 3 }
@148 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 206, i32 20 }, ptr @0, i8 3, i8 3 }
@149 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 206, i32 20 }, ptr @33, i8 3, i8 3 }
@150 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 206, i32 26 }, ptr @17 }
@151 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 129, i32 38 }, ptr @0, i8 3, i8 3 }
@152 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 132, i32 15 }, ptr @20, i8 3, i8 3 }
@153 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 132, i32 15 }, ptr @21, i8 3, i8 0 }
@154 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 138, i32 54 }, ptr @0, i8 3, i8 3 }
@155 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 138, i32 90 }, ptr @0, i8 3, i8 3 }
@156 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 140, i32 27 }, ptr @0, i8 3, i8 3 }
@157 = private unnamed_addr global { { ptr, i32, i32 }, { ptr, i32, i32 }, i32 } { { ptr, i32, i32 } { ptr @.src, i32 140, i32 20 }, { ptr, i32, i32 } { ptr @.src.2, i32 61, i32 62 }, i32 1 }
@158 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 143, i32 15 }, ptr @20, i8 3, i8 3 }
@159 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 143, i32 15 }, ptr @21, i8 3, i8 1 }
@160 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 144, i32 32 }, ptr @0, i8 3, i8 3 }
@161 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 144, i32 15 }, ptr @20, i8 3, i8 3 }
@162 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 144, i32 15 }, ptr @23, i8 3, i8 1 }
@163 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 145, i32 16 }, ptr @0, i8 3, i8 3 }
@164 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 145, i32 16 }, ptr @33, i8 3, i8 3 }
@165 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 145, i32 22 }, ptr @17 }
@166 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 148, i32 13 }, ptr @17 }
@167 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 21, i32 38 }, ptr @0, i8 3, i8 3 }
@.str.4 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@168 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 30, i32 17 }, ptr @0, i8 3, i8 3 }
@169 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 30, i32 17 }, ptr @2, i8 3, i8 0 }
@170 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 32, i32 53 }, ptr @0, i8 3, i8 3 }
@171 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 32, i32 110 }, ptr @0, i8 3, i8 3 }
@.str.5 = private unnamed_addr constant [31 x i8] c"invalid compression parameters\00", align 1
@172 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 45, i32 34 }, ptr @0, i8 3, i8 3 }
@173 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 46, i32 33 }, ptr @0, i8 3, i8 3 }
@174 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 47, i32 16 }, ptr @0, i8 3, i8 3 }
@175 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 47, i32 16 }, ptr @33, i8 3, i8 3 }
@176 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 62, i32 38 }, ptr @0, i8 3, i8 3 }
@177 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 65, i32 16 }, ptr @0, i8 3, i8 3 }
@178 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 65, i32 16 }, ptr @19, i8 3, i8 0 }
@179 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 69, i32 16 }, ptr @0, i8 3, i8 3 }
@180 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 70, i32 28 }, ptr @0, i8 3, i8 3 }
@181 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 72, i32 46 }, ptr @2, i8 2, i8 0 }
@182 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 80, i32 16 }, ptr @0, i8 3, i8 3 }
@183 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 85, i32 16 }, ptr @0, i8 3, i8 3 }
@184 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 94, i32 55 }, ptr @0, i8 3, i8 3 }
@185 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 94, i32 55 }, ptr @33, i8 3, i8 3 }
@186 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 95, i32 46 }, ptr @0, i8 3, i8 3 }
@187 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 95, i32 57 }, ptr @0, i8 3, i8 3 }
@188 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 95, i32 57 }, ptr @33, i8 3, i8 3 }
@189 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 96, i32 50 }, ptr @2, i8 2, i8 0 }
@190 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 100, i32 42 }, ptr @0, i8 3, i8 3 }
@191 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 100, i32 42 }, ptr @19, i8 3, i8 0 }
@192 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 101, i32 41 }, ptr @0, i8 3, i8 3 }
@193 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 102, i32 40 }, ptr @0, i8 3, i8 3 }
@194 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 102, i32 24 }, ptr @0, i8 3, i8 3 }
@195 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 102, i32 24 }, ptr @33, i8 3, i8 3 }
@196 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 104, i32 20 }, ptr @0, i8 3, i8 3 }
@197 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 104, i32 20 }, ptr @33, i8 3, i8 3 }
@.str.6 = private unnamed_addr constant [39 x i8] c"internal error: deflate stream corrupt\00", align 1
@198 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 114, i32 14 }, ptr @19 }
@199 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 119, i32 16 }, ptr @0, i8 3, i8 3 }

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @zng_gzwrite(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !func_sanitize !42 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %0 to i64, !nosanitize !12  ; 3 uses
  %i.c = and i64 %i.b, 7, !nosanitize !12
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !12     ; 2 uses
  br i1 %i.d, label %bb.d, label %bb.c, !prof !13, !nosanitize !12

bb.c:                                             ; preds = %bb.b
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @1, i64 %i.b) #13, !nosanitize !12
  br label %bb.d, !nosanitize !12

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = ptrtoint ptr %i.e to i64, !nosanitize !12 ; 2 uses
  %i.g = and i64 %i.f, 7, !nosanitize !12
  %i.h = icmp eq i64 %i.g, 0, !nosanitize !12
  br i1 %i.h, label %bb.f, label %bb.e, !prof !13, !nosanitize !12

bb.e:                                             ; preds = %bb.d
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @3, i64 %i.f) #13, !nosanitize !12
  br label %bb.f, !nosanitize !12

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.i = load i32, ptr %i.e, align 8, !tbaa !21
  %.not = icmp eq i32 %i.i, 31153
  br i1 %.not, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  br i1 %i.d, label %bb.i, label %bb.h, !prof !13, !nosanitize !12

bb.h:                                             ; preds = %bb.g
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @4, i64 %i.b) #13, !nosanitize !12
  br label %bb.i, !nosanitize !12

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.k = load i32, ptr %i.j, align 4, !tbaa !22
  %.not11 = icmp eq i32 %i.k, 0
  br i1 %.not11, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.l = icmp slt i32 %2, 0
  br i1 %i.l, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @zng_gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull @.str) #13
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.m = zext nneg i32 %2 to i64
  %i.n = call fastcc i64 @gz_write(ptr noundef %0, ptr noundef %1, i64 noundef %i.m)
  %i.o = trunc i64 %i.n to i32
  br label %bb.m

bb.m:                                             ; preds = %bb.f, %bb.i, %bb.a, %bb.l, %bb.k
  %.0 = phi i32 [ %i.o, %bb.l ], [ 0, %bb.a ], [ 0, %bb.k ], [ 0, %bb.i ], [ 0, %bb.f ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: uwtable
declare void @__ubsan_handle_type_mismatch_v1(ptr, i64) local_unnamed_addr #2

declare hidden void @zng_gz_error(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef i64 @gz_write(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 !func_sanitize !44 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %.critedge71, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %0 to i64, !nosanitize !12  ; 22 uses
  %i.c = and i64 %i.b, 7, !nosanitize !12
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !12     ; 18 uses
  br i1 %i.d, label %bb.d, label %bb.c, !prof !13, !nosanitize !12

bb.c:                                             ; preds = %bb.b
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @117, i64 %i.b) #13, !nosanitize !12
  br label %bb.d, !nosanitize !12

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.f = ptrtoint ptr %i.e to i64, !nosanitize !12 ; 4 uses
  %i.g = and i64 %i.f, 7, !nosanitize !12
  %i.h = icmp eq i64 %i.g, 0, !nosanitize !12     ; 3 uses
  br i1 %i.h, label %bb.f, label %bb.e, !prof !13, !nosanitize !12

bb.e:                                             ; preds = %bb.d
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @118, i64 %i.f) #13, !nosanitize !12
  br label %bb.f, !nosanitize !12

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.i = load i32, ptr %i.e, align 8, !tbaa !23
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.k = call fastcc i32 @gz_write_init(ptr noundef %0)
  %i.l = icmp eq i32 %i.k, -1
  br i1 %i.l, label %.critedge71, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  br i1 %i.d, label %bb.j, label %bb.i, !prof !13, !nosanitize !12

bb.i:                                             ; preds = %bb.h
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @119, i64 %i.b) #13, !nosanitize !12
  br label %bb.j, !nosanitize !12

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !24
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  br i1 %i.d, label %.critedge, label %bb.l, !prof !13, !nosanitize !12

bb.l:                                             ; preds = %bb.k
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @120, i64 %i.b) #13, !nosanitize !12
  store i32 0, ptr %i.m, align 8, !tbaa !24
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @121, i64 %i.b) #13, !nosanitize !12
  br label %bb.m, !nosanitize !12

.critedge:                                        ; preds = %bb.k
  store i32 0, ptr %i.m, align 8, !tbaa !24
  br label %bb.m

bb.m:                                             ; preds = %.critedge, %bb.l
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.p = load i64, ptr %i.o, align 8, !tbaa !25
  %i.q = call fastcc i32 @gz_zero(ptr noundef %0, i64 noundef %i.p)
  %i.r = icmp eq i32 %i.q, -1
  br i1 %i.r, label %.critedge71, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j
  br i1 %i.d, label %bb.p, label %bb.o, !prof !13, !nosanitize !12

bb.o:                                             ; preds = %bb.n
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @122, i64 %i.b) #13, !nosanitize !12
  br label %bb.p, !nosanitize !12

bb.p:                                             ; preds = %bb.o, %bb.n
  br i1 %i.h, label %bb.r, label %bb.q, !prof !13, !nosanitize !12

bb.q:                                             ; preds = %bb.p
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @123, i64 %i.f) #13, !nosanitize !12
  br label %bb.r, !nosanitize !12

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.s = load i32, ptr %i.e, align 8, !tbaa !23
  %i.t = zext i32 %i.s to i64
  %i.u = icmp ult i64 %2, %i.t
  br i1 %i.u, label %.preheader, label %bb.bj

.preheader:                                       ; preds = %bb.r
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %.preheader, %bb.bi
  %.059 = phi ptr [ %i.bt, %bb.bi ], [ %1, %.preheader ] ; 4 uses
  %.057 = phi i64 [ %i.cb, %bb.bi ], [ %2, %.preheader ] ; 3 uses
  br i1 %i.d, label %bb.u, label %bb.t, !prof !13, !nosanitize !12

bb.t:                                             ; preds = %bb.s
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @124, i64 %i.b) #13, !nosanitize !12
  br label %bb.u, !nosanitize !12

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.z = load i32, ptr %i.w, align 8, !tbaa !45
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.v, label %bb.aa

bb.v:                                             ; preds = %bb.u
  br i1 %i.d, label %bb.x, label %bb.w, !prof !13, !nosanitize !12

bb.w:                                             ; preds = %bb.v
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @125, i64 %i.b) #13, !nosanitize !12
  br label %bb.x, !nosanitize !12

bb.x:                                             ; preds = %bb.v, %bb.w
  %i.ab = load ptr, ptr %i.x, align 8, !tbaa !26
  br i1 %i.d, label %bb.z, label %bb.y, !prof !13, !nosanitize !12

bb.y:                                             ; preds = %bb.x
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @126, i64 %i.b) #13, !nosanitize !12
  br label %bb.z, !nosanitize !12

bb.z:                                             ; preds = %bb.y, %bb.x
end_hunk_0
begin_hunk_1_@gz_write:bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ae
  %i.ag = ptrtoint ptr %i.ac to i64, !nosanitize !12 ; 3 uses
  %i.ah = add i64 %i.ae, %i.ag, !nosanitize !12   ; 3 uses
  %i.ai = icmp ne ptr %i.ac, null, !nosanitize !12
  %i.aj = icmp eq i64 %i.ah, 0
  %i.ak = xor i1 %i.ai, %i.aj
  %i.al = icmp uge i64 %i.ah, %i.ag, !nosanitize !12
  %i.am = and i1 %i.al, %i.ak, !nosanitize !12
  br i1 %i.am, label %bb.ag, label %bb.af, !prof !13, !nosanitize !12

bb.af:                                            ; preds = %bb.ae
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @129, i64 %i.ag, i64 %i.ah) #13, !nosanitize !12
  br label %bb.ag, !nosanitize !12

bb.ag:                                            ; preds = %bb.af, %bb.ae
  br i1 %i.d, label %bb.ai, label %bb.ah, !prof !13, !nosanitize !12

bb.ah:                                            ; preds = %bb.ag
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @130, i64 %i.b) #13, !nosanitize !12
  br label %bb.ai, !nosanitize !12

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  %i.an = load ptr, ptr %i.x, align 8, !tbaa !26
  %i.ao = ptrtoint ptr %i.af to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap                    ; 3 uses
  %i.ar = trunc i64 %i.aq to i32
  br i1 %i.d, label %bb.ak, label %bb.aj, !prof !13, !nosanitize !12

bb.aj:                                            ; preds = %bb.ai
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @131, i64 %i.b) #13, !nosanitize !12
  br label %bb.ak, !nosanitize !12

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  br i1 %i.h, label %bb.am, label %bb.al, !prof !13, !nosanitize !12

bb.al:                                            ; preds = %bb.ak
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @132, i64 %i.f) #13, !nosanitize !12
  br label %bb.am, !nosanitize !12

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.as = load i32, ptr %i.e, align 8, !tbaa !23  ; 2 uses
  %i.at = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %i.as, i32 %i.ar), !nosanitize !12 ; 2 uses
  %i.au = extractvalue { i32, i1 } %i.at, 0, !nosanitize !12
  %i.av = extractvalue { i32, i1 } %i.at, 1, !nosanitize !12
  br i1 %i.av, label %bb.an, label %bb.ao, !prof !27, !nosanitize !12

bb.an:                                            ; preds = %bb.am
  %i.aw = zext i32 %i.as to i64, !nosanitize !12
  %i.ax = and i64 %i.aq, 4294967295
  call void @__ubsan_handle_sub_overflow(ptr nonnull @133, i64 %i.aw, i64 %i.ax) #14, !nosanitize !12
  br label %bb.ao, !nosanitize !12

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.ay = zext i32 %i.au to i64
  %spec.select75 = call i64 @llvm.umin.i64(i64 %.057, i64 %i.ay) ; 9 uses
  %spec.select = trunc nuw i64 %spec.select75 to i32
  br i1 %i.d, label %bb.aq, label %bb.ap, !prof !13, !nosanitize !12

bb.ap:                                            ; preds = %bb.ao
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @134, i64 %i.b) #13, !nosanitize !12
  br label %bb.aq, !nosanitize !12

bb.aq:                                            ; preds = %bb.ao, %bb.ap
  %i.az = load ptr, ptr %i.x, align 8, !tbaa !26  ; 3 uses
  %i.ba = and i64 %i.aq, 4294967295               ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ba
  %i.bc = ptrtoint ptr %i.az to i64, !nosanitize !12 ; 3 uses
  %i.bd = add i64 %i.ba, %i.bc, !nosanitize !12   ; 3 uses
  %i.be = icmp ne ptr %i.az, null                 ; 2 uses
  %i.bf = icmp eq i64 %i.bd, 0
  %i.bg = xor i1 %i.be, %i.bf
  %i.bh = icmp uge i64 %i.bd, %i.bc, !nosanitize !12
  %i.bi = and i1 %i.bh, %i.bg, !nosanitize !12
  br i1 %i.bi, label %bb.as, label %bb.ar, !prof !13, !nosanitize !12

bb.ar:                                            ; preds = %bb.aq
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @135, i64 %i.bc, i64 %i.bd) #13, !nosanitize !12
  br label %bb.as, !nosanitize !12

bb.as:                                            ; preds = %bb.ar, %bb.aq
  br i1 %i.be, label %bb.au, label %bb.at, !prof !13, !nosanitize !12

bb.at:                                            ; preds = %bb.as
  call void @__ubsan_handle_nonnull_arg(ptr nonnull @136) #13, !nosanitize !12
  br label %bb.au, !nosanitize !12

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.bj = icmp ne ptr %.059, null, !nosanitize !12 ; 2 uses
  br i1 %i.bj, label %bb.aw, label %bb.av, !prof !13, !nosanitize !12

bb.av:                                            ; preds = %bb.au
  call void @__ubsan_handle_nonnull_arg(ptr nonnull @137) #13, !nosanitize !12
  br label %bb.aw, !nosanitize !12

bb.aw:                                            ; preds = %bb.av, %bb.au
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bb, ptr align 1 %.059, i64 %spec.select75, i1 false)
  br i1 %i.d, label %bb.ay, label %bb.ax, !prof !13, !nosanitize !12

bb.ax:                                            ; preds = %bb.aw
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @138, i64 %i.b) #13, !nosanitize !12
  br label %bb.ay, !nosanitize !12

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.bk = load i32, ptr %i.w, align 8, !tbaa !45  ; 2 uses
  %i.bl = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.bk, i32 %spec.select), !nosanitize !12 ; 2 uses
  %i.bm = extractvalue { i32, i1 } %i.bl, 0, !nosanitize !12
  %i.bn = extractvalue { i32, i1 } %i.bl, 1, !nosanitize !12
  br i1 %i.bn, label %bb.az, label %bb.ba, !prof !27, !nosanitize !12

bb.az:                                            ; preds = %bb.ay
  %i.bo = zext i32 %i.bk to i64, !nosanitize !12
  call void @__ubsan_handle_add_overflow(ptr nonnull @139, i64 %i.bo, i64 %spec.select75) #14, !nosanitize !12
  br label %bb.ba, !nosanitize !12

bb.ba:                                            ; preds = %bb.az, %bb.ay
  store i32 %i.bm, ptr %i.w, align 8, !tbaa !45
  br i1 %i.d, label %.critedge88, label %bb.bb, !prof !13, !nosanitize !12

bb.bb:                                            ; preds = %bb.ba
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @140, i64 %i.b) #13, !nosanitize !12
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @141, i64 %i.b) #13, !nosanitize !12
  br label %.critedge88, !nosanitize !12

.critedge88:                                      ; preds = %bb.bb, %bb.ba
  %i.bp = load i64, ptr %i.y, align 8, !tbaa !28  ; 2 uses
  %i.bq = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.bp, i64 %spec.select75), !nosanitize !12 ; 2 uses
  %i.br = extractvalue { i64, i1 } %i.bq, 0, !nosanitize !12
  %i.bs = extractvalue { i64, i1 } %i.bq, 1, !nosanitize !12
  br i1 %i.bs, label %bb.bc, label %bb.bd, !prof !27, !nosanitize !12

bb.bc:                                            ; preds = %.critedge88
  call void @__ubsan_handle_add_overflow(ptr nonnull @142, i64 %i.bp, i64 %spec.select75) #13, !nosanitize !12
  br label %bb.bd, !nosanitize !12

bb.bd:                                            ; preds = %bb.bc, %.critedge88
  store i64 %i.br, ptr %i.y, align 8, !tbaa !28
  %i.bt = getelementptr inbounds nuw i8, ptr %.059, i64 %spec.select75
  %i.bu = ptrtoint ptr %.059 to i64, !nosanitize !12 ; 3 uses
  %i.bv = add i64 %spec.select75, %i.bu, !nosanitize !12 ; 3 uses
  %i.bw = icmp eq i64 %i.bv, 0
  %i.bx = xor i1 %i.bj, %i.bw
  %i.by = icmp uge i64 %i.bv, %i.bu, !nosanitize !12
  %i.bz = and i1 %i.by, %i.bx, !nosanitize !12
  br i1 %i.bz, label %bb.bf, label %bb.be, !prof !13, !nosanitize !12

bb.be:                                            ; preds = %bb.bd
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @143, i64 %i.bu, i64 %i.bv) #13, !nosanitize !12
  br label %bb.bf, !nosanitize !12

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.ca = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %.057, i64 %spec.select75), !nosanitize !12 ; 2 uses
  %i.cb = extractvalue { i64, i1 } %i.ca, 0, !nosanitize !12 ; 2 uses
  %i.cc = extractvalue { i64, i1 } %i.ca, 1, !nosanitize !12
  br i1 %i.cc, label %bb.bg, label %bb.bh, !prof !27, !nosanitize !12

bb.bg:                                            ; preds = %bb.bf
  call void @__ubsan_handle_sub_overflow(ptr nonnull @144, i64 %.057, i64 %spec.select75) #14, !nosanitize !12
  br label %bb.bh, !nosanitize !12

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.not69 = icmp eq i64 %i.cb, 0
  br i1 %.not69, label %.critedge71, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.cd = call fastcc i32 @gz_comp(ptr noundef %0, i32 noundef 0)
  %i.ce = icmp eq i32 %i.cd, -1
  br i1 %i.ce, label %.critedge71, label %bb.s

bb.bj:                                            ; preds = %bb.r
  br i1 %i.d, label %bb.bl, label %bb.bk, !prof !13, !nosanitize !12

bb.bk:                                            ; preds = %bb.bj
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @145, i64 %i.b) #13, !nosanitize !12
  br label %bb.bl, !nosanitize !12

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !45
  %.not65 = icmp eq i32 %i.ch, 0
  br i1 %.not65, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ci = call fastcc i32 @gz_comp(ptr noundef %0, i32 noundef 0)
  %i.cj = icmp eq i32 %i.ci, -1
  br i1 %i.cj, label %.critedge71, label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  br i1 %i.d, label %bb.bp, label %bb.bo, !prof !13, !nosanitize !12

bb.bo:                                            ; preds = %bb.bn
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @146, i64 %i.b) #13, !nosanitize !12
  br label %bb.bp, !nosanitize !12

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  store ptr %1, ptr %i.cf, align 8, !tbaa !46
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bw, %bb.bp
  %.158 = phi i64 [ %2, %bb.bp ], [ %3, %bb.bw ]  ; 2 uses
  %spec.select7074 = call i64 @llvm.umin.i64(i64 %.158, i64 4294967295) ; 4 uses
  %spec.select70 = trunc nuw i64 %spec.select7074 to i32 ; 2 uses
  br i1 %i.d, label %.critedge90, label %bb.br, !prof !13, !nosanitize !12

bb.br:                                            ; preds = %bb.bq
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @147, i64 %i.b) #13, !nosanitize !12
  store i32 %spec.select70, ptr %i.cg, align 8, !tbaa !45
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @148, i64 %i.b) #13, !nosanitize !12
  br label %bb.bs, !nosanitize !12

.critedge90:                                      ; preds = %bb.bq
  store i32 %spec.select70, ptr %i.cg, align 8, !tbaa !45
  br label %bb.bs

bb.bs:                                            ; preds = %.critedge90, %bb.br
  br i1 %i.d, label %.critedge92, label %bb.bt, !prof !13, !nosanitize !12

bb.bt:                                            ; preds = %bb.bs
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @149, i64 %i.b) #13, !nosanitize !12
  br label %.critedge92, !nosanitize !12

.critedge92:                                      ; preds = %bb.bs, %bb.bt
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !28 ; 2 uses
  %i.cm = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.cl, i64 %spec.select7074), !nosanitize !12 ; 2 uses
  %i.cn = extractvalue { i64, i1 } %i.cm, 0, !nosanitize !12
  %i.co = extractvalue { i64, i1 } %i.cm, 1, !nosanitize !12
  br i1 %i.co, label %bb.bu, label %bb.bv, !prof !27, !nosanitize !12

bb.bu:                                            ; preds = %.critedge92
  call void @__ubsan_handle_add_overflow(ptr nonnull @150, i64 %i.cl, i64 %spec.select7074) #13, !nosanitize !12
  br label %bb.bv, !nosanitize !12

bb.bv:                                            ; preds = %bb.bu, %.critedge92
  store i64 %i.cn, ptr %i.ck, align 8, !tbaa !28
  %i.cp = call fastcc i32 @gz_comp(ptr noundef %0, i32 noundef 0)
  %.not66 = icmp eq i32 %i.cp, -1
  br i1 %.not66, label %.critedge71, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %3 = sub nuw i64 %.158, %spec.select7074        ; 2 uses
  %.not67 = icmp eq i64 %3, 0
  br i1 %.not67, label %.critedge71, label %bb.bq, !llvm.loop !43

.critedge71:                                      ; preds = %bb.bv, %bb.bw, %bb.bh, %bb.bi, %bb.bm, %bb.m, %bb.g, %bb.a
  %.4 = phi i64 [ %2, %bb.bh ], [ 0, %bb.a ], [ 0, %bb.g ], [ 0, %bb.bm ], [ 0, %bb.m ], [ 0, %bb.bi ], [ 0, %bb.bv ], [ %2, %bb.bw ]
  ret i64 %.4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @zng_gzfwrite(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 !func_sanitize !47 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  %i.b = icmp eq ptr %3, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %3 to i64, !nosanitize !12  ; 3 uses
  %i.d = and i64 %i.c, 7, !nosanitize !12
  %i.e = icmp eq i64 %i.d, 0, !nosanitize !12     ; 2 uses
  br i1 %i.e, label %bb.d, label %bb.c, !prof !13, !nosanitize !12

bb.c:                                             ; preds = %bb.b
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @5, i64 %i.c) #13, !nosanitize !12
  br label %bb.d, !nosanitize !12

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.g = ptrtoint ptr %i.f to i64, !nosanitize !12 ; 2 uses
  %i.h = and i64 %i.g, 7, !nosanitize !12
  %i.i = icmp eq i64 %i.h, 0, !nosanitize !12
  br i1 %i.i, label %bb.f, label %bb.e, !prof !13, !nosanitize !12

bb.e:                                             ; preds = %bb.d
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @6, i64 %i.g) #13, !nosanitize !12
  br label %bb.f, !nosanitize !12

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.j = load i32, ptr %i.f, align 8, !tbaa !21
  %.not = icmp eq i32 %i.j, 31153
  br i1 %.not, label %bb.g, label %bb.p

bb.g:                                             ; preds = %bb.f
  br i1 %i.e, label %bb.i, label %bb.h, !prof !13, !nosanitize !12

bb.h:                                             ; preds = %bb.g
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @7, i64 %i.c) #13, !nosanitize !12
  br label %bb.i, !nosanitize !12

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 124
  %i.l = load i32, ptr %i.k, align 4, !tbaa !22
  %.not19 = icmp eq i32 %i.l, 0
  br i1 %.not19, label %bb.j, label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.m = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !nosanitize !12 ; 2 uses
  %i.n = extractvalue { i64, i1 } %i.m, 0, !nosanitize !12 ; 3 uses
  %i.o = extractvalue { i64, i1 } %i.m, 1, !nosanitize !12
  br i1 %i.o, label %bb.k, label %bb.l, !prof !27, !nosanitize !12

bb.k:                                             ; preds = %bb.j
  call void @__ubsan_handle_mul_overflow(ptr nonnull @9, i64 %2, i64 %1) #14, !nosanitize !12
  br label %bb.l, !nosanitize !12

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.p = udiv i64 %i.n, %1
  %.not20 = icmp eq i64 %i.p, %2
  br i1 %.not20, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @zng_gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.1) #13
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %.not21 = icmp eq i64 %i.n, 0
  br i1 %.not21, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.q = call fastcc i64 @gz_write(ptr noundef %3, ptr noundef %0, i64 noundef %i.n)
  %i.r = udiv i64 %i.q, %1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.f, %bb.i, %bb.a, %bb.m
  %.0 = phi i64 [ 0, %bb.f ], [ 0, %bb.a ], [ 0, %bb.n ], [ 0, %bb.m ], [ 0, %bb.i ], [ %i.r, %bb.o ]
  ret i64 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #4

; Function Attrs: uwtable
declare void @__ubsan_handle_mul_overflow(ptr, i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 256) i32 @zng_gzputc(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !func_sanitize !30 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.ap, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %0 to i64, !nosanitize !12  ; 14 uses
  %i.d = and i64 %i.c, 7, !nosanitize !12
  %i.e = icmp eq i64 %i.d, 0, !nosanitize !12     ; 10 uses
  br i1 %i.e, label %.thread, label %bb.c, !prof !13, !nosanitize !12

bb.c:                                             ; preds = %bb.b
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @10, i64 %i.c) #13, !nosanitize !12
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @11, i64 %i.c) #13, !nosanitize !12
  br label %.thread, !nosanitize !12

.thread:                                          ; preds = %bb.b, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = ptrtoint ptr %i.g to i64, !nosanitize !12 ; 2 uses
  %i.i = and i64 %i.h, 7, !nosanitize !12
  %i.j = icmp eq i64 %i.i, 0, !nosanitize !12
  br i1 %i.j, label %bb.e, label %bb.d, !prof !13, !nosanitize !12

bb.d:                                             ; preds = %.thread
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @12, i64 %i.h) #13, !nosanitize !12
  br label %bb.e, !nosanitize !12

bb.e:                                             ; preds = %bb.d, %.thread
  %i.k = load i32, ptr %i.g, align 8, !tbaa !21
  %.not = icmp eq i32 %i.k, 31153
  br i1 %.not, label %bb.f, label %bb.ap

bb.f:                                             ; preds = %bb.e
  br i1 %i.e, label %bb.h, label %bb.g, !prof !13, !nosanitize !12

bb.g:                                             ; preds = %bb.f
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @13, i64 %i.c) #13, !nosanitize !12
  br label %bb.h, !nosanitize !12

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.m = load i32, ptr %i.l, align 4, !tbaa !22
  %.not29 = icmp eq i32 %i.m, 0
  br i1 %.not29, label %bb.i, label %bb.ap

bb.i:                                             ; preds = %bb.h
  br i1 %i.e, label %bb.k, label %bb.j, !prof !13, !nosanitize !12

bb.j:                                             ; preds = %bb.i
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @14, i64 %i.c) #13, !nosanitize !12
  br label %bb.k, !nosanitize !12

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !24
  %.not30 = icmp eq i32 %i.o, 0
  br i1 %.not30, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  br i1 %i.e, label %.critedge, label %bb.m, !prof !13, !nosanitize !12

bb.m:                                             ; preds = %bb.l
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @15, i64 %i.c) #13, !nosanitize !12
  store i32 0, ptr %i.n, align 8, !tbaa !24
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @16, i64 %i.c) #13, !nosanitize !12
  br label %bb.n, !nosanitize !12

.critedge:                                        ; preds = %bb.l
  store i32 0, ptr %i.n, align 8, !tbaa !24
  br label %bb.n

bb.n:                                             ; preds = %.critedge, %bb.m
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.q = load i64, ptr %i.p, align 8, !tbaa !25
  %i.r = call fastcc i32 @gz_zero(ptr noundef %0, i64 noundef %i.q)
  %i.s = icmp eq i32 %i.r, -1
  br i1 %i.s, label %bb.ap, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.k
  br i1 %i.e, label %bb.q, label %bb.p, !prof !13, !nosanitize !12

bb.p:                                             ; preds = %bb.o
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @18, i64 %i.c) #13, !nosanitize !12
  br label %bb.q, !nosanitize !12

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !23
  %.not31 = icmp eq i32 %i.u, 0
  br i1 %.not31, label %bb.ao, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !31
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  br i1 %i.e, label %bb.u, label %bb.t, !prof !13, !nosanitize !12

bb.t:                                             ; preds = %bb.s
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @22, i64 %i.c) #13, !nosanitize !12
  br label %bb.u, !nosanitize !12

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !26
  store ptr %i.z, ptr %i.f, align 8, !tbaa !32
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.r
  %i.aa = load ptr, ptr %i.f, align 8, !tbaa !32  ; 3 uses
  %i.ab = load i32, ptr %i.v, align 8, !tbaa !31
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ac
  %i.ae = ptrtoint ptr %i.aa to i64, !nosanitize !12 ; 3 uses
  %i.af = add i64 %i.ac, %i.ae, !nosanitize !12   ; 3 uses
  %i.ag = icmp ne ptr %i.aa, null, !nosanitize !12
  %i.ah = icmp eq i64 %i.af, 0
  %i.ai = xor i1 %i.ag, %i.ah
  %i.aj = icmp uge i64 %i.af, %i.ae, !nosanitize !12
  %i.ak = and i1 %i.aj, %i.ai, !nosanitize !12
  br i1 %i.ak, label %bb.x, label %bb.w, !prof !13, !nosanitize !12

bb.w:                                             ; preds = %bb.v
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @24, i64 %i.ae, i64 %i.af) #13, !nosanitize !12
  br label %bb.x, !nosanitize !12

bb.x:                                             ; preds = %bb.w, %bb.v
  br i1 %i.e, label %bb.z, label %bb.y, !prof !13, !nosanitize !12

bb.y:                                             ; preds = %bb.x
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @25, i64 %i.c) #13, !nosanitize !12
  br label %bb.z, !nosanitize !12

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !26
  %i.an = ptrtoint ptr %i.ad to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao                    ; 2 uses
  %i.aq = trunc i64 %i.ap to i32
  br i1 %i.e, label %bb.ab, label %bb.aa, !prof !13, !nosanitize !12

bb.aa:                                            ; preds = %bb.z
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @26, i64 %i.c) #13, !nosanitize !12
  br label %bb.ab, !nosanitize !12

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %i.ar = load i32, ptr %i.t, align 8, !tbaa !23
  %i.as = icmp ugt i32 %i.ar, %i.aq
  br i1 %i.as, label %bb.ac, label %bb.ao

bb.ac:                                            ; preds = %bb.ab
  %i.at = trunc i32 %1 to i8
  br i1 %i.e, label %bb.ae, label %bb.ad, !prof !13, !nosanitize !12

bb.ad:                                            ; preds = %bb.ac
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @27, i64 %i.c) #13, !nosanitize !12
  br label %bb.ae, !nosanitize !12

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %i.au = load ptr, ptr %i.al, align 8, !tbaa !26 ; 3 uses
  %i.av = and i64 %i.ap, 4294967295               ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.av ; 2 uses
  %i.ax = ptrtoint ptr %i.au to i64, !nosanitize !12 ; 3 uses
  %i.ay = add i64 %i.av, %i.ax, !nosanitize !12   ; 3 uses
  %i.az = icmp ne ptr %i.au, null, !nosanitize !12 ; 2 uses
  %i.ba = icmp eq i64 %i.ay, 0
  %i.bb = xor i1 %i.az, %i.ba
  %i.bc = icmp uge i64 %i.ay, %i.ax, !nosanitize !12
  %i.bd = and i1 %i.bc, %i.bb, !nosanitize !12
  br i1 %i.bd, label %bb.ag, label %bb.af, !prof !13, !nosanitize !12

bb.af:                                            ; preds = %bb.ae
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @28, i64 %i.ax, i64 %i.ay) #13, !nosanitize !12
  br label %bb.ag, !nosanitize !12

bb.ag:                                            ; preds = %bb.af, %bb.ae
  br i1 %i.az, label %bb.ai, label %bb.ah, !prof !13, !nosanitize !12

bb.ah:                                            ; preds = %bb.ag
  %i.be = ptrtoint ptr %i.aw to i64, !nosanitize !12
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @30, i64 %i.be) #13, !nosanitize !12
  br label %bb.ai, !nosanitize !12

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  store i8 %i.at, ptr %i.aw, align 1, !tbaa !33
  %i.bf = load i32, ptr %i.v, align 8, !tbaa !31  ; 2 uses
  %i.bg = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.bf, i32 1), !nosanitize !12 ; 2 uses
  %i.bh = extractvalue { i32, i1 } %i.bg, 0, !nosanitize !12
  %i.bi = extractvalue { i32, i1 } %i.bg, 1, !nosanitize !12
  br i1 %i.bi, label %bb.aj, label %bb.ak, !prof !27, !nosanitize !12

bb.aj:                                            ; preds = %bb.ai
  %i.bj = zext i32 %i.bf to i64, !nosanitize !12
  call void @__ubsan_handle_add_overflow(ptr nonnull @31, i64 %i.bj, i64 1) #14, !nosanitize !12
  br label %bb.ak, !nosanitize !12

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  store i32 %i.bh, ptr %i.v, align 8, !tbaa !31
  br i1 %i.e, label %.critedge35, label %bb.al, !prof !13, !nosanitize !12

bb.al:                                            ; preds = %bb.ak
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @32, i64 %i.c) #13, !nosanitize !12
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @34, i64 %i.c) #13, !nosanitize !12
  br label %.critedge35, !nosanitize !12

.critedge35:                                      ; preds = %bb.ak, %bb.al
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !28 ; 2 uses
  %i.bm = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.bl, i64 1), !nosanitize !12 ; 2 uses
  %i.bn = extractvalue { i64, i1 } %i.bm, 0, !nosanitize !12
  %i.bo = extractvalue { i64, i1 } %i.bm, 1, !nosanitize !12
  br i1 %i.bo, label %bb.am, label %bb.an, !prof !27, !nosanitize !12

bb.am:                                            ; preds = %.critedge35
  call void @__ubsan_handle_add_overflow(ptr nonnull @35, i64 %i.bl, i64 1) #13, !nosanitize !12
  br label %bb.an, !nosanitize !12

bb.an:                                            ; preds = %bb.am, %.critedge35
  store i64 %i.bn, ptr %i.bk, align 8, !tbaa !28
  %i.bp = and i32 %1, 255
  br label %bb.ap

bb.ao:                                            ; preds = %bb.ab, %bb.q
  %i.bq = trunc i32 %1 to i8
  store i8 %i.bq, ptr %i.a, align 1, !tbaa !33
  %i.br = call fastcc i64 @gz_write(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef 1)
  %.not32 = icmp eq i64 %i.br, 1
  %i.bs = and i32 %1, 255
  %spec.select = select i1 %.not32, i32 %i.bs, i32 -1
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.n, %bb.e, %bb.h, %bb.a, %bb.an
  %.0 = phi i32 [ %spec.select, %bb.ao ], [ -1, %bb.a ], [ -1, %bb.e ], [ %i.bp, %bb.an ], [ -1, %bb.n ], [ -1, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @gz_zero(ptr noundef nonnull %0, i64 noundef %1) unnamed_addr #0 !func_sanitize !49 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64, !nosanitize !12  ; 13 uses
  %i.b = and i64 %i.a, 7, !nosanitize !12
  %i.c = icmp eq i64 %i.b, 0, !nosanitize !12     ; 10 uses
  br i1 %i.c, label %bb.c, label %bb.b, !prof !13, !nosanitize !12

bb.b:                                             ; preds = %bb.a
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @151, i64 %i.a) #13, !nosanitize !12
  br label %bb.c, !nosanitize !12

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.e = ptrtoint ptr %i.d to i64, !nosanitize !12 ; 8 uses
  %i.f = and i64 %i.e, 7, !nosanitize !12
  %i.g = icmp eq i64 %i.f, 0, !nosanitize !12     ; 5 uses
  br i1 %i.g, label %bb.e, label %bb.d, !prof !13, !nosanitize !12

bb.d:                                             ; preds = %bb.c
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @152, i64 %i.e) #13, !nosanitize !12
  br label %bb.e, !nosanitize !12

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  %i.i = ptrtoint ptr %i.h to i64, !nosanitize !12 ; 4 uses
  %i.j = and i64 %i.i, 7, !nosanitize !12
  %i.k = icmp eq i64 %i.j, 0, !nosanitize !12     ; 3 uses
  br i1 %i.k, label %bb.g, label %bb.f, !prof !13, !nosanitize !12

bb.f:                                             ; preds = %bb.e
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @153, i64 %i.i) #13, !nosanitize !12
  br label %bb.g, !nosanitize !12

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.l = load i32, ptr %i.h, align 8, !tbaa !31
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = call fastcc i32 @gz_comp(ptr noundef %0, i32 noundef 0)
  %i.n = icmp eq i32 %i.m, -1
  br i1 %i.n, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.not2225 = icmp eq i64 %1, 0
  br i1 %.not2225, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  br i1 %i.c, label %bb.k, label %bb.j, !prof !13, !nosanitize !12

bb.j:                                             ; preds = %.lr.ph
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @154, i64 %i.a) #13, !nosanitize !12
  br label %bb.k, !nosanitize !12

bb.k:                                             ; preds = %.lr.ph, %bb.j
  %i.r = load i32, ptr %i.o, align 8, !tbaa !23
  %i.s = zext i32 %i.r to i64
  %i.t = icmp slt i64 %1, %i.s
  br i1 %i.t, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  br i1 %i.c, label %bb.n, label %bb.m, !prof !13, !nosanitize !12

bb.m:                                             ; preds = %bb.l
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @155, i64 %i.a) #13, !nosanitize !12
  br label %bb.n, !nosanitize !12

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.u = load i32, ptr %i.o, align 8, !tbaa !23
  br label %bb.p

bb.o:                                             ; preds = %bb.k
  %i.v = trunc i64 %1 to i32
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.w = phi i32 [ %i.v, %bb.o ], [ %i.u, %bb.n ] ; 3 uses
  br i1 %i.c, label %bb.r, label %bb.q, !prof !13, !nosanitize !12

bb.q:                                             ; preds = %bb.p
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @156, i64 %i.a) #13, !nosanitize !12
  br label %bb.r, !nosanitize !12

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.x = load ptr, ptr %i.p, align 8, !tbaa !26   ; 2 uses
  %i.y = zext i32 %i.w to i64
  %.not24.peel = icmp eq ptr %i.x, null, !nosanitize !12
  br i1 %.not24.peel, label %bb.s, label %bb.t, !prof !27, !nosanitize !12

bb.s:                                             ; preds = %bb.r
  call void @__ubsan_handle_nonnull_arg(ptr nonnull @157) #13, !nosanitize !12
  br label %bb.t, !nosanitize !12

bb.t:                                             ; preds = %bb.r, %bb.s
  call void @llvm.memset.p0.i64(ptr align 1 %i.x, i8 0, i64 %i.y, i1 false)
  br i1 %i.g, label %bb.v, label %bb.u, !prof !13, !nosanitize !12

bb.u:                                             ; preds = %bb.t
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @158, i64 %i.e) #13, !nosanitize !12
  br label %bb.v, !nosanitize !12

bb.v:                                             ; preds = %bb.u, %bb.t
  br i1 %i.k, label %bb.x, label %bb.w, !prof !13, !nosanitize !12

bb.w:                                             ; preds = %bb.v
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @159, i64 %i.i) #13, !nosanitize !12
  br label %bb.x, !nosanitize !12

bb.x:                                             ; preds = %bb.w, %bb.v
  store i32 %i.w, ptr %i.h, align 8, !tbaa !31
  br i1 %i.c, label %bb.z, label %bb.y, !prof !13, !nosanitize !12

bb.y:                                             ; preds = %bb.x
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @160, i64 %i.a) #13, !nosanitize !12
  br label %bb.z, !nosanitize !12

bb.z:                                             ; preds = %bb.x, %bb.y
  %i.z = load ptr, ptr %i.p, align 8, !tbaa !26
  br i1 %i.g, label %.critedge, label %bb.aa, !prof !13, !nosanitize !12

bb.aa:                                            ; preds = %bb.z
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @161, i64 %i.e) #13, !nosanitize !12
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @162, i64 %i.e) #13, !nosanitize !12
  br label %.critedge, !nosanitize !12

.critedge:                                        ; preds = %bb.z, %bb.aa
  store ptr %i.z, ptr %i.d, align 8, !tbaa !32
  %i.aa = zext i32 %i.w to i64                    ; 4 uses
  br i1 %i.c, label %.critedge34, label %bb.ab, !prof !13, !nosanitize !12

bb.ab:                                            ; preds = %.critedge
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @163, i64 %i.a) #13, !nosanitize !12
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @164, i64 %i.a) #13, !nosanitize !12
  br label %.critedge34, !nosanitize !12

.critedge34:                                      ; preds = %bb.ab, %.critedge
  %i.ab = load i64, ptr %i.q, align 8, !tbaa !28  ; 2 uses
  %i.ac = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.ab, i64 %i.aa), !nosanitize !12 ; 2 uses
  %i.ad = extractvalue { i64, i1 } %i.ac, 0, !nosanitize !12
  %i.ae = extractvalue { i64, i1 } %i.ac, 1, !nosanitize !12
  br i1 %i.ae, label %bb.ac, label %bb.ad, !prof !27, !nosanitize !12

bb.ac:                                            ; preds = %.critedge34
  call void @__ubsan_handle_add_overflow(ptr nonnull @165, i64 %i.ab, i64 %i.aa) #13, !nosanitize !12
  br label %bb.ad, !nosanitize !12

bb.ad:                                            ; preds = %bb.ac, %.critedge34
  store i64 %i.ad, ptr %i.q, align 8, !tbaa !28
  %i.af = call fastcc i32 @gz_comp(ptr noundef %0, i32 noundef 0)
  %i.ag = icmp eq i32 %i.af, -1
  br i1 %i.ag, label %.loopexit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ah = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %1, i64 %i.aa), !nosanitize !12 ; 2 uses
  %i.ai = extractvalue { i64, i1 } %i.ah, 0, !nosanitize !12 ; 2 uses
  %i.aj = extractvalue { i64, i1 } %i.ah, 1, !nosanitize !12
  br i1 %i.aj, label %bb.af, label %bb.ag, !prof !27, !nosanitize !12

bb.af:                                            ; preds = %bb.ae
  call void @__ubsan_handle_sub_overflow(ptr nonnull @166, i64 %1, i64 %i.aa) #13, !nosanitize !12
  br label %bb.ag, !nosanitize !12

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.not22.peel = icmp eq i64 %i.ai, 0
  br i1 %.not22.peel, label %.loopexit, label %.peel.next

.peel.next:                                       ; preds = %bb.ag, %bb.ba
  %.02026 = phi i64 [ %i.az, %bb.ba ], [ %i.ai, %bb.ag ] ; 4 uses
  br i1 %i.c, label %bb.ai, label %bb.ah, !prof !13, !nosanitize !12

bb.ah:                                            ; preds = %.peel.next
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @154, i64 %i.a) #13, !nosanitize !12
  br label %bb.ai, !nosanitize !12

bb.ai:                                            ; preds = %.peel.next, %bb.ah
  %i.ak = load i32, ptr %i.o, align 8, !tbaa !23
  %i.al = zext i32 %i.ak to i64
  %i.am = icmp slt i64 %.02026, %i.al
  br i1 %i.am, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.an = trunc i64 %.02026 to i32
  br label %bb.an

bb.ak:                                            ; preds = %bb.ai
  br i1 %i.c, label %bb.am, label %bb.al, !prof !13, !nosanitize !12

bb.al:                                            ; preds = %bb.ak
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @155, i64 %i.a) #13, !nosanitize !12
  br label %bb.am, !nosanitize !12

bb.am:                                            ; preds = %bb.ak, %bb.al
  %i.ao = load i32, ptr %i.o, align 8, !tbaa !23
  br label %bb.an

bb.an:                                            ; preds = %bb.aj, %bb.am
  %i.ap = phi i32 [ %i.an, %bb.aj ], [ %i.ao, %bb.am ] ; 2 uses
  br i1 %i.g, label %bb.ap, label %bb.ao, !prof !13, !nosanitize !12

bb.ao:                                            ; preds = %bb.an
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @158, i64 %i.e) #13, !nosanitize !12
  br label %bb.ap, !nosanitize !12

bb.ap:                                            ; preds = %bb.ao, %bb.an
  br i1 %i.k, label %bb.ar, label %bb.aq, !prof !13, !nosanitize !12

bb.aq:                                            ; preds = %bb.ap
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @159, i64 %i.i) #13, !nosanitize !12
  br label %bb.ar, !nosanitize !12

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  store i32 %i.ap, ptr %i.h, align 8, !tbaa !31
  br i1 %i.c, label %bb.at, label %bb.as, !prof !13, !nosanitize !12

bb.as:                                            ; preds = %bb.ar
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @160, i64 %i.a) #13, !nosanitize !12
  br label %bb.at, !nosanitize !12

bb.at:                                            ; preds = %bb.ar, %bb.as
  %i.aq = load ptr, ptr %i.p, align 8, !tbaa !26
  br i1 %i.g, label %.critedge36, label %bb.au, !prof !13, !nosanitize !12

bb.au:                                            ; preds = %bb.at
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @161, i64 %i.e) #13, !nosanitize !12
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @162, i64 %i.e) #13, !nosanitize !12
  br label %.critedge36, !nosanitize !12

.critedge36:                                      ; preds = %bb.at, %bb.au
  store ptr %i.aq, ptr %i.d, align 8, !tbaa !32
  %i.ar = zext i32 %i.ap to i64                   ; 4 uses
  br i1 %i.c, label %.critedge38, label %bb.av, !prof !13, !nosanitize !12

bb.av:                                            ; preds = %.critedge36
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @163, i64 %i.a) #13, !nosanitize !12
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @164, i64 %i.a) #13, !nosanitize !12
  br label %.critedge38, !nosanitize !12

.critedge38:                                      ; preds = %bb.av, %.critedge36
  %i.as = load i64, ptr %i.q, align 8, !tbaa !28  ; 2 uses
  %i.at = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.as, i64 %i.ar), !nosanitize !12 ; 2 uses
  %i.au = extractvalue { i64, i1 } %i.at, 0, !nosanitize !12
  %i.av = extractvalue { i64, i1 } %i.at, 1, !nosanitize !12
  br i1 %i.av, label %bb.aw, label %bb.ax, !prof !27, !nosanitize !12

bb.aw:                                            ; preds = %.critedge38
  call void @__ubsan_handle_add_overflow(ptr nonnull @165, i64 %i.as, i64 %i.ar) #13, !nosanitize !12
  br label %bb.ax, !nosanitize !12

bb.ax:                                            ; preds = %bb.aw, %.critedge38
  store i64 %i.au, ptr %i.q, align 8, !tbaa !28
  %i.aw = call fastcc i32 @gz_comp(ptr noundef %0, i32 noundef 0)
  %i.ax = icmp eq i32 %i.aw, -1
  br i1 %i.ax, label %.loopexit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ay = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %.02026, i64 %i.ar), !nosanitize !12 ; 2 uses
  %i.az = extractvalue { i64, i1 } %i.ay, 0, !nosanitize !12 ; 2 uses
  %i.ba = extractvalue { i64, i1 } %i.ay, 1, !nosanitize !12
  br i1 %i.ba, label %bb.az, label %bb.ba, !prof !27, !nosanitize !12

bb.az:                                            ; preds = %bb.ay
  call void @__ubsan_handle_sub_overflow(ptr nonnull @166, i64 %.02026, i64 %i.ar) #13, !nosanitize !12
  br label %bb.ba, !nosanitize !12

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.not22 = icmp eq i64 %i.az, 0
  br i1 %.not22, label %.loopexit, label %.peel.next, !llvm.loop !48

.loopexit:                                        ; preds = %bb.ax, %bb.ba, %bb.ad, %bb.ag, %bb.i, %bb.h
  %.021 = phi i32 [ -1, %bb.h ], [ 0, %bb.i ], [ -1, %bb.ad ], [ 0, %bb.ag ], [ 0, %bb.ba ], [ -1, %bb.ax ]
  ret i32 %.021
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #4

; Function Attrs: uwtable
declare void @__ubsan_handle_pointer_overflow(ptr, i64, i64) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #4

; Function Attrs: uwtable
declare void @__ubsan_handle_add_overflow(ptr, i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, -2147483648) i32 @zng_gzputs(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !func_sanitize !51 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %0 to i64, !nosanitize !12  ; 3 uses
  %i.c = and i64 %i.b, 7, !nosanitize !12
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !12     ; 2 uses
  br i1 %i.d, label %bb.d, label %bb.c, !prof !13, !nosanitize !12

bb.c:                                             ; preds = %bb.b
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @36, i64 %i.b) #13, !nosanitize !12
  br label %bb.d, !nosanitize !12

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = ptrtoint ptr %i.e to i64, !nosanitize !12 ; 2 uses
  %i.g = and i64 %i.f, 7, !nosanitize !12
  %i.h = icmp eq i64 %i.g, 0, !nosanitize !12
  br i1 %i.h, label %bb.f, label %bb.e, !prof !13, !nosanitize !12

bb.e:                                             ; preds = %bb.d
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @37, i64 %i.f) #13, !nosanitize !12
  br label %bb.f, !nosanitize !12

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.i = load i32, ptr %i.e, align 8, !tbaa !21
  %.not = icmp eq i32 %i.i, 31153
  br i1 %.not, label %bb.g, label %bb.o

bb.g:                                             ; preds = %bb.f
  br i1 %i.d, label %bb.i, label %bb.h, !prof !13, !nosanitize !12

bb.h:                                             ; preds = %bb.g
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @38, i64 %i.b) #13, !nosanitize !12
  br label %bb.i, !nosanitize !12

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.k = load i32, ptr %i.j, align 4, !tbaa !22
  %.not18 = icmp eq i32 %i.k, 0
  br i1 %.not18, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %.not19 = icmp eq ptr %1, null, !nosanitize !12
  br i1 %.not19, label %bb.k, label %bb.l, !prof !27, !nosanitize !12

bb.k:                                             ; preds = %bb.j
  call void @__ubsan_handle_nonnull_arg(ptr nonnull @39) #13, !nosanitize !12
  br label %bb.l, !nosanitize !12

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.l = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #15 ; 4 uses
  %or.cond = icmp ult i64 %i.l, 2147483648
  br i1 %or.cond, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @zng_gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.3) #13
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.m = trunc nuw nsw i64 %i.l to i32
  %i.n = call fastcc i64 @gz_write(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %i.l)
  %i.o = icmp ult i64 %i.n, %i.l
  %i.p = select i1 %i.o, i32 -1, i32 %i.m
  br label %bb.o

bb.o:                                             ; preds = %bb.f, %bb.i, %bb.a, %bb.n, %bb.m
  %.0 = phi i32 [ %i.p, %bb.n ], [ -1, %bb.a ], [ -1, %bb.m ], [ -1, %bb.i ], [ -1, %bb.f ]
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: uwtable
declare void @__ubsan_handle_nonnull_arg(ptr) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @zng_gzvprintf(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 !func_sanitize !52 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.co, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %0 to i64, !nosanitize !12  ; 27 uses
  %i.c = and i64 %i.b, 7, !nosanitize !12
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !12     ; 23 uses
  br i1 %i.d, label %.thread, label %bb.c, !prof !13, !nosanitize !12

bb.c:                                             ; preds = %bb.b
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @40, i64 %i.b) #13, !nosanitize !12
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @41, i64 %i.b) #13, !nosanitize !12
  br label %.thread, !nosanitize !12

.thread:                                          ; preds = %bb.b, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = ptrtoint ptr %i.f to i64, !nosanitize !12 ; 2 uses
  %i.h = and i64 %i.g, 7, !nosanitize !12
  %i.i = icmp eq i64 %i.h, 0, !nosanitize !12
  br i1 %i.i, label %bb.e, label %bb.d, !prof !13, !nosanitize !12

bb.d:                                             ; preds = %.thread
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @42, i64 %i.g) #13, !nosanitize !12
  br label %bb.e, !nosanitize !12

bb.e:                                             ; preds = %bb.d, %.thread
  %i.j = load i32, ptr %i.f, align 8, !tbaa !21
  %.not = icmp eq i32 %i.j, 31153
  br i1 %.not, label %bb.f, label %bb.co

bb.f:                                             ; preds = %bb.e
  br i1 %i.d, label %bb.h, label %bb.g, !prof !13, !nosanitize !12

bb.g:                                             ; preds = %bb.f
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @43, i64 %i.b) #13, !nosanitize !12
  br label %bb.h, !nosanitize !12

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 4 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !22
  %.not54 = icmp eq i32 %i.l, 0
  br i1 %.not54, label %bb.i, label %bb.co

bb.i:                                             ; preds = %bb.h
  br i1 %i.d, label %bb.k, label %bb.j, !prof !13, !nosanitize !12

bb.j:                                             ; preds = %bb.i
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @44, i64 %i.b) #13, !nosanitize !12
  br label %bb.k, !nosanitize !12

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 9 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !23
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.p = call fastcc i32 @gz_write_init(ptr noundef %0)
  %i.q = icmp eq i32 %i.p, -1
  br i1 %i.q, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  br i1 %i.d, label %bb.o, label %bb.n, !prof !13, !nosanitize !12

bb.n:                                             ; preds = %bb.m
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @45, i64 %i.b) #13, !nosanitize !12
  br label %bb.o, !nosanitize !12

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.r = load i32, ptr %i.k, align 4, !tbaa !22
  br label %bb.co

bb.p:                                             ; preds = %bb.l, %bb.k
  br i1 %i.d, label %bb.r, label %bb.q, !prof !13, !nosanitize !12

bb.q:                                             ; preds = %bb.p
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @46, i64 %i.b) #13, !nosanitize !12
  br label %bb.r, !nosanitize !12

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !24
  %.not55 = icmp eq i32 %i.t, 0
  br i1 %.not55, label %bb.y, label %bb.s

bb.s:                                             ; preds = %bb.r
  br i1 %i.d, label %.critedge, label %bb.t, !prof !13, !nosanitize !12

bb.t:                                             ; preds = %bb.s
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @47, i64 %i.b) #13, !nosanitize !12
  store i32 0, ptr %i.s, align 8, !tbaa !24
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @48, i64 %i.b) #13, !nosanitize !12
  br label %bb.u, !nosanitize !12
end_hunk_1
begin_hunk_2_@zng_gzvprintf:bb.a
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @64, i64 %i.bl, i64 %i.ce) #13, !nosanitize !12
  br label %bb.be, !nosanitize !12

bb.be:                                            ; preds = %bb.bd, %bb.bc
  br i1 %i.ao, label %bb.bg, label %bb.bf, !prof !13, !nosanitize !12

bb.bf:                                            ; preds = %bb.be
  %i.ch = ptrtoint ptr %i.cd to i64, !nosanitize !12
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @65, i64 %i.ch) #13, !nosanitize !12
  br label %bb.bg, !nosanitize !12

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.ci = load i8, ptr %i.cd, align 1, !tbaa !33
  %.not57 = icmp eq i8 %i.ci, 0
  br i1 %.not57, label %bb.bh, label %bb.co

bb.bh:                                            ; preds = %bb.bg
  %i.cj = load i32, ptr %i.z, align 8, !tbaa !31  ; 2 uses
  %i.ck = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.cj, i32 %i.bu), !nosanitize !12 ; 2 uses
  %i.cl = extractvalue { i32, i1 } %i.ck, 0, !nosanitize !12
  %i.cm = extractvalue { i32, i1 } %i.ck, 1, !nosanitize !12
  br i1 %i.cm, label %bb.bi, label %bb.bj, !prof !27, !nosanitize !12

bb.bi:                                            ; preds = %bb.bh
  %i.cn = zext i32 %i.cj to i64, !nosanitize !12
  %i.co = zext i32 %i.bu to i64, !nosanitize !12
  call void @__ubsan_handle_add_overflow(ptr nonnull @66, i64 %i.cn, i64 %i.co) #14, !nosanitize !12
  br label %bb.bj, !nosanitize !12

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  store i32 %i.cl, ptr %i.z, align 8, !tbaa !31
  %i.cp = sext i32 %i.bu to i64                   ; 2 uses
  br i1 %i.d, label %.critedge65, label %bb.bk, !prof !13, !nosanitize !12

bb.bk:                                            ; preds = %bb.bj
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @67, i64 %i.b) #13, !nosanitize !12
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @68, i64 %i.b) #13, !nosanitize !12
  br label %.critedge65, !nosanitize !12

.critedge65:                                      ; preds = %bb.bj, %bb.bk
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !28 ; 2 uses
  %i.cs = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.cr, i64 %i.cp), !nosanitize !12 ; 2 uses
  %i.ct = extractvalue { i64, i1 } %i.cs, 0, !nosanitize !12
  %i.cu = extractvalue { i64, i1 } %i.cs, 1, !nosanitize !12
  br i1 %i.cu, label %bb.bl, label %bb.bm, !prof !27, !nosanitize !12

bb.bl:                                            ; preds = %.critedge65
  call void @__ubsan_handle_add_overflow(ptr nonnull @69, i64 %i.cr, i64 %i.cp) #13, !nosanitize !12
  br label %bb.bm, !nosanitize !12

bb.bm:                                            ; preds = %bb.bl, %.critedge65
  store i64 %i.ct, ptr %i.cq, align 8, !tbaa !28
  %i.cv = load i32, ptr %i.z, align 8, !tbaa !31
  br i1 %i.d, label %bb.bo, label %bb.bn, !prof !13, !nosanitize !12

bb.bn:                                            ; preds = %bb.bm
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @70, i64 %i.b) #13, !nosanitize !12
  br label %bb.bo, !nosanitize !12

bb.bo:                                            ; preds = %bb.bm, %bb.bn
  %i.cw = load i32, ptr %i.m, align 8, !tbaa !23
  %.not58 = icmp ult i32 %i.cv, %i.cw
  br i1 %.not58, label %bb.co, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.cx = load i32, ptr %i.z, align 8, !tbaa !31  ; 2 uses
  br i1 %i.d, label %bb.br, label %bb.bq, !prof !13, !nosanitize !12

bb.bq:                                            ; preds = %bb.bp
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @71, i64 %i.b) #13, !nosanitize !12
  br label %bb.br, !nosanitize !12

bb.br:                                            ; preds = %bb.bp, %bb.bq
  %i.cy = load i32, ptr %i.m, align 8, !tbaa !23  ; 2 uses
  %i.cz = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %i.cx, i32 %i.cy), !nosanitize !12 ; 2 uses
  %i.da = extractvalue { i32, i1 } %i.cz, 0, !nosanitize !12 ; 2 uses
  %i.db = extractvalue { i32, i1 } %i.cz, 1, !nosanitize !12
  br i1 %i.db, label %bb.bs, label %bb.bt, !prof !27, !nosanitize !12

bb.bs:                                            ; preds = %bb.br
  %i.dc = zext i32 %i.cx to i64, !nosanitize !12
  %i.dd = zext i32 %i.cy to i64, !nosanitize !12
  call void @__ubsan_handle_sub_overflow(ptr nonnull @72, i64 %i.dc, i64 %i.dd) #14, !nosanitize !12
  br label %bb.bt, !nosanitize !12

bb.bt:                                            ; preds = %bb.bs, %bb.br
  br i1 %i.d, label %bb.bv, label %bb.bu, !prof !13, !nosanitize !12

bb.bu:                                            ; preds = %bb.bt
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @73, i64 %i.b) #13, !nosanitize !12
  br label %bb.bv, !nosanitize !12

bb.bv:                                            ; preds = %bb.bt, %bb.bu
  %i.de = load i32, ptr %i.m, align 8, !tbaa !23
  store i32 %i.de, ptr %i.z, align 8, !tbaa !31
  %i.df = call fastcc i32 @gz_comp(ptr noundef %0, i32 noundef 0)
  %i.dg = icmp eq i32 %i.df, -1
  br i1 %i.dg, label %bb.bw, label %bb.bz

bb.bw:                                            ; preds = %bb.bv
  br i1 %i.d, label %bb.by, label %bb.bx, !prof !13, !nosanitize !12

bb.bx:                                            ; preds = %bb.bw
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @74, i64 %i.b) #13, !nosanitize !12
  br label %bb.by, !nosanitize !12

bb.by:                                            ; preds = %bb.bw, %bb.bx
  %i.dh = load i32, ptr %i.k, align 4, !tbaa !22
  br label %bb.co

bb.bz:                                            ; preds = %bb.bv
  br i1 %i.d, label %bb.cb, label %bb.ca, !prof !13, !nosanitize !12

bb.ca:                                            ; preds = %bb.bz
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @75, i64 %i.b) #13, !nosanitize !12
  br label %bb.cb, !nosanitize !12

bb.cb:                                            ; preds = %bb.bz, %bb.ca
  %i.di = load ptr, ptr %i.ae, align 8, !tbaa !26 ; 2 uses
  br i1 %i.d, label %bb.cd, label %bb.cc, !prof !13, !nosanitize !12

bb.cc:                                            ; preds = %bb.cb
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @76, i64 %i.b) #13, !nosanitize !12
  br label %bb.cd, !nosanitize !12

bb.cd:                                            ; preds = %bb.cb, %bb.cc
  %i.dj = load ptr, ptr %i.ae, align 8, !tbaa !26 ; 3 uses
  br i1 %i.d, label %bb.cf, label %bb.ce, !prof !13, !nosanitize !12

bb.ce:                                            ; preds = %bb.cd
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @77, i64 %i.b) #13, !nosanitize !12
  br label %bb.cf, !nosanitize !12

bb.cf:                                            ; preds = %bb.cd, %bb.ce
  %i.dk = load i32, ptr %i.m, align 8, !tbaa !23
  %i.dl = zext i32 %i.dk to i64                   ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.dl
  %i.dn = ptrtoint ptr %i.dj to i64, !nosanitize !12 ; 3 uses
  %i.do = add i64 %i.dl, %i.dn, !nosanitize !12   ; 3 uses
  %i.dp = icmp ne ptr %i.dj, null                 ; 2 uses
  %i.dq = icmp eq i64 %i.do, 0
  %i.dr = xor i1 %i.dp, %i.dq
  %i.ds = icmp uge i64 %i.do, %i.dn, !nosanitize !12
  %i.dt = and i1 %i.ds, %i.dr, !nosanitize !12
  br i1 %i.dt, label %bb.ch, label %bb.cg, !prof !13, !nosanitize !12

bb.cg:                                            ; preds = %bb.cf
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @78, i64 %i.dn, i64 %i.do) #13, !nosanitize !12
  br label %bb.ch, !nosanitize !12

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %i.du = zext i32 %i.da to i64
  %.not59 = icmp eq ptr %i.di, null, !nosanitize !12
  br i1 %.not59, label %bb.ci, label %bb.cj, !prof !27, !nosanitize !12

bb.ci:                                            ; preds = %bb.ch
  call void @__ubsan_handle_nonnull_arg(ptr nonnull @79) #13, !nosanitize !12
  br label %bb.cj, !nosanitize !12

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  br i1 %i.dp, label %bb.cl, label %bb.ck, !prof !13, !nosanitize !12

bb.ck:                                            ; preds = %bb.cj
  call void @__ubsan_handle_nonnull_arg(ptr nonnull @80) #13, !nosanitize !12
  br label %bb.cl, !nosanitize !12

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.di, ptr align 1 %i.dm, i64 %i.du, i1 false)
  br i1 %i.d, label %bb.cn, label %bb.cm, !prof !13, !nosanitize !12

bb.cm:                                            ; preds = %bb.cl
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @81, i64 %i.b) #13, !nosanitize !12
  br label %bb.cn, !nosanitize !12

bb.cn:                                            ; preds = %bb.cl, %bb.cm
  %i.dv = load ptr, ptr %i.ae, align 8, !tbaa !26
  store ptr %i.dv, ptr %i.e, align 8, !tbaa !32
  store i32 %i.da, ptr %i.z, align 8, !tbaa !31
  br label %bb.co

bb.co:                                            ; preds = %bb.bo, %bb.cn, %bb.au, %bb.ax, %bb.bg, %bb.e, %bb.h, %bb.a, %bb.by, %bb.x, %bb.o
  %.0 = phi i32 [ 0, %bb.au ], [ -2, %bb.a ], [ %i.r, %bb.o ], [ %i.y, %bb.x ], [ -2, %bb.e ], [ %i.dh, %bb.by ], [ -2, %bb.h ], [ 0, %bb.bg ], [ 0, %bb.ax ], [ %i.bu, %bb.cn ], [ %i.bu, %bb.bo ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @gz_write_init(ptr noundef nonnull %0) unnamed_addr #0 !func_sanitize !53 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64, !nosanitize !12  ; 9 uses
  %i.b = and i64 %i.a, 7, !nosanitize !12
  %i.c = icmp eq i64 %i.b, 0, !nosanitize !12     ; 5 uses
  br i1 %i.c, label %bb.b, label %.thread, !prof !13, !nosanitize !12

bb.b:                                             ; preds = %bb.a
  %i.d = call i32 @gz_buffer_alloc(ptr noundef nonnull %0) #13
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.e, label %bb.c

.thread:                                          ; preds = %bb.a
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @167, i64 %i.a) #13, !nosanitize !12
  %i.e = call i32 @gz_buffer_alloc(ptr noundef nonnull %0) #13
  %.not24 = icmp eq i32 %i.e, 0
  br i1 %.not24, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.thread, %bb.b
  call void @zng_gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #13
  br label %.thread26

bb.d:                                             ; preds = %.thread
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @168, i64 %i.a) #13, !nosanitize !12
  br label %bb.e, !nosanitize !12

bb.e:                                             ; preds = %bb.b, %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.h = ptrtoint ptr %i.g to i64, !nosanitize !12 ; 2 uses
  %i.i = and i64 %i.h, 7, !nosanitize !12
  %i.j = icmp eq i64 %i.i, 0, !nosanitize !12
  br i1 %i.j, label %bb.g, label %bb.f, !prof !13, !nosanitize !12

bb.f:                                             ; preds = %bb.e
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @169, i64 %i.h) #13, !nosanitize !12
  br label %bb.g, !nosanitize !12

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.k = load i32, ptr %i.g, align 8, !tbaa !34
  %.not22 = icmp eq i32 %i.k, 0
  br i1 %.not22, label %bb.h, label %.thread26

bb.h:                                             ; preds = %bb.g
  br i1 %i.c, label %bb.j, label %bb.i, !prof !13, !nosanitize !12

bb.i:                                             ; preds = %bb.h
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @170, i64 %i.a) #13, !nosanitize !12
  br label %bb.j, !nosanitize !12

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.m = load i32, ptr %i.l, align 8, !tbaa !35
  br i1 %i.c, label %bb.l, label %bb.k, !prof !13, !nosanitize !12

bb.k:                                             ; preds = %bb.j
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @171, i64 %i.a) #13, !nosanitize !12
  br label %bb.l, !nosanitize !12

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.o = load i32, ptr %i.n, align 4, !tbaa !36
  %i.p = call i32 @zng_deflateInit2(ptr noundef nonnull %i.f, i32 noundef %i.m, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %i.o) #13 ; 2 uses
  %.not23 = icmp eq i32 %i.p, 0
  br i1 %.not23, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @gz_buffer_free(ptr noundef nonnull %0) #13
  %i.q = icmp eq i32 %i.p, -4
  br i1 %i.q, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @zng_gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #13
  br label %.thread26

bb.o:                                             ; preds = %bb.m
  call void @zng_gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.5) #13
  br label %.thread26

bb.p:                                             ; preds = %bb.l
  store ptr null, ptr %i.f, align 8, !tbaa !32
  br i1 %i.c, label %.critedge28, label %bb.q, !prof !13, !nosanitize !12

bb.q:                                             ; preds = %bb.p
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @172, i64 %i.a) #13, !nosanitize !12
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load i32, ptr %i.r, align 8, !tbaa !23
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %i.s, ptr %i.t, align 8, !tbaa !37
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @173, i64 %i.a) #13, !nosanitize !12
  br label %bb.r, !nosanitize !12

.critedge28:                                      ; preds = %bb.p
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = load i32, ptr %i.u, align 8, !tbaa !23
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %i.v, ptr %i.w, align 8, !tbaa !37
  br label %bb.r

bb.r:                                             ; preds = %.critedge28, %bb.q
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !38   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %i.y, ptr %i.z, align 8, !tbaa !39
  br i1 %i.c, label %.critedge, label %bb.s, !prof !13, !nosanitize !12

bb.s:                                             ; preds = %bb.r
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @174, i64 %i.a) #13, !nosanitize !12
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @175, i64 %i.a) #13, !nosanitize !12
  br label %.critedge, !nosanitize !12

.critedge:                                        ; preds = %bb.r, %bb.s
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.y, ptr %i.aa, align 8, !tbaa !40
  br label %.thread26

.thread26:                                        ; preds = %bb.o, %bb.n, %bb.g, %.critedge, %bb.c
  %.1 = phi i32 [ -1, %bb.c ], [ 0, %bb.g ], [ 0, %.critedge ], [ -1, %bb.n ], [ -1, %bb.o ]
  ret i32 %.1
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) #4

; Function Attrs: uwtable
declare void @__ubsan_handle_sub_overflow(ptr, i64, i64) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @gz_comp(ptr noundef nonnull %0, i32 noundef range(i32 0, 6) %1) unnamed_addr #0 !func_sanitize !55 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64, !nosanitize !12  ; 20 uses
  %i.b = and i64 %i.a, 7, !nosanitize !12
  %i.c = icmp eq i64 %i.b, 0, !nosanitize !12     ; 13 uses
  br i1 %i.c, label %.thread, label %bb.b, !prof !13, !nosanitize !12

bb.b:                                             ; preds = %bb.a
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @176, i64 %i.a) #13, !nosanitize !12
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @177, i64 %i.a) #13, !nosanitize !12
  br label %.thread, !nosanitize !12

.thread:                                          ; preds = %bb.a, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.f = ptrtoint ptr %i.e to i64, !nosanitize !12 ; 3 uses
  %i.g = and i64 %i.f, 7, !nosanitize !12
  %i.h = icmp eq i64 %i.g, 0, !nosanitize !12     ; 2 uses
  br i1 %i.h, label %bb.d, label %bb.c, !prof !13, !nosanitize !12

bb.c:                                             ; preds = %.thread
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @178, i64 %i.f) #13, !nosanitize !12
  br label %bb.d, !nosanitize !12

bb.d:                                             ; preds = %bb.c, %.thread
  %i.i = load i32, ptr %i.e, align 8, !tbaa !23
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = call fastcc i32 @gz_write_init(ptr noundef %0)
  %i.l = icmp eq i32 %i.k, -1
  br i1 %i.l, label %bb.bc, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br i1 %i.c, label %bb.h, label %bb.g, !prof !13, !nosanitize !12

bb.g:                                             ; preds = %bb.f
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @179, i64 %i.a) #13, !nosanitize !12
  br label %bb.h, !nosanitize !12

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.n = load i32, ptr %i.m, align 8, !tbaa !34
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.q, label %bb.i

bb.i:                                             ; preds = %bb.h
  br i1 %i.c, label %bb.k, label %bb.j, !prof !13, !nosanitize !12

bb.j:                                             ; preds = %bb.i
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @180, i64 %i.a) #13, !nosanitize !12
  br label %bb.k, !nosanitize !12

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.p = load i32, ptr %i.o, align 4, !tbaa !41
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !32
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !31
  %i.t = zext i32 %i.s to i64
  %i.u = call i64 @write(i32 noundef %i.p, ptr noundef %i.q, i64 noundef %i.t) #13 ; 2 uses
  %i.v = icmp slt i64 %i.u, 0
  br i1 %i.v, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = trunc i64 %i.u to i32
  %i.x = load i32, ptr %i.r, align 8, !tbaa !31
  %.not60 = icmp eq i32 %i.x, %i.w
  br i1 %.not60, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.y = call ptr @__errno_location() #16         ; 3 uses
  %i.z = icmp ne ptr %i.y, null, !nosanitize !12
  %i.aa = ptrtoint ptr %i.y to i64, !nosanitize !12 ; 2 uses
  %i.ab = and i64 %i.aa, 3, !nosanitize !12
  %i.ac = icmp eq i64 %i.ab, 0, !nosanitize !12
  %i.ad = and i1 %i.z, %i.ac, !nosanitize !12
  br i1 %i.ad, label %bb.o, label %bb.n, !prof !13, !nosanitize !12

bb.n:                                             ; preds = %bb.m
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @181, i64 %i.aa) #13, !nosanitize !12
  br label %bb.o, !nosanitize !12

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ae = load i32, ptr %i.y, align 4, !tbaa !56
  %i.af = call ptr @strerror(i32 noundef %i.ae) #13
  call void @zng_gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %i.af) #13
  br label %bb.bc

bb.p:                                             ; preds = %bb.l
  store i32 0, ptr %i.r, align 8, !tbaa !31
  br label %bb.bc

bb.q:                                             ; preds = %bb.h
  br i1 %i.c, label %bb.s, label %bb.r, !prof !13, !nosanitize !12

bb.r:                                             ; preds = %bb.q
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @182, i64 %i.a) #13, !nosanitize !12
  br label %bb.s, !nosanitize !12

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !57
  %.not55 = icmp eq i32 %i.ah, 0
  br i1 %.not55, label %._crit_edge, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !31
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.bc, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.al = call i32 @zng_deflateReset(ptr noundef nonnull %i.d) #13 ; 0 uses
  br i1 %i.c, label %bb.w, label %bb.v, !prof !13, !nosanitize !12

bb.v:                                             ; preds = %bb.u
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @183, i64 %i.a) #13, !nosanitize !12
  br label %bb.w, !nosanitize !12

bb.w:                                             ; preds = %bb.u, %bb.v
  store i32 0, ptr %i.ag, align 8, !tbaa !57
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.s, %bb.w
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 5 uses
  %.not56 = icmp ne i32 %1, 0
  %i.an = icmp ne i32 %1, 4                       ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.ax, %._crit_edge
  %.0 = phi i32 [ 0, %._crit_edge ], [ %i.bx, %bb.ax ]
  %i.as = load i32, ptr %i.am, align 8, !tbaa !37
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.au = icmp eq i32 %.0, 1
  %or.cond = or i1 %i.an, %i.au
  %or.cond62 = and i1 %.not56, %or.cond
  br i1 %or.cond62, label %bb.z, label %bb.at

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.av = load ptr, ptr %i.ao, align 8, !tbaa !39
  br i1 %i.c, label %.critedge, label %bb.aa, !prof !13, !nosanitize !12

bb.aa:                                            ; preds = %bb.z
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @184, i64 %i.a) #13, !nosanitize !12
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @185, i64 %i.a) #13, !nosanitize !12
  br label %.critedge, !nosanitize !12

.critedge:                                        ; preds = %bb.aa, %bb.z
  %i.aw = load ptr, ptr %i.ap, align 8, !tbaa !40
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay                    ; 2 uses
  %i.ba = trunc i64 %i.az to i32                  ; 2 uses
  %.not57 = icmp eq i32 %i.ba, 0
  br i1 %.not57, label %bb.ai, label %bb.ab

bb.ab:                                            ; preds = %.critedge
  br i1 %i.c, label %bb.ad, label %bb.ac, !prof !13, !nosanitize !12

bb.ac:                                            ; preds = %bb.ab
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @186, i64 %i.a) #13, !nosanitize !12
  br label %bb.ad, !nosanitize !12

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  %i.bb = load i32, ptr %i.aq, align 4, !tbaa !41
  br i1 %i.c, label %.critedge74, label %bb.ae, !prof !13, !nosanitize !12

bb.ae:                                            ; preds = %bb.ad
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @187, i64 %i.a) #13, !nosanitize !12
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @188, i64 %i.a) #13, !nosanitize !12
  br label %.critedge74, !nosanitize !12

.critedge74:                                      ; preds = %bb.ae, %bb.ad
  %i.bc = load ptr, ptr %i.ap, align 8, !tbaa !40
  %i.bd = and i64 %i.az, 4294967295
  %i.be = call i64 @write(i32 noundef %i.bb, ptr noundef %i.bc, i64 noundef %i.bd) #13 ; 2 uses
  %i.bf = icmp sgt i64 %i.be, -1
  %i.bg = trunc i64 %i.be to i32
  %.not58 = icmp eq i32 %i.bg, %i.ba
  %or.cond61 = and i1 %i.bf, %.not58
  br i1 %or.cond61, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %.critedge74
  %i.bh = call ptr @__errno_location() #16        ; 3 uses
  %i.bi = icmp ne ptr %i.bh, null, !nosanitize !12
  %i.bj = ptrtoint ptr %i.bh to i64, !nosanitize !12 ; 2 uses
  %i.bk = and i64 %i.bj, 3, !nosanitize !12
  %i.bl = icmp eq i64 %i.bk, 0, !nosanitize !12
  %i.bm = and i1 %i.bi, %i.bl, !nosanitize !12
  br i1 %i.bm, label %bb.ah, label %bb.ag, !prof !13, !nosanitize !12

bb.ag:                                            ; preds = %bb.af
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @189, i64 %i.bj) #13, !nosanitize !12
  br label %bb.ah, !nosanitize !12

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.bn = load i32, ptr %i.bh, align 4, !tbaa !56
  %i.bo = call ptr @strerror(i32 noundef %i.bn) #13
  call void @zng_gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %i.bo) #13
  br label %bb.bc

bb.ai:                                            ; preds = %.critedge74, %.critedge
  %i.bp = load i32, ptr %i.am, align 8, !tbaa !37
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %bb.aj, label %bb.ar

bb.aj:                                            ; preds = %bb.ai
  br i1 %i.c, label %bb.al, label %bb.ak, !prof !13, !nosanitize !12

bb.ak:                                            ; preds = %bb.aj
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @190, i64 %i.a) #13, !nosanitize !12
  br label %bb.al, !nosanitize !12

bb.al:                                            ; preds = %bb.ak, %bb.aj
  br i1 %i.h, label %bb.an, label %bb.am, !prof !13, !nosanitize !12

bb.am:                                            ; preds = %bb.al
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @191, i64 %i.f) #13, !nosanitize !12
  br label %bb.an, !nosanitize !12

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.br = load i32, ptr %i.e, align 8, !tbaa !23
  store i32 %i.br, ptr %i.am, align 8, !tbaa !37
  br i1 %i.c, label %.critedge80, label %bb.ao, !prof !13, !nosanitize !12

bb.ao:                                            ; preds = %bb.an
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @192, i64 %i.a) #13, !nosanitize !12
  %i.bs = load ptr, ptr %i.ar, align 8, !tbaa !38
  store ptr %i.bs, ptr %i.ao, align 8, !tbaa !39
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @193, i64 %i.a) #13, !nosanitize !12
  br label %bb.ap, !nosanitize !12

.critedge80:                                      ; preds = %bb.an
  %i.bt = load ptr, ptr %i.ar, align 8, !tbaa !38
  store ptr %i.bt, ptr %i.ao, align 8, !tbaa !39
  br label %bb.ap

bb.ap:                                            ; preds = %.critedge80, %bb.ao
  %i.bu = load ptr, ptr %i.ar, align 8, !tbaa !38
  br i1 %i.c, label %.critedge76, label %bb.aq, !prof !13, !nosanitize !12

bb.aq:                                            ; preds = %bb.ap
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @194, i64 %i.a) #13, !nosanitize !12
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @195, i64 %i.a) #13, !nosanitize !12
  br label %.critedge76, !nosanitize !12

.critedge76:                                      ; preds = %bb.aq, %bb.ap
  store ptr %i.bu, ptr %i.ap, align 8, !tbaa !40
  br label %bb.ar

bb.ar:                                            ; preds = %.critedge76, %bb.ai
  %i.bv = load ptr, ptr %i.ao, align 8, !tbaa !39
  br i1 %i.c, label %.critedge78, label %bb.as, !prof !13, !nosanitize !12

bb.as:                                            ; preds = %bb.ar
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @196, i64 %i.a) #13, !nosanitize !12
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @197, i64 %i.a) #13, !nosanitize !12
  br label %.critedge78, !nosanitize !12

.critedge78:                                      ; preds = %bb.as, %bb.ar
  store ptr %i.bv, ptr %i.ap, align 8, !tbaa !40
  br label %bb.at

bb.at:                                            ; preds = %.critedge78, %bb.y
  %i.bw = load i32, ptr %i.am, align 8, !tbaa !37 ; 3 uses
  %i.bx = call i32 @zng_deflate(ptr noundef nonnull %i.d, i32 noundef %1) #13 ; 2 uses
  %i.by = icmp eq i32 %i.bx, -2
  br i1 %i.by, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  call void @zng_gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #13
  br label %bb.bc

bb.av:                                            ; preds = %bb.at
  %i.bz = load i32, ptr %i.am, align 8, !tbaa !37 ; 3 uses
  %i.ca = icmp ult i32 %i.bw, %i.bz
  br i1 %i.ca, label %bb.aw, label %bb.ax, !prof !27, !nosanitize !12

bb.aw:                                            ; preds = %bb.av
  %i.cb = zext i32 %i.bw to i64, !nosanitize !12
  %i.cc = zext i32 %i.bz to i64, !nosanitize !12
  call void @__ubsan_handle_sub_overflow(ptr nonnull @198, i64 %i.cb, i64 %i.cc) #14, !nosanitize !12
  br label %bb.ax, !nosanitize !12

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.not59 = icmp eq i32 %i.bw, %i.bz
  br i1 %.not59, label %bb.ay, label %bb.x, !llvm.loop !54

bb.ay:                                            ; preds = %bb.ax
  br i1 %i.an, label %bb.bc, label %bb.az

bb.az:                                            ; preds = %bb.ay
  br i1 %i.c, label %bb.bb, label %bb.ba, !prof !13, !nosanitize !12

bb.ba:                                            ; preds = %bb.az
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @199, i64 %i.a) #13, !nosanitize !12
  br label %bb.bb, !nosanitize !12

bb.bb:                                            ; preds = %bb.az, %bb.ba
  store i32 1, ptr %i.ag, align 8, !tbaa !57
  br label %bb.bc

bb.bc:                                            ; preds = %bb.ay, %bb.bb, %bb.t, %bb.e, %bb.au, %bb.ah, %bb.p, %bb.o
  %.049 = phi i32 [ 0, %bb.t ], [ -1, %bb.o ], [ 0, %bb.p ], [ -1, %bb.e ], [ -1, %bb.ah ], [ -1, %bb.au ], [ 0, %bb.bb ], [ 0, %bb.ay ]
  ret i32 %.049
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @zng_gzprintf(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ...) local_unnamed_addr #0 !func_sanitize !58 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.a = call i32 @zng_gzvprintf(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2)
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret i32 %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #7

; Function Attrs: nounwind uwtable
define dso_local i32 @zng_gzflush(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !func_sanitize !30 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %0 to i64, !nosanitize !12  ; 7 uses
  %i.c = and i64 %i.b, 7, !nosanitize !12
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !12     ; 6 uses
  br i1 %i.d, label %bb.d, label %bb.c, !prof !13, !nosanitize !12

bb.c:                                             ; preds = %bb.b
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @82, i64 %i.b) #13, !nosanitize !12
  br label %bb.d, !nosanitize !12

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = ptrtoint ptr %i.e to i64, !nosanitize !12 ; 2 uses
  %i.g = and i64 %i.f, 7, !nosanitize !12
  %i.h = icmp eq i64 %i.g, 0, !nosanitize !12
  br i1 %i.h, label %bb.f, label %bb.e, !prof !13, !nosanitize !12

bb.e:                                             ; preds = %bb.d
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @83, i64 %i.f) #13, !nosanitize !12
  br label %bb.f, !nosanitize !12

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.i = load i32, ptr %i.e, align 8, !tbaa !21
  %.not = icmp eq i32 %i.i, 31153
  br i1 %.not, label %bb.g, label %bb.r

bb.g:                                             ; preds = %bb.f
  br i1 %i.d, label %bb.i, label %bb.h, !prof !13, !nosanitize !12

bb.h:                                             ; preds = %bb.g
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @84, i64 %i.b) #13, !nosanitize !12
  br label %bb.i, !nosanitize !12

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !22
  %.not17 = icmp ne i32 %i.k, 0
  %or.cond = icmp ugt i32 %1, 4
  %or.cond19 = or i1 %or.cond, %.not17
  br i1 %or.cond19, label %bb.r, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %i.d, label %bb.l, label %bb.k, !prof !13, !nosanitize !12

bb.k:                                             ; preds = %bb.j
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @85, i64 %i.b) #13, !nosanitize !12
  br label %bb.l, !nosanitize !12

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !24
  %.not18 = icmp eq i32 %i.m, 0
  br i1 %.not18, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  br i1 %i.d, label %.critedge, label %bb.n, !prof !13, !nosanitize !12

bb.n:                                             ; preds = %bb.m
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @86, i64 %i.b) #13, !nosanitize !12
  store i32 0, ptr %i.l, align 8, !tbaa !24
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @87, i64 %i.b) #13, !nosanitize !12
  br label %bb.o, !nosanitize !12

.critedge:                                        ; preds = %bb.m
  store i32 0, ptr %i.l, align 8, !tbaa !24
  br label %bb.o

bb.o:                                             ; preds = %.critedge, %bb.n
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.o = load i64, ptr %i.n, align 8, !tbaa !25
  %i.p = call fastcc i32 @gz_zero(ptr noundef %0, i64 noundef %i.o)
  %i.q = icmp eq i32 %i.p, -1
  br i1 %i.q, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  br i1 %i.d, label %.sink.split, label %.sink.split.sink.split, !prof !13, !nosanitize !12

bb.q:                                             ; preds = %bb.o, %bb.l
  %i.r = call fastcc i32 @gz_comp(ptr noundef %0, i32 noundef %1) ; 0 uses
  br i1 %i.d, label %.sink.split, label %.sink.split.sink.split, !prof !13, !nosanitize !12

.sink.split.sink.split:                           ; preds = %bb.q, %bb.p
  %.sink = phi ptr [ @88, %bb.p ], [ @89, %bb.q ]
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull %.sink, i64 %i.b) #13, !nosanitize !12
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %bb.q, %bb.p
  %i.s = load i32, ptr %i.j, align 4, !tbaa !22
  br label %bb.r

bb.r:                                             ; preds = %.sink.split, %bb.f, %bb.i, %bb.a
  %.0 = phi i32 [ -2, %bb.i ], [ -2, %bb.a ], [ -2, %bb.f ], [ %i.s, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @zng_gzsetparams(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 !func_sanitize !59 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.am, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %0 to i64, !nosanitize !12  ; 15 uses
  %i.c = and i64 %i.b, 7, !nosanitize !12
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !12     ; 11 uses
  br i1 %i.d, label %.thread, label %bb.c, !prof !13, !nosanitize !12

bb.c:                                             ; preds = %bb.b
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @90, i64 %i.b) #13, !nosanitize !12
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @91, i64 %i.b) #13, !nosanitize !12
  br label %.thread, !nosanitize !12

.thread:                                          ; preds = %bb.b, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = ptrtoint ptr %i.f to i64, !nosanitize !12 ; 2 uses
  %i.h = and i64 %i.g, 7, !nosanitize !12
  %i.i = icmp eq i64 %i.h, 0, !nosanitize !12
  br i1 %i.i, label %bb.e, label %bb.d, !prof !13, !nosanitize !12

bb.d:                                             ; preds = %.thread
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @92, i64 %i.g) #13, !nosanitize !12
  br label %bb.e, !nosanitize !12

bb.e:                                             ; preds = %bb.d, %.thread
  %i.j = load i32, ptr %i.f, align 8, !tbaa !21
  %.not = icmp eq i32 %i.j, 31153
  br i1 %.not, label %bb.f, label %bb.am

bb.f:                                             ; preds = %bb.e
  br i1 %i.d, label %bb.h, label %bb.g, !prof !13, !nosanitize !12

bb.g:                                             ; preds = %bb.f
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @93, i64 %i.b) #13, !nosanitize !12
  br label %bb.h, !nosanitize !12

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 3 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !22
  %.not27 = icmp eq i32 %i.l, 0
  br i1 %.not27, label %bb.i, label %bb.am

bb.i:                                             ; preds = %bb.h
  br i1 %i.d, label %bb.k, label %bb.j, !prof !13, !nosanitize !12

bb.j:                                             ; preds = %bb.i
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @94, i64 %i.b) #13, !nosanitize !12
  br label %bb.k, !nosanitize !12

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.n = load i32, ptr %i.m, align 8, !tbaa !34
  %.not28 = icmp eq i32 %i.n, 0
  br i1 %.not28, label %bb.l, label %bb.am

bb.l:                                             ; preds = %bb.k
  br i1 %i.d, label %bb.n, label %bb.m, !prof !13, !nosanitize !12

bb.m:                                             ; preds = %bb.l
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @95, i64 %i.b) #13, !nosanitize !12
  br label %bb.n, !nosanitize !12

end_hunk_2
