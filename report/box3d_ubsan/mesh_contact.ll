Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/mesh_contact?download=true
inline.NumInlined: 110
inline.NumDeleted: 45
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0
@190 = private unnamed_addr constant { i16, i16, [56 x i8] } { i16 -1, i16 0, [56 x i8] c"'b3ContactCache[256]' (aka 'union b3ContactCache[256]')\00" }
@191 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 141, i32 3 }, ptr @190, ptr @6 }
@192 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 141, i32 3 } }
@193 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 144, i32 5 } }
@194 = private unnamed_addr constant { i16, i16, [25 x i8] } { i16 -1, i16 0, [25 x i8] c"'struct b3TriangleCache'\00" }
@195 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 144, i32 5 }, ptr @194, i8 2, i8 3 }
@196 = private unnamed_addr constant { i16, i16, [11 x i8] } { i16 -1, i16 0, [11 x i8] c"'int[256]'\00" }
@197 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 144, i32 69 } }
@198 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 160, i32 3 } }
@199 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 160, i32 3 }, ptr @194, i8 2, i8 1 }
@200 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 160, i32 67 }, ptr @196, ptr @6 }
@201 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 160, i32 67 } }
@202 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 160, i32 87 } }
@203 = private unnamed_addr constant { i16, i16, [63 x i8] } { i16 -1, i16 0, [63 x i8] c"'b3TriangleQueryContext' (aka 'struct b3TriangleQueryContext')\00" }
@204 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 42, i32 24 }, ptr @203, i8 3, i8 3 }
@205 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 46, i32 2 } }
@206 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 46, i32 2 }, ptr @6, i8 2, i8 1 }
@207 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 47, i32 25 }, ptr @6 }
@.src.3 = private unnamed_addr constant [56 x i8] c"/opt-bench/work/box3d_ubsan/box3d/src/arena_allocator.h\00", align 1
@208 = private unnamed_addr constant { i16, i16, [33 x i8] } { i16 -1, i16 0, [33 x i8] c"'b3Arena' (aka 'struct b3Arena')\00" }
@209 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.3, i32 101, i32 25 }, ptr @208, i8 3, i8 3 }
@210 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src.3, i32 101, i32 31 }, ptr @6 }
@211 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src.3, i32 103, i32 15 }, ptr @6 }
@212 = private unnamed_addr constant { i16, i16, [55 x i8] } { i16 -1, i16 0, [55 x i8] c"'b3ArenaSharedState' (aka 'struct b3ArenaSharedState')\00" }
@213 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.3, i32 109, i32 37 }, ptr @212, i8 3, i8 3 }
@214 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src.3, i32 113, i32 23 } }
@215 = private unnamed_addr constant { i16, i16, [43 x i8] } { i16 -1, i16 0, [43 x i8] c"'b3FoundEdges' (aka 'struct b3FoundEdges')\00" }
@216 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 190, i32 21 }, ptr @215, i8 3, i8 3 }
@217 = private unnamed_addr constant { i16, i16, [41 x i8] } { i16 -1, i16 0, [41 x i8] c"'uint64_t[64]' (aka 'unsigned long[64]')\00" }
@218 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 193, i32 8 }, ptr @217, ptr @6 }
@219 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 193, i32 8 } }
@220 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 205, i32 2 }, ptr @217, ptr @6 }
@221 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 205, i32 2 } }
@222 = private unnamed_addr constant { i16, i16, [49 x i8] } { i16 -1, i16 0, [49 x i8] c"'b3FoundVertices' (aka 'struct b3FoundVertices')\00" }
@223 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 253, i32 24 }, ptr @222, i8 2, i8 3 }
@224 = private unnamed_addr constant { i16, i16, [10 x i8] } { i16 -1, i16 0, [10 x i8] c"'int[64]'\00" }
@225 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 256, i32 8 }, ptr @224, ptr @6 }
@226 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 256, i32 8 } }
@227 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 268, i32 2 }, ptr @224, ptr @6 }
@228 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 268, i32 2 } }
@229 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 269, i32 18 }, ptr @6 }
@230 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 220, i32 8 }, ptr @217, ptr @6 }
@231 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 220, i32 8 } }
@.src.4 = private unnamed_addr constant [54 x i8] c"/opt-bench/work/box3d_ubsan/box3d/src/physics_world.h\00", align 1
@232 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src.4, i32 344, i32 20 }, ptr @6 }
@233 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src.4, i32 346, i32 32 } }
@234 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 489, i32 18 }, ptr @32, i8 2, i8 3 }
@235 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 493, i32 21 } }
@236 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 494, i32 3 } }
@237 = private unnamed_addr constant { i16, i16, [37 x i8] } { i16 -1, i16 0, [37 x i8] c"'b3Point2D' (aka 'struct b3Point2D')\00" }
@238 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 494, i32 3 }, ptr @237, i8 2, i8 3 }
@239 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 505, i32 15 } }
@240 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 505, i32 15 }, ptr @237, i8 2, i8 3 }
@241 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 507, i32 3 } }
@242 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 507, i32 20 } }
@243 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 320, i32 15 } }
@244 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 320, i32 15 }, ptr @237, i8 2, i8 3 }
@245 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 323, i32 42 } }
@246 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 323, i32 42 }, ptr @237, i8 2, i8 3 }
@247 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 343, i32 9 } }
@248 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 343, i32 9 }, ptr @237, i8 2, i8 3 }
@249 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 343, i32 32 } }
@250 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 343, i32 32 }, ptr @237, i8 2, i8 3 }
@251 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 351, i32 4 }, ptr @237, i8 2, i8 1 }
@252 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 351, i32 16 } }
@253 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 356, i32 19 } }
@254 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 356, i32 19 }, ptr @237, i8 2, i8 0 }
@255 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 357, i32 2 } }
@256 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 357, i32 19 } }
@257 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 357, i32 19 }, ptr @237, i8 2, i8 0 }
@258 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 360, i32 23 } }
@259 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 360, i32 23 }, ptr @237, i8 2, i8 0 }
@260 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 361, i32 23 } }
@261 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 361, i32 23 }, ptr @237, i8 2, i8 0 }
@262 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 366, i32 3 }, ptr @237, i8 2, i8 1 }
@263 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 367, i32 3 } }
@264 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 367, i32 15 } }
@265 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 375, i32 13 } }
@266 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 387, i32 14 } }
@267 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 387, i32 14 }, ptr @237, i8 2, i8 3 }
@268 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 403, i32 3 }, ptr @237, i8 2, i8 1 }
@269 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 404, i32 3 } }
@270 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 409, i32 2 } }
@271 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 409, i32 19 } }
@272 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 409, i32 19 }, ptr @237, i8 2, i8 0 }
@273 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 413, i32 3 }, ptr @237, i8 2, i8 1 }
@274 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 414, i32 3 } }
@275 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 415, i32 3 } }
@276 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 415, i32 15 } }
@277 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 420, i32 22 } }
@278 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 420, i32 22 }, ptr @237, i8 2, i8 0 }
@279 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 426, i32 13 } }
@280 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 443, i32 14 } }
@281 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 443, i32 14 }, ptr @237, i8 2, i8 3 }
@282 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 461, i32 3 }, ptr @237, i8 2, i8 1 }
@283 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 462, i32 3 } }
@284 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 463, i32 3 } }
@285 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 468, i32 2 } }
@286 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 468, i32 19 } }
@287 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 468, i32 19 }, ptr @237, i8 2, i8 0 }
@288 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 471, i32 2 }, ptr @237, i8 2, i8 1 }
@289 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 472, i32 2 } }
@290 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 473, i32 2 } }
@291 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 474, i32 2 } }
@292 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 474, i32 14 } }
@293 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src.4, i32 319, i32 20 }, ptr @6 }
@294 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src.4, i32 327, i32 3 }, ptr @6 }
@295 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src.4, i32 327, i32 3 }, ptr @6 }
@296 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src.4, i32 327, i32 3 } }
@297 = private unnamed_addr constant { i16, i16, [26 x i8] } { i16 -1, i16 0, [26 x i8] c"'struct b3BlockAllocator'\00" }
@298 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.4, i32 327, i32 3 }, ptr @297, i8 3, i8 1 }
@299 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src.4, i32 330, i32 32 } }
@300 = private unnamed_addr global { { ptr, i32, i32 }, { ptr, i32, i32 }, i32 } { { ptr, i32, i32 } { ptr @.src.4, i32 333, i32 10 }, { ptr, i32, i32 } { ptr @.src.1, i32 61, i32 62 }, i32 1 }
@.src.7 = private unnamed_addr constant [46 x i8] c"/opt-bench/work/box3d_ubsan/box3d/src/shape.h\00", align 1
@301 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.7, i32 74, i32 16 }, ptr @3, i8 3, i8 3 }
@.src.8 = private unnamed_addr constant [67 x i8] c"/opt-bench/work/box3d_ubsan/box3d/src/../include/box3d/collision.h\00", align 1
@302 = private unnamed_addr constant { i16, i16, [51 x i8] } { i16 -1, i16 0, [51 x i8] c"'const b3MeshData' (aka 'const struct b3MeshData')\00" }
@303 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.8, i32 311, i32 13 }, ptr @302, i8 3, i8 3 }
@304 = private unnamed_addr constant { i16, i16, [24 x i8] } { i16 0, i16 13, [24 x i8] c"'intptr_t' (aka 'long')\00" }
@305 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src.8, i32 316, i32 42 }, ptr @304 }
@306 = private unnamed_addr constant { i16, i16, [65 x i8] } { i16 -1, i16 0, [65 x i8] c"'const b3HeightFieldData' (aka 'const struct b3HeightFieldData')\00" }
@307 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.8, i32 384, i32 11 }, ptr @306, i8 3, i8 3 }
@308 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src.8, i32 389, i32 40 }, ptr @304 }

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
  %.sroa.41294.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 4
  %.sroa.51295.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aa = load <2 x float>, ptr %5, align 8       ; 6 uses
  %i.ab = load <2 x float>, ptr %.sroa.41294.0..sroa_idx, align 4 ; 5 uses
  %.sroa.61296.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %.sroa.61296.0.copyload = load <2 x float>, ptr %.sroa.61296.0..sroa_idx, align 4 ; 20 uses
  %.sroa.71297.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 2 uses
  %.sroa.71297.0.copyload = load <2 x float>, ptr %.sroa.71297.0..sroa_idx, align 4 ; 12 uses
  %i.ac = icmp ne ptr %2, null, !nosanitize !9
  %i.ad = ptrtoint ptr %2 to i64, !nosanitize !9  ; 2 uses
  %i.ae = and i64 %i.ad, 7, !nosanitize !9
  %i.af = icmp eq i64 %i.ae, 0, !nosanitize !9
  %i.ag = and i1 %i.ac, %i.af, !nosanitize !9
  br i1 %i.ag, label %bb.i, label %bb.h, !prof !10, !nosanitize !9

