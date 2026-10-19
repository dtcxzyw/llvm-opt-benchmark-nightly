Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/solver?download=true
inline.NumInlined: 196
inline.NumDeleted: 61
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0
@335 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 683, i32 46 }, ptr @88, i8 3, i8 3 }
@336 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 690, i32 31 } }
@337 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 691, i32 25 } }
@338 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 693, i32 21 }, ptr @293, i8 2, i8 3 }
@339 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 695, i32 47 }, ptr @141, i8 2, i8 3 }
@340 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 700, i32 61 } }
@341 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 700, i32 61 }, ptr @168, i8 3, i8 3 }
@.str.22 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"unstable: %s\00", align 1
@342 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 731, i32 25 } }
@343 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 732, i32 9 }, ptr @168, i8 3, i8 3 }
@344 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 735, i32 3 } }
@345 = private unnamed_addr constant { i16, i16, [49 x i8] } { i16 -1, i16 0, [49 x i8] c"'b3BodyMoveEvent' (aka 'struct b3BodyMoveEvent')\00" }
@346 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 735, i32 3 }, ptr @345, i8 3, i8 3 }
@347 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 737, i32 57 }, ptr @6 }
@348 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 771, i32 6 } }
@349 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 771, i32 6 }, ptr @6, i8 2, i8 1 }
@350 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 798, i32 22 } }
@351 = private unnamed_addr constant { i16, i16, [35 x i8] } { i16 -1, i16 0, [35 x i8] c"'b3Island' (aka 'struct b3Island')\00" }
@352 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 802, i32 30 }, ptr @351, i8 3, i8 3 }
@353 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 805, i32 21 }, ptr @351, i8 3, i8 3 }
@354 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 825, i32 21 } }
@355 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 839, i32 12 }, ptr @136, i8 3, i8 3 }
@356 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 855, i32 21 }, ptr @136, i8 3, i8 3 }
@357 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 482, i32 26 }, ptr @0, i8 3, i8 3 }
@358 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 482, i32 26 } }
@359 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 483, i32 27 }, ptr @4, i8 3, i8 3 }
@360 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 483, i32 27 } }
@361 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 487, i32 28 }, ptr @141, i8 2, i8 3 }
@362 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 500, i32 57 } }
@363 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 501, i32 55 } }
@364 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 502, i32 21 } }
@365 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 513, i32 26 }, ptr @168, i8 3, i8 3 }
@366 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 516, i32 24 } }
@367 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 517, i32 24 }, ptr @136, i8 3, i8 3 }
@368 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 571, i32 28 } }
@369 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 572, i32 10 }, ptr @345, i8 3, i8 3 }
@370 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 580, i32 21 } }
@371 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 584, i32 11 }, ptr @136, i8 3, i8 3 }
@372 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 611, i32 21 } }
@373 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 615, i32 33 }, ptr @136, i8 3, i8 3 }
@374 = private unnamed_addr constant { i16, i16, [11 x i8] } { i16 -1, i16 0, [11 x i8] c"'float[8]'\00" }
@375 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 636, i32 8 }, ptr @374, ptr @6 }
@376 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 636, i32 8 } }
@377 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 638, i32 4 }, ptr @88, i8 3, i8 3 }
@378 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 638, i32 4 }, ptr @6 }
@379 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 638, i32 4 }, ptr @6 }
@380 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 638, i32 4 } }
@381 = private unnamed_addr constant { i16, i16, [21 x i8] } { i16 -1, i16 0, [21 x i8] c"'struct b3SensorHit'\00" }
@382 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 638, i32 4 }, ptr @381, i8 2, i8 1 }
@383 = private unnamed_addr constant { i16, i16, [47 x i8] } { i16 -1, i16 0, [47 x i8] c"'b3SensorHit[8]' (aka 'struct b3SensorHit[8]')\00" }
@384 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 638, i32 4 } }
@385 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 642, i32 59 }, ptr @88, i8 3, i8 3 }
@.str.24 = private unnamed_addr constant [92 x i8] c"CCD stall: duration %.1f ms and visit count %d for %s: c1 = (%g, %g, %g), c2 = (%g, %g, %g)\00", align 1
@.src.25 = private unnamed_addr constant [45 x i8] c"/opt-bench/work/box3d_ubsan/box3d/src/body.h\00", align 1
@386 = private unnamed_addr constant { i16, i16, [49 x i8] } { i16 -1, i16 0, [49 x i8] c"'const b3BodySim' (aka 'const struct b3BodySim')\00" }
@387 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.25, i32 248, i32 28 }, ptr @386, i8 2, i8 3 }
@388 = private unnamed_addr constant { i16, i16, [57 x i8] } { i16 -1, i16 0, [57 x i8] c"'b3ContinuousContext' (aka 'struct b3ContinuousContext')\00" }
@389 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 345, i32 21 }, ptr @388, i8 3, i8 3 }
@390 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 345, i32 32 }, ptr @6 }
@391 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 353, i32 29 }, ptr @136, i8 3, i8 3 }
@392 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 359, i32 19 }, ptr @0, i8 3, i8 3 }
@393 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 359, i32 19 } }
@394 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 362, i32 14 }, ptr @136, i8 3, i8 3 }
@395 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 381, i32 17 } }
@396 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 387, i32 16 }, ptr @141, i8 2, i8 3 }
@397 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 393, i32 21 }, ptr @141, i8 2, i8 3 }
@398 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 393, i32 21 } }
@399 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 406, i32 32 }, ptr @6 }
@400 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 407, i32 36 }, ptr @6 }
@401 = private unnamed_addr constant { i16, i16, [55 x i8] } { i16 -1, i16 0, [55 x i8] c"'bool (*)(struct b3ShapeId, struct b3ShapeId, void *)'\00" }
@402 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 408, i32 17 }, ptr @401 }
@403 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 436, i32 4 }, ptr @383, ptr @6 }
@404 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 436, i32 4 } }
@405 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 437, i32 4 } }
@406 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 438, i32 35 }, ptr @6 }
@407 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 447, i32 37 }, ptr @6 }
@408 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 448, i32 41 }, ptr @6 }
@409 = private unnamed_addr constant { i16, i16, [85 x i8] } { i16 -1, i16 0, [85 x i8] c"'bool (*)(struct b3ShapeId, struct b3ShapeId, struct b3Vec3, struct b3Vec3, void *)'\00" }
@410 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 450, i32 13 }, ptr @409 }
@411 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 466, i32 74 }, ptr @168, i8 3, i8 3 }
@412 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 467, i32 66 }, ptr @168, i8 3, i8 3 }
@.str.26 = private unnamed_addr constant [45 x i8] c"CCD stall: duration %.1f ms for %s versus %s\00", align 1
@.src.29 = private unnamed_addr constant [52 x i8] c"/opt-bench/work/box3d_ubsan/box3d/src/broad_phase.h\00", align 1
@413 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src.29, i32 73, i32 19 } }
@414 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src.29, i32 77, i32 3 }, ptr @6 }
@415 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src.29, i32 77, i32 3 }, ptr @6 }
@416 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src.29, i32 77, i32 3 } }
@417 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.29, i32 77, i32 3 }, ptr @6, i8 2, i8 1 }
@418 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src.20, i32 41, i32 2 } }
@419 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.20, i32 41, i32 2 }, ptr @2, i8 3, i8 1 }
@420 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1418, i32 31 }, ptr @8, i8 3, i8 3 }
@421 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1418, i32 31 }, ptr @237, i8 3, i8 3 }
@422 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1418, i32 31 } }
@423 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1424, i32 18 } }
@424 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1424, i32 18 }, ptr @6, i8 2, i8 0 }
@425 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src.20, i32 61, i32 11 } }
@426 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.20, i32 61, i32 11 }, ptr @2, i8 3, i8 0 }

; Function Attrs: nounwind uwtable
define hidden void @b3Solve(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !func_sanitize !211 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca [24 x i32], align 16              ; 10 uses
  %i.c = alloca [24 x i32], align 16              ; 5 uses
  %i.d = alloca [24 x i32], align 16              ; 5 uses
  %i.e = alloca [24 x i32], align 16              ; 5 uses
  %2 = alloca [24 x %struct.b3BlockDim], align 16 ; 5 uses
  %3 = alloca [24 x %struct.b3BlockDim], align 16 ; 5 uses
  %4 = alloca [24 x %struct.b3BlockDim], align 16 ; 5 uses
  %5 = alloca [25 x %struct.b3WidePrepareSpan], align 16 ; 7 uses
  %6 = alloca [25 x %struct.b3ContactPrepareSpan], align 16 ; 7 uses
  %7 = alloca [25 x %struct.b3JointPrepareSpan], align 16 ; 7 uses
  %8 = alloca [2 x %struct.b3ContactPrepareSpan], align 16 ; 11 uses
  %i.f = alloca [24 x ptr], align 16              ; 9 uses
  %i.g = alloca [24 x i32], align 16              ; 9 uses
  %9 = alloca [32 x %struct.b3WorkerContext], align 16 ; 6 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  %i.i = alloca [16 x i8], align 16               ; 4 uses
  %10 = alloca %struct.b3WorkerContext, align 8   ; 9 uses
  %i.j = icmp ne ptr %0, null, !nosanitize !9
  %i.k = ptrtoint ptr %0 to i64, !nosanitize !9   ; 2 uses
  %i.l = and i64 %i.k, 7, !nosanitize !9
  %i.m = icmp eq i64 %i.l, 0, !nosanitize !9
  %i.n = and i1 %i.j, %i.m, !nosanitize !9
  br i1 %i.n, label %bb.c, label %bb.b, !prof !10, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @1, i64 %i.k) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4416 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !212
  %i.q = add i64 %i.p, 1
  store i64 %i.q, ptr %i.o, align 8, !tbaa !212
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 3920
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !70   ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 176 ; 4 uses
  %i.u = ptrtoint ptr %i.s to i64, !nosanitize !9 ; 2 uses
  %i.v = add i64 %i.u, 176, !nosanitize !9        ; 2 uses
  %i.w = icmp ne ptr %i.s, null, !nosanitize !9
  %i.x = icmp ne i64 %i.v, 0
  %i.y = and i1 %i.w, %i.x
  %i.z = icmp ult ptr %i.s, inttoptr (i64 -176 to ptr)
  %i.aa = and i1 %i.z, %i.y, !nosanitize !9
  br i1 %i.aa, label %bb.e, label %bb.d, !prof !10, !nosanitize !9

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @3, i64 %i.u, i64 %i.v) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.e:                                             ; preds = %bb.c
  %i.ab = ptrtoint ptr %i.t to i64, !nosanitize !9 ; 2 uses
  %i.ac = and i64 %i.ab, 7, !nosanitize !9
  %i.ad = icmp eq i64 %i.ac, 0, !nosanitize !9
  br i1 %i.ad, label %bb.g, label %bb.f, !prof !10, !nosanitize !9

bb.f:                                             ; preds = %bb.e
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @5, i64 %i.ab) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.g:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 184 ; 2 uses
  %i.af = ptrtoint ptr %i.ae to i64, !nosanitize !9 ; 2 uses
  %i.ag = and i64 %i.af, 7, !nosanitize !9
  %i.ah = icmp eq i64 %i.ag, 0, !nosanitize !9
  br i1 %i.ah, label %bb.i, label %bb.h, !prof !10, !nosanitize !9

bb.h:                                             ; preds = %bb.g
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @7, i64 %i.af) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.i:                                             ; preds = %bb.g
  %i.ai = load i32, ptr %i.ae, align 8, !tbaa !213 ; 10 uses
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 800
  tail call void @b3ValidateNoEnlarged(ptr noundef nonnull %i.ak) #13
  br label %bb.oe

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.al = tail call i64 @b3GetTicks() #13
  store i64 %i.al, ptr %i.a, align 8, !tbaa !80
  %i.am = icmp ne ptr %1, null, !nosanitize !9
  %i.an = ptrtoint ptr %1 to i64, !nosanitize !9  ; 2 uses
  %i.ao = and i64 %i.an, 7, !nosanitize !9
  %i.ap = icmp eq i64 %i.ao, 0, !nosanitize !9
  %i.aq = and i1 %i.am, %i.ap, !nosanitize !9
  br i1 %i.aq, label %b3AtomicStoreInt.exit, label %bb.l, !prof !10, !nosanitize !9

bb.l:                                             ; preds = %bb.k
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @9, i64 %i.an) #12, !nosanitize !9
  unreachable, !nosanitize !9

b3AtomicStoreInt.exit:                            ; preds = %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 3 uses
  store atomic i32 0, ptr %i.ar seq_cst, align 8
  %i.as = shl i32 %i.ai, 2
  %i.at = tail call ptr @b3StackAlloc(ptr noundef nonnull %0, i32 noundef %i.as, ptr noundef nonnull @.str) #13
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 4 uses
  store ptr %i.at, ptr %i.au, align 8, !tbaa !93
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 1144 ; 6 uses
  %i.aw = ptrtoint ptr %i.av to i64, !nosanitize !9 ; 11 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ay = load ptr, ptr %i.t, align 8, !tbaa !94
  store ptr %i.ay, ptr %i.ax, align 8, !tbaa !95
  %i.az = getelementptr inbounds nuw i8, ptr %i.s, i64 192
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !214
  store ptr %i.bb, ptr %i.ba, align 8, !tbaa !96
  br label %bb.m

bb.m:                                             ; preds = %b3AtomicStoreInt.exit, %bb.u
  %indvars.iv = phi i64 [ 0, %b3AtomicStoreInt.exit ], [ %indvars.iv.next, %bb.u ] ; 3 uses
  %.07516471 = phi i32 [ 0, %b3AtomicStoreInt.exit ], [ %i.cb, %bb.u ] ; 2 uses
  %i.bc = getelementptr inbounds nuw [112 x i8], ptr %i.av, i64 %indvars.iv ; 3 uses
  %i.bd = mul nuw nsw i64 %indvars.iv, 112
  %i.be = add i64 %i.bd, %i.aw, !nosanitize !9    ; 2 uses
  %.not1050 = icmp ult i64 %i.be, %i.aw, !nosanitize !9
  br i1 %.not1050, label %bb.n, label %bb.o, !prof !97, !nosanitize !9

bb.n:                                             ; preds = %bb.m
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @10, i64 %i.aw, i64 %i.be) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.o:                                             ; preds = %bb.m
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 40
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !215 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 56
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !216 ; 2 uses
  %i.bj = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.bg, i32 %i.bi), !nosanitize !9 ; 2 uses
  %i.bk = extractvalue { i32, i1 } %i.bj, 1, !nosanitize !9
  br i1 %i.bk, label %bb.p, label %bb.q, !prof !97, !nosanitize !9

bb.p:                                             ; preds = %bb.o
  %i.bl = zext i32 %i.bg to i64, !nosanitize !9
  %i.bm = zext i32 %i.bi to i64, !nosanitize !9
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @11, i64 %i.bl, i64 %i.bm) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.q:                                             ; preds = %bb.o
  %i.bn = extractvalue { i32, i1 } %i.bj, 0, !nosanitize !9 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !217 ; 2 uses
  %i.bq = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.bn, i32 %i.bp), !nosanitize !9 ; 2 uses
  %i.br = extractvalue { i32, i1 } %i.bq, 1, !nosanitize !9
  br i1 %i.br, label %bb.r, label %bb.s, !prof !97, !nosanitize !9

bb.r:                                             ; preds = %bb.q
  %i.bs = zext i32 %i.bn to i64, !nosanitize !9
  %i.bt = zext i32 %i.bp to i64, !nosanitize !9
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @12, i64 %i.bs, i64 %i.bt) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.s:                                             ; preds = %bb.q
  %i.bu = extractvalue { i32, i1 } %i.bq, 0, !nosanitize !9
  %i.bv = icmp sgt i32 %i.bu, 0                   ; 2 uses
  %i.bw = zext i1 %i.bv to i32
  %i.bx = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.07516471, i32 %i.bw), !nosanitize !9 ; 2 uses
  %i.by = extractvalue { i32, i1 } %i.bx, 1, !nosanitize !9
  br i1 %i.by, label %bb.t, label %bb.u, !prof !97, !nosanitize !9

bb.t:                                             ; preds = %bb.s
  %i.bz = zext i32 %.07516471 to i64, !nosanitize !9
  %i.ca = zext i1 %i.bv to i64
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @13, i64 %i.bz, i64 %i.ca) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.u:                                             ; preds = %bb.s
  %i.cb = extractvalue { i32, i1 } %i.bx, 0, !nosanitize !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 23
  br i1 %exitcond.not, label %bb.v, label %bb.m, !llvm.loop !183

bb.v:                                             ; preds = %bb.u
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 4188 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !218 ; 2 uses
  %i.ce = icmp slt i32 %i.cd, %i.ai
  br i1 %i.ce, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 4176 ; 2 uses
  %i.cg = mul i32 %i.cd, 48
  %i.ch = mul i32 %i.ai, 48
  %i.ci = load ptr, ptr %i.cf, align 8, !tbaa !102
  %i.cj = tail call ptr @b3GrowAlloc(ptr noundef %i.ci, i32 noundef %i.cg, i32 noundef %i.ch) #13
  store ptr %i.cj, ptr %i.cf, align 8, !tbaa !102
  store i32 %i.ai, ptr %i.cc, align 4, !tbaa !218
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 4184
  store i32 %i.ai, ptr %i.ck, align 8, !tbaa !219
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 4680 ; 12 uses
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !220 ; 7 uses
  %i.cn = shl i32 %i.cm, 2                        ; 7 uses
  %i.co = add i32 %i.cm, 536870912
  %i.cp = icmp ult i32 %i.co, 1073741824
  br i1 %i.cp, label %bb.z, label %bb.y, !prof !10, !nosanitize !9

bb.y:                                             ; preds = %bb.x
  %i.cq = zext i32 %i.cm to i64, !nosanitize !9
  tail call void @__ubsan_handle_mul_overflow_abort(ptr nonnull @14, i64 4, i64 %i.cq) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.z:                                             ; preds = %bb.x
  %i.cr = tail call fastcc i64 @b3ComputeBlockCount(i32 noundef %i.ai, i32 noundef 32, i32 noundef %i.cn) ; 2 uses
  %.sroa.41044.0.extract.shift = lshr i64 %i.cr, 32
  %.sroa.41044.0.extract.trunc = trunc nuw i64 %.sroa.41044.0.extract.shift to i32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.cs = ptrtoint ptr %i.b to i64                ; 9 uses
  %i.ct = ptrtoint ptr %i.c to i64                ; 6 uses
  %i.cu = ptrtoint ptr %i.d to i64                ; 6 uses
  %i.cv = ptrtoint ptr %i.e to i64                ; 6 uses
  %i.cw = ptrtoint ptr %2 to i64                  ; 6 uses
  %i.cx = ptrtoint ptr %3 to i64                  ; 6 uses
  %i.cy = ptrtoint ptr %4 to i64                  ; 6 uses
  br label %bb.ab

bb.aa:                                            ; preds = %bb.bq
  %i.cz = call fastcc i64 @b3ComputeBlockCount(i32 noundef %.1764, i32 noundef 4, i32 noundef %i.cn) ; 2 uses
  %.sroa.41040.0.extract.shift = lshr i64 %i.cz, 32
  %.sroa.41040.0.extract.trunc = trunc nuw i64 %.sroa.41040.0.extract.shift to i32 ; 3 uses
  %i.da = call fastcc i64 @b3ComputeBlockCount(i32 noundef %.1766, i32 noundef 4, i32 noundef %i.cn) ; 2 uses
  %.sroa.41036.0.extract.shift = lshr i64 %i.da, 32
  %.sroa.41036.0.extract.trunc = trunc nuw i64 %.sroa.41036.0.extract.shift to i32 ; 3 uses
  %i.db = call fastcc i64 @b3ComputeBlockCount(i32 noundef %.1793, i32 noundef 4, i32 noundef %i.cn) ; 2 uses
  %.sroa.41033.0.extract.shift = lshr i64 %i.db, 32
  %.sroa.41033.0.extract.trunc = trunc nuw i64 %.sroa.41033.0.extract.shift to i32 ; 2 uses
  %i.dc = call i32 @b3GetWideContactConstraintByteCount() #13 ; 7 uses
  %i.dd = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.1764, i32 %i.dc), !nosanitize !9 ; 2 uses
  %i.de = extractvalue { i32, i1 } %i.dd, 1, !nosanitize !9
  br i1 %i.de, label %bb.br, label %bb.bs, !prof !97, !nosanitize !9

