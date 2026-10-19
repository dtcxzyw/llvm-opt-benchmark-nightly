Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/mesh_contact?download=true
inline.NumInlined: 110
inline.NumDeleted: 45
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0
@68 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 729, i32 4 }, ptr @67, ptr @51 }
@69 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 729, i32 4 } }
@70 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 729, i32 4 } }
@71 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 729, i32 4 }, ptr @67, ptr @51 }
@72 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 729, i32 4 } }
@73 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 729, i32 4 } }
@74 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 729, i32 4 } }
@75 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 729, i32 4 }, ptr @40, i8 2, i8 3 }
@76 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 729, i32 4 }, ptr @6 }
@77 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 729, i32 4 } }
@78 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 729, i32 4 }, ptr @40, i8 2, i8 3 }
@79 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 729, i32 4 }, ptr @67, ptr @51 }
@80 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 729, i32 4 } }
@81 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 729, i32 4 } }
@82 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 737, i32 44 } }
@83 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 737, i32 44 }, ptr @40, i8 2, i8 3 }
@84 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 737, i32 25 } }
@85 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 737, i32 25 }, ptr @27, i8 3, i8 0 }
@86 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 739, i32 49 }, ptr @16, i8 3, i8 3 }
@87 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 786, i32 44 }, ptr @6 }
@88 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 786, i32 5 } }
@89 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 786, i32 5 }, ptr @27, i8 3, i8 1 }
@90 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 797, i32 25 } }
@91 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 797, i32 25 }, ptr @27, i8 3, i8 0 }
@92 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 798, i32 27 }, ptr @16, i8 3, i8 3 }
@93 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 829, i32 43 }, ptr @6 }
@94 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 829, i32 4 } }
@95 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 829, i32 4 }, ptr @27, i8 3, i8 1 }
@96 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 856, i32 3 } }
@97 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 856, i32 3 }, ptr @6, i8 2, i8 1 }
@98 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 858, i32 37 } }
@99 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 858, i32 37 }, ptr @27, i8 3, i8 0 }
@100 = private unnamed_addr constant { i16, i16, [61 x i8] } { i16 -1, i16 0, [61 x i8] c"'const b3LocalManifold' (aka 'const struct b3LocalManifold')\00" }
@101 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 859, i32 34 }, ptr @100, i8 3, i8 3 }
@102 = private unnamed_addr constant { i16, i16, [12 x i8] } { i16 0, i16 11, [12 x i8] c"'const int'\00" }
@103 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 859, i32 21 }, ptr @6 }
@104 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 872, i32 36 } }
@105 = private unnamed_addr constant { i16, i16, [37 x i8] } { i16 -1, i16 0, [37 x i8] c"'b3Cluster' (aka 'struct b3Cluster')\00" }
@106 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 872, i32 36 }, ptr @105, i8 3, i8 3 }
@107 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 915, i32 4 } }
@108 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 915, i32 4 }, ptr @105, i8 3, i8 3 }
@109 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 915, i32 41 }, ptr @6 }
@110 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 919, i32 4 } }
@111 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 919, i32 4 }, ptr @105, i8 3, i8 3 }
@112 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 923, i32 17 }, ptr @6 }
@113 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 938, i32 33 } }
@114 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 939, i32 35 } }
@115 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 939, i32 12 }, ptr @105, i8 3, i8 3 }
@116 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 941, i32 15 }, ptr @6 }
@117 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 947, i32 22 } }
@118 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 947, i32 22 }, ptr @6, i8 2, i8 0 }
@119 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 955, i32 25 } }
@120 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 955, i32 25 }, ptr @27, i8 3, i8 0 }
@121 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 956, i32 28 } }
@122 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 957, i32 28 }, ptr @16, i8 3, i8 3 }
@123 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 960, i32 42 } }
@124 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 961, i32 35 }, ptr @105, i8 3, i8 3 }
@125 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 961, i32 42 } }
@126 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 963, i32 8 }, ptr @32, i8 2, i8 3 }
@127 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 964, i32 20 }, ptr @32, i8 2, i8 3 }
@128 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 967, i32 19 }, ptr @6 }
@129 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 974, i32 28 } }
@130 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 976, i32 43 }, ptr @105, i8 3, i8 3 }
@.src.1 = private unnamed_addr constant [22 x i8] c"/usr/include/string.h\00", align 1
@131 = private unnamed_addr global { { ptr, i32, i32 }, { ptr, i32, i32 }, i32 } { { ptr, i32, i32 } { ptr @.src, i32 986, i32 11 }, { ptr, i32, i32 } { ptr @.src.1, i32 44, i32 28 }, i32 1 }
@132 = private unnamed_addr constant { i16, i16, [43 x i8] } { i16 -1, i16 0, [43 x i8] c"'b3Manifold *' (aka 'struct b3Manifold *')\00" }
@133 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 986, i32 11 }, ptr @132, i8 2, i8 1 }
@134 = private unnamed_addr global { { ptr, i32, i32 }, { ptr, i32, i32 }, i32 } { { ptr, i32, i32 } { ptr @.src, i32 986, i32 25 }, { ptr, i32, i32 } { ptr @.src.1, i32 44, i32 28 }, i32 2 }
@135 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 986, i32 25 }, ptr @132, i8 2, i8 0 }
@136 = private unnamed_addr global { { ptr, i32, i32 }, { ptr, i32, i32 }, i32 } { { ptr, i32, i32 } { ptr @.src, i32 999, i32 11 }, { ptr, i32, i32 } { ptr @.src.1, i32 61, i32 62 }, i32 1 }
@137 = private unnamed_addr global { { ptr, i32, i32 }, { ptr, i32, i32 }, i32 } { { ptr, i32, i32 } { ptr @.src, i32 1006, i32 11 }, { ptr, i32, i32 } { ptr @.src.1, i32 61, i32 62 }, i32 1 }
@138 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1015, i32 28 } }
@139 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1016, i32 24 }, ptr @105, i8 3, i8 3 }
@140 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1019, i32 45 } }
@141 = private unnamed_addr constant { i16, i16, [39 x i8] } { i16 -1, i16 0, [39 x i8] c"'b3Manifold' (aka 'struct b3Manifold')\00" }
@142 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1020, i32 13 }, ptr @141, i8 2, i8 3 }
@143 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1029, i32 9 } }
@144 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1029, i32 9 }, ptr @18, i8 0, i8 0 }
@145 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1029, i32 9 }, ptr @18 }
@146 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1034, i32 23 } }
@147 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1034, i32 23 }, ptr @141, i8 2, i8 3 }
@148 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1045, i32 35 } }
@149 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1046, i32 49 }, ptr @141, i8 2, i8 3 }
@150 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1049, i32 4 } }
@151 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1054, i32 52 } }
@152 = private unnamed_addr constant { i16, i16, [55 x i8] } { i16 -1, i16 0, [55 x i8] c"'b3ManifoldPoint[4]' (aka 'struct b3ManifoldPoint[4]')\00" }
@153 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1055, i32 47 }, ptr @152, ptr @6 }
@154 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1055, i32 47 } }
@155 = private unnamed_addr constant { i16, i16, [71 x i8] } { i16 -1, i16 0, [71 x i8] c"'const b3LocalManifoldPoint' (aka 'const struct b3LocalManifoldPoint')\00" }
@156 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1058, i32 48 }, ptr @155, i8 2, i8 3 }
@157 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1067, i32 42 }, ptr @141, i8 2, i8 3 }
@158 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1070, i32 55 }, ptr @152, ptr @6 }
@159 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1070, i32 55 } }
@160 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1109, i32 46 } }
@161 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1110, i32 31 }, ptr @141, i8 2, i8 3 }
@162 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1113, i32 25 }, ptr @152, ptr @6 }
@163 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1113, i32 25 } }
@164 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1117, i32 22 } }
@165 = private unnamed_addr constant { i16, i16, [44 x i8] } { i16 0, i16 6, [44 x i8] c"'const uint8_t' (aka 'const unsigned char')\00" }
@166 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1117, i32 22 }, ptr @165, i8 0, i8 0 }
@167 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1121, i32 23 } }
@168 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1121, i32 23 }, ptr @102, i8 2, i8 0 }
@169 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1126, i32 22 } }
@170 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1126, i32 22 }, ptr @165, i8 0, i8 0 }
@171 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1129, i32 73 }, ptr @6 }
@172 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1130, i32 34 } }
@173 = private unnamed_addr constant { i16, i16, [65 x i8] } { i16 -1, i16 0, [65 x i8] c"'const b3SurfaceMaterial' (aka 'const struct b3SurfaceMaterial')\00" }
@174 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1130, i32 34 }, ptr @173, i8 3, i8 0 }
@175 = private unnamed_addr constant { i16, i16, [56 x i8] } { i16 -1, i16 0, [56 x i8] c"'float (*)(float, unsigned long, float, unsigned long)'\00" }
@176 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1131, i32 17 }, ptr @175 }
@177 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1131, i32 97 }, ptr @173, i8 3, i8 3 }
@178 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1133, i32 20 }, ptr @175 }
@179 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1156, i32 23 }, ptr @175 }
@180 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1156, i32 48 }, ptr @173, i8 3, i8 3 }
@181 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1156, i32 113 }, ptr @173, i8 3, i8 3 }
@182 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1158, i32 26 }, ptr @175 }
@183 = private unnamed_addr constant { i16, i16, [51 x i8] } { i16 -1, i16 0, [51 x i8] c"'const b3HullData' (aka 'const struct b3HullData')\00" }
@184 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1176, i32 27 }, ptr @183, i8 3, i8 3 }
@185 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1179, i32 42 }, ptr @173, i8 3, i8 3 }
@186 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 79, i32 41 }, ptr @5, i8 3, i8 3 }
@187 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 84, i32 16 }, ptr @3, i8 3, i8 3 }
@188 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 112, i32 15 }, ptr @3, i8 3, i8 3 }
@b3RefreshCache.s_once = internal unnamed_addr global i1 false, align 1
@.str = private unnamed_addr constant [71 x i8] c"WARNING: complex mesh detected, triangle buffer capacity of %d reached\00", align 1
@189 = private unnamed_addr constant { i16, i16, [56 x i8] } { i16 -1, i16 0, [56 x i8] c"'b3ContactCache[256]' (aka 'union b3ContactCache[256]')\00" }
@190 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 141, i32 3 }, ptr @189, ptr @6 }
@191 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 141, i32 3 } }
@192 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 144, i32 5 } }
@193 = private unnamed_addr constant { i16, i16, [25 x i8] } { i16 -1, i16 0, [25 x i8] c"'struct b3TriangleCache'\00" }
@194 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 144, i32 5 }, ptr @193, i8 2, i8 3 }
@195 = private unnamed_addr constant { i16, i16, [11 x i8] } { i16 -1, i16 0, [11 x i8] c"'int[256]'\00" }
@196 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 144, i32 69 } }
@197 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 160, i32 3 } }
@198 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 160, i32 3 }, ptr @193, i8 2, i8 1 }
@199 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 160, i32 67 }, ptr @195, ptr @6 }
@200 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 160, i32 67 } }
@201 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 160, i32 87 } }
@202 = private unnamed_addr constant { i16, i16, [63 x i8] } { i16 -1, i16 0, [63 x i8] c"'b3TriangleQueryContext' (aka 'struct b3TriangleQueryContext')\00" }
@203 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 42, i32 24 }, ptr @202, i8 3, i8 3 }
@204 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 46, i32 2 } }
@205 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 46, i32 2 }, ptr @6, i8 2, i8 1 }
@206 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 47, i32 25 }, ptr @6 }
@.src.3 = private unnamed_addr constant [56 x i8] c"/opt-bench/work/box3d_ubsan/box3d/src/arena_allocator.h\00", align 1
@207 = private unnamed_addr constant { i16, i16, [33 x i8] } { i16 -1, i16 0, [33 x i8] c"'b3Arena' (aka 'struct b3Arena')\00" }
@208 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.3, i32 101, i32 25 }, ptr @207, i8 3, i8 3 }
@209 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src.3, i32 101, i32 31 }, ptr @6 }
@210 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src.3, i32 103, i32 15 }, ptr @6 }
@211 = private unnamed_addr constant { i16, i16, [55 x i8] } { i16 -1, i16 0, [55 x i8] c"'b3ArenaSharedState' (aka 'struct b3ArenaSharedState')\00" }
@212 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.3, i32 109, i32 37 }, ptr @211, i8 3, i8 3 }
@213 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src.3, i32 113, i32 23 } }
@214 = private unnamed_addr constant { i16, i16, [43 x i8] } { i16 -1, i16 0, [43 x i8] c"'b3FoundEdges' (aka 'struct b3FoundEdges')\00" }
@215 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 190, i32 21 }, ptr @214, i8 3, i8 3 }
@216 = private unnamed_addr constant { i16, i16, [41 x i8] } { i16 -1, i16 0, [41 x i8] c"'uint64_t[64]' (aka 'unsigned long[64]')\00" }
@217 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 193, i32 8 }, ptr @216, ptr @6 }
@218 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 193, i32 8 } }
@219 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 205, i32 2 }, ptr @216, ptr @6 }
@220 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 205, i32 2 } }
@221 = private unnamed_addr constant { i16, i16, [49 x i8] } { i16 -1, i16 0, [49 x i8] c"'b3FoundVertices' (aka 'struct b3FoundVertices')\00" }
@222 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 253, i32 24 }, ptr @221, i8 2, i8 3 }
@223 = private unnamed_addr constant { i16, i16, [10 x i8] } { i16 -1, i16 0, [10 x i8] c"'int[64]'\00" }
@224 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 256, i32 8 }, ptr @223, ptr @6 }
@225 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 256, i32 8 } }
@226 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 268, i32 2 }, ptr @223, ptr @6 }
@227 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 268, i32 2 } }
@228 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 269, i32 18 }, ptr @6 }
@229 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 220, i32 8 }, ptr @216, ptr @6 }
@230 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 220, i32 8 } }
@.src.4 = private unnamed_addr constant [54 x i8] c"/opt-bench/work/box3d_ubsan/box3d/src/physics_world.h\00", align 1
@231 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src.4, i32 344, i32 20 }, ptr @6 }
@232 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src.4, i32 346, i32 32 } }
@233 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 489, i32 18 }, ptr @32, i8 2, i8 3 }
@234 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 493, i32 21 } }
@235 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 494, i32 3 } }
@236 = private unnamed_addr constant { i16, i16, [37 x i8] } { i16 -1, i16 0, [37 x i8] c"'b3Point2D' (aka 'struct b3Point2D')\00" }
@237 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 494, i32 3 }, ptr @236, i8 2, i8 3 }
@238 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 505, i32 15 } }
@239 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 505, i32 15 }, ptr @236, i8 2, i8 3 }
@240 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 507, i32 3 } }
@241 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 507, i32 20 } }
@242 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 320, i32 15 } }
@243 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 320, i32 15 }, ptr @236, i8 2, i8 3 }
@244 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 323, i32 42 } }
@245 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 323, i32 42 }, ptr @236, i8 2, i8 3 }
@246 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 343, i32 9 } }
@247 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 343, i32 9 }, ptr @236, i8 2, i8 3 }
@248 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 343, i32 32 } }
@249 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 343, i32 32 }, ptr @236, i8 2, i8 3 }
@250 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 351, i32 4 }, ptr @236, i8 2, i8 1 }
@251 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 351, i32 16 } }
@252 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 356, i32 19 } }
@253 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 356, i32 19 }, ptr @236, i8 2, i8 0 }
@254 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 357, i32 2 } }
@255 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 357, i32 19 } }
@256 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 357, i32 19 }, ptr @236, i8 2, i8 0 }
@257 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 360, i32 23 } }
@258 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 360, i32 23 }, ptr @236, i8 2, i8 0 }
@259 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 361, i32 23 } }
@260 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 361, i32 23 }, ptr @236, i8 2, i8 0 }
@261 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 366, i32 3 }, ptr @236, i8 2, i8 1 }
@262 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 367, i32 3 } }
@263 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 367, i32 15 } }
@264 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 375, i32 13 } }
@265 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 387, i32 14 } }
@266 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 387, i32 14 }, ptr @236, i8 2, i8 3 }
@267 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 403, i32 3 }, ptr @236, i8 2, i8 1 }
@268 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 404, i32 3 } }
@269 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 409, i32 2 } }
@270 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 409, i32 19 } }
@271 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 409, i32 19 }, ptr @236, i8 2, i8 0 }
@272 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 413, i32 3 }, ptr @236, i8 2, i8 1 }
@273 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 414, i32 3 } }
@274 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 415, i32 3 } }
@275 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 415, i32 15 } }
@276 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 420, i32 22 } }
@277 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 420, i32 22 }, ptr @236, i8 2, i8 0 }
@278 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 426, i32 13 } }
@279 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 443, i32 14 } }
@280 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 443, i32 14 }, ptr @236, i8 2, i8 3 }
@281 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 461, i32 3 }, ptr @236, i8 2, i8 1 }
@282 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 462, i32 3 } }
@283 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 463, i32 3 } }
@284 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 468, i32 2 } }
@285 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 468, i32 19 } }
@286 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 468, i32 19 }, ptr @236, i8 2, i8 0 }
@287 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 471, i32 2 }, ptr @236, i8 2, i8 1 }
@288 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 472, i32 2 } }
@289 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 473, i32 2 } }
@290 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 474, i32 2 } }
@291 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 474, i32 14 } }
@292 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src.4, i32 319, i32 20 }, ptr @6 }
@293 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src.4, i32 327, i32 3 }, ptr @6 }
@294 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src.4, i32 327, i32 3 }, ptr @6 }
@295 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src.4, i32 327, i32 3 } }
@296 = private unnamed_addr constant { i16, i16, [26 x i8] } { i16 -1, i16 0, [26 x i8] c"'struct b3BlockAllocator'\00" }
@297 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.4, i32 327, i32 3 }, ptr @296, i8 3, i8 1 }
@298 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src.4, i32 330, i32 32 } }
@299 = private unnamed_addr global { { ptr, i32, i32 }, { ptr, i32, i32 }, i32 } { { ptr, i32, i32 } { ptr @.src.4, i32 333, i32 10 }, { ptr, i32, i32 } { ptr @.src.1, i32 61, i32 62 }, i32 1 }
@.src.7 = private unnamed_addr constant [46 x i8] c"/opt-bench/work/box3d_ubsan/box3d/src/shape.h\00", align 1
@300 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.7, i32 74, i32 16 }, ptr @3, i8 3, i8 3 }
@.src.8 = private unnamed_addr constant [67 x i8] c"/opt-bench/work/box3d_ubsan/box3d/src/../include/box3d/collision.h\00", align 1
@301 = private unnamed_addr constant { i16, i16, [51 x i8] } { i16 -1, i16 0, [51 x i8] c"'const b3MeshData' (aka 'const struct b3MeshData')\00" }
@302 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.8, i32 311, i32 13 }, ptr @301, i8 3, i8 3 }
@303 = private unnamed_addr constant { i16, i16, [24 x i8] } { i16 0, i16 13, [24 x i8] c"'intptr_t' (aka 'long')\00" }
@304 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src.8, i32 316, i32 42 }, ptr @303 }
@305 = private unnamed_addr constant { i16, i16, [65 x i8] } { i16 -1, i16 0, [65 x i8] c"'const b3HeightFieldData' (aka 'const struct b3HeightFieldData')\00" }
@306 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.8, i32 384, i32 11 }, ptr @305, i8 3, i8 3 }
@307 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src.8, i32 389, i32 40 }, ptr @303 }

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @b3ComputeMeshManifolds(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef readonly byval(%struct.b3Transform) align 8 captures(none) %5, ptr noundef %6, ptr nofree noundef readonly byval(%struct.b3Transform) align 8 captures(none) %7, i1 noundef zeroext %8, ptr noundef byval(%struct.b3Arena) align 8 %9) local_unnamed_addr #0 !func_sanitize !57 {
bb.a:
  %10 = alloca %struct.b3BlockAllocator, align 8  ; 4 uses
  %11 = alloca [4 x %struct.b3Point2D], align 16  ; 16 uses
  %.sroa.014.i.i = alloca <2 x float>, align 8    ; 5 uses
  %.sroa.0.i.i = alloca <2 x float>, align 8      ; 5 uses
  %12 = alloca [4 x %struct.b3LocalManifoldPoint], align 16 ; 11 uses
  %13 = alloca %struct.b3Arena, align 8           ; 4 uses
  %14 = alloca %struct.b3TriangleQueryContext, align 8 ; 6 uses
  %15 = alloca %struct.b3AABB, align 8            ; 7 uses
  %16 = alloca %struct.b3TriangleQueryContext, align 8 ; 6 uses
  %17 = alloca %struct.b3AABB, align 8            ; 7 uses
  %i.a = alloca [256 x i32], align 16             ; 8 uses
  %18 = alloca [256 x %union.b3ContactCache], align 16 ; 7 uses
  %.sroa.2.i = alloca %struct.b3SimplexCache, align 8 ; 4 uses
  %19 = alloca %struct.b3FoundEdges, align 8      ; 22 uses
  %20 = alloca %struct.b3FoundVertices, align 4   ; 15 uses
  %21 = alloca %struct.b3Triangle, align 8        ; 16 uses
  %22 = alloca %struct.b3Triangle, align 4        ; 4 uses
  %23 = alloca [3 x %struct.b3Vec3], align 16     ; 13 uses
  %24 = alloca [32 x %struct.anon], align 16      ; 6 uses
  %i.b = icmp ne ptr %0, null, !nosanitize !9
  %i.c = ptrtoint ptr %0 to i64, !nosanitize !9   ; 2 uses
  %i.d = and i64 %i.c, 7, !nosanitize !9
  %i.e = icmp eq i64 %i.d, 0, !nosanitize !9
  %i.f = and i1 %i.b, %i.e, !nosanitize !9
  br i1 %i.f, label %bb.c, label %bb.b, !prof !10, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @1, i64 %i.c) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4144
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !113  ; 3 uses
  %i.i = sext i32 %1 to i64                       ; 2 uses
  %i.j = getelementptr inbounds [3848 x i8], ptr %i.h, i64 %i.i ; 3 uses
  %i.k = mul nsw i64 %i.i, 3848
  %i.l = ptrtoint ptr %i.h to i64, !nosanitize !9 ; 3 uses
  %i.m = add i64 %i.k, %i.l, !nosanitize !9       ; 3 uses
  %i.n = icmp ne ptr %i.h, null, !nosanitize !9   ; 2 uses
  %i.o = icmp eq i64 %i.m, 0
  %i.p = xor i1 %i.n, %i.o
  %i.q = icmp uge i64 %i.m, %i.l, !nosanitize !9
  %i.r = icmp slt i32 %1, 0
  %i.s = xor i1 %i.r, %i.q
  %i.t = and i1 %i.p, %i.s, !nosanitize !9
  br i1 %i.t, label %bb.e, label %bb.d, !prof !10, !nosanitize !9

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @2, i64 %i.l, i64 %i.m) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.e:                                             ; preds = %bb.c
  %i.u = icmp ne ptr %6, null, !nosanitize !9
  %i.v = ptrtoint ptr %6 to i64, !nosanitize !9   ; 2 uses
  %i.w = and i64 %i.v, 7, !nosanitize !9
  %i.x = icmp eq i64 %i.w, 0, !nosanitize !9
  %i.y = and i1 %i.u, %i.x, !nosanitize !9
  br i1 %i.y, label %bb.g, label %bb.f, !prof !10, !nosanitize !9

bb.f:                                             ; preds = %bb.e
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @4, i64 %i.v) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.g:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.2.i)
  %.sroa.41280.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 4
  %.sroa.51281.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aa = load <2 x float>, ptr %5, align 8       ; 6 uses
  %i.ab = load <2 x float>, ptr %.sroa.41280.0..sroa_idx, align 4 ; 4 uses
  %.sroa.61282.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %.sroa.61282.0.copyload = load <2 x float>, ptr %.sroa.61282.0..sroa_idx, align 4 ; 21 uses
  %.sroa.71283.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 2 uses
  %.sroa.71283.0.copyload = load <2 x float>, ptr %.sroa.71283.0..sroa_idx, align 4 ; 14 uses
  %i.ac = icmp ne ptr %2, null, !nosanitize !9
  %i.ad = ptrtoint ptr %2 to i64, !nosanitize !9  ; 2 uses
  %i.ae = and i64 %i.ad, 7, !nosanitize !9
  %i.af = icmp eq i64 %i.ae, 0, !nosanitize !9
  %i.ag = and i1 %i.ac, %i.af, !nosanitize !9
  br i1 %i.ag, label %bb.i, label %bb.h, !prof !10, !nosanitize !9