bb.h:                                             ; preds = %bb.g
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @187, i64 %i.ad) #8, !nosanitize !9
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
  %.fr20496 = freeze i1 %i.aq
  %op.rdx = and i1 %i.au, %.fr20496
  %op.rdx20388 = select i1 %op.rdx, i1 %i.ar, i1 false
  br i1 %op.rdx20388, label %bb.j, label %b3AABB_Contains.exit.thread.i

bb.j:                                             ; preds = %bb.i
  %i.av = icmp ne ptr %3, null, !nosanitize !9
  %i.aw = ptrtoint ptr %3 to i64, !nosanitize !9  ; 2 uses
  %i.ax = and i64 %i.aw, 7, !nosanitize !9
  %i.ay = icmp eq i64 %i.ax, 0, !nosanitize !9
  %i.az = and i1 %i.av, %i.ay, !nosanitize !9
  br i1 %i.az, label %._crit_edge13531, label %bb.k, !prof !10, !nosanitize !9

bb.k:                                             ; preds = %bb.j
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @188, i64 %i.aw) #8, !nosanitize !9
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
  store <2 x float> %i.bi, ptr %i.ai, align 8
  store float %i.bj, ptr %.sroa.5213.0..sroa_idx.i, align 8, !tbaa !114
  %.sroa.034.0.copyload.i = load <2 x float>, ptr %.sroa.6183.0..sroa_idx.i, align 4
  %.sroa.235.0.copyload.i = load float, ptr %.sroa.8.0..sroa_idx.i, align 4
  %i.bk = fadd <2 x float> %i.bh, %.sroa.034.0.copyload.i ; 3 uses
  %i.bl = fadd float %i.bf, %.sroa.235.0.copyload.i ; 3 uses
  store <2 x float> %i.bk, ptr %.sroa.6214.0..sroa_idx.i, align 4
  store float %i.bl, ptr %.sroa.8216.0..sroa_idx.i, align 4, !tbaa !114
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %.sroa.2.8.vec.extract65.i.i.i = extractelement <2 x float> %.sroa.71297.0.copyload, i64 0
  %.sroa.09.0.vec.extract.i.i.i.i = extractelement <2 x float> %.sroa.61296.0.copyload, i64 0
  %i.bm = fneg float %.sroa.2.8.vec.extract65.i.i.i
  %i.bn = extractelement <2 x float> %i.ab, i64 1 ; 2 uses
  %i.bo = fmul float %i.bn, %.sroa.09.0.vec.extract.i.i.i.i
  %foldExtExtBinop = fmul <2 x float> %i.aa, %.sroa.71297.0.copyload
  %i.bp = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.bq = shufflevector <2 x float> %.sroa.61296.0.copyload, <2 x float> %.sroa.71297.0.copyload, <2 x i32> <i32 1, i32 2> ; 4 uses
  %i.br = fmul <2 x float> %i.aa, %i.bq
  %i.bs = fmul <2 x float> %i.ab, %.sroa.61296.0.copyload
  %i.bt = fsub <2 x float> %i.br, %i.bs           ; 2 uses
  %i.bu = fsub float %i.bo, %i.bp
  %i.bv = shufflevector <2 x float> %i.ab, <2 x float> %i.aa, <2 x i32> <i32 1, i32 2>
  %i.bw = shufflevector <2 x float> %.sroa.71297.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 5 uses
  %i.bx = fmul <2 x float> %i.bv, %i.bw
  %i.by = fmul <2 x float> %i.ab, %i.bw
  %i.bz = fadd <2 x float> %i.bt, %i.bx           ; 2 uses
  %i.ca = shufflevector <2 x float> %i.bt, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cb = insertelement <2 x float> %i.ca, float %i.bu, i64 0
  %i.cc = fadd <2 x float> %i.by, %i.cb           ; 2 uses
  %i.cd = fmul <2 x float> %i.bq, %i.bz
  %i.ce = shufflevector <2 x float> %.sroa.71297.0.copyload, <2 x float> %.sroa.61296.0.copyload, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.cf = fmul <2 x float> %i.ce, %i.cc
  %i.cg = fsub <2 x float> %i.cd, %i.cf
  %foldExtExtBinop20390 = fmul <2 x float> %.sroa.61296.0.copyload, %i.cc
  %foldExtExtBinop20392 = fmul <2 x float> %.sroa.61296.0.copyload, %i.bz
  %shift = shufflevector <2 x float> %foldExtExtBinop20392, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop20394 = fsub <2 x float> %foldExtExtBinop20390, %shift
  %i.ch = extractelement <2 x float> %foldExtExtBinop20394, i64 0
  %i.ci = fmul <2 x float> %i.cg, splat (float 2.000000e+00)
  %i.cj = fsub <2 x float> %i.ci, %i.aa
  %i.ck = fmul float %i.ch, 2.000000e+00
  %i.cl = fsub float %i.ck, %i.bn
  %i.cm = fneg <2 x float> %.sroa.61296.0.copyload
  %i.cn = shufflevector <2 x float> %i.cm, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.co = fadd <2 x float> %i.bi, %i.bk
  %i.cp = fadd float %i.bj, %i.bl
  %i.cq = fmul <2 x float> %i.co, splat (float 5.000000e-01) ; 5 uses
  %i.cr = fmul float %i.cp, 5.000000e-01          ; 4 uses
  %i.cs = shufflevector <2 x float> %i.cq, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ct = insertelement <2 x float> %i.cs, float %i.cr, i64 0
  %i.cu = fmul <2 x float> %.sroa.61296.0.copyload, %i.ct
  %i.cv = fmul <2 x float> %i.bq, %i.cq
  %i.cw = fmul <2 x float> %i.ce, %i.cq
  %i.cx = insertelement <2 x float> %i.cs, float %i.cr, i64 1 ; 2 uses
  %i.cy = fmul <2 x float> %.sroa.61296.0.copyload, %i.cx
  %i.cz = fsub <2 x float> %i.cu, %i.cw
  %i.da = fsub <2 x float> %i.cv, %i.cy
  %i.db = fmul <2 x float> %i.bw, %i.cx
  %i.dc = insertelement <2 x float> poison, float %i.cr, i64 0
  %i.dd = shufflevector <2 x float> %i.dc, <2 x float> %i.cq, <2 x i32> <i32 0, i32 2>
  %i.de = fmul <2 x float> %i.bw, %i.dd
  %i.df = fadd <2 x float> %i.db, %i.cz           ; 2 uses
  %i.dg = fadd <2 x float> %i.de, %i.da           ; 2 uses
  %i.dh = fmul <2 x float> %i.ce, %i.df
  %i.di = fmul <2 x float> %i.bq, %i.dg
  %i.dj = fsub <2 x float> %i.dh, %i.di
  %foldExtExtBinop20396 = fmul <2 x float> %.sroa.61296.0.copyload, %i.dg
  %foldExtExtBinop20398 = fmul <2 x float> %.sroa.61296.0.copyload, %i.df
  %shift20400 = shufflevector <2 x float> %foldExtExtBinop20396, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop20401 = fsub <2 x float> %shift20400, %foldExtExtBinop20398
  %i.dk = extractelement <2 x float> %foldExtExtBinop20401, i64 0
  %i.dl = fmul <2 x float> %i.dj, splat (float 2.000000e+00)
  %i.dm = fadd <2 x float> %i.cq, %i.dl
  %i.dn = fmul float %i.dk, 2.000000e+00
  %i.do = fadd float %i.cr, %i.dn
  %i.dp = fadd <2 x float> %i.cj, %i.dm           ; 2 uses
  %i.dq = fadd float %i.cl, %i.do                 ; 2 uses
  %i.dr = fmul <2 x float> %i.bw, %i.cn           ; 4 uses
  %i.ds = shufflevector <2 x float> %.sroa.71297.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dt = fmul <2 x float> %.sroa.61296.0.copyload, %i.ds ; 4 uses
  %i.du = fmul <2 x float> %.sroa.61296.0.copyload, %.sroa.61296.0.copyload ; 2 uses
  %i.dv = shufflevector <2 x float> %i.du, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %foldExtExtBinop20403 = fsub <2 x float> %i.dt, %i.dr
  %i.dw = extractelement <2 x float> %foldExtExtBinop20403, i64 0
  %i.dx = fmul float %i.dw, 2.000000e+00          ; 3 uses
  %i.dy = fsub float %i.bl, %i.bj
  %25 = shufflevector <2 x float> %.sroa.61296.0.copyload, <2 x float> %.sroa.71297.0.copyload, <4 x i32> <i32 poison, i32 0, i32 3, i32 2>
  %26 = insertelement <4 x float> %25, float %i.dy, i64 0
  %27 = shufflevector <2 x float> %.sroa.61296.0.copyload, <2 x float> %.sroa.71297.0.copyload, <4 x i32> <i32 poison, i32 1, i32 poison, i32 2>
  %28 = insertelement <4 x float> %27, float 5.000000e-01, i64 0
  %29 = insertelement <4 x float> %28, float %i.bm, i64 2
  %30 = fmul <4 x float> %26, %29                 ; 5 uses
  %i.dz = extractelement <4 x float> %30, i64 1   ; 2 uses
  %31 = extractelement <4 x float> %30, i64 2     ; 2 uses
  %i.ea = fadd float %i.dz, %31
  %i.eb = fsub float %i.dz, %31
  %i.ec = insertelement <2 x float> poison, float %i.eb, i64 0
  %i.ed = insertelement <2 x float> %i.ec, float %i.ea, i64 1
  %i.ee = fmul <2 x float> %i.ed, splat (float 2.000000e+00) ; 3 uses
  %32 = shufflevector <4 x float> %30, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.ef = fadd <2 x float> %i.dv, %32
  %i.eg = fmul <2 x float> %i.ef, splat (float 2.000000e+00)
  %i.eh = fsub <2 x float> splat (float 1.000000e+00), %i.eg ; 3 uses
  %foldExtExtBinop20405.a = fadd <2 x float> %i.dt, %i.dr
  %i.ei = extractelement <2 x float> %foldExtExtBinop20405.a, i64 1
  %i.ej = fmul float %i.ei, 2.000000e+00          ; 3 uses
  %i.ek = fadd <2 x float> %i.dt, %i.dr
  %i.el = fsub <2 x float> %i.dt, %i.dr
  %i.em = shufflevector <2 x float> %i.ek, <2 x float> %i.el, <2 x i32> <i32 0, i32 3>
  %i.en = fmul <2 x float> %i.em, splat (float 2.000000e+00) ; 3 uses
  %i.eo = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.du)
  %i.ep = fmul float %i.eo, 2.000000e+00
  %i.eq = fsub float 1.000000e+00, %i.ep          ; 3 uses
  %i.er = fcmp olt float %i.dx, 0.000000e+00
  %i.es = fneg float %i.dx
  %i.et = select i1 %i.er, float %i.es, float %i.dx
  %i.eu = fcmp olt <2 x float> %i.ee, zeroinitializer
  %i.ev = fneg <2 x float> %i.ee
  %i.ew = select <2 x i1> %i.eu, <2 x float> %i.ev, <2 x float> %i.ee
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
  %i.fk = fmul <2 x float> %i.fj, splat (float 5.000000e-01) ; 4 uses
  %i.fl = shufflevector <2 x float> %i.fk, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.fm = extractelement <2 x float> %i.fk, i64 0
  %i.fn = fmul float %i.et, %i.fm
  %i.fo = extractelement <2 x float> %i.fk, i64 1
  %i.fp = fmul float %i.fc, %i.fo
  %i.fq = fadd float %i.fn, %i.fp
  %i.fr = fmul <2 x float> %i.ew, %i.fl
  %i.fs = fmul <2 x float> %i.ez, %i.fk
  %i.ft = fadd <2 x float> %i.fr, %i.fs
  %i.fu = shufflevector <4 x float> %30, <4 x float> poison, <2 x i32> zeroinitializer
  %i.fv = fmul <2 x float> %i.ff, %i.fu
  %i.fw = fadd <2 x float> %i.fv, %i.ft           ; 2 uses
  %33 = extractelement <4 x float> %30, i64 0
  %i.fx = fmul float %i.fi, %33
  %i.fy = fadd float %i.fx, %i.fq                 ; 2 uses
  %i.fz = fsub <2 x float> %i.dp, %i.fw           ; 2 uses
  %i.ga = fsub float %i.dq, %i.fy                 ; 2 uses
  %i.gb = fadd <2 x float> %i.fw, %i.dp           ; 2 uses
  %i.gc = fadd float %i.fy, %i.dq                 ; 2 uses
  %i.gd = icmp ne ptr %3, null, !nosanitize !9
  %i.ge = ptrtoint ptr %3 to i64, !nosanitize !9  ; 2 uses
  %i.gf = and i64 %i.ge, 7, !nosanitize !9
  %i.gg = icmp eq i64 %i.gf, 0, !nosanitize !9
  %i.gh = and i1 %i.gd, %i.gg, !nosanitize !9
  br i1 %i.gh, label %bb.m, label %bb.l, !prof !10, !nosanitize !9

