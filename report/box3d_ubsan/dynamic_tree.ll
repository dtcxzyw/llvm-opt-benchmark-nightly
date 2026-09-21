Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/dynamic_tree?download=true
inline.NumInlined: 171
inline.NumDeleted: 36
loop-unroll.NumUnrolled: 1
begin_hunk_0
@68 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1178, i32 66 } }
@69 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1186, i32 36 } }
@70 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1187, i32 40 } }
@71 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1188, i32 21 }, ptr @1 }
@72 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1190, i32 48 }, ptr @47, i8 3, i8 3 }
@73 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1190, i32 96 }, ptr @47, i8 3, i8 3 }
@74 = private unnamed_addr constant { i16, i16, [47 x i8] } { i16 -1, i16 0, [47 x i8] c"'float (*)(float, int, unsigned long, void *)'\00" }
@75 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1199, i32 17 }, ptr @74 }
@76 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1206, i32 24 }, ptr @1 }
@77 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1219, i32 69 } }
@78 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1224, i32 69 } }
@79 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1231, i32 8 } }
@80 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1236, i32 8 } }
@81 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1254, i32 13 }, ptr @18, i8 3, i8 3 }
@82 = private unnamed_addr constant { i16, i16, [59 x i8] } { i16 -1, i16 0, [59 x i8] c"'const b3RayCastInput' (aka 'const struct b3RayCastInput')\00" }
@83 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1259, i32 21 }, ptr @82, i8 2, i8 3 }
@84 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1282, i32 16 } }
@85 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1290, i32 34 } }
@86 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1291, i32 21 }, ptr @1 }
@87 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1293, i32 27 }, ptr @47, i8 3, i8 3 }
@88 = private unnamed_addr constant { i16, i16, [31 x i8] } { i16 -1, i16 0, [31 x i8] c"'b3Vec3' (aka 'struct b3Vec3')\00" }
@89 = private unnamed_addr constant { i16, i16, [71 x i8] } { i16 -1, i16 0, [71 x i8] c"'float (*)(const struct b3RayCastInput *, int, unsigned long, void *)'\00" }
@90 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1316, i32 18 }, ptr @89 }
@91 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1317, i32 22 }, ptr @1 }
@92 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1341, i32 32 } }
@93 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1341, i32 32 }, ptr @47, i8 3, i8 3 }
@94 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1342, i32 32 } }
@95 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1342, i32 32 }, ptr @47, i8 3, i8 3 }
@96 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1346, i32 6 } }
@97 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1351, i32 6 } }
@98 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1365, i32 13 }, ptr @18, i8 3, i8 3 }
@99 = private unnamed_addr constant { i16, i16, [59 x i8] } { i16 -1, i16 0, [59 x i8] c"'const b3BoxCastInput' (aka 'const struct b3BoxCastInput')\00" }
@100 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1371, i32 29 }, ptr @99, i8 2, i8 3 }
@101 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1400, i32 16 } }
@102 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1407, i32 34 } }
@103 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1408, i32 20 }, ptr @1 }
@104 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1410, i32 48 }, ptr @47, i8 3, i8 3 }
@105 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1410, i32 96 }, ptr @47, i8 3, i8 3 }
@106 = private unnamed_addr constant { i16, i16, [71 x i8] } { i16 -1, i16 0, [71 x i8] c"'float (*)(const struct b3BoxCastInput *, int, unsigned long, void *)'\00" }
@107 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1430, i32 18 }, ptr @106 }
@108 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1431, i32 21 }, ptr @1 }
@109 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1452, i32 32 } }
@110 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1452, i32 32 }, ptr @47, i8 3, i8 3 }
@111 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1453, i32 32 } }
@112 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1453, i32 32 }, ptr @47, i8 3, i8 3 }
@113 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1457, i32 6 } }
@114 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1462, i32 6 } }
@115 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1962, i32 25 }, ptr @10, i8 3, i8 3 }
@116 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1971, i32 32 }, ptr @1 }
@117 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1994, i32 27 } }
@118 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 2015, i32 4 } }
@119 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 2015, i32 4 }, ptr @1, i8 2, i8 1 }
@120 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 2017, i32 4 } }
@121 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 2017, i32 4 }, ptr @88, i8 2, i8 1 }
@122 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 2021, i32 14 }, ptr @1 }
@123 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 2036, i32 5 }, ptr @55, ptr @1 }
@124 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 2036, i32 5 } }
@125 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 2039, i32 17 } }
@126 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 2052, i32 21 }, ptr @1 }
@127 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 2052, i32 15 }, ptr @55, ptr @1 }
@128 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 2052, i32 15 } }
@129 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 2053, i32 16 } }
@.str = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@130 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 2106, i32 23 }, ptr @18, i8 3, i8 0 }
@.str.3 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@131 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 2166, i32 34 } }
@132 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 2167, i32 10 }, ptr @6, i8 3, i8 3 }
@133 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 103, i32 13 }, ptr @10, i8 3, i8 3 }
@134 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 110, i32 22 }, ptr @1 }
@135 = private unnamed_addr global { { ptr, i32, i32 }, { ptr, i32, i32 }, i32 } { { ptr, i32, i32 } { ptr @.src, i32 113, i32 11 }, { ptr, i32, i32 } { ptr @.src.1, i32 44, i32 28 }, i32 1 }
@136 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 113, i32 11 }, ptr @3, i8 3, i8 1 }
@137 = private unnamed_addr global { { ptr, i32, i32 }, { ptr, i32, i32 }, i32 } { { ptr, i32, i32 } { ptr @.src, i32 113, i32 24 }, { ptr, i32, i32 } { ptr @.src.1, i32 44, i32 28 }, i32 2 }
@138 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 113, i32 24 }, ptr @3, i8 3, i8 0 }
@139 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 114, i32 23 } }
@140 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 114, i32 66 }, ptr @1 }
@141 = private unnamed_addr global { { ptr, i32, i32 }, { ptr, i32, i32 }, i32 } { { ptr, i32, i32 } { ptr @.src, i32 114, i32 11 }, { ptr, i32, i32 } { ptr @.src.1, i32 61, i32 62 }, i32 1 }
@142 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 119, i32 57 }, ptr @1 }
@143 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 121, i32 4 } }
@144 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 121, i32 4 }, ptr @6, i8 3, i8 3 }
@145 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 124, i32 3 } }
@146 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 124, i32 3 }, ptr @6, i8 3, i8 3 }
@147 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 130, i32 33 } }
@148 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 131, i32 25 }, ptr @6, i8 3, i8 3 }
@149 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 133, i32 2 }, ptr @1 }
@b3_defaultTreeNode = internal unnamed_addr constant { %struct.b3AABB, i64, { %struct.b3TreeNodeChildren }, %union.anon.0, i16, i16 } { %struct.b3AABB zeroinitializer, i64 -1, { %struct.b3TreeNodeChildren } { %struct.b3TreeNodeChildren { i32 -1, i32 -1 } }, %union.anon.0 { i32 -1 }, i16 0, i16 1 }, align 8
@150 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 615, i32 13 }, ptr @10, i8 3, i8 3 }
@151 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 618, i32 3 } }
@152 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 618, i32 3 }, ptr @6, i8 3, i8 3 }
@153 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 623, i32 20 } }
@154 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 623, i32 20 }, ptr @6, i8 3, i8 3 }
@155 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 627, i32 18 } }
@156 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 627, i32 18 }, ptr @6, i8 3, i8 3 }
@157 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 632, i32 2 } }
@158 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 632, i32 2 }, ptr @6, i8 3, i8 3 }
@159 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 634, i32 50 } }
@160 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 634, i32 50 }, ptr @6, i8 3, i8 3 }
@161 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 635, i32 34 } }
@162 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 635, i32 34 }, ptr @6, i8 3, i8 3 }
@163 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 641, i32 8 } }
@164 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 641, i32 8 }, ptr @6, i8 3, i8 3 }
@165 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 669, i32 16 } }
@166 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 669, i32 16 }, ptr @6, i8 3, i8 3 }
@167 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 675, i32 37 } }
@168 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 675, i32 37 }, ptr @6, i8 3, i8 3 }
@169 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 675, i32 57 } }
@170 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 675, i32 57 }, ptr @6, i8 3, i8 3 }
@171 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 173, i32 19 } }
@172 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 173, i32 19 }, ptr @47, i8 3, i8 3 }
@173 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 187, i32 26 } }
@174 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 206, i32 32 } }
@175 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 207, i32 32 } }
@176 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 325, i32 24 } }
@177 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 336, i32 24 } }
@178 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 337, i32 24 } }
@179 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 346, i32 25 } }
@180 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 347, i32 25 } }
@181 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 355, i32 45 }, ptr @6, i8 3, i8 3 }
@182 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 359, i32 45 }, ptr @6, i8 3, i8 3 }
@183 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 411, i32 25 } }
@184 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 412, i32 25 } }
@185 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 420, i32 45 }, ptr @6, i8 3, i8 3 }
@186 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 424, i32 45 }, ptr @6, i8 3, i8 3 }
@187 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 483, i32 25 } }
@188 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 484, i32 25 } }
@189 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 485, i32 25 } }
@190 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 486, i32 25 } }
@191 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 496, i32 45 }, ptr @6, i8 3, i8 3 }
@192 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 505, i32 45 }, ptr @6, i8 3, i8 3 }
@193 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 514, i32 45 }, ptr @6, i8 3, i8 3 }
@194 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 523, i32 45 }, ptr @6, i8 3, i8 3 }
@195 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 691, i32 21 }, ptr @10, i8 3, i8 3 }
@196 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 699, i32 15 } }
@197 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 699, i32 15 }, ptr @6, i8 3, i8 3 }
@198 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 700, i32 20 } }
@199 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 700, i32 20 }, ptr @6, i8 3, i8 3 }
@200 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 714, i32 8 } }
@201 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 714, i32 8 }, ptr @6, i8 3, i8 3 }
@202 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 722, i32 3 } }
@203 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 722, i32 3 }, ptr @6, i8 3, i8 3 }
@204 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 729, i32 29 } }
@205 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 730, i32 39 }, ptr @6, i8 3, i8 3 }
@206 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 730, i32 31 } }
@207 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 731, i32 31 } }
@208 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 741, i32 39 }, ptr @6, i8 3, i8 3 }
@209 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 741, i32 53 }, ptr @6, i8 3, i8 3 }
@210 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 751, i32 3 } }
@211 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 751, i32 3 }, ptr @6, i8 3, i8 3 }
@212 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 142, i32 35 }, ptr @10, i8 3, i8 3 }
@213 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 142, i32 2 } }
@214 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 142, i32 2 }, ptr @6, i8 3, i8 3 }
@215 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 143, i32 2 } }
@216 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 143, i32 2 }, ptr @6, i8 3, i8 3 }
@217 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 145, i32 2 }, ptr @1 }
@218 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 39, i32 15 }, ptr @47, i8 3, i8 3 }
@219 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 34, i32 15 }, ptr @47, i8 3, i8 3 }
@220 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1154, i32 49 }, ptr @47, i8 3, i8 3 }
@.src.7 = private unnamed_addr constant [45 x i8] c"/opt-bench/work/box3d_ubsan/box3d/src/simd.h\00", align 1
@221 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src.7, i32 92, i32 30 } }
@222 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1811, i32 9 }, ptr @1, i8 2, i8 0 }
@223 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1811, i32 3 } }
@224 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1811, i32 3 }, ptr @6, i8 3, i8 3 }
@225 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1838, i32 38 } }
@226 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1840, i32 20 }, ptr @1 }
@227 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1852, i32 45 } }
@228 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1853, i32 35 } }
@229 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1858, i32 17 }, ptr @6, i8 3, i8 3 }
@230 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1864, i32 17 }, ptr @6, i8 3, i8 3 }
@231 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1867, i32 29 } }
@232 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1870, i32 10 }, ptr @6, i8 3, i8 3 }
@233 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1874, i32 31 } }
@234 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1875, i32 31 } }
@235 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1877, i32 39 }, ptr @6, i8 3, i8 3 }
@236 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1877, i32 53 }, ptr @6, i8 3, i8 3 }
@237 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1899, i32 25 }, ptr @1 }
@238 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1903, i32 22 } }
@239 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1903, i32 22 }, ptr @1, i8 2, i8 0 }
@240 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1904, i32 30 } }
@241 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1909, i32 12 }, ptr @6, i8 3, i8 3 }
@242 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1915, i32 12 }, ptr @6, i8 3, i8 3 }
@243 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1918, i32 35 } }
@244 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1920, i32 16 }, ptr @6, i8 3, i8 3 }
@245 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1928, i32 43 } }
@246 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1934, i32 55 } }
@247 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1934, i32 81 } }
@248 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1939, i32 25 }, ptr @1 }
@249 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1944, i32 31 } }
@250 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1949, i32 41 }, ptr @6, i8 3, i8 3 }
@251 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1949, i32 29 } }
@252 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1950, i32 29 } }
@253 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1952, i32 41 }, ptr @6, i8 3, i8 3 }
@254 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1952, i32 55 }, ptr @6, i8 3, i8 3 }
@255 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1485, i32 22 }, ptr @88, i8 2, i8 0 }
@256 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1490, i32 35 } }
@257 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1507, i32 23 } }
@258 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1512, i32 23 } }
@259 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1521, i32 17 } }
@260 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1521, i32 17 }, ptr @1, i8 2, i8 0 }
@261 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1522, i32 20 } }
@262 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1522, i32 20 }, ptr @1, i8 2, i8 0 }
@263 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1528, i32 20 } }
@264 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1544, i32 23 } }
@265 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1549, i32 23 } }
@266 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1558, i32 17 } }
@267 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1558, i32 17 }, ptr @1, i8 2, i8 0 }
@268 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1559, i32 20 } }
@269 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1559, i32 20 }, ptr @1, i8 2, i8 0 }
@270 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1565, i32 20 } }
@271 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1581, i32 23 } }
@272 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1586, i32 23 } }
@273 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1595, i32 17 } }
@274 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1595, i32 17 }, ptr @1, i8 2, i8 0 }
@275 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1596, i32 20 } }
@276 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1596, i32 20 }, ptr @1, i8 2, i8 0 }
@277 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1602, i32 20 } }

