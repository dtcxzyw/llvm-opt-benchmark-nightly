Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/mesh_contact?download=true
inline.NumInlined: 110
inline.NumDeleted: 45
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0
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
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @1, i64 %i.c) #8, !nosanitize !9
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
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @2, i64 %i.l, i64 %i.m) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.e:                                             ; preds = %bb.c
  %i.u = icmp ne ptr %6, null, !nosanitize !9
  %i.v = ptrtoint ptr %6 to i64, !nosanitize !9   ; 2 uses
  %i.w = and i64 %i.v, 7, !nosanitize !9
  %i.x = icmp eq i64 %i.w, 0, !nosanitize !9
  %i.y = and i1 %i.u, %i.x, !nosanitize !9
  br i1 %i.y, label %bb.g, label %bb.f, !prof !10, !nosanitize !9

bb.f:                                             ; preds = %bb.e
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @4, i64 %i.v) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.g:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.2.i)
  %.sroa.41285.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 4
  %.sroa.51286.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aa = load <2 x float>, ptr %5, align 8       ; 6 uses
  %i.ab = load <2 x float>, ptr %.sroa.41285.0..sroa_idx, align 4 ; 5 uses
  %.sroa.61287.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %.sroa.61287.0.copyload = load <2 x float>, ptr %.sroa.61287.0..sroa_idx, align 4 ; 20 uses
  %.sroa.71288.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 2 uses
  %.sroa.71288.0.copyload = load <2 x float>, ptr %.sroa.71288.0..sroa_idx, align 4 ; 13 uses
  %i.ac = icmp ne ptr %2, null, !nosanitize !9
  %i.ad = ptrtoint ptr %2 to i64, !nosanitize !9  ; 2 uses
  %i.ae = and i64 %i.ad, 7, !nosanitize !9
  %i.af = icmp eq i64 %i.ae, 0, !nosanitize !9
  %i.ag = and i1 %i.ac, %i.af, !nosanitize !9
  br i1 %i.ag, label %bb.i, label %bb.h, !prof !10, !nosanitize !9

bb.h:                                             ; preds = %bb.g
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @186, i64 %i.ad) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.i:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 152 ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 168 ; 2 uses
  %.sroa.5182.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %.sroa.5182.0.copyload.i = load float, ptr %.sroa.5182.0..sroa_idx.i, align 4, !tbaa !114
  %.sroa.6183.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 52 ; 2 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 60 ; 2 uses
  %.sroa.8.0.copyload.i = load float, ptr %.sroa.8.0..sroa_idx.i, align 4, !tbaa !114
  %.sroa.5213.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 176 ; 2 uses
  %.sroa.5213.0.copyload.i = load float, ptr %.sroa.5213.0..sroa_idx.i, align 8
  %.sroa.6214.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 180 ; 2 uses
  %.sroa.8216.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 188 ; 2 uses
  %.sroa.8216.0.copyload.i = load float, ptr %.sroa.8216.0..sroa_idx.i, align 4
  %i.aj = load <2 x float>, ptr %i.z, align 4, !tbaa !114
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
  %.fr20806 = freeze i1 %i.aq
  %op.rdx = and i1 %i.au, %.fr20806
  %op.rdx20693 = select i1 %op.rdx, i1 %i.ar, i1 false
  br i1 %op.rdx20693, label %bb.j, label %b3AABB_Contains.exit.thread.i

bb.j:                                             ; preds = %bb.i
  %i.av = icmp ne ptr %3, null, !nosanitize !9
  %i.aw = ptrtoint ptr %3 to i64, !nosanitize !9  ; 2 uses
  %i.ax = and i64 %i.aw, 7, !nosanitize !9
  %i.ay = icmp eq i64 %i.ax, 0, !nosanitize !9
  %i.az = and i1 %i.av, %i.ay, !nosanitize !9
  br i1 %i.az, label %._crit_edge13763, label %bb.k, !prof !10, !nosanitize !9

bb.k:                                             ; preds = %bb.j
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @187, i64 %i.aw) #8, !nosanitize !9
  unreachable, !nosanitize !9