bb.ab:                                            ; preds = %bb.z, %bb.bq
  %indvars.iv14177 = phi i64 [ 0, %bb.z ], [ %indvars.iv.next14178, %bb.bq ] ; 4 uses
  %.07616540 = phi i32 [ 0, %bb.z ], [ %.1762, %bb.bq ] ; 3 uses
  %.07636539 = phi i32 [ 0, %bb.z ], [ %.1764, %bb.bq ] ; 3 uses
  %.07656538 = phi i32 [ 0, %bb.z ], [ %.1766, %bb.bq ] ; 3 uses
  %.07896537 = phi i32 [ 0, %bb.z ], [ %.2791, %bb.bq ] ; 3 uses
  %.07926536 = phi i32 [ 0, %bb.z ], [ %.1793, %bb.bq ] ; 3 uses
  %.07946535 = phi i32 [ 0, %bb.z ], [ %.1795, %bb.bq ] ; 4 uses
  %i.df = mul nuw nsw i64 %indvars.iv14177, 112
  %i.dg = add i64 %i.df, %i.aw, !nosanitize !9    ; 2 uses
  %.not9000 = icmp ult i64 %i.dg, %i.aw, !nosanitize !9
  br i1 %.not9000, label %bb.ac, label %bb.ad, !prof !97, !nosanitize !9

bb.ac:                                            ; preds = %bb.ab
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @15, i64 %i.aw, i64 %i.dg) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.ad:                                            ; preds = %bb.ab
  %i.dh = getelementptr inbounds nuw [112 x i8], ptr %i.av, i64 %indvars.iv14177 ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 40
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !215 ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 48
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 56
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !216 ; 8 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !217 ; 6 uses
  %i.dp = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.dj, i32 %i.dm), !nosanitize !9 ; 2 uses
  %i.dq = extractvalue { i32, i1 } %i.dp, 1, !nosanitize !9
  br i1 %i.dq, label %bb.ae, label %bb.af, !prof !97, !nosanitize !9

bb.ae:                                            ; preds = %bb.ad
  %i.dr = zext i32 %i.dj to i64, !nosanitize !9
  %i.ds = zext i32 %i.dm to i64, !nosanitize !9
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @16, i64 %i.dr, i64 %i.ds) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.af:                                            ; preds = %bb.ad
  %i.dt = extractvalue { i32, i1 } %i.dp, 0, !nosanitize !9 ; 2 uses
  %i.du = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.dt, i32 %i.do), !nosanitize !9 ; 2 uses
  %i.dv = extractvalue { i32, i1 } %i.du, 1, !nosanitize !9
  br i1 %i.dv, label %bb.ag, label %bb.ah, !prof !97, !nosanitize !9

bb.ag:                                            ; preds = %bb.af
  %i.dw = zext i32 %i.dt to i64, !nosanitize !9
  %i.dx = zext i32 %i.do to i64, !nosanitize !9
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @17, i64 %i.dw, i64 %i.dx) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.ah:                                            ; preds = %bb.af
  %i.dy = extractvalue { i32, i1 } %i.du, 0, !nosanitize !9
  %i.dz = icmp eq i32 %i.dy, 0
  br i1 %i.dz, label %bb.bq, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ea = sext i32 %.07946535 to i64, !nosanitize !9 ; 10 uses
  %i.eb = icmp ult i32 %.07946535, 24
  br i1 %i.eb, label %bb.ak, label %bb.aj, !prof !10, !nosanitize !9
end_hunk_0
begin_hunk_1_@b3Solve:bb.a

.split8283:                                       ; preds = %bb.lq, %.lr.ph8277.split.us
  %.us-phi8284 = phi i64 [ 0, %.lr.ph8277.split.us ], [ %i.bcs, %bb.lq ]
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @173, i64 %.us-phi8284) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.lr:                                            ; preds = %bb.lq
  %i.bcv = getelementptr inbounds nuw i8, ptr %i.bck, i64 198 ; 3 uses
  %i.bcw = load i8, ptr %i.bcv, align 2, !tbaa !156
  %i.bcx = and i8 %i.bcw, 32
  %.not946 = icmp eq i8 %i.bcx, 0
  br i1 %.not946, label %bb.lt, label %bb.ls

bb.ls:                                            ; preds = %bb.lr
  %i.bcy = getelementptr inbounds nuw i8, ptr %i.bck, i64 20
  %i.bcz = load i32, ptr %i.bcy, align 4, !tbaa !293
  %i.bda = getelementptr inbounds nuw i8, ptr %i.bck, i64 64
  call void @b3BroadPhase_EnlargeProxy(ptr noundef nonnull %i.aup, i32 noundef %i.bcz, ptr noundef nonnull byval(%struct.b3AABB) align 8 %i.bda) #13
  %i.bdb = load i8, ptr %i.bcv, align 2, !tbaa !156
  %i.bdc = and i8 %i.bdb, -33
  store i8 %i.bdc, ptr %i.bcv, align 2, !tbaa !156
  br label %bb.lt

bb.lt:                                            ; preds = %bb.ls, %bb.lr
  %i.bdd = getelementptr inbounds nuw i8, ptr %i.bck, i64 12
  %i.bde = load i32, ptr %i.bdd, align 4, !tbaa !155 ; 2 uses
  %.not944 = icmp eq i32 %i.bde, -1
  br i1 %.not944, label %.loopexit1052, label %.lr.ph8277.split, !llvm.loop !202

.loopexit1052:                                    ; preds = %bb.lt, %b3BufferMove.exit.us, %.preheader1053, %.preheader1051
  %i.bdf = add i64 %.07488481, -1
  %i.bdg = and i64 %i.bdf, %.07488481             ; 2 uses
  %.not943 = icmp eq i64 %i.bdg, 0
  br i1 %.not943, label %._crit_edge8484, label %.lr.ph8483.split.split, !llvm.loop !203

._crit_edge8484:                                  ; preds = %.loopexit1052, %bb.kv
  %indvars.iv.next14250 = add nuw nsw i64 %indvars.iv14249, 1 ; 2 uses
  %exitcond14253.not = icmp eq i64 %indvars.iv.next14250, %wide.trip.count14252
  br i1 %exitcond14253.not, label %._crit_edge8756, label %.lr.ph8755.split, !llvm.loop !204

._crit_edge8756:                                  ; preds = %._crit_edge8484, %._crit_edge8274
  call void @b3ValidateBroadPhase(ptr noundef nonnull %i.aup) #13
  %i.bdh = call float @b3GetMilliseconds(i64 noundef %i.atv) #13
  %i.bdi = getelementptr inbounds nuw i8, ptr %0, i64 4568
  store float %i.bdh, ptr %i.bdi, align 8, !tbaa !297
  %i.bdj = load atomic i32, ptr %i.ar seq_cst, align 8 ; 3 uses
  %i.bdk = icmp sgt i32 %i.bdj, 0
  br i1 %i.bdk, label %bb.lu, label %b3AtomicStoreInt.exit1019

bb.lu:                                            ; preds = %._crit_edge8756
  %i.bdl = call i64 @b3GetTicks() #13
  call void @b3ParallelFor(ptr noundef nonnull %0, ptr noundef nonnull @b3BulletBodyTask, i32 noundef %i.bdj, i32 noundef 8, ptr noundef nonnull %1, ptr noundef nonnull @.str.16) #13
  %i.bdm = getelementptr inbounds nuw i8, ptr %0, i64 960
  %.not937 = icmp ugt ptr %i.aup, inttoptr (i64 -161 to ptr)
  br i1 %.not937, label %bb.lv, label %.lr.ph8792, !prof !97, !nosanitize !9

bb.lv:                                            ; preds = %bb.lu
  %i.bdn = ptrtoint ptr %i.aup to i64, !nosanitize !9 ; 2 uses
  %i.bdo = add i64 %i.bdn, 160, !nosanitize !9
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @174, i64 %i.bdn, i64 %i.bdo) #12, !nosanitize !9
  unreachable, !nosanitize !9

.lr.ph8792:                                       ; preds = %bb.lu
  %i.bdp = load ptr, ptr %i.avt, align 8, !tbaa !139 ; 3 uses
  %i.bdq = load ptr, ptr %i.t, align 8, !tbaa !94
  %.fr9051 = freeze ptr %i.bdq                    ; 3 uses
  %i.bdr = load ptr, ptr %i.avw, align 8, !tbaa !136
  %.fr9047 = freeze ptr %i.bdr                    ; 3 uses
  %i.bds = load ptr, ptr %i.au, align 8, !tbaa !93
  %.fr9049 = freeze ptr %i.bds                    ; 4 uses
  %i.bdt = ptrtoint ptr %.fr9049 to i64, !nosanitize !9 ; 5 uses
  %.not9050 = icmp eq ptr %.fr9049, null, !nosanitize !9
  %i.bdu = ptrtoint ptr %.fr9051 to i64           ; 4 uses
  %i.bdv = ptrtoint ptr %i.bdp to i64             ; 3 uses
  %i.bdw = icmp ne ptr %i.bdp, null               ; 2 uses
  %i.bdx = ptrtoint ptr %.fr9047 to i64           ; 3 uses
  %.not9048 = icmp eq ptr %.fr9047, null
  br i1 %.not9050, label %.split8799, label %.lr.ph8792.split, !prof !97

.lr.ph8792.split:                                 ; preds = %.lr.ph8792
  %.not9052 = icmp eq ptr %.fr9051, null
  br i1 %.not9052, label %.lr.ph8792.split.split.us, label %.lr.ph8792.split.split.preheader, !prof !97

.lr.ph8792.split.split.preheader:                 ; preds = %.lr.ph8792.split
  %wide.trip.count14257 = zext nneg i32 %i.bdj to i64
  br label %.lr.ph8792.split.split

.lr.ph8792.split.split.us:                        ; preds = %.lr.ph8792.split
  %i.bdy = and i64 %i.bdt, 3, !nosanitize !9
  %i.bdz = icmp eq i64 %i.bdy, 0, !nosanitize !9
  br i1 %i.bdz, label %bb.lw, label %.split8799, !prof !10, !nosanitize !9

bb.lw:                                            ; preds = %.lr.ph8792.split.split.us
  %i.bea = load i32, ptr %.fr9049, align 4, !tbaa !103 ; 2 uses
  %i.beb = sext i32 %i.bea to i64
  %i.bec = mul nsw i64 %i.beb, 216                ; 2 uses
  %i.bed = icmp eq i32 %i.bea, 0
  %i.bee = icmp uge i64 %i.bec, %i.bdu, !nosanitize !9
  %i.bef = and i1 %i.bed, %i.bee
  br i1 %i.bef, label %.split8814, label %.split8810.us, !prof !10, !nosanitize !9

._crit_edge8793:                                  ; preds = %.loopexit
  %i.beg = call float @b3GetMilliseconds(i64 noundef %i.bdl) #13
  %i.beh = getelementptr inbounds nuw i8, ptr %0, i64 4572
  store float %i.beg, ptr %i.beh, align 4, !tbaa !298
  br label %b3AtomicStoreInt.exit1019

.lr.ph8792.split.split:                           ; preds = %.lr.ph8792.split.split.preheader, %.loopexit
  %indvars.iv14254 = phi i64 [ 0, %.lr.ph8792.split.split.preheader ], [ %indvars.iv.next14255, %.loopexit ] ; 3 uses
  %i.bei = getelementptr inbounds nuw [4 x i8], ptr %.fr9049, i64 %indvars.iv14254 ; 2 uses
  %i.bej = shl nuw nsw i64 %indvars.iv14254, 2
  %i.bek = add i64 %i.bej, %i.bdt, !nosanitize !9 ; 2 uses
  %.not9053 = icmp ult i64 %i.bek, %i.bdt, !nosanitize !9
  br i1 %.not9053, label %.split8795.us, label %bb.lx, !prof !97, !nosanitize !9

.split8795.us:                                    ; preds = %.lr.ph8792.split.split
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @175, i64 %i.bdt, i64 %i.bek) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.lx:                                            ; preds = %.lr.ph8792.split.split
  %i.bel = ptrtoint ptr %i.bei to i64, !nosanitize !9 ; 2 uses
  %i.bem = and i64 %i.bel, 3, !nosanitize !9
  %i.ben = icmp eq i64 %i.bem, 0, !nosanitize !9
  br i1 %i.ben, label %bb.ly, label %.split8799, !prof !10, !nosanitize !9

.split8799:                                       ; preds = %bb.lx, %.lr.ph8792, %.lr.ph8792.split.split.us
  %.us-phi8800 = phi i64 [ 0, %.lr.ph8792 ], [ %i.bdt, %.lr.ph8792.split.split.us ], [ %i.bel, %bb.lx ]
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @176, i64 %.us-phi8800) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.ly:                                            ; preds = %bb.lx
  %i.beo = load i32, ptr %i.bei, align 4, !tbaa !103 ; 2 uses
  %i.bep = sext i32 %i.beo to i64                 ; 2 uses
  %i.beq = getelementptr inbounds [216 x i8], ptr %.fr9051, i64 %i.bep ; 3 uses
  %i.ber = mul nsw i64 %i.bep, 216
  %i.bes = add i64 %i.ber, %i.bdu, !nosanitize !9 ; 3 uses
  %i.bet = icmp ne i64 %i.bes, 0
  %i.beu = icmp uge i64 %i.bes, %i.bdu, !nosanitize !9
  %i.bev = icmp slt i32 %i.beo, 0
  %i.bew = xor i1 %i.bev, %i.beu
  %i.bex = and i1 %i.bet, %i.bew, !nosanitize !9
  br i1 %i.bex, label %bb.lz, label %.split8810.us, !prof !10, !nosanitize !9

.split8810.us:                                    ; preds = %bb.ly, %bb.lw
  %.us-phi8812 = phi i64 [ %i.bec, %bb.lw ], [ %i.bes, %bb.ly ]
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @177, i64 %i.bdu, i64 %.us-phi8812) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.lz:                                            ; preds = %bb.ly
  %i.bey = ptrtoint ptr %i.beq to i64, !nosanitize !9 ; 2 uses
  %i.bez = and i64 %i.bey, 3, !nosanitize !9
  %i.bfa = icmp eq i64 %i.bez, 0, !nosanitize !9
  br i1 %i.bfa, label %bb.ma, label %.split8814, !prof !10, !nosanitize !9

.split8814:                                       ; preds = %bb.lz, %bb.lw
  %.us-phi8815 = phi i64 [ 0, %bb.lw ], [ %i.bey, %bb.lz ]
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @178, i64 %.us-phi8815) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.ma:                                            ; preds = %bb.lz
  %i.bfb = getelementptr inbounds nuw i8, ptr %i.beq, i64 212 ; 2 uses
  %i.bfc = load i32, ptr %i.bfb, align 4, !tbaa !154 ; 2 uses
  %i.bfd = and i32 %i.bfc, 2048
  %i.bfe = icmp eq i32 %i.bfd, 0
  br i1 %i.bfe, label %.loopexit, label %bb.mb

bb.mb:                                            ; preds = %bb.ma
  %i.bff = and i32 %i.bfc, -2049
  store i32 %i.bff, ptr %i.bfb, align 4, !tbaa !154
  %i.bfg = getelementptr inbounds nuw i8, ptr %i.beq, i64 208
  %i.bfh = load i32, ptr %i.bfg, align 4, !tbaa !151 ; 2 uses
  %i.bfi = sext i32 %i.bfh to i64                 ; 2 uses
  %i.bfj = getelementptr inbounds [128 x i8], ptr %i.bdp, i64 %i.bfi ; 2 uses
  %i.bfk = shl nsw i64 %i.bfi, 7
  %i.bfl = add i64 %i.bfk, %i.bdv, !nosanitize !9 ; 3 uses
  %i.bfm = icmp eq i64 %i.bfl, 0
  %i.bfn = xor i1 %i.bdw, %i.bfm
  %i.bfo = icmp uge i64 %i.bfl, %i.bdv, !nosanitize !9
  %i.bfp = icmp slt i32 %i.bfh, 0
  %i.bfq = xor i1 %i.bfp, %i.bfo
  %i.bfr = and i1 %i.bfn, %i.bfq, !nosanitize !9
  br i1 %i.bfr, label %bb.md, label %bb.mc, !prof !10, !nosanitize !9

bb.mc:                                            ; preds = %bb.mb
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @179, i64 %i.bdv, i64 %i.bfl) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.md:                                            ; preds = %bb.mb
  %i.bfs = ptrtoint ptr %i.bfj to i64, !nosanitize !9 ; 2 uses
  %i.bft = and i64 %i.bfs, 7, !nosanitize !9
  %i.bfu = icmp eq i64 %i.bft, 0, !nosanitize !9
  %i.bfv = and i1 %i.bdw, %i.bfu
  br i1 %i.bfv, label %.preheader, label %bb.me, !prof !10, !nosanitize !9

bb.me:                                            ; preds = %bb.md
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @180, i64 %i.bfs) #12, !nosanitize !9
  unreachable, !nosanitize !9

.preheader:                                       ; preds = %bb.md
  %i.bfw = getelementptr inbounds nuw i8, ptr %i.bfj, i64 24
  %.07438765 = load i32, ptr %i.bfw, align 8, !tbaa !103 ; 4 uses
  %.not9418766 = icmp eq i32 %.07438765, -1
  br i1 %.not9418766, label %.loopexit, label %.lr.ph8768

.lr.ph8768:                                       ; preds = %.preheader
  br i1 %.not9048, label %.lr.ph8768.split.us, label %.lr.ph8768.split, !prof !97

.lr.ph8768.split.us:                              ; preds = %.lr.ph8768
  %i.bfx = sext i32 %.07438765 to i64
  %i.bfy = mul nsw i64 %i.bfx, 232
  %i.bfz = icmp eq i32 %.07438765, 0
  br i1 %i.bfz, label %.split8774, label %.split8770.us, !prof !10, !nosanitize !9

.lr.ph8768.split:                                 ; preds = %.lr.ph8768, %bb.mi
  %.07438767 = phi i32 [ %.0743, %bb.mi ], [ %.07438765, %.lr.ph8768 ] ; 2 uses
  %i.bga = sext i32 %.07438767 to i64             ; 2 uses
  %i.bgb = getelementptr inbounds [232 x i8], ptr %.fr9047, i64 %i.bga ; 5 uses
  %i.bgc = mul nsw i64 %i.bga, 232
  %i.bgd = add i64 %i.bgc, %i.bdx, !nosanitize !9 ; 3 uses
  %i.bge = icmp ne i64 %i.bgd, 0
  %i.bgf = icmp uge i64 %i.bgd, %i.bdx, !nosanitize !9
  %i.bgg = icmp slt i32 %.07438767, 0
  %i.bgh = xor i1 %i.bgg, %i.bgf
  %i.bgi = and i1 %i.bge, %i.bgh, !nosanitize !9
  br i1 %i.bgi, label %bb.mf, label %.split8770.us, !prof !10, !nosanitize !9

.split8770.us:                                    ; preds = %.lr.ph8768.split, %.lr.ph8768.split.us
  %.us-phi8772 = phi i64 [ %i.bfy, %.lr.ph8768.split.us ], [ %i.bgd, %.lr.ph8768.split ]
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @181, i64 %i.bdx, i64 %.us-phi8772) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.mf:                                            ; preds = %.lr.ph8768.split
  %i.bgj = ptrtoint ptr %i.bgb to i64, !nosanitize !9 ; 2 uses
  %i.bgk = and i64 %i.bgj, 7, !nosanitize !9
  %i.bgl = icmp eq i64 %i.bgk, 0, !nosanitize !9
  br i1 %i.bgl, label %bb.mg, label %.split8774, !prof !10, !nosanitize !9