bb.h:                                             ; preds = %bb.g
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @186, i64 %i.ad) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.i:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 152 ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 168 ; 2 uses
  %.sroa.5182.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %.sroa.5182.0.copyload.i = load float, ptr %.sroa.5182.0..sroa_idx.i, align 8, !tbaa !114
  %.sroa.6183.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 52 ; 2 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 60 ; 2 uses
  %.sroa.8.0.copyload.i = load float, ptr %.sroa.8.0..sroa_idx.i, align 4, !tbaa !114
  %.sroa.5213.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 176 ; 2 uses
  %.sroa.5213.0.copyload.i = load float, ptr %.sroa.5213.0..sroa_idx.i, align 8
  %.sroa.6214.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 180 ; 2 uses
  %.sroa.8216.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 188 ; 2 uses
  %.sroa.8216.0.copyload.i = load float, ptr %.sroa.8216.0..sroa_idx.i, align 4
  %i.aj = load <2 x float>, ptr %i.z, align 8, !tbaa !114
  %i.ak = load <2 x float>, ptr %.sroa.6183.0..sroa_idx.i, align 4, !tbaa !114
  %i.al = load <2 x float>, ptr %i.ai, align 8
  %i.am = load <2 x float>, ptr %.sroa.6214.0..sroa_idx.i, align 4
  %i.an = shufflevector <2 x float> %i.al, <2 x float> %i.ak, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.ao = shufflevector <2 x float> %i.aj, <2 x float> %i.am, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.ap = fcmp ule <4 x float> %i.an, %i.ao
  %i.aq = fcmp ule float %.sroa.5213.0.copyload.i, %.sroa.5182.0.copyload.i
  %i.ar = fcmp ule float %.sroa.8.0.copyload.i, %.sroa.8216.0.copyload.i
  %i.as = freeze <4 x i1> %i.ap
  %i.at = bitcast <4 x i1> %i.as to i4
  %i.au = icmp eq i4 %i.at, -1
  %.fr20815 = freeze i1 %i.aq
  %op.rdx = and i1 %i.au, %.fr20815
  %op.rdx20687 = select i1 %op.rdx, i1 %i.ar, i1 false
  br i1 %op.rdx20687, label %bb.j, label %b3AABB_Contains.exit.thread.i

bb.j:                                             ; preds = %bb.i
  %i.av = icmp ne ptr %3, null, !nosanitize !9
  %i.aw = ptrtoint ptr %3 to i64, !nosanitize !9  ; 2 uses
  %i.ax = and i64 %i.aw, 7, !nosanitize !9
  %i.ay = icmp eq i64 %i.ax, 0, !nosanitize !9
  %i.az = and i1 %i.av, %i.ay, !nosanitize !9
  br i1 %i.az, label %._crit_edge13758, label %bb.k, !prof !10, !nosanitize !9

bb.k:                                             ; preds = %bb.j
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @187, i64 %i.aw) #9, !nosanitize !9
  unreachable, !nosanitize !9

b3AABB_Contains.exit.thread.i:                    ; preds = %bb.i
  %i.ba = tail call float @b3GetLengthUnitsPerMeter() #10
  %i.bb = fmul float %i.ba, 5.000000e-02
  %i.bc = tail call float @b3GetLengthUnitsPerMeter() #10
  %i.bd = fmul float %i.bc, 5.000000e-03
  %i.be = fmul float %i.bd, 4.000000e+00
  %i.bf = fadd float %i.bb, %i.be                 ; 3 uses
  %.sroa.043.0.copyload.i = load <2 x float>, ptr %i.z, align 8
  %.sroa.244.0.copyload.i = load float, ptr %.sroa.5182.0..sroa_idx.i, align 8
  %i.bg = insertelement <2 x float> poison, float %i.bf, i64 0
  %i.bh = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bi = fsub <2 x float> %.sroa.043.0.copyload.i, %i.bh ; 3 uses
  %i.bj = fsub float %.sroa.244.0.copyload.i, %i.bf ; 3 uses
  store <2 x float> %i.bi, ptr %i.ai, align 8, !tbaa !114
  store float %i.bj, ptr %.sroa.5213.0..sroa_idx.i, align 8, !tbaa !114
  %.sroa.034.0.copyload.i = load <2 x float>, ptr %.sroa.6183.0..sroa_idx.i, align 4
  %.sroa.235.0.copyload.i = load float, ptr %.sroa.8.0..sroa_idx.i, align 4
  %i.bk = fadd <2 x float> %i.bh, %.sroa.034.0.copyload.i ; 3 uses
  %i.bl = fadd float %i.bf, %.sroa.235.0.copyload.i ; 3 uses
  store <2 x float> %i.bk, ptr %.sroa.6214.0..sroa_idx.i, align 4, !tbaa !114
  store float %i.bl, ptr %.sroa.8216.0..sroa_idx.i, align 4, !tbaa !114
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %.sroa.2.8.vec.extract65.i.i.i = extractelement <2 x float> %.sroa.71283.0.copyload, i64 0
  %i.bm = extractelement <2 x float> %i.ab, i64 1 ; 2 uses
  %.sroa.09.0.vec.extract.i.i.i.i = extractelement <2 x float> %.sroa.61282.0.copyload, i64 0
  %.sroa.2.12.vec.extract.i.i.i = extractelement <2 x float> %.sroa.71283.0.copyload, i64 1
  %i.bn = fneg float %.sroa.2.8.vec.extract65.i.i.i
  %i.bo = fmul float %i.bm, %.sroa.09.0.vec.extract.i.i.i.i
  %foldExtExtBinop = fmul <2 x float> %i.aa, %.sroa.71283.0.copyload
  %i.bp = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.bq = fsub float %i.bo, %i.bp
  %i.br = shufflevector <2 x float> %.sroa.61282.0.copyload, <2 x float> %.sroa.71283.0.copyload, <2 x i32> <i32 1, i32 2> ; 4 uses
  %i.bs = fmul <2 x float> %i.aa, %i.br
  %i.bt = shufflevector <2 x float> %i.aa, <2 x float> %i.ab, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.bu = fmul <2 x float> %i.bt, %.sroa.61282.0.copyload
  %i.bv = fsub <2 x float> %i.bs, %i.bu           ; 2 uses
  %i.bw = shufflevector <2 x float> %i.ab, <2 x float> %i.aa, <2 x i32> <i32 1, i32 2>
  %i.bx = shufflevector <2 x float> %.sroa.71283.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 5 uses
  %i.by = fmul <2 x float> %i.bw, %i.bx
  %i.bz = fmul <2 x float> %i.bt, %i.bx
  %i.ca = fadd <2 x float> %i.bv, %i.by           ; 2 uses
  %i.cb = shufflevector <2 x float> %i.bv, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cc = insertelement <2 x float> %i.cb, float %i.bq, i64 0
  %i.cd = fadd <2 x float> %i.bz, %i.cc           ; 2 uses
  %i.ce = fmul <2 x float> %i.br, %i.ca
  %i.cf = shufflevector <2 x float> %.sroa.71283.0.copyload, <2 x float> %.sroa.61282.0.copyload, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.cg = fmul <2 x float> %i.cf, %i.cd
  %i.ch = fsub <2 x float> %i.ce, %i.cg
  %foldExtExtBinop20689 = fmul <2 x float> %.sroa.61282.0.copyload, %i.cd
  %foldExtExtBinop20691 = fmul <2 x float> %.sroa.61282.0.copyload, %i.ca
  %shift = shufflevector <2 x float> %foldExtExtBinop20691, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop20693 = fsub <2 x float> %foldExtExtBinop20689, %shift
  %i.ci = extractelement <2 x float> %foldExtExtBinop20693, i64 0
  %i.cj = fmul <2 x float> %i.ch, splat (float 2.000000e+00)
  %i.ck = fsub <2 x float> %i.cj, %i.aa
  %i.cl = fmul float %i.ci, 2.000000e+00
  %i.cm = fsub float %i.cl, %i.bm
  %i.cn = fneg <2 x float> %.sroa.61282.0.copyload
  %i.co = shufflevector <2 x float> %i.cn, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cp = fadd <2 x float> %i.bi, %i.bk
  %i.cq = fadd float %i.bj, %i.bl
  %i.cr = fmul <2 x float> %i.cp, splat (float 5.000000e-01) ; 5 uses
  %i.cs = fmul float %i.cq, 5.000000e-01          ; 4 uses
  %i.ct = shufflevector <2 x float> %i.cr, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cu = insertelement <2 x float> %i.ct, float %i.cs, i64 0
  %i.cv = fmul <2 x float> %.sroa.61282.0.copyload, %i.cu
  %i.cw = fmul <2 x float> %i.br, %i.cr
  %i.cx = fmul <2 x float> %i.cf, %i.cr
  %i.cy = insertelement <2 x float> %i.ct, float %i.cs, i64 1 ; 2 uses
  %i.cz = fmul <2 x float> %.sroa.61282.0.copyload, %i.cy
  %i.da = fsub <2 x float> %i.cv, %i.cx
  %i.db = fsub <2 x float> %i.cw, %i.cz
  %i.dc = fmul <2 x float> %i.bx, %i.cy
  %i.dd = insertelement <2 x float> poison, float %i.cs, i64 0
  %i.de = shufflevector <2 x float> %i.dd, <2 x float> %i.cr, <2 x i32> <i32 0, i32 2>
end_hunk_0
begin_hunk_1_@b3ComputeMeshManifolds:bb.a
  %i.avx = extractelement <2 x i1> %i.avw, i64 0
  %i.avy = extractelement <2 x i1> %i.avw, i64 1
  %or.cond = select i1 %i.avy, i1 true, i1 %i.avx
  br i1 %or.cond, label %bb.if, label %.critedge7

bb.if:                                            ; preds = %bb.ie
  %indvars.iv.next13682 = add nuw nsw i64 %indvars.iv13681, 1 ; 2 uses
  %exitcond13685.not = icmp eq i64 %indvars.iv.next13682, %wide.trip.count13684
  br i1 %exitcond13685.not, label %.critedge7.thread, label %.lr.ph7759.split, !llvm.loop !40

.critedge7:                                       ; preds = %bb.ie
  %i.avz = trunc nuw nsw i64 %indvars.iv13681 to i32
  store i32 %i.avz, ptr %i.aud, align 4, !tbaa !20
  %i.awa = load i32, ptr %i.auv, align 8, !tbaa !139 ; 2 uses
  %i.awb = getelementptr inbounds nuw [40 x i8], ptr %.fr8559, i64 %indvars.iv13681 ; 2 uses
  %i.awc = mul nuw nsw i64 %indvars.iv13681, 40
  %i.awd = add i64 %i.awc, %i.aua, !nosanitize !9 ; 2 uses
  %.not18600 = icmp ult i64 %i.awd, %i.aua, !nosanitize !9
  br i1 %.not18600, label %bb.ig, label %bb.ih, !prof !19, !nosanitize !9

bb.ig:                                            ; preds = %.critedge7
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @107, i64 %i.aua, i64 %i.awd) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.ih:                                            ; preds = %.critedge7
  %i.awe = ptrtoint ptr %i.awb to i64, !nosanitize !9 ; 2 uses
  %i.awf = and i64 %i.awe, 7, !nosanitize !9
  %i.awg = icmp eq i64 %i.awf, 0, !nosanitize !9
  br i1 %i.awg, label %bb.ij, label %bb.ii, !prof !10, !nosanitize !9

bb.ii:                                            ; preds = %bb.ih
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @108, i64 %i.awe) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.ij:                                            ; preds = %bb.ih
  %i.awh = getelementptr inbounds nuw i8, ptr %i.awb, i64 32 ; 2 uses
  %i.awi = load i32, ptr %i.awh, align 8, !tbaa !176 ; 2 uses
  %i.awj = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.awi, i32 %i.awa), !nosanitize !9 ; 2 uses
  %i.awk = extractvalue { i32, i1 } %i.awj, 1, !nosanitize !9
  br i1 %i.awk, label %bb.ik, label %bb.il, !prof !19, !nosanitize !9

bb.ik:                                            ; preds = %bb.ij
  %i.awl = zext i32 %i.awi to i64, !nosanitize !9
  %i.awm = zext i32 %i.awa to i64, !nosanitize !9
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @109, i64 %i.awl, i64 %i.awm) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.il:                                            ; preds = %bb.ij
  %i.awn = extractvalue { i32, i1 } %i.awj, 0, !nosanitize !9
  store i32 %i.awn, ptr %i.awh, align 8, !tbaa !176
  br label %bb.is

.critedge7.thread:                                ; preds = %bb.if, %bb.ic
  %i.awo = sext i32 %.08507777 to i64             ; 2 uses
  %i.awp = getelementptr inbounds [40 x i8], ptr %.fr8559, i64 %i.awo ; 6 uses
  %i.awq = mul nsw i64 %i.awo, 40
  %i.awr = add i64 %i.awq, %i.aua, !nosanitize !9 ; 3 uses
  %i.aws = icmp eq i64 %i.awr, 0
  %i.awt = xor i1 %.not8560, %i.aws
  %i.awu = icmp uge i64 %i.awr, %i.aua, !nosanitize !9
  %i.awv = icmp slt i32 %.08507777, 0
  %i.aww = xor i1 %i.awv, %i.awu
  %i.awx = and i1 %i.awt, %i.aww, !nosanitize !9
  br i1 %i.awx, label %bb.in, label %bb.im, !prof !10, !nosanitize !9

bb.im:                                            ; preds = %.critedge7.thread
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @110, i64 %i.aua, i64 %i.awr) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.in:                                            ; preds = %.critedge7.thread
  %i.awy = ptrtoint ptr %i.awp to i64, !nosanitize !9 ; 2 uses
  %i.awz = and i64 %i.awy, 7, !nosanitize !9
  %i.axa = icmp eq i64 %i.awz, 0, !nosanitize !9
  %i.axb = and i1 %.not8560, %i.axa
  br i1 %i.axb, label %bb.ip, label %bb.io, !prof !10, !nosanitize !9

bb.io:                                            ; preds = %bb.in
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @111, i64 %i.awy) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.ip:                                            ; preds = %bb.in
  store <2 x float> %.sroa.0277.0.copyload, ptr %i.awp, align 8, !tbaa !114
  %.sroa.5279.0..sroa_idx280 = getelementptr inbounds nuw i8, ptr %i.awp, i64 8
  store float %.sroa.5279.0.copyload, ptr %.sroa.5279.0..sroa_idx280, align 8, !tbaa !114
  %i.axc = getelementptr inbounds nuw i8, ptr %i.awp, i64 12
  store <2 x float> %.sroa.0273.0.copyload, ptr %i.axc, align 4, !tbaa !114
  %.sroa.5.0..sroa_idx275 = getelementptr inbounds nuw i8, ptr %i.awp, i64 20
  store float %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx275, align 4, !tbaa !114
  %i.axd = getelementptr inbounds nuw i8, ptr %i.awp, i64 32
  store i32 %i.auw, ptr %i.axd, align 8, !tbaa !176
  store i32 %.08507777, ptr %i.aud, align 4, !tbaa !20
  %i.axe = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.08507777, i32 1), !nosanitize !9 ; 2 uses
  %i.axf = extractvalue { i32, i1 } %i.axe, 1, !nosanitize !9
  br i1 %i.axf, label %bb.iq, label %bb.ir, !prof !19, !nosanitize !9

bb.iq:                                            ; preds = %bb.ip
  %i.axg = zext nneg i32 %.08507777 to i64, !nosanitize !9
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @112, i64 %i.axg, i64 1) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.ir:                                            ; preds = %bb.ip
  %i.axh = extractvalue { i32, i1 } %i.axe, 0, !nosanitize !9
  br label %bb.is

bb.is:                                            ; preds = %bb.il, %bb.ir
  %.1851 = phi i32 [ %.08507777, %bb.il ], [ %i.axh, %bb.ir ] ; 14 uses
  %indvars.iv.next13687 = add nuw nsw i64 %indvars.iv13686, 1 ; 2 uses
  %exitcond13690.not = icmp eq i64 %indvars.iv.next13687, %wide.trip.count13689
  br i1 %exitcond13690.not, label %._crit_edge7780, label %.lr.ph7779.split.split, !llvm.loop !41

bb.it:                                            ; preds = %._crit_edge7780
  %i.axi = mul i32 %i.auy, 24
  %i.axj = call fastcc ptr @b3Bump(ptr noundef nonnull %9, i32 noundef %i.axi) ; 3 uses
  %i.axk = icmp sgt i32 %.1851, 0                 ; 4 uses
  br i1 %i.axk, label %.lr.ph7811.split.preheader, label %.lr.ph8125

.lr.ph7811.split.preheader:                       ; preds = %bb.it
  %i.axl = ptrtoint ptr %.fr8559 to i64, !nosanitize !9 ; 3 uses
  %i.axm = ptrtoint ptr %i.axj to i64             ; 3 uses
  %i.axn = icmp ne ptr %i.axj, null
  %wide.trip.count13694 = zext nneg i32 %.1851 to i64
  br label %.lr.ph7811.split

bb.iu:                                            ; preds = %bb.ix
  %indvars.iv.next13692 = add nuw nsw i64 %indvars.iv13691, 1 ; 2 uses
  %i.axo = extractvalue { i32, i1 } %i.aym, 0, !nosanitize !9
  %exitcond13695.not = icmp eq i64 %indvars.iv.next13692, %wide.trip.count13694
  br i1 %exitcond13695.not, label %.lr.ph8125, label %.lr.ph7811.split, !llvm.loop !42

.lr.ph8125:                                       ; preds = %bb.iu, %bb.it
  %i.axp = ptrtoint ptr %.fr8561 to i64, !nosanitize !9 ; 3 uses
  %i.axq = ptrtoint ptr %.fr8563 to i64           ; 3 uses
  %i.axr = ptrtoint ptr %.fr8559 to i64           ; 3 uses
  %wide.trip.count13702 = zext nneg i32 %.10 to i64
  br label %.lr.ph8125.split

.lr.ph7811.split:                                 ; preds = %.lr.ph7811.split.preheader, %bb.iu
  %indvars.iv13691 = phi i64 [ 0, %.lr.ph7811.split.preheader ], [ %indvars.iv.next13692, %bb.iu ] ; 3 uses
  %.08497808 = phi i32 [ 0, %.lr.ph7811.split.preheader ], [ %i.axo, %bb.iu ] ; 4 uses
  %i.axs = getelementptr inbounds nuw [40 x i8], ptr %.fr8559, i64 %indvars.iv13691 ; 4 uses
  %i.axt = mul nuw nsw i64 %indvars.iv13691, 40
  %i.axu = add i64 %i.axt, %i.axl, !nosanitize !9 ; 2 uses
  %.not8567 = icmp ult i64 %i.axu, %i.axl, !nosanitize !9
  br i1 %.not8567, label %.split7813.us, label %bb.iv, !prof !19, !nosanitize !9

.split7813.us:                                    ; preds = %.lr.ph7811.split
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @113, i64 %i.axl, i64 %i.axu) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.iv:                                            ; preds = %.lr.ph7811.split
  %i.axv = sext i32 %.08497808 to i64             ; 2 uses
  %i.axw = getelementptr inbounds [24 x i8], ptr %i.axj, i64 %i.axv
  %i.axx = mul nsw i64 %i.axv, 24
  %i.axy = add i64 %i.axx, %i.axm, !nosanitize !9 ; 3 uses
  %i.axz = icmp eq i64 %i.axy, 0
  %i.aya = xor i1 %i.axn, %i.axz
  %i.ayb = icmp uge i64 %i.axy, %i.axm, !nosanitize !9
  %i.ayc = icmp slt i32 %.08497808, 0
  %i.ayd = xor i1 %i.ayc, %i.ayb
  %i.aye = and i1 %i.aya, %i.ayd, !nosanitize !9
  br i1 %i.aye, label %bb.iw, label %.split7817.us, !prof !10, !nosanitize !9

.split7817.us:                                    ; preds = %bb.iv
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @114, i64 %i.axm, i64 %i.axy) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.iw:                                            ; preds = %bb.iv
  %i.ayf = ptrtoint ptr %i.axs to i64, !nosanitize !9 ; 2 uses
  %i.ayg = and i64 %i.ayf, 7, !nosanitize !9
  %i.ayh = icmp eq i64 %i.ayg, 0, !nosanitize !9
  br i1 %i.ayh, label %bb.ix, label %.split7821, !prof !10, !nosanitize !9

.split7821:                                       ; preds = %bb.iw
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @115, i64 %i.ayf) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.ix:                                            ; preds = %bb.iw
  %i.ayi = getelementptr inbounds nuw i8, ptr %i.axs, i64 24
  store ptr %i.axw, ptr %i.ayi, align 8, !tbaa !177
  %i.ayj = getelementptr inbounds nuw i8, ptr %i.axs, i64 36
  store i32 0, ptr %i.ayj, align 4, !tbaa !178
  %i.ayk = getelementptr inbounds nuw i8, ptr %i.axs, i64 32
  %i.ayl = load i32, ptr %i.ayk, align 8, !tbaa !176 ; 2 uses
  %i.aym = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.08497808, i32 %i.ayl), !nosanitize !9 ; 2 uses
  %i.ayn = extractvalue { i32, i1 } %i.aym, 1, !nosanitize !9
  br i1 %i.ayn, label %bb.iy, label %bb.iu, !prof !19, !nosanitize !9

bb.iy:                                            ; preds = %bb.ix
  %i.ayo = zext i32 %.08497808 to i64, !nosanitize !9
  %i.ayp = zext i32 %i.ayl to i64, !nosanitize !9
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @116, i64 %i.ayo, i64 %i.ayp) #9, !nosanitize !9
  unreachable, !nosanitize !9

.preheader:                                       ; preds = %.loopexit1315
  br i1 %i.axk, label %.lr.ph8164, label %._crit_edge8165

.lr.ph8164:                                       ; preds = %.preheader
  %i.ayq = ptrtoint ptr %.fr8559 to i64, !nosanitize !9 ; 3 uses
  %.not8575 = icmp eq ptr %.fr8559, null, !nosanitize !9
  %i.ayr = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  %25 = ptrtoint ptr %11 to i64                   ; 11 uses
  %26 = add i64 %25, 16                           ; 2 uses
  %.not.i.i = icmp eq i64 %26, 0                  ; 2 uses
  %.not217.i.i.a = icmp eq ptr %11, inttoptr (i64 -16 to ptr)
  %i.ays = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 5 uses
  %27 = add i64 %25, 32                           ; 2 uses
  %.not218.i.i = icmp eq i64 %27, 0               ; 2 uses
  %.not219.i.i.a = icmp ugt ptr %11, inttoptr (i64 -33 to ptr)
  %i.ayt = getelementptr inbounds nuw i8, ptr %11, i64 48 ; 2 uses
  %28 = add i64 %25, 48                           ; 2 uses
  %.not220.i.i = icmp eq i64 %28, 0
  %.not221.i.i.a = icmp ugt ptr %11, inttoptr (i64 -49 to ptr)
  %i.ayu = getelementptr inbounds nuw i8, ptr %12, i64 24
  %.not.1.i = icmp ugt ptr %12, inttoptr (i64 -25 to ptr)
  %i.ayv = getelementptr inbounds nuw i8, ptr %12, i64 48
  %.not.2.i = icmp ugt ptr %12, inttoptr (i64 -49 to ptr)
  %i.ayw = getelementptr inbounds nuw i8, ptr %12, i64 72
  %.not.3.i = icmp ugt ptr %12, inttoptr (i64 -73 to ptr)
  br i1 %.not8575, label %.split8171, label %.lr.ph8164.split.preheader, !prof !19