; Function Attrs: nounwind uwtable
define void @b3DynamicTree_Create(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.b3DynamicTree) align 8 captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #0 !func_sanitize !50 {
bb.a:
  %i.a = tail call noundef range(i32 16, -2147483648) i32 @llvm.smax.i32(i32 %1, i32 16) ; 2 uses
  %.not = icmp eq ptr %0, null, !nosanitize !9
  br i1 %.not, label %bb.b, label %bb.c, !prof !10, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_nonnull_arg_abort(ptr nonnull @0) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, i8 0, i64 48, i1 false)
  store i64 -7787375179321898166, ptr %0, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 -1, ptr %i.c, align 8, !tbaa !19
  %i.d = icmp slt i32 %1, 1073741824
  br i1 %i.d, label %bb.e, label %bb.d, !prof !20, !nosanitize !9

bb.d:                                             ; preds = %bb.c
  %i.e = zext nneg i32 %i.a to i64, !nosanitize !9
  tail call void @__ubsan_handle_mul_overflow_abort(ptr nonnull @2, i64 2, i64 %i.e) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.e:                                             ; preds = %bb.c
  %i.f = shl nuw nsw i32 %i.a, 1                  ; 2 uses
  %i.g = add nsw i32 %i.f, -1                     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.g, ptr %i.h, align 8, !tbaa !21
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.i, align 4, !tbaa !22
  %i.j = zext nneg i32 %i.g to i64
  %i.k = mul nuw nsw i64 %i.j, 48                 ; 2 uses
  %i.l = tail call ptr @b3Alloc(i64 noundef %i.k) #12 ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.m, align 8, !tbaa !23
  %.not11 = icmp eq ptr %i.l, null, !nosanitize !9
  br i1 %.not11, label %bb.f, label %.lr.ph, !prof !10, !nosanitize !9

bb.f:                                             ; preds = %bb.e
  tail call void @__ubsan_handle_nonnull_arg_abort(ptr nonnull @4) #11, !nosanitize !9
  unreachable, !nosanitize !9

.lr.ph:                                           ; preds = %bb.e
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.l, i8 0, i64 %i.k, i1 false)
  %i.n = add nsw i32 %i.f, -2                     ; 2 uses
  %i.o = ptrtoint ptr %i.l to i64, !nosanitize !9 ; 8 uses
  %wide.trip.count = zext nneg i32 %i.n to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.m, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %bb.m ] ; 4 uses
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.p = getelementptr inbounds nuw [48 x i8], ptr %i.l, i64 %indvars.iv ; 2 uses
  %i.q = mul nuw nsw i64 %indvars.iv, 48
  %i.r = add i64 %i.q, %i.o, !nosanitize !9       ; 2 uses
  %.not13 = icmp ult i64 %i.r, %i.o, !nosanitize !9
  br i1 %.not13, label %bb.h, label %bb.i, !prof !10, !nosanitize !9