.split8774:                                       ; preds = %bb.mf, %.lr.ph8768.split.us
  %.us-phi8775 = phi i64 [ 0, %.lr.ph8768.split.us ], [ %i.bgj, %bb.mf ]
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @182, i64 %.us-phi8775) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.mg:                                            ; preds = %bb.mf
  %i.bgm = getelementptr inbounds nuw i8, ptr %i.bgb, i64 198 ; 2 uses
  %i.bgn = load i8, ptr %i.bgm, align 2, !tbaa !156 ; 2 uses
  %i.bgo = and i8 %i.bgn, 32
  %i.bgp = icmp eq i8 %i.bgo, 0
  br i1 %i.bgp, label %bb.mi, label %bb.mh

bb.mh:                                            ; preds = %bb.mg
  %i.bgq = and i8 %i.bgn, -33
  store i8 %i.bgq, ptr %i.bgm, align 2, !tbaa !156
  %i.bgr = getelementptr inbounds nuw i8, ptr %i.bgb, i64 20
  %i.bgs = load i32, ptr %i.bgr, align 4, !tbaa !293
  %i.bgt = ashr i32 %i.bgs, 2
  %i.bgu = getelementptr inbounds nuw i8, ptr %i.bgb, i64 64
  call void @b3DynamicTree_EnlargeProxy(ptr noundef nonnull %i.bdm, i32 noundef %i.bgt, ptr noundef nonnull byval(%struct.b3AABB) align 8 %i.bgu) #13
  br label %bb.mi

bb.mi:                                            ; preds = %bb.mg, %bb.mh
  %.1744.in = getelementptr inbounds nuw i8, ptr %i.bgb, i64 12
  %.0743 = load i32, ptr %.1744.in, align 4, !tbaa !103 ; 2 uses
  %.not941 = icmp eq i32 %.0743, -1
  br i1 %.not941, label %.loopexit, label %.lr.ph8768.split

.loopexit:                                        ; preds = %bb.mi, %.preheader, %bb.ma
  %indvars.iv.next14255 = add nuw nsw i64 %indvars.iv14254, 1 ; 2 uses
  %exitcond14258.not = icmp eq i64 %indvars.iv.next14255, %wide.trip.count14257
  br i1 %exitcond14258.not, label %._crit_edge8793, label %.lr.ph8792.split.split, !llvm.loop !205

b3AtomicStoreInt.exit1019:                        ; preds = %._crit_edge8793, %._crit_edge8756
  %i.bgv = load ptr, ptr %i.au, align 8, !tbaa !93
  call void @b3StackFree(ptr noundef nonnull %0, ptr noundef %i.bgv) #13
  store ptr null, ptr %i.au, align 8, !tbaa !93
  store atomic i32 0, ptr %i.ar seq_cst, align 8
  %i.bgw = call i64 @b3GetTicks() #13
  %i.bgx = load i32, ptr %i.cl, align 8, !tbaa !220 ; 2 uses
  %i.bgy = icmp sgt i32 %i.bgx, 0
  br i1 %i.bgy, label %.lr.ph8976, label %._crit_edge8977

.lr.ph8976:                                       ; preds = %b3AtomicStoreInt.exit1019
  %i.bgz = getelementptr inbounds nuw i8, ptr %0, i64 4128
  %wide.trip.count14267 = zext nneg i32 %i.bgx to i64
  br label %bb.mj

._crit_edge8977:                                  ; preds = %._crit_edge8820.split.us, %b3AtomicStoreInt.exit1019
  %i.bha = call float @b3GetMilliseconds(i64 noundef %i.bgw) #13
  %i.bhb = getelementptr inbounds nuw i8, ptr %0, i64 4556
  store float %i.bha, ptr %i.bhb, align 4, !tbaa !299
  %i.bhc = getelementptr inbounds nuw i8, ptr %0, i64 4762
  %i.bhd = load i8, ptr %i.bhc, align 2, !tbaa !157 ; 3 uses
  %i.bhe = icmp ult i8 %i.bhd, 2
  br i1 %i.bhe, label %bb.ne, label %bb.nd, !prof !10, !nosanitize !9

bb.mj:                                            ; preds = %.lr.ph8976, %._crit_edge8820.split.us
  %indvars.iv14264 = phi i64 [ 0, %.lr.ph8976 ], [ %indvars.iv.next14265, %._crit_edge8820.split.us ] ; 3 uses
  %i.bhf = load ptr, ptr %i.aal, align 8, !tbaa !120 ; 3 uses
  %i.bhg = getelementptr inbounds nuw [3848 x i8], ptr %i.bhf, i64 %indvars.iv14264 ; 3 uses
  %i.bhh = mul nuw nsw i64 %indvars.iv14264, 3848
  %i.bhi = ptrtoint ptr %i.bhf to i64, !nosanitize !9 ; 3 uses
  %i.bhj = add i64 %i.bhh, %i.bhi, !nosanitize !9 ; 3 uses
  %i.bhk = icmp ne ptr %i.bhf, null, !nosanitize !9 ; 2 uses
  %i.bhl = icmp eq i64 %i.bhj, 0
  %i.bhm = xor i1 %i.bhk, %i.bhl
  %i.bhn = icmp uge i64 %i.bhj, %i.bhi, !nosanitize !9
  %i.bho = and i1 %i.bhm, %i.bhn, !nosanitize !9
  br i1 %i.bho, label %bb.ml, label %bb.mk, !prof !10, !nosanitize !9

bb.mk:                                            ; preds = %bb.mj
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @183, i64 %i.bhi, i64 %i.bhj) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.ml:                                            ; preds = %bb.mj
  %i.bhp = ptrtoint ptr %i.bhg to i64, !nosanitize !9 ; 2 uses
  %i.bhq = and i64 %i.bhp, 7, !nosanitize !9
  %i.bhr = icmp eq i64 %i.bhq, 0, !nosanitize !9
  %i.bhs = and i1 %i.bhk, %i.bhr
  br i1 %i.bhs, label %bb.mn, label %bb.mm, !prof !10, !nosanitize !9

bb.mm:                                            ; preds = %bb.ml
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @184, i64 %i.bhp) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.mn:                                            ; preds = %bb.ml
  %i.bht = getelementptr inbounds nuw i8, ptr %i.bhg, i64 24
  %i.bhu = getelementptr inbounds nuw i8, ptr %i.bhg, i64 32
  %i.bhv = load i32, ptr %i.bhu, align 8, !tbaa !130 ; 2 uses
  %i.bhw = load ptr, ptr %i.bht, align 8, !tbaa !158
  %.fr9055 = freeze ptr %i.bhw                    ; 3 uses
  %i.bhx = icmp sgt i32 %i.bhv, 0
  br i1 %i.bhx, label %.lr.ph8819, label %._crit_edge8820.split.us

.lr.ph8819:                                       ; preds = %bb.mn
  %i.bhy = ptrtoint ptr %.fr9055 to i64, !nosanitize !9 ; 3 uses
  %.not9056 = icmp eq ptr %.fr9055, null, !nosanitize !9
  br i1 %.not9056, label %.split8826, label %.lr.ph8819.split.split.us.preheader, !prof !97

.lr.ph8819.split.split.us.preheader:              ; preds = %.lr.ph8819
  %wide.trip.count14262 = zext nneg i32 %i.bhv to i64
  br label %.lr.ph8819.split.split.us

.lr.ph8819.split.split.us:                        ; preds = %.lr.ph8819.split.split.us.preheader, %bb.nc
  %indvars.iv14259 = phi i64 [ 0, %.lr.ph8819.split.split.us.preheader ], [ %indvars.iv.next14260, %bb.nc ] ; 3 uses
  %i.bhz = getelementptr inbounds nuw [8 x i8], ptr %.fr9055, i64 %indvars.iv14259 ; 2 uses
  %i.bia = shl nuw nsw i64 %indvars.iv14259, 3
  %i.bib = add i64 %i.bia, %i.bhy, !nosanitize !9 ; 2 uses
  %.not9057 = icmp ult i64 %i.bib, %i.bhy, !nosanitize !9
  br i1 %.not9057, label %.split8822.us, label %bb.mo, !prof !97, !nosanitize !9

bb.mo:                                            ; preds = %.lr.ph8819.split.split.us
  %i.bic = ptrtoint ptr %i.bhz to i64, !nosanitize !9 ; 2 uses
  %i.bid = and i64 %i.bic, 3, !nosanitize !9
  %i.bie = icmp eq i64 %i.bid, 0, !nosanitize !9
  br i1 %i.bie, label %bb.mp, label %.split8826, !prof !10, !nosanitize !9

bb.mp:                                            ; preds = %bb.mo
  %i.bif = load i64, ptr %i.bhz, align 4, !tbaa !103 ; 5 uses
  %.sroa.4.0.extract.shift.us = lshr i64 %i.bif, 32
  %.sroa.4.0.extract.trunc.us = trunc nuw i64 %.sroa.4.0.extract.shift.us to i32
  %i.big = load ptr, ptr %i.avw, align 8, !tbaa !136 ; 4 uses
  %sext.us = shl i64 %i.bif, 32
  %i.bih = ashr exact i64 %sext.us, 32            ; 2 uses
  %i.bii = getelementptr inbounds [232 x i8], ptr %i.big, i64 %i.bih ; 2 uses
  %i.bij = mul nsw i64 %i.bih, 232
  %i.bik = ptrtoint ptr %i.big to i64, !nosanitize !9 ; 6 uses
  %i.bil = add i64 %i.bij, %i.bik, !nosanitize !9 ; 3 uses
  %i.bim = icmp ne ptr %i.big, null, !nosanitize !9 ; 3 uses
  %i.bin = icmp eq i64 %i.bil, 0
  %i.bio = xor i1 %i.bim, %i.bin
  %i.bip = icmp uge i64 %i.bil, %i.bik, !nosanitize !9
  %i.biq = and i64 %i.bif, 2147483648
  %i.bir = icmp ne i64 %i.biq, 0
  %i.bis = xor i1 %i.bir, %i.bip
  %i.bit = and i1 %i.bio, %i.bis, !nosanitize !9
  br i1 %i.bit, label %bb.mq, label %.split8874.us, !prof !10, !nosanitize !9

bb.mq:                                            ; preds = %bb.mp
  %i.biu = ashr i64 %i.bif, 32                    ; 2 uses
  %i.biv = getelementptr inbounds [232 x i8], ptr %i.big, i64 %i.biu ; 2 uses
  %i.biw = mul nsw i64 %i.biu, 232
  %i.bix = add i64 %i.biw, %i.bik, !nosanitize !9 ; 3 uses
  %i.biy = icmp eq i64 %i.bix, 0
  %i.biz = xor i1 %i.bim, %i.biy
  %i.bja = icmp uge i64 %i.bix, %i.bik, !nosanitize !9
  %i.bjb = icmp slt i64 %i.bif, 0
  %i.bjc = xor i1 %i.bjb, %i.bja
  %i.bjd = and i1 %i.biz, %i.bjc, !nosanitize !9
  br i1 %i.bjd, label %bb.mr, label %.split8878.us, !prof !10, !nosanitize !9

bb.mr:                                            ; preds = %bb.mq
  %i.bje = ptrtoint ptr %i.bii to i64, !nosanitize !9 ; 2 uses
  %i.bjf = and i64 %i.bje, 7, !nosanitize !9
  %i.bjg = icmp eq i64 %i.bjf, 0, !nosanitize !9
  %i.bjh = and i1 %i.bim, %i.bjg
  br i1 %i.bjh, label %bb.ms, label %.split8882.us, !prof !10, !nosanitize !9

bb.ms:                                            ; preds = %bb.mr
  %i.bji = load ptr, ptr %i.bgz, align 8, !tbaa !300 ; 3 uses
  %i.bjj = getelementptr inbounds nuw i8, ptr %i.bii, i64 16
  %i.bjk = load i32, ptr %i.bjj, align 8, !tbaa !159 ; 2 uses
  %i.bjl = sext i32 %i.bjk to i64                 ; 2 uses
end_hunk_1
begin_hunk_2_@b3InitColorStages:bb.a
  unreachable, !nosanitize !9
}

declare float @b3GetMillisecondsAndReset(ptr noundef) local_unnamed_addr #3

declare void @b3SetBitCountAndClear(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define internal void @b3SolverTask(ptr noundef %0) #7 !func_sanitize !327 {
bb.a:
  %i.a = alloca i64, align 8                      ; 11 uses
  %i.b = icmp ne ptr %0, null, !nosanitize !9
  %i.c = ptrtoint ptr %0 to i64, !nosanitize !9   ; 2 uses
  %i.d = and i64 %i.c, 7, !nosanitize !9
  %i.e = icmp eq i64 %i.d, 0, !nosanitize !9
  %i.f = and i1 %i.b, %i.e, !nosanitize !9
  br i1 %i.f, label %bb.c, label %bb.b, !prof !10, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @235, i64 %i.c) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !129  ; 2 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !128    ; 37 uses
  %i.j = icmp ne ptr %i.i, null, !nosanitize !9
  %i.k = ptrtoint ptr %i.i to i64, !nosanitize !9 ; 2 uses
  %i.l = and i64 %i.k, 7, !nosanitize !9
  %i.m = icmp eq i64 %i.l, 0, !nosanitize !9
  %i.n = and i1 %i.j, %i.m, !nosanitize !9
  br i1 %i.n, label %bb.e, label %bb.d, !prof !10, !nosanitize !9

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @236, i64 %i.k) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 192
  %i.p = load i32, ptr %i.o, align 8, !tbaa !116
  %.fr = freeze i32 %i.p                          ; 18 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 200
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !118  ; 19 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !160  ; 10 uses
  %i.u = icmp ne ptr %i.t, null, !nosanitize !9
  %i.v = ptrtoint ptr %i.t to i64, !nosanitize !9 ; 2 uses
  %i.w = and i64 %i.v, 7, !nosanitize !9
  %i.x = icmp eq i64 %i.w, 0, !nosanitize !9
  %i.y = and i1 %i.u, %i.x, !nosanitize !9
  br i1 %i.y, label %bb.g, label %bb.f, !prof !10, !nosanitize !9

bb.f:                                             ; preds = %bb.e
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @238, i64 %i.v) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.g:                                             ; preds = %bb.e
  %i.z = icmp eq i32 %i.h, 0
  br i1 %i.z, label %b3AtomicCompareExchangeInt.exit, label %.preheader218

.preheader218:                                    ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 280 ; 2 uses
  %i.ab = ptrtoint ptr %i.r to i64                ; 3 uses
  %i.ac = icmp ne ptr %i.r, null
  br label %b3AtomicLoadU32.exit.lr.ph.us

b3AtomicLoadU32.exit.lr.ph.us:                    ; preds = %bb.k, %.preheader218
  %.0163707.us = phi i32 [ 0, %.preheader218 ], [ %.lcssa695.us.us, %bb.k ] ; 2 uses
  %i.ad = load atomic i32, ptr %i.aa seq_cst, align 8 ; 2 uses
  %i.ae = icmp eq i32 %i.ad, %.0163707.us
  br i1 %i.ae, label %.lr.ph.us, label %.split.us.us

.lr.ph.us:                                        ; preds = %b3AtomicLoadU32.exit.lr.ph.us, %b3AtomicLoadU32.exit.us.us
  %.0698.us705.us = phi i32 [ %.1.us.us, %b3AtomicLoadU32.exit.us.us ], [ 0, %b3AtomicLoadU32.exit.lr.ph.us ] ; 2 uses
  %i.af = icmp sgt i32 %.0698.us705.us, 5
  br i1 %i.af, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.us
  tail call void asm sideeffect "pause\0A", "~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !161
  tail call void asm sideeffect "pause\0A", "~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !161
  %i.ag = add nsw i32 %.0698.us705.us, 1
  br label %b3AtomicLoadU32.exit.us.us

bb.i:                                             ; preds = %.lr.ph.us
  tail call void @b3Yield() #13
  br label %b3AtomicLoadU32.exit.us.us

b3AtomicLoadU32.exit.us.us:                       ; preds = %bb.i, %bb.h
  %.1.us.us = phi i32 [ 0, %bb.i ], [ %i.ag, %bb.h ]
  %i.ah = load atomic i32, ptr %i.aa seq_cst, align 8 ; 2 uses
  %i.ai = icmp eq i32 %i.ah, %.0163707.us
  br i1 %i.ai, label %.lr.ph.us, label %.split.us.us

.split.us.us:                                     ; preds = %b3AtomicLoadU32.exit.us.us, %b3AtomicLoadU32.exit.lr.ph.us
  %.lcssa695.us.us = phi i32 [ %i.ad, %b3AtomicLoadU32.exit.lr.ph.us ], [ %i.ah, %b3AtomicLoadU32.exit.us.us ] ; 4 uses
  %i.aj = icmp eq i32 %.lcssa695.us.us, -1
  br i1 %i.aj, label %.thread, label %bb.j

bb.j:                                             ; preds = %.split.us.us
  %i.ak = and i32 %.lcssa695.us.us, 65535
  %i.al = zext nneg i32 %i.ak to i64              ; 2 uses
  %i.am = mul nuw nsw i64 %i.al, 24
  %i.an = add i64 %i.am, %i.ab, !nosanitize !9    ; 3 uses
  %i.ao = icmp eq i64 %i.an, 0
  %i.ap = xor i1 %i.ac, %i.ao
  %i.aq = icmp uge i64 %i.an, %i.ab, !nosanitize !9
  %i.ar = and i1 %i.aq, %i.ap, !nosanitize !9
  br i1 %i.ar, label %bb.k, label %.split710.us, !prof !10, !nosanitize !9

bb.k:                                             ; preds = %bb.j
  %i.as = lshr i32 %.lcssa695.us.us, 16           ; 2 uses
  %i.at = add nsw i32 %i.as, -1
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %i.al
  tail call fastcc void @b3ExecuteStage(ptr noundef %i.au, ptr noundef %i.i, i32 noundef %i.at, i32 noundef %i.as, i32 noundef %i.h)
  br label %b3AtomicLoadU32.exit.lr.ph.us

b3AtomicCompareExchangeInt.exit:                  ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %i.i, i64 348
  %i.aw = cmpxchg ptr %i.av, i32 0, i32 1 seq_cst seq_cst, align 4
  %i.ax = extractvalue { i32, i1 } %i.aw, 1
  br i1 %i.ax, label %bb.l, label %.thread

bb.l:                                             ; preds = %b3AtomicCompareExchangeInt.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.ay = tail call i64 @b3GetTicks() #13
  store i64 %i.ay, ptr %i.a, align 8, !tbaa !80
  %i.az = ptrtoint ptr %i.r to i64, !nosanitize !9 ; 28 uses
  %i.ba = icmp ne ptr %i.r, null, !nosanitize !9
  tail call fastcc void @b3ExecuteMainStage(ptr noundef %i.r, ptr noundef %i.i, i32 noundef 65536)
  %i.bb = add i64 %i.az, 24, !nosanitize !9       ; 2 uses
  %i.bc = icmp ne i64 %i.bb, 0
  %i.bd = icmp ult ptr %i.r, inttoptr (i64 -24 to ptr)
  %i.be = and i1 %i.bd, %i.bc
  %i.bf = and i1 %i.ba, %i.be
  br i1 %i.bf, label %bb.n, label %bb.m, !prof !10, !nosanitize !9

bb.m:                                             ; preds = %bb.l
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @239, i64 %i.az, i64 %i.bb) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.n:                                             ; preds = %bb.l
  %i.bg = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  tail call fastcc void @b3ExecuteMainStage(ptr noundef nonnull %i.bg, ptr noundef %i.i, i32 noundef 65537)
  %i.bh = add i64 %i.az, 48, !nosanitize !9       ; 2 uses
  %i.bi = icmp ne i64 %i.bh, 0
  %i.bj = icmp ult ptr %i.r, inttoptr (i64 -48 to ptr)
  %i.bk = and i1 %i.bj, %i.bi
  br i1 %i.bk, label %bb.p, label %bb.o, !prof !10, !nosanitize !9

bb.o:                                             ; preds = %bb.n
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @240, i64 %i.az, i64 %i.bh) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.p:                                             ; preds = %bb.n
  %i.bl = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  tail call fastcc void @b3ExecuteMainStage(ptr noundef nonnull %i.bl, ptr noundef %i.i, i32 noundef 65538)
  tail call void @b3PrepareJoints_Overflow(ptr noundef nonnull %i.i) #13
  tail call void @b3PrepareContacts_Overflow(ptr noundef nonnull %i.i) #13
  %i.bm = call float @b3GetMillisecondsAndReset(ptr noundef nonnull %i.a) #13
  %i.bn = getelementptr inbounds nuw i8, ptr %i.t, i64 4516 ; 2 uses
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !328
  %i.bp = fadd float %i.bm, %i.bo
  store float %i.bp, ptr %i.bn, align 4, !tbaa !328
  %i.bq = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !329 ; 2 uses
  %i.bs = icmp sgt i32 %i.br, 0
  br i1 %i.bs, label %.lr.ph836, label %._crit_edge837