.lr.ph8164.split.preheader:                       ; preds = %.lr.ph8164
  %wide.trip.count13707 = zext nneg i32 %.1851 to i64
  %.sroa.0.i.i.4.i.i.4.i.i.4.i.4.i.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 4
  %.sroa.014.i.i.4.i.i.4.i.i.4.i.4.i.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.014.i.i, i64 4
  br label %.lr.ph8164.split

.lr.ph8125.split:                                 ; preds = %.lr.ph8125, %.loopexit1315
  %indvars.iv13699 = phi i64 [ 0, %.lr.ph8125 ], [ %indvars.iv.next13700, %.loopexit1315 ] ; 5 uses
  %i.ayx = getelementptr inbounds nuw [4 x i8], ptr %.fr8561, i64 %indvars.iv13699 ; 2 uses
  %i.ayy = shl nuw nsw i64 %indvars.iv13699, 2
  %i.ayz = add i64 %i.ayy, %i.axp, !nosanitize !9 ; 2 uses
  %.not8569 = icmp ult i64 %i.ayz, %i.axp, !nosanitize !9
  br i1 %.not8569, label %.split8127.us, label %bb.iz, !prof !19, !nosanitize !9

.split8127.us:                                    ; preds = %.lr.ph8125.split
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @117, i64 %i.axp, i64 %i.ayz) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.iz:                                            ; preds = %.lr.ph8125.split
  %i.aza = ptrtoint ptr %i.ayx to i64, !nosanitize !9 ; 2 uses
  %i.azb = and i64 %i.aza, 3, !nosanitize !9
  %i.azc = icmp eq i64 %i.azb, 0, !nosanitize !9
  br i1 %i.azc, label %bb.ja, label %.split8131, !prof !10, !nosanitize !9

.split8131:                                       ; preds = %bb.iz
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @118, i64 %i.aza) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.ja:                                            ; preds = %bb.iz
  %i.azd = load i32, ptr %i.ayx, align 4, !tbaa !20
  %.fr = freeze i32 %i.azd                        ; 3 uses
  %i.aze = icmp eq i32 %.fr, -1
  br i1 %i.aze, label %.loopexit1315, label %bb.jb

bb.jb:                                            ; preds = %bb.ja
  %i.azf = getelementptr inbounds nuw [8 x i8], ptr %.fr8563, i64 %indvars.iv13699 ; 2 uses
  %i.azg = shl nuw nsw i64 %indvars.iv13699, 3
  %i.azh = add i64 %i.azg, %i.axq, !nosanitize !9 ; 2 uses
  %.not18601 = icmp ult i64 %i.azh, %i.axq, !nosanitize !9
  br i1 %.not18601, label %bb.jc, label %bb.jd, !prof !19, !nosanitize !9

bb.jc:                                            ; preds = %bb.jb
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @119, i64 %i.axq, i64 %i.azh) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.jd:                                            ; preds = %bb.jb
  %i.azi = ptrtoint ptr %i.azf to i64, !nosanitize !9 ; 2 uses
  %i.azj = and i64 %i.azi, 7, !nosanitize !9
  %i.azk = icmp eq i64 %i.azj, 0, !nosanitize !9
  br i1 %i.azk, label %bb.jf, label %bb.je, !prof !10, !nosanitize !9

bb.je:                                            ; preds = %bb.jd
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @120, i64 %i.azi) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.jf:                                            ; preds = %bb.jd
  %i.azl = load ptr, ptr %i.azf, align 8, !tbaa !158 ; 5 uses
  %i.azm = sext i32 %.fr to i64                   ; 2 uses
  %i.azn = getelementptr [40 x i8], ptr %.fr8559, i64 %i.azm ; 3 uses
  %i.azo = mul nsw i64 %i.azm, 40
  %i.azp = add i64 %i.azo, %i.axr, !nosanitize !9 ; 3 uses
  %i.azq = icmp ne i64 %i.azp, 0
  %i.azr = icmp uge i64 %i.azp, %i.axr, !nosanitize !9
  %i.azs = icmp slt i32 %.fr, 0
  %i.azt = xor i1 %i.azs, %i.azr
  %i.azu = and i1 %i.azq, %i.azt, !nosanitize !9
  br i1 %i.azu, label %.preheader1314, label %bb.jk, !prof !10, !nosanitize !9

.preheader1314:                                   ; preds = %bb.jf
  %i.azv = icmp ne ptr %i.azl, null, !nosanitize !9
  %i.azw = ptrtoint ptr %i.azl to i64, !nosanitize !9 ; 2 uses
  %i.azx = and i64 %i.azw, 7, !nosanitize !9
  %i.azy = icmp eq i64 %i.azx, 0, !nosanitize !9
  %i.azz = and i1 %i.azv, %i.azy, !nosanitize !9
  br i1 %i.azz, label %.lr.ph7825, label %.preheader1314._crit_edge, !prof !162, !nosanitize !9

.lr.ph7825:                                       ; preds = %.preheader1314
  %i.baa = getelementptr inbounds nuw i8, ptr %i.azl, i64 32 ; 2 uses
  %i.bab = getelementptr inbounds nuw i8, ptr %i.azl, i64 24
  %i.bac = ptrtoint ptr %i.azn to i64             ; 2 uses
  %i.bad = and i64 %i.bac, 7
  %i.bae = icmp eq i64 %i.bad, 0
  %i.baf = getelementptr inbounds nuw i8, ptr %i.azn, i64 24
  %i.bag = getelementptr inbounds nuw i8, ptr %i.azn, i64 36 ; 3 uses
  %i.bah = getelementptr inbounds nuw i8, ptr %i.azl, i64 36
  %i.bai = load i32, ptr %i.baa, align 8, !tbaa !139
  %i.baj = icmp sgt i32 %i.bai, 0                 ; 2 uses
  br i1 %i.bae, label %.lr.ph7825.split.split.us.split.us.split.us.split.us, label %.lr.ph7825.split.split.us.split, !prof !10, !nosanitize !9

.lr.ph7825.split.split.us.split.us.split.us.split.us: ; preds = %.lr.ph7825
  br i1 %i.baj, label %.lr.ph20684, label %.loopexit1315

.lr.ph20684:                                      ; preds = %.lr.ph7825.split.split.us.split.us.split.us.split.us, %.lr.ph7825.split.split.us.split.us.split.us.split.us.split.us
  %indvars.iv1369620683 = phi i64 [ %indvars.iv.next13697, %.lr.ph7825.split.split.us.split.us.split.us.split.us.split.us ], [ 0, %.lr.ph7825.split.split.us.split.us.split.us.split.us ] ; 3 uses
  %i.bak = load ptr, ptr %i.bab, align 8, !tbaa !138 ; 3 uses
  %i.bal = getelementptr inbounds nuw [24 x i8], ptr %i.bak, i64 %indvars.iv1369620683 ; 4 uses
  %i.bam = mul nuw nsw i64 %indvars.iv1369620683, 24
  %i.ban = ptrtoint ptr %i.bak to i64, !nosanitize !9 ; 3 uses
  %i.bao = add i64 %i.bam, %i.ban, !nosanitize !9 ; 3 uses
  %i.bap = icmp ne ptr %i.bak, null, !nosanitize !9 ; 2 uses
  %i.baq = icmp eq i64 %i.bao, 0
  %i.bar = xor i1 %i.bap, %i.baq
  %i.bas = icmp uge i64 %i.bao, %i.ban, !nosanitize !9
  %i.bat = and i1 %i.bas, %i.bar, !nosanitize !9
  br i1 %i.bat, label %bb.jg, label %.split7830.us, !prof !10, !nosanitize !9

bb.jg:                                            ; preds = %.lr.ph20684
  %i.bau = load ptr, ptr %i.baf, align 8, !tbaa !177 ; 3 uses
  %i.bav = load i32, ptr %i.bag, align 4, !tbaa !178 ; 2 uses
  %i.baw = sext i32 %i.bav to i64                 ; 2 uses
  %i.bax = getelementptr inbounds [24 x i8], ptr %i.bau, i64 %i.baw ; 5 uses
  %i.bay = mul nsw i64 %i.baw, 24
  %i.baz = ptrtoint ptr %i.bau to i64, !nosanitize !9 ; 3 uses
  %i.bba = add i64 %i.bay, %i.baz, !nosanitize !9 ; 3 uses
  %i.bbb = icmp ne ptr %i.bau, null, !nosanitize !9 ; 2 uses
  %i.bbc = icmp eq i64 %i.bba, 0
  %i.bbd = xor i1 %i.bbb, %i.bbc
  %i.bbe = icmp uge i64 %i.bba, %i.baz, !nosanitize !9
  %i.bbf = icmp slt i32 %i.bav, 0
  %i.bbg = xor i1 %i.bbf, %i.bbe
  %i.bbh = and i1 %i.bbd, %i.bbg, !nosanitize !9
  br i1 %i.bbh, label %bb.jh, label %.split7843.us, !prof !10, !nosanitize !9

bb.jh:                                            ; preds = %bb.jg
  %i.bbi = ptrtoint ptr %i.bax to i64, !nosanitize !9 ; 2 uses
  %i.bbj = and i64 %i.bbi, 3, !nosanitize !9
  %i.bbk = icmp eq i64 %i.bbj, 0, !nosanitize !9
  %i.bbl = and i1 %i.bbb, %i.bbk
  br i1 %i.bbl, label %bb.ji, label %.split7850.us, !prof !10, !nosanitize !9

bb.ji:                                            ; preds = %bb.jh
  %i.bbm = load i32, ptr %i.bah, align 4, !tbaa !149
  %i.bbn = getelementptr inbounds nuw i8, ptr %i.bax, i64 20
  store i32 %i.bbm, ptr %i.bbn, align 4, !tbaa !179
  %i.bbo = ptrtoint ptr %i.bal to i64, !nosanitize !9 ; 2 uses
  %i.bbp = and i64 %i.bbo, 3, !nosanitize !9
  %i.bbq = icmp eq i64 %i.bbp, 0, !nosanitize !9
  %i.bbr = and i1 %i.bap, %i.bbq
  br i1 %i.bbr, label %bb.jj, label %.split7856.us, !prof !10, !nosanitize !9

bb.jj:                                            ; preds = %bb.ji
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bax, ptr noundef nonnull align 4 dereferenceable(12) %i.bal, i64 12, i1 false), !tbaa.struct !180
  %i.bbs = getelementptr inbounds nuw i8, ptr %i.bal, i64 12
  %i.bbt = getelementptr inbounds nuw i8, ptr %i.bax, i64 12
  %i.bbu = load float, ptr %i.bbs, align 4, !tbaa !155
  store float %i.bbu, ptr %i.bbt, align 4, !tbaa !155
  %i.bbv = getelementptr inbounds nuw i8, ptr %i.bax, i64 16
  %i.bbw = getelementptr inbounds nuw i8, ptr %i.bal, i64 16
  %i.bbx = load i32, ptr %i.bbw, align 4, !tbaa !121
  store i32 %i.bbx, ptr %i.bbv, align 4, !tbaa !121
  %i.bby = load i32, ptr %i.bag, align 4, !tbaa !178 ; 2 uses
  %i.bbz = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.bby, i32 1), !nosanitize !9 ; 2 uses
  %i.bca = extractvalue { i32, i1 } %i.bbz, 1, !nosanitize !9
  br i1 %i.bca, label %.split7871.us, label %.lr.ph7825.split.split.us.split.us.split.us.split.us.split.us, !prof !19, !nosanitize !9

.lr.ph7825.split.split.us.split.us.split.us.split.us.split.us: ; preds = %bb.jj
  %i.bcb = extractvalue { i32, i1 } %i.bbz, 0, !nosanitize !9
  store i32 %i.bcb, ptr %i.bag, align 4, !tbaa !178
  %indvars.iv.next13697 = add nuw nsw i64 %indvars.iv1369620683, 1 ; 2 uses
  %i.bcc = load i32, ptr %i.baa, align 8, !tbaa !139
  %i.bcd = sext i32 %i.bcc to i64
  %i.bce = icmp slt i64 %indvars.iv.next13697, %i.bcd
  br i1 %i.bce, label %.lr.ph20684, label %.loopexit1315

.lr.ph7825.split.split.us.split:                  ; preds = %.lr.ph7825
  br i1 %i.baj, label %.split7834.us, label %.loopexit1315

bb.jk:                                            ; preds = %bb.jf
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @121, i64 %i.axr, i64 %i.azp) #9, !nosanitize !9
  unreachable, !nosanitize !9

.preheader1314._crit_edge:                        ; preds = %.preheader1314
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @122, i64 %i.azw) #9, !nosanitize !9
  unreachable, !nosanitize !9

.split7830.us:                                    ; preds = %.lr.ph20684
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @123, i64 %i.ban, i64 %i.bao) #9, !nosanitize !9
  unreachable, !nosanitize !9

.split7834.us:                                    ; preds = %.lr.ph7825.split.split.us.split
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @124, i64 %i.bac) #9, !nosanitize !9
  unreachable, !nosanitize !9

.split7843.us:                                    ; preds = %bb.jg
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @125, i64 %i.baz, i64 %i.bba) #9, !nosanitize !9
  unreachable, !nosanitize !9

.split7850.us:                                    ; preds = %bb.jh
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @126, i64 %i.bbi) #9, !nosanitize !9
  unreachable, !nosanitize !9

end_hunk_1
begin_hunk_2_@b3ComputeMeshManifolds:bb.a
  unreachable, !nosanitize !9

bb.ju:                                            ; preds = %.split469.i.i
  %i.bem = ptrtoint ptr %i.bej to i64, !nosanitize !9 ; 2 uses
  %i.ben = and i64 %i.bem, 3, !nosanitize !9
  %i.beo = icmp eq i64 %i.ben, 0, !nosanitize !9
  br i1 %i.beo, label %bb.jv, label %.split475.i.i, !prof !10, !nosanitize !9

.split475.i.i:                                    ; preds = %bb.ju
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @243, i64 %i.bem) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.jv:                                            ; preds = %bb.ju
  %indvars.iv.next580.i.i = add nuw nsw i64 %indvars.iv579.i.i, 1 ; 3 uses
  %i.bep = icmp samesign ult i64 %indvars.iv.next580.i.i, %wide.trip.count.i1098
  br i1 %i.bep, label %.lr.ph.i.i, label %.loopexit.i.i

.lr.ph.i.i:                                       ; preds = %bb.jv
  %.sroa.059.0.copyload.i.i = load <2 x float>, ptr %i.bej, align 4, !tbaa !114
  %i.beq = getelementptr inbounds nuw i8, ptr %i.bej, i64 8
  %i.ber = trunc nuw nsw i64 %indvars.iv579.i.i to i32
  br label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %b3IsBetterCullCandidate.exit.thread295.us.i.i, %.lr.ph.i.i
  %indvars.iv576.i.i = phi i64 [ %indvars.iv.i.i, %.lr.ph.i.i ], [ %indvars.iv.next577.i.i, %b3IsBetterCullCandidate.exit.thread295.us.i.i ] ; 4 uses
  %.1154428.us.i.i = phi i32 [ %.0153467.i.i, %.lr.ph.i.i ], [ %.2155.us.i.i, %b3IsBetterCullCandidate.exit.thread295.us.i.i ]
  %.1157427.us.i.i = phi i32 [ %.0156466.i.i, %.lr.ph.i.i ], [ %.2158.us.i.i, %b3IsBetterCullCandidate.exit.thread295.us.i.i ]
  %.1160426.us.i.i = phi float [ %.0159465.i.i, %.lr.ph.i.i ], [ %.2161.us.i.i, %b3IsBetterCullCandidate.exit.thread295.us.i.i ] ; 2 uses
  %.1164425.us.i.i = phi float [ %.0163464.i.i, %.lr.ph.i.i ], [ %.2165.us.i.i, %b3IsBetterCullCandidate.exit.thread295.us.i.i ] ; 3 uses
  %i.bes = getelementptr inbounds nuw [16 x i8], ptr %.fr257.i, i64 %indvars.iv576.i.i ; 3 uses
  %i.bet = shl nuw nsw i64 %indvars.iv576.i.i, 4
  %i.beu = add i64 %i.bet, %i.bdw, !nosanitize !9 ; 2 uses
  %.not261.i = icmp ult i64 %i.beu, %i.bdw, !nosanitize !9
  br i1 %.not261.i, label %.split.us.i.i, label %bb.jw, !prof !19, !nosanitize !9

bb.jw:                                            ; preds = %.lr.ph.split.us.i.i
  %i.bev = ptrtoint ptr %i.bes to i64, !nosanitize !9 ; 2 uses
  %i.bew = and i64 %i.bev, 3, !nosanitize !9
  %i.bex = icmp eq i64 %i.bew, 0, !nosanitize !9
  br i1 %i.bex, label %bb.jx, label %.split435.us.i.i, !prof !10, !nosanitize !9

bb.jx:                                            ; preds = %bb.jw
  %i.bey = load <2 x float>, ptr %i.bes, align 4
  %i.bez = fsub <2 x float> %i.bey, %.sroa.059.0.copyload.i.i ; 2 uses
  %i.bfa = fmul <2 x float> %i.bez, %i.bez
  %i.bfb = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.bfa) ; 3 uses
  %i.bfc = getelementptr inbounds nuw i8, ptr %i.bes, i64 8
  %i.bfd = load float, ptr %i.beq, align 4, !tbaa !185
  %i.bfe = load float, ptr %i.bfc, align 4, !tbaa !185
  %i.bff = fadd float %i.bfd, %i.bfe              ; 2 uses
  %i.bfg = fadd float %i.bef, %.1164425.us.i.i
  %i.bfh = fcmp ogt float %i.bfb, %i.bfg
  br i1 %i.bfh, label %b3IsBetterCullCandidate.exit.thread.us.i.i, label %bb.jy

bb.jy:                                            ; preds = %bb.jx
  %i.bfi = fsub float %.1164425.us.i.i, %i.bef
  %i.bfj = fcmp uge float %i.bfb, %i.bfi
  %i.bfk = fsub float %.1160426.us.i.i, %i.beh
  %i.bfl = fcmp olt float %i.bff, %i.bfk
  %or.cond.us.i.i = select i1 %i.bfj, i1 %i.bfl, i1 false
  br i1 %or.cond.us.i.i, label %b3IsBetterCullCandidate.exit.thread.us.i.i, label %b3IsBetterCullCandidate.exit.thread295.us.i.i

b3IsBetterCullCandidate.exit.thread.us.i.i:       ; preds = %bb.jy, %bb.jx
  %i.bfm = trunc nuw nsw i64 %indvars.iv576.i.i to i32
  br label %b3IsBetterCullCandidate.exit.thread295.us.i.i

b3IsBetterCullCandidate.exit.thread295.us.i.i:    ; preds = %b3IsBetterCullCandidate.exit.thread.us.i.i, %bb.jy
  %.2165.us.i.i = phi float [ %i.bfb, %b3IsBetterCullCandidate.exit.thread.us.i.i ], [ %.1164425.us.i.i, %bb.jy ] ; 2 uses
  %.2161.us.i.i = phi float [ %i.bff, %b3IsBetterCullCandidate.exit.thread.us.i.i ], [ %.1160426.us.i.i, %bb.jy ] ; 2 uses
  %.2158.us.i.i = phi i32 [ %i.ber, %b3IsBetterCullCandidate.exit.thread.us.i.i ], [ %.1157427.us.i.i, %bb.jy ] ; 2 uses
  %.2155.us.i.i = phi i32 [ %i.bfm, %b3IsBetterCullCandidate.exit.thread.us.i.i ], [ %.1154428.us.i.i, %bb.jy ] ; 2 uses
  %indvars.iv.next577.i.i = add nuw nsw i64 %indvars.iv576.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next577.i.i, %wide.trip.count.i1098
  br i1 %exitcond.not.i.i, label %.loopexit.i.i, label %.lr.ph.split.us.i.i, !llvm.loop !45

.split.us.i.i:                                    ; preds = %.lr.ph.split.us.i.i
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @244, i64 %i.bdw, i64 %i.beu) #9, !nosanitize !9
  unreachable, !nosanitize !9

.split435.us.i.i:                                 ; preds = %bb.jw
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @245, i64 %i.bev) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.jz:                                            ; preds = %bb.kg
  %.not226.i.i = icmp eq i32 %spec.select.i.i, 0
  %.pre13761 = and i64 %i.bdw, 3, !nosanitize !9
  %i.bfn = icmp eq i64 %.pre13761, 0              ; 2 uses
  br i1 %.not226.i.i, label %._crit_edge13757, label %bb.kh

.preheader.split.i.i:                             ; preds = %bb.jt, %bb.kg
  %indvars.iv594.i.i = phi i64 [ %indvars.iv.next595.i.i, %bb.kg ], [ 1, %bb.jt ] ; 4 uses
  %.0149492.i.i = phi i32 [ %spec.select.i.i, %bb.kg ], [ 0, %bb.jt ] ; 2 uses
  %i.bfo = getelementptr inbounds nuw [16 x i8], ptr %.fr257.i, i64 %indvars.iv594.i.i ; 2 uses
  %i.bfp = shl nuw nsw i64 %indvars.iv594.i.i, 4
  %i.bfq = add i64 %i.bfp, %i.bdw, !nosanitize !9 ; 2 uses
  %.not264.i = icmp ult i64 %i.bfq, %i.bdw, !nosanitize !9
  br i1 %.not264.i, label %.split495.i.i, label %bb.ka, !prof !19, !nosanitize !9

.split495.i.i:                                    ; preds = %.preheader.split.i.i
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @246, i64 %i.bdw, i64 %i.bfq) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.ka:                                            ; preds = %.preheader.split.i.i
  %i.bfr = ptrtoint ptr %i.bfo to i64, !nosanitize !9 ; 2 uses
  %i.bfs = and i64 %i.bfr, 3, !nosanitize !9
  %i.bft = icmp eq i64 %i.bfs, 0, !nosanitize !9
  br i1 %i.bft, label %bb.kc, label %bb.kb, !prof !10, !nosanitize !9

bb.kb:                                            ; preds = %bb.ka
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @247, i64 %i.bfr) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.kc:                                            ; preds = %bb.ka
  %i.bfu = getelementptr inbounds nuw i8, ptr %i.bfo, i64 8
  %i.bfv = load float, ptr %i.bfu, align 4, !tbaa !185
  %i.bfw = zext nneg i32 %.0149492.i.i to i64     ; 2 uses
  %i.bfx = getelementptr inbounds nuw [16 x i8], ptr %.fr257.i, i64 %i.bfw ; 2 uses
  %i.bfy = shl nuw nsw i64 %i.bfw, 4
  %i.bfz = add i64 %i.bfy, %i.bdw, !nosanitize !9 ; 2 uses
  %.not265.i = icmp ult i64 %i.bfz, %i.bdw, !nosanitize !9
  br i1 %.not265.i, label %bb.kd, label %bb.ke, !prof !19, !nosanitize !9

bb.kd:                                            ; preds = %bb.kc
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @248, i64 %i.bdw, i64 %i.bfz) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.ke:                                            ; preds = %bb.kc
  %i.bga = ptrtoint ptr %i.bfx to i64, !nosanitize !9 ; 2 uses
  %i.bgb = and i64 %i.bga, 3, !nosanitize !9
  %i.bgc = icmp eq i64 %i.bgb, 0, !nosanitize !9
  br i1 %i.bgc, label %bb.kg, label %bb.kf, !prof !10, !nosanitize !9

bb.kf:                                            ; preds = %bb.ke
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @249, i64 %i.bga) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.kg:                                            ; preds = %bb.ke
  %i.bgd = getelementptr inbounds nuw i8, ptr %i.bfx, i64 8
  %i.bge = load float, ptr %i.bgd, align 4, !tbaa !185
  %i.bgf = fcmp olt float %i.bfv, %i.bge
  %i.bgg = trunc nuw nsw i64 %indvars.iv594.i.i to i32
  %spec.select.i.i = select i1 %i.bgf, i32 %i.bgg, i32 %.0149492.i.i ; 3 uses
  %indvars.iv.next595.i.i = add nuw nsw i64 %indvars.iv594.i.i, 1 ; 2 uses
  %exitcond598.not.i.i = icmp eq i64 %indvars.iv.next595.i.i, %wide.trip.count.i1098
  br i1 %exitcond598.not.i.i, label %bb.jz, label %.preheader.split.i.i, !llvm.loop !46