b3AABB_Contains.exit.thread.i:                    ; preds = %bb.i
  %i.ba = tail call float @b3GetLengthUnitsPerMeter() #9
  %i.bb = fmul float %i.ba, 5.000000e-02
  %i.bc = tail call float @b3GetLengthUnitsPerMeter() #9
  %i.bd = fmul float %i.bc, 5.000000e-03
  %i.be = fmul float %i.bd, 4.000000e+00
  %i.bf = fadd float %i.bb, %i.be                 ; 3 uses
  %.sroa.043.0.copyload.i = load <2 x float>, ptr %i.z, align 4
  %.sroa.244.0.copyload.i = load float, ptr %.sroa.5182.0..sroa_idx.i, align 4
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %.sroa.2.8.vec.extract65.i.i.i = extractelement <2 x float> %.sroa.71288.0.copyload, i64 0
  %.sroa.09.0.vec.extract.i.i.i.i = extractelement <2 x float> %.sroa.61287.0.copyload, i64 0
  %.sroa.2.12.vec.extract.i.i.i = extractelement <2 x float> %.sroa.71288.0.copyload, i64 1
  %i.bm = fneg float %.sroa.2.8.vec.extract65.i.i.i
  %25 = extractelement <2 x float> %i.ab, i64 1   ; 2 uses
  %i.bn = fmul float %25, %.sroa.09.0.vec.extract.i.i.i.i
  %foldExtExtBinop = fmul <2 x float> %i.aa, %.sroa.71288.0.copyload
  %i.bo = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.bp = fsub float %i.bn, %i.bo
  %i.bq = shufflevector <2 x float> %.sroa.61287.0.copyload, <2 x float> %.sroa.71288.0.copyload, <2 x i32> <i32 1, i32 2> ; 4 uses
  %i.br = fmul <2 x float> %i.aa, %i.bq
  %i.bs = fmul <2 x float> %i.ab, %.sroa.61287.0.copyload
  %i.bt = fsub <2 x float> %i.br, %i.bs           ; 2 uses
  %i.bu = shufflevector <2 x float> %i.ab, <2 x float> %i.aa, <2 x i32> <i32 1, i32 2>
  %i.bv = shufflevector <2 x float> %.sroa.71288.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 5 uses
  %i.bw = fmul <2 x float> %i.bu, %i.bv
  %i.bx = fmul <2 x float> %i.ab, %i.bv
  %i.by = fadd <2 x float> %i.bt, %i.bw           ; 2 uses
  %i.bz = shufflevector <2 x float> %i.bt, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ca = insertelement <2 x float> %i.bz, float %i.bp, i64 0
  %i.cb = fadd <2 x float> %i.bx, %i.ca           ; 2 uses
  %i.cc = fmul <2 x float> %i.bq, %i.by
  %i.cd = shufflevector <2 x float> %.sroa.71288.0.copyload, <2 x float> %.sroa.61287.0.copyload, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.ce = fmul <2 x float> %i.cd, %i.cb
  %i.cf = fsub <2 x float> %i.cc, %i.ce
  %foldExtExtBinop20695 = fmul <2 x float> %.sroa.61287.0.copyload, %i.cb
  %foldExtExtBinop20697 = fmul <2 x float> %.sroa.61287.0.copyload, %i.by
  %shift = shufflevector <2 x float> %foldExtExtBinop20697, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop20699 = fsub <2 x float> %foldExtExtBinop20695, %shift
  %i.cg = extractelement <2 x float> %foldExtExtBinop20699, i64 0
  %i.ch = fmul <2 x float> %i.cf, splat (float 2.000000e+00)
  %i.ci = fsub <2 x float> %i.ch, %i.aa
  %i.cj = fmul float %i.cg, 2.000000e+00
  %i.ck = fsub float %i.cj, %25
  %i.cl = fneg <2 x float> %.sroa.61287.0.copyload
  %i.cm = shufflevector <2 x float> %i.cl, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cn = fadd <2 x float> %i.bi, %i.bk
  %i.co = fadd float %i.bj, %i.bl
  %i.cp = fmul <2 x float> %i.cn, splat (float 5.000000e-01) ; 5 uses
  %i.cq = fmul float %i.co, 5.000000e-01          ; 4 uses
  %i.cr = shufflevector <2 x float> %i.cp, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cs = insertelement <2 x float> %i.cr, float %i.cq, i64 0
  %i.ct = fmul <2 x float> %.sroa.61287.0.copyload, %i.cs
  %i.cu = fmul <2 x float> %i.bq, %i.cp
  %i.cv = fmul <2 x float> %i.cd, %i.cp
  %i.cw = insertelement <2 x float> %i.cr, float %i.cq, i64 1 ; 2 uses
  %i.cx = fmul <2 x float> %.sroa.61287.0.copyload, %i.cw
  %i.cy = fsub <2 x float> %i.ct, %i.cv
  %i.cz = fsub <2 x float> %i.cu, %i.cx
  %i.da = fmul <2 x float> %i.bv, %i.cw
  %i.db = insertelement <2 x float> poison, float %i.cq, i64 0
  %i.dc = shufflevector <2 x float> %i.db, <2 x float> %i.cp, <2 x i32> <i32 0, i32 2>
  %i.dd = fmul <2 x float> %i.bv, %i.dc
  %i.de = fadd <2 x float> %i.da, %i.cy           ; 2 uses
  %i.df = fadd <2 x float> %i.dd, %i.cz           ; 2 uses
  %i.dg = fmul <2 x float> %i.cd, %i.de
  %i.dh = fmul <2 x float> %i.bq, %i.df
  %i.di = fsub <2 x float> %i.dg, %i.dh
  %foldExtExtBinop20701 = fmul <2 x float> %.sroa.61287.0.copyload, %i.df
  %foldExtExtBinop20703 = fmul <2 x float> %.sroa.61287.0.copyload, %i.de
  %shift20705 = shufflevector <2 x float> %foldExtExtBinop20701, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop20706 = fsub <2 x float> %shift20705, %foldExtExtBinop20703
  %i.dj = extractelement <2 x float> %foldExtExtBinop20706, i64 0
  %i.dk = fmul <2 x float> %i.di, splat (float 2.000000e+00)
  %i.dl = fadd <2 x float> %i.cp, %i.dk
  %i.dm = fmul float %i.dj, 2.000000e+00
  %i.dn = fadd float %i.cq, %i.dm
  %i.do = fadd <2 x float> %i.ci, %i.dl           ; 2 uses
  %i.dp = fadd float %i.ck, %i.dn                 ; 2 uses
  %i.dq = fmul <2 x float> %i.bv, %i.cm           ; 4 uses
  %i.dr = shufflevector <2 x float> %.sroa.71288.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ds = fmul <2 x float> %.sroa.61287.0.copyload, %i.dr ; 4 uses
  %shift20708 = shufflevector <2 x float> %.sroa.61287.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop20709 = fmul <2 x float> %.sroa.61287.0.copyload, %shift20708
  %i.dt = extractelement <2 x float> %foldExtExtBinop20709, i64 0 ; 2 uses
  %foldExtExtBinop20711 = fmul <2 x float> %.sroa.71288.0.copyload, %.sroa.71288.0.copyload
  %i.du = fmul <2 x float> %.sroa.61287.0.copyload, %.sroa.61287.0.copyload ; 2 uses
  %i.dv = shufflevector <2 x float> %i.du, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dw = fmul float %.sroa.2.12.vec.extract.i.i.i, %i.bm ; 2 uses
  %i.dx = fadd float %i.dt, %i.dw
  %foldExtExtBinop20713 = fsub <2 x float> %i.ds, %i.dq
  %i.dy = extractelement <2 x float> %foldExtExtBinop20713, i64 0
  %i.dz = fmul float %i.dy, 2.000000e+00          ; 3 uses
  %i.ea = fsub float %i.dt, %i.dw
  %i.eb = insertelement <2 x float> poison, float %i.ea, i64 0
  %i.ec = insertelement <2 x float> %i.eb, float %i.dx, i64 1
  %i.ed = fmul <2 x float> %i.ec, splat (float 2.000000e+00) ; 3 uses
  %i.ee = shufflevector <2 x float> %foldExtExtBinop20711, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ef = fadd <2 x float> %i.dv, %i.ee
  %i.eg = fmul <2 x float> %i.ef, splat (float 2.000000e+00)
  %i.eh = fsub <2 x float> splat (float 1.000000e+00), %i.eg ; 3 uses
  %foldExtExtBinop20715 = fadd <2 x float> %i.ds, %i.dq
  %i.ei = extractelement <2 x float> %foldExtExtBinop20715, i64 1
  %i.ej = fmul float %i.ei, 2.000000e+00          ; 3 uses
  %i.ek = fadd <2 x float> %i.ds, %i.dq
  %i.el = fsub <2 x float> %i.ds, %i.dq
  %i.em = shufflevector <2 x float> %i.ek, <2 x float> %i.el, <2 x i32> <i32 0, i32 3>
  %i.en = fmul <2 x float> %i.em, splat (float 2.000000e+00) ; 3 uses
  %i.eo = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.du)
  %i.ep = fmul float %i.eo, 2.000000e+00
  %i.eq = fsub float 1.000000e+00, %i.ep          ; 3 uses
  %i.er = fcmp olt float %i.dz, 0.000000e+00
  %i.es = fneg float %i.dz
  %i.et = select i1 %i.er, float %i.es, float %i.dz
  %i.eu = fcmp olt <2 x float> %i.ed, zeroinitializer
  %i.ev = fneg <2 x float> %i.ed
  %i.ew = select <2 x i1> %i.eu, <2 x float> %i.ev, <2 x float> %i.ed
  %i.ex = fcmp olt <2 x float> %i.eh, zeroinitializer
  %i.ey = fneg <2 x float> %i.eh
  %i.ez = select <2 x i1> %i.ex, <2 x float> %i.ey, <2 x float> %i.eh
  %i.fa = fcmp olt float %i.ej, 0.000000e+00
  %i.fb = fneg float %i.ej
  %i.fc = select i1 %i.fa, float %i.fb, float %i.ej
  %i.fd = fcmp olt <2 x float> %i.en, zeroinitializer
  %i.fe = fneg <2 x float> %i.en
  %i.ff = select <2 x i1> %i.fd, <2 x float> %i.fe, <2 x float> %i.en
  %i.fg = fcmp olt float %i.eq, 0.000000e+00
  %i.fh = fneg float %i.eq
  %i.fi = select i1 %i.fg, float %i.fh, float %i.eq
  %i.fj = fsub <2 x float> %i.bk, %i.bi
  %i.fk = fsub float %i.bl, %i.bj
  %i.fl = fmul <2 x float> %i.fj, splat (float 5.000000e-01) ; 4 uses
  %i.fm = shufflevector <2 x float> %i.fl, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.fn = fmul float %i.fk, 5.000000e-01          ; 2 uses
  %i.fo = extractelement <2 x float> %i.fl, i64 0
  %i.fp = fmul float %i.et, %i.fo
  %i.fq = extractelement <2 x float> %i.fl, i64 1
  %i.fr = fmul float %i.fc, %i.fq
  %i.fs = fadd float %i.fp, %i.fr
  %i.ft = fmul <2 x float> %i.ew, %i.fm
  %i.fu = fmul <2 x float> %i.ez, %i.fl
  %i.fv = fadd <2 x float> %i.ft, %i.fu
  %i.fw = insertelement <2 x float> poison, float %i.fn, i64 0
  %i.fx = shufflevector <2 x float> %i.fw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fy = fmul <2 x float> %i.ff, %i.fx
  %i.fz = fadd <2 x float> %i.fy, %i.fv           ; 2 uses
  %i.ga = fmul float %i.fi, %i.fn
  %i.gb = fadd float %i.ga, %i.fs                 ; 2 uses
  %i.gc = fsub <2 x float> %i.do, %i.fz           ; 2 uses
  %i.gd = fsub float %i.dp, %i.gb                 ; 2 uses
  %i.ge = fadd <2 x float> %i.fz, %i.do           ; 2 uses
  %i.gf = fadd float %i.gb, %i.dp                 ; 2 uses
  %i.gg = icmp ne ptr %3, null, !nosanitize !9
  %i.gh = ptrtoint ptr %3 to i64, !nosanitize !9  ; 2 uses
  %i.gi = and i64 %i.gh, 7, !nosanitize !9
  %i.gj = icmp eq i64 %i.gi, 0, !nosanitize !9
  %i.gk = and i1 %i.gg, %i.gj, !nosanitize !9
  br i1 %i.gk, label %bb.m, label %bb.l, !prof !10, !nosanitize !9

bb.l:                                             ; preds = %b3AABB_Contains.exit.thread.i
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @188, i64 %i.gh) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.m:                                             ; preds = %b3AABB_Contains.exit.thread.i
  %i.gl = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.gm = load i32, ptr %i.gl, align 8, !tbaa !120
  %i.gn = icmp eq i32 %i.gm, 4
  %i.go = getelementptr inbounds nuw i8, ptr %3, i64 200 ; 2 uses
  br i1 %i.gn, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  store <2 x float> %i.gc, ptr %17, align 8
  %.sroa.5168.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %17, i64 8
  store float %i.gd, ptr %.sroa.5168.0..sroa_idx.i, align 8
  %.sroa.6171.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %17, i64 12
  store <2 x float> %i.ge, ptr %.sroa.6171.0..sroa_idx.i, align 4
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %17, i64 20
  store float %i.gf, ptr %.sroa.7.0..sroa_idx.i, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #9
  store ptr %i.a, ptr %16, align 8, !tbaa !16
  %i.gp = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i32 256, ptr %i.gp, align 8, !tbaa !17
  %i.gq = getelementptr inbounds nuw i8, ptr %16, i64 12 ; 2 uses
  store i32 0, ptr %i.gq, align 4, !tbaa !18
  call void @b3QueryMesh(ptr noundef nonnull %i.go, ptr noundef nonnull byval(%struct.b3AABB) align 8 %17, ptr noundef nonnull @b3CollectTriangleIndicesCallback, ptr noundef nonnull %16) #9
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.gs = load ptr, ptr %i.go, align 8, !tbaa !121
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  store <2 x float> %i.gc, ptr %15, align 8
  %.sroa.5168.0..sroa_idx169.i = getelementptr inbounds nuw i8, ptr %15, i64 8
  store float %i.gd, ptr %.sroa.5168.0..sroa_idx169.i, align 8
  %.sroa.6171.0..sroa_idx172.i = getelementptr inbounds nuw i8, ptr %15, i64 12
  store <2 x float> %i.ge, ptr %.sroa.6171.0..sroa_idx172.i, align 4
  %.sroa.7.0..sroa_idx174.i = getelementptr inbounds nuw i8, ptr %15, i64 20
  store float %i.gf, ptr %.sroa.7.0..sroa_idx174.i, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #9
  store ptr %i.a, ptr %14, align 8, !tbaa !16
  %i.gt = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i32 256, ptr %i.gt, align 8, !tbaa !17
  %i.gu = getelementptr inbounds nuw i8, ptr %14, i64 12 ; 2 uses
  store i32 0, ptr %i.gu, align 4, !tbaa !18
  call void @b3QueryHeightField(ptr noundef %i.gs, ptr noundef nonnull byval(%struct.b3AABB) align 8 %15, ptr noundef nonnull @b3CollectTriangleIndicesCallback, ptr noundef nonnull %14) #9
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.082.i = phi i32 [ %i.gr, %bb.n ], [ %i.gv, %bb.o ] ; 8 uses
  %i.gw = icmp eq i32 %.082.i, 256
  br i1 %i.gw, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %.b.i = load i1, ptr @b3RefreshCache.s_once, align 1
  br i1 %.b.i, label %.thread.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void (ptr, ...) @b3Log(ptr noundef nonnull @.str, i32 noundef 256) #9
  store i1 true, ptr @b3RefreshCache.s_once, align 1
  br label %.thread.i