bb.h:                                             ; preds = %bb.k, %bb.g
  %.lcssa = phi i64 [ %i.r, %bb.g ], [ %i.z, %bb.k ]
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @5, i64 %i.o, i64 %.lcssa) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.i:                                             ; preds = %bb.g
  %i.s = ptrtoint ptr %i.p to i64, !nosanitize !9 ; 2 uses
  %i.t = and i64 %i.s, 7, !nosanitize !9
  %i.u = icmp eq i64 %i.t, 0, !nosanitize !9
  br i1 %i.u, label %bb.k, label %bb.j, !prof !20, !nosanitize !9

bb.j:                                             ; preds = %bb.l, %bb.i
  %.lcssa54 = phi i64 [ %i.s, %bb.i ], [ %i.aa, %bb.l ]
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @7, i64 %.lcssa54) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.k:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.w = trunc nuw nsw i64 %indvars.iv.next to i32
  store i32 %i.w, ptr %i.v, align 8, !tbaa !24
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.x = getelementptr inbounds nuw [48 x i8], ptr %i.l, i64 %indvars.iv.next ; 2 uses
  %i.y = mul nuw nsw i64 %indvars.iv.next, 48
  %i.z = add i64 %i.y, %i.o, !nosanitize !9       ; 2 uses
  %.not13.1 = icmp ult i64 %i.z, %i.o, !nosanitize !9
  br i1 %.not13.1, label %bb.h, label %bb.l, !prof !10, !nosanitize !9

bb.l:                                             ; preds = %bb.k
  %i.aa = ptrtoint ptr %i.x to i64, !nosanitize !9 ; 2 uses
  %i.ab = and i64 %i.aa, 7, !nosanitize !9
  %i.ac = icmp eq i64 %i.ab, 0, !nosanitize !9
  br i1 %i.ac, label %bb.m, label %bb.j, !prof !20, !nosanitize !9

bb.m:                                             ; preds = %bb.l
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.ae = trunc nuw nsw i64 %indvars.iv.next.1 to i32
  store i32 %i.ae, ptr %i.ad, align 8, !tbaa !24
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %bb.g, !llvm.loop !49

._crit_edge:                                      ; preds = %bb.m
  %i.af = zext nneg i32 %i.n to i64               ; 2 uses
  %i.ag = getelementptr inbounds nuw [48 x i8], ptr %i.l, i64 %i.af ; 2 uses
  %i.ah = mul nuw nsw i64 %i.af, 48
  %i.ai = add i64 %i.ah, %i.o, !nosanitize !9     ; 2 uses
  %.not12 = icmp ult i64 %i.ai, %i.o, !nosanitize !9
  br i1 %.not12, label %bb.n, label %bb.o, !prof !10, !nosanitize !9

bb.n:                                             ; preds = %._crit_edge
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @8, i64 %i.o, i64 %i.ai) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.o:                                             ; preds = %._crit_edge
  %i.aj = ptrtoint ptr %i.ag to i64, !nosanitize !9 ; 2 uses
  %i.ak = and i64 %i.aj, 7, !nosanitize !9
  %i.al = icmp eq i64 %i.ak, 0, !nosanitize !9
  br i1 %i.al, label %bb.q, label %bb.p, !prof !20, !nosanitize !9

bb.p:                                             ; preds = %bb.o
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @9, i64 %i.aj) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.q:                                             ; preds = %bb.o
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  store i32 -1, ptr %i.am, align 8, !tbaa !24
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.an, align 8, !tbaa !26
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %i.ao, align 4, !tbaa !27
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.ap, i8 0, i64 36, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: noreturn nounwind uwtable
declare void @__ubsan_handle_nonnull_arg_abort(ptr) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: noreturn nounwind uwtable
declare void @__ubsan_handle_type_mismatch_v1_abort(ptr, i64) local_unnamed_addr #2

; Function Attrs: noreturn nounwind uwtable
declare void @__ubsan_handle_mul_overflow_abort(ptr, i64, i64) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #4

; Function Attrs: noreturn nounwind uwtable
declare void @__ubsan_handle_sub_overflow_abort(ptr, i64, i64) local_unnamed_addr #2

declare ptr @b3Alloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #4

; Function Attrs: noreturn nounwind uwtable
declare void @__ubsan_handle_add_overflow_abort(ptr, i64, i64) local_unnamed_addr #2

; Function Attrs: noreturn nounwind uwtable
declare void @__ubsan_handle_pointer_overflow_abort(ptr, i64, i64) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define void @b3DynamicTree_Destroy(ptr noundef %0) local_unnamed_addr #0 !func_sanitize !51 {
bb.a:
  %i.a = icmp ne ptr %0, null, !nosanitize !9
  %i.b = ptrtoint ptr %0 to i64, !nosanitize !9   ; 2 uses
  %i.c = and i64 %i.b, 7, !nosanitize !9
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !9
  %i.e = and i1 %i.a, %i.d, !nosanitize !9
  br i1 %i.e, label %bb.c, label %bb.b, !prof !20, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @11, i64 %i.b) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !23
  %i.i = load i32, ptr %i.g, align 8, !tbaa !21
  %i.j = sext i32 %i.i to i64
  %i.k = mul nsw i64 %i.j, 48
  tail call void @b3Free(ptr noundef %i.h, i64 noundef %i.k) #12
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !28
  %i.o = load i32, ptr %i.m, align 8, !tbaa !29
  %i.p = sext i32 %i.o to i64
  %i.q = shl nsw i64 %i.p, 2
  tail call void @b3Free(ptr noundef %i.n, i64 noundef %i.q) #12
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
end_hunk_0
begin_hunk_1_@b3DynamicTree_Load:bb.a

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.r = insertelement <2 x float> poison, float %2, i64 0
  %i.s = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph.split

bb.h:                                             ; preds = %bb.g
  tail call void @b3Free(ptr noundef %i.m, i64 noundef %i.l) #12
  %i.t = tail call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, i8 0, i64 80, i1 false)
  br label %bb.l

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.j
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.j ], [ 0, %.lr.ph.split.preheader ] ; 3 uses
  %i.u = getelementptr inbounds nuw [48 x i8], ptr %i.m, i64 %indvars.iv ; 6 uses
  %i.v = mul nuw nsw i64 %indvars.iv, 48
  %i.w = add i64 %i.v, %i.q, !nosanitize !9       ; 2 uses
  %.not56 = icmp ult i64 %i.w, %i.q, !nosanitize !9
  br i1 %.not56, label %.split.us, label %bb.i, !prof !10, !nosanitize !9

.split.us:                                        ; preds = %.lr.ph.split
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @131, i64 %i.q, i64 %i.w) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.i:                                             ; preds = %.lr.ph.split
  %i.x = ptrtoint ptr %i.u to i64, !nosanitize !9 ; 2 uses
  %i.y = and i64 %i.x, 7, !nosanitize !9
  %i.z = icmp eq i64 %i.y, 0, !nosanitize !9
  br i1 %i.z, label %bb.j, label %.split53, !prof !20, !nosanitize !9

.split53:                                         ; preds = %bb.i, %.lr.ph
  %.us-phi54 = phi i64 [ 0, %.lr.ph ], [ %i.x, %bb.i ]
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @132, i64 %.us-phi54) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.j:                                             ; preds = %bb.i
  %.sroa.08.0.copyload = load <2 x float>, ptr %i.u, align 8
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %.sroa.29.0.copyload = load float, ptr %.sroa.29.0..sroa_idx, align 8
  %i.aa = fmul <2 x float> %i.s, %.sroa.08.0.copyload
  %i.ab = fmul float %2, %.sroa.29.0.copyload
  store <2 x float> %i.aa, ptr %i.u, align 8
  store float %i.ab, ptr %.sroa.29.0..sroa_idx, align 8, !tbaa !32
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 12 ; 2 uses
  %.sroa.01.0.copyload = load <2 x float>, ptr %i.ac, align 4
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 20 ; 2 uses
  %.sroa.22.0.copyload = load float, ptr %.sroa.22.0..sroa_idx, align 4
  %i.ad = fmul <2 x float> %i.s, %.sroa.01.0.copyload
  %i.ae = fmul float %2, %.sroa.22.0.copyload
  store <2 x float> %i.ad, ptr %i.ac, align 4
  store float %i.ae, ptr %.sroa.22.0..sroa_idx, align 4, !tbaa !32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.k
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph.split, !llvm.loop !104