bb.kh:                                            ; preds = %bb.jz
  br i1 %i.bfn, label %bb.kj, label %bb.ki, !prof !10, !nosanitize !9

bb.ki:                                            ; preds = %bb.kh
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @250, i64 %i.bdw) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.kj:                                            ; preds = %bb.kh
  %i.bgh = zext nneg i32 %spec.select.i.i to i64  ; 2 uses
  %i.bgi = shl nuw nsw i64 %i.bgh, 4
  %i.bgj = add i64 %i.bgi, %i.bdw, !nosanitize !9 ; 2 uses
  %.not266.i = icmp ult i64 %i.bgj, %i.bdw, !nosanitize !9
  br i1 %.not266.i, label %bb.kk, label %bb.kl, !prof !19, !nosanitize !9

bb.kk:                                            ; preds = %bb.kj
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @251, i64 %i.bdw, i64 %i.bgj) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.kl:                                            ; preds = %bb.kj
  %i.bgk = getelementptr inbounds nuw [16 x i8], ptr %.fr257.i, i64 %i.bgh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.fr257.i, ptr noundef nonnull align 4 dereferenceable(16) %i.bgk, i64 16, i1 false), !tbaa.struct !186
  br label %._crit_edge13757

bb.km:                                            ; preds = %bb.jt
  %i.bgl = sext i32 %.1157.lcssa.i.i to i64       ; 2 uses
  %i.bgm = getelementptr inbounds [16 x i8], ptr %.fr257.i, i64 %i.bgl ; 3 uses
  %i.bgn = shl nsw i64 %i.bgl, 4
  %i.bgo = add i64 %i.bgn, %i.bdw, !nosanitize !9 ; 3 uses
  %i.bgp = icmp ne i64 %i.bgo, 0
  %i.bgq = icmp uge i64 %i.bgo, %i.bdw, !nosanitize !9
  %i.bgr = icmp slt i32 %.1157.lcssa.i.i, 0
  %i.bgs = xor i1 %i.bgr, %i.bgq
  %i.bgt = and i1 %i.bgp, %i.bgs, !nosanitize !9
  br i1 %i.bgt, label %bb.ko, label %bb.kn, !prof !10, !nosanitize !9

bb.kn:                                            ; preds = %bb.km
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @252, i64 %i.bdw, i64 %i.bgo) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.ko:                                            ; preds = %bb.km
  %i.bgu = ptrtoint ptr %i.bgm to i64, !nosanitize !9 ; 2 uses
  %i.bgv = and i64 %i.bgu, 3, !nosanitize !9
  %i.bgw = icmp eq i64 %i.bgv, 0, !nosanitize !9
  br i1 %i.bgw, label %bb.kq, label %bb.kp, !prof !10, !nosanitize !9

bb.kp:                                            ; preds = %bb.ko
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @253, i64 %i.bgu) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.kq:                                            ; preds = %bb.ko
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %11, ptr noundef nonnull align 4 dereferenceable(16) %i.bgm, i64 16, i1 false), !tbaa.struct !186
  br i1 %.not217.i.i.a, label %bb.kr, label %bb.ks, !prof !19, !nosanitize !9

bb.kr:                                            ; preds = %bb.kq
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @254, i64 %25, i64 %26) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.ks:                                            ; preds = %bb.kq
  %i.bgx = sext i32 %.1154.lcssa.i.i to i64       ; 2 uses
  %i.bgy = getelementptr inbounds [16 x i8], ptr %.fr257.i, i64 %i.bgx ; 3 uses
  %i.bgz = shl nsw i64 %i.bgx, 4
  %i.bha = add i64 %i.bgz, %i.bdw, !nosanitize !9 ; 3 uses
  %i.bhb = icmp ne i64 %i.bha, 0
  %i.bhc = icmp uge i64 %i.bha, %i.bdw, !nosanitize !9
  %i.bhd = icmp slt i32 %.1154.lcssa.i.i, 0
  %i.bhe = xor i1 %i.bhd, %i.bhc
  %i.bhf = and i1 %i.bhb, %i.bhe, !nosanitize !9
  br i1 %i.bhf, label %bb.ku, label %bb.kt, !prof !10, !nosanitize !9

bb.kt:                                            ; preds = %bb.ks
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @255, i64 %i.bdw, i64 %i.bha) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.ku:                                            ; preds = %bb.ks
  %i.bhg = ptrtoint ptr %i.bgy to i64, !nosanitize !9 ; 2 uses
  %i.bhh = and i64 %i.bhg, 3, !nosanitize !9
  %i.bhi = icmp eq i64 %i.bhh, 0, !nosanitize !9
  br i1 %i.bhi, label %bb.kw, label %bb.kv, !prof !10, !nosanitize !9

bb.kv:                                            ; preds = %bb.ku
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @256, i64 %i.bhg) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.kw:                                            ; preds = %bb.ku
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ayr, ptr noundef nonnull align 4 dereferenceable(16) %i.bgy, i64 16, i1 false), !tbaa.struct !186
  %i.bhj = add nsw i32 %i.bcp, -1
  %i.bhk = zext nneg i32 %i.bhj to i64            ; 2 uses
  %i.bhl = getelementptr inbounds nuw [16 x i8], ptr %.fr257.i, i64 %i.bhk ; 2 uses
  %i.bhm = shl nuw nsw i64 %i.bhk, 4
  %i.bhn = add i64 %i.bhm, %i.bdw, !nosanitize !9 ; 2 uses
  %.not308.i.i = icmp ult i64 %i.bhn, %i.bdw, !nosanitize !9
  br i1 %.not308.i.i, label %bb.kx, label %bb.ky, !prof !19, !nosanitize !9

bb.kx:                                            ; preds = %bb.kw
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @257, i64 %i.bdw, i64 %i.bhn) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.ky:                                            ; preds = %bb.kw
  %i.bho = ptrtoint ptr %i.bhl to i64, !nosanitize !9 ; 2 uses
  %i.bhp = and i64 %i.bho, 3, !nosanitize !9
  %i.bhq = icmp eq i64 %i.bhp, 0, !nosanitize !9
  br i1 %i.bhq, label %bb.la, label %bb.kz, !prof !10, !nosanitize !9

bb.kz:                                            ; preds = %bb.ky
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @258, i64 %i.bho) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.la:                                            ; preds = %bb.ky
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bgy, ptr noundef nonnull align 4 dereferenceable(16) %i.bhl, i64 16, i1 false), !tbaa.struct !186
  %i.bhr = add nsw i32 %i.bcp, -2                 ; 3 uses
  %i.bhs = zext nneg i32 %i.bhr to i64            ; 3 uses
  %i.bht = getelementptr inbounds nuw [16 x i8], ptr %.fr257.i, i64 %i.bhs ; 2 uses
  %i.bhu = shl nuw nsw i64 %i.bhs, 4
  %i.bhv = add i64 %i.bhu, %i.bdw, !nosanitize !9 ; 2 uses
  %.not309.i.i = icmp ult i64 %i.bhv, %i.bdw, !nosanitize !9
  br i1 %.not309.i.i, label %bb.lb, label %bb.lc, !prof !19, !nosanitize !9

bb.lb:                                            ; preds = %bb.la
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @259, i64 %i.bdw, i64 %i.bhv) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.lc:                                            ; preds = %bb.la
  %i.bhw = ptrtoint ptr %i.bht to i64, !nosanitize !9 ; 2 uses
  %i.bhx = and i64 %i.bhw, 3, !nosanitize !9
  %i.bhy = icmp eq i64 %i.bhx, 0, !nosanitize !9
  br i1 %i.bhy, label %bb.le, label %bb.ld, !prof !10, !nosanitize !9

bb.ld:                                            ; preds = %bb.lc
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @260, i64 %i.bhw) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.le:                                            ; preds = %bb.lc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bgm, ptr noundef nonnull align 4 dereferenceable(16) %i.bht, i64 16, i1 false), !tbaa.struct !186
  %i.bhz = icmp eq i32 %i.bhr, 0
  br i1 %i.bhz, label %bb.lf, label %32

bb.lf:                                            ; preds = %bb.le
  %i.bia = and i64 %i.bdw, 3, !nosanitize !9
  %i.bib = icmp eq i64 %i.bia, 0, !nosanitize !9
  br i1 %i.bib, label %bb.lh, label %bb.lg, !prof !10, !nosanitize !9

bb.lg:                                            ; preds = %bb.lf
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @261, i64 %i.bdw) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.lh:                                            ; preds = %bb.lf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.fr257.i, ptr noundef nonnull align 16 dereferenceable(16) %11, i64 16, i1 false), !tbaa.struct !186
  %29 = getelementptr inbounds nuw i8, ptr %.fr257.i, i64 16
  %.not225.i.i = icmp ugt ptr %.fr257.i, inttoptr (i64 -17 to ptr)
  br i1 %.not225.i.i, label %bb.li, label %30, !prof !19, !nosanitize !9

bb.li:                                            ; preds = %bb.lh
  %i.bic = add i64 %i.bdw, 16, !nosanitize !9
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @262, i64 %i.bdw, i64 %i.bic) #9, !nosanitize !9
  unreachable, !nosanitize !9

30:                                               ; preds = %bb.lh
  br i1 %.not.i.i, label %31, label %bb.lj, !prof !19, !nosanitize !9

31:                                               ; preds = %30
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @263, i64 %25, i64 0) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.lj:                                            ; preds = %30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %29, ptr noundef nonnull align 16 dereferenceable(16) %i.ayr, i64 16, i1 false), !tbaa.struct !186
  br label %._crit_edge13757

32:                                               ; preds = %bb.le
  br i1 %.not.i.i, label %33, label %.lr.ph482.i.preheader.i, !prof !19, !nosanitize !9

33:                                               ; preds = %32
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @264, i64 %25, i64 0) #9, !nosanitize !9
  unreachable, !nosanitize !9

.lr.ph482.i.preheader.i:                          ; preds = %32
  %.sroa.038.0.copyload.i.i = load <2 x float>, ptr %11, align 16, !tbaa !114 ; 5 uses
  %i.bid = load <2 x float>, ptr %i.ayr, align 16, !tbaa !114 ; 3 uses
  %i.bie = fsub <2 x float> %i.bid, %.sroa.038.0.copyload.i.i ; 2 uses
  br label %.lr.ph482.i.i

._crit_edge.i.i:                                  ; preds = %b3IsBetterCullCandidate.exit238.thread298.i.i
  %i.bif = fcmp olt float %.1143.i.i, 0.000000e+00 ; 3 uses
  %i.big = icmp eq i32 %.1145.i.i, -1
  br i1 %i.big, label %._crit_edge.thread.i.i, label %bb.lt

.lr.ph482.i.i:                                    ; preds = %b3IsBetterCullCandidate.exit238.thread298.i.i, %.lr.ph482.i.preheader.i
  %indvars.iv584.i.i = phi i64 [ %indvars.iv.next585.i.i, %b3IsBetterCullCandidate.exit238.thread298.i.i ], [ 0, %.lr.ph482.i.preheader.i ] ; 4 uses
  %.0142480.i.i = phi float [ %.1143.i.i, %b3IsBetterCullCandidate.exit238.thread298.i.i ], [ 0.000000e+00, %.lr.ph482.i.preheader.i ]
  %.0144479.i.i = phi i32 [ %.1145.i.i, %b3IsBetterCullCandidate.exit238.thread298.i.i ], [ -1, %.lr.ph482.i.preheader.i ]
  %.3162478.i.i = phi float [ %.4.i.i, %b3IsBetterCullCandidate.exit238.thread298.i.i ], [ f0x7F7FFFFF, %.lr.ph482.i.preheader.i ] ; 2 uses
  %.3166477.i.i = phi float [ %.4167.i.i, %b3IsBetterCullCandidate.exit238.thread298.i.i ], [ 0.000000e+00, %.lr.ph482.i.preheader.i ] ; 3 uses
  %i.bih = getelementptr inbounds nuw [16 x i8], ptr %.fr257.i, i64 %indvars.iv584.i.i ; 3 uses
  %i.bii = shl nuw nsw i64 %indvars.iv584.i.i, 4
  %i.bij = add i64 %i.bii, %i.bdw, !nosanitize !9 ; 2 uses
  %.not262.i = icmp ult i64 %i.bij, %i.bdw, !nosanitize !9
  br i1 %.not262.i, label %bb.lk, label %bb.ll, !prof !19, !nosanitize !9

bb.lk:                                            ; preds = %.lr.ph482.i.i
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @265, i64 %i.bdw, i64 %i.bij) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.ll:                                            ; preds = %.lr.ph482.i.i
  %i.bik = ptrtoint ptr %i.bih to i64, !nosanitize !9 ; 2 uses
  %i.bil = and i64 %i.bik, 3, !nosanitize !9
  %i.bim = icmp eq i64 %i.bil, 0, !nosanitize !9
  br i1 %i.bim, label %bb.ln, label %bb.lm, !prof !10, !nosanitize !9

bb.lm:                                            ; preds = %bb.ll
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @266, i64 %i.bik) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.ln:                                            ; preds = %bb.ll
  %.sroa.023.0.copyload.i.i = load <2 x float>, ptr %i.bih, align 4, !tbaa !114
  %i.bin = fsub <2 x float> %.sroa.023.0.copyload.i.i, %.sroa.038.0.copyload.i.i
  %i.bio = shufflevector <2 x float> %i.bin, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bip = fmul <2 x float> %i.bie, %i.bio        ; 2 uses
  %shift20771 = shufflevector <2 x float> %i.bip, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop20772 = fsub <2 x float> %i.bip, %shift20771
  %i.biq = extractelement <2 x float> %foldExtExtBinop20772, i64 0 ; 4 uses
  %i.bir = fcmp olt float %i.biq, 0.000000e+00
  %i.bis = fneg float %i.biq
  %i.bit = select i1 %i.bir, float %i.bis, float %i.biq ; 3 uses
  %i.biu = getelementptr inbounds nuw i8, ptr %i.bih, i64 8
  %i.biv = load float, ptr %i.biu, align 4, !tbaa !185 ; 2 uses
  %i.biw = fadd float %i.bef, %.3166477.i.i
  %i.bix = fcmp ogt float %i.bit, %i.biw
  br i1 %i.bix, label %b3IsBetterCullCandidate.exit238.thread.i.i, label %bb.lo

bb.lo:                                            ; preds = %bb.ln
  %i.biy = fsub float %.3166477.i.i, %i.bef
  %i.biz = fcmp uge float %i.bit, %i.biy
  %i.bja = fsub float %.3162478.i.i, %i.beh
  %i.bjb = fcmp olt float %i.biv, %i.bja
  %or.cond305.i.i = select i1 %i.biz, i1 %i.bjb, i1 false
  br i1 %or.cond305.i.i, label %b3IsBetterCullCandidate.exit238.thread.i.i, label %b3IsBetterCullCandidate.exit238.thread298.i.i

b3IsBetterCullCandidate.exit238.thread.i.i:       ; preds = %bb.lo, %bb.ln
  %i.bjc = trunc nuw nsw i64 %indvars.iv584.i.i to i32
  br label %b3IsBetterCullCandidate.exit238.thread298.i.i

b3IsBetterCullCandidate.exit238.thread298.i.i:    ; preds = %b3IsBetterCullCandidate.exit238.thread.i.i, %bb.lo
  %.4167.i.i = phi float [ %i.bit, %b3IsBetterCullCandidate.exit238.thread.i.i ], [ %.3166477.i.i, %bb.lo ]
  %.4.i.i = phi float [ %i.biv, %b3IsBetterCullCandidate.exit238.thread.i.i ], [ %.3162478.i.i, %bb.lo ]
  %.1145.i.i = phi i32 [ %i.bjc, %b3IsBetterCullCandidate.exit238.thread.i.i ], [ %.0144479.i.i, %bb.lo ] ; 4 uses
  %.1143.i.i = phi float [ %i.biq, %b3IsBetterCullCandidate.exit238.thread.i.i ], [ %.0142480.i.i, %bb.lo ] ; 2 uses
  %indvars.iv.next585.i.i = add nuw nsw i64 %indvars.iv584.i.i, 1 ; 2 uses
  %exitcond588.not.i.i = icmp eq i64 %indvars.iv.next585.i.i, %i.bhs
  br i1 %exitcond588.not.i.i, label %._crit_edge.i.i, label %.lr.ph482.i.i, !llvm.loop !47

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.i.i
  %i.bjd = and i64 %i.bdw, 3, !nosanitize !9
  %i.bje = icmp eq i64 %i.bjd, 0, !nosanitize !9
  br i1 %i.bje, label %bb.lq, label %bb.lp, !prof !10, !nosanitize !9

bb.lp:                                            ; preds = %._crit_edge.thread.i.i
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @267, i64 %i.bdw) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.lq:                                            ; preds = %._crit_edge.thread.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.fr257.i, ptr noundef nonnull align 16 dereferenceable(16) %11, i64 16, i1 false), !tbaa.struct !186
  %.not224.i.i = icmp ugt ptr %.fr257.i, inttoptr (i64 -17 to ptr)
  br i1 %.not224.i.i, label %bb.lr, label %bb.ls, !prof !19, !nosanitize !9

bb.lr:                                            ; preds = %bb.lq
  %i.bjf = add i64 %i.bdw, 16, !nosanitize !9
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @268, i64 %i.bdw, i64 %i.bjf) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.ls:                                            ; preds = %bb.lq
  %i.bjg = getelementptr inbounds nuw i8, ptr %.fr257.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bjg, ptr noundef nonnull align 16 dereferenceable(16) %i.ayr, i64 16, i1 false), !tbaa.struct !186
  br label %._crit_edge13757

bb.lt:                                            ; preds = %._crit_edge.i.i
  br i1 %.not219.i.i.a, label %bb.lu, label %bb.lv, !prof !19, !nosanitize !9

bb.lu:                                            ; preds = %bb.lt
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @269, i64 %25, i64 %27) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.lv:                                            ; preds = %bb.lt
  %i.bjh = sext i32 %.1145.i.i to i64             ; 2 uses
  %i.bji = getelementptr inbounds [16 x i8], ptr %.fr257.i, i64 %i.bjh ; 3 uses
  %i.bjj = shl nsw i64 %i.bjh, 4
  %i.bjk = add i64 %i.bjj, %i.bdw, !nosanitize !9 ; 3 uses
  %i.bjl = icmp ne i64 %i.bjk, 0
  %i.bjm = icmp uge i64 %i.bjk, %i.bdw, !nosanitize !9
  %i.bjn = icmp slt i32 %.1145.i.i, 0
  %i.bjo = xor i1 %i.bjn, %i.bjm
  %i.bjp = and i1 %i.bjl, %i.bjo, !nosanitize !9
  br i1 %i.bjp, label %bb.lx, label %bb.lw, !prof !10, !nosanitize !9

bb.lw:                                            ; preds = %bb.lv
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @270, i64 %i.bdw, i64 %i.bjk) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.lx:                                            ; preds = %bb.lv
  %i.bjq = ptrtoint ptr %i.bji to i64, !nosanitize !9 ; 2 uses
  %i.bjr = and i64 %i.bjq, 3, !nosanitize !9
  %i.bjs = icmp eq i64 %i.bjr, 0, !nosanitize !9
  br i1 %i.bjs, label %bb.lz, label %bb.ly, !prof !10, !nosanitize !9

bb.ly:                                            ; preds = %bb.lx
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @271, i64 %i.bjq) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.lz:                                            ; preds = %bb.lx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ays, ptr noundef nonnull align 4 dereferenceable(16) %i.bji, i64 16, i1 false), !tbaa.struct !186
  %i.bjt = icmp eq i32 %i.bhr, 1
  br i1 %i.bjt, label %bb.ma, label %bb.mh

bb.ma:                                            ; preds = %bb.lz
  %i.bju = and i64 %i.bdw, 3, !nosanitize !9
  %i.bjv = icmp eq i64 %i.bju, 0, !nosanitize !9
  br i1 %i.bjv, label %bb.mc, label %bb.mb, !prof !10, !nosanitize !9

bb.mb:                                            ; preds = %bb.ma
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @272, i64 %i.bdw) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.mc:                                            ; preds = %bb.ma
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.fr257.i, ptr noundef nonnull align 16 dereferenceable(16) %11, i64 16, i1 false), !tbaa.struct !186
  %.not222.i.i = icmp ugt ptr %.fr257.i, inttoptr (i64 -17 to ptr)
  br i1 %.not222.i.i, label %bb.md, label %bb.me, !prof !19, !nosanitize !9

bb.md:                                            ; preds = %bb.mc
  %i.bjw = add i64 %i.bdw, 16, !nosanitize !9
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @273, i64 %i.bdw, i64 %i.bjw) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.me:                                            ; preds = %bb.mc
  %i.bjx = getelementptr inbounds nuw i8, ptr %.fr257.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bjx, ptr noundef nonnull align 16 dereferenceable(16) %i.ayr, i64 16, i1 false), !tbaa.struct !186
  %34 = getelementptr inbounds nuw i8, ptr %.fr257.i, i64 32
  %.not223.i.i = icmp ugt ptr %.fr257.i, inttoptr (i64 -33 to ptr)
  br i1 %.not223.i.i, label %bb.mf, label %35, !prof !19, !nosanitize !9

bb.mf:                                            ; preds = %bb.me
  %i.bjy = add i64 %i.bdw, 32, !nosanitize !9
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @274, i64 %i.bdw, i64 %i.bjy) #9, !nosanitize !9
  unreachable, !nosanitize !9

35:                                               ; preds = %bb.me
  br i1 %.not218.i.i, label %36, label %bb.mg, !prof !19, !nosanitize !9

36:                                               ; preds = %35
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @275, i64 %25, i64 0) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.mg:                                            ; preds = %35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %34, ptr noundef nonnull align 16 dereferenceable(16) %i.ays, i64 16, i1 false), !tbaa.struct !186
  br label %._crit_edge13757

bb.mh:                                            ; preds = %bb.lz
  %i.bjz = add nsw i32 %i.bcp, -3
  %i.bka = zext i32 %i.bjz to i64                 ; 3 uses
  %i.bkb = getelementptr inbounds nuw [16 x i8], ptr %.fr257.i, i64 %i.bka ; 2 uses
  %i.bkc = shl nuw nsw i64 %i.bka, 4
  %i.bkd = add i64 %i.bkc, %i.bdw, !nosanitize !9 ; 2 uses
  %.not310.i.i = icmp ult i64 %i.bkd, %i.bdw, !nosanitize !9
  br i1 %.not310.i.i, label %bb.mi, label %bb.mj, !prof !19, !nosanitize !9

bb.mi:                                            ; preds = %bb.mh
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @276, i64 %i.bdw, i64 %i.bkd) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.mj:                                            ; preds = %bb.mh
  %i.bke = ptrtoint ptr %i.bkb to i64, !nosanitize !9 ; 2 uses
  %i.bkf = and i64 %i.bke, 3, !nosanitize !9
  %i.bkg = icmp eq i64 %i.bkf, 0, !nosanitize !9
  br i1 %i.bkg, label %37, label %bb.mk, !prof !10, !nosanitize !9

bb.mk:                                            ; preds = %bb.mj
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @277, i64 %i.bke) #9, !nosanitize !9
  unreachable, !nosanitize !9

37:                                               ; preds = %bb.mj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bji, ptr noundef nonnull align 4 dereferenceable(16) %i.bkb, i64 16, i1 false), !tbaa.struct !186
  br i1 %.not218.i.i, label %38, label %.lr.ph489.i.i, !prof !19, !nosanitize !9

38:                                               ; preds = %37
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @278, i64 %25, i64 0) #9, !nosanitize !9
  unreachable, !nosanitize !9

.lr.ph489.i.i:                                    ; preds = %37
  %i.bkh = load <2 x float>, ptr %i.ays, align 16, !tbaa !114 ; 3 uses
  %i.bki = fsub <2 x float> %i.bkh, %.sroa.038.0.copyload.i.i
  %.sroa.036.0.i.i = select i1 %i.bif, <2 x float> %i.bki, <2 x float> %i.bie
  %i.bkj = select i1 %i.bif, <2 x float> %i.bkh, <2 x float> %i.bid ; 2 uses
  %i.bkk = select i1 %i.bif, <2 x float> %i.bid, <2 x float> %i.bkh ; 3 uses
  %i.bkl = fsub <2 x float> %i.bkk, %i.bkj
  %i.bkm = fsub <2 x float> %.sroa.038.0.copyload.i.i, %i.bkk
  %i.bkn = shufflevector <2 x float> %.sroa.036.0.i.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  br label %bb.ml