end_hunk_0
begin_hunk_1_@b3ComputeMeshManifolds:bb.a
  %i.hy = load i32, ptr %i.hf, align 4, !tbaa !20 ; 2 uses
  %i.hz = icmp slt i32 %i.hx, %i.hy
  br i1 %i.hz, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.critedge.us.i, label %.lr.ph495.split.us535.i

bb.x:                                             ; preds = %bb.v
  %i.ia = trunc nsw i64 %indvars.iv.i to i32      ; 2 uses
  %i.ib = icmp eq i32 %i.hx, %i.hy
  br i1 %i.ib, label %bb.y, label %.critedge.us.i

bb.y:                                             ; preds = %bb.x
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hm, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.hb, ptr noundef nonnull align 4 dereferenceable(16) %i.ic, i64 16, i1 false), !tbaa.struct !124
  br label %.critedge.us.i

.lr.ph.split.us.us.i:                             ; preds = %.lr.ph.us.i
  br i1 %i.hi, label %.split589.us.i, label %.critedge.us.i

.critedge.us.i:                                   ; preds = %bb.w, %.lr.ph.split.us.us.i, %bb.y, %bb.x, %.lr.ph.split.split.us.us.i
  %.1308.us.i = phi i32 [ %i.ia, %bb.x ], [ %i.ia, %bb.y ], [ %.081524.us.i, %.lr.ph.split.us.us.i ], [ %.081524.us.i, %.lr.ph.split.split.us.us.i ], [ %i.he, %bb.w ]
  %indvars.iv.next777.i = add nuw nsw i64 %indvars.iv776.i, 1 ; 2 uses
  %exitcond781.not.i = icmp eq i64 %indvars.iv.next777.i, %wide.trip.count780.i
  br i1 %exitcond781.not.i, label %._crit_edge528.i, label %.lr.ph527.split.us.split.i, !llvm.loop !29

.split539.us.i:                                   ; preds = %.lr.ph527.split.us.split.i
  call void @__ubsan_handle_out_of_bounds_abort(ptr nonnull @190, i64 256) #8, !nosanitize !9
  unreachable, !nosanitize !9

.split542.us.i:                                   ; preds = %bb.t
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @191, i64 %i.gy, i64 %i.hd) #8, !nosanitize !9
  unreachable, !nosanitize !9

.split589.us.i:                                   ; preds = %.lr.ph.split.us.us.i
  %i.id = load ptr, ptr %i.ah, align 8, !tbaa !121 ; 3 uses
  %i.ie = sext i32 %.081524.us.i to i64           ; 2 uses
  %i.if = mul nsw i64 %i.ie, 20
  %i.ig = ptrtoint ptr %i.id to i64, !nosanitize !9 ; 3 uses
  %i.ih = add i64 %i.if, %i.ig, !nosanitize !9    ; 3 uses
  %i.ii = icmp ne ptr %i.id, null, !nosanitize !9 ; 2 uses
  %i.ij = icmp eq i64 %i.ih, 0
  %i.ik = xor i1 %i.ii, %i.ij
  %i.il = icmp uge i64 %i.ih, %i.ig, !nosanitize !9
  %i.im = icmp slt i32 %.081524.us.i, 0
  %i.in = xor i1 %i.im, %i.il
  %i.io = and i1 %i.ik, %i.in, !nosanitize !9
  br i1 %i.io, label %bb.z, label %.split.us.i, !prof !10, !nosanitize !9

bb.z:                                             ; preds = %.split589.us.i
  %i.ip = getelementptr inbounds [20 x i8], ptr %i.id, i64 %i.ie
  %i.iq = ptrtoint ptr %i.ip to i64, !nosanitize !9 ; 2 uses
  %i.ir = and i64 %i.iq, 3, !nosanitize !9
  %i.is = icmp eq i64 %i.ir, 0, !nosanitize !9
  %i.it = and i1 %i.ii, %i.is
  br i1 %i.it, label %.split414.us.i, label %.split411.us.i, !prof !10, !nosanitize !9

.split414.us.i:                                   ; preds = %bb.z
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @196, i64 %i.ha, i64 %i.hh) #8, !nosanitize !9
  unreachable, !nosanitize !9

.lr.ph495.split.us.i:                             ; preds = %.lr.ph495.us.i
  %i.iu = mul nsw i64 %i.hl, 20
  %i.iv = icmp eq i32 %.081524.us.i, 0
  br i1 %i.iv, label %.split411.us.i, label %.split.us.i, !prof !10, !nosanitize !9

.split.us.i:                                      ; preds = %.lr.ph495.split.us535.i, %.lr.ph495.split.us.i, %.split589.us.i
  %.us-phi408.i = phi i64 [ %i.ig, %.split589.us.i ], [ %i.hk, %.lr.ph495.split.us.i ], [ %i.hk, %.lr.ph495.split.us535.i ]
  %.us-phi409.i = phi i64 [ %i.ih, %.split589.us.i ], [ %i.iu, %.lr.ph495.split.us.i ], [ %i.ho, %.lr.ph495.split.us535.i ]
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @192, i64 %.us-phi408.i, i64 %.us-phi409.i) #8, !nosanitize !9
  unreachable, !nosanitize !9

.split411.us.i:                                   ; preds = %bb.u, %.lr.ph495.split.us.i, %bb.z
  %.us-phi412.i = phi i64 [ %i.iq, %bb.z ], [ 0, %.lr.ph495.split.us.i ], [ %i.hu, %bb.u ]
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @194, i64 %.us-phi412.i) #8, !nosanitize !9
  unreachable, !nosanitize !9

._crit_edge528.i:                                 ; preds = %.critedge.us.i, %bb.s
  %i.iw = phi i1 [ false, %bb.s ], [ true, %.critedge.us.i ]
  %i.ix = getelementptr inbounds nuw i8, ptr %2, i64 164 ; 2 uses
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !121 ; 2 uses
  %i.iz = icmp slt i32 %i.iy, %.082.i
  br i1 %i.iz, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %._crit_edge528.i
  %i.ja = mul i32 %i.iy, 20
  %i.jb = mul i32 %.082.i, 20
  %i.jc = load ptr, ptr %i.ah, align 8, !tbaa !121
  %i.jd = call ptr @b3GrowAlloc(ptr noundef %i.jc, i32 noundef %i.ja, i32 noundef %i.jb) #9
  store ptr %i.jd, ptr %i.ah, align 8, !tbaa !121
  store i32 %.082.i, ptr %i.ix, align 4, !tbaa !121
  br label %bb.ab

bb.ab:                                            ; preds = %._crit_edge528.i, %bb.aa
  %i.je = getelementptr inbounds nuw i8, ptr %2, i64 160
  store i32 %.082.i, ptr %i.je, align 8, !tbaa !121
  br i1 %i.iw, label %.lr.ph.i, label %._crit_edge596.i

.lr.ph.i:                                         ; preds = %bb.ab
  %i.jf = ptrtoint ptr %i.a to i64                ; 3 uses
  %i.jg = ptrtoint ptr %18 to i64                 ; 3 uses
  %wide.trip.count786.i = zext nneg i32 %.082.i to i64
  br label %bb.ac

._crit_edge596.i:                                 ; preds = %bb.am, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %._crit_edge13763

bb.ac:                                            ; preds = %bb.am, %.lr.ph.i
  %indvars.iv782.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next783.i, %bb.am ] ; 8 uses
  %i.jh = load ptr, ptr %i.ah, align 8, !tbaa !121 ; 3 uses
  %i.ji = getelementptr inbounds nuw [20 x i8], ptr %i.jh, i64 %indvars.iv782.i ; 3 uses
  %i.jj = mul nuw nsw i64 %indvars.iv782.i, 20
  %i.jk = ptrtoint ptr %i.jh to i64, !nosanitize !9 ; 3 uses
  %i.jl = add i64 %i.jj, %i.jk, !nosanitize !9    ; 3 uses
  %i.jm = icmp ne ptr %i.jh, null, !nosanitize !9 ; 2 uses
  %i.jn = icmp eq i64 %i.jl, 0
  %i.jo = xor i1 %i.jm, %i.jn
  %i.jp = icmp uge i64 %i.jl, %i.jk, !nosanitize !9
  %i.jq = and i1 %i.jp, %i.jo, !nosanitize !9
  br i1 %i.jq, label %bb.ae, label %bb.ad, !prof !10, !nosanitize !9