bb.l:                                             ; preds = %b3AABB_Contains.exit.thread.i
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @189, i64 %i.ge) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.m:                                             ; preds = %b3AABB_Contains.exit.thread.i
  %i.gi = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.gj = load i32, ptr %i.gi, align 8, !tbaa !120
  %i.gk = icmp eq i32 %i.gj, 4
  %i.gl = getelementptr inbounds nuw i8, ptr %3, i64 200 ; 2 uses
  br i1 %i.gk, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  store <2 x float> %i.fz, ptr %17, align 8
  %.sroa.5168.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %17, i64 8
  store float %i.ga, ptr %.sroa.5168.0..sroa_idx.i, align 8
  %.sroa.6171.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %17, i64 12
  store <2 x float> %i.gb, ptr %.sroa.6171.0..sroa_idx.i, align 4
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %17, i64 20
  store float %i.gc, ptr %.sroa.7.0..sroa_idx.i, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #9
  store ptr %i.a, ptr %16, align 8, !tbaa !16
  %i.gm = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i32 256, ptr %i.gm, align 8, !tbaa !17
  %i.gn = getelementptr inbounds nuw i8, ptr %16, i64 12 ; 2 uses
  store i32 0, ptr %i.gn, align 4, !tbaa !18
  call void @b3QueryMesh(ptr noundef nonnull %i.gl, ptr noundef nonnull byval(%struct.b3AABB) align 8 %17, ptr noundef nonnull @b3CollectTriangleIndicesCallback, ptr noundef nonnull %16) #9
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.gp = load ptr, ptr %i.gl, align 8, !tbaa !121
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  store <2 x float> %i.fz, ptr %15, align 8
  %.sroa.5168.0..sroa_idx169.i = getelementptr inbounds nuw i8, ptr %15, i64 8
  store float %i.ga, ptr %.sroa.5168.0..sroa_idx169.i, align 8
  %.sroa.6171.0..sroa_idx172.i = getelementptr inbounds nuw i8, ptr %15, i64 12
  store <2 x float> %i.gb, ptr %.sroa.6171.0..sroa_idx172.i, align 4
  %.sroa.7.0..sroa_idx174.i = getelementptr inbounds nuw i8, ptr %15, i64 20
  store float %i.gc, ptr %.sroa.7.0..sroa_idx174.i, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #9
  store ptr %i.a, ptr %14, align 8, !tbaa !16
  %i.gq = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i32 256, ptr %i.gq, align 8, !tbaa !17
  %i.gr = getelementptr inbounds nuw i8, ptr %14, i64 12 ; 2 uses
  store i32 0, ptr %i.gr, align 4, !tbaa !18
  call void @b3QueryHeightField(ptr noundef %i.gp, ptr noundef nonnull byval(%struct.b3AABB) align 8 %15, ptr noundef nonnull @b3CollectTriangleIndicesCallback, ptr noundef nonnull %14) #9
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.082.i = phi i32 [ %i.go, %bb.n ], [ %i.gs, %bb.o ] ; 8 uses
  %i.gt = icmp eq i32 %.082.i, 256
  br i1 %i.gt, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %.b.i = load i1, ptr @b3RefreshCache.s_once, align 1
  br i1 %.b.i, label %.thread.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void (ptr, ...) @b3Log(ptr noundef nonnull @.str, i32 noundef 256) #9
  store i1 true, ptr @b3RefreshCache.s_once, align 1
  br label %.thread.i