._crit_edge490.i.i:                               ; preds = %b3IsBetterCullCandidate.exit282.thread301.i.i
  %i.bko = icmp eq i32 %.3147.i.i, -1
  br i1 %i.bko, label %._crit_edge490.thread.i.i, label %bb.mx

bb.ml:                                            ; preds = %b3IsBetterCullCandidate.exit282.thread301.i.i, %.lr.ph489.i.i
  %indvars.iv589.i.i = phi i64 [ 0, %.lr.ph489.i.i ], [ %indvars.iv.next590.i.i, %b3IsBetterCullCandidate.exit282.thread301.i.i ] ; 4 uses
  %.2146486.i.i = phi i32 [ -1, %.lr.ph489.i.i ], [ %.3147.i.i, %b3IsBetterCullCandidate.exit282.thread301.i.i ]
  %.5485.i.i = phi float [ f0x7F7FFFFF, %.lr.ph489.i.i ], [ %.6.i.i, %b3IsBetterCullCandidate.exit282.thread301.i.i ] ; 2 uses
  %.5168484.i.i = phi float [ 0.000000e+00, %.lr.ph489.i.i ], [ %.6169.i.i, %b3IsBetterCullCandidate.exit282.thread301.i.i ] ; 3 uses
  %i.bkp = getelementptr inbounds nuw [16 x i8], ptr %.fr257.i, i64 %indvars.iv589.i.i ; 3 uses
  %i.bkq = shl nuw nsw i64 %indvars.iv589.i.i, 4
  %i.bkr = add i64 %i.bkq, %i.bdw, !nosanitize !9 ; 2 uses
  %.not263.i = icmp ult i64 %i.bkr, %i.bdw, !nosanitize !9
  br i1 %.not263.i, label %bb.mm, label %bb.mn, !prof !19, !nosanitize !9

bb.mm:                                            ; preds = %bb.ml
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @279, i64 %i.bdw, i64 %i.bkr) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.mn:                                            ; preds = %bb.ml
  %i.bks = ptrtoint ptr %i.bkp to i64, !nosanitize !9 ; 2 uses
  %i.bkt = and i64 %i.bks, 3, !nosanitize !9
  %i.bku = icmp eq i64 %i.bkt, 0, !nosanitize !9
  br i1 %i.bku, label %bb.mp, label %bb.mo, !prof !10, !nosanitize !9

bb.mo:                                            ; preds = %bb.mn
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @280, i64 %i.bks) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.mp:                                            ; preds = %bb.mn
  %.sroa.07.0.copyload.i.i = load <2 x float>, ptr %i.bkp, align 4, !tbaa !114 ; 3 uses
  %i.bkv = fsub <2 x float> %.sroa.07.0.copyload.i.i, %.sroa.038.0.copyload.i.i
  %i.bkw = fmul <2 x float> %i.bkn, %i.bkv        ; 2 uses
  %shift20774 = shufflevector <2 x float> %i.bkw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop20775 = fsub <2 x float> %i.bkw, %shift20774
  %i.bkx = extractelement <2 x float> %foldExtExtBinop20775, i64 0 ; 2 uses
  %i.bky = fsub <2 x float> %.sroa.07.0.copyload.i.i, %i.bkj
  %i.bkz = shufflevector <2 x float> %i.bky, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bla = fmul <2 x float> %i.bkl, %i.bkz        ; 2 uses
  %shift20777 = shufflevector <2 x float> %i.bla, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop20778 = fsub <2 x float> %shift20777, %i.bla
  %i.blb = extractelement <2 x float> %foldExtExtBinop20778, i64 0 ; 2 uses
  %i.blc = fsub <2 x float> %.sroa.07.0.copyload.i.i, %i.bkk
  %i.bld = shufflevector <2 x float> %i.blc, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ble = fmul <2 x float> %i.bkm, %i.bld        ; 2 uses
  %shift20780 = shufflevector <2 x float> %i.ble, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop20781 = fsub <2 x float> %shift20780, %i.ble
  %i.blf = extractelement <2 x float> %foldExtExtBinop20781, i64 0 ; 2 uses
  %i.blg = fcmp ogt float %i.blb, %i.blf
  %i.blh = select i1 %i.blg, float %i.blb, float %i.blf ; 2 uses
  %i.bli = fcmp ogt float %i.bkx, %i.blh
  %i.blj = select i1 %i.bli, float %i.bkx, float %i.blh ; 3 uses
  %i.blk = getelementptr inbounds nuw i8, ptr %i.bkp, i64 8
  %i.bll = load float, ptr %i.blk, align 4, !tbaa !185 ; 2 uses
  %i.blm = fadd float %i.bef, %.5168484.i.i
  %i.bln = fcmp ogt float %i.blj, %i.blm
  br i1 %i.bln, label %b3IsBetterCullCandidate.exit282.thread.i.i, label %bb.mq

bb.mq:                                            ; preds = %bb.mp
  %i.blo = fsub float %.5168484.i.i, %i.bef
  %i.blp = fcmp uge float %i.blj, %i.blo
  %i.blq = fsub float %.5485.i.i, %i.beh
  %i.blr = fcmp olt float %i.bll, %i.blq
  %or.cond307.i.i = select i1 %i.blp, i1 %i.blr, i1 false
  br i1 %or.cond307.i.i, label %b3IsBetterCullCandidate.exit282.thread.i.i, label %b3IsBetterCullCandidate.exit282.thread301.i.i

b3IsBetterCullCandidate.exit282.thread.i.i:       ; preds = %bb.mq, %bb.mp
  %i.bls = trunc nuw nsw i64 %indvars.iv589.i.i to i32
  br label %b3IsBetterCullCandidate.exit282.thread301.i.i

b3IsBetterCullCandidate.exit282.thread301.i.i:    ; preds = %b3IsBetterCullCandidate.exit282.thread.i.i, %bb.mq
  %.6169.i.i = phi float [ %i.blj, %b3IsBetterCullCandidate.exit282.thread.i.i ], [ %.5168484.i.i, %bb.mq ]
  %.6.i.i = phi float [ %i.bll, %b3IsBetterCullCandidate.exit282.thread.i.i ], [ %.5485.i.i, %bb.mq ]
  %.3147.i.i = phi i32 [ %i.bls, %b3IsBetterCullCandidate.exit282.thread.i.i ], [ %.2146486.i.i, %bb.mq ] ; 4 uses
  %indvars.iv.next590.i.i = add nuw nsw i64 %indvars.iv589.i.i, 1 ; 2 uses
  %exitcond593.not.i.i = icmp eq i64 %indvars.iv.next590.i.i, %i.bka
  br i1 %exitcond593.not.i.i, label %._crit_edge490.i.i, label %bb.ml, !llvm.loop !48

._crit_edge490.thread.i.i:                        ; preds = %._crit_edge490.i.i
  %i.blt = and i64 %i.bdw, 3, !nosanitize !9
  %i.blu = icmp eq i64 %i.blt, 0, !nosanitize !9
  br i1 %i.blu, label %bb.ms, label %bb.mr, !prof !10, !nosanitize !9

bb.mr:                                            ; preds = %._crit_edge490.thread.i.i
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @281, i64 %i.bdw) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.ms:                                            ; preds = %._crit_edge490.thread.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.fr257.i, ptr noundef nonnull align 16 dereferenceable(16) %11, i64 16, i1 false), !tbaa.struct !186
  %i.blv = add i64 %i.bdw, 16, !nosanitize !9     ; 2 uses
  %i.blw = icmp ne i64 %i.blv, 0, !nosanitize !9
  %i.blx = icmp ult ptr %.fr257.i, inttoptr (i64 -16 to ptr)
  %i.bly = and i1 %i.blx, %i.blw, !nosanitize !9
  br i1 %i.bly, label %bb.mu, label %bb.mt, !prof !10, !nosanitize !9

bb.mt:                                            ; preds = %bb.ms
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @282, i64 %i.bdw, i64 %i.blv) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.mu:                                            ; preds = %bb.ms
  %i.blz = getelementptr inbounds nuw i8, ptr %.fr257.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.blz, ptr noundef nonnull align 16 dereferenceable(16) %i.ayr, i64 16, i1 false), !tbaa.struct !186
  %i.bma = add i64 %i.bdw, 32, !nosanitize !9     ; 2 uses
  %i.bmb = icmp ne i64 %i.bma, 0, !nosanitize !9
  %i.bmc = icmp ult ptr %.fr257.i, inttoptr (i64 -32 to ptr)
  %i.bmd = and i1 %i.bmc, %i.bmb, !nosanitize !9
  br i1 %i.bmd, label %bb.mw, label %bb.mv, !prof !10, !nosanitize !9

bb.mv:                                            ; preds = %bb.mu
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @283, i64 %i.bdw, i64 %i.bma) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.mw:                                            ; preds = %bb.mu
  %i.bme = getelementptr inbounds nuw i8, ptr %.fr257.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bme, ptr noundef nonnull align 16 dereferenceable(16) %i.ays, i64 16, i1 false), !tbaa.struct !186
  br label %._crit_edge13757

bb.mx:                                            ; preds = %._crit_edge490.i.i
  br i1 %.not221.i.i.a, label %bb.my, label %bb.mz, !prof !19, !nosanitize !9

bb.my:                                            ; preds = %bb.mx
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @284, i64 %25, i64 %28) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.mz:                                            ; preds = %bb.mx
  %i.bmf = sext i32 %.3147.i.i to i64             ; 2 uses
  %i.bmg = getelementptr inbounds [16 x i8], ptr %.fr257.i, i64 %i.bmf ; 2 uses
  %i.bmh = shl nsw i64 %i.bmf, 4
  %i.bmi = add i64 %i.bmh, %i.bdw, !nosanitize !9 ; 3 uses
  %i.bmj = icmp ne i64 %i.bmi, 0
  %i.bmk = icmp uge i64 %i.bmi, %i.bdw, !nosanitize !9
  %i.bml = icmp slt i32 %.3147.i.i, 0
  %i.bmm = xor i1 %i.bml, %i.bmk
  %i.bmn = and i1 %i.bmj, %i.bmm, !nosanitize !9
  br i1 %i.bmn, label %bb.nb, label %bb.na, !prof !10, !nosanitize !9

bb.na:                                            ; preds = %bb.mz
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @285, i64 %i.bdw, i64 %i.bmi) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.nb:                                            ; preds = %bb.mz
  %i.bmo = ptrtoint ptr %i.bmg to i64, !nosanitize !9 ; 2 uses
  %i.bmp = and i64 %i.bmo, 3, !nosanitize !9
  %i.bmq = icmp eq i64 %i.bmp, 0, !nosanitize !9
  br i1 %i.bmq, label %bb.nd, label %bb.nc, !prof !10, !nosanitize !9

bb.nc:                                            ; preds = %bb.nb
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @286, i64 %i.bmo) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.nd:                                            ; preds = %bb.nb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ayt, ptr noundef nonnull align 4 dereferenceable(16) %i.bmg, i64 16, i1 false), !tbaa.struct !186
  %i.bmr = and i64 %i.bdw, 3, !nosanitize !9
  %i.bms = icmp eq i64 %i.bmr, 0, !nosanitize !9
  br i1 %i.bms, label %bb.nf, label %bb.ne, !prof !10, !nosanitize !9

bb.ne:                                            ; preds = %bb.nd
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @287, i64 %i.bdw) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.nf:                                            ; preds = %bb.nd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.fr257.i, ptr noundef nonnull align 16 dereferenceable(16) %11, i64 16, i1 false), !tbaa.struct !186
  %i.bmt = add i64 %i.bdw, 16, !nosanitize !9     ; 2 uses
  %i.bmu = icmp ne i64 %i.bmt, 0, !nosanitize !9
  %i.bmv = icmp ult ptr %.fr257.i, inttoptr (i64 -16 to ptr)
  %i.bmw = and i1 %i.bmv, %i.bmu, !nosanitize !9
  br i1 %i.bmw, label %bb.nh, label %bb.ng, !prof !10, !nosanitize !9

bb.ng:                                            ; preds = %bb.nf
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @288, i64 %i.bdw, i64 %i.bmt) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.nh:                                            ; preds = %bb.nf
  %i.bmx = getelementptr inbounds nuw i8, ptr %.fr257.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bmx, ptr noundef nonnull align 16 dereferenceable(16) %i.ayr, i64 16, i1 false), !tbaa.struct !186
  %i.bmy = add i64 %i.bdw, 32, !nosanitize !9     ; 2 uses
  %i.bmz = icmp ne i64 %i.bmy, 0, !nosanitize !9
  %i.bna = icmp ult ptr %.fr257.i, inttoptr (i64 -32 to ptr)
  %i.bnb = and i1 %i.bna, %i.bmz, !nosanitize !9
  br i1 %i.bnb, label %bb.nj, label %bb.ni, !prof !10, !nosanitize !9

bb.ni:                                            ; preds = %bb.nh
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @289, i64 %i.bdw, i64 %i.bmy) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.nj:                                            ; preds = %bb.nh
  %i.bnc = getelementptr inbounds nuw i8, ptr %.fr257.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bnc, ptr noundef nonnull align 16 dereferenceable(16) %i.ays, i64 16, i1 false), !tbaa.struct !186
  %39 = getelementptr inbounds nuw i8, ptr %.fr257.i, i64 48
  %i.bnd = add i64 %i.bdw, 48, !nosanitize !9     ; 2 uses
  %i.bne = icmp ne i64 %i.bnd, 0, !nosanitize !9
  %i.bnf = icmp ult ptr %.fr257.i, inttoptr (i64 -48 to ptr)
  %i.bng = and i1 %i.bnf, %i.bne, !nosanitize !9
  br i1 %i.bng, label %41, label %40, !prof !10, !nosanitize !9

40:                                               ; preds = %bb.nj
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @290, i64 %i.bdw, i64 %i.bnd) #9, !nosanitize !9
  unreachable, !nosanitize !9

41:                                               ; preds = %bb.nj
  br i1 %.not220.i.i, label %bb.nk, label %bb.nl, !prof !19, !nosanitize !9

bb.nk:                                            ; preds = %41
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @291, i64 %25, i64 0) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.nl:                                            ; preds = %41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %39, ptr noundef nonnull align 16 dereferenceable(16) %i.ayt, i64 16, i1 false), !tbaa.struct !186
  br label %._crit_edge13757

.lr.ph.split.i:                                   ; preds = %bb.no, %.lr.ph.split.preheader.i
  %indvars.iv.i1099 = phi i64 [ 0, %.lr.ph.split.preheader.i ], [ %indvars.iv.next.i1102, %bb.no ] ; 6 uses
  %i.bnh = getelementptr inbounds nuw [24 x i8], ptr %i.bcn, i64 %indvars.iv.i1099 ; 3 uses
  %i.bni = mul nuw nsw i64 %indvars.iv.i1099, 24
  %i.bnj = add i64 %i.bni, %i.bds, !nosanitize !9 ; 2 uses
  %.not91.i = icmp ult i64 %i.bnj, %i.bds, !nosanitize !9
  br i1 %.not91.i, label %.split.us.i1104, label %bb.nm, !prof !19, !nosanitize !9

.split.us.i1104:                                  ; preds = %.lr.ph.split.i
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @234, i64 %i.bds, i64 %i.bnj) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.nm:                                            ; preds = %.lr.ph.split.i
  %.sroa.018.0.copyload.i = load <2 x float>, ptr %i.bnh, align 4
  %.sroa.219.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bnh, i64 8
  %.sroa.219.0.copyload.i = load float, ptr %.sroa.219.0..sroa_idx.i, align 4
  %i.bnk = fsub <2 x float> %.sroa.018.0.copyload.i, %.sroa.030.0.copyload.i ; 2 uses
  %i.bnl = fsub float %.sroa.219.0.copyload.i, %.sroa.4.0.copyload.i
  %i.bnm = getelementptr inbounds nuw [16 x i8], ptr %.fr257.i, i64 %indvars.iv.i1099 ; 4 uses
  %i.bnn = shl nuw nsw i64 %indvars.iv.i1099, 4
  %i.bno = add i64 %i.bnn, %i.bdw, !nosanitize !9 ; 3 uses
  %i.bnp = icmp ne i64 %i.bno, 0
  %i.bnq = icmp uge i64 %i.bno, %i.bdw, !nosanitize !9
  %i.bnr = and i1 %i.bnq, %i.bnp, !nosanitize !9
  br i1 %i.bnr, label %bb.nn, label %.split250.us.i, !prof !10, !nosanitize !9

.split250.us.i:                                   ; preds = %bb.nm
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @235, i64 %i.bdw, i64 %i.bno) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.nn:                                            ; preds = %bb.nm
  %i.bns = ptrtoint ptr %i.bnm to i64, !nosanitize !9 ; 2 uses
  %i.bnt = and i64 %i.bns, 3, !nosanitize !9
  %i.bnu = icmp eq i64 %i.bnt, 0, !nosanitize !9
  br i1 %i.bnu, label %bb.no, label %.split254.i, !prof !10, !nosanitize !9

.split254.i:                                      ; preds = %.lr.ph.i1095, %bb.nn
  %.us-phi255.i = phi i64 [ %i.bns, %bb.nn ], [ 0, %.lr.ph.i1095 ]
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @237, i64 %.us-phi255.i) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.no:                                            ; preds = %bb.nn
  %i.bnv = fmul <2 x float> %i.beb, %i.bnk
  %i.bnw = shufflevector <2 x float> %i.bnv, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bnx = fmul <2 x float> %i.bea, %i.bnk
  %i.bny = insertelement <2 x float> poison, float %i.bnl, i64 0
  %i.bnz = shufflevector <2 x float> %i.bny, <2 x float> poison, <2 x i32> zeroinitializer
  %i.boa = fmul <2 x float> %i.bdz, %i.bnz
  %i.bob = fadd <2 x float> %i.bnx, %i.bnw
  %i.boc = fadd <2 x float> %i.boa, %i.bob
  %i.bod = shufflevector <2 x float> %i.boc, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.bod, ptr %i.bnm, align 4, !tbaa !114
  %i.boe = getelementptr inbounds nuw i8, ptr %i.bnh, i64 12
  %i.bof = getelementptr inbounds nuw i8, ptr %i.bnm, i64 8
  %i.bog = load float, ptr %i.boe, align 4, !tbaa !155
  store float %i.bog, ptr %i.bof, align 4, !tbaa !185
  %i.boh = getelementptr inbounds nuw i8, ptr %i.bnm, i64 12
  %i.boi = trunc nuw nsw i64 %indvars.iv.i1099 to i32
  store i32 %i.boi, ptr %i.boh, align 4, !tbaa !187
  %indvars.iv.next.i1102 = add nuw nsw i64 %indvars.iv.i1099, 1 ; 2 uses
  %exitcond.not.i1103 = icmp eq i64 %indvars.iv.next.i1102, %wide.trip.count.i1098
  br i1 %exitcond.not.i1103, label %.split469.preheader.i.i, label %.lr.ph.split.i, !llvm.loop !49

bb.np:                                            ; preds = %bb.oe, %bb.oa, %bb.nw, %bb.ns
  %narrow.i = mul nuw nsw i32 %.2.i.i, 24
  %i.boj = zext nneg i32 %narrow.i to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.bcn, ptr noundef nonnull align 16 dereferenceable(1) %12, i64 %i.boj, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #10
  br label %bb.of

.split.loop.exit8149:                             ; preds = %bb.nt, %bb.nx, %bb.ob
  %.sink = phi i64 [ 32, %bb.nx ], [ 48, %bb.ob ], [ 16, %bb.nt ]
  %i.bok = add i64 %.sink, %i.bdw, !nosanitize !9
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @238, i64 %i.bdw, i64 %i.bok) #9, !nosanitize !9
  unreachable, !nosanitize !9

._crit_edge13757:                                 ; preds = %bb.jz, %bb.nl, %bb.mw, %bb.mg, %bb.ls, %bb.lj, %bb.kl
  %.pre-phi13762 = phi i1 [ true, %bb.kl ], [ true, %bb.nl ], [ true, %bb.mw ], [ true, %bb.mg ], [ true, %bb.ls ], [ true, %bb.lj ], [ %i.bfn, %bb.jz ]
  %exitcond432.1.not.i = phi i1 [ false, %bb.kl ], [ false, %bb.nl ], [ false, %bb.mw ], [ false, %bb.mg ], [ true, %bb.ls ], [ true, %bb.lj ], [ false, %bb.jz ]
  %exitcond432.2.not.i = phi i1 [ false, %bb.kl ], [ false, %bb.nl ], [ true, %bb.mw ], [ true, %bb.mg ], [ false, %bb.ls ], [ false, %bb.lj ], [ false, %bb.jz ]
  %.2.i.i = phi i32 [ 1, %bb.kl ], [ 4, %bb.nl ], [ 3, %bb.mw ], [ 3, %bb.mg ], [ 2, %bb.ls ], [ 2, %bb.lj ], [ 1, %bb.jz ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #10
  br i1 %.pre-phi13762, label %bb.nq, label %.split.loop.exit8146, !prof !10, !nosanitize !9

.split.loop.exit8146:                             ; preds = %._crit_edge13757
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @239, i64 %i.bdw) #9, !nosanitize !9
  unreachable, !nosanitize !9

.split.loop.exit:                                 ; preds = %bb.nu, %bb.ny, %bb.oc
  %.sink18597 = phi i64 [ 48, %bb.ny ], [ 72, %bb.oc ], [ 24, %bb.nu ]
  %i.bol = ptrtoint ptr %12 to i64                ; 2 uses
  %i.bom = add i64 %.sink18597, %i.bol, !nosanitize !9
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @240, i64 %i.bol, i64 %i.bom) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.nq:                                            ; preds = %._crit_edge13757
  %i.bon = getelementptr inbounds nuw i8, ptr %.fr257.i, i64 12
  %i.boo = load i32, ptr %i.bon, align 4, !tbaa !187 ; 2 uses
  %i.bop = sext i32 %i.boo to i64                 ; 2 uses
  %i.boq = mul nsw i64 %i.bop, 24
  %i.bor = add i64 %i.boq, %i.bds, !nosanitize !9 ; 3 uses
  %i.bos = icmp ne i64 %i.bor, 0, !nosanitize !9
  %i.bot = icmp uge i64 %i.bor, %i.bds, !nosanitize !9
  %i.bou = icmp slt i32 %i.boo, 0
  %i.bov = xor i1 %i.bou, %i.bot
  %i.bow = and i1 %i.bos, %i.bov, !nosanitize !9
  br i1 %i.bow, label %bb.ns, label %bb.nr, !prof !10, !nosanitize !9

bb.nr:                                            ; preds = %bb.od, %bb.nz, %bb.nv, %bb.nq
  %.lcssa310.i = phi i64 [ %i.bor, %bb.nq ], [ %i.bpc, %bb.nv ], [ %i.bpn, %bb.nz ], [ %i.bpy, %bb.od ]
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @241, i64 %i.bds, i64 %.lcssa310.i) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.ns:                                            ; preds = %bb.nq
  %i.box = getelementptr inbounds [24 x i8], ptr %i.bcn, i64 %i.bop
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %12, ptr noundef nonnull align 4 dereferenceable(24) %i.box, i64 24, i1 false), !tbaa.struct !188
  br i1 %i.bei, label %bb.np, label %bb.nt

bb.nt:                                            ; preds = %bb.ns
  %.not267.1.i = icmp ugt ptr %.fr257.i, inttoptr (i64 -17 to ptr)
  br i1 %.not267.1.i, label %.split.loop.exit8149, label %bb.nu, !prof !19, !nosanitize !9

bb.nu:                                            ; preds = %bb.nt
  br i1 %.not.1.i, label %.split.loop.exit, label %bb.nv, !prof !19, !nosanitize !9