bb.ad:                                            ; preds = %bb.ac
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @197, i64 %i.jk, i64 %i.jl) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.ae:                                            ; preds = %bb.ac
  %i.jr = ptrtoint ptr %i.ji to i64, !nosanitize !9 ; 2 uses
  %i.js = and i64 %i.jr, 3, !nosanitize !9
  %i.jt = icmp eq i64 %i.js, 0, !nosanitize !9
  %i.ju = and i1 %i.jm, %i.jt
  br i1 %i.ju, label %bb.ag, label %bb.af, !prof !10, !nosanitize !9

bb.af:                                            ; preds = %bb.ae
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @198, i64 %i.jr) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.ag:                                            ; preds = %bb.ae
  %exitcond785.not.i = icmp eq i64 %indvars.iv782.i, 256
  br i1 %exitcond785.not.i, label %bb.ah, label %bb.ai, !prof !19, !nosanitize !9

bb.ah:                                            ; preds = %bb.ag
  call void @__ubsan_handle_out_of_bounds_abort(ptr nonnull @199, i64 256) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.ai:                                            ; preds = %bb.ag
  %i.jv = shl nuw nsw i64 %indvars.iv782.i, 2
  %i.jw = add i64 %i.jv, %i.jf, !nosanitize !9    ; 2 uses
  %.not.i = icmp ult i64 %i.jw, %i.jf, !nosanitize !9
  br i1 %.not.i, label %bb.aj, label %bb.ak, !prof !19, !nosanitize !9

bb.aj:                                            ; preds = %bb.ai
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @200, i64 %i.jf, i64 %i.jw) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.ak:                                            ; preds = %bb.ai
  %i.jx = shl nuw nsw i64 %indvars.iv782.i, 4
  %i.jy = add i64 %i.jx, %i.jg, !nosanitize !9    ; 2 uses
  %.not100.i = icmp ult i64 %i.jy, %i.jg, !nosanitize !9
  br i1 %.not100.i, label %bb.al, label %bb.am, !prof !19, !nosanitize !9

bb.al:                                            ; preds = %bb.ak
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @201, i64 %i.jg, i64 %i.jy) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.am:                                            ; preds = %bb.ak
  %i.jz = getelementptr inbounds nuw [16 x i8], ptr %18, i64 %indvars.iv782.i
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv782.i
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.2.i, ptr noundef nonnull align 16 dereferenceable(16) %i.jz, i64 16, i1 false), !tbaa.struct !124
  store i32 %i.kb, ptr %i.ji, align 4, !tbaa !20
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ji, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.2.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.2.i, i64 16, i1 false), !tbaa.struct !124
  %indvars.iv.next783.i = add nuw nsw i64 %indvars.iv782.i, 1 ; 2 uses
  %exitcond787.not.i = icmp eq i64 %indvars.iv.next783.i, %wide.trip.count786.i
  br i1 %exitcond787.not.i, label %._crit_edge596.i, label %bb.ac, !llvm.loop !30

._crit_edge13763:                                 ; preds = %bb.j, %._crit_edge596.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.2.i)
  %i.kc = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.kd = load i32, ptr %i.kc, align 8, !tbaa !128 ; 8 uses
  %i.ke = shl i32 %i.kd, 3                        ; 3 uses
  %i.kf = call fastcc ptr @b3Bump(ptr noundef nonnull %9, i32 noundef %i.ke)
  %.fr8568 = freeze ptr %i.kf                     ; 16 uses
  %i.kg = call fastcc ptr @b3Bump(ptr noundef nonnull %9, i32 noundef %i.ke)
  %.fr8556 = freeze ptr %i.kg                     ; 10 uses
  %i.kh = call fastcc ptr @b3Bump(ptr noundef nonnull %9, i32 noundef %i.ke)
  %.fr8559 = freeze ptr %i.kh                     ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #9
  %i.ki = getelementptr inbounds nuw i8, ptr %19, i64 512 ; 2 uses
  store i32 0, ptr %i.ki, align 8, !tbaa !23
  %i.kj = getelementptr inbounds nuw i8, ptr %20, i64 256
  store i32 0, ptr %i.kj, align 4, !tbaa !25
  %.sroa.41270.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 4
  %.sroa.51271.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.61272.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 2 uses
  %.sroa.61272.0.copyload = load <2 x float>, ptr %.sroa.61272.0..sroa_idx, align 4 ; 8 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 2 uses
  %.sroa.8.0.copyload = load <2 x float>, ptr %.sroa.8.0..sroa_idx, align 4 ; 9 uses
  %.sroa.3.8.vec.extract51.i = extractelement <2 x float> %.sroa.71288.0.copyload, i64 0 ; 2 uses
  %.sroa.4.8.vec.extract60.i = extractelement <2 x float> %.sroa.8.0.copyload, i64 0 ; 2 uses
  %.sroa.09.4.vec.extract13.i.i = extractelement <2 x float> %.sroa.61287.0.copyload, i64 1 ; 4 uses
  %26 = fmul float %.sroa.09.4.vec.extract13.i.i, %.sroa.4.8.vec.extract60.i
  %.sroa.0.4.vec.extract8.i.i = extractelement <2 x float> %.sroa.61272.0.copyload, i64 1 ; 5 uses
  %27 = fmul float %.sroa.3.8.vec.extract51.i, %.sroa.0.4.vec.extract8.i.i
  %28 = fsub float %26, %27
  %.sroa.0.0.vec.extract.i.i = extractelement <2 x float> %.sroa.61272.0.copyload, i64 0 ; 2 uses
  %.sroa.09.0.vec.extract.i.i = extractelement <2 x float> %.sroa.61287.0.copyload, i64 0 ; 2 uses
  %29 = fmul float %.sroa.09.0.vec.extract.i.i, %.sroa.0.4.vec.extract8.i.i
  %30 = fmul float %.sroa.09.4.vec.extract13.i.i, %.sroa.0.0.vec.extract.i.i
  %31 = fsub float %29, %30
  %.sroa.4.12.vec.extract62.i = extractelement <2 x float> %.sroa.8.0.copyload, i64 1 ; 4 uses
  %32 = fmul float %.sroa.09.0.vec.extract.i.i, %.sroa.4.12.vec.extract62.i
  %33 = fadd float %32, %28
  %34 = fmul float %.sroa.3.8.vec.extract51.i, %.sroa.4.12.vec.extract62.i
  %35 = fadd float %31, %34
  %.sroa.3.12.vec.extract53.i = extractelement <2 x float> %.sroa.71288.0.copyload, i64 1 ; 4 uses
  %36 = fmul float %.sroa.3.12.vec.extract53.i, %.sroa.0.0.vec.extract.i.i
  %37 = fsub float %33, %36                       ; 4 uses
  %38 = fmul float %.sroa.3.12.vec.extract53.i, %.sroa.4.8.vec.extract60.i
  %39 = fsub float %35, %38                       ; 4 uses
  %40 = fmul float %39, %39                       ; 2 uses
  %41 = fmul float %37, %37                       ; 2 uses
  %foldExtExtBinop20717 = fmul <2 x float> %.sroa.71288.0.copyload, %.sroa.61272.0.copyload
  %foldExtExtBinop20719 = fmul <2 x float> %.sroa.61287.0.copyload, %.sroa.8.0.copyload
  %foldExtExtBinop20721 = fsub <2 x float> %foldExtExtBinop20717, %foldExtExtBinop20719
  %42 = extractelement <2 x float> %foldExtExtBinop20721, i64 0
  %43 = fmul float %.sroa.09.4.vec.extract13.i.i, %.sroa.4.12.vec.extract62.i
  %44 = fadd float %43, %42
  %45 = fmul float %.sroa.3.12.vec.extract53.i, %.sroa.0.4.vec.extract8.i.i
  %46 = fsub float %44, %45                       ; 4 uses
  %47 = fmul float %.sroa.3.12.vec.extract53.i, %.sroa.4.12.vec.extract62.i
  %foldExtExtBinop20723 = fmul <2 x float> %.sroa.61287.0.copyload, %.sroa.61272.0.copyload
  %i.kk = extractelement <2 x float> %foldExtExtBinop20723, i64 0
  %48 = fmul float %.sroa.09.4.vec.extract13.i.i, %.sroa.0.4.vec.extract8.i.i
  %49 = fadd float %i.kk, %48
  %foldExtExtBinop20725 = fmul <2 x float> %.sroa.71288.0.copyload, %.sroa.8.0.copyload
  %50 = extractelement <2 x float> %foldExtExtBinop20725, i64 0
  %51 = fadd float %50, %49
  %52 = fadd float %47, %51                       ; 2 uses
  %53 = fmul float %52, %46                       ; 2 uses
  %54 = insertelement <2 x float> poison, float %37, i64 0
  %55 = shufflevector <2 x float> %54, <2 x float> poison, <2 x i32> zeroinitializer
  %56 = insertelement <2 x float> poison, float %46, i64 0
  %57 = insertelement <2 x float> %56, float %52, i64 1 ; 2 uses
  %i.kl = fmul <2 x float> %55, %57               ; 3 uses
  %58 = fmul float %46, %46                       ; 2 uses
  %59 = insertelement <2 x float> poison, float %39, i64 0
  %60 = shufflevector <2 x float> %59, <2 x float> poison, <2 x i32> zeroinitializer
  %61 = shufflevector <2 x float> %57, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.km = fmul <2 x float> %60, %61               ; 3 uses
  %62 = fadd float %40, %58
  %63 = fmul float %62, 2.000000e+00
  %64 = fsub float 1.000000e+00, %63              ; 3 uses
  %65 = fadd <2 x float> %i.km, %i.kl
  %foldExtExtBinop20727 = fsub <2 x float> %i.kl, %i.km
  %i.kn = extractelement <2 x float> %foldExtExtBinop20727, i64 0
  %66 = fmul float %i.kn, 2.000000e+00            ; 3 uses
  %i.ko = fmul <2 x float> %65, splat (float 2.000000e+00) ; 4 uses
  %foldExtExtBinop20729 = fsub <2 x float> %i.km, %i.kl
  %67 = extractelement <2 x float> %foldExtExtBinop20729, i64 1
  %68 = fadd float %41, %58
  %i.kp = fmul float %68, 2.000000e+00
  %69 = load <2 x float>, ptr %7, align 8
  %70 = load <2 x float>, ptr %.sroa.41270.0..sroa_idx, align 4
  %71 = shufflevector <2 x float> %i.aa, <2 x float> %i.ab, <2 x i32> <i32 1, i32 3>
  %72 = fsub <2 x float> %71, %70                 ; 4 uses
  %73 = fsub <2 x float> %i.aa, %69               ; 5 uses
  %74 = extractelement <2 x float> %73, i64 0
  %foldExtExtBinop20731 = fmul <2 x float> %73, %.sroa.8.0.copyload
  %75 = shufflevector <2 x float> %.sroa.8.0.copyload, <2 x float> %.sroa.61272.0.copyload, <2 x i32> <i32 0, i32 2> ; 2 uses
  %76 = fmul <2 x float> %72, %75
  %i.kq = fmul <2 x float> %72, %.sroa.61272.0.copyload ; 2 uses
  %77 = shufflevector <2 x float> %.sroa.61272.0.copyload, <2 x float> %.sroa.8.0.copyload, <2 x i32> <i32 1, i32 2>
  %i.kr = fmul <2 x float> %73, %77
  %78 = shufflevector <2 x float> %i.kq, <2 x float> %foldExtExtBinop20731, <2 x i32> <i32 1, i32 2>
  %79 = fsub <2 x float> %78, %76
  %80 = fsub <2 x float> %i.kq, %i.kr
  %81 = shufflevector <2 x float> %.sroa.8.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %82 = fmul <2 x float> %73, %81
  %83 = shufflevector <2 x float> %72, <2 x float> %73, <2 x i32> <i32 1, i32 2>
  %i.ks = fmul <2 x float> %83, %81
  %84 = fsub <2 x float> %79, %82                 ; 2 uses
  %i.kt = fsub <2 x float> %80, %i.ks             ; 2 uses
  %i.ku = extractelement <2 x float> %i.kt, i64 0
  %i.kv = fmul float %.sroa.0.4.vec.extract8.i.i, %i.ku
  %shift20733 = shufflevector <2 x float> %84, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop20734 = fmul <2 x float> %.sroa.8.0.copyload, %shift20733
  %85 = extractelement <2 x float> %foldExtExtBinop20734, i64 0
  %86 = fsub float %i.kv, %85
  %87 = fmul <2 x float> %75, %84
  %i.kw = fmul <2 x float> %.sroa.61272.0.copyload, %i.kt
  %i.kx = fsub <2 x float> %87, %i.kw
  %88 = fmul float %86, 2.000000e+00
  %89 = fadd float %74, %88                       ; 3 uses
  %90 = fmul <2 x float> %i.kx, splat (float 2.000000e+00)
  %i.ky = fadd <2 x float> %72, %90               ; 3 uses
  %91 = fmul float %39, %37                       ; 2 uses
  %92 = fadd float %40, %41
  %93 = fmul float %92, 2.000000e+00
  %94 = fsub float %91, %53
  %95 = fmul float %94, 2.000000e+00              ; 3 uses
  %96 = fsub float 1.000000e+00, %93              ; 3 uses
  %97 = fadd float %91, %53
  %98 = fmul float %97, 2.000000e+00              ; 3 uses
  %i.kz = fmul float %67, 2.000000e+00            ; 3 uses
  %i.la = fsub float 1.000000e+00, %i.kp          ; 3 uses
  %i.lb = call float @b3GetLengthUnitsPerMeter() #9
  %i.lc = fmul float %i.lb, 5.000000e-03
  %i.ld = call float @b3GetLengthUnitsPerMeter() #9
  %i.le = fmul float %i.ld, 5.000000e-03
  %i.lf = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !133
  %i.lh = and i32 %i.lg, 16777216
  %i.li = icmp ne i32 %i.lh, 0
  %i.lj = shl i32 %i.kd, 5                        ; 5 uses
  %i.lk = add i32 %i.kd, 67108864
  %i.ll = icmp ult i32 %i.lk, 134217728
  br i1 %i.ll, label %bb.ao, label %bb.an, !prof !10, !nosanitize !9