.thread.i:                                        ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #9
  br label %.lr.ph527.i

bb.s:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #9
  %i.gu = icmp sgt i32 %.082.i, 0
  br i1 %i.gu, label %.lr.ph527.i, label %._crit_edge528.i

.lr.ph527.i:                                      ; preds = %bb.s, %.thread.i
  %i.gv = ptrtoint ptr %18 to i64, !nosanitize !9 ; 3 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.gx = ptrtoint ptr %i.a to i64                ; 3 uses
  %wide.trip.count780.i = zext nneg i32 %.082.i to i64
  br label %.lr.ph527.split.us.split.i

.lr.ph527.split.us.split.i:                       ; preds = %.critedge.us.i, %.lr.ph527.i
  %indvars.iv776.i = phi i64 [ 0, %.lr.ph527.i ], [ %indvars.iv.next777.i, %.critedge.us.i ] ; 6 uses
  %.081524.us.i = phi i32 [ 0, %.lr.ph527.i ], [ %.1308.us.i, %.critedge.us.i ] ; 7 uses
  %exitcond779.not.i = icmp eq i64 %indvars.iv776.i, 256
  br i1 %exitcond779.not.i, label %.split539.us.i, label %bb.t, !prof !19, !nosanitize !9

bb.t:                                             ; preds = %.lr.ph527.split.us.split.i
  %i.gy = getelementptr inbounds nuw [16 x i8], ptr %18, i64 %indvars.iv776.i ; 2 uses
  %i.gz = shl nuw nsw i64 %indvars.iv776.i, 4
  %i.ha = add i64 %i.gz, %i.gv, !nosanitize !9    ; 2 uses
  %.not101.us.i = icmp ult i64 %i.ha, %i.gv, !nosanitize !9
  br i1 %.not101.us.i, label %.split542.us.i, label %.lr.ph.us.i, !prof !19, !nosanitize !9