.lr.ph836:                                        ; preds = %bb.p
  %i.bt = add i64 %i.az, 72, !nosanitize !9       ; 2 uses
  %i.bu = icmp ne i64 %i.bt, 0
  %i.bv = icmp ult ptr %i.r, inttoptr (i64 -72 to ptr)
  %i.bw = and i1 %i.bv, %i.bu
  %i.bx = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  %i.by = getelementptr inbounds nuw i8, ptr %i.t, i64 4520 ; 2 uses
  %i.bz = icmp sgt i32 %.fr, 0                    ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.i, i64 280 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.t, i64 4524 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.t, i64 4528 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.t, i64 4532 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.t, i64 4536 ; 2 uses
  br i1 %i.bw, label %.lr.ph836.split.us.split.us.preheader, label %.lr.ph836.split, !prof !10, !nosanitize !9

.lr.ph836.split.us.split.us.preheader:            ; preds = %.lr.ph836
  %i.cf = add i32 %.fr, 4
  %smax = call i32 @llvm.smax.i32(i32 %.fr, i32 0) ; 2 uses
  %i.cg = sub nsw i32 2147483643, %smax
  br label %bb.q

bb.q:                                             ; preds = %bb.ak, %.lr.ph836.split.us.split.us.preheader
  %.0175834.us.us = phi i32 [ %i.hg, %bb.ak ], [ 0, %.lr.ph836.split.us.split.us.preheader ]
  %.0176833.us.us = phi i32 [ %i.hc, %bb.ak ], [ 1, %.lr.ph836.split.us.split.us.preheader ] ; 5 uses
  %.0181832.us.us = phi i32 [ %i.fq, %bb.ak ], [ 1, %.lr.ph836.split.us.split.us.preheader ] ; 4 uses
  %i.ch = shl nuw nsw i32 %.0181832.us.us, 16
  %i.ci = or disjoint i32 %i.ch, 3
  call fastcc void @b3ExecuteMainStage(ptr noundef nonnull %i.bx, ptr noundef %i.i, i32 noundef %i.ci)
  %i.cj = call float @b3GetMillisecondsAndReset(ptr noundef nonnull %i.a) #13
  %i.ck = load float, ptr %i.by, align 8, !tbaa !330
  %i.cl = fadd float %i.cj, %i.ck
  store float %i.cl, ptr %i.by, align 8, !tbaa !330
  call void @b3WarmStartJoints_Overflow(ptr noundef nonnull %i.i) #13
  call void @b3WarmStartContacts_Overflow(ptr noundef nonnull %i.i) #13
  br i1 %i.bz, label %.lr.ph.us839.us, label %._crit_edge717.us.us

.lr.ph.us839.us:                                  ; preds = %bb.q
  %i.cm = icmp ult i32 %.0176833.us.us, 32768
  %i.cn = shl nuw nsw i32 %.0176833.us.us, 16
  br i1 %i.cm, label %.lr.ph.split.us.us, label %.split858.us, !prof !10, !nosanitize !9

.lr.ph.split.us.us:                               ; preds = %.lr.ph.us839.us, %bb.v
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.v ], [ 4, %.lr.ph.us839.us ] ; 4 uses
  %.0172715.us.us = phi i32 [ %i.dk, %bb.v ], [ 0, %.lr.ph.us839.us ] ; 2 uses
  %i.co = mul nuw nsw i64 %indvars.iv, 24
  %i.cp = add i64 %i.co, %i.az, !nosanitize !9    ; 2 uses
  %.not1087 = icmp ult i64 %i.cp, %i.az, !nosanitize !9
  br i1 %.not1087, label %.split861.us, label %bb.r, !prof !97, !nosanitize !9

bb.r:                                             ; preds = %.lr.ph.split.us.us
  %i.cq = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %indvars.iv ; 6 uses
  %i.cr = trunc nuw nsw i64 %indvars.iv to i32
  %i.cs = or i32 %i.cn, %i.cr                     ; 2 uses
  %i.ct = ptrtoint ptr %i.cq to i64, !nosanitize !9 ; 2 uses
  %i.cu = and i64 %i.ct, 7, !nosanitize !9
  %i.cv = icmp eq i64 %i.cu, 0, !nosanitize !9
  br i1 %i.cv, label %bb.s, label %.split864.us, !prof !10, !nosanitize !9

bb.s:                                             ; preds = %bb.r
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cq, i64 12
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !113 ; 3 uses
  switch i32 %i.cx, label %b3AtomicStoreU32.exit.i.us.us [
    i32 0, label %b3ExecuteMainStage.exit.us.us
    i32 1, label %bb.t
  ]

bb.t:                                             ; preds = %bb.s
  %i.cy = load ptr, ptr %i.cq, align 8, !tbaa !112 ; 3 uses
  %i.cz = icmp ne ptr %i.cy, null, !nosanitize !9
  %i.da = ptrtoint ptr %i.cy to i64, !nosanitize !9 ; 2 uses
  %i.db = and i64 %i.da, 3, !nosanitize !9
  %i.dc = icmp eq i64 %i.db, 0, !nosanitize !9
  %i.dd = and i1 %i.cz, %i.dc, !nosanitize !9
  br i1 %i.dd, label %bb.u, label %.split870.us, !prof !10, !nosanitize !9

bb.u:                                             ; preds = %bb.t
  %i.de = load i64, ptr %i.cy, align 4
  call fastcc void @b3ExecuteBlock(ptr noundef nonnull %i.cq, ptr noundef nonnull %i.i, i64 %i.de, i32 noundef 0)
  br label %b3ExecuteMainStage.exit.us.us

b3AtomicStoreU32.exit.i.us.us:                    ; preds = %bb.s
  store atomic i32 %i.cs, ptr %i.ca seq_cst, align 8
  %i.df = lshr i32 %i.cs, 16                      ; 2 uses
  %i.dg = add nsw i32 %i.df, -1
  call fastcc void @b3ExecuteStage(ptr noundef nonnull %i.cq, ptr noundef nonnull %i.i, i32 noundef %i.dg, i32 noundef %i.df, i32 noundef 0)
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cq, i64 20 ; 3 uses
  %i.di = load atomic i32, ptr %i.dh seq_cst, align 4
  %.not.us21.i.us.us = icmp eq i32 %i.di, %i.cx
  br i1 %.not.us21.i.us.us, label %b3AtomicStoreInt.exit.i.us.us, label %b3AtomicLoadInt.exit.us.i.us.us

b3AtomicLoadInt.exit.us.i.us.us:                  ; preds = %b3AtomicStoreU32.exit.i.us.us, %b3AtomicLoadInt.exit.us.i.us.us
  call void asm sideeffect "pause\0A", "~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !161
  %i.dj = load atomic i32, ptr %i.dh seq_cst, align 4
  %.not.us.i.us.us = icmp eq i32 %i.dj, %i.cx
  br i1 %.not.us.i.us.us, label %b3AtomicStoreInt.exit.i.us.us, label %b3AtomicLoadInt.exit.us.i.us.us

b3AtomicStoreInt.exit.i.us.us:                    ; preds = %b3AtomicLoadInt.exit.us.i.us.us, %b3AtomicStoreU32.exit.i.us.us
  store atomic i32 0, ptr %i.dh seq_cst, align 4
  br label %b3ExecuteMainStage.exit.us.us

b3ExecuteMainStage.exit.us.us:                    ; preds = %b3AtomicStoreInt.exit.i.us.us, %bb.u, %bb.s
  %exitcond = icmp eq i32 %.0172715.us.us, 2147483643
  br i1 %exitcond, label %.split879.us, label %bb.v, !prof !97, !nosanitize !9

bb.v:                                             ; preds = %b3ExecuteMainStage.exit.us.us
  %i.dk = add nuw nsw i32 %.0172715.us.us, 1      ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond1619.not = icmp eq i32 %i.dk, %.fr
  br i1 %exitcond1619.not, label %._crit_edge717.us.us, label %.lr.ph.split.us.us, !llvm.loop !322

._crit_edge717.us.us:                             ; preds = %bb.v, %bb.q
  %.0173.lcssa.us.us = phi i32 [ 4, %bb.q ], [ %i.cf, %bb.v ] ; 3 uses
  %i.dl = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.0176833.us.us, i32 1), !nosanitize !9 ; 2 uses
  %i.dm = extractvalue { i32, i1 } %i.dl, 1, !nosanitize !9
  br i1 %i.dm, label %.split882.us, label %bb.w, !prof !97, !nosanitize !9

bb.w:                                             ; preds = %._crit_edge717.us.us
  %i.dn = call float @b3GetMillisecondsAndReset(ptr noundef nonnull %i.a) #13
  %i.do = load float, ptr %i.cb, align 4, !tbaa !331
  %i.dp = fadd float %i.dn, %i.do
  store float %i.dp, ptr %i.cb, align 4, !tbaa !331
  %.1177.us.us.us = extractvalue { i32, i1 } %i.dl, 0 ; 6 uses
  call void @b3SolveJoints_Overflow(ptr noundef nonnull %i.i, i1 noundef zeroext true) #13
  call void @b3SolveContacts_Overflow(ptr noundef nonnull %i.i, i1 noundef zeroext true) #13
  br i1 %i.bz, label %.split756.us.us.us.preheader, label %.split756.us840.us.preheader

.split756.us840.us.preheader:                     ; preds = %bb.w
  %i.dq = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.1177.us.us.us, i32 1), !nosanitize !9 ; 2 uses
  %i.dr = extractvalue { i32, i1 } %i.dq, 1, !nosanitize !9
  br i1 %i.dr, label %.split790.us, label %.split764.us843.us.loopexit1113, !prof !332, !nosanitize !9

.split756.us.us.us.preheader:                     ; preds = %bb.w
  %i.ds = icmp ult i32 %.1177.us.us.us, 32768
  %i.dt = shl nuw nsw i32 %.1177.us.us.us, 16
  br i1 %i.ds, label %.lr.ph722.split.us.us.us, label %.split768.us, !prof !10, !nosanitize !9

.lr.ph722.split.us.us.us:                         ; preds = %.split756.us.us.us.preheader
  %i.du = sext i32 %.0173.lcssa.us.us to i64
  br label %.lr.ph722.split.split.us.us.us.us

.lr.ph722.split.split.us.us.us.us:                ; preds = %.lr.ph722.split.us.us.us, %bb.ab
  %indvars.iv1625 = phi i64 [ %indvars.iv.next1626, %bb.ab ], [ %i.du, %.lr.ph722.split.us.us.us ] ; 6 uses
  %.0170720.us.us.us.us = phi i32 [ %i.ew, %bb.ab ], [ 0, %.lr.ph722.split.us.us.us ] ; 2 uses
  %i.dv = mul nsw i64 %indvars.iv1625, 24
  %i.dw = add i64 %i.dv, %i.az, !nosanitize !9    ; 3 uses
  %i.dx = icmp ne i64 %i.dw, 0
  %i.dy = icmp uge i64 %i.dw, %i.az, !nosanitize !9
  %i.dz = icmp slt i64 %indvars.iv1625, 0
  %i.ea = xor i1 %i.dz, %i.dy
  %i.eb = and i1 %i.dx, %i.ea, !nosanitize !9
  br i1 %i.eb, label %bb.x, label %.split726.us, !prof !10, !nosanitize !9

bb.x:                                             ; preds = %.lr.ph722.split.split.us.us.us.us
  %i.ec = getelementptr inbounds [24 x i8], ptr %i.r, i64 %indvars.iv1625 ; 6 uses
  %i.ed = trunc nsw i64 %indvars.iv1625 to i32
  %i.ee = or i32 %i.dt, %i.ed                     ; 2 uses
  %i.ef = ptrtoint ptr %i.ec to i64, !nosanitize !9 ; 2 uses
  %i.eg = and i64 %i.ef, 7, !nosanitize !9
  %i.eh = icmp eq i64 %i.eg, 0, !nosanitize !9
  br i1 %i.eh, label %bb.y, label %.split729.us, !prof !10, !nosanitize !9

bb.y:                                             ; preds = %bb.x
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ec, i64 12
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !113 ; 3 uses
  switch i32 %i.ej, label %b3AtomicStoreU32.exit.i195.us.us.us.us [
    i32 0, label %b3ExecuteMainStage.exit201.us.us.us.us
    i32 1, label %bb.z
  ]

bb.z:                                             ; preds = %bb.y
  %i.ek = load ptr, ptr %i.ec, align 8, !tbaa !112 ; 3 uses
  %i.el = icmp ne ptr %i.ek, null, !nosanitize !9
  %i.em = ptrtoint ptr %i.ek to i64, !nosanitize !9 ; 2 uses
  %i.en = and i64 %i.em, 3, !nosanitize !9
  %i.eo = icmp eq i64 %i.en, 0, !nosanitize !9
  %i.ep = and i1 %i.el, %i.eo, !nosanitize !9
  br i1 %i.ep, label %bb.aa, label %.split735.us, !prof !10, !nosanitize !9

bb.aa:                                            ; preds = %bb.z
  %i.eq = load i64, ptr %i.ek, align 4
  call fastcc void @b3ExecuteBlock(ptr noundef nonnull %i.ec, ptr noundef nonnull %i.i, i64 %i.eq, i32 noundef 0)
  br label %b3ExecuteMainStage.exit201.us.us.us.us

b3AtomicStoreU32.exit.i195.us.us.us.us:           ; preds = %bb.y
  store atomic i32 %i.ee, ptr %i.ca seq_cst, align 8
  %i.er = lshr i32 %i.ee, 16                      ; 2 uses
  %i.es = add nsw i32 %i.er, -1
  call fastcc void @b3ExecuteStage(ptr noundef nonnull %i.ec, ptr noundef nonnull %i.i, i32 noundef %i.es, i32 noundef %i.er, i32 noundef 0)
  %i.et = getelementptr inbounds nuw i8, ptr %i.ec, i64 20 ; 3 uses
  %i.eu = load atomic i32, ptr %i.et seq_cst, align 4
  %.not.us21.i197.us.us.us.us = icmp eq i32 %i.eu, %i.ej
  br i1 %.not.us21.i197.us.us.us.us, label %b3AtomicStoreInt.exit.i200.us.us.us.us, label %b3AtomicLoadInt.exit.us.i198.us.us.us.us

b3AtomicLoadInt.exit.us.i198.us.us.us.us:         ; preds = %b3AtomicStoreU32.exit.i195.us.us.us.us, %b3AtomicLoadInt.exit.us.i198.us.us.us.us
  call void asm sideeffect "pause\0A", "~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !161
  %i.ev = load atomic i32, ptr %i.et seq_cst, align 4
  %.not.us.i199.us.us.us.us = icmp eq i32 %i.ev, %i.ej
  br i1 %.not.us.i199.us.us.us.us, label %b3AtomicStoreInt.exit.i200.us.us.us.us, label %b3AtomicLoadInt.exit.us.i198.us.us.us.us

b3AtomicStoreInt.exit.i200.us.us.us.us:           ; preds = %b3AtomicLoadInt.exit.us.i198.us.us.us.us, %b3AtomicStoreU32.exit.i195.us.us.us.us
  store atomic i32 0, ptr %i.et seq_cst, align 4
  br label %b3ExecuteMainStage.exit201.us.us.us.us

b3ExecuteMainStage.exit201.us.us.us.us:           ; preds = %b3AtomicStoreInt.exit.i200.us.us.us.us, %bb.aa, %bb.y
  %exitcond1632 = icmp eq i32 %.0170720.us.us.us.us, %i.cg
  br i1 %exitcond1632, label %.split741.us, label %bb.ab, !prof !97, !nosanitize !9

bb.ab:                                            ; preds = %b3ExecuteMainStage.exit201.us.us.us.us
  %i.ew = add nuw nsw i32 %.0170720.us.us.us.us, 1 ; 2 uses
  %indvars.iv.next1626 = add nsw i64 %indvars.iv1625, 1
  %exitcond1628.not = icmp eq i32 %i.ew, %.fr
  br i1 %exitcond1628.not, label %.split764.us843.us.loopexit, label %.lr.ph722.split.split.us.us.us.us, !llvm.loop !323

.split764.us843.us.loopexit:                      ; preds = %bb.ab
  %.us-phi727.us.us.us = add i32 %.fr, %.0173.lcssa.us.us
  %i.ex = add nuw nsw i32 %.1177.us.us.us, 1
  br label %.split764.us843.us

.split764.us843.us.loopexit1113:                  ; preds = %.split756.us840.us.preheader
  %.1177.us842.us.1 = extractvalue { i32, i1 } %i.dq, 0
  br label %.split764.us843.us

.split764.us843.us:                               ; preds = %.split764.us843.us.loopexit1113, %.split764.us843.us.loopexit
  %.us-phi765.us.us = phi i32 [ %.us-phi727.us.us.us, %.split764.us843.us.loopexit ], [ %.0173.lcssa.us.us, %.split764.us843.us.loopexit1113 ] ; 5 uses
  %.us-phi766.us.us = phi i32 [ %i.ex, %.split764.us843.us.loopexit ], [ %.1177.us842.us.1, %.split764.us843.us.loopexit1113 ] ; 4 uses
  %i.ey = call float @b3GetMillisecondsAndReset(ptr noundef nonnull %i.a) #13
  %i.ez = load float, ptr %i.cc, align 8, !tbaa !333
  %i.fa = fadd float %i.ey, %i.ez
  store float %i.fa, ptr %i.cc, align 8, !tbaa !333
  %.not194.us.us = icmp eq i32 %.0181832.us.us, 32767
  br i1 %.not194.us.us, label %.split907.us, label %bb.ac, !prof !97, !nosanitize !9

bb.ac:                                            ; preds = %.split764.us843.us
  %i.fb = sext i32 %.us-phi765.us.us to i64       ; 2 uses
  %i.fc = mul nsw i64 %i.fb, 24
  %i.fd = add i64 %i.fc, %i.az, !nosanitize !9    ; 2 uses
  %i.fe = icmp ne i64 %i.fd, 0
  %i.ff = icmp uge i64 %i.fd, %i.az, !nosanitize !9
  %i.fg = icmp slt i32 %.us-phi765.us.us, 0
  %i.fh = xor i1 %i.fg, %i.ff
  %i.fi = and i1 %i.fe, %i.fh, !nosanitize !9
  br i1 %i.fi, label %bb.ad, label %.split910.us, !prof !10, !nosanitize !9

bb.ad:                                            ; preds = %bb.ac
  %i.fj = getelementptr inbounds [24 x i8], ptr %i.r, i64 %i.fb
  %i.fk = shl i32 %.0181832.us.us, 16
  %i.fl = add i32 %i.fk, 65536
  %i.fm = or i32 %.us-phi765.us.us, %i.fl
  call fastcc void @b3ExecuteMainStage(ptr noundef nonnull %i.fj, ptr noundef %i.i, i32 noundef %i.fm)
  %i.fn = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.us-phi765.us.us, i32 1), !nosanitize !9 ; 2 uses
  %i.fo = extractvalue { i32, i1 } %i.fn, 0, !nosanitize !9 ; 2 uses
  %i.fp = extractvalue { i32, i1 } %i.fn, 1, !nosanitize !9
  br i1 %i.fp, label %.split913.us, label %bb.ae, !prof !97, !nosanitize !9

bb.ae:                                            ; preds = %bb.ad
  %i.fq = add nuw nsw i32 %.0181832.us.us, 2
  %i.fr = call float @b3GetMillisecondsAndReset(ptr noundef nonnull %i.a) #13
  %i.fs = load float, ptr %i.cd, align 4, !tbaa !334
  %i.ft = fadd float %i.fr, %i.fs
  store float %i.ft, ptr %i.cd, align 4, !tbaa !334
  call void @b3SolveJoints_Overflow(ptr noundef nonnull %i.i, i1 noundef zeroext false) #13
  call void @b3SolveContacts_Overflow(ptr noundef nonnull %i.i, i1 noundef zeroext false) #13
  br i1 %i.bz, label %.lr.ph796.us.us, label %._crit_edge797.us.us