bb.an:                                            ; preds = %._crit_edge13763
  %i.lm = zext i32 %i.kd to i64, !nosanitize !9
  call void @__ubsan_handle_mul_overflow_abort(ptr nonnull @7, i64 32, i64 %i.lm) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.ao:                                            ; preds = %._crit_edge13763
  %i.ln = mul i32 %i.kd, 768
  %i.lo = call fastcc ptr @b3Bump(ptr noundef nonnull %9, i32 noundef %i.ln) ; 3 uses
  %i.lp = shl i32 %i.kd, 6
  %i.lq = call fastcc ptr @b3Bump(ptr noundef nonnull %9, i32 noundef %i.lp) ; 3 uses
  %i.lr = load ptr, ptr %i.ah, align 8, !tbaa !134
  %.fr8550 = freeze ptr %i.lr                     ; 3 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 4 uses
  %i.lt = load i32, ptr %i.ls, align 8, !tbaa !120 ; 4 uses
  %i.lu = icmp eq i32 %i.lt, 3
  br i1 %i.lu, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.lv = getelementptr inbounds nuw i8, ptr %6, i64 200
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !121
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ao, %bb.ap
  %i.lx = phi ptr [ %i.lw, %bb.ap ], [ null, %bb.ao ]
  %i.ly = icmp sgt i32 %i.kd, 0
  br i1 %i.ly, label %.lr.ph7347, label %._crit_edge7348

.lr.ph7347:                                       ; preds = %bb.aq
  %i.lz = ptrtoint ptr %.fr8550 to i64            ; 5 uses
  %.not8551 = icmp eq ptr %.fr8550, null
  %i.ma = ptrtoint ptr %3 to i64                  ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.mc = getelementptr inbounds nuw i8, ptr %3, i64 200 ; 2 uses
  %.sroa.2582.0..sroa_idx = getelementptr inbounds nuw i8, ptr %21, i64 8
  %.sroa.4586.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 3 uses
  %i.md = getelementptr inbounds nuw i8, ptr %23, i64 12 ; 3 uses
  %i.me = getelementptr inbounds nuw i8, ptr %21, i64 12
  %.sroa.2564.0..sroa_idx = getelementptr inbounds nuw i8, ptr %21, i64 20
  %.sroa.4568.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 20 ; 3 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %23, i64 24 ; 3 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %21, i64 24
  %.sroa.2546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %21, i64 32
  %.sroa.4550.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 32 ; 2 uses
  %i.mh = ptrtoint ptr %i.lq to i64               ; 3 uses
  %i.mi = icmp ne ptr %i.lq, null                 ; 2 uses
  %i.mj = ptrtoint ptr %i.lo to i64               ; 3 uses
  %i.mk = icmp ne ptr %i.lo, null
  %i.ml = getelementptr inbounds nuw i8, ptr %21, i64 48 ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %6, i64 200 ; 2 uses
  %i.mn = ptrtoint ptr %i.j to i64                ; 2 uses
  %i.mo = and i64 %i.mn, 7
  %i.mp = icmp eq i64 %i.mo, 0
  %i.mq = and i1 %i.n, %i.mp
  %i.mr = getelementptr inbounds nuw i8, ptr %i.j, i64 136 ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.j, i64 140 ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %21, i64 36 ; 4 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %21, i64 40 ; 5 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %21, i64 44 ; 3 uses
  %i.mw = fmul float %i.lc, -2.000000e+00
  %i.mx = ptrtoint ptr %.fr8559 to i64            ; 6 uses
  %i.my = icmp ne ptr %.fr8559, null              ; 4 uses
  %i.mz = ptrtoint ptr %.fr8556 to i64            ; 6 uses
  %i.na = icmp ne ptr %.fr8556, null              ; 4 uses
  %i.nb = ptrtoint ptr %.fr8568 to i64            ; 9 uses
  %i.nc = icmp ne ptr %.fr8568, null              ; 6 uses
  br i1 %.not8551, label %.lr.ph7347.split.us, label %.lr.ph7347.split, !prof !19