.lr.ph.us.i:                                      ; preds = %bb.t
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.gy, i8 0, i64 16, i1 false)
  %i.hb = load i32, ptr %i.gw, align 8, !tbaa !121 ; 3 uses
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv776.i
  %i.hd = shl nuw nsw i64 %indvars.iv776.i, 2
  %i.he = add i64 %i.hd, %i.gx                    ; 2 uses
  %.not102.us.i = icmp ult i64 %i.he, %i.gx
  %i.hf = icmp slt i32 %.081524.us.i, %i.hb       ; 2 uses
  br i1 %.not102.us.i, label %.lr.ph.split.us.us.i, label %.lr.ph.split.split.us.us.i, !prof !19, !nosanitize !9

.lr.ph.split.split.us.us.i:                       ; preds = %.lr.ph.us.i
  br i1 %i.hf, label %.lr.ph495.us.i, label %.critedge.us.i

.lr.ph495.us.i:                                   ; preds = %.lr.ph.split.split.us.us.i
  %i.hg = load ptr, ptr %i.ah, align 8, !tbaa !121
  %.fr605.i = freeze ptr %i.hg                    ; 3 uses
  %i.hh = ptrtoint ptr %.fr605.i to i64, !nosanitize !9 ; 4 uses
  %.not606.i = icmp eq ptr %.fr605.i, null, !nosanitize !9
  %i.hi = sext i32 %.081524.us.i to i64           ; 2 uses
  br i1 %.not606.i, label %.lr.ph495.split.us.i, label %.lr.ph495.split.us535.preheader.i, !prof !19