bb.nv:                                            ; preds = %bb.nu
  %i.boy = getelementptr inbounds nuw i8, ptr %.fr257.i, i64 28
  %i.boz = load i32, ptr %i.boy, align 4, !tbaa !187 ; 2 uses
  %i.bpa = sext i32 %i.boz to i64                 ; 2 uses
  %i.bpb = mul nsw i64 %i.bpa, 24
  %i.bpc = add i64 %i.bpb, %i.bds, !nosanitize !9 ; 3 uses
  %i.bpd = icmp ne i64 %i.bpc, 0, !nosanitize !9
  %i.bpe = icmp uge i64 %i.bpc, %i.bds, !nosanitize !9
  %i.bpf = icmp slt i32 %i.boz, 0
  %i.bpg = xor i1 %i.bpf, %i.bpe
  %i.bph = and i1 %i.bpd, %i.bpg, !nosanitize !9
  br i1 %i.bph, label %bb.nw, label %bb.nr, !prof !10, !nosanitize !9

bb.nw:                                            ; preds = %bb.nv
  %i.bpi = getelementptr inbounds [24 x i8], ptr %i.bcn, i64 %i.bpa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ayu, ptr noundef nonnull align 4 dereferenceable(24) %i.bpi, i64 24, i1 false), !tbaa.struct !188
  br i1 %exitcond432.1.not.i, label %bb.np, label %bb.nx

bb.nx:                                            ; preds = %bb.nw
  %.not267.2.i = icmp ugt ptr %.fr257.i, inttoptr (i64 -33 to ptr)
  br i1 %.not267.2.i, label %.split.loop.exit8149, label %bb.ny, !prof !19, !nosanitize !9

bb.ny:                                            ; preds = %bb.nx
  br i1 %.not.2.i, label %.split.loop.exit, label %bb.nz, !prof !19, !nosanitize !9

bb.nz:                                            ; preds = %bb.ny
  %i.bpj = getelementptr inbounds nuw i8, ptr %.fr257.i, i64 44
  %i.bpk = load i32, ptr %i.bpj, align 4, !tbaa !187 ; 2 uses
  %i.bpl = sext i32 %i.bpk to i64                 ; 2 uses
  %i.bpm = mul nsw i64 %i.bpl, 24
  %i.bpn = add i64 %i.bpm, %i.bds, !nosanitize !9 ; 3 uses
  %i.bpo = icmp ne i64 %i.bpn, 0, !nosanitize !9
  %i.bpp = icmp uge i64 %i.bpn, %i.bds, !nosanitize !9
  %i.bpq = icmp slt i32 %i.bpk, 0
  %i.bpr = xor i1 %i.bpq, %i.bpp
  %i.bps = and i1 %i.bpo, %i.bpr, !nosanitize !9
  br i1 %i.bps, label %bb.oa, label %bb.nr, !prof !10, !nosanitize !9

bb.oa:                                            ; preds = %bb.nz
  %i.bpt = getelementptr inbounds [24 x i8], ptr %i.bcn, i64 %i.bpl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.ayv, ptr noundef nonnull align 4 dereferenceable(24) %i.bpt, i64 24, i1 false), !tbaa.struct !188
  br i1 %exitcond432.2.not.i, label %bb.np, label %bb.ob

bb.ob:                                            ; preds = %bb.oa
  %.not267.3.i = icmp ugt ptr %.fr257.i, inttoptr (i64 -49 to ptr)
  br i1 %.not267.3.i, label %.split.loop.exit8149, label %bb.oc, !prof !19, !nosanitize !9

bb.oc:                                            ; preds = %bb.ob
  br i1 %.not.3.i, label %.split.loop.exit, label %bb.od, !prof !19, !nosanitize !9

bb.od:                                            ; preds = %bb.oc
  %i.bpu = getelementptr inbounds nuw i8, ptr %.fr257.i, i64 60
  %i.bpv = load i32, ptr %i.bpu, align 4, !tbaa !187 ; 2 uses
  %i.bpw = sext i32 %i.bpv to i64                 ; 2 uses
  %i.bpx = mul nsw i64 %i.bpw, 24
  %i.bpy = add i64 %i.bpx, %i.bds, !nosanitize !9 ; 3 uses
  %i.bpz = icmp ne i64 %i.bpy, 0, !nosanitize !9
  %i.bqa = icmp uge i64 %i.bpy, %i.bds, !nosanitize !9
  %i.bqb = icmp slt i32 %i.bpv, 0
  %i.bqc = xor i1 %i.bqb, %i.bqa
  %i.bqd = and i1 %i.bpz, %i.bqc, !nosanitize !9
  br i1 %i.bqd, label %bb.oe, label %bb.nr, !prof !10, !nosanitize !9

bb.oe:                                            ; preds = %bb.od
  %i.bqe = getelementptr inbounds [24 x i8], ptr %i.bcn, i64 %i.bpw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ayw, ptr noundef nonnull align 4 dereferenceable(24) %i.bqe, i64 24, i1 false), !tbaa.struct !188
  br label %bb.np

bb.of:                                            ; preds = %bb.np, %bb.jm
  %.070.i = phi i32 [ %.2.i.i, %bb.np ], [ %i.bcp, %bb.jm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  store i32 %.070.i, ptr %i.bco, align 4, !tbaa !178
  %indvars.iv.next13705 = add nuw nsw i64 %indvars.iv13704, 1 ; 2 uses
  %exitcond13708.not = icmp eq i64 %indvars.iv.next13705, %wide.trip.count13707
  br i1 %exitcond13708.not, label %._crit_edge8165, label %.lr.ph8164.split, !llvm.loop !50

._crit_edge8165:                                  ; preds = %bb.of, %.preheader
  %i.bqf = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 4 uses
  %i.bqg = load i32, ptr %i.bqf, align 8, !tbaa !171 ; 6 uses
  %i.bqh = icmp sgt i32 %i.bqg, 0                 ; 3 uses
  br i1 %i.bqh, label %bb.og, label %bb.op

bb.og:                                            ; preds = %._crit_edge8165
  %i.bqi = zext nneg i32 %i.bqg to i64
  %i.bqj = mul nuw nsw i64 %i.bqi, 268            ; 2 uses
  %i.bqk = trunc i64 %i.bqj to i32
  %i.bql = call fastcc ptr @b3Bump(ptr noundef nonnull %9, i32 noundef %i.bqk) ; 4 uses
  %i.bqm = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.bqn = load ptr, ptr %i.bqm, align 8, !tbaa !172 ; 3 uses
  %.not987 = icmp eq ptr %i.bql, null, !nosanitize !9
  br i1 %.not987, label %bb.oh, label %bb.oi, !prof !19, !nosanitize !9

bb.oh:                                            ; preds = %bb.og
  call void @__ubsan_handle_nonnull_arg_abort(ptr nonnull @131) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.oi:                                            ; preds = %bb.og
  %i.bqo = ptrtoint ptr %i.bql to i64, !nosanitize !9 ; 2 uses
  %i.bqp = and i64 %i.bqo, 3, !nosanitize !9
  %i.bqq = icmp eq i64 %i.bqp, 0, !nosanitize !9
  br i1 %i.bqq, label %bb.ok, label %bb.oj, !prof !10, !nosanitize !9

bb.oj:                                            ; preds = %bb.oi
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @133, i64 %i.bqo) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.ok:                                            ; preds = %bb.oi
  %.not988 = icmp eq ptr %i.bqn, null, !nosanitize !9
  br i1 %.not988, label %bb.ol, label %bb.om, !prof !19, !nosanitize !9

bb.ol:                                            ; preds = %bb.ok
  call void @__ubsan_handle_nonnull_arg_abort(ptr nonnull @134) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.om:                                            ; preds = %bb.ok
  %i.bqr = ptrtoint ptr %i.bqn to i64, !nosanitize !9 ; 2 uses
  %i.bqs = and i64 %i.bqr, 3, !nosanitize !9
  %i.bqt = icmp eq i64 %i.bqs, 0, !nosanitize !9
  br i1 %i.bqt, label %bb.oo, label %bb.on, !prof !10, !nosanitize !9

bb.on:                                            ; preds = %bb.om
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @135, i64 %i.bqr) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.oo:                                            ; preds = %bb.om
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bql, ptr nonnull align 4 %i.bqn, i64 %i.bqj, i1 false)
  br label %bb.op

bb.op:                                            ; preds = %bb.oo, %._crit_edge8165
  %.0844 = phi ptr [ %i.bql, %bb.oo ], [ null, %._crit_edge8165 ] ; 4 uses
  %.not989 = icmp eq i32 %i.bqg, %.1851
  %i.bqu = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.bqv = load ptr, ptr %i.bqu, align 8, !tbaa !172 ; 3 uses
  br i1 %.not989, label %bb.pk, label %bb.oq

bb.oq:                                            ; preds = %bb.op
  %i.bqw = load i32, ptr %i.bqf, align 8, !tbaa !171 ; 3 uses
  %i.bqx = icmp eq i32 %i.bqw, 0
  br i1 %i.bqx, label %b3FreeManifolds.exit1105, label %bb.or

bb.or:                                            ; preds = %bb.oq
  %i.bqy = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.bqw, i32 -1) ; 2 uses
  %i.bqz = extractvalue { i32, i1 } %i.bqy, 1, !nosanitize !9
  br i1 %i.bqz, label %bb.os, label %bb.ot, !prof !19, !nosanitize !9

bb.os:                                            ; preds = %bb.or
  %i.bra = zext i32 %i.bqw to i64, !nosanitize !9
  call void @__ubsan_handle_sub_overflow_abort(ptr nonnull @231, i64 %i.bra, i64 1) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.ot:                                            ; preds = %bb.or
  %i.brb = extractvalue { i32, i1 } %i.bqy, 0, !nosanitize !9 ; 2 uses
  %i.brc = getelementptr inbounds nuw i8, ptr %0, i64 3848 ; 2 uses
  %i.brd = load ptr, ptr %i.brc, align 8, !tbaa !173
  call void @b3LockMutex(ptr noundef %i.brd) #10
  %i.bre = getelementptr inbounds nuw i8, ptr %0, i64 3832
  %i.brf = load ptr, ptr %i.bre, align 8, !tbaa !174 ; 3 uses
  %i.brg = sext i32 %i.brb to i64                 ; 2 uses
  %i.brh = mul nsw i64 %i.brg, 40
  %i.bri = ptrtoint ptr %i.brf to i64, !nosanitize !9 ; 3 uses
  %i.brj = add i64 %i.brh, %i.bri, !nosanitize !9 ; 3 uses
  %i.brk = icmp ne ptr %i.brf, null, !nosanitize !9
  %i.brl = icmp eq i64 %i.brj, 0
  %i.brm = xor i1 %i.brk, %i.brl
  %i.brn = icmp uge i64 %i.brj, %i.bri, !nosanitize !9
  %i.bro = icmp slt i32 %i.brb, 0
  %i.brp = xor i1 %i.bro, %i.brn
  %i.brq = and i1 %i.brm, %i.brp, !nosanitize !9
  br i1 %i.brq, label %bb.ov, label %bb.ou, !prof !10, !nosanitize !9

bb.ou:                                            ; preds = %bb.ot
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @232, i64 %i.bri, i64 %i.brj) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.ov:                                            ; preds = %bb.ot
  %i.brr = getelementptr inbounds [40 x i8], ptr %i.brf, i64 %i.brg
  call void @b3FreeElement(ptr noundef %i.brr, ptr noundef %i.bqv) #10
  %i.brs = load ptr, ptr %i.brc, align 8, !tbaa !173
  call void @b3UnlockMutex(ptr noundef %i.brs) #10
  br label %b3FreeManifolds.exit1105

b3FreeManifolds.exit1105:                         ; preds = %bb.oq, %bb.ov
  %i.brt = icmp eq i32 %.1851, 0
  br i1 %i.brt, label %b3AllocateManifolds.exit, label %bb.ow

bb.ow:                                            ; preds = %b3FreeManifolds.exit1105
  %i.bru = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.1851, i32 -1) ; 2 uses
  %i.brv = extractvalue { i32, i1 } %i.bru, 0, !nosanitize !9 ; 2 uses
  %i.brw = extractvalue { i32, i1 } %i.bru, 1, !nosanitize !9
  br i1 %i.brw, label %bb.ox, label %bb.oy, !prof !19, !nosanitize !9

bb.ox:                                            ; preds = %bb.ow
  %i.brx = zext i32 %.1851 to i64, !nosanitize !9
  call void @__ubsan_handle_sub_overflow_abort(ptr nonnull @292, i64 %i.brx, i64 1) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.oy:                                            ; preds = %bb.ow
  %i.bry = getelementptr inbounds nuw i8, ptr %0, i64 3848 ; 2 uses
  %i.brz = load ptr, ptr %i.bry, align 8, !tbaa !173
  call void @b3LockMutex(ptr noundef %i.brz) #10
  %i.bsa = getelementptr inbounds nuw i8, ptr %0, i64 3832 ; 4 uses
  %i.bsb = getelementptr inbounds nuw i8, ptr %0, i64 3840 ; 4 uses
  %i.bsc = load i32, ptr %i.bsb, align 8, !tbaa !189 ; 2 uses
  %i.bsd = icmp slt i32 %i.bsc, %.1851
  br i1 %i.bsd, label %.lr.ph.i1108, label %._crit_edge.i1106

.lr.ph.i1108:                                     ; preds = %bb.oy
  %i.bse = getelementptr inbounds nuw i8, ptr %0, i64 3844 ; 2 uses
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i1108, %bb.pf
  %.054.us.i = phi i32 [ %i.bsf, %bb.pf ], [ %i.bsc, %.lr.ph.i1108 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #10
  %i.bsf = add nsw i32 %.054.us.i, 1              ; 3 uses
  %i.bsg = mul i32 %i.bsf, 268
  call void @b3CreateBlockAllocator(ptr dead_on_unwind nonnull writable sret(%struct.b3BlockAllocator) align 8 %10, i32 noundef %i.bsg, i32 noundef 512) #10
  %i.bsh = load i32, ptr %i.bsb, align 8, !tbaa !189 ; 2 uses
  %i.bsi = load i32, ptr %i.bse, align 4, !tbaa !190 ; 6 uses
  %.not37.us.i = icmp slt i32 %i.bsh, %i.bsi
  br i1 %.not37.us.i, label %bb.pc, label %bb.oz

bb.oz:                                            ; preds = %.lr.ph.split.us.i
  %i.bsj = mul i32 %i.bsi, 40
  %i.bsk = icmp eq i32 %i.bsi, 0
  br i1 %i.bsk, label %bb.pb, label %bb.pa

bb.pa:                                            ; preds = %bb.oz
  %i.bsl = shl nsw i32 %i.bsi, 1
  %i.bsm = add i32 %i.bsi, 1073741824
  %i.bsn = icmp sgt i32 %i.bsm, -1
  br i1 %i.bsn, label %bb.pb, label %.split.us.i1110, !prof !10, !nosanitize !9

bb.pb:                                            ; preds = %bb.pa, %bb.oz
  %i.bso = phi i32 [ 8, %bb.oz ], [ %i.bsl, %bb.pa ] ; 2 uses
  %i.bsp = mul i32 %i.bso, 40
  %i.bsq = load ptr, ptr %i.bsa, align 8, !tbaa !174
  %i.bsr = call ptr @b3GrowAlloc(ptr noundef %i.bsq, i32 noundef %i.bsj, i32 noundef %i.bsp) #10
  store ptr %i.bsr, ptr %i.bsa, align 8, !tbaa !174
  store i32 %i.bso, ptr %i.bse, align 4, !tbaa !190
  %.pre.i = load i32, ptr %i.bsb, align 8, !tbaa !189
  br label %bb.pc

bb.pc:                                            ; preds = %bb.pb, %.lr.ph.split.us.i
  %i.bss = phi i32 [ %.pre.i, %bb.pb ], [ %i.bsh, %.lr.ph.split.us.i ] ; 4 uses
  %i.bst = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.bss, i32 1), !nosanitize !9 ; 2 uses
  %i.bsu = extractvalue { i32, i1 } %i.bst, 1, !nosanitize !9
  br i1 %i.bsu, label %.split56.us.i, label %bb.pd, !prof !19, !nosanitize !9

bb.pd:                                            ; preds = %bb.pc
  %i.bsv = load ptr, ptr %i.bsa, align 8, !tbaa !174 ; 3 uses
  %i.bsw = extractvalue { i32, i1 } %i.bst, 0, !nosanitize !9
  store i32 %i.bsw, ptr %i.bsb, align 8, !tbaa !189
  %i.bsx = sext i32 %i.bss to i64                 ; 2 uses
  %i.bsy = getelementptr inbounds [40 x i8], ptr %i.bsv, i64 %i.bsx ; 2 uses
  %i.bsz = mul nsw i64 %i.bsx, 40
  %i.bta = ptrtoint ptr %i.bsv to i64, !nosanitize !9 ; 3 uses
  %i.btb = add i64 %i.bsz, %i.bta, !nosanitize !9 ; 3 uses
  %i.btc = icmp ne ptr %i.bsv, null, !nosanitize !9 ; 2 uses
  %i.btd = icmp eq i64 %i.btb, 0
  %i.bte = xor i1 %i.btc, %i.btd
  %i.btf = icmp uge i64 %i.btb, %i.bta, !nosanitize !9
  %i.btg = icmp slt i32 %i.bss, 0
  %i.bth = xor i1 %i.btg, %i.btf
  %i.bti = and i1 %i.bte, %i.bth, !nosanitize !9
  br i1 %i.bti, label %bb.pe, label %.split59.us.i, !prof !10, !nosanitize !9

bb.pe:                                            ; preds = %bb.pd
  %i.btj = ptrtoint ptr %i.bsy to i64, !nosanitize !9 ; 2 uses
  %i.btk = and i64 %i.btj, 7, !nosanitize !9
  %i.btl = icmp eq i64 %i.btk, 0, !nosanitize !9
  %i.btm = and i1 %i.btc, %i.btl
  br i1 %i.btm, label %bb.pf, label %.split63.us.i, !prof !10, !nosanitize !9

bb.pf:                                            ; preds = %bb.pe
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bsy, ptr noundef nonnull align 8 dereferenceable(40) %10, i64 40, i1 false), !tbaa.struct !194
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #10
  %exitcond.not.i1111 = icmp eq i32 %i.bsf, %.1851
  br i1 %exitcond.not.i1111, label %._crit_edge.i1106, label %.lr.ph.split.us.i, !llvm.loop !51

.split.us.i1110:                                  ; preds = %bb.pa
  %i.btn = zext i32 %i.bsi to i64, !nosanitize !9
  call void @__ubsan_handle_mul_overflow_abort(ptr nonnull @293, i64 2, i64 %i.btn) #9, !nosanitize !9
  unreachable, !nosanitize !9

.split56.us.i:                                    ; preds = %bb.pc
  %i.bto = zext nneg i32 %i.bss to i64, !nosanitize !9
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @294, i64 %i.bto, i64 1) #9, !nosanitize !9
  unreachable, !nosanitize !9

.split59.us.i:                                    ; preds = %bb.pd
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @295, i64 %i.bta, i64 %i.btb) #9, !nosanitize !9
  unreachable, !nosanitize !9

.split63.us.i:                                    ; preds = %bb.pe
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @297, i64 %i.btj) #9, !nosanitize !9
  unreachable, !nosanitize !9

._crit_edge.i1106:                                ; preds = %bb.pf, %bb.oy
  %i.btp = load ptr, ptr %i.bsa, align 8, !tbaa !174 ; 3 uses
  %i.btq = sext i32 %i.brv to i64                 ; 2 uses
  %i.btr = mul nsw i64 %i.btq, 40
  %i.bts = ptrtoint ptr %i.btp to i64, !nosanitize !9 ; 3 uses
  %i.btt = add i64 %i.btr, %i.bts, !nosanitize !9 ; 3 uses
  %i.btu = icmp ne ptr %i.btp, null, !nosanitize !9
  %i.btv = icmp eq i64 %i.btt, 0
  %i.btw = xor i1 %i.btu, %i.btv
  %i.btx = icmp uge i64 %i.btt, %i.bts, !nosanitize !9
  %i.bty = icmp slt i32 %i.brv, 0
  %i.btz = xor i1 %i.bty, %i.btx
  %i.bua = and i1 %i.btw, %i.btz, !nosanitize !9
  br i1 %i.bua, label %bb.ph, label %bb.pg, !prof !10, !nosanitize !9

bb.pg:                                            ; preds = %._crit_edge.i1106
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @298, i64 %i.bts, i64 %i.btt) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.ph:                                            ; preds = %._crit_edge.i1106
  %i.bub = getelementptr inbounds [40 x i8], ptr %i.btp, i64 %i.btq
  %i.buc = call ptr @b3AllocateElement(ptr noundef %i.bub) #10 ; 3 uses
  %i.bud = load ptr, ptr %i.bry, align 8, !tbaa !173
  call void @b3UnlockMutex(ptr noundef %i.bud) #10
  %.not.i1107 = icmp eq ptr %i.buc, null, !nosanitize !9
  br i1 %.not.i1107, label %bb.pi, label %bb.pj, !prof !19, !nosanitize !9

bb.pi:                                            ; preds = %bb.ph
  call void @__ubsan_handle_nonnull_arg_abort(ptr nonnull @299) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.pj:                                            ; preds = %bb.ph
  %i.bue = sext i32 %.1851 to i64
  %i.buf = mul nsw i64 %i.bue, 268
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.buc, i8 0, i64 %i.buf, i1 false)
  br label %b3AllocateManifolds.exit

b3AllocateManifolds.exit:                         ; preds = %b3FreeManifolds.exit1105, %bb.pj
  %.030.i = phi ptr [ %i.buc, %bb.pj ], [ null, %b3FreeManifolds.exit1105 ]
  store ptr %.030.i, ptr %i.bqu, align 8, !tbaa !172
  %i.bug = and i32 %.1851, 65535
  store i32 %i.bug, ptr %i.bqf, align 8, !tbaa !171
  br label %bb.pn

bb.pk:                                            ; preds = %bb.op
  %.not990 = icmp eq ptr %i.bqv, null, !nosanitize !9
  br i1 %.not990, label %bb.pl, label %bb.pm, !prof !19, !nosanitize !9

bb.pl:                                            ; preds = %bb.pk
  call void @__ubsan_handle_nonnull_arg_abort(ptr nonnull @136) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.pm:                                            ; preds = %bb.pk
  %i.buh = load i32, ptr %i.bqf, align 8, !tbaa !171
  %i.bui = sext i32 %i.buh to i64
  %i.buj = mul nsw i64 %i.bui, 268
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bqv, i8 0, i64 %i.buj, i1 false)
  br label %bb.pn

bb.pn:                                            ; preds = %bb.pm, %b3AllocateManifolds.exit
  br i1 %i.bqh, label %bb.po, label %bb.pr

bb.po:                                            ; preds = %bb.pn
  %i.buk = call fastcc ptr @b3Bump(ptr noundef nonnull %9, i32 noundef %i.bqg)
  %i.bul = freeze ptr %i.buk                      ; 3 uses
  %.not991 = icmp eq ptr %i.bul, null, !nosanitize !9
  br i1 %.not991, label %bb.pp, label %bb.pq, !prof !19, !nosanitize !9

bb.pp:                                            ; preds = %bb.po
  call void @__ubsan_handle_nonnull_arg_abort(ptr nonnull @137) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.pq:                                            ; preds = %bb.po
  %i.bum = zext nneg i32 %i.bqg to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bul, i8 0, i64 %i.bum, i1 false)
  br label %bb.pr