.lr.ph7347.split.us:                              ; preds = %.lr.ph7347
  %i.nd = icmp sgt i32 %i.lj, 3
  br i1 %i.nd, label %.split7366, label %._crit_edge7348

.lr.ph7347.split:                                 ; preds = %.lr.ph7347
  %i.ne = icmp ne ptr %3, null
  %i.nf = and i64 %i.ma, 7
  %i.ng = icmp eq i64 %i.nf, 0
  %i.nh = and i1 %i.ne, %i.ng
  br i1 %i.nh, label %.lr.ph7347.split.split.us.split.us.preheader, label %.lr.ph7347.split.split, !prof !10, !nosanitize !9

.lr.ph7347.split.split.us.split.us.preheader:     ; preds = %.lr.ph7347.split
  %i.ni = zext nneg i32 %i.kd to i64
  %99 = insertelement <4 x float> poison, float %96, i64 0
  %100 = insertelement <4 x float> %99, float %95, i64 1
  %101 = insertelement <4 x float> %100, float %98, i64 2
  %102 = shufflevector <2 x float> %i.ko, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %103 = shufflevector <4 x float> %101, <4 x float> %102, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %104 = insertelement <2 x float> poison, float %i.kz, i64 0
  %105 = insertelement <2 x float> %104, float %i.la, i64 1
  %106 = insertelement <2 x float> poison, float %96, i64 0
  %107 = insertelement <2 x float> %106, float %95, i64 1
  %108 = extractelement <2 x float> %i.ky, i64 0  ; 2 uses
  %109 = extractelement <2 x float> %i.ky, i64 1  ; 2 uses
  %110 = insertelement <4 x float> poison, float %89, i64 2
  br label %.lr.ph7347.split.split.us.split.us

.lr.ph7347.split.split.us.split.us:               ; preds = %.lr.ph7347.split.split.us.split.us.preheader, %bb.ct
  %indvars.iv13665 = phi i64 [ 0, %.lr.ph7347.split.split.us.split.us.preheader ], [ %indvars.iv.next13666, %bb.ct ] ; 3 uses
  %.07737345.us7368.us = phi i32 [ 0, %.lr.ph7347.split.split.us.split.us.preheader ], [ %.4777.ph.us.us, %bb.ct ] ; 16 uses
  %.07787344.us7369.us = phi i32 [ 0, %.lr.ph7347.split.split.us.split.us.preheader ], [ %.4782.ph.us.us, %bb.ct ] ; 15 uses
  %.07847343.us7370.us = phi i32 [ 0, %.lr.ph7347.split.split.us.split.us.preheader ], [ %.4788.ph.us.us, %bb.ct ] ; 13 uses
  %.07917342.us7371.us = phi i32 [ 0, %.lr.ph7347.split.split.us.split.us.preheader ], [ %.2793.ph.us.us, %bb.ct ] ; 9 uses
  %.07947341.us7372.us = phi i32 [ 0, %.lr.ph7347.split.split.us.split.us.preheader ], [ %.2796.ph.us.us, %bb.ct ] ; 5 uses
  %i.nj = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.07917342.us7371.us, i32 3), !nosanitize !9 ; 2 uses
  %i.nk = extractvalue { i32, i1 } %i.nj, 1, !nosanitize !9
  br i1 %i.nk, label %.split7357.us, label %bb.ar, !prof !19, !nosanitize !9

bb.ar:                                            ; preds = %.lr.ph7347.split.split.us.split.us
  %i.nl = extractvalue { i32, i1 } %i.nj, 0, !nosanitize !9
  %i.nm = icmp slt i32 %i.nl, %i.lj
  br i1 %i.nm, label %bb.as, label %._crit_edge7348.loopexit

bb.as:                                            ; preds = %bb.ar
  %i.nn = getelementptr inbounds nuw [20 x i8], ptr %.fr8550, i64 %indvars.iv13665 ; 5 uses
  %i.no = mul nuw nsw i64 %indvars.iv13665, 20
  %i.np = add i64 %i.no, %i.lz, !nosanitize !9    ; 2 uses
  %.not8554 = icmp ult i64 %i.np, %i.lz, !nosanitize !9
  br i1 %.not8554, label %.split7362.us, label %bb.at, !prof !19, !nosanitize !9

bb.at:                                            ; preds = %bb.as
  %i.nq = ptrtoint ptr %i.nn to i64, !nosanitize !9 ; 2 uses
  %i.nr = and i64 %i.nq, 3, !nosanitize !9
  %i.ns = icmp eq i64 %i.nr, 0, !nosanitize !9
  br i1 %i.ns, label %bb.au, label %.split7366, !prof !10, !nosanitize !9

bb.au:                                            ; preds = %bb.at
  %i.nt = load i32, ptr %i.nn, align 4, !tbaa !123 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #9
  %i.nu = load i32, ptr %i.mb, align 8, !tbaa !120
  %i.nv = icmp eq i32 %i.nu, 4
  br i1 %i.nv, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.nw = load ptr, ptr %i.mc, align 8, !tbaa !121
  call void @b3GetHeightFieldTriangle(ptr dead_on_unwind nonnull writable sret(%struct.b3Triangle) align 4 %21, ptr noundef %i.nw, i32 noundef %i.nt) #9
  br label %bb.ax

bb.aw:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #9
  call void @b3GetMeshTriangle(ptr dead_on_unwind nonnull writable sret(%struct.b3Triangle) align 4 %22, ptr noundef nonnull %i.mc, i32 noundef %i.nt) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %21, ptr noundef nonnull align 4 dereferenceable(52) %22, i64 52, i1 false), !tbaa.struct !135
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #9
  br label %bb.ax

bb.ax:                                            ; preds = %bb.av, %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #9
  %.sroa.0581.0.copyload.us.us = load <2 x float>, ptr %21, align 8 ; 4 uses
  %.sroa.2582.0.copyload.us.us = load float, ptr %.sroa.2582.0..sroa_idx, align 8 ; 3 uses
  %.sroa.0.0.vec.extract.i.us.us = extractelement <2 x float> %.sroa.0581.0.copyload.us.us, i64 0
  %.sroa.0.4.vec.extract.i.us.us = extractelement <2 x float> %.sroa.0581.0.copyload.us.us, i64 1
  %111 = fmul float %64, %.sroa.0.0.vec.extract.i.us.us
  %i.nx = fmul float %66, %.sroa.0.4.vec.extract.i.us.us
  %112 = fadd float %111, %i.nx
  %.sroa.0563.0.copyload.us.us = load <2 x float>, ptr %i.me, align 4 ; 4 uses
  %.sroa.2564.0.copyload.us.us = load float, ptr %.sroa.2564.0..sroa_idx, align 4 ; 3 uses
  %.sroa.0.0.vec.extract.i1027.us.us = extractelement <2 x float> %.sroa.0563.0.copyload.us.us, i64 0 ; 2 uses
  %.sroa.0.4.vec.extract.i1028.us.us = extractelement <2 x float> %.sroa.0563.0.copyload.us.us, i64 1 ; 2 uses
  %113 = fmul <2 x float> %i.ko, %.sroa.0581.0.copyload.us.us
  %i.ny = fmul float %i.kz, %.sroa.2582.0.copyload.us.us
  %114 = fmul float %i.la, %.sroa.2582.0.copyload.us.us
  %i.nz = fmul float %95, %.sroa.0.0.vec.extract.i1027.us.us
  %115 = shufflevector <2 x float> %.sroa.0581.0.copyload.us.us, <2 x float> %.sroa.0563.0.copyload.us.us, <4 x i32> <i32 1, i32 0, i32 poison, i32 3>
  %116 = insertelement <4 x float> %115, float %.sroa.2582.0.copyload.us.us, i64 2
  %117 = fmul <4 x float> %103, %116
  %118 = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %112, i64 2
  %119 = shufflevector <2 x float> %113, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %120 = shufflevector <4 x float> %119, <4 x float> %118, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %121 = fadd <4 x float> %117, %120
  %122 = insertelement <4 x float> %110, float %i.ny, i64 0
  %123 = insertelement <4 x float> %122, float %114, i64 1
  %124 = insertelement <4 x float> %123, float %i.nz, i64 3
  %125 = fadd <4 x float> %124, %121              ; 4 uses
  %126 = shufflevector <4 x float> %125, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %127 = extractelement <4 x float> %125, i64 0
  %i.oa = fadd float %108, %127
  %.sroa.05.4.vec.insert.i.us.us = insertelement <2 x float> %126, float %i.oa, i64 1
  %128 = extractelement <4 x float> %125, i64 1
  %129 = fadd float %109, %128
  store <2 x float> %.sroa.05.4.vec.insert.i.us.us, ptr %23, align 16, !tbaa !114
  store float %129, ptr %.sroa.4586.0..sroa_idx, align 8, !tbaa !114
  %130 = fmul float %64, %.sroa.0.0.vec.extract.i1027.us.us
  %i.ob = fmul float %66, %.sroa.0.4.vec.extract.i1028.us.us
  %131 = fadd float %130, %i.ob
  %i.oc = fmul float %98, %.sroa.2564.0.copyload.us.us
  %i.od = fadd float %i.oc, %131
  %foldExtExtBinop20736 = fmul <2 x float> %i.ko, %.sroa.0563.0.copyload.us.us
  %132 = extractelement <2 x float> %foldExtExtBinop20736, i64 0
  %i.oe = fmul float %96, %.sroa.0.4.vec.extract.i1028.us.us
  %i.of = fadd float %132, %i.oe
  %133 = fmul float %i.kz, %.sroa.2564.0.copyload.us.us
  %134 = fadd float %133, %i.of
  %135 = fmul float %i.la, %.sroa.2564.0.copyload.us.us
  %136 = extractelement <4 x float> %125, i64 3
  %137 = fadd float %135, %136
  %138 = fadd float %89, %i.od
  %.sroa.05.0.vec.insert.i1037.us.us = insertelement <2 x float> poison, float %138, i64 0
  %139 = fadd float %108, %134
  %.sroa.05.4.vec.insert.i1038.us.us = insertelement <2 x float> %.sroa.05.0.vec.insert.i1037.us.us, float %139, i64 1
  %i.og = fadd float %109, %137
  store <2 x float> %.sroa.05.4.vec.insert.i1038.us.us, ptr %i.md, align 4, !tbaa !114
  store float %i.og, ptr %.sroa.4568.0..sroa_idx, align 4, !tbaa !114
  %.sroa.0545.0.copyload.us.us = load <2 x float>, ptr %i.mg, align 8 ; 4 uses
  %.sroa.2546.0.copyload.us.us = load float, ptr %.sroa.2546.0..sroa_idx, align 8 ; 2 uses
  %i.oh = shufflevector <2 x float> %.sroa.0545.0.copyload.us.us, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %.sroa.0.0.vec.extract.i1041.us.us = extractelement <2 x float> %.sroa.0545.0.copyload.us.us, i64 0
  %i.oi = fmul float %64, %.sroa.0.0.vec.extract.i1041.us.us
  %i.oj = extractelement <2 x float> %.sroa.0545.0.copyload.us.us, i64 1
  %i.ok = fmul float %66, %i.oj
  %i.ol = fadd float %i.oi, %i.ok
  %i.om = fmul float %98, %.sroa.2546.0.copyload.us.us
  %140 = fadd float %i.om, %i.ol
  %i.on = fadd float %89, %140
  %.sroa.05.0.vec.insert.i1051.us.us = insertelement <2 x float> poison, float %i.on, i64 0
  %i.oo = fmul <2 x float> %i.ko, %.sroa.0545.0.copyload.us.us
  %i.op = fmul <2 x float> %107, %i.oh
  %i.oq = fadd <2 x float> %i.op, %i.oo
  %i.or = insertelement <2 x float> poison, float %.sroa.2546.0.copyload.us.us, i64 0
  %i.os = shufflevector <2 x float> %i.or, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ot = fmul <2 x float> %105, %i.os
  %i.ou = fadd <2 x float> %i.ot, %i.oq
  %i.ov = fadd <2 x float> %i.ky, %i.ou           ; 2 uses
  %141 = shufflevector <2 x float> %.sroa.05.0.vec.insert.i1051.us.us, <2 x float> %i.ov, <2 x i32> <i32 0, i32 2>
  store <2 x float> %141, ptr %i.mf, align 8, !tbaa !114
  %142 = extractelement <2 x float> %i.ov, i64 1
  store float %142, ptr %.sroa.4550.0..sroa_idx, align 16, !tbaa !114
  %i.ow = getelementptr inbounds nuw i8, ptr %i.nn, i64 4 ; 3 uses
  %i.ox = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i.lj, i32 %.07917342.us7371.us), !nosanitize !9 ; 2 uses
  %i.oy = extractvalue { i32, i1 } %i.ox, 0, !nosanitize !9 ; 3 uses
  %i.oz = extractvalue { i32, i1 } %i.ox, 1, !nosanitize !9
  br i1 %i.oz, label %.split7404.us, label %bb.ay, !prof !19, !nosanitize !9