.lr.ph495.split.us535.preheader.i:                ; preds = %.lr.ph495.us.i
  %wide.trip.count.i = sext i32 %i.hb to i64
  br label %.lr.ph495.split.us535.i

.lr.ph495.split.us535.i:                          ; preds = %bb.w, %.lr.ph495.split.us535.preheader.i
  %indvars.iv.i = phi i64 [ %i.hi, %.lr.ph495.split.us535.preheader.i ], [ %indvars.iv.next.i, %bb.w ] ; 5 uses
  %i.hj = getelementptr inbounds [20 x i8], ptr %.fr605.i, i64 %indvars.iv.i ; 3 uses
  %i.hk = mul nsw i64 %indvars.iv.i, 20
  %i.hl = add i64 %i.hk, %i.hh, !nosanitize !9    ; 3 uses
  %i.hm = icmp ne i64 %i.hl, 0
  %i.hn = icmp uge i64 %i.hl, %i.hh, !nosanitize !9
  %i.ho = icmp slt i64 %indvars.iv.i, 0
  %i.hp = xor i1 %i.ho, %i.hn
  %i.hq = and i1 %i.hm, %i.hp, !nosanitize !9
  br i1 %i.hq, label %bb.u, label %.split.us.i, !prof !10, !nosanitize !9