.lr.ph796.us.us:                                  ; preds = %bb.ae
  %i.fu = icmp ult i32 %.us-phi766.us.us, 32768
  %i.fv = shl nuw nsw i32 %.us-phi766.us.us, 16
  br i1 %i.fu, label %.lr.ph796.split.us.us, label %.split919.us, !prof !10, !nosanitize !9

.lr.ph796.split.us.us:                            ; preds = %.lr.ph796.us.us
  %i.fw = sext i32 %i.fo to i64
  %i.fx = sub i32 2147483647, %i.fo
  br label %.lr.ph796.split.split.us.us.us

.lr.ph796.split.split.us.us.us:                   ; preds = %.lr.ph796.split.us.us, %bb.aj
  %indvars.iv1638 = phi i64 [ %indvars.iv.next1639, %bb.aj ], [ %i.fw, %.lr.ph796.split.us.us ] ; 6 uses
  %.0168794.us.us.us = phi i32 [ %i.gz, %bb.aj ], [ 0, %.lr.ph796.split.us.us ] ; 2 uses
  %i.fy = mul nsw i64 %indvars.iv1638, 24
  %i.fz = add i64 %i.fy, %i.az, !nosanitize !9    ; 3 uses
  %i.ga = icmp ne i64 %i.fz, 0
  %i.gb = icmp uge i64 %i.fz, %i.az, !nosanitize !9
  %i.gc = icmp slt i64 %indvars.iv1638, 0
  %i.gd = xor i1 %i.gc, %i.gb
  %i.ge = and i1 %i.ga, %i.gd, !nosanitize !9
  br i1 %i.ge, label %bb.af, label %.split800.us, !prof !10, !nosanitize !9

bb.af:                                            ; preds = %.lr.ph796.split.split.us.us.us
  %i.gf = getelementptr inbounds [24 x i8], ptr %i.r, i64 %indvars.iv1638 ; 6 uses
  %i.gg = trunc nsw i64 %indvars.iv1638 to i32
  %i.gh = or i32 %i.fv, %i.gg                     ; 2 uses
  %i.gi = ptrtoint ptr %i.gf to i64, !nosanitize !9 ; 2 uses
  %i.gj = and i64 %i.gi, 7, !nosanitize !9
  %i.gk = icmp eq i64 %i.gj, 0, !nosanitize !9
  br i1 %i.gk, label %bb.ag, label %.split804.us, !prof !10, !nosanitize !9

bb.ag:                                            ; preds = %bb.af
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gf, i64 12
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !113 ; 3 uses
  switch i32 %i.gm, label %b3AtomicStoreU32.exit.i202.us.us.us [
    i32 0, label %b3ExecuteMainStage.exit208.us.us.us
    i32 1, label %bb.ah
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.gn = load ptr, ptr %i.gf, align 8, !tbaa !112 ; 3 uses
  %i.go = icmp ne ptr %i.gn, null, !nosanitize !9
  %i.gp = ptrtoint ptr %i.gn to i64, !nosanitize !9 ; 2 uses
  %i.gq = and i64 %i.gp, 3, !nosanitize !9
  %i.gr = icmp eq i64 %i.gq, 0, !nosanitize !9
  %i.gs = and i1 %i.go, %i.gr, !nosanitize !9
  br i1 %i.gs, label %bb.ai, label %.split810.us, !prof !10, !nosanitize !9

bb.ai:                                            ; preds = %bb.ah
  %i.gt = load i64, ptr %i.gn, align 4
  call fastcc void @b3ExecuteBlock(ptr noundef nonnull %i.gf, ptr noundef nonnull %i.i, i64 %i.gt, i32 noundef 0)
  br label %b3ExecuteMainStage.exit208.us.us.us

b3AtomicStoreU32.exit.i202.us.us.us:              ; preds = %bb.ag
  store atomic i32 %i.gh, ptr %i.ca seq_cst, align 8
  %i.gu = lshr i32 %i.gh, 16                      ; 2 uses
  %i.gv = add nsw i32 %i.gu, -1
  call fastcc void @b3ExecuteStage(ptr noundef nonnull %i.gf, ptr noundef nonnull %i.i, i32 noundef %i.gv, i32 noundef %i.gu, i32 noundef 0)
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gf, i64 20 ; 3 uses
  %i.gx = load atomic i32, ptr %i.gw seq_cst, align 4
  %.not.us21.i204.us.us.us = icmp eq i32 %i.gx, %i.gm
  br i1 %.not.us21.i204.us.us.us, label %b3AtomicStoreInt.exit.i207.us.us.us, label %b3AtomicLoadInt.exit.us.i205.us.us.us

b3AtomicLoadInt.exit.us.i205.us.us.us:            ; preds = %b3AtomicStoreU32.exit.i202.us.us.us, %b3AtomicLoadInt.exit.us.i205.us.us.us
  call void asm sideeffect "pause\0A", "~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !161
  %i.gy = load atomic i32, ptr %i.gw seq_cst, align 4
  %.not.us.i206.us.us.us = icmp eq i32 %i.gy, %i.gm
  br i1 %.not.us.i206.us.us.us, label %b3AtomicStoreInt.exit.i207.us.us.us, label %b3AtomicLoadInt.exit.us.i205.us.us.us

b3AtomicStoreInt.exit.i207.us.us.us:              ; preds = %b3AtomicLoadInt.exit.us.i205.us.us.us, %b3AtomicStoreU32.exit.i202.us.us.us
  store atomic i32 0, ptr %i.gw seq_cst, align 4
  br label %b3ExecuteMainStage.exit208.us.us.us

b3ExecuteMainStage.exit208.us.us.us:              ; preds = %b3AtomicStoreInt.exit.i207.us.us.us, %bb.ai, %bb.ag
  %exitcond1641 = icmp eq i32 %.0168794.us.us.us, %i.fx
  br i1 %exitcond1641, label %.split816.us, label %bb.aj, !prof !97, !nosanitize !9

bb.aj:                                            ; preds = %b3ExecuteMainStage.exit208.us.us.us
  %i.gz = add nuw nsw i32 %.0168794.us.us.us, 1   ; 2 uses
  %indvars.iv.next1639 = add nsw i64 %indvars.iv1638, 1
  %exitcond1642.not = icmp eq i32 %i.gz, %.fr
  br i1 %exitcond1642.not, label %._crit_edge797.us.us, label %.lr.ph796.split.split.us.us.us, !llvm.loop !324

._crit_edge797.us.us:                             ; preds = %bb.aj, %bb.ae
  %i.ha = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.us-phi766.us.us, i32 1), !nosanitize !9 ; 2 uses
  %i.hb = extractvalue { i32, i1 } %i.ha, 1, !nosanitize !9
  br i1 %i.hb, label %.split941.us, label %bb.ak, !prof !332, !nosanitize !9

bb.ak:                                            ; preds = %._crit_edge797.us.us
  %i.hc = extractvalue { i32, i1 } %i.ha, 0, !nosanitize !9 ; 2 uses
  %i.hd = call float @b3GetMillisecondsAndReset(ptr noundef nonnull %i.a) #13
  %i.he = load float, ptr %i.ce, align 8, !tbaa !335
  %i.hf = fadd float %i.hd, %i.he
  store float %i.hf, ptr %i.ce, align 8, !tbaa !335
  %i.hg = add nuw nsw i32 %.0175834.us.us, 1      ; 2 uses
  %exitcond1652.not = icmp eq i32 %i.hg, %i.br
  br i1 %exitcond1652.not, label %._crit_edge837, label %bb.q, !llvm.loop !325

._crit_edge837:                                   ; preds = %bb.ak, %bb.p
  %.0176.lcssa = phi i32 [ 1, %bb.p ], [ %i.hc, %bb.ak ] ; 4 uses
  %i.hh = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.fr, i32 1), !nosanitize !9 ; 2 uses
  %i.hi = extractvalue { i32, i1 } %i.hh, 0, !nosanitize !9 ; 2 uses
  %i.hj = extractvalue { i32, i1 } %i.hh, 1, !nosanitize !9
  br i1 %i.hj, label %bb.al, label %bb.am, !prof !97, !nosanitize !9

.lr.ph836.split:                                  ; preds = %.lr.ph836
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @241, i64 %i.az, i64 %i.bt) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split858.us:                                     ; preds = %.lr.ph.us839.us
  %i.hk = zext i32 %.0176833.us.us to i64, !nosanitize !9
  call void @__ubsan_handle_shift_out_of_bounds_abort(ptr nonnull @242, i64 %i.hk, i64 16) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split861.us:                                     ; preds = %.lr.ph.split.us.us
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @243, i64 %i.az, i64 %i.cp) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split864.us:                                     ; preds = %bb.r
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @272, i64 %i.ct) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split870.us:                                     ; preds = %bb.t
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @273, i64 %i.da) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split879.us:                                     ; preds = %b3ExecuteMainStage.exit.us.us
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @244, i64 2147483647, i64 1) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split882.us:                                     ; preds = %._crit_edge717.us.us
  %i.hl = zext nneg i32 %.0176833.us.us to i64, !nosanitize !9
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @245, i64 %i.hl, i64 1) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split768.us:                                     ; preds = %.split756.us.us.us.preheader
  %i.hm = zext i32 %.1177.us.us.us to i64, !nosanitize !9
  call void @__ubsan_handle_shift_out_of_bounds_abort(ptr nonnull @246, i64 %i.hm, i64 16) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split726.us:                                     ; preds = %.lr.ph722.split.split.us.us.us.us
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @247, i64 %i.az, i64 %i.dw) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split729.us:                                     ; preds = %bb.x
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @272, i64 %i.ef) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split735.us:                                     ; preds = %bb.z
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @273, i64 %i.em) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split741.us:                                     ; preds = %b3ExecuteMainStage.exit201.us.us.us.us
  %i.hn = and i64 %indvars.iv1625, 4294967295
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @248, i64 %i.hn, i64 1) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split790.us:                                     ; preds = %.split756.us840.us.preheader
  %i.ho = zext nneg i32 %.1177.us.us.us to i64, !nosanitize !9
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @249, i64 %i.ho, i64 1) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split907.us:                                     ; preds = %.split764.us843.us
  call void @__ubsan_handle_shift_out_of_bounds_abort(ptr nonnull @250, i64 32768, i64 16) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split910.us:                                     ; preds = %bb.ac
  %i.hp = shl nuw i32 %smax, 1
  %i.hq = add i32 %i.hp, 4
  %i.hr = sext i32 %i.hq to i64
  %i.hs = mul nsw i64 %i.hr, 24
  %i.ht = add i64 %i.hs, %i.az
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @251, i64 %i.az, i64 %i.ht) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split913.us:                                     ; preds = %bb.ad
  %i.hu = zext nneg i32 %.us-phi765.us.us to i64, !nosanitize !9
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @252, i64 %i.hu, i64 1) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split919.us:                                     ; preds = %.lr.ph796.us.us
  %i.hv = zext i32 %.us-phi766.us.us to i64, !nosanitize !9
  call void @__ubsan_handle_shift_out_of_bounds_abort(ptr nonnull @253, i64 %i.hv, i64 16) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split800.us:                                     ; preds = %.lr.ph796.split.split.us.us.us
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @254, i64 %i.az, i64 %i.fz) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split804.us:                                     ; preds = %bb.af
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @272, i64 %i.gi) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split810.us:                                     ; preds = %bb.ah
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @273, i64 %i.gp) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split816.us:                                     ; preds = %b3ExecuteMainStage.exit208.us.us.us
  %i.hw = and i64 %indvars.iv1638, 4294967295
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @255, i64 %i.hw, i64 1) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split941.us:                                     ; preds = %._crit_edge797.us.us
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @256, i64 2147483647, i64 1) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.al:                                            ; preds = %._crit_edge837
  %i.hx = zext nneg i32 %.fr to i64, !nosanitize !9
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @257, i64 1, i64 %i.hx) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.am:                                            ; preds = %._crit_edge837
  %i.hy = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.hi, i32 %.fr), !nosanitize !9 ; 2 uses
  %i.hz = extractvalue { i32, i1 } %i.hy, 0, !nosanitize !9 ; 2 uses
  %i.ia = extractvalue { i32, i1 } %i.hy, 1, !nosanitize !9
  br i1 %i.ia, label %bb.an, label %bb.ao, !prof !97, !nosanitize !9

bb.an:                                            ; preds = %bb.am
  %i.ib = zext i32 %i.hi to i64, !nosanitize !9
  %i.ic = zext i32 %.fr to i64, !nosanitize !9
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @258, i64 %i.ib, i64 %i.ic) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.ao:                                            ; preds = %bb.am
  %i.id = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.hz, i32 1), !nosanitize !9 ; 2 uses
  %i.ie = extractvalue { i32, i1 } %i.id, 0, !nosanitize !9 ; 2 uses
  %i.if = extractvalue { i32, i1 } %i.id, 1, !nosanitize !9
  br i1 %i.if, label %bb.ap, label %bb.aq, !prof !97, !nosanitize !9

bb.ap:                                            ; preds = %bb.ao
  %i.ig = zext nneg i32 %i.hz to i64, !nosanitize !9
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @259, i64 %i.ig, i64 1) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.aq:                                            ; preds = %bb.ao
  %i.ih = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.ie, i32 %.fr), !nosanitize !9 ; 2 uses
  %i.ii = extractvalue { i32, i1 } %i.ih, 0, !nosanitize !9 ; 2 uses
  %i.ij = extractvalue { i32, i1 } %i.ih, 1, !nosanitize !9
  br i1 %i.ij, label %bb.ar, label %bb.as, !prof !97, !nosanitize !9

bb.ar:                                            ; preds = %bb.aq
  %i.ik = zext i32 %i.ie to i64, !nosanitize !9
  %i.il = zext i32 %.fr to i64, !nosanitize !9
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @260, i64 %i.ik, i64 %i.il) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.as:                                            ; preds = %bb.aq
  %i.im = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.ii, i32 3), !nosanitize !9 ; 3 uses
  %i.in = extractvalue { i32, i1 } %i.im, 1, !nosanitize !9
  br i1 %i.in, label %bb.ay, label %.preheader, !prof !97, !nosanitize !9

.preheader:                                       ; preds = %bb.as
  %i.io = icmp sgt i32 %.fr, 0
  %i.ip = getelementptr inbounds nuw i8, ptr %i.i, i64 280 ; 2 uses
  br i1 %i.io, label %.preheader.split.us, label %.preheader.split.preheader

.preheader.split.preheader:                       ; preds = %.preheader
  call void @b3ApplyRestitution_Overflow(ptr noundef nonnull %i.i) #13
  %i.iq = icmp eq i32 %.0176.lcssa, 2147483647
  br i1 %i.iq, label %.split1067.us, label %bb.az, !prof !97, !nosanitize !9

.preheader.split.us:                              ; preds = %.preheader
  %.0180.us.us = extractvalue { i32, i1 } %i.im, 0 ; 4 uses
  call void @b3ApplyRestitution_Overflow(ptr noundef nonnull %i.i) #13
  %i.ir = shl nuw nsw i32 %.0176.lcssa, 16
  %exitcond1676.not = icmp ugt i32 %.0176.lcssa, 32767
  br i1 %exitcond1676.not, label %.split1045.us, label %.lr.ph.split.us.us1073.preheader, !prof !97, !nosanitize !9

.lr.ph.split.us.us1073.preheader:                 ; preds = %.preheader.split.us
  %i.is = sext i32 %.0180.us.us to i64
  %i.it = sub i32 2147483647, %.0180.us.us
  br label %.lr.ph.split.us.us1073

.lr.ph.split.us.us1073:                           ; preds = %.lr.ph.split.us.us1073.preheader, %bb.ax
  %indvars.iv1670 = phi i64 [ %i.is, %.lr.ph.split.us.us1073.preheader ], [ %indvars.iv.next1671, %bb.ax ] ; 6 uses
  %.01651000.us.us.us = phi i32 [ 0, %.lr.ph.split.us.us1073.preheader ], [ %i.jv, %bb.ax ] ; 2 uses
  %i.iu = mul nsw i64 %indvars.iv1670, 24
  %i.iv = add i64 %i.iu, %i.az, !nosanitize !9    ; 3 uses
  %i.iw = icmp ne i64 %i.iv, 0
  %i.ix = icmp uge i64 %i.iv, %i.az, !nosanitize !9
  %i.iy = icmp slt i64 %indvars.iv1670, 0
  %i.iz = xor i1 %i.iy, %i.ix
  %i.ja = and i1 %i.iw, %i.iz, !nosanitize !9
  br i1 %i.ja, label %bb.at, label %.split1004.us, !prof !10, !nosanitize !9

bb.at:                                            ; preds = %.lr.ph.split.us.us1073
  %i.jb = getelementptr inbounds [24 x i8], ptr %i.r, i64 %indvars.iv1670 ; 6 uses
  %i.jc = trunc nsw i64 %indvars.iv1670 to i32
  %i.jd = or i32 %i.ir, %i.jc                     ; 2 uses
  %i.je = ptrtoint ptr %i.jb to i64, !nosanitize !9 ; 2 uses
  %i.jf = and i64 %i.je, 7, !nosanitize !9
  %i.jg = icmp eq i64 %i.jf, 0, !nosanitize !9
  br i1 %i.jg, label %bb.au, label %.split1007.us, !prof !10, !nosanitize !9

bb.au:                                            ; preds = %bb.at
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jb, i64 12
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !113 ; 3 uses
  switch i32 %i.ji, label %b3AtomicStoreU32.exit.i209.us.us.us [
    i32 0, label %b3ExecuteMainStage.exit215.us.us.us
    i32 1, label %bb.av
  ]

bb.av:                                            ; preds = %bb.au
  %i.jj = load ptr, ptr %i.jb, align 8, !tbaa !112 ; 3 uses
  %i.jk = icmp ne ptr %i.jj, null, !nosanitize !9
  %i.jl = ptrtoint ptr %i.jj to i64, !nosanitize !9 ; 2 uses
  %i.jm = and i64 %i.jl, 3, !nosanitize !9
  %i.jn = icmp eq i64 %i.jm, 0, !nosanitize !9
  %i.jo = and i1 %i.jk, %i.jn, !nosanitize !9
  br i1 %i.jo, label %bb.aw, label %.split1013.us, !prof !10, !nosanitize !9

bb.aw:                                            ; preds = %bb.av
  %i.jp = load i64, ptr %i.jj, align 4
  call fastcc void @b3ExecuteBlock(ptr noundef nonnull %i.jb, ptr noundef nonnull %i.i, i64 %i.jp, i32 noundef 0)
  br label %b3ExecuteMainStage.exit215.us.us.us

b3AtomicStoreU32.exit.i209.us.us.us:              ; preds = %bb.au
  store atomic i32 %i.jd, ptr %i.ip seq_cst, align 8
  %i.jq = lshr i32 %i.jd, 16                      ; 2 uses
  %i.jr = add nsw i32 %i.jq, -1
  call fastcc void @b3ExecuteStage(ptr noundef nonnull %i.jb, ptr noundef nonnull %i.i, i32 noundef %i.jr, i32 noundef %i.jq, i32 noundef 0)
  %i.js = getelementptr inbounds nuw i8, ptr %i.jb, i64 20 ; 3 uses
  %i.jt = load atomic i32, ptr %i.js seq_cst, align 4
  %.not.us21.i211.us.us.us = icmp eq i32 %i.jt, %i.ji
  br i1 %.not.us21.i211.us.us.us, label %b3AtomicStoreInt.exit.i214.us.us.us, label %b3AtomicLoadInt.exit.us.i212.us.us.us

b3AtomicLoadInt.exit.us.i212.us.us.us:            ; preds = %b3AtomicStoreU32.exit.i209.us.us.us, %b3AtomicLoadInt.exit.us.i212.us.us.us
  call void asm sideeffect "pause\0A", "~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !161
  %i.ju = load atomic i32, ptr %i.js seq_cst, align 4
  %.not.us.i213.us.us.us = icmp eq i32 %i.ju, %i.ji
  br i1 %.not.us.i213.us.us.us, label %b3AtomicStoreInt.exit.i214.us.us.us, label %b3AtomicLoadInt.exit.us.i212.us.us.us