bb.ay:                                            ; preds = %bb.ax
  %i.pa = sext i32 %.07947341.us7372.us to i64    ; 2 uses
  %i.pb = getelementptr inbounds [64 x i8], ptr %i.lq, i64 %i.pa ; 22 uses
  %i.pc = shl nsw i64 %i.pa, 6
  %i.pd = add i64 %i.pc, %i.mh, !nosanitize !9    ; 3 uses
  %i.pe = icmp eq i64 %i.pd, 0
  %i.pf = xor i1 %i.mi, %i.pe
  %i.pg = icmp uge i64 %i.pd, %i.mh, !nosanitize !9
  %i.ph = icmp slt i32 %.07947341.us7372.us, 0
  %i.pi = xor i1 %i.ph, %i.pg
  %i.pj = and i1 %i.pf, %i.pi, !nosanitize !9
  br i1 %i.pj, label %bb.az, label %.split7407.us, !prof !10, !nosanitize !9

bb.az:                                            ; preds = %bb.ay
  %i.pk = sext i32 %.07917342.us7371.us to i64    ; 2 uses
  %i.pl = getelementptr inbounds [24 x i8], ptr %i.lo, i64 %i.pk
  %i.pm = mul nsw i64 %i.pk, 24
  %i.pn = add i64 %i.pm, %i.mj, !nosanitize !9    ; 3 uses
  %i.po = icmp eq i64 %i.pn, 0
  %i.pp = xor i1 %i.mk, %i.po
  %i.pq = icmp uge i64 %i.pn, %i.mj, !nosanitize !9
  %i.pr = icmp slt i32 %.07917342.us7371.us, 0
  %i.ps = xor i1 %i.pr, %i.pq
  %i.pt = and i1 %i.pp, %i.ps, !nosanitize !9
  br i1 %i.pt, label %bb.ba, label %.split7411.us, !prof !10, !nosanitize !9

bb.ba:                                            ; preds = %bb.az
  %i.pu = ptrtoint ptr %i.pb to i64, !nosanitize !9 ; 2 uses
  %i.pv = and i64 %i.pu, 7, !nosanitize !9
  %i.pw = icmp eq i64 %i.pv, 0, !nosanitize !9
  %i.px = and i1 %i.mi, %i.pw
  br i1 %i.px, label %bb.bb, label %.split7415.us, !prof !10, !nosanitize !9

bb.bb:                                            ; preds = %bb.ba
  %i.py = getelementptr inbounds nuw i8, ptr %i.pb, i64 24 ; 2 uses
  store ptr %i.pl, ptr %i.py, align 8, !tbaa !138
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pb, i64 32 ; 2 uses
  store i32 0, ptr %i.pz, align 8, !tbaa !139
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pb, i64 60
  %i.qb = load i32, ptr %i.ml, align 8, !tbaa !141
  store i32 %i.qb, ptr %i.qa, align 4, !tbaa !142
  %i.qc = getelementptr inbounds nuw i8, ptr %i.pb, i64 56 ; 2 uses
  store i32 0, ptr %i.qc, align 8, !tbaa !143
  %i.qd = load i32, ptr %i.ls, align 8, !tbaa !120
  switch i32 %i.qd, label %.critedge [
    i32 0, label %bb.bj
    i32 3, label %bb.bd
    i32 5, label %bb.bc
  ]

bb.bc:                                            ; preds = %bb.bb
  call void @b3CollideTriangleAndSphere(ptr noundef nonnull %i.pb, i32 noundef %i.oy, ptr noundef nonnull %23, ptr noundef nonnull %i.mm) #9
  br label %bb.bk

bb.bd:                                            ; preds = %bb.bb
  br i1 %8, label %bb.be, label %.thread

bb.be:                                            ; preds = %bb.bd
  %i.qe = getelementptr inbounds nuw i8, ptr %i.nn, i64 8 ; 2 uses
  %i.qf = load i8, ptr %i.qe, align 4, !tbaa !121
  %i.qg = icmp eq i8 %i.qf, 4
  br i1 %i.qg, label %bb.bf, label %.thread

bb.bf:                                            ; preds = %bb.be
  store i32 0, ptr %i.ow, align 4
  store i32 0, ptr %i.qe, align 4
  br label %.thread

.thread:                                          ; preds = %bb.bd, %bb.be, %bb.bf
  %i.qh = load i32, ptr %i.ml, align 8, !tbaa !141
  %.sroa.0497.0.copyload.us.us = load <2 x float>, ptr %23, align 16
  %.sroa.2498.0.copyload.us.us = load float, ptr %.sroa.4586.0..sroa_idx, align 8
  %.sroa.0495.0.copyload.us.us = load <2 x float>, ptr %i.md, align 4
  %.sroa.2496.0.copyload.us.us = load float, ptr %.sroa.4568.0..sroa_idx, align 4
  %.sroa.0493.0.copyload.us.us = load <2 x float>, ptr %i.mf, align 8
  %.sroa.2494.0.copyload.us.us = load float, ptr %.sroa.4550.0..sroa_idx, align 16
  call void @b3CollideTriangleAndHull(ptr noundef nonnull %i.pb, i32 noundef %i.oy, <2 x float> %.sroa.0497.0.copyload.us.us, float %.sroa.2498.0.copyload.us.us, <2 x float> %.sroa.0495.0.copyload.us.us, float %.sroa.2496.0.copyload.us.us, <2 x float> %.sroa.0493.0.copyload.us.us, float %.sroa.2494.0.copyload.us.us, i32 noundef %i.qh, ptr noundef %i.lx, ptr noundef nonnull %i.ow, i1 noundef zeroext %i.li) #9
  br i1 %i.mq, label %bb.bg, label %.split7442.us, !prof !10, !nosanitize !9