bb.k:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.af, align 8, !tbaa !23
  br label %.loopexit

.loopexit:                                        ; preds = %bb.j, %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.ag, i8 0, i64 36, i1 false)
  %i.ah = tail call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.c, %bb.e, %bb.h, %.loopexit, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.max.ps(<4 x float>, <4 x float>) #10

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1073741824, 2147483647) i32 @b3PartitionMid(ptr noundef %0, ptr noundef %1, i32 noundef range(i32 2, 1) %2) unnamed_addr #6 !func_sanitize !116 {
bb.a:
  %i.a = icmp slt i32 %2, 3
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = sdiv i32 %2, 2
  br label %bb.bg

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ne ptr %1, null, !nosanitize !9
  %i.d = ptrtoint ptr %1 to i64, !nosanitize !9   ; 32 uses
  %i.e = and i64 %i.d, 3, !nosanitize !9
  %i.f = icmp eq i64 %i.e, 0, !nosanitize !9
  %i.g = and i1 %i.c, %i.f, !nosanitize !9
  br i1 %i.g, label %.lr.ph.preheader, label %bb.d, !prof !20, !nosanitize !9

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @255, i64 %i.d) #11, !nosanitize !9
  unreachable, !nosanitize !9

.lr.ph.preheader:                                 ; preds = %bb.c
  %.sroa.0133.0.copyload = load <2 x float>, ptr %1, align 4 ; 2 uses
  %.sroa.7136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.7136.0.copyload = load float, ptr %.sroa.7136.0..sroa_idx, align 4, !tbaa !32 ; 2 uses
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.f
  %i.h = fsub <2 x float> %i.ad, %i.ab            ; 2 uses
  %i.i = fsub float %i.af, %i.z                   ; 2 uses
  %foldExtExtBinop = fadd <2 x float> %i.ad, %i.ab
  %i.j = extractelement <2 x float> %foldExtExtBinop, i64 0
  %foldExtExtBinop1078 = fadd <2 x float> %i.ad, %i.ab
  %i.k = extractelement <2 x float> %foldExtExtBinop1078, i64 1
  %i.l = fadd float %i.af, %i.z
  %i.m = fmul float %i.j, 5.000000e-01            ; 2 uses
  %i.n = fmul float %i.k, 5.000000e-01            ; 2 uses
  %i.o = fmul float %i.l, 5.000000e-01            ; 2 uses
  %i.p = extractelement <2 x float> %i.h, i64 0   ; 2 uses
  %i.q = extractelement <2 x float> %i.h, i64 1   ; 2 uses
  %i.r = fcmp ult float %i.p, %i.q
  %i.s = fcmp ult float %i.p, %i.i
  %or.cond = select i1 %i.r, i1 true, i1 %i.s
  br i1 %or.cond, label %bb.x, label %.preheader253.lr.ph

.preheader253.lr.ph:                              ; preds = %._crit_edge
  %i.t = ptrtoint ptr %0 to i64                   ; 6 uses
  %i.u = icmp ne ptr %0, null                     ; 2 uses
  br label %.preheader253

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %.sroa.7136.0511 = phi float [ %.sroa.7136.0.copyload, %.lr.ph.preheader ], [ %i.z, %bb.f ] ; 2 uses
  %.sroa.0133.0510 = phi <2 x float> [ %.sroa.0133.0.copyload, %.lr.ph.preheader ], [ %i.ab, %bb.f ] ; 2 uses
  %.sroa.7.0509 = phi float [ %.sroa.7136.0.copyload, %.lr.ph.preheader ], [ %i.af, %bb.f ] ; 2 uses
  %.sroa.0130.0508 = phi <2 x float> [ %.sroa.0133.0.copyload, %.lr.ph.preheader ], [ %i.ad, %bb.f ] ; 2 uses
  %i.v = mul nuw nsw i64 %indvars.iv, 12
  %i.w = add i64 %i.v, %i.d, !nosanitize !9       ; 2 uses
  %.not = icmp ult i64 %i.w, %i.d, !nosanitize !9
  br i1 %.not, label %bb.e, label %bb.f, !prof !10, !nosanitize !9

bb.e:                                             ; preds = %.lr.ph
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @256, i64 %i.d, i64 %i.w) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.f:                                             ; preds = %.lr.ph
  %i.x = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %.sroa.0120.0.copyload = load <2 x float>, ptr %i.x, align 4 ; 4 uses
  %.sroa.2121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.2121.0.copyload = load float, ptr %.sroa.2121.0..sroa_idx, align 4 ; 4 uses
  %i.y = fcmp olt float %.sroa.7136.0511, %.sroa.2121.0.copyload
  %i.z = select i1 %i.y, float %.sroa.7136.0511, float %.sroa.2121.0.copyload ; 3 uses
  %i.aa = fcmp olt <2 x float> %.sroa.0133.0510, %.sroa.0120.0.copyload
  %i.ab = select <2 x i1> %i.aa, <2 x float> %.sroa.0133.0510, <2 x float> %.sroa.0120.0.copyload ; 4 uses
  %i.ac = fcmp ogt <2 x float> %.sroa.0130.0508, %.sroa.0120.0.copyload
  %i.ad = select <2 x i1> %i.ac, <2 x float> %.sroa.0130.0508, <2 x float> %.sroa.0120.0.copyload ; 4 uses
  %i.ae = fcmp ogt float %.sroa.7.0509, %.sroa.2121.0.copyload
  %i.af = select i1 %i.ae, float %.sroa.7.0509, float %.sroa.2121.0.copyload ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !106

.preheader253:                                    ; preds = %.preheader253.lr.ph, %.critedge211
  %.0517 = phi i32 [ %2, %.preheader253.lr.ph ], [ %.2, %.critedge211 ] ; 3 uses
  %.0178516 = phi i32 [ 0, %.preheader253.lr.ph ], [ %.2180, %.critedge211 ] ; 2 uses
  %i.ag = sext i32 %.0178516 to i64
  %i.ah = sext i32 %.0517 to i64                  ; 3 uses
  %i.ai = add nsw i32 %.0178516, 1
  %smax = tail call i32 @llvm.smax.i32(i32 %.0517, i32 %i.ai)
  br label %bb.g

bb.g:                                             ; preds = %.preheader253, %bb.j
  %indvars.iv726 = phi i64 [ %i.ag, %.preheader253 ], [ %indvars.iv.next727, %bb.j ] ; 5 uses
  %i.aj = mul nsw i64 %indvars.iv726, 12
  %i.ak = add i64 %i.aj, %i.d, !nosanitize !9     ; 3 uses
  %i.al = icmp ne i64 %i.ak, 0, !nosanitize !9
  %i.am = icmp uge i64 %i.ak, %i.d, !nosanitize !9
  %i.an = icmp slt i64 %indvars.iv726, 0
  %i.ao = xor i1 %i.an, %i.am
  %i.ap = and i1 %i.al, %i.ao, !nosanitize !9
  br i1 %i.ap, label %bb.i, label %bb.h, !prof !20, !nosanitize !9

bb.h:                                             ; preds = %bb.g
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @257, i64 %i.d, i64 %i.ak) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.i:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds [12 x i8], ptr %1, i64 %indvars.iv726
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !117
  %i.as = fcmp olt float %i.ar, %i.m
  br i1 %i.as, label %bb.j, label %.critedge.split.loop.exit943

bb.j:                                             ; preds = %bb.i
  %indvars.iv.next727 = add nsw i64 %indvars.iv726, 1 ; 2 uses
  %i.at = icmp slt i64 %indvars.iv.next727, %i.ah
  br i1 %i.at, label %bb.g, label %.critedge, !llvm.loop !107

.critedge.split.loop.exit943:                     ; preds = %bb.i
  %i.au = trunc nsw i64 %indvars.iv726 to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.j, %.critedge.split.loop.exit943
  %.1179.lcssa = phi i32 [ %i.au, %.critedge.split.loop.exit943 ], [ %smax, %bb.j ] ; 6 uses
  %i.av = sext i32 %.1179.lcssa to i64            ; 5 uses
  %i.aw = icmp sgt i32 %.0517, %.1179.lcssa
  br i1 %i.aw, label %.lr.ph1070, label %.critedge211

bb.k:                                             ; preds = %bb.m
  %i.ax = icmp sgt i64 %indvars.iv.next730, %i.av
  br i1 %i.ax, label %.lr.ph1070, label %.critedge211, !llvm.loop !108