b3AtomicStoreInt.exit.i214.us.us.us:              ; preds = %b3AtomicLoadInt.exit.us.i212.us.us.us, %b3AtomicStoreU32.exit.i209.us.us.us
  store atomic i32 0, ptr %i.js seq_cst, align 4
  br label %b3ExecuteMainStage.exit215.us.us.us

b3ExecuteMainStage.exit215.us.us.us:              ; preds = %b3AtomicStoreInt.exit.i214.us.us.us, %bb.aw, %bb.au
  %exitcond1673 = icmp eq i32 %.01651000.us.us.us, %i.it
  br i1 %exitcond1673, label %.split1019.us, label %bb.ax, !prof !97, !nosanitize !9

bb.ax:                                            ; preds = %b3ExecuteMainStage.exit215.us.us.us
  %i.jv = add nuw nsw i32 %.01651000.us.us.us, 1  ; 2 uses
  %indvars.iv.next1671 = add nsw i64 %indvars.iv1670, 1
  %exitcond1674.not = icmp eq i32 %i.jv, %.fr
  br i1 %exitcond1674.not, label %._crit_edge1002.split.us.us.us, label %.lr.ph.split.us.us1073, !llvm.loop !326

._crit_edge1002.split.us.us.us:                   ; preds = %bb.ax
  %i.jw = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.0180.us.us, i32 %.fr), !nosanitize !9 ; 2 uses
  %i.jx = extractvalue { i32, i1 } %i.jw, 1, !nosanitize !9
  br i1 %i.jx, label %.split1070.us, label %.split1042.us, !prof !332, !nosanitize !9

bb.ay:                                            ; preds = %bb.as
  %i.jy = zext nneg i32 %i.ii to i64, !nosanitize !9
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @261, i64 3, i64 %i.jy) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split1042.us:                                    ; preds = %bb.az, %._crit_edge1002.split.us.us.us
  %.pn = phi { i32, i1 } [ %i.kn, %bb.az ], [ %i.jw, %._crit_edge1002.split.us.us.us ]
  %.us-phi1043 = extractvalue { i32, i1 } %.pn, 0 ; 5 uses
  %i.jz = call float @b3GetMillisecondsAndReset(ptr noundef nonnull %i.a) #13
  %i.ka = getelementptr inbounds nuw i8, ptr %i.t, i64 4540 ; 2 uses
  %i.kb = load float, ptr %i.ka, align 4, !tbaa !336
  %i.kc = fadd float %i.jz, %i.kb
  store float %i.kc, ptr %i.ka, align 4, !tbaa !336
  call void @b3StoreImpulses_Overflow(ptr noundef nonnull %i.i) #13
  %i.kd = sext i32 %.us-phi1043 to i64            ; 2 uses
  %i.ke = mul nsw i64 %i.kd, 24
  %i.kf = add i64 %i.ke, %i.az, !nosanitize !9    ; 3 uses
  %i.kg = icmp ne i64 %i.kf, 0
  %i.kh = icmp uge i64 %i.kf, %i.az, !nosanitize !9
  %i.ki = icmp slt i32 %.us-phi1043, 0
  %i.kj = xor i1 %i.ki, %i.kh
  %i.kk = and i1 %i.kg, %i.kj, !nosanitize !9
  br i1 %i.kk, label %bb.bb, label %bb.ba, !prof !10, !nosanitize !9

.split1045.us:                                    ; preds = %.preheader.split.us
  %i.kl = zext i32 %.0176.lcssa to i64, !nosanitize !9
  call void @__ubsan_handle_shift_out_of_bounds_abort(ptr nonnull @262, i64 %i.kl, i64 16) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split1004.us:                                    ; preds = %.lr.ph.split.us.us1073
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @263, i64 %i.az, i64 %i.iv) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split1007.us:                                    ; preds = %bb.at
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @272, i64 %i.je) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split1013.us:                                    ; preds = %bb.av
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @273, i64 %i.jl) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split1019.us:                                    ; preds = %b3ExecuteMainStage.exit215.us.us.us
  %i.km = and i64 %indvars.iv1670, 4294967295
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @264, i64 %i.km, i64 1) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split1067.us:                                    ; preds = %.preheader.split.preheader
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @265, i64 2147483647, i64 1) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.az:                                            ; preds = %.preheader.split.preheader
  %.0180 = extractvalue { i32, i1 } %i.im, 0      ; 2 uses
  %i.kn = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.0180, i32 %.fr), !nosanitize !9 ; 2 uses
  %i.ko = extractvalue { i32, i1 } %i.kn, 1, !nosanitize !9
  br i1 %i.ko, label %.split1070.us, label %.split1042.us, !prof !332, !nosanitize !9

.split1070.us:                                    ; preds = %bb.az, %._crit_edge1002.split.us.us.us
  %.us-phi1071 = phi i32 [ %.0180, %bb.az ], [ %.0180.us.us, %._crit_edge1002.split.us.us.us ]
  %i.kp = zext i32 %.us-phi1071 to i64, !nosanitize !9
  %i.kq = zext i32 %.fr to i64, !nosanitize !9
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @266, i64 %i.kp, i64 %i.kq) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.ba:                                            ; preds = %.split1042.us
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @267, i64 %i.az, i64 %i.kf) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.bb:                                            ; preds = %.split1042.us
  %i.kr = getelementptr inbounds [24 x i8], ptr %i.r, i64 %i.kd
  %i.ks = or i32 %.us-phi1043, 131072
  call fastcc void @b3ExecuteMainStage(ptr noundef nonnull %i.kr, ptr noundef %i.i, i32 noundef %i.ks)
  %i.kt = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.us-phi1043, i32 1), !nosanitize !9 ; 2 uses
  %i.ku = extractvalue { i32, i1 } %i.kt, 0, !nosanitize !9 ; 4 uses
  %i.kv = extractvalue { i32, i1 } %i.kt, 1, !nosanitize !9
  br i1 %i.kv, label %bb.bc, label %bb.bd, !prof !97, !nosanitize !9

bb.bc:                                            ; preds = %bb.bb
  %i.kw = zext nneg i32 %.us-phi1043 to i64, !nosanitize !9
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @268, i64 %i.kw, i64 1) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.bd:                                            ; preds = %bb.bb
  %i.kx = sext i32 %i.ku to i64                   ; 2 uses
  %i.ky = mul nsw i64 %i.kx, 24
  %i.kz = add i64 %i.ky, %i.az, !nosanitize !9    ; 3 uses
  %i.la = icmp ne i64 %i.kz, 0
  %i.lb = icmp uge i64 %i.kz, %i.az, !nosanitize !9
  %i.lc = icmp slt i32 %i.ku, 0
  %i.ld = xor i1 %i.lc, %i.lb
  %i.le = and i1 %i.la, %i.ld, !nosanitize !9
  br i1 %i.le, label %bb.bf, label %bb.be, !prof !10, !nosanitize !9

bb.be:                                            ; preds = %bb.bd
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @269, i64 %i.az, i64 %i.kz) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.bf:                                            ; preds = %bb.bd
  %i.lf = getelementptr inbounds [24 x i8], ptr %i.r, i64 %i.kx
  %i.lg = or i32 %i.ku, 131072
  call fastcc void @b3ExecuteMainStage(ptr noundef nonnull %i.lf, ptr noundef %i.i, i32 noundef %i.lg)
  %.not = icmp eq i32 %i.ku, 2147483647
  br i1 %.not, label %bb.bg, label %b3AtomicStoreU32.exit, !prof !97, !nosanitize !9

bb.bg:                                            ; preds = %bb.bf
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @270, i64 2147483647, i64 1) #12, !nosanitize !9
  unreachable, !nosanitize !9

b3AtomicStoreU32.exit:                            ; preds = %bb.bf
  %i.lh = call float @b3GetMillisecondsAndReset(ptr noundef nonnull %i.a) #13
  %i.li = getelementptr inbounds nuw i8, ptr %i.t, i64 4544 ; 2 uses
  %i.lj = load float, ptr %i.li, align 8, !tbaa !337
  %i.lk = fadd float %i.lh, %i.lj
  store float %i.lk, ptr %i.li, align 8, !tbaa !337
  store atomic i32 -1, ptr %i.ip seq_cst, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %.thread

.split710.us:                                     ; preds = %bb.j
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @271, i64 %i.ab, i64 %i.an) #12, !nosanitize !9
  unreachable, !nosanitize !9

.thread:                                          ; preds = %.split.us.us, %b3AtomicCompareExchangeInt.exit, %b3AtomicStoreU32.exit
  ret void
}

declare void @b3ParallelFor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @b3FinalizeBodiesTask(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 !func_sanitize !162 {
bb.a:
  %4 = alloca %struct.b3Transform, align 8        ; 4 uses
  %5 = alloca %struct.b3AABB, align 8             ; 9 uses
  %i.a = icmp ne ptr %3, null, !nosanitize !9
  %i.b = ptrtoint ptr %3 to i64, !nosanitize !9   ; 2 uses
  %i.c = and i64 %i.b, 7, !nosanitize !9
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !9
  %i.e = and i1 %i.a, %i.d, !nosanitize !9
  br i1 %i.e, label %bb.c, label %bb.b, !prof !10, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @330, i64 %i.b) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !160  ; 12 uses
  %i.h = icmp ne ptr %i.g, null, !nosanitize !9
  %i.i = ptrtoint ptr %i.g to i64, !nosanitize !9 ; 2 uses
  %i.j = and i64 %i.i, 7, !nosanitize !9
  %i.k = icmp eq i64 %i.j, 0, !nosanitize !9
  %i.l = and i1 %i.h, %i.k, !nosanitize !9
  br i1 %i.l, label %bb.e, label %bb.d, !prof !10, !nosanitize !9

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @331, i64 %i.i) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 3880
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !139  ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !95
  %.fr2939 = freeze ptr %i.p                      ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !96
  %.fr2937 = freeze ptr %i.r                      ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 4762
  %i.t = load i8, ptr %i.s, align 2, !tbaa !157   ; 3 uses
  %i.u = icmp ult i8 %i.t, 2
  br i1 %i.u, label %bb.g, label %bb.f, !prof !10, !nosanitize !9

bb.f:                                             ; preds = %bb.e
  %i.v = zext i8 %i.t to i64, !nosanitize !9
  tail call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @332, i64 %i.v) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.g:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 4765
  %i.x = load i8, ptr %i.w, align 1, !tbaa !339   ; 3 uses
  %i.y = icmp ult i8 %i.x, 2
  br i1 %i.y, label %bb.i, label %bb.h, !prof !10, !nosanitize !9

bb.h:                                             ; preds = %bb.g
  %i.z = zext i8 %i.x to i64, !nosanitize !9
  tail call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @333, i64 %i.z) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.i:                                             ; preds = %bb.g
  %i.aa = trunc nuw i8 %i.x to i1
  %i.ab = load float, ptr %3, align 8, !tbaa !340 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !163
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 4760
  %i.af = load i16, ptr %i.ae, align 8, !tbaa !135
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 4176
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !102 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 4144
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !120 ; 3 uses
  %i.ak = sext i32 %2 to i64                      ; 2 uses
  %i.al = getelementptr inbounds [3848 x i8], ptr %i.aj, i64 %i.ak ; 6 uses
  %i.am = mul nsw i64 %i.ak, 3848
  %i.an = ptrtoint ptr %i.aj to i64, !nosanitize !9 ; 3 uses
  %i.ao = add i64 %i.am, %i.an, !nosanitize !9    ; 3 uses
  %i.ap = icmp ne ptr %i.aj, null, !nosanitize !9 ; 2 uses
  %i.aq = icmp eq i64 %i.ao, 0
  %i.ar = xor i1 %i.ap, %i.aq
  %i.as = icmp uge i64 %i.ao, %i.an, !nosanitize !9
  %i.at = icmp slt i32 %2, 0
  %i.au = xor i1 %i.at, %i.as
  %i.av = and i1 %i.ar, %i.au, !nosanitize !9
  br i1 %i.av, label %bb.k, label %bb.j, !prof !10, !nosanitize !9

bb.j:                                             ; preds = %bb.i
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @334, i64 %i.an, i64 %i.ao) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.k:                                             ; preds = %bb.i
  %i.aw = ptrtoint ptr %i.al to i64, !nosanitize !9 ; 2 uses
  %i.ax = and i64 %i.aw, 7, !nosanitize !9
  %i.ay = icmp eq i64 %i.ax, 0, !nosanitize !9
  %i.az = and i1 %i.ap, %i.ay
  br i1 %i.az, label %bb.m, label %bb.l, !prof !10, !nosanitize !9

bb.l:                                             ; preds = %bb.k
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @335, i64 %i.aw) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.m:                                             ; preds = %bb.k
  %i.ba = getelementptr inbounds nuw i8, ptr %i.al, i64 96 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.al, i64 112
  %i.bc = tail call float @b3GetLengthUnitsPerMeter() #13
  %i.bd = fmul float %i.bc, 5.000000e-03
  %i.be = fmul float %i.bd, 4.000000e+00
  %i.bf = icmp slt i32 %0, %1
  br i1 %i.bf, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.m
  %i.bg = ptrtoint ptr %.fr2937 to i64, !nosanitize !9 ; 5 uses
  %.not2938 = icmp eq ptr %.fr2937, null, !nosanitize !9
  %i.bh = ptrtoint ptr %.fr2939 to i64            ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.g, i64 4104
  %i.bj = ptrtoint ptr %i.n to i64                ; 6 uses
  %i.bk = icmp ne ptr %i.n, null                  ; 4 uses
  %i.bl = fmul float %i.ad, 5.000000e-01
  %i.bm = ptrtoint ptr %i.ah to i64               ; 3 uses
  %i.bn = icmp ne ptr %i.ah, null                 ; 2 uses
  %.sroa.2461.0.insert.ext = zext i16 %i.af to i64
  %.sroa.2461.0.insert.shift = shl nuw nsw i64 %.sroa.2461.0.insert.ext, 32
  %i.bo = icmp eq i8 %i.t, 0
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.br = getelementptr inbounds nuw i8, ptr %i.g, i64 4040
  %i.bs = getelementptr inbounds nuw i8, ptr %i.al, i64 128 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.al, i64 132 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.g, i64 4080 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 20
  br i1 %.not2938, label %.lr.ph.split.us, label %.lr.ph.split, !prof !97

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.by = sext i32 %0 to i64
  %i.bz = mul nsw i64 %i.by, 56
  %i.ca = icmp eq i32 %0, 0
  br i1 %i.ca, label %.split2915, label %.split2907.us, !prof !10, !nosanitize !9

.lr.ph.split:                                     ; preds = %.lr.ph
  %.not2940 = icmp eq ptr %.fr2939, null
  %i.cb = sext i32 %0 to i64                      ; 4 uses
  br i1 %.not2940, label %.lr.ph.split.split.us, label %.lr.ph.split.split.preheader, !prof !97

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %wide.trip.count = sext i32 %1 to i64
  br label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  %i.cc = getelementptr inbounds [56 x i8], ptr %.fr2937, i64 %i.cb
  %i.cd = mul nsw i64 %i.cb, 56
  %i.ce = add i64 %i.cd, %i.bg, !nosanitize !9    ; 3 uses
  %i.cf = icmp ne i64 %i.ce, 0
  %i.cg = icmp uge i64 %i.ce, %i.bg, !nosanitize !9
  %i.ch = icmp slt i32 %0, 0
  %i.ci = xor i1 %i.ch, %i.cg
  %i.cj = and i1 %i.cf, %i.ci, !nosanitize !9
  br i1 %i.cj, label %bb.n, label %.split2907.us, !prof !10, !nosanitize !9

bb.n:                                             ; preds = %.lr.ph.split.split.us
  %i.ck = mul nsw i64 %i.cb, 216                  ; 2 uses
  %i.cl = icmp eq i32 %0, 0
  %i.cm = icmp uge i64 %i.ck, %i.bh, !nosanitize !9
  %i.cn = and i1 %i.cl, %i.cm
  br i1 %i.cn, label %bb.o, label %.split2911.us, !prof !10, !nosanitize !9

bb.o:                                             ; preds = %bb.n
  %i.co = ptrtoint ptr %i.cc to i64, !nosanitize !9 ; 2 uses
  %i.cp = and i64 %i.co, 3, !nosanitize !9
  %i.cq = icmp eq i64 %i.cp, 0, !nosanitize !9
  br i1 %i.cq, label %.split2933, label %.split2915, !prof !10, !nosanitize !9

._crit_edge:                                      ; preds = %.loopexit, %bb.m
  ret void

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.preheader, %.loopexit
  %indvars.iv = phi i64 [ %i.cb, %.lr.ph.split.split.preheader ], [ %indvars.iv.next, %.loopexit ] ; 11 uses
  %i.cr = getelementptr inbounds [56 x i8], ptr %.fr2937, i64 %indvars.iv ; 10 uses
  %i.cs = mul nsw i64 %indvars.iv, 56
  %i.ct = add i64 %i.cs, %i.bg, !nosanitize !9    ; 3 uses
  %i.cu = icmp ne i64 %i.ct, 0
  %i.cv = icmp uge i64 %i.ct, %i.bg, !nosanitize !9
  %i.cw = icmp slt i64 %indvars.iv, 0             ; 3 uses
  %i.cx = xor i1 %i.cw, %i.cv
  %i.cy = and i1 %i.cu, %i.cx, !nosanitize !9
  br i1 %i.cy, label %bb.p, label %.split2907.us, !prof !10, !nosanitize !9
end_hunk_2
begin_hunk_3_@b3FinalizeBodiesTask:bb.a

.split2833.us:                                    ; preds = %b3AABB_Contains.exit.thread.us.us
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @313, i64 %i.ys, i64 %i.yt) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split2837.us:                                    ; preds = %bb.bn
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @314, i64 %i.yz) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split2840.us:                                    ; preds = %b3SetBit.exit399.us.us
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @356, i64 %i.aaj) #12, !nosanitize !9
  unreachable, !nosanitize !9

.loopexit:                                        ; preds = %.preheader.split.us.split.split.us, %.preheader.split.us.split.us, %.preheader.split.us.split, %.preheader.split.us.split.us.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split.split, !llvm.loop !338
}

declare void @b3StackFree(ptr noundef, ptr noundef) local_unnamed_addr #3

declare float @b3GetMilliseconds(i64 noundef) local_unnamed_addr #3