bb.bg:                                            ; preds = %.thread
  %i.qi = load i32, ptr %i.mr, align 8, !tbaa !147 ; 2 uses
  %i.qj = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.qi, i32 1), !nosanitize !9 ; 2 uses
  %i.qk = extractvalue { i32, i1 } %i.qj, 1, !nosanitize !9
  br i1 %i.qk, label %.split7448.us, label %bb.bh, !prof !19, !nosanitize !9

bb.bh:                                            ; preds = %bb.bg
  %i.ql = extractvalue { i32, i1 } %i.qj, 0, !nosanitize !9
  store i32 %i.ql, ptr %i.mr, align 8, !tbaa !147
  %i.qm = getelementptr inbounds nuw i8, ptr %i.nn, i64 11
  %i.qn = load i8, ptr %i.qm, align 1, !tbaa !121 ; 2 uses
  %i.qo = zext i8 %i.qn to i32
  %i.qp = load i32, ptr %i.ms, align 4, !tbaa !148 ; 2 uses
  %i.qq = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.qp, i32 %i.qo), !nosanitize !9 ; 2 uses
  %i.qr = extractvalue { i32, i1 } %i.qq, 1, !nosanitize !9
  br i1 %i.qr, label %.split7457.us, label %bb.bi, !prof !19, !nosanitize !9

bb.bi:                                            ; preds = %bb.bh
  %i.qs = extractvalue { i32, i1 } %i.qq, 0, !nosanitize !9
  store i32 %i.qs, ptr %i.ms, align 4, !tbaa !148
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bb
  call void @b3CollideTriangleAndCapsule(ptr noundef nonnull %i.pb, i32 noundef %i.oy, ptr noundef nonnull %23, ptr noundef nonnull %i.mm, ptr noundef nonnull %i.ow) #9
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi, %bb.bc
  %i.qt = load i32, ptr %i.pz, align 8, !tbaa !139
  %.fr22884 = freeze i32 %i.qt                    ; 6 uses
  %i.qu = icmp sgt i32 %.fr22884, 0
  br i1 %i.qu, label %bb.bl, label %bb.ct

bb.bl:                                            ; preds = %bb.bk
  %i.qv = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.07947341.us7372.us, i32 1), !nosanitize !9 ; 2 uses
  %i.qw = extractvalue { i32, i1 } %i.qv, 0, !nosanitize !9 ; 5 uses
  %i.qx = extractvalue { i32, i1 } %i.qv, 1, !nosanitize !9
  br i1 %i.qx, label %.split7467.us, label %bb.bm, !prof !19, !nosanitize !9

bb.bm:                                            ; preds = %bb.bl
  %i.qy = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.07917342.us7371.us, i32 %.fr22884), !nosanitize !9 ; 2 uses
  %i.qz = extractvalue { i32, i1 } %i.qy, 0, !nosanitize !9 ; 5 uses
  %i.ra = extractvalue { i32, i1 } %i.qy, 1, !nosanitize !9
  br i1 %i.ra, label %.split7470.us, label %bb.bn, !prof !19, !nosanitize !9

bb.bn:                                            ; preds = %bb.bm
  %i.rb = getelementptr inbounds nuw i8, ptr %i.pb, i64 36
  store i32 %i.nt, ptr %i.rb, align 4, !tbaa !149
  %i.rc = getelementptr inbounds nuw i8, ptr %i.pb, i64 12
  %.sroa.0486.0.copyload.us.us = load <2 x float>, ptr %23, align 16 ; 2 uses
  %i.rd = load <4 x float>, ptr %.sroa.4586.0..sroa_idx, align 8
  %.sroa.0484.0.copyload.us.us = load <2 x float>, ptr %i.md, align 4 ; 2 uses
  %.sroa.0482.0.copyload.us.us = load <2 x float>, ptr %i.mf, align 8 ; 2 uses
  %i.re = load <4 x float>, ptr %.sroa.4568.0..sroa_idx, align 4
  %i.rf = shufflevector <4 x float> %i.re, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.rg = shufflevector <2 x float> %.sroa.0482.0.copyload.us.us, <2 x float> %.sroa.0484.0.copyload.us.us, <2 x i32> <i32 0, i32 3>
  %i.rh = fsub <2 x float> %i.rg, %.sroa.0486.0.copyload.us.us ; 3 uses
  %i.ri = shufflevector <2 x float> %.sroa.0484.0.copyload.us.us, <2 x float> %.sroa.0482.0.copyload.us.us, <2 x i32> <i32 0, i32 3>
  %i.rj = fsub <2 x float> %i.ri, %.sroa.0486.0.copyload.us.us ; 3 uses
  %i.rk = shufflevector <4 x float> %i.rd, <4 x float> poison, <2 x i32> zeroinitializer
  %i.rl = fsub <2 x float> %i.rf, %i.rk           ; 2 uses
  %i.rm = fmul <2 x float> %i.rl, %i.rh
  %i.rn = shufflevector <2 x float> %i.rl, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ro = fmul <2 x float> %i.rj, %i.rn
  %i.rp = fsub <2 x float> %i.rm, %i.ro           ; 3 uses
  %shift20738.a = shufflevector <2 x float> %i.rj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop20739 = fmul <2 x float> %i.rj, %shift20738.a
  %shift20741.a = shufflevector <2 x float> %i.rh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop20742 = fmul <2 x float> %shift20741.a, %i.rh
  %foldExtExtBinop20744 = fsub <2 x float> %foldExtExtBinop20739, %foldExtExtBinop20742 ; 3 uses
  %i.rq = fmul <2 x float> %i.rp, %i.rp           ; 2 uses
  %shift20746 = shufflevector <2 x float> %i.rq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop20747 = fadd <2 x float> %shift20746, %i.rq
  %foldExtExtBinop20749 = fmul <2 x float> %foldExtExtBinop20744, %foldExtExtBinop20744
  %foldExtExtBinop20751.a = fadd <2 x float> %foldExtExtBinop20749, %foldExtExtBinop20747
  %i.rr = extractelement <2 x float> %foldExtExtBinop20751.a, i64 0 ; 2 uses
  %i.rs = fcmp ogt float %i.rr, f0x057A0000
  br i1 %i.rs, label %bb.bo, label %b3MakeNormalFromPoints.exit.us.us

bb.bo:                                            ; preds = %bb.bn
  %i.rt = extractelement <2 x float> %foldExtExtBinop20744, i64 0
  %sqrt.i.us.us = call float @llvm.sqrt.f32(float %i.rr)
  %i.ru = fdiv float 1.000000e+00, %sqrt.i.us.us  ; 2 uses
  %i.rv = insertelement <2 x float> poison, float %i.ru, i64 0
  %i.rw = shufflevector <2 x float> %i.rp, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.rx = shufflevector <2 x float> %i.rv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ry = fmul <2 x float> %i.rw, %i.rx
  %i.rz = fmul float %i.rt, %i.ru
  br label %b3MakeNormalFromPoints.exit.us.us

b3MakeNormalFromPoints.exit.us.us:                ; preds = %bb.bo, %bb.bn
  %.sroa.07.0.i.i.us.us = phi <2 x float> [ %i.ry, %bb.bo ], [ zeroinitializer, %bb.bn ] ; 2 uses
  %.sroa.5.0.i.i.us.us = phi float [ %i.rz, %bb.bo ], [ 0.000000e+00, %bb.bn ] ; 2 uses
  store <2 x float> %.sroa.07.0.i.i.us.us, ptr %i.rc, align 4, !tbaa !114
  %.sroa.4489.0..sroa_idx.us.us = getelementptr inbounds nuw i8, ptr %i.pb, i64 20
  store float %.sroa.5.0.i.i.us.us, ptr %.sroa.4489.0..sroa_idx.us.us, align 4, !tbaa !114
  %i.sa = load i32, ptr %i.mt, align 4, !tbaa !150 ; 4 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %i.pb, i64 40
  store i32 %i.sa, ptr %i.sb, align 8, !tbaa !151
  %i.sc = getelementptr inbounds nuw i8, ptr %i.pb, i64 44
  %i.sd = load <2 x i32>, ptr %i.mu, align 8, !tbaa !20
  %i.se = load i32, ptr %i.mu, align 8, !tbaa !152 ; 3 uses
  store <2 x i32> %i.sd, ptr %i.sc, align 4, !tbaa !20
  %i.sf = load i32, ptr %i.qc, align 8, !tbaa !143
  switch i32 %i.sf, label %bb.cm [
    i32 1, label %bb.ci
    i32 2, label %bb.bp
  ]

bb.bp:                                            ; preds = %b3MakeNormalFromPoints.exit.us.us
  %.sroa.0473.0.copyload.us.us = load <2 x float>, ptr %i.pb, align 8
  %.sroa.2474.0..sroa_idx.us.us = getelementptr inbounds nuw i8, ptr %i.pb, i64 8
  %.sroa.2474.0.copyload.us.us = load float, ptr %.sroa.2474.0..sroa_idx.us.us, align 8
  %i.sg = fmul <2 x float> %.sroa.07.0.i.i.us.us, %.sroa.0473.0.copyload.us.us ; 2 uses
  %shift20753 = shufflevector <2 x float> %i.sg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop20754 = fadd <2 x float> %i.sg, %shift20753
end_hunk_1