.lr.ph1070:                                       ; preds = %.critedge, %bb.k
  %indvars.iv7291069 = phi i64 [ %indvars.iv.next730, %bb.k ], [ %i.ah, %.critedge ] ; 2 uses
  %indvars.iv.next730 = add nsw i64 %indvars.iv7291069, -1 ; 8 uses
  %i.ay = mul nsw i64 %indvars.iv.next730, 12
  %i.az = add i64 %i.ay, %i.d, !nosanitize !9     ; 3 uses
  %i.ba = icmp ne i64 %i.az, 0, !nosanitize !9
  %i.bb = icmp uge i64 %i.az, %i.d, !nosanitize !9
  %i.bc = icmp slt i64 %indvars.iv7291069, 1      ; 2 uses
  %i.bd = xor i1 %i.bc, %i.bb
  %i.be = and i1 %i.ba, %i.bd, !nosanitize !9
  br i1 %i.be, label %bb.m, label %bb.l, !prof !20, !nosanitize !9

bb.l:                                             ; preds = %.lr.ph1070
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @258, i64 %i.d, i64 %i.az) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.m:                                             ; preds = %.lr.ph1070
  %i.bf = getelementptr inbounds [12 x i8], ptr %1, i64 %indvars.iv.next730 ; 3 uses
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !117
  %i.bh = fcmp ult float %i.bg, %i.m
  br i1 %i.bh, label %.critedge2, label %bb.k, !llvm.loop !108

.critedge2:                                       ; preds = %bb.m
  %i.bi = getelementptr inbounds [4 x i8], ptr %0, i64 %i.av ; 3 uses
  %i.bj = shl nsw i64 %i.av, 2
  %i.bk = add i64 %i.bj, %i.t, !nosanitize !9     ; 3 uses
  %i.bl = icmp eq i64 %i.bk, 0
  %i.bm = xor i1 %i.u, %i.bl
  %i.bn = icmp uge i64 %i.bk, %i.t, !nosanitize !9
  %i.bo = icmp slt i32 %.1179.lcssa, 0            ; 2 uses
  %i.bp = xor i1 %i.bo, %i.bn
  %i.bq = and i1 %i.bm, %i.bp, !nosanitize !9
  br i1 %i.bq, label %bb.o, label %bb.n, !prof !20, !nosanitize !9

bb.n:                                             ; preds = %.critedge2
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @259, i64 %i.t, i64 %i.bk) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.o:                                             ; preds = %.critedge2
  %i.br = ptrtoint ptr %i.bi to i64, !nosanitize !9 ; 2 uses
  %i.bs = and i64 %i.br, 3, !nosanitize !9
  %i.bt = icmp eq i64 %i.bs, 0, !nosanitize !9
  %i.bu = and i1 %i.u, %i.bt
  br i1 %i.bu, label %bb.q, label %bb.p, !prof !20, !nosanitize !9

bb.p:                                             ; preds = %bb.o
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @260, i64 %i.br) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.q:                                             ; preds = %bb.o
  %i.bv = load i32, ptr %i.bi, align 4, !tbaa !47
  %i.bw = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv.next730 ; 3 uses
  %i.bx = shl nsw i64 %indvars.iv.next730, 2
  %i.by = add i64 %i.bx, %i.t, !nosanitize !9     ; 3 uses
  %i.bz = icmp ne i64 %i.by, 0
  %i.ca = icmp uge i64 %i.by, %i.t, !nosanitize !9
  %i.cb = xor i1 %i.bc, %i.ca
  %i.cc = and i1 %i.bz, %i.cb, !nosanitize !9
  br i1 %i.cc, label %bb.s, label %bb.r, !prof !20, !nosanitize !9

bb.r:                                             ; preds = %bb.q
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @261, i64 %i.t, i64 %i.by) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.s:                                             ; preds = %bb.q
  %i.cd = ptrtoint ptr %i.bw to i64, !nosanitize !9 ; 2 uses
  %i.ce = and i64 %i.cd, 3, !nosanitize !9
  %i.cf = icmp eq i64 %i.ce, 0, !nosanitize !9
  br i1 %i.cf, label %bb.u, label %bb.t, !prof !20, !nosanitize !9

bb.t:                                             ; preds = %bb.s
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @262, i64 %i.cd) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.u:                                             ; preds = %bb.s
  %i.cg = load i32, ptr %i.bw, align 4, !tbaa !47
  store i32 %i.cg, ptr %i.bi, align 4, !tbaa !47
  store i32 %i.bv, ptr %i.bw, align 4, !tbaa !47
  %i.ch = mul nsw i64 %i.av, 12
  %i.ci = add i64 %i.ch, %i.d, !nosanitize !9     ; 3 uses
  %i.cj = icmp ne i64 %i.ci, 0, !nosanitize !9
  %i.ck = icmp uge i64 %i.ci, %i.d, !nosanitize !9
  %i.cl = xor i1 %i.bo, %i.ck
  %i.cm = and i1 %i.cj, %i.cl, !nosanitize !9
  br i1 %i.cm, label %bb.w, label %bb.v, !prof !20, !nosanitize !9

bb.v:                                             ; preds = %bb.u
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @263, i64 %i.d, i64 %i.ci) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.w:                                             ; preds = %bb.u
  %i.cn = getelementptr inbounds [12 x i8], ptr %1, i64 %i.av ; 2 uses
  %.sroa.01207.0.copyload = load <3 x float>, ptr %i.cn, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cn, ptr noundef nonnull align 4 dereferenceable(12) %i.bf, i64 12, i1 false), !tbaa.struct !48
  store <3 x float> %.sroa.01207.0.copyload, ptr %i.bf, align 4
  %3 = add nsw i32 %.1179.lcssa, 1
  br label %.critedge211

.critedge211:                                     ; preds = %bb.k, %.critedge, %bb.w
  %.2180 = phi i32 [ %3, %bb.w ], [ %.1179.lcssa, %.critedge ], [ %.1179.lcssa, %bb.k ] ; 3 uses
  %.2.in = phi i64 [ %indvars.iv.next730, %bb.w ], [ %i.ah, %.critedge ], [ %indvars.iv.next730, %bb.k ]
  %.2 = trunc i64 %.2.in to i32                   ; 2 uses
  %i.co = icmp slt i32 %.2180, %.2
  br i1 %i.co, label %.preheader253, label %.loopexit, !llvm.loop !109

bb.x:                                             ; preds = %._crit_edge
  %i.cp = fcmp ult float %i.q, %i.i
  %i.cq = ptrtoint ptr %0 to i64                  ; 12 uses
  %i.cr = icmp ne ptr %0, null                    ; 4 uses
  br i1 %i.cp, label %.preheader, label %.preheader250

.preheader250:                                    ; preds = %bb.x, %.critedge212
  %.3521 = phi i32 [ %.5, %.critedge212 ], [ %2, %bb.x ] ; 3 uses
  %.3181520 = phi i32 [ %.5183, %.critedge212 ], [ 0, %bb.x ] ; 2 uses
  %i.cs = sext i32 %.3181520 to i64
  %i.ct = sext i32 %.3521 to i64                  ; 3 uses
  %i.cu = add nsw i32 %.3181520, 1
  %smax734 = tail call i32 @llvm.smax.i32(i32 %.3521, i32 %i.cu)
  br label %bb.y

bb.y:                                             ; preds = %.preheader250, %bb.ab
  %indvars.iv732 = phi i64 [ %i.cs, %.preheader250 ], [ %indvars.iv.next733, %bb.ab ] ; 5 uses
  %i.cv = mul nsw i64 %indvars.iv732, 12
  %i.cw = add i64 %i.cv, %i.d, !nosanitize !9     ; 3 uses
  %i.cx = icmp ne i64 %i.cw, 0, !nosanitize !9
  %i.cy = icmp uge i64 %i.cw, %i.d, !nosanitize !9
  %i.cz = icmp slt i64 %indvars.iv732, 0
  %i.da = xor i1 %i.cz, %i.cy
  %i.db = and i1 %i.cx, %i.da, !nosanitize !9
  br i1 %i.db, label %bb.aa, label %bb.z, !prof !20, !nosanitize !9

bb.z:                                             ; preds = %bb.y
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @264, i64 %i.d, i64 %i.cw) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.aa:                                            ; preds = %bb.y
  %i.dc = getelementptr inbounds [12 x i8], ptr %1, i64 %indvars.iv732
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 4
  %i.de = load float, ptr %i.dd, align 4, !tbaa !118
  %i.df = fcmp olt float %i.de, %i.n
  br i1 %i.df, label %bb.ab, label %.critedge4.split.loop.exit945