bb.u:                                             ; preds = %.lr.ph495.split.us535.i
  %i.hr = ptrtoint ptr %i.hj to i64, !nosanitize !9 ; 2 uses
  %i.hs = and i64 %i.hr, 3, !nosanitize !9
  %i.ht = icmp eq i64 %i.hs, 0, !nosanitize !9
  br i1 %i.ht, label %bb.v, label %.split411.us.i, !prof !10, !nosanitize !9

bb.v:                                             ; preds = %bb.u
  %i.hu = load i32, ptr %i.hj, align 4, !tbaa !123 ; 2 uses
  %i.hv = load i32, ptr %i.hc, align 4, !tbaa !20 ; 2 uses
  %i.hw = icmp slt i32 %i.hu, %i.hv
  br i1 %i.hw, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.critedge.us.i, label %.lr.ph495.split.us535.i

bb.x:                                             ; preds = %bb.v
  %i.hx = trunc nsw i64 %indvars.iv.i to i32      ; 2 uses
  %i.hy = icmp eq i32 %i.hu, %i.hv
  br i1 %i.hy, label %bb.y, label %.critedge.us.i

bb.y:                                             ; preds = %bb.x
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hj, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.gy, ptr noundef nonnull align 4 dereferenceable(16) %i.hz, i64 16, i1 false), !tbaa.struct !124
  br label %.critedge.us.i