bb.pr:                                            ; preds = %bb.pq, %bb.pn
  %.0843 = phi ptr [ %i.bul, %bb.pq ], [ null, %bb.pn ] ; 4 uses
  %i.bun = load <2 x float>, ptr %.sroa.61267.0..sroa_idx, align 4 ; 10 uses
  %i.buo = load <2 x float>, ptr %.sroa.8.0..sroa_idx, align 4 ; 9 uses
  %.sroa.01275.0.vec.extract = extractelement <2 x float> %i.bun, i64 0 ; 3 uses
  %.sroa.01275.4.vec.extract = extractelement <2 x float> %i.bun, i64 1 ; 3 uses
  %.sroa.51276.8.vec.extract = extractelement <2 x float> %i.buo, i64 0 ; 2 uses
  %.sroa.51276.12.vec.extract = extractelement <2 x float> %i.buo, i64 1 ; 3 uses
  %i.bup = fmul float %.sroa.01275.4.vec.extract, %.sroa.51276.12.vec.extract ; 2 uses
  %i.buq = fmul float %.sroa.01275.4.vec.extract, %.sroa.51276.8.vec.extract ; 2 uses
  %i.bur = fmul float %.sroa.01275.0.vec.extract, %.sroa.51276.12.vec.extract ; 2 uses
  %foldExtExtBinop20783 = fmul <2 x float> %i.bun, %i.buo
  %i.bus = extractelement <2 x float> %foldExtExtBinop20783, i64 0 ; 2 uses
  %i.but = fmul float %.sroa.01275.0.vec.extract, %.sroa.01275.4.vec.extract ; 2 uses
  %foldExtExtBinop20785 = fmul <2 x float> %i.buo, %i.buo
  %i.buu = fmul <2 x float> %i.bun, %i.bun        ; 3 uses
  %i.buv = fmul float %.sroa.51276.8.vec.extract, %.sroa.51276.12.vec.extract ; 2 uses
  %i.buw = shufflevector <2 x float> %foldExtExtBinop20785, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bux = fadd <2 x float> %i.buu, %i.buw
  %i.buy = fmul <2 x float> %i.bux, splat (float 2.000000e+00)
  %i.buz = fadd float %i.but, %i.buv
  %i.bva = fsub float %i.bus, %i.bup
  %i.bvb = fmul float %i.bva, 2.000000e+00        ; 3 uses
  %i.bvc = fsub float %i.but, %i.buv
  %i.bvd = insertelement <2 x float> poison, float %i.buz, i64 0
  %i.bve = insertelement <2 x float> %i.bvd, float %i.bvc, i64 1
  %i.bvf = fmul <2 x float> %i.bve, splat (float 2.000000e+00) ; 4 uses
  %i.bvg = fsub <2 x float> splat (float 1.000000e+00), %i.buy ; 4 uses
  %i.bvh = fadd float %i.buq, %i.bur
  %i.bvi = fmul float %i.bvh, 2.000000e+00        ; 3 uses
  %i.bvj = fadd float %i.bus, %i.bup
  %i.bvk = fsub float %i.buq, %i.bur
  %i.bvl = insertelement <2 x float> poison, float %i.bvk, i64 0
  %i.bvm = insertelement <2 x float> %i.bvl, float %i.bvj, i64 1
  %i.bvn = fmul <2 x float> %i.bvm, splat (float 2.000000e+00) ; 4 uses
  %shift20787 = shufflevector <2 x float> %i.buu, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop20788 = fadd <2 x float> %i.buu, %shift20787
  %i.bvo = extractelement <2 x float> %foldExtExtBinop20788, i64 0
  %i.bvp = fmul float %i.bvo, 2.000000e+00
  %i.bvq = fsub float 1.000000e+00, %i.bvp        ; 3 uses
  %.sroa.0196.0.copyload = load <2 x float>, ptr %7, align 8
  %.sroa.2197.0.copyload = load float, ptr %.sroa.51266.0..sroa_idx, align 8
  %.sroa.0194.0.copyload = load <2 x float>, ptr %5, align 8
  %.sroa.2195.0.copyload = load float, ptr %.sroa.51281.0..sroa_idx, align 8
  %i.bvr = fsub <2 x float> %.sroa.0196.0.copyload, %.sroa.0194.0.copyload
  %i.bvs = fsub float %.sroa.2197.0.copyload, %.sroa.2195.0.copyload
  br i1 %i.axk, label %.lr.ph8356, label %._crit_edge8357

.lr.ph8356:                                       ; preds = %bb.pr
  %i.bvt = ptrtoint ptr %.fr8559 to i64, !nosanitize !9 ; 3 uses
  %.not8578 = icmp eq ptr %.fr8559, null, !nosanitize !9
  %i.bvu = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.bvv = ptrtoint ptr %.0843 to i64             ; 6 uses
  %.not8577.not = icmp eq ptr %.0843, null
  %i.bvw = ptrtoint ptr %.0844 to i64             ; 6 uses
  %i.bvx = icmp ne ptr %.0844, null               ; 4 uses
  br i1 %.not8578, label %.split8363, label %.lr.ph8356.split.split.us.preheader, !prof !19

.lr.ph8356.split.split.us.preheader:              ; preds = %.lr.ph8356
  %wide.trip.count13734 = zext nneg i32 %.1851 to i64
  %wide.trip.count13712 = zext nneg i32 %i.bqg to i64
  %i.bvy = extractelement <2 x float> %i.bvn, i64 0
  %i.bvz = insertelement <2 x float> %i.bvn, float %i.bvq, i64 0
  %i.bwa = shufflevector <2 x float> %i.bvg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bwb = insertelement <2 x float> %i.bwa, float %i.bvi, i64 1
  %i.bwc = insertelement <2 x float> %i.bvf, float %i.bvb, i64 0
  br label %.lr.ph8356.split.split.us

.lr.ph8356.split.split.us:                        ; preds = %.lr.ph8356.split.split.us.preheader, %._crit_edge8201.us
  %indvars.iv13731 = phi i64 [ 0, %.lr.ph8356.split.split.us.preheader ], [ %indvars.iv.next13732, %._crit_edge8201.us ] ; 5 uses
  %i.bwd = getelementptr inbounds nuw [40 x i8], ptr %.fr8559, i64 %indvars.iv13731 ; 6 uses
  %i.bwe = mul nuw nsw i64 %indvars.iv13731, 40
  %i.bwf = add i64 %i.bwe, %i.bvt, !nosanitize !9 ; 2 uses
  %.not13896 = icmp ult i64 %i.bwf, %i.bvt, !nosanitize !9
  br i1 %.not13896, label %.split8359.us, label %bb.ps, !prof !19, !nosanitize !9

bb.ps:                                            ; preds = %.lr.ph8356.split.split.us
  %i.bwg = ptrtoint ptr %i.bwd to i64, !nosanitize !9 ; 2 uses
  %i.bwh = and i64 %i.bwg, 7, !nosanitize !9
  %i.bwi = icmp eq i64 %i.bwh, 0, !nosanitize !9
  br i1 %i.bwi, label %bb.pt, label %.split8363, !prof !10, !nosanitize !9

bb.pt:                                            ; preds = %bb.ps
  %i.bwj = getelementptr inbounds nuw i8, ptr %i.bwd, i64 36
  %i.bwk = load i32, ptr %i.bwj, align 4, !tbaa !178 ; 3 uses
  %i.bwl = load ptr, ptr %i.bvu, align 8, !tbaa !172 ; 3 uses
  %i.bwm = getelementptr inbounds nuw [268 x i8], ptr %i.bwl, i64 %indvars.iv13731 ; 8 uses
  %i.bwn = mul nuw nsw i64 %indvars.iv13731, 268
  %i.bwo = ptrtoint ptr %i.bwl to i64, !nosanitize !9 ; 3 uses
  %i.bwp = add i64 %i.bwn, %i.bwo, !nosanitize !9 ; 3 uses
  %i.bwq = icmp ne ptr %i.bwl, null, !nosanitize !9 ; 2 uses
  %i.bwr = icmp eq i64 %i.bwp, 0
  %i.bws = xor i1 %i.bwq, %i.bwr
  %i.bwt = icmp uge i64 %i.bwp, %i.bwo, !nosanitize !9
  %i.bwu = and i1 %i.bws, %i.bwt, !nosanitize !9
  br i1 %i.bwu, label %bb.pu, label %.split8384.us, !prof !10, !nosanitize !9

bb.pu:                                            ; preds = %bb.pt
  %i.bwv = ptrtoint ptr %i.bwm to i64, !nosanitize !9 ; 5 uses
  %i.bww = and i64 %i.bwv, 3, !nosanitize !9
  %i.bwx = icmp eq i64 %i.bww, 0, !nosanitize !9
  %i.bwy = and i1 %i.bwq, %i.bwx
  br i1 %i.bwy, label %bb.pv, label %.split8388.us, !prof !10, !nosanitize !9

bb.pv:                                            ; preds = %bb.pu
  %i.bwz = getelementptr inbounds nuw i8, ptr %i.bwm, i64 264
  store i32 %i.bwk, ptr %i.bwz, align 4, !tbaa !196
  %i.bxa = getelementptr inbounds nuw i8, ptr %i.bwm, i64 224
  %.sroa.0170.0.copyload.us = load <2 x float>, ptr %i.bwd, align 8 ; 4 uses
  %.sroa.2171.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.bwd, i64 8 ; 2 uses
  %.sroa.2171.0.copyload.us = load float, ptr %.sroa.2171.0..sroa_idx.us, align 8 ; 2 uses
  %.sroa.0.0.vec.extract.i1123.us = extractelement <2 x float> %.sroa.0170.0.copyload.us, i64 0
  %.sroa.0.4.vec.extract.i1124.us = extractelement <2 x float> %.sroa.0170.0.copyload.us, i64 1
  %i.bxb = fmul float %i.bvb, %.sroa.0.0.vec.extract.i1123.us
  %i.bxc = fmul float %i.bvi, %.sroa.0.4.vec.extract.i1124.us
  %i.bxd = fadd float %i.bxb, %i.bxc
  %i.bxe = fmul <2 x float> %i.bvf, %.sroa.0170.0.copyload.us
  %i.bxf = shufflevector <2 x float> %.sroa.0170.0.copyload.us, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bxg = fmul <2 x float> %i.bvg, %i.bxf
  %i.bxh = fadd <2 x float> %i.bxe, %i.bxg
  %i.bxi = insertelement <2 x float> poison, float %.sroa.2171.0.copyload.us, i64 0
  %i.bxj = shufflevector <2 x float> %i.bxi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bxk = fmul <2 x float> %i.bvn, %i.bxj
  %i.bxl = fadd <2 x float> %i.bxk, %i.bxh
  %i.bxm = shufflevector <2 x float> %i.bxl, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bxn = fmul float %i.bvq, %.sroa.2171.0.copyload.us
  %i.bxo = fadd float %i.bxn, %i.bxd
  store <2 x float> %i.bxm, ptr %i.bxa, align 4, !tbaa !114
  %.sroa.4173.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.bwm, i64 232
  store float %i.bxo, ptr %.sroa.4173.0..sroa_idx.us, align 4, !tbaa !114
  %.sroa.0162.0.copyload.us = load <2 x float>, ptr %i.bwd, align 8 ; 4 uses
  %.sroa.2163.0.copyload.us = load float, ptr %.sroa.2171.0..sroa_idx.us, align 8 ; 2 uses
  %foldExtExtBinop20790 = fmul <2 x float> %i.bvf, %.sroa.0162.0.copyload.us
  %shift20792 = shufflevector <2 x float> %.sroa.0162.0.copyload.us, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop20793 = fmul <2 x float> %i.bvg, %shift20792
  %foldExtExtBinop20795 = fadd <2 x float> %foldExtExtBinop20790, %foldExtExtBinop20793
  %i.bxp = extractelement <2 x float> %foldExtExtBinop20795, i64 0
  %i.bxq = fmul float %i.bvy, %.sroa.2163.0.copyload.us
  %i.bxr = fadd float %i.bxq, %i.bxp
  %i.bxs = fmul <2 x float> %i.bwb, %.sroa.0162.0.copyload.us
  %i.bxt = shufflevector <2 x float> %i.bxs, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bxu = fmul <2 x float> %i.bwc, %.sroa.0162.0.copyload.us
  %i.bxv = fadd <2 x float> %i.bxt, %i.bxu
  %i.bxw = insertelement <2 x float> poison, float %.sroa.2163.0.copyload.us, i64 0
  %i.bxx = shufflevector <2 x float> %i.bxw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bxy = fmul <2 x float> %i.bvz, %i.bxx
  %i.bxz = fadd <2 x float> %i.bxy, %i.bxv
  br i1 %i.bqh, label %.lr.ph8178.us, label %._crit_edge8179.us.thread

.lr.ph8178.us:                                    ; preds = %bb.pv
  br i1 %.not8577.not, label %.split8186.us, label %.lr.ph8178.split.us8367, !prof !19

end_hunk_2
begin_hunk_3_@b3ComputeMeshManifolds:bb.a
  %.not998.us.3 = icmp ugt ptr %.0822.us, inttoptr (i64 -169 to ptr)
  %i.cak = getelementptr inbounds nuw i8, ptr %.0822.us, i64 212
  %i.cal = getelementptr inbounds nuw i8, ptr %.0822.us, i64 216 ; 2 uses
  %i.cam = getelementptr inbounds nuw i8, ptr %.0822.us, i64 224
  %.not998.us.4 = icmp ugt ptr %.0822.us, inttoptr (i64 -225 to ptr)
  %i.can = getelementptr inbounds nuw i8, ptr %.0822.us, i64 268
  %i.cao = getelementptr inbounds nuw i8, ptr %.0822.us, i64 272 ; 2 uses
  br label %.lr.ph8200.split.split.us8371

.lr.ph8200.split.split.us8371:                    ; preds = %.lr.ph8200.split.split.us8371.preheader, %.loopexit.us
  %indvars.iv13720 = phi i64 [ 0, %.lr.ph8200.split.split.us8371.preheader ], [ %indvars.iv.next13721, %.loopexit.us ] ; 6 uses
  %i.cap = getelementptr inbounds nuw [24 x i8], ptr %.fr8583, i64 %indvars.iv13720 ; 6 uses
  %i.caq = mul nuw nsw i64 %indvars.iv13720, 24
  %i.car = add i64 %i.caq, %i.cab, !nosanitize !9 ; 2 uses
  %.not8585 = icmp ult i64 %i.car, %i.cab, !nosanitize !9
  br i1 %.not8585, label %.split8203.us, label %bb.qg, !prof !19, !nosanitize !9

bb.qg:                                            ; preds = %.lr.ph8200.split.split.us8371
  %exitcond13728.not = icmp eq i64 %indvars.iv13720, 5
  br i1 %exitcond13728.not, label %.split8207.us, label %bb.qh, !prof !19, !nosanitize !9

bb.qh:                                            ; preds = %bb.qg
  %i.cas = getelementptr inbounds nuw [56 x i8], ptr %i.bwm, i64 %indvars.iv13720 ; 9 uses
  %i.cat = mul nuw nsw i64 %indvars.iv13720, 56
  %i.cau = add i64 %i.cat, %i.bwv, !nosanitize !9 ; 2 uses
  %.not996.us8373 = icmp ult i64 %i.cau, %i.bwv, !nosanitize !9
  br i1 %.not996.us8373, label %.split8210.us, label %bb.qi, !prof !19, !nosanitize !9

bb.qi:                                            ; preds = %bb.qh
  %i.cav = ptrtoint ptr %i.cap to i64, !nosanitize !9 ; 2 uses
  %i.caw = and i64 %i.cav, 3, !nosanitize !9
  %i.cax = icmp eq i64 %i.caw, 0, !nosanitize !9
  br i1 %i.cax, label %bb.qj, label %.split8220, !prof !10, !nosanitize !9

bb.qj:                                            ; preds = %bb.qi
  %i.cay = getelementptr inbounds nuw i8, ptr %i.cas, i64 12
  %.sroa.0115.0.copyload.us = load <2 x float>, ptr %i.cap, align 4 ; 4 uses
  %.sroa.2116.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.cap, i64 8
  %.sroa.2116.0.copyload.us = load float, ptr %.sroa.2116.0..sroa_idx.us, align 4 ; 2 uses
  %.sroa.0.0.vec.extract.i1139.us = extractelement <2 x float> %.sroa.0115.0.copyload.us, i64 0
  %.sroa.0.4.vec.extract.i1140.us = extractelement <2 x float> %.sroa.0115.0.copyload.us, i64 1
  %i.caz = fmul float %i.bvb, %.sroa.0.0.vec.extract.i1139.us
  %i.cba = fmul float %i.bvi, %.sroa.0.4.vec.extract.i1140.us
  %i.cbb = fadd float %i.caz, %i.cba
  %i.cbc = fmul <2 x float> %i.bvf, %.sroa.0115.0.copyload.us
  %i.cbd = shufflevector <2 x float> %.sroa.0115.0.copyload.us, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cbe = fmul <2 x float> %i.bvg, %i.cbd
  %i.cbf = fadd <2 x float> %i.cbc, %i.cbe
  %i.cbg = insertelement <2 x float> poison, float %.sroa.2116.0.copyload.us, i64 0
  %i.cbh = shufflevector <2 x float> %i.cbg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cbi = fmul <2 x float> %i.bvn, %i.cbh
  %i.cbj = fadd <2 x float> %i.cbi, %i.cbf
  %i.cbk = shufflevector <2 x float> %i.cbj, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cbl = fmul float %i.bvq, %.sroa.2116.0.copyload.us
  %i.cbm = fadd float %i.cbl, %i.cbb              ; 2 uses
  store <2 x float> %i.cbk, ptr %i.cay, align 4, !tbaa !114
  %.sroa.4118.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.cas, i64 20
  store float %i.cbm, ptr %.sroa.4118.0..sroa_idx.us, align 4, !tbaa !114
  %i.cbn = fadd <2 x float> %i.bvr, %i.cbk
  %i.cbo = fadd float %i.bvs, %i.cbm
  store <2 x float> %i.cbn, ptr %i.cas, align 4, !tbaa !114
  %.sroa.4110.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.cas, i64 8
  store float %i.cbo, ptr %.sroa.4110.0..sroa_idx.us, align 4, !tbaa !114
  %i.cbp = getelementptr inbounds nuw i8, ptr %i.cap, i64 12
  %i.cbq = getelementptr inbounds nuw i8, ptr %i.cas, i64 24
  %i.cbr = load float, ptr %i.cbp, align 4, !tbaa !155
  %i.cbs = fsub float %i.cbr, %i.nm
  store float %i.cbs, ptr %i.cbq, align 4, !tbaa !200
  %i.cbt = getelementptr inbounds nuw i8, ptr %i.cap, i64 16
  %i.cbu = load i32, ptr %i.cbt, align 4
  %i.cbv = call i32 @llvm.bswap.i32(i32 %i.cbu)   ; 6 uses
  %i.cbw = getelementptr inbounds nuw i8, ptr %i.cas, i64 44
  store i32 %i.cbv, ptr %i.cbw, align 4, !tbaa !201
  %i.cbx = getelementptr inbounds nuw i8, ptr %i.cap, i64 20
  %i.cby = load i32, ptr %i.cbx, align 4, !tbaa !179 ; 6 uses
  %i.cbz = getelementptr inbounds nuw i8, ptr %i.cas, i64 48
  store i32 %i.cby, ptr %i.cbz, align 4, !tbaa !202
  br i1 %.not997.us, label %.loopexit.us, label %bb.qk

bb.qk:                                            ; preds = %bb.qj
  br i1 %i.bzx, label %bb.ql, label %.split8484.us, !prof !10, !nosanitize !9

bb.ql:                                            ; preds = %bb.qk
  %i.cca = load i32, ptr %i.bzy, align 4, !tbaa !196 ; 6 uses
  %i.ccb = icmp sgt i32 %i.cca, 0
  br i1 %i.ccb, label %.lr.ph8197.us.preheader, label %.loopexit.us

.lr.ph8197.us.preheader:                          ; preds = %bb.ql
  %i.ccc = load i32, ptr %scevgep, align 4, !tbaa !201
  %i.ccd = icmp eq i32 %i.cbv, %i.ccc
  br i1 %i.ccd, label %bb.qm, label %bb.qn

bb.qm:                                            ; preds = %.lr.ph8197.us.preheader
  %i.cce = load i32, ptr %i.cac, align 4, !tbaa !202
  %i.ccf = icmp eq i32 %i.cby, %i.cce
  br i1 %i.ccf, label %.critedge1011.us, label %bb.qn

bb.qn:                                            ; preds = %bb.qm, %.lr.ph8197.us.preheader
  %exitcond13719.not = icmp eq i32 %i.cca, 1
  br i1 %exitcond13719.not, label %.loopexit.us, label %.lr.ph8197.us.1

.lr.ph8197.us.1:                                  ; preds = %bb.qn
  br i1 %.not998.us.1, label %.split8493.us, label %bb.qo, !prof !19, !nosanitize !9

bb.qo:                                            ; preds = %.lr.ph8197.us.1
  %i.ccg = load i32, ptr %i.cae, align 4, !tbaa !201
  %i.cch = icmp eq i32 %i.cbv, %i.ccg
  br i1 %i.cch, label %bb.qp, label %bb.qq

bb.qp:                                            ; preds = %bb.qo
  %i.cci = load i32, ptr %i.caf, align 4, !tbaa !202
  %i.ccj = icmp eq i32 %i.cby, %i.cci
  br i1 %i.ccj, label %.critedge1011.us, label %bb.qq

bb.qq:                                            ; preds = %bb.qp, %bb.qo
  %exitcond13719.1.not = icmp eq i32 %i.cca, 2
  br i1 %exitcond13719.1.not, label %.loopexit.us, label %.lr.ph8197.us.2

.lr.ph8197.us.2:                                  ; preds = %bb.qq
  br i1 %.not998.us.2, label %.split8493.us, label %bb.qr, !prof !19, !nosanitize !9

bb.qr:                                            ; preds = %.lr.ph8197.us.2
  %i.cck = load i32, ptr %i.cah, align 4, !tbaa !201
  %i.ccl = icmp eq i32 %i.cbv, %i.cck
  br i1 %i.ccl, label %bb.qs, label %bb.qt

bb.qs:                                            ; preds = %bb.qr
  %i.ccm = load i32, ptr %i.cai, align 4, !tbaa !202
  %i.ccn = icmp eq i32 %i.cby, %i.ccm
  br i1 %i.ccn, label %.critedge1011.us, label %bb.qt

bb.qt:                                            ; preds = %bb.qs, %bb.qr
  %exitcond13719.2.not = icmp eq i32 %i.cca, 3
  br i1 %exitcond13719.2.not, label %.loopexit.us, label %.lr.ph8197.us.3

.lr.ph8197.us.3:                                  ; preds = %bb.qt
  br i1 %.not998.us.3, label %.split8493.us, label %bb.qu, !prof !19, !nosanitize !9

bb.qu:                                            ; preds = %.lr.ph8197.us.3
  %i.cco = load i32, ptr %i.cak, align 4, !tbaa !201
  %i.ccp = icmp eq i32 %i.cbv, %i.cco
  br i1 %i.ccp, label %bb.qv, label %bb.qw

bb.qv:                                            ; preds = %bb.qu
  %i.ccq = load i32, ptr %i.cal, align 4, !tbaa !202
  %i.ccr = icmp eq i32 %i.cby, %i.ccq
  br i1 %i.ccr, label %.critedge1011.us, label %bb.qw

bb.qw:                                            ; preds = %bb.qv, %bb.qu
  %exitcond13719.3.not = icmp eq i32 %i.cca, 4
  br i1 %exitcond13719.3.not, label %.loopexit.us, label %.lr.ph8197.us.4

.lr.ph8197.us.4:                                  ; preds = %bb.qw
  br i1 %.not998.us.4, label %.split8493.us, label %bb.qx, !prof !19, !nosanitize !9

bb.qx:                                            ; preds = %.lr.ph8197.us.4
  %i.ccs = load i32, ptr %i.can, align 4, !tbaa !201
  %i.cct = icmp eq i32 %i.cbv, %i.ccs
  br i1 %i.cct, label %bb.qy, label %bb.qz

bb.qy:                                            ; preds = %bb.qx
  %i.ccu = load i32, ptr %i.cao, align 4, !tbaa !202
  %i.ccv = icmp eq i32 %i.cby, %i.ccu
  br i1 %i.ccv, label %.critedge1011.us, label %bb.qz

bb.qz:                                            ; preds = %bb.qy, %bb.qx
  %exitcond13719.4.not = icmp eq i32 %i.cca, 5
  br i1 %exitcond13719.4.not, label %.loopexit.us, label %.split8490.us