bb.ab:                                            ; preds = %bb.aa
  %indvars.iv.next733 = add nsw i64 %indvars.iv732, 1 ; 2 uses
  %i.dg = icmp slt i64 %indvars.iv.next733, %i.ct
  br i1 %i.dg, label %bb.y, label %.critedge4, !llvm.loop !110

.critedge4.split.loop.exit945:                    ; preds = %bb.aa
  %i.dh = trunc nsw i64 %indvars.iv732 to i32
  br label %.critedge4

.critedge4:                                       ; preds = %bb.ab, %.critedge4.split.loop.exit945
  %.4182.lcssa = phi i32 [ %i.dh, %.critedge4.split.loop.exit945 ], [ %smax734, %bb.ab ] ; 6 uses
  %i.di = sext i32 %.4182.lcssa to i64            ; 5 uses
  %i.dj = icmp sgt i32 %.3521, %.4182.lcssa
  br i1 %i.dj, label %.lr.ph1072, label %.critedge212

bb.ac:                                            ; preds = %bb.ae
  %i.dk = icmp sgt i64 %indvars.iv.next737, %i.di
  br i1 %i.dk, label %.lr.ph1072, label %.critedge212, !llvm.loop !111

.lr.ph1072:                                       ; preds = %.critedge4, %bb.ac
  %indvars.iv7361071 = phi i64 [ %indvars.iv.next737, %bb.ac ], [ %i.ct, %.critedge4 ] ; 2 uses
  %indvars.iv.next737 = add nsw i64 %indvars.iv7361071, -1 ; 8 uses
  %i.dl = mul nsw i64 %indvars.iv.next737, 12
  %i.dm = add i64 %i.dl, %i.d, !nosanitize !9     ; 3 uses
  %i.dn = icmp ne i64 %i.dm, 0, !nosanitize !9
  %i.do = icmp uge i64 %i.dm, %i.d, !nosanitize !9
  %i.dp = icmp slt i64 %indvars.iv7361071, 1      ; 2 uses
  %i.dq = xor i1 %i.dp, %i.do
  %i.dr = and i1 %i.dn, %i.dq, !nosanitize !9
  br i1 %i.dr, label %bb.ae, label %bb.ad, !prof !20, !nosanitize !9

bb.ad:                                            ; preds = %.lr.ph1072
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @265, i64 %i.d, i64 %i.dm) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.ae:                                            ; preds = %.lr.ph1072
  %i.ds = getelementptr inbounds [12 x i8], ptr %1, i64 %indvars.iv.next737 ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  %i.du = load float, ptr %i.dt, align 4, !tbaa !118
  %i.dv = fcmp ult float %i.du, %i.n
  br i1 %i.dv, label %.critedge6, label %bb.ac, !llvm.loop !111

.critedge6:                                       ; preds = %bb.ae
  %i.dw = getelementptr inbounds [4 x i8], ptr %0, i64 %i.di ; 3 uses
  %i.dx = shl nsw i64 %i.di, 2
  %i.dy = add i64 %i.dx, %i.cq, !nosanitize !9    ; 3 uses
  %i.dz = icmp eq i64 %i.dy, 0
  %i.ea = xor i1 %i.cr, %i.dz
  %i.eb = icmp uge i64 %i.dy, %i.cq, !nosanitize !9
  %i.ec = icmp slt i32 %.4182.lcssa, 0            ; 2 uses
  %i.ed = xor i1 %i.ec, %i.eb
  %i.ee = and i1 %i.ea, %i.ed, !nosanitize !9
  br i1 %i.ee, label %bb.ag, label %bb.af, !prof !20, !nosanitize !9

bb.af:                                            ; preds = %.critedge6
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @266, i64 %i.cq, i64 %i.dy) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.ag:                                            ; preds = %.critedge6
  %i.ef = ptrtoint ptr %i.dw to i64, !nosanitize !9 ; 2 uses
  %i.eg = and i64 %i.ef, 3, !nosanitize !9
  %i.eh = icmp eq i64 %i.eg, 0, !nosanitize !9
  %i.ei = and i1 %i.cr, %i.eh
  br i1 %i.ei, label %bb.ai, label %bb.ah, !prof !20, !nosanitize !9

bb.ah:                                            ; preds = %bb.ag
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @267, i64 %i.ef) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.ai:                                            ; preds = %bb.ag
  %i.ej = load i32, ptr %i.dw, align 4, !tbaa !47
  %i.ek = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv.next737 ; 3 uses
  %i.el = shl nsw i64 %indvars.iv.next737, 2
  %i.em = add i64 %i.el, %i.cq, !nosanitize !9    ; 3 uses
  %i.en = icmp ne i64 %i.em, 0
  %i.eo = icmp uge i64 %i.em, %i.cq, !nosanitize !9
  %i.ep = xor i1 %i.dp, %i.eo
  %i.eq = and i1 %i.en, %i.ep, !nosanitize !9
  br i1 %i.eq, label %bb.ak, label %bb.aj, !prof !20, !nosanitize !9

bb.aj:                                            ; preds = %bb.ai
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @268, i64 %i.cq, i64 %i.em) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.ak:                                            ; preds = %bb.ai
  %i.er = ptrtoint ptr %i.ek to i64, !nosanitize !9 ; 2 uses
  %i.es = and i64 %i.er, 3, !nosanitize !9
  %i.et = icmp eq i64 %i.es, 0, !nosanitize !9
  br i1 %i.et, label %bb.am, label %bb.al, !prof !20, !nosanitize !9

bb.al:                                            ; preds = %bb.ak
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @269, i64 %i.er) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.am:                                            ; preds = %bb.ak
  %i.eu = load i32, ptr %i.ek, align 4, !tbaa !47
  store i32 %i.eu, ptr %i.dw, align 4, !tbaa !47
  store i32 %i.ej, ptr %i.ek, align 4, !tbaa !47
  %i.ev = mul nsw i64 %i.di, 12
  %i.ew = add i64 %i.ev, %i.d, !nosanitize !9     ; 3 uses
  %i.ex = icmp ne i64 %i.ew, 0, !nosanitize !9
  %i.ey = icmp uge i64 %i.ew, %i.d, !nosanitize !9
  %i.ez = xor i1 %i.ec, %i.ey
  %i.fa = and i1 %i.ex, %i.ez, !nosanitize !9
  br i1 %i.fa, label %bb.ao, label %bb.an, !prof !20, !nosanitize !9

bb.an:                                            ; preds = %bb.am
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @270, i64 %i.d, i64 %i.ew) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.ao:                                            ; preds = %bb.am
  %i.fb = getelementptr inbounds [12 x i8], ptr %1, i64 %i.di ; 2 uses
  %.sroa.01205.0.copyload = load <3 x float>, ptr %i.fb, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.fb, ptr noundef nonnull align 4 dereferenceable(12) %i.ds, i64 12, i1 false), !tbaa.struct !48
  store <3 x float> %.sroa.01205.0.copyload, ptr %i.ds, align 4
  %4 = add nsw i32 %.4182.lcssa, 1
  br label %.critedge212

.critedge212:                                     ; preds = %bb.ac, %.critedge4, %bb.ao
  %.5183 = phi i32 [ %4, %bb.ao ], [ %.4182.lcssa, %.critedge4 ], [ %.4182.lcssa, %bb.ac ] ; 3 uses
  %.5.in = phi i64 [ %indvars.iv.next737, %bb.ao ], [ %i.ct, %.critedge4 ], [ %indvars.iv.next737, %bb.ac ]
  %.5 = trunc i64 %.5.in to i32                   ; 2 uses
  %i.fc = icmp slt i32 %.5183, %.5
  br i1 %i.fc, label %.preheader250, label %.loopexit, !llvm.loop !112

.preheader:                                       ; preds = %bb.x, %.critedge213
  %.6525 = phi i32 [ %.8, %.critedge213 ], [ %2, %bb.x ] ; 3 uses
  %.6184524 = phi i32 [ %.8186, %.critedge213 ], [ 0, %bb.x ] ; 2 uses
  %i.fd = sext i32 %.6184524 to i64
  %i.fe = sext i32 %.6525 to i64                  ; 3 uses
  %i.ff = add nsw i32 %.6184524, 1
  %smax741 = tail call i32 @llvm.smax.i32(i32 %.6525, i32 %i.ff)
  br label %bb.ap