declare void @b3InPlaceUnion(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noreturn nounwind uwtable
declare void @__ubsan_handle_load_invalid_value_abort(ptr, i64) local_unnamed_addr #1

declare ptr @b3GetBodySim(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i64 @b3GetShapeUserMaterialId(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @b3BroadPhase_EnlargeProxy(ptr noundef, i32 noundef, ptr noundef byval(%struct.b3AABB) align 8) local_unnamed_addr #3

declare void @b3ValidateBroadPhase(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @b3BulletBodyTask(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #7 !func_sanitize !162 {
bb.a:
  %i.a = icmp ne ptr %3, null, !nosanitize !9
  %i.b = ptrtoint ptr %3 to i64, !nosanitize !9   ; 2 uses
  %i.c = and i64 %i.b, 7, !nosanitize !9
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !9
  %i.e = and i1 %i.a, %i.d, !nosanitize !9
  br i1 %i.e, label %bb.c, label %bb.b, !prof !10, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @420, i64 %i.b) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !160  ; 3 uses
  %i.h = icmp ne ptr %i.g, null, !nosanitize !9
  %i.i = ptrtoint ptr %i.g to i64, !nosanitize !9 ; 2 uses
  %i.j = and i64 %i.i, 7, !nosanitize !9
  %i.k = icmp eq i64 %i.j, 0, !nosanitize !9
  %i.l = and i1 %i.h, %i.k, !nosanitize !9
  br i1 %i.l, label %bb.e, label %bb.d, !prof !10, !nosanitize !9

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @421, i64 %i.i) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 4144
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !120  ; 3 uses
  %i.o = sext i32 %2 to i64                       ; 2 uses
  %i.p = getelementptr inbounds [3848 x i8], ptr %i.n, i64 %i.o
  %i.q = mul nsw i64 %i.o, 3848
  %i.r = ptrtoint ptr %i.n to i64, !nosanitize !9 ; 3 uses
  %i.s = add i64 %i.q, %i.r, !nosanitize !9       ; 3 uses
  %i.t = icmp ne ptr %i.n, null, !nosanitize !9
  %i.u = icmp eq i64 %i.s, 0
  %i.v = xor i1 %i.t, %i.u
  %i.w = icmp uge i64 %i.s, %i.r, !nosanitize !9
  %i.x = icmp slt i32 %2, 0
  %i.y = xor i1 %i.x, %i.w
  %i.z = and i1 %i.v, %i.y, !nosanitize !9
  br i1 %i.z, label %.preheader, label %bb.f, !prof !10, !nosanitize !9

.preheader:                                       ; preds = %bb.e
  %i.aa = icmp slt i32 %0, %1
  br i1 %i.aa, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.ac = sext i32 %0 to i64
  %wide.trip.count = sext i32 %1 to i64
  br label %.lr.ph.split

bb.f:                                             ; preds = %bb.e
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @422, i64 %i.r, i64 %i.s) #12, !nosanitize !9
  unreachable, !nosanitize !9

._crit_edge:                                      ; preds = %bb.j, %.preheader
  ret void

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.j
  %indvars.iv = phi i64 [ %i.ac, %.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 4 uses
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !93 ; 3 uses
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %indvars.iv ; 2 uses
  %i.af = shl nsw i64 %indvars.iv, 2
  %i.ag = ptrtoint ptr %i.ad to i64, !nosanitize !9 ; 3 uses
  %i.ah = add i64 %i.af, %i.ag, !nosanitize !9    ; 3 uses
  %i.ai = icmp ne ptr %i.ad, null, !nosanitize !9 ; 2 uses
  %i.aj = icmp eq i64 %i.ah, 0
  %i.ak = xor i1 %i.ai, %i.aj
  %i.al = icmp uge i64 %i.ah, %i.ag, !nosanitize !9
  %i.am = icmp slt i64 %indvars.iv, 0
  %i.an = xor i1 %i.am, %i.al
  %i.ao = and i1 %i.ak, %i.an, !nosanitize !9
  br i1 %i.ao, label %bb.h, label %bb.g, !prof !10, !nosanitize !9

bb.g:                                             ; preds = %.lr.ph.split
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @423, i64 %i.ag, i64 %i.ah) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.h:                                             ; preds = %.lr.ph.split
  %i.ap = ptrtoint ptr %i.ae to i64, !nosanitize !9 ; 2 uses
  %i.aq = and i64 %i.ap, 3, !nosanitize !9
  %i.ar = icmp eq i64 %i.aq, 0, !nosanitize !9
  %i.as = and i1 %i.ai, %i.ar
  br i1 %i.as, label %bb.j, label %bb.i, !prof !10, !nosanitize !9

bb.i:                                             ; preds = %bb.h
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @424, i64 %i.ap) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.j:                                             ; preds = %bb.h
  %i.at = load i32, ptr %i.ae, align 4, !tbaa !103
  %i.au = load ptr, ptr %i.f, align 8, !tbaa !160
  tail call fastcc void @b3SolveContinuous(ptr noundef %i.au, i32 noundef %i.at, ptr noundef %i.p)
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !363
}

declare void @b3DynamicTree_EnlargeProxy(ptr noundef, i32 noundef, ptr noundef byval(%struct.b3AABB) align 8) local_unnamed_addr #3

declare void @b3TrySleepIsland(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @b3ValidateSolverSets(ptr noundef) local_unnamed_addr #3

; Function Attrs: noreturn nounwind uwtable
declare void @__ubsan_handle_divrem_overflow_abort(ptr, i64, i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @b3ExecuteMainStage(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2) unnamed_addr #7 !func_sanitize !364 {
bb.a:
  %i.a = icmp ne ptr %0, null, !nosanitize !9
  %i.b = ptrtoint ptr %0 to i64, !nosanitize !9   ; 2 uses
  %i.c = and i64 %i.b, 7, !nosanitize !9
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !9
  %i.e = and i1 %i.a, %i.d, !nosanitize !9
  br i1 %i.e, label %bb.c, label %bb.b, !prof !10, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @272, i64 %i.b) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !113  ; 3 uses
  switch i32 %i.g, label %bb.g [
    i32 0, label %bb.i
    i32 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %0, align 8, !tbaa !112    ; 3 uses
  %i.i = icmp ne ptr %i.h, null, !nosanitize !9
  %i.j = ptrtoint ptr %i.h to i64, !nosanitize !9 ; 2 uses
  %i.k = and i64 %i.j, 3, !nosanitize !9
  %i.l = icmp eq i64 %i.k, 0, !nosanitize !9
  %i.m = and i1 %i.i, %i.l, !nosanitize !9
  br i1 %i.m, label %bb.f, label %bb.e, !prof !10, !nosanitize !9

bb.e:                                             ; preds = %bb.d
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @273, i64 %i.j) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.f:                                             ; preds = %bb.d
  %i.n = load i64, ptr %i.h, align 4
  tail call fastcc void @b3ExecuteBlock(ptr noundef %0, ptr noundef %1, i64 %i.n, i32 noundef 0)
  br label %bb.i

bb.g:                                             ; preds = %bb.c
  %i.o = ptrtoint ptr %1 to i64, !nosanitize !9   ; 2 uses
  %i.p = and i64 %i.o, 7, !nosanitize !9
  %i.q = icmp eq i64 %i.p, 0, !nosanitize !9
  br i1 %i.q, label %b3AtomicStoreU32.exit, label %bb.h, !prof !10, !nosanitize !9

bb.h:                                             ; preds = %bb.g
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @274, i64 %i.o) #12, !nosanitize !9
  unreachable, !nosanitize !9

b3AtomicStoreU32.exit:                            ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 280
  store atomic i32 %2, ptr %i.r seq_cst, align 8
  %i.s = lshr i32 %2, 16                          ; 2 uses
  %i.t = add nsw i32 %i.s, -1
  tail call fastcc void @b3ExecuteStage(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %i.t, i32 noundef %i.s, i32 noundef 0)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.v = load atomic i32, ptr %i.u seq_cst, align 4
  %.not.us21 = icmp eq i32 %i.v, %i.g
  br i1 %.not.us21, label %b3AtomicStoreInt.exit, label %b3AtomicLoadInt.exit.us

b3AtomicLoadInt.exit.us:                          ; preds = %b3AtomicStoreU32.exit, %b3AtomicLoadInt.exit.us
  tail call void asm sideeffect "pause\0A", "~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !161
  %i.w = load atomic i32, ptr %i.u seq_cst, align 4
  %.not.us = icmp eq i32 %i.w, %i.g
  br i1 %.not.us, label %b3AtomicStoreInt.exit, label %b3AtomicLoadInt.exit.us

b3AtomicStoreInt.exit:                            ; preds = %b3AtomicLoadInt.exit.us, %b3AtomicStoreU32.exit
  store atomic i32 0, ptr %i.u seq_cst, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %b3AtomicStoreInt.exit, %bb.c
  ret void
}

declare void @b3PrepareJoints_Overflow(ptr noundef) local_unnamed_addr #3

declare void @b3PrepareContacts_Overflow(ptr noundef) local_unnamed_addr #3

declare void @b3WarmStartJoints_Overflow(ptr noundef) local_unnamed_addr #3

declare void @b3WarmStartContacts_Overflow(ptr noundef) local_unnamed_addr #3

declare void @b3SolveJoints_Overflow(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

declare void @b3SolveContacts_Overflow(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

declare void @b3ApplyRestitution_Overflow(ptr noundef) local_unnamed_addr #3

declare void @b3StoreImpulses_Overflow(ptr noundef) local_unnamed_addr #3

declare void @b3Yield() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @b3ExecuteStage(ptr noundef %0, ptr noundef nonnull %1, i32 noundef range(i32 -1, 65535) %2, i32 noundef range(i32 0, 65536) %3, i32 noundef %4) unnamed_addr #7 !func_sanitize !366 {
bb.a:
  %i.a = icmp ne ptr %0, null, !nosanitize !9
  %i.b = ptrtoint ptr %0 to i64, !nosanitize !9   ; 2 uses
  %i.c = and i64 %i.b, 7, !nosanitize !9
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !9
  %i.e = and i1 %i.a, %i.d, !nosanitize !9
  br i1 %i.e, label %bb.c, label %bb.b, !prof !10, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @319, i64 %i.b) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !112
  %.fr65 = freeze ptr %i.f                        ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !113  ; 9 uses
  %i.i = ptrtoint ptr %1 to i64, !nosanitize !9   ; 2 uses
  %i.j = and i64 %i.i, 7, !nosanitize !9
  %i.k = icmp eq i64 %i.j, 0, !nosanitize !9
  br i1 %i.k, label %bb.e, label %bb.d, !prof !10, !nosanitize !9

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @320, i64 %i.i) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 196
  %i.m = load i32, ptr %i.l, align 4, !tbaa !117  ; 5 uses
  %.not.i = icmp sgt i32 %i.h, %i.m
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = icmp slt i32 %4, %i.h
  br i1 %i.n, label %GetWorkerStartIndex.exit, label %GetWorkerStartIndex.exit.thread

bb.g:                                             ; preds = %bb.e
  %.not17.i = icmp eq i32 %i.m, 0, !nosanitize !9
  br i1 %.not17.i, label %bb.h, label %bb.i, !prof !97, !nosanitize !9

bb.h:                                             ; preds = %bb.g
  %i.o = zext i32 %i.h to i64, !nosanitize !9
  tail call void @__ubsan_handle_divrem_overflow_abort(ptr nonnull @325, i64 %i.o, i64 0) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.i:                                             ; preds = %bb.g
  %i.p = sdiv i32 %i.h, %i.m                      ; 4 uses
  %i.q = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %i.p, i32 %i.m), !nosanitize !9 ; 2 uses
  %i.r = extractvalue { i32, i1 } %i.q, 0, !nosanitize !9 ; 2 uses
  %i.s = extractvalue { i32, i1 } %i.q, 1, !nosanitize !9
  br i1 %i.s, label %bb.j, label %bb.k, !prof !97, !nosanitize !9

bb.j:                                             ; preds = %bb.i
  %i.t = zext i32 %i.p to i64, !nosanitize !9
  %i.u = zext i32 %i.m to i64, !nosanitize !9
  tail call void @__ubsan_handle_mul_overflow_abort(ptr nonnull @326, i64 %i.t, i64 %i.u) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.k:                                             ; preds = %bb.i
  %i.v = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i.h, i32 %i.r), !nosanitize !9 ; 2 uses
  %i.w = extractvalue { i32, i1 } %i.v, 0, !nosanitize !9
  %i.x = extractvalue { i32, i1 } %i.v, 1, !nosanitize !9
  br i1 %i.x, label %bb.l, label %bb.m, !prof !97, !nosanitize !9

bb.l:                                             ; preds = %bb.k
  %i.y = zext i32 %i.h to i64, !nosanitize !9
  %i.z = zext i32 %i.r to i64, !nosanitize !9
  tail call void @__ubsan_handle_sub_overflow_abort(ptr nonnull @327, i64 %i.y, i64 %i.z) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.m:                                             ; preds = %bb.k
  %i.aa = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %i.p, i32 %4), !nosanitize !9 ; 2 uses
  %i.ab = extractvalue { i32, i1 } %i.aa, 0, !nosanitize !9 ; 2 uses
  %i.ac = extractvalue { i32, i1 } %i.aa, 1, !nosanitize !9
  br i1 %i.ac, label %bb.n, label %bb.o, !prof !97, !nosanitize !9

bb.n:                                             ; preds = %bb.m
  %i.ad = zext i32 %i.p to i64, !nosanitize !9
  %i.ae = zext i32 %4 to i64, !nosanitize !9
  tail call void @__ubsan_handle_mul_overflow_abort(ptr nonnull @328, i64 %i.ad, i64 %i.ae) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.o:                                             ; preds = %bb.m
  %i.af = tail call noundef i32 @llvm.smin.i32(i32 %i.w, i32 %4) ; 2 uses
  %i.ag = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.ab, i32 %i.af), !nosanitize !9 ; 2 uses
  %i.ah = extractvalue { i32, i1 } %i.ag, 1, !nosanitize !9
  br i1 %i.ah, label %bb.p, label %bb.q, !prof !97, !nosanitize !9

bb.p:                                             ; preds = %bb.o
  %i.ai = zext i32 %i.ab to i64, !nosanitize !9
  %i.aj = zext i32 %i.af to i64, !nosanitize !9
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @329, i64 %i.ai, i64 %i.aj) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.q:                                             ; preds = %bb.o
  %i.ak = extractvalue { i32, i1 } %i.ag, 0, !nosanitize !9
  br label %GetWorkerStartIndex.exit

GetWorkerStartIndex.exit:                         ; preds = %bb.f, %bb.q
  %.0.i = phi i32 [ %i.ak, %bb.q ], [ %4, %bb.f ] ; 4 uses
  %i.al = icmp eq i32 %.0.i, -1
  br i1 %i.al, label %GetWorkerStartIndex.exit.thread, label %.preheader

.preheader:                                       ; preds = %GetWorkerStartIndex.exit
  %i.am = icmp sgt i32 %i.h, 0
  br i1 %i.am, label %.lr.ph, label %b3AtomicFetchAddInt.exit

.lr.ph:                                           ; preds = %.preheader
  %i.an = ptrtoint ptr %.fr65 to i64, !nosanitize !9 ; 3 uses
  %.not66 = icmp eq ptr %.fr65, null, !nosanitize !9
  br i1 %.not66, label %.lr.ph.split.us, label %.lr.ph.split, !prof !97

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.ao = sext i32 %.0.i to i64
  %i.ap = mul nsw i64 %i.ao, 12
  %i.aq = icmp eq i32 %.0.i, 0
  br i1 %i.aq, label %.split63, label %.split.us, !prof !10, !nosanitize !9

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.x
  %.060 = phi i32 [ %i.bo, %bb.x ], [ 0, %.lr.ph ]
  %.02459 = phi i32 [ %spec.store.select, %bb.x ], [ %.0.i, %.lr.ph ] ; 4 uses
  %.02558 = phi i32 [ %.1, %bb.x ], [ 0, %.lr.ph ] ; 3 uses
  %i.ar = sext i32 %.02459 to i64                 ; 2 uses
  %i.as = getelementptr inbounds [12 x i8], ptr %.fr65, i64 %i.ar ; 3 uses
  %i.at = mul nsw i64 %i.ar, 12
  %i.au = add i64 %i.at, %i.an, !nosanitize !9    ; 3 uses
  %i.av = icmp ne i64 %i.au, 0
  %i.aw = icmp uge i64 %i.au, %i.an, !nosanitize !9
  %i.ax = icmp slt i32 %.02459, 0
  %i.ay = xor i1 %i.ax, %i.aw
  %i.az = and i1 %i.av, %i.ay, !nosanitize !9
  br i1 %i.az, label %bb.r, label %.split.us, !prof !10, !nosanitize !9

.split.us:                                        ; preds = %.lr.ph.split, %.lr.ph.split.us
  %.us-phi61 = phi i64 [ %i.ap, %.lr.ph.split.us ], [ %i.au, %.lr.ph.split ]
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @321, i64 %i.an, i64 %.us-phi61) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.r:                                             ; preds = %.lr.ph.split
  %i.ba = ptrtoint ptr %i.as to i64, !nosanitize !9 ; 2 uses
  %i.bb = and i64 %i.ba, 3, !nosanitize !9
  %i.bc = icmp eq i64 %i.bb, 0, !nosanitize !9
  br i1 %i.bc, label %b3AtomicCompareExchangeInt.exit, label %.split63, !prof !10, !nosanitize !9

.split63:                                         ; preds = %bb.r, %.lr.ph.split.us
  %.us-phi64 = phi i64 [ 0, %.lr.ph.split.us ], [ %i.ba, %bb.r ]
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @322, i64 %.us-phi64) #12, !nosanitize !9
  unreachable, !nosanitize !9

b3AtomicCompareExchangeInt.exit:                  ; preds = %bb.r
  %i.bd = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.be = cmpxchg ptr %i.bd, i32 %2, i32 %3 seq_cst seq_cst, align 4
  %i.bf = extractvalue { i32, i1 } %i.be, 1
  br i1 %i.bf, label %bb.s, label %bb.v

bb.s:                                             ; preds = %b3AtomicCompareExchangeInt.exit
  %i.bg = load i64, ptr %i.as, align 4
  tail call fastcc void @b3ExecuteBlock(ptr noundef %0, ptr noundef %1, i64 %i.bg, i32 noundef %4)
end_hunk_3
begin_hunk_4_@b3ContinuousQueryCallback:bb.a
  unreachable, !nosanitize !9

bb.u:                                             ; preds = %bb.s
  %i.cg = tail call ptr @b3GetBodySim(ptr noundef nonnull %i.x, ptr noundef %i.bv) #13 ; 4 uses
  %i.ch = icmp ne ptr %i.cg, null, !nosanitize !9
  %i.ci = ptrtoint ptr %i.cg to i64, !nosanitize !9 ; 2 uses
  %i.cj = and i64 %i.ci, 3, !nosanitize !9
  %i.ck = icmp eq i64 %i.cj, 0, !nosanitize !9
  %i.cl = and i1 %i.ch, %i.ck, !nosanitize !9
  br i1 %i.cl, label %bb.w, label %bb.v, !prof !10, !nosanitize !9

bb.v:                                             ; preds = %bb.u
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @396, i64 %i.ci) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.w:                                             ; preds = %bb.u
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cg, i64 212
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !154
  %i.co = and i32 %i.cn, 128
  %.not140 = icmp eq i32 %i.co, 0
  br i1 %.not140, label %bb.x, label %bb.br

bb.x:                                             ; preds = %bb.w
  %i.cp = icmp ne ptr %i.p, null, !nosanitize !9
  %i.cq = ptrtoint ptr %i.p to i64, !nosanitize !9 ; 2 uses
  %i.cr = and i64 %i.cq, 3, !nosanitize !9
  %i.cs = icmp eq i64 %i.cr, 0, !nosanitize !9
  %i.ct = and i1 %i.cp, %i.cs, !nosanitize !9
  br i1 %i.ct, label %bb.z, label %bb.y, !prof !10, !nosanitize !9

bb.y:                                             ; preds = %bb.x
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @397, i64 %i.cq) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.z:                                             ; preds = %bb.x
  %i.cu = load ptr, ptr %i.bs, align 8, !tbaa !139 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.p, i64 208
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !151 ; 2 uses
  %i.cx = sext i32 %i.cw to i64                   ; 2 uses
  %i.cy = getelementptr inbounds [128 x i8], ptr %i.cu, i64 %i.cx ; 3 uses
  %i.cz = shl nsw i64 %i.cx, 7
  %i.da = ptrtoint ptr %i.cu to i64, !nosanitize !9 ; 3 uses
  %i.db = add i64 %i.cz, %i.da, !nosanitize !9    ; 3 uses
  %i.dc = icmp ne ptr %i.cu, null, !nosanitize !9 ; 2 uses
  %i.dd = icmp eq i64 %i.db, 0
  %i.de = xor i1 %i.dc, %i.dd
  %i.df = icmp uge i64 %i.db, %i.da, !nosanitize !9
  %i.dg = icmp slt i32 %i.cw, 0
  %i.dh = xor i1 %i.dg, %i.df
  %i.di = and i1 %i.de, %i.dh, !nosanitize !9
  br i1 %i.di, label %bb.ab, label %bb.aa, !prof !10, !nosanitize !9

bb.aa:                                            ; preds = %bb.z
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @398, i64 %i.da, i64 %i.db) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.ab:                                            ; preds = %bb.z
  %i.dj = tail call zeroext i1 @b3ShouldBodiesCollide(ptr noundef nonnull %i.x, ptr noundef %i.cy, ptr noundef %i.bv) #13
  br i1 %i.dj, label %bb.ac, label %bb.br