.critedge1011.us:                                 ; preds = %bb.qy, %bb.qv, %bb.qs, %bb.qp, %bb.qm
  %.lcssa8897 = phi ptr [ %.0822.us, %bb.qm ], [ %i.cad, %bb.qp ], [ %i.cag, %bb.qs ], [ %i.caj, %bb.qv ], [ %i.cam, %bb.qy ]
  %.lcssa8879 = phi ptr [ %i.cac, %bb.qm ], [ %i.caf, %bb.qp ], [ %i.cai, %bb.qs ], [ %i.cal, %bb.qv ], [ %i.cao, %bb.qy ]
  %i.ccw = getelementptr inbounds nuw i8, ptr %.lcssa8897, i64 32
  %i.ccx = getelementptr inbounds nuw i8, ptr %i.cas, i64 32
  %i.ccy = load float, ptr %i.ccw, align 4, !tbaa !203
  store float %i.ccy, ptr %i.ccx, align 4, !tbaa !203
  %i.ccz = getelementptr inbounds nuw i8, ptr %i.cas, i64 52
  store i8 1, ptr %i.ccz, align 4, !tbaa !204
  store i32 -1, ptr %.lcssa8879, align 4, !tbaa !202
  br label %.loopexit.us

.loopexit.us:                                     ; preds = %bb.qn, %bb.qq, %bb.qt, %bb.qw, %bb.qz, %bb.ql, %.critedge1011.us, %bb.qj
  %indvars.iv.next13721 = add nuw nsw i64 %indvars.iv13720, 1 ; 2 uses
  %exitcond13730.not = icmp eq i64 %indvars.iv.next13721, %wide.trip.count13729
  br i1 %exitcond13730.not, label %._crit_edge8201.us, label %.lr.ph8200.split.split.us8371, !llvm.loop !53

._crit_edge8201.us:                               ; preds = %.loopexit.us, %._crit_edge8179.us.thread
  %indvars.iv.next13732 = add nuw nsw i64 %indvars.iv13731, 1 ; 2 uses
  %exitcond13735.not = icmp eq i64 %indvars.iv.next13732, %wide.trip.count13734
  br i1 %exitcond13735.not, label %._crit_edge8357, label %.lr.ph8356.split.split.us, !llvm.loop !54

._crit_edge8357:                                  ; preds = %._crit_edge8201.us, %bb.pr
  %i.cda = icmp ne ptr %3, null, !nosanitize !9
  %i.cdb = ptrtoint ptr %3 to i64, !nosanitize !9 ; 2 uses
  %i.cdc = and i64 %i.cdb, 7, !nosanitize !9
  %i.cdd = icmp eq i64 %i.cdc, 0, !nosanitize !9
  %i.cde = and i1 %i.cda, %i.cdd, !nosanitize !9
  br i1 %i.cde, label %bb.rb, label %bb.ra, !prof !10, !nosanitize !9

bb.ra:                                            ; preds = %._crit_edge8357
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @300, i64 %i.cdb) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.rb:                                            ; preds = %._crit_edge8357
  %i.cdf = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.cdg = load ptr, ptr %i.cdf, align 8, !tbaa !205 ; 2 uses
  %.not.i1120 = icmp eq ptr %i.cdg, null
  %i.cdh = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.cdi = select i1 %.not.i1120, ptr %i.cdh, ptr %i.cdg ; 8 uses
  %i.cdj = getelementptr inbounds nuw i8, ptr %6, i64 144
  %i.cdk = load ptr, ptr %i.cdj, align 8, !tbaa !205 ; 2 uses
  %.not.i1121 = icmp eq ptr %i.cdk, null
  %i.cdl = getelementptr inbounds nuw i8, ptr %6, i64 104
  %i.cdm = select i1 %.not.i1121, ptr %i.cdl, ptr %i.cdk ; 12 uses
  %i.cdn = getelementptr inbounds nuw i8, ptr %3, i64 100 ; 2 uses
  %i.cdo = load i32, ptr %i.cdn, align 4, !tbaa !206
  %i.cdp = icmp sgt i32 %i.cdo, 0
  br i1 %i.cdp, label %bb.rc, label %bb.tc

.split8359.us:                                    ; preds = %.lr.ph8356.split.split.us
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @138, i64 %i.bvt, i64 %i.bwf) #9, !nosanitize !9
  unreachable, !nosanitize !9

.split8363:                                       ; preds = %bb.ps, %.lr.ph8356
  %.us-phi8364 = phi i64 [ 0, %.lr.ph8356 ], [ %i.bwg, %bb.ps ]
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @139, i64 %.us-phi8364) #9, !nosanitize !9
  unreachable, !nosanitize !9

.split8384.us:                                    ; preds = %bb.pt
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @140, i64 %i.bwo, i64 %i.bwp) #9, !nosanitize !9
  unreachable, !nosanitize !9

.split8388.us:                                    ; preds = %bb.pu
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @142, i64 %i.bwv) #9, !nosanitize !9
  unreachable, !nosanitize !9

.split8182.us:                                    ; preds = %.lr.ph8178.split.us8367
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @143, i64 %i.bvv, i64 %i.bya) #9, !nosanitize !9
  unreachable, !nosanitize !9

.split8186.us:                                    ; preds = %.lr.ph8178.us
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @144, i64 0) #9, !nosanitize !9
  unreachable, !nosanitize !9

.split8404.us:                                    ; preds = %bb.pw
  %i.cdq = zext i8 %i.byc to i64, !nosanitize !9
  call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @145, i64 %i.cdq) #9, !nosanitize !9
  unreachable, !nosanitize !9

.split8407.us:                                    ; preds = %bb.py
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @146, i64 %i.bvw, i64 %i.byh) #9, !nosanitize !9
  unreachable, !nosanitize !9

.split8411.us:                                    ; preds = %bb.pz
  %i.cdr = ptrtoint ptr %i.byf to i64, !nosanitize !9
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @147, i64 %i.cdr) #9, !nosanitize !9
  unreachable, !nosanitize !9

.split8414.us:                                    ; preds = %bb.qc
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @148, i64 %i.bvw, i64 %i.bza) #9, !nosanitize !9
  unreachable, !nosanitize !9

.split8421.us:                                    ; preds = %bb.qd
  %i.cds = ptrtoint ptr %i.byy to i64, !nosanitize !9
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @149, i64 %i.cds) #9, !nosanitize !9
  unreachable, !nosanitize !9

.split8439.us:                                    ; preds = %bb.qe
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @150, i64 %i.bvv, i64 %i.bzo) #9, !nosanitize !9
  unreachable, !nosanitize !9

.split8203.us:                                    ; preds = %.lr.ph8200.split.split.us8371
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @151, i64 %i.cab, i64 %i.car) #9, !nosanitize !9
  unreachable, !nosanitize !9

.split8207.us:                                    ; preds = %bb.qg
  call void @__ubsan_handle_out_of_bounds_abort(ptr nonnull @153, i64 5) #9, !nosanitize !9
  unreachable, !nosanitize !9

.split8210.us:                                    ; preds = %bb.qh
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @154, i64 %i.bwv, i64 %i.cau) #9, !nosanitize !9
  unreachable, !nosanitize !9

.split8220:                                       ; preds = %.lr.ph8200.us, %bb.qi
  %.us-phi8221 = phi i64 [ %i.cav, %bb.qi ], [ 0, %.lr.ph8200.us ]
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @156, i64 %.us-phi8221) #9, !nosanitize !9
  unreachable, !nosanitize !9

.split8484.us:                                    ; preds = %bb.qk
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @157, i64 %i.bzv) #9, !nosanitize !9
  unreachable, !nosanitize !9

.split8490.us:                                    ; preds = %bb.qz
  call void @__ubsan_handle_out_of_bounds_abort(ptr nonnull @158, i64 5) #9, !nosanitize !9
  unreachable, !nosanitize !9

.split8493.us:                                    ; preds = %.lr.ph8197.us.1, %.lr.ph8197.us.2, %.lr.ph8197.us.3, %.lr.ph8197.us.4
  %.sink18598 = phi i64 [ 112, %.lr.ph8197.us.2 ], [ 168, %.lr.ph8197.us.3 ], [ 224, %.lr.ph8197.us.4 ], [ 56, %.lr.ph8197.us.1 ]
  %i.cdt = add i64 %.sink18598, %i.bzv
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @159, i64 %i.bzv, i64 %i.cdt) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.rc:                                            ; preds = %bb.rb
  %i.cdu = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.cdv = load i32, ptr %i.cdu, align 8, !tbaa !120
  %i.cdw = icmp eq i32 %i.cdv, 4
  %i.cdx = getelementptr inbounds nuw i8, ptr %3, i64 200
  %i.cdy = load ptr, ptr %i.cdx, align 8, !tbaa !121 ; 4 uses
  %i.cdz = icmp ne ptr %i.cdy, null, !nosanitize !9
  %i.cea = ptrtoint ptr %i.cdy to i64, !nosanitize !9 ; 7 uses
  %i.ceb = and i64 %i.cea, 7, !nosanitize !9
  %i.cec = icmp eq i64 %i.ceb, 0, !nosanitize !9
  %i.ced = and i1 %i.cdz, %i.cec, !nosanitize !9  ; 2 uses
  br i1 %i.cdw, label %bb.rd, label %bb.rj

bb.rd:                                            ; preds = %bb.rc
  br i1 %i.ced, label %bb.rf, label %bb.re, !prof !10, !nosanitize !9

bb.re:                                            ; preds = %bb.rd
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @302, i64 %i.cea) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.rf:                                            ; preds = %bb.rd
  %i.cee = getelementptr inbounds nuw i8, ptr %i.cdy, i64 80
  %i.cef = load i32, ptr %i.cee, align 8, !tbaa !208 ; 2 uses
  %i.ceg = icmp eq i32 %i.cef, 0
  br i1 %i.ceg, label %b3GetMeshMaterialIndices.exit, label %bb.rg

bb.rg:                                            ; preds = %bb.rf
  %i.ceh = sext i32 %i.cef to i64                 ; 2 uses
  %i.cei = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.cea, i64 %i.ceh), !nosanitize !9 ; 2 uses
  %i.cej = extractvalue { i64, i1 } %i.cei, 1, !nosanitize !9
  br i1 %i.cej, label %bb.rh, label %bb.ri, !prof !19, !nosanitize !9

bb.rh:                                            ; preds = %bb.rg
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @304, i64 %i.cea, i64 %i.ceh) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.ri:                                            ; preds = %bb.rg
  %i.cek = extractvalue { i64, i1 } %i.cei, 0, !nosanitize !9
  %i.cel = inttoptr i64 %i.cek to ptr
  br label %b3GetMeshMaterialIndices.exit

bb.rj:                                            ; preds = %bb.rc
  br i1 %i.ced, label %bb.rl, label %bb.rk, !prof !10, !nosanitize !9

bb.rk:                                            ; preds = %bb.rj
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @306, i64 %i.cea) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.rl:                                            ; preds = %bb.rj
  %i.cem = getelementptr inbounds nuw i8, ptr %i.cdy, i64 80
  %i.cen = load i32, ptr %i.cem, align 8, !tbaa !210 ; 2 uses
  %i.ceo = icmp eq i32 %i.cen, 0
  br i1 %i.ceo, label %b3GetMeshMaterialIndices.exit, label %bb.rm

bb.rm:                                            ; preds = %bb.rl
  %i.cep = sext i32 %i.cen to i64                 ; 2 uses
  %i.ceq = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.cea, i64 %i.cep), !nosanitize !9 ; 2 uses
  %i.cer = extractvalue { i64, i1 } %i.ceq, 1, !nosanitize !9
  br i1 %i.cer, label %bb.rn, label %bb.ro, !prof !19, !nosanitize !9

bb.rn:                                            ; preds = %bb.rm
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @307, i64 %i.cea, i64 %i.cep) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.ro:                                            ; preds = %bb.rm
  %i.ces = extractvalue { i64, i1 } %i.ceq, 0, !nosanitize !9
  %i.cet = inttoptr i64 %i.ces to ptr
  br label %b3GetMeshMaterialIndices.exit

b3GetMeshMaterialIndices.exit:                    ; preds = %bb.ro, %bb.rl, %bb.ri, %bb.rf
  %.0805 = phi ptr [ null, %bb.rf ], [ %i.cel, %bb.ri ], [ %i.cet, %bb.ro ], [ null, %bb.rl ] ; 4 uses
  br i1 %i.axk, label %.lr.ph8538, label %._crit_edge8539.thread

.lr.ph8538:                                       ; preds = %b3GetMeshMaterialIndices.exit
  %i.ceu = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.cev = ptrtoint ptr %.0805 to i64             ; 6 uses
  %i.cew = icmp ne ptr %.0805, null               ; 4 uses
  %.not993 = icmp eq ptr %4, null
  %i.cex = ptrtoint ptr %4 to i64                 ; 3 uses
  %i.cey = ptrtoint ptr %i.cdi to i64             ; 3 uses
  %i.cez = getelementptr inbounds nuw i8, ptr %0, i64 4472
  %i.cfa = ptrtoint ptr %i.cdm to i64             ; 2 uses
  %i.cfb = and i64 %i.cfa, 7
  %i.cfc = icmp eq i64 %i.cfb, 0
  %i.cfd = getelementptr inbounds nuw i8, ptr %i.cdm, i64 24 ; 2 uses
  %i.cfe = getelementptr inbounds nuw i8, ptr %0, i64 4480
  %i.cff = getelementptr inbounds nuw i8, ptr %i.cdm, i64 4
  %wide.trip.count13745 = zext nneg i32 %.1851 to i64
  br label %.lr.ph8538.split

._crit_edge8539:                                  ; preds = %._crit_edge8526
  %i.cfg = extractelement <2 x float> %i.cjk, i64 1 ; 2 uses
  %i.cfh = fcmp ogt float %i.cfg, 0.000000e+00
  br i1 %i.cfh, label %bb.tb, label %._crit_edge8539.thread

.lr.ph8538.split:                                 ; preds = %.lr.ph8538, %._crit_edge8526
  %indvars.iv13742 = phi i64 [ 0, %.lr.ph8538 ], [ %indvars.iv.next13743, %._crit_edge8526 ] ; 3 uses
  %.08108534 = phi float [ 0.000000e+00, %.lr.ph8538 ], [ %.1811.lcssa, %._crit_edge8526 ] ; 2 uses
  %.sroa.073.08533 = phi <2 x float> [ zeroinitializer, %.lr.ph8538 ], [ %.sroa.073.1.lcssa, %._crit_edge8526 ] ; 2 uses
  %.sroa.11.08532 = phi float [ 0.000000e+00, %.lr.ph8538 ], [ %.sroa.11.1.lcssa, %._crit_edge8526 ] ; 2 uses
  %i.cfi = phi <2 x float> [ zeroinitializer, %.lr.ph8538 ], [ %i.cjk, %._crit_edge8526 ] ; 2 uses
  %i.cfj = load ptr, ptr %i.ceu, align 8, !tbaa !172 ; 3 uses
  %i.cfk = getelementptr inbounds nuw [268 x i8], ptr %i.cfj, i64 %indvars.iv13742 ; 3 uses
  %i.cfl = mul nuw nsw i64 %indvars.iv13742, 268
  %i.cfm = ptrtoint ptr %i.cfj to i64, !nosanitize !9 ; 3 uses
  %i.cfn = add i64 %i.cfl, %i.cfm, !nosanitize !9 ; 3 uses
  %i.cfo = icmp ne ptr %i.cfj, null, !nosanitize !9 ; 2 uses
  %i.cfp = icmp eq i64 %i.cfn, 0
  %i.cfq = xor i1 %i.cfo, %i.cfp
  %i.cfr = icmp uge i64 %i.cfn, %i.cfm, !nosanitize !9
  %i.cfs = and i1 %i.cfq, %i.cfr, !nosanitize !9
  br i1 %i.cfs, label %bb.rq, label %bb.rp, !prof !10, !nosanitize !9

bb.rp:                                            ; preds = %.lr.ph8538.split
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @160, i64 %i.cfm, i64 %i.cfn) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.rq:                                            ; preds = %.lr.ph8538.split
  %i.cft = ptrtoint ptr %i.cfk to i64, !nosanitize !9 ; 5 uses
  %i.cfu = and i64 %i.cft, 3, !nosanitize !9
  %i.cfv = icmp eq i64 %i.cfu, 0, !nosanitize !9
  %i.cfw = and i1 %i.cfo, %i.cfv
  br i1 %i.cfw, label %bb.rs, label %bb.rr, !prof !10, !nosanitize !9

bb.rr:                                            ; preds = %bb.rq
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @161, i64 %i.cft) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.rs:                                            ; preds = %bb.rq
  %i.cfx = getelementptr inbounds nuw i8, ptr %i.cfk, i64 264
  %i.cfy = load i32, ptr %i.cfx, align 4, !tbaa !196 ; 2 uses
  %i.cfz = icmp sgt i32 %i.cfy, 0
  br i1 %i.cfz, label %.lr.ph8525.preheader, label %._crit_edge8526

.lr.ph8525.preheader:                             ; preds = %bb.rs
  %wide.trip.count13740 = zext nneg i32 %i.cfy to i64
  br label %.lr.ph8525

.lr.ph8525:                                       ; preds = %.lr.ph8525.preheader, %bb.ta
  %indvars.iv13736 = phi i64 [ 0, %.lr.ph8525.preheader ], [ %indvars.iv.next13737, %bb.ta ] ; 4 uses
  %.18118520 = phi float [ %.08108534, %.lr.ph8525.preheader ], [ %i.ciu, %bb.ta ]
  %.sroa.073.18519 = phi <2 x float> [ %.sroa.073.08533, %.lr.ph8525.preheader ], [ %i.cjg, %bb.ta ]
  %.sroa.11.18518 = phi float [ %.sroa.11.08532, %.lr.ph8525.preheader ], [ %i.cjh, %bb.ta ]
  %i.cga = phi <2 x float> [ %i.cfi, %.lr.ph8525.preheader ], [ %i.cjj, %bb.ta ]
  %exitcond13739.not = icmp eq i64 %indvars.iv13736, 4
  br i1 %exitcond13739.not, label %bb.rt, label %bb.ru, !prof !19, !nosanitize !9

bb.rt:                                            ; preds = %.lr.ph8525
  call void @__ubsan_handle_out_of_bounds_abort(ptr nonnull @162, i64 4) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.ru:                                            ; preds = %.lr.ph8525
  %i.cgb = mul nuw nsw i64 %indvars.iv13736, 56
  %i.cgc = add i64 %i.cgb, %i.cft, !nosanitize !9 ; 2 uses
  %.not992 = icmp ult i64 %i.cgc, %i.cft, !nosanitize !9
  br i1 %.not992, label %bb.rv, label %bb.rw, !prof !19, !nosanitize !9

bb.rv:                                            ; preds = %bb.ru
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @163, i64 %i.cft, i64 %i.cgc) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.rw:                                            ; preds = %bb.ru
  %i.cgd = getelementptr inbounds nuw [56 x i8], ptr %i.cfk, i64 %indvars.iv13736
  %i.cge = getelementptr inbounds nuw i8, ptr %i.cgd, i64 48
  %i.cgf = load i32, ptr %i.cge, align 4, !tbaa !202 ; 3 uses
  %i.cgg = load i32, ptr %i.cdu, align 8, !tbaa !120
  %i.cgh = icmp eq i32 %i.cgg, 4
  br i1 %i.cgh, label %bb.rx, label %bb.sh

bb.rx:                                            ; preds = %bb.rw
  %i.cgi = sext i32 %i.cgf to i64                 ; 2 uses
  %i.cgj = getelementptr inbounds i8, ptr %.0805, i64 %i.cgi ; 2 uses
  %i.cgk = add i64 %i.cgi, %i.cev, !nosanitize !9 ; 3 uses
  %i.cgl = icmp eq i64 %i.cgk, 0
  %i.cgm = xor i1 %i.cew, %i.cgl
  %i.cgn = icmp uge i64 %i.cgk, %i.cev, !nosanitize !9
  %i.cgo = icmp slt i32 %i.cgf, 0
  %i.cgp = xor i1 %i.cgo, %i.cgn
  %i.cgq = and i1 %i.cgm, %i.cgp, !nosanitize !9
  br i1 %i.cgq, label %bb.rz, label %bb.ry, !prof !10, !nosanitize !9

bb.ry:                                            ; preds = %bb.rx
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @164, i64 %i.cev, i64 %i.cgk) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.rz:                                            ; preds = %bb.rx
  br i1 %i.cew, label %bb.sb, label %bb.sa, !prof !10, !nosanitize !9

bb.sa:                                            ; preds = %bb.rz
  %i.cgr = ptrtoint ptr %i.cgj to i64, !nosanitize !9
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @166, i64 %i.cgr) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.sb:                                            ; preds = %bb.rz
  %i.cgs = load i8, ptr %i.cgj, align 1, !tbaa !121 ; 2 uses
  %i.cgt = zext i8 %i.cgs to i32
  br i1 %.not993, label %bb.sm, label %bb.sc

bb.sc:                                            ; preds = %bb.sb
  %i.cgu = zext i8 %i.cgs to i64                  ; 2 uses
  %i.cgv = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.cgu ; 2 uses
  %i.cgw = shl nuw nsw i64 %i.cgu, 2
  %i.cgx = add i64 %i.cgw, %i.cex, !nosanitize !9 ; 2 uses
  %.not994 = icmp ult i64 %i.cgx, %i.cex, !nosanitize !9
  br i1 %.not994, label %bb.sd, label %bb.se, !prof !19, !nosanitize !9

bb.sd:                                            ; preds = %bb.sc
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @167, i64 %i.cex, i64 %i.cgx) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.se:                                            ; preds = %bb.sc
  %i.cgy = ptrtoint ptr %i.cgv to i64, !nosanitize !9 ; 2 uses
  %i.cgz = and i64 %i.cgy, 3, !nosanitize !9
  %i.cha = icmp eq i64 %i.cgz, 0, !nosanitize !9
  br i1 %i.cha, label %bb.sg, label %bb.sf, !prof !10, !nosanitize !9

bb.sf:                                            ; preds = %bb.se
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @168, i64 %i.cgy) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.sg:                                            ; preds = %bb.se
  %i.chb = load i32, ptr %i.cgv, align 4, !tbaa !20
  br label %bb.sm

bb.sh:                                            ; preds = %bb.rw
  %i.chc = ashr i32 %i.cgf, 1                     ; 2 uses
  %i.chd = sext i32 %i.chc to i64                 ; 2 uses
  %i.che = getelementptr inbounds i8, ptr %.0805, i64 %i.chd ; 2 uses
  %i.chf = add i64 %i.chd, %i.cev, !nosanitize !9 ; 3 uses
  %i.chg = icmp eq i64 %i.chf, 0
  %i.chh = xor i1 %i.cew, %i.chg
  %i.chi = icmp uge i64 %i.chf, %i.cev, !nosanitize !9
  %i.chj = icmp slt i32 %i.chc, 0
  %i.chk = xor i1 %i.chj, %i.chi
  %i.chl = and i1 %i.chh, %i.chk, !nosanitize !9
  br i1 %i.chl, label %bb.sj, label %bb.si, !prof !10, !nosanitize !9

bb.si:                                            ; preds = %bb.sh
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @169, i64 %i.cev, i64 %i.chf) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.sj:                                            ; preds = %bb.sh
  br i1 %i.cew, label %bb.sl, label %bb.sk, !prof !10, !nosanitize !9

bb.sk:                                            ; preds = %bb.sj
  %i.chm = ptrtoint ptr %i.che to i64, !nosanitize !9
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @170, i64 %i.chm) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.sl:                                            ; preds = %bb.sj
  %i.chn = load i8, ptr %i.che, align 1, !tbaa !121
  %i.cho = zext i8 %i.chn to i32
  br label %bb.sm

bb.sm:                                            ; preds = %bb.sb, %bb.sg, %bb.sl
  %.0802 = phi i32 [ %i.chb, %bb.sg ], [ %i.cgt, %bb.sb ], [ %i.cho, %bb.sl ] ; 2 uses
  %i.chp = load i32, ptr %i.cdn, align 4, !tbaa !206 ; 2 uses
  %i.chq = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.chp, i32 -1) ; 2 uses
  %i.chr = extractvalue { i32, i1 } %i.chq, 1, !nosanitize !9
  br i1 %i.chr, label %bb.sn, label %bb.so, !prof !19, !nosanitize !9

bb.sn:                                            ; preds = %bb.sm
end_hunk_3