bb.ap:                                            ; preds = %.preheader, %bb.as
  %indvars.iv739 = phi i64 [ %i.fd, %.preheader ], [ %indvars.iv.next740, %bb.as ] ; 5 uses
  %i.fg = mul nsw i64 %indvars.iv739, 12
  %i.fh = add i64 %i.fg, %i.d, !nosanitize !9     ; 3 uses
  %i.fi = icmp ne i64 %i.fh, 0, !nosanitize !9
  %i.fj = icmp uge i64 %i.fh, %i.d, !nosanitize !9
  %i.fk = icmp slt i64 %indvars.iv739, 0
  %i.fl = xor i1 %i.fk, %i.fj
  %i.fm = and i1 %i.fi, %i.fl, !nosanitize !9
  br i1 %i.fm, label %bb.ar, label %bb.aq, !prof !20, !nosanitize !9

bb.aq:                                            ; preds = %bb.ap
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @271, i64 %i.d, i64 %i.fh) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.ar:                                            ; preds = %bb.ap
  %i.fn = getelementptr inbounds [12 x i8], ptr %1, i64 %indvars.iv739
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fp = load float, ptr %i.fo, align 4, !tbaa !119
  %i.fq = fcmp olt float %i.fp, %i.o
  br i1 %i.fq, label %bb.as, label %.critedge8.split.loop.exit947

bb.as:                                            ; preds = %bb.ar
  %indvars.iv.next740 = add nsw i64 %indvars.iv739, 1 ; 2 uses
  %i.fr = icmp slt i64 %indvars.iv.next740, %i.fe
  br i1 %i.fr, label %bb.ap, label %.critedge8, !llvm.loop !113

.critedge8.split.loop.exit947:                    ; preds = %bb.ar
  %i.fs = trunc nsw i64 %indvars.iv739 to i32
  br label %.critedge8

.critedge8:                                       ; preds = %bb.as, %.critedge8.split.loop.exit947
  %.7185.lcssa = phi i32 [ %i.fs, %.critedge8.split.loop.exit947 ], [ %smax741, %bb.as ] ; 6 uses
  %i.ft = sext i32 %.7185.lcssa to i64            ; 5 uses
  %i.fu = icmp sgt i32 %.6525, %.7185.lcssa
  br i1 %i.fu, label %.lr.ph1075, label %.critedge213

bb.at:                                            ; preds = %bb.av
  %i.fv = icmp sgt i64 %indvars.iv.next744, %i.ft
  br i1 %i.fv, label %.lr.ph1075, label %.critedge213, !llvm.loop !114

.lr.ph1075:                                       ; preds = %.critedge8, %bb.at
  %indvars.iv7431074 = phi i64 [ %indvars.iv.next744, %bb.at ], [ %i.fe, %.critedge8 ] ; 2 uses
  %indvars.iv.next744 = add nsw i64 %indvars.iv7431074, -1 ; 8 uses
  %i.fw = mul nsw i64 %indvars.iv.next744, 12
  %i.fx = add i64 %i.fw, %i.d, !nosanitize !9     ; 3 uses
  %i.fy = icmp ne i64 %i.fx, 0, !nosanitize !9
  %i.fz = icmp uge i64 %i.fx, %i.d, !nosanitize !9
  %i.ga = icmp slt i64 %indvars.iv7431074, 1      ; 2 uses
  %i.gb = xor i1 %i.ga, %i.fz
  %i.gc = and i1 %i.fy, %i.gb, !nosanitize !9
  br i1 %i.gc, label %bb.av, label %bb.au, !prof !20, !nosanitize !9

bb.au:                                            ; preds = %.lr.ph1075
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @272, i64 %i.d, i64 %i.fx) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.av:                                            ; preds = %.lr.ph1075
  %i.gd = getelementptr inbounds [12 x i8], ptr %1, i64 %indvars.iv.next744 ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !119
  %i.gg = fcmp ult float %i.gf, %i.o
  br i1 %i.gg, label %.critedge10, label %bb.at, !llvm.loop !114

.critedge10:                                      ; preds = %bb.av
  %i.gh = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ft ; 3 uses
  %i.gi = shl nsw i64 %i.ft, 2
  %i.gj = add i64 %i.gi, %i.cq, !nosanitize !9    ; 3 uses
  %i.gk = icmp eq i64 %i.gj, 0
  %i.gl = xor i1 %i.cr, %i.gk
  %i.gm = icmp uge i64 %i.gj, %i.cq, !nosanitize !9
  %i.gn = icmp slt i32 %.7185.lcssa, 0            ; 2 uses
  %i.go = xor i1 %i.gn, %i.gm
  %i.gp = and i1 %i.gl, %i.go, !nosanitize !9
  br i1 %i.gp, label %bb.ax, label %bb.aw, !prof !20, !nosanitize !9

bb.aw:                                            ; preds = %.critedge10
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @273, i64 %i.cq, i64 %i.gj) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.ax:                                            ; preds = %.critedge10
  %i.gq = ptrtoint ptr %i.gh to i64, !nosanitize !9 ; 2 uses
  %i.gr = and i64 %i.gq, 3, !nosanitize !9
  %i.gs = icmp eq i64 %i.gr, 0, !nosanitize !9
  %i.gt = and i1 %i.cr, %i.gs
  br i1 %i.gt, label %bb.az, label %bb.ay, !prof !20, !nosanitize !9

bb.ay:                                            ; preds = %bb.ax
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @274, i64 %i.gq) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.az:                                            ; preds = %bb.ax
  %i.gu = load i32, ptr %i.gh, align 4, !tbaa !47
  %i.gv = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv.next744 ; 3 uses
  %i.gw = shl nsw i64 %indvars.iv.next744, 2
  %i.gx = add i64 %i.gw, %i.cq, !nosanitize !9    ; 3 uses
  %i.gy = icmp ne i64 %i.gx, 0
  %i.gz = icmp uge i64 %i.gx, %i.cq, !nosanitize !9
  %i.ha = xor i1 %i.ga, %i.gz
  %i.hb = and i1 %i.gy, %i.ha, !nosanitize !9
  br i1 %i.hb, label %bb.bb, label %bb.ba, !prof !20, !nosanitize !9

bb.ba:                                            ; preds = %bb.az
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @275, i64 %i.cq, i64 %i.gx) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.bb:                                            ; preds = %bb.az
  %i.hc = ptrtoint ptr %i.gv to i64, !nosanitize !9 ; 2 uses
  %i.hd = and i64 %i.hc, 3, !nosanitize !9
  %i.he = icmp eq i64 %i.hd, 0, !nosanitize !9
  br i1 %i.he, label %bb.bd, label %bb.bc, !prof !20, !nosanitize !9

bb.bc:                                            ; preds = %bb.bb
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @276, i64 %i.hc) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.bd:                                            ; preds = %bb.bb
  %i.hf = load i32, ptr %i.gv, align 4, !tbaa !47
  store i32 %i.hf, ptr %i.gh, align 4, !tbaa !47
  store i32 %i.gu, ptr %i.gv, align 4, !tbaa !47
  %i.hg = mul nsw i64 %i.ft, 12
  %i.hh = add i64 %i.hg, %i.d, !nosanitize !9     ; 3 uses
  %i.hi = icmp ne i64 %i.hh, 0, !nosanitize !9
  %i.hj = icmp uge i64 %i.hh, %i.d, !nosanitize !9
  %i.hk = xor i1 %i.gn, %i.hj
  %i.hl = and i1 %i.hi, %i.hk, !nosanitize !9
  br i1 %i.hl, label %bb.bf, label %bb.be, !prof !20, !nosanitize !9

bb.be:                                            ; preds = %bb.bd
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @277, i64 %i.d, i64 %i.hh) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.bf:                                            ; preds = %bb.bd
  %i.hm = getelementptr inbounds [12 x i8], ptr %1, i64 %i.ft ; 2 uses
  %.sroa.0.0.copyload = load <3 x float>, ptr %i.hm, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.hm, ptr noundef nonnull align 4 dereferenceable(12) %i.gd, i64 12, i1 false), !tbaa.struct !48
  store <3 x float> %.sroa.0.0.copyload, ptr %i.gd, align 4
  %i.hn = add nsw i32 %.7185.lcssa, 1
  br label %.critedge213