bb.ac:                                            ; preds = %bb.ab
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ag, i64 198 ; 2 uses
  %i.dl = load i8, ptr %i.dk, align 2, !tbaa !156
  %i.dm = and i8 %i.dl, 4
  %.not142 = icmp eq i8 %i.dm, 0
  br i1 %.not142, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dn = getelementptr inbounds nuw i8, ptr %i.n, i64 198
  %i.do = load i8, ptr %i.dn, align 2, !tbaa !156
  %i.dp = and i8 %i.do, 4
  %.not144 = icmp eq i8 %i.dp, 0
  br i1 %.not144, label %.critedge, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.dq = getelementptr inbounds nuw i8, ptr %i.x, i64 4664
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !396 ; 5 uses
  %.not145 = icmp eq ptr %i.dr, null
  br i1 %.not145, label %.critedge, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ds = load i32, ptr %i.ag, align 8, !tbaa !147 ; 2 uses
  %i.dt = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.ds, i32 1), !nosanitize !9 ; 2 uses
  %i.du = extractvalue { i32, i1 } %i.dt, 0, !nosanitize !9
  %i.dv = extractvalue { i32, i1 } %i.dt, 1, !nosanitize !9
  br i1 %i.dv, label %bb.ag, label %bb.ah, !prof !97, !nosanitize !9

bb.ag:                                            ; preds = %bb.af
  %i.dw = zext nneg i32 %i.ds to i64, !nosanitize !9
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @399, i64 %i.dw, i64 1) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.ah:                                            ; preds = %bb.af
  %i.dx = getelementptr inbounds nuw i8, ptr %i.x, i64 4760
  %i.dy = load i16, ptr %i.dx, align 8, !tbaa !135
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ag, i64 196
  %i.ea = load i16, ptr %i.dz, align 4, !tbaa !148
  %i.eb = load i32, ptr %i.n, align 8, !tbaa !147 ; 2 uses
  %i.ec = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.eb, i32 1), !nosanitize !9 ; 2 uses
  %i.ed = extractvalue { i32, i1 } %i.ec, 0, !nosanitize !9
  %i.ee = extractvalue { i32, i1 } %i.ec, 1, !nosanitize !9
  br i1 %i.ee, label %bb.ai, label %bb.aj, !prof !97, !nosanitize !9

bb.ai:                                            ; preds = %bb.ah
  %i.ef = zext nneg i32 %i.eb to i64, !nosanitize !9
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @400, i64 %i.ef, i64 1) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.aj:                                            ; preds = %bb.ah
  %i.eg = getelementptr inbounds nuw i8, ptr %i.n, i64 196
  %i.eh = load i16, ptr %i.eg, align 4, !tbaa !148
  %i.ei = getelementptr i8, ptr %i.dr, i64 -8
  %i.ej = load i32, ptr %i.ei, align 4, !nosanitize !9
  %i.ek = icmp eq i32 %i.ej, -1056584962, !nosanitize !9
  br i1 %i.ek, label %bb.ak, label %bb.am, !nosanitize !9

bb.ak:                                            ; preds = %bb.aj
  %i.el = getelementptr i8, ptr %i.dr, i64 -4
  %i.em = load i32, ptr %i.el, align 8, !nosanitize !9
  %i.en = icmp eq i32 %i.em, -38424242, !nosanitize !9
  br i1 %i.en, label %bb.am, label %bb.al, !prof !10, !nosanitize !9

bb.al:                                            ; preds = %bb.ak
  %i.eo = ptrtoint ptr %i.dr to i64, !nosanitize !9
  tail call void @__ubsan_handle_function_type_mismatch_abort(ptr nonnull @402, i64 %i.eo) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.am:                                            ; preds = %bb.ak, %bb.aj
  %i.ep = getelementptr inbounds nuw i8, ptr %i.x, i64 4672
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !397
  %.sroa.532.0.insert.ext = zext i16 %i.ea to i64
  %.sroa.532.0.insert.shift = shl nuw i64 %.sroa.532.0.insert.ext, 48
  %.sroa.431.0.insert.ext = zext i16 %i.dy to i64
  %.sroa.431.0.insert.shift = shl nuw nsw i64 %.sroa.431.0.insert.ext, 32 ; 2 uses
  %.sroa.030.0.insert.ext = zext i32 %i.du to i64
  %i.er = or disjoint i64 %.sroa.532.0.insert.shift, %.sroa.030.0.insert.ext
  %.sroa.030.0.insert.insert = or disjoint i64 %i.er, %.sroa.431.0.insert.shift
  %.sroa.529.0.insert.ext = zext i16 %i.eh to i64
  %.sroa.529.0.insert.shift = shl nuw i64 %.sroa.529.0.insert.ext, 48
  %.sroa.027.0.insert.ext = zext i32 %i.ed to i64
  %i.es = or disjoint i64 %.sroa.529.0.insert.shift, %.sroa.027.0.insert.ext
  %.sroa.027.0.insert.insert = or disjoint i64 %i.es, %.sroa.431.0.insert.shift
  %i.et = tail call zeroext i1 %i.dr(i64 %.sroa.030.0.insert.insert, i64 %.sroa.027.0.insert.insert, ptr noundef %i.eq) #13
  br i1 %i.et, label %.critedge, label %bb.br

.critedge:                                        ; preds = %bb.ae, %bb.am, %bb.ad
  %i.eu = tail call i64 @b3GetTicks() #13
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 116 ; 2 uses
  %.sroa.024.0.copyload = load <2 x float>, ptr %i.ev, align 4
  %.sroa.225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 124 ; 2 uses
  %.sroa.225.0.copyload = load float, ptr %.sroa.225.0..sroa_idx, align 4
  call fastcc void @b3MakeRelativeSweep(ptr dead_on_unwind noalias writable align 4 %3, ptr noundef %i.cg, <2 x float> %.sroa.024.0.copyload, float %.sroa.225.0.copyload)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 4 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ey = load float, ptr %i.ew, align 8, !tbaa !179
  call void @b3ShapeTimeOfImpact(ptr dead_on_unwind nonnull writable sret(%struct.b3TOIOutput) align 4 %4, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.n, ptr noundef nonnull %3, ptr noundef nonnull %i.ex, float noundef %i.ey) #13
  %i.ez = getelementptr inbounds nuw i8, ptr %4, i64 28 ; 2 uses
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !399 ; 4 uses
  br i1 %.not, label %bb.ay, label %bb.an

bb.an:                                            ; preds = %.critedge
  %i.fb = load float, ptr %i.ew, align 8, !tbaa !179
  %i.fc = fcmp ugt float %i.fa, %i.fb
  br i1 %i.fc, label %bb.bk, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fd = getelementptr inbounds nuw i8, ptr %2, i64 228 ; 3 uses
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !180 ; 3 uses
  %i.ff = icmp slt i32 %i.fe, 8
  br i1 %i.ff, label %bb.ap, label %bb.bk

bb.ap:                                            ; preds = %bb.ao
  %i.fg = load i32, ptr %i.ag, align 8, !tbaa !147
  %i.fh = load i32, ptr %i.n, align 8, !tbaa !147
  %i.fi = sext i32 %i.fe to i64, !nosanitize !9   ; 5 uses
  %i.fj = icmp ult i32 %i.fe, 8
  br i1 %i.fj, label %bb.ar, label %bb.aq, !prof !10, !nosanitize !9

bb.aq:                                            ; preds = %bb.ap
  call void @__ubsan_handle_out_of_bounds_abort(ptr nonnull @403, i64 %i.fi) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.ar:                                            ; preds = %bb.ap
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 132 ; 2 uses
  %i.fl = shl nuw nsw i64 %i.fi, 3
  %i.fm = ptrtoint ptr %i.fk to i64, !nosanitize !9 ; 3 uses
  %i.fn = add i64 %i.fl, %i.fm, !nosanitize !9    ; 2 uses
  %.not149 = icmp ult i64 %i.fn, %i.fm, !nosanitize !9
  br i1 %.not149, label %bb.as, label %bb.at, !prof !97, !nosanitize !9

bb.as:                                            ; preds = %bb.ar
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @404, i64 %i.fm, i64 %i.fn) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.at:                                            ; preds = %bb.ar
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %i.fi ; 2 uses
  store i32 %i.fg, ptr %i.fo, align 4, !tbaa !103
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fo, i64 4
  store i32 %i.fh, ptr %.sroa.421.0..sroa_idx, align 8, !tbaa !103
  %i.fp = getelementptr inbounds nuw i8, ptr %2, i64 196 ; 2 uses
  %i.fq = shl nuw nsw i64 %i.fi, 2
  %i.fr = ptrtoint ptr %i.fp to i64, !nosanitize !9 ; 3 uses
  %i.fs = add i64 %i.fq, %i.fr, !nosanitize !9    ; 2 uses
  %.not150 = icmp ult i64 %i.fs, %i.fr, !nosanitize !9
  br i1 %.not150, label %bb.au, label %bb.av, !prof !97, !nosanitize !9

bb.au:                                            ; preds = %bb.at
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @405, i64 %i.fr, i64 %i.fs) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.av:                                            ; preds = %bb.at
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %i.fi
  store float %i.fa, ptr %i.ft, align 4, !tbaa !146
  %i.fu = load i32, ptr %i.fd, align 4, !tbaa !180 ; 2 uses
  %i.fv = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.fu, i32 1), !nosanitize !9 ; 2 uses
  %i.fw = extractvalue { i32, i1 } %i.fv, 1, !nosanitize !9
  br i1 %i.fw, label %bb.aw, label %bb.ax, !prof !97, !nosanitize !9

bb.aw:                                            ; preds = %bb.av
  %i.fx = zext nneg i32 %i.fu to i64, !nosanitize !9
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @406, i64 %i.fx, i64 1) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.ax:                                            ; preds = %bb.av
  %i.fy = extractvalue { i32, i1 } %i.fv, 0, !nosanitize !9
  store i32 %i.fy, ptr %i.fd, align 4, !tbaa !180
  br label %bb.bk

bb.ay:                                            ; preds = %.critedge
  %i.fz = fcmp ogt float %i.fa, 0.000000e+00
  br i1 %i.fz, label %bb.az, label %bb.bk

bb.az:                                            ; preds = %bb.ay
  %i.ga = load float, ptr %i.ew, align 8, !tbaa !179
  %i.gb = fcmp olt float %i.fa, %i.ga
  br i1 %i.gb, label %bb.ba, label %bb.bk

bb.ba:                                            ; preds = %bb.az
  %i.gc = load i8, ptr %i.dk, align 2, !tbaa !156
  %i.gd = and i8 %i.gc, 16
  %.not146 = icmp eq i8 %i.gd, 0
  br i1 %.not146, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.ge = getelementptr inbounds nuw i8, ptr %i.n, i64 198
  %i.gf = load i8, ptr %i.ge, align 2, !tbaa !156
  %i.gg = and i8 %i.gf, 16
  %.not148 = icmp eq i8 %i.gg, 0
  br i1 %.not148, label %.critedge152, label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.gh = load i32, ptr %i.ag, align 8, !tbaa !147 ; 2 uses
  %i.gi = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.gh, i32 1), !nosanitize !9 ; 2 uses
  %i.gj = extractvalue { i32, i1 } %i.gi, 0, !nosanitize !9
  %i.gk = extractvalue { i32, i1 } %i.gi, 1, !nosanitize !9
  br i1 %i.gk, label %bb.bd, label %bb.be, !prof !97, !nosanitize !9

bb.bd:                                            ; preds = %bb.bc
  %i.gl = zext nneg i32 %i.gh to i64, !nosanitize !9
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @407, i64 %i.gl, i64 1) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.be:                                            ; preds = %bb.bc
  %i.gm = getelementptr inbounds nuw i8, ptr %i.x, i64 4760
  %i.gn = load i16, ptr %i.gm, align 8, !tbaa !135
  %i.go = getelementptr inbounds nuw i8, ptr %i.ag, i64 196
  %i.gp = load i16, ptr %i.go, align 4, !tbaa !148
  %i.gq = load i32, ptr %i.n, align 8, !tbaa !147 ; 2 uses
  %i.gr = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.gq, i32 1), !nosanitize !9 ; 2 uses
  %i.gs = extractvalue { i32, i1 } %i.gr, 0, !nosanitize !9
  %i.gt = extractvalue { i32, i1 } %i.gr, 1, !nosanitize !9
  br i1 %i.gt, label %bb.bf, label %bb.bg, !prof !97, !nosanitize !9

bb.bf:                                            ; preds = %bb.be
  %i.gu = zext nneg i32 %i.gq to i64, !nosanitize !9
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @408, i64 %i.gu, i64 1) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.bg:                                            ; preds = %bb.be
  %i.gv = getelementptr inbounds nuw i8, ptr %i.n, i64 196
  %i.gw = load i16, ptr %i.gv, align 4, !tbaa !148
  %i.gx = getelementptr inbounds nuw i8, ptr %4, i64 4
  %.sroa.011.0.copyload = load <2 x float>, ptr %i.ev, align 4
  %.sroa.212.0.copyload = load float, ptr %.sroa.225.0..sroa_idx, align 4
  %.sroa.09.0.copyload = load <2 x float>, ptr %i.gx, align 4
  %.sroa.210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 12
  %.sroa.210.0.copyload = load float, ptr %.sroa.210.0..sroa_idx, align 4
  %i.gy = fadd <2 x float> %.sroa.011.0.copyload, %.sroa.09.0.copyload
  %i.gz = fadd float %.sroa.212.0.copyload, %.sroa.210.0.copyload
  %i.ha = getelementptr inbounds nuw i8, ptr %i.x, i64 4648
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !400 ; 4 uses
  %i.hc = getelementptr i8, ptr %i.hb, i64 -8
  %i.hd = load i32, ptr %i.hc, align 4, !nosanitize !9
  %i.he = icmp eq i32 %i.hd, -1056584962, !nosanitize !9
  br i1 %i.he, label %bb.bh, label %bb.bj, !nosanitize !9

bb.bh:                                            ; preds = %bb.bg
  %i.hf = getelementptr i8, ptr %i.hb, i64 -4
  %i.hg = load i32, ptr %i.hf, align 8, !nosanitize !9
  %i.hh = icmp eq i32 %i.hg, 50714477, !nosanitize !9
  br i1 %i.hh, label %bb.bj, label %bb.bi, !prof !10, !nosanitize !9

bb.bi:                                            ; preds = %bb.bh
  %i.hi = ptrtoint ptr %i.hb to i64, !nosanitize !9
  call void @__ubsan_handle_function_type_mismatch_abort(ptr nonnull @410, i64 %i.hi) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.bj:                                            ; preds = %bb.bg, %bb.bh
  %i.hj = getelementptr inbounds nuw i8, ptr %i.x, i64 4656
  %i.hk = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.hl = load ptr, ptr %i.hj, align 8, !tbaa !401
  %.sroa.518.0.insert.ext = zext i16 %i.gp to i64
  %.sroa.518.0.insert.shift = shl nuw i64 %.sroa.518.0.insert.ext, 48
  %.sroa.417.0.insert.ext = zext i16 %i.gn to i64
  %.sroa.417.0.insert.shift = shl nuw nsw i64 %.sroa.417.0.insert.ext, 32 ; 2 uses
  %.sroa.016.0.insert.ext = zext i32 %i.gj to i64
  %i.hm = or disjoint i64 %.sroa.518.0.insert.shift, %.sroa.016.0.insert.ext
  %.sroa.016.0.insert.insert = or disjoint i64 %i.hm, %.sroa.417.0.insert.shift
  %.sroa.5.0.insert.ext = zext i16 %i.gw to i64
  %.sroa.5.0.insert.shift = shl nuw i64 %.sroa.5.0.insert.ext, 48
  %.sroa.014.0.insert.ext = zext i32 %i.gs to i64
  %i.hn = or disjoint i64 %.sroa.5.0.insert.shift, %.sroa.014.0.insert.ext
  %.sroa.014.0.insert.insert = or disjoint i64 %i.hn, %.sroa.417.0.insert.shift
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.hk, align 4
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.2.0.copyload = load float, ptr %.sroa.2.0..sroa_idx, align 4
  %i.ho = call zeroext i1 %i.hb(i64 %.sroa.016.0.insert.insert, i64 %.sroa.014.0.insert.insert, <2 x float> %i.gy, float %i.gz, <2 x float> %.sroa.0.0.copyload, float %.sroa.2.0.copyload, ptr noundef %i.hl) #13
  br i1 %i.ho, label %.critedge152, label %bb.bk

.critedge152:                                     ; preds = %bb.bj, %bb.bb
  %i.hp = getelementptr inbounds nuw i8, ptr %i.p, i64 212 ; 2 uses
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !154
  %i.hr = or i32 %i.hq, 512
  store i32 %i.hr, ptr %i.hp, align 4, !tbaa !154
  %i.hs = load float, ptr %i.ez, align 4, !tbaa !399
  store float %i.hs, ptr %i.ew, align 8, !tbaa !179
  %i.ht = getelementptr inbounds nuw i8, ptr %2, i64 236 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.hv = load <2 x i32>, ptr %i.ht, align 4, !tbaa !103
  %i.hw = load <2 x i32>, ptr %i.hu, align 4, !tbaa !103
  %i.hx = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.hv, <2 x i32> %i.hw)
  store <2 x i32> %i.hx, ptr %i.ht, align 4, !tbaa !103
  %i.hy = getelementptr inbounds nuw i8, ptr %2, i64 244 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.ia = load i32, ptr %i.hy, align 4, !tbaa !181
  %i.ib = load i32, ptr %i.hz, align 4, !tbaa !402
  %i.ic = call noundef i32 @llvm.smax.i32(i32 %i.ia, i32 %i.ib)
  store i32 %i.ic, ptr %i.hy, align 4, !tbaa !181
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %.critedge152, %bb.ay, %bb.az, %bb.an, %bb.ao, %bb.ax
  %i.id = call float @b3GetMilliseconds(i64 noundef %i.eu) #13 ; 2 uses
  %i.ie = call float @b3GetStallThreshold() #13
  %i.if = fmul float %i.ie, 1.000000e+03
  %i.ig = fcmp ogt float %i.id, %i.if
  br i1 %i.ig, label %bb.bl, label %bb.bq

bb.bl:                                            ; preds = %bb.bk
  %i.ih = getelementptr inbounds nuw i8, ptr %i.x, i64 4104 ; 2 uses
  %i.ii = ptrtoint ptr %i.cy to i64, !nosanitize !9 ; 2 uses
  %i.ij = and i64 %i.ii, 7, !nosanitize !9
  %i.ik = icmp eq i64 %i.ij, 0, !nosanitize !9
  %i.il = and i1 %i.dc, %i.ik
  br i1 %i.il, label %bb.bn, label %bb.bm, !prof !10, !nosanitize !9

bb.bm:                                            ; preds = %bb.bl
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @411, i64 %i.ii) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.bn:                                            ; preds = %bb.bl
  %i.im = getelementptr inbounds nuw i8, ptr %i.cy, i64 116
  %i.in = load i32, ptr %i.im, align 4, !tbaa !164
  %i.io = call ptr @b3FindName(ptr noundef nonnull %i.ih, i32 noundef %i.in) #13 ; 2 uses
  %i.ip = ptrtoint ptr %i.bv to i64, !nosanitize !9 ; 2 uses
  %i.iq = and i64 %i.ip, 7, !nosanitize !9
  %i.ir = icmp eq i64 %i.iq, 0, !nosanitize !9
  %i.is = and i1 %i.bz, %i.ir
  br i1 %i.is, label %bb.bp, label %bb.bo, !prof !10, !nosanitize !9

bb.bo:                                            ; preds = %bb.bn
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @412, i64 %i.ip) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.bp:                                            ; preds = %bb.bn
  %i.it = icmp eq ptr %i.io, null
  %i.iu = select i1 %i.it, ptr @.str.22, ptr %i.io
  %i.iv = getelementptr inbounds nuw i8, ptr %i.bv, i64 116
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !164
  %i.ix = call ptr @b3FindName(ptr noundef nonnull %i.ih, i32 noundef %i.iw) #13 ; 2 uses
  %i.iy = icmp eq ptr %i.ix, null
  %i.iz = select i1 %i.iy, ptr @.str.22, ptr %i.ix
  %i.ja = fpext float %i.id to double
  call void (ptr, ...) @b3Log(ptr noundef nonnull @.str.26, double noundef %i.ja, ptr noundef nonnull %i.iu, ptr noundef nonnull %i.iz) #13
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %bb.br
end_hunk_4