.lr.ph.split.us.us.i:                             ; preds = %.lr.ph.us.i
  br i1 %i.hf, label %.split589.us.i, label %.critedge.us.i

.critedge.us.i:                                   ; preds = %bb.w, %.lr.ph.split.us.us.i, %bb.y, %bb.x, %.lr.ph.split.split.us.us.i
  %.1308.us.i = phi i32 [ %i.hx, %bb.x ], [ %i.hx, %bb.y ], [ %.081524.us.i, %.lr.ph.split.us.us.i ], [ %.081524.us.i, %.lr.ph.split.split.us.us.i ], [ %i.hb, %bb.w ]
  %indvars.iv.next777.i = add nuw nsw i64 %indvars.iv776.i, 1 ; 2 uses
  %exitcond781.not.i = icmp eq i64 %indvars.iv.next777.i, %wide.trip.count780.i
  br i1 %exitcond781.not.i, label %._crit_edge528.i, label %.lr.ph527.split.us.split.i, !llvm.loop !29

.split539.us.i:                                   ; preds = %.lr.ph527.split.us.split.i
  call void @__ubsan_handle_out_of_bounds_abort(ptr nonnull @191, i64 256) #8, !nosanitize !9
  unreachable, !nosanitize !9

.split542.us.i:                                   ; preds = %bb.t
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @192, i64 %i.gv, i64 %i.ha) #8, !nosanitize !9
  unreachable, !nosanitize !9

.split589.us.i:                                   ; preds = %.lr.ph.split.us.us.i
  %i.ia = load ptr, ptr %i.ah, align 8, !tbaa !121 ; 3 uses
  %i.ib = sext i32 %.081524.us.i to i64           ; 2 uses
  %i.ic = mul nsw i64 %i.ib, 20
  %i.id = ptrtoint ptr %i.ia to i64, !nosanitize !9 ; 3 uses
  %i.ie = add i64 %i.ic, %i.id, !nosanitize !9    ; 3 uses
  %i.if = icmp ne ptr %i.ia, null, !nosanitize !9 ; 2 uses
  %i.ig = icmp eq i64 %i.ie, 0
  %i.ih = xor i1 %i.if, %i.ig
  %i.ii = icmp uge i64 %i.ie, %i.id, !nosanitize !9
end_hunk_0