.critedge213:                                     ; preds = %bb.at, %.critedge8, %bb.bf
  %.8186 = phi i32 [ %i.hn, %bb.bf ], [ %.7185.lcssa, %.critedge8 ], [ %.7185.lcssa, %bb.at ] ; 3 uses
  %.8.in = phi i64 [ %indvars.iv.next744, %bb.bf ], [ %i.fe, %.critedge8 ], [ %indvars.iv.next744, %bb.at ]
  %.8 = trunc i64 %.8.in to i32                   ; 2 uses
  %i.ho = icmp slt i32 %.8186, %.8
  br i1 %i.ho, label %.preheader, label %.loopexit, !llvm.loop !115

.loopexit:                                        ; preds = %.critedge211, %.critedge212, %.critedge213
  %.9 = phi i32 [ %.5183, %.critedge212 ], [ %.8186, %.critedge213 ], [ %.2180, %.critedge211 ] ; 3 uses
  %i.hp = icmp sgt i32 %.9, 0
  %i.hq = icmp slt i32 %.9, %2
  %or.cond214 = and i1 %i.hp, %i.hq
  %i.hr = lshr i32 %2, 1
  %.0187 = select i1 %or.cond214, i32 %.9, i32 %i.hr
  br label %bb.bg

bb.bg:                                            ; preds = %.loopexit, %bb.b
  %.1188 = phi i32 [ %i.b, %bb.b ], [ %.0187, %.loopexit ]
  ret i32 %.1188
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #4

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn nounwind uwtable }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { noreturn nounwind }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{}
!10 = !{!"branch_weights", i32 1, i32 1048575}
!11 = !{!"long", !5, i64 0}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!"p1 _ZTS10b3TreeNode", !12, i64 0}
!14 = !{!"p1 int", !12, i64 0}
!15 = !{!"p1 _ZTS6b3AABB", !12, i64 0}
!16 = !{!"p1 _ZTS6b3Vec3", !12, i64 0}
!17 = !{!"b3DynamicTree", !11, i64 0, !13, i64 8, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !14, i64 40, !15, i64 48, !16, i64 56, !14, i64 64, !6, i64 72}
!18 = !{!17, !11, i64 0}
!19 = !{!17, !6, i64 16}
!20 = !{!"branch_weights", i32 1048575, i32 1}
!21 = !{!17, !6, i64 24}
!22 = !{!17, !6, i64 20}
!23 = !{!17, !13, i64 8}
!24 = !{!5, !5, i64 0}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!17, !6, i64 32}
!27 = !{!17, !6, i64 28}
!28 = !{!17, !14, i64 40}
!29 = !{!17, !6, i64 72}
!30 = !{!17, !16, i64 56}
!31 = !{!"float", !5, i64 0}
!32 = !{!31, !31, i64 0}
!33 = !{i64 0, i64 4, !32, i64 4, i64 4, !32, i64 8, i64 4, !32, i64 12, i64 4, !32, i64 16, i64 4, !32, i64 20, i64 4, !32}
!34 = !{!"b3Vec3", !31, i64 0, !31, i64 4, !31, i64 8}
!35 = !{!"b3AABB", !34, i64 0, !34, i64 12}
!36 = !{!"short", !5, i64 0}
!37 = !{!"b3TreeNode", !35, i64 0, !11, i64 24, !5, i64 32, !5, i64 40, !36, i64 44, !36, i64 46}
!38 = !{!37, !11, i64 24}
!39 = !{!37, !36, i64 44}
!40 = !{!37, !36, i64 46}
!41 = !{!11, !11, i64 0}
!42 = !{!"branch_weights", i32 134217473, i32 127}
!43 = !{i32 -1056584962, i32 -1562881747}
!44 = !{i32 -1056584962, i32 -1261591426}
!45 = !{i32 -1056584962, i32 530935627}
!46 = !{i32 -1056584962, i32 1778690163}
!47 = !{!6, !6, i64 0}
!48 = !{i64 0, i64 4, !32, i64 4, i64 4, !32, i64 8, i64 4, !32}
!49 = distinct !{!49, !25}
!50 = !{i32 -1056584962, i32 53345084}
!51 = !{i32 -1056584962, i32 -811056004}
!52 = !{!17, !15, i64 48}
!53 = !{!17, !14, i64 64}
!54 = !{i32 -1056584962, i32 342401165}
!55 = distinct !{!55, !25}
!56 = !{i32 -1056584962, i32 -138258594}
!57 = !{!"branch_weights", i32 1, i32 127}
!58 = !{!"branch_weights", i32 127, i32 134217473}
!59 = !{!36, !36, i64 0}
!60 = !{i64 0, i64 4, !32, i64 4, i64 4, !32, i64 8, i64 4, !32, i64 12, i64 4, !32, i64 16, i64 4, !32, i64 20, i64 4, !32, i64 24, i64 8, !41, i64 32, i64 8, !24, i64 40, i64 4, !24, i64 44, i64 2, !59, i64 46, i64 2, !59}
!61 = !{i32 -1056584962, i32 1585306691}
!62 = distinct !{!62, !25}
!63 = distinct !{!63, !25}
!64 = !{!35, !31, i64 0}
!65 = !{!35, !31, i64 4}
!66 = !{!35, !31, i64 8}
!67 = !{!35, !31, i64 12}
!68 = !{!35, !31, i64 16}
!69 = !{!35, !31, i64 20}
!70 = !{i32 -1056584962, i32 -176013449}
!71 = !{i32 -1056584962, i32 -1709195435}
!72 = !{i32 -1056584962, i32 -1048341827}
!73 = !{i32 -1056584962, i32 -733631553}
!74 = distinct !{!74, !25}
!75 = !{i32 -1056584962, i32 411851596}
!76 = distinct !{!76, !25}
!77 = !{i32 -1056584962, i32 -1352707968}
!78 = distinct !{!78, !25}
!79 = !{i32 -1056584962, i32 1716883143}
!80 = !{!"b3RayCastInput", !34, i64 0, !34, i64 12, !31, i64 24}
!81 = !{!80, !31, i64 24}
!82 = !{i64 0, i64 4, !32, i64 4, i64 4, !32, i64 8, i64 4, !32, i64 12, i64 4, !32, i64 16, i64 4, !32, i64 20, i64 4, !32, i64 24, i64 4, !32}
!83 = distinct !{!83, !25}
!84 = !{i32 -1056584962, i32 1185008263}
!85 = !{!"b3BoxCastInput", !35, i64 0, !34, i64 24, !31, i64 36}
!86 = !{!85, !31, i64 36}
!87 = !{i64 0, i64 4, !32, i64 4, i64 4, !32, i64 8, i64 4, !32, i64 12, i64 4, !32, i64 16, i64 4, !32, i64 20, i64 4, !32, i64 24, i64 4, !32, i64 28, i64 4, !32, i64 32, i64 4, !32, i64 36, i64 4, !32}
!88 = !{i32 -1056584962, i32 1697064285}
!89 = !{!"branch_weights", i32 127, i32 1}
!90 = !{!"branch_weights", i32 16129, i32 127}
!91 = !{!"b3RebuildItem", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16}
!92 = !{!91, !6, i64 0}
!93 = !{!91, !6, i64 4}
!94 = !{!91, !6, i64 8}
!95 = !{!91, !6, i64 16}
!96 = !{!91, !6, i64 12}
!97 = !{!"branch_weights", i32 1, i32 1048574}
!98 = !{i32 -1056584962, i32 10718739}
!99 = !{!13, !13, i64 0}
!100 = !{!14, !14, i64 0}
!101 = !{!15, !15, i64 0}
!102 = !{!16, !16, i64 0}
!103 = !{i64 0, i64 8, !41, i64 8, i64 8, !99, i64 16, i64 4, !47, i64 20, i64 4, !47, i64 24, i64 4, !47, i64 28, i64 4, !47, i64 32, i64 4, !47, i64 40, i64 8, !100, i64 48, i64 8, !101, i64 56, i64 8, !102, i64 64, i64 8, !100, i64 72, i64 4, !47}
!104 = distinct !{!104, !25}
!105 = !{i32 -1056584962, i32 787452795}
!106 = distinct !{!106, !25}
!107 = distinct !{!107, !25}
!108 = distinct !{!108, !25}
!109 = distinct !{!109, !25}
!110 = distinct !{!110, !25}
!111 = distinct !{!111, !25}
!112 = distinct !{!112, !25}
!113 = distinct !{!113, !25}
!114 = distinct !{!114, !25}
!115 = distinct !{!115, !25}
!116 = !{i32 -1056584962, i32 731112195}
!117 = !{!34, !31, i64 0}
!118 = !{!34, !31, i64 4}
!119 = !{!34, !31, i64 8}
end_hunk_1
