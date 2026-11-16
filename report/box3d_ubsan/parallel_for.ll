Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/parallel_for?download=true
inline.NumInlined: 2
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.b3ParallelForShared = type { %struct.b3AtomicInt, i32, i32, i32, ptr, ptr }
%struct.b3AtomicInt = type { i32 }
%struct.b3ParallelForTask = type { ptr, i32 }

@.src = private unnamed_addr constant [53 x i8] c"/opt-bench/work/box3d_ubsan/box3d/src/parallel_for.c\00", align 1
@0 = private unnamed_addr constant { i16, i16, [33 x i8] } { i16 -1, i16 0, [33 x i8] c"'b3World' (aka 'struct b3World')\00" }
@1 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 74, i32 27 }, ptr @0, i8 3, i8 3 }
@2 = private unnamed_addr constant { i16, i16, [6 x i8] } { i16 0, i16 11, [6 x i8] c"'int'\00" }
@3 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 82, i32 38 }, ptr @2 }
@4 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 86, i32 29 }, ptr @2 }
@5 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 89, i32 28 }, ptr @2 }
@6 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 89, i32 40 }, ptr @2 }
@7 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 89, i32 46 }, ptr @2 }
@8 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 93, i32 27 }, ptr @2 }
@9 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 93, i32 43 }, ptr @2 }
@10 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 93, i32 49 }, ptr @2 }
@11 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 94, i32 28 }, ptr @2 }
@12 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 94, i32 40 }, ptr @2 }
@13 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 94, i32 46 }, ptr @2 }
@14 = private unnamed_addr constant { i16, i16, [61 x i8] } { i16 -1, i16 0, [61 x i8] c"'b3ParallelForTask[32]' (aka 'struct b3ParallelForTask[32]')\00" }
@15 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 114, i32 3 }, ptr @14, ptr @2 }
@16 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 114, i32 3 } }
@17 = private unnamed_addr constant { i16, i16, [53 x i8] } { i16 -1, i16 0, [53 x i8] c"'b3ParallelForTask' (aka 'struct b3ParallelForTask')\00" }
@18 = private unnamed_addr constant { i16, i16, [60 x i8] } { i16 -1, i16 0, [60 x i8] c"'void *(*)(void (*)(void *), void *, void *, const char *)'\00" }
@19 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 119, i32 17 }, ptr @18 }
@20 = private unnamed_addr constant { i16, i16, [13 x i8] } { i16 -1, i16 0, [13 x i8] c"'void *[32]'\00" }
@21 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 119, i32 4 } }
@22 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 120, i32 21 }, ptr @2 }
@23 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 124, i32 4 } }
@24 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 131, i32 8 }, ptr @20, ptr @2 }
@25 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 131, i32 8 } }
@26 = private unnamed_addr constant { i16, i16, [27 x i8] } { i16 -1, i16 0, [27 x i8] c"'void (*)(void *, void *)'\00" }
@27 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 133, i32 4 }, ptr @26 }
@28 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 36, i32 38 }, ptr @17, i8 3, i8 3 }
@29 = private unnamed_addr constant { i16, i16, [57 x i8] } { i16 -1, i16 0, [57 x i8] c"'b3ParallelForShared' (aka 'struct b3ParallelForShared')\00" }
@30 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 38, i32 26 }, ptr @29, i8 3, i8 3 }
@31 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 53, i32 26 }, ptr @2 }
@32 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 54, i32 19 }, ptr @2 }
@33 = private unnamed_addr constant { i16, i16, [34 x i8] } { i16 -1, i16 0, [34 x i8] c"'void (*)(int, int, int, void *)'\00" }
@34 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 60, i32 3 }, ptr @33 }

; Function Attrs: nounwind uwtable
define hidden void @b3ParallelFor(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 !func_sanitize !26 {
bb.a:
  %6 = alloca %struct.b3ParallelForShared, align 8 ; 9 uses
  %7 = alloca [32 x %struct.b3ParallelForTask], align 16 ; 4 uses
  %i.a = alloca [32 x ptr], align 16              ; 7 uses
  %i.b = icmp slt i32 %2, 1
  br i1 %i.b, label %bb.as, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ne ptr %0, null, !nosanitize !9
  %i.d = ptrtoint ptr %0 to i64, !nosanitize !9   ; 2 uses
  %i.e = and i64 %i.d, 7, !nosanitize !9
  %i.f = icmp eq i64 %i.e, 0, !nosanitize !9
  %i.g = and i1 %i.c, %i.f, !nosanitize !9
  br i1 %i.g, label %bb.d, label %bb.c, !prof !10, !nosanitize !9

bb.c:                                             ; preds = %bb.b
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @1, i64 %i.d) #4, !nosanitize !9
  unreachable, !nosanitize !9

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4680
  %i.i = load i32, ptr %i.h, align 8, !tbaa !84   ; 4 uses
  %i.j = shl i32 %i.i, 5                          ; 6 uses
  %i.k = add i32 %i.i, 67108864
  %i.l = icmp ult i32 %i.k, 134217728
  br i1 %i.l, label %bb.f, label %bb.e, !prof !10, !nosanitize !9

bb.e:                                             ; preds = %bb.d
  %i.m = zext i32 %i.i to i64, !nosanitize !9
  tail call void @__ubsan_handle_mul_overflow_abort(ptr nonnull @3, i64 32, i64 %i.m) #4, !nosanitize !9
  unreachable, !nosanitize !9

bb.f:                                             ; preds = %bb.d
  %i.n = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %3, i32 %i.j), !nosanitize !9 ; 2 uses
  %i.o = extractvalue { i32, i1 } %i.n, 1, !nosanitize !9
  br i1 %i.o, label %bb.g, label %bb.h, !prof !13, !nosanitize !9

bb.g:                                             ; preds = %bb.f
  %i.p = zext i32 %3 to i64, !nosanitize !9
  %i.q = zext i32 %i.j to i64, !nosanitize !9
  tail call void @__ubsan_handle_mul_overflow_abort(ptr nonnull @4, i64 %i.p, i64 %i.q) #4, !nosanitize !9
  unreachable, !nosanitize !9

bb.h:                                             ; preds = %bb.f
  %i.r = extractvalue { i32, i1 } %i.n, 0, !nosanitize !9
  %.not = icmp sgt i32 %2, %i.r
  br i1 %.not, label %bb.p, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2, i32 %3), !nosanitize !9 ; 2 uses
  %i.t = extractvalue { i32, i1 } %i.s, 0, !nosanitize !9 ; 2 uses
  %i.u = extractvalue { i32, i1 } %i.s, 1, !nosanitize !9
  br i1 %i.u, label %bb.j, label %bb.k, !prof !13, !nosanitize !9

bb.j:                                             ; preds = %bb.i
  %i.v = zext nneg i32 %2 to i64, !nosanitize !9
  %i.w = zext i32 %3 to i64, !nosanitize !9
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @5, i64 %i.v, i64 %i.w) #4, !nosanitize !9
  unreachable, !nosanitize !9

bb.k:                                             ; preds = %bb.i
  %i.x = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.t, i32 -1) ; 2 uses
  %i.y = extractvalue { i32, i1 } %i.x, 0, !nosanitize !9 ; 3 uses
  %i.z = extractvalue { i32, i1 } %i.x, 1, !nosanitize !9
  br i1 %i.z, label %bb.l, label %bb.m, !prof !13, !nosanitize !9

bb.l:                                             ; preds = %bb.k
  %i.aa = zext i32 %i.t to i64, !nosanitize !9
  tail call void @__ubsan_handle_sub_overflow_abort(ptr nonnull @6, i64 %i.aa, i64 1) #4, !nosanitize !9
  unreachable, !nosanitize !9

bb.m:                                             ; preds = %bb.k
  %8 = icmp ne i32 %3, 0, !nosanitize !9
  %9 = icmp ne i32 %i.y, -2147483648, !nosanitize !9
  %10 = icmp ne i32 %3, -1, !nosanitize !9
  %11 = or i1 %10, %9, !nosanitize !9
  %12 = and i1 %8, %11, !nosanitize !9
  br i1 %12, label %bb.o, label %bb.n, !prof !10, !nosanitize !9

bb.n:                                             ; preds = %bb.m
  %i.ab = zext i32 %i.y to i64, !nosanitize !9
  %13 = zext i32 %3 to i64, !nosanitize !9
  tail call void @__ubsan_handle_divrem_overflow_abort(ptr nonnull @7, i64 %i.ab, i64 %13) #4, !nosanitize !9
  unreachable, !nosanitize !9

bb.o:                                             ; preds = %bb.m
  %i.ac = sdiv i32 %i.y, %3
  br label %b3AtomicStoreInt.exit

bb.p:                                             ; preds = %bb.h
  %i.ad = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2, i32 %i.j), !nosanitize !9 ; 2 uses
  %i.ae = extractvalue { i32, i1 } %i.ad, 0, !nosanitize !9 ; 2 uses
  %i.af = extractvalue { i32, i1 } %i.ad, 1, !nosanitize !9
  br i1 %i.af, label %bb.q, label %bb.r, !prof !13, !nosanitize !9

bb.q:                                             ; preds = %bb.p
  %i.ag = zext nneg i32 %2 to i64, !nosanitize !9
  %i.ah = zext i32 %i.j to i64, !nosanitize !9
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @8, i64 %i.ag, i64 %i.ah) #4, !nosanitize !9
  unreachable, !nosanitize !9

bb.r:                                             ; preds = %bb.p
  %i.ai = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.ae, i32 -1) ; 2 uses
  %i.aj = extractvalue { i32, i1 } %i.ai, 0, !nosanitize !9 ; 2 uses
  %i.ak = extractvalue { i32, i1 } %i.ai, 1, !nosanitize !9
  br i1 %i.ak, label %bb.s, label %bb.t, !prof !13, !nosanitize !9

bb.s:                                             ; preds = %bb.r
  %i.al = zext i32 %i.ae to i64, !nosanitize !9
  tail call void @__ubsan_handle_sub_overflow_abort(ptr nonnull @9, i64 %i.al, i64 1) #4, !nosanitize !9
  unreachable, !nosanitize !9

bb.t:                                             ; preds = %bb.r
  %.not61 = icmp eq i32 %i.j, 0, !nosanitize !9
  br i1 %.not61, label %bb.u, label %bb.v, !prof !13, !nosanitize !9

bb.u:                                             ; preds = %bb.t
  %i.am = zext i32 %i.aj to i64, !nosanitize !9
  tail call void @__ubsan_handle_divrem_overflow_abort(ptr nonnull @10, i64 %i.am, i64 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

bb.v:                                             ; preds = %bb.t
  %i.an = sdiv i32 %i.aj, %i.j                    ; 7 uses
  %i.ao = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2, i32 %i.an), !nosanitize !9 ; 2 uses
  %i.ap = extractvalue { i32, i1 } %i.ao, 0, !nosanitize !9 ; 2 uses
  %i.aq = extractvalue { i32, i1 } %i.ao, 1, !nosanitize !9
  br i1 %i.aq, label %bb.w, label %bb.x, !prof !13, !nosanitize !9

bb.w:                                             ; preds = %bb.v
  %i.ar = zext nneg i32 %2 to i64, !nosanitize !9
  %i.as = zext i32 %i.an to i64, !nosanitize !9
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @11, i64 %i.ar, i64 %i.as) #4, !nosanitize !9
  unreachable, !nosanitize !9

bb.x:                                             ; preds = %bb.v
  %i.at = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.ap, i32 -1) ; 2 uses
  %i.au = extractvalue { i32, i1 } %i.at, 0, !nosanitize !9 ; 3 uses
  %i.av = extractvalue { i32, i1 } %i.at, 1, !nosanitize !9
  br i1 %i.av, label %bb.y, label %bb.z, !prof !13, !nosanitize !9

bb.y:                                             ; preds = %bb.x
  %i.aw = zext i32 %i.ap to i64, !nosanitize !9
  tail call void @__ubsan_handle_sub_overflow_abort(ptr nonnull @12, i64 %i.aw, i64 1) #4, !nosanitize !9
  unreachable, !nosanitize !9

bb.z:                                             ; preds = %bb.x
  %14 = icmp ne i32 %i.an, 0, !nosanitize !9
  %15 = icmp ne i32 %i.au, -2147483648, !nosanitize !9
  %16 = icmp ne i32 %i.an, -1, !nosanitize !9
  %17 = or i1 %16, %15, !nosanitize !9
  %18 = and i1 %14, %17, !nosanitize !9
  br i1 %18, label %bb.ab, label %bb.aa, !prof !10, !nosanitize !9

bb.aa:                                            ; preds = %bb.z
  %i.ax = zext i32 %i.au to i64, !nosanitize !9
  %19 = zext i32 %i.an to i64, !nosanitize !9
  tail call void @__ubsan_handle_divrem_overflow_abort(ptr nonnull @13, i64 %i.ax, i64 %19) #4, !nosanitize !9
  unreachable, !nosanitize !9

bb.ab:                                            ; preds = %bb.z
  %i.ay = sdiv i32 %i.au, %i.an
  br label %b3AtomicStoreInt.exit

b3AtomicStoreInt.exit:                            ; preds = %bb.ab, %bb.o
  %.049 = phi i32 [ %3, %bb.o ], [ %i.an, %bb.ab ]
  %.048 = phi i32 [ %i.ac, %bb.o ], [ %i.ay, %bb.ab ] ; 2 uses
  %i.az = tail call i32 @llvm.smin.i32(i32 %i.i, i32 %.048) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #5
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %.048, ptr %i.ba, align 4, !tbaa !15
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.049, ptr %i.bb, align 8, !tbaa !16
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 %2, ptr %i.bc, align 4, !tbaa !17
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %1, ptr %i.bd, align 8, !tbaa !18
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %4, ptr %i.be, align 8, !tbaa !19
  store atomic i32 0, ptr %6 seq_cst, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.bf = icmp sgt i32 %i.az, 0
  br i1 %i.bf, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %b3AtomicStoreInt.exit
  %i.bg = ptrtoint ptr %7 to i64, !nosanitize !9  ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 4756 ; 3 uses
  %i.bi = ptrtoint ptr %i.a to i64                ; 6 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 4688
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 4704
  %wide.trip.count480 = zext nneg i32 %i.az to i64
  br label %.lr.ph.split.us.split.us.split.us

.lr.ph.split.us.split.us.split.us:                ; preds = %.lr.ph, %bb.al
  %indvars.iv476 = phi i64 [ %indvars.iv.next477, %bb.al ], [ 0, %.lr.ph ] ; 9 uses
  %exitcond479.not = icmp eq i64 %indvars.iv476, 32
  br i1 %exitcond479.not, label %.split.us, label %bb.ac, !prof !13, !nosanitize !9

bb.ac:                                            ; preds = %.lr.ph.split.us.split.us.split.us
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %indvars.iv476 ; 4 uses
  %i.bm = shl nuw nsw i64 %indvars.iv476, 4
  %i.bn = add i64 %i.bm, %i.bg, !nosanitize !9    ; 2 uses
  %.not64.us.us.us = icmp ult i64 %i.bn, %i.bg, !nosanitize !9
  br i1 %.not64.us.us.us, label %.split194.us, label %bb.ad, !prof !13, !nosanitize !9

bb.ad:                                            ; preds = %bb.ac
  store ptr %6, ptr %i.bl, align 16, !tbaa !22
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bp = trunc nuw nsw i64 %indvars.iv476 to i32
  store i32 %i.bp, ptr %i.bo, align 8, !tbaa !23
  %i.bq = load i32, ptr %i.bh, align 4, !tbaa !85
  %i.br = icmp slt i32 %i.bq, 256
  br i1 %i.br, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bs = shl nuw nsw i64 %indvars.iv476, 3
  %i.bt = add i64 %i.bs, %i.bi, !nosanitize !9    ; 2 uses
  %.not65.us.us.us = icmp ult i64 %i.bt, %i.bi, !nosanitize !9
  br i1 %.not65.us.us.us, label %.split204.us, label %bb.af, !prof !13, !nosanitize !9

bb.af:                                            ; preds = %bb.ae
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv476
  store ptr null, ptr %i.bu, align 8, !tbaa !86
  call void @b3ParallelForTrampoline(ptr noundef nonnull %i.bl)
  br label %bb.al

bb.ag:                                            ; preds = %bb.ad
  %i.bv = load ptr, ptr %i.bj, align 8, !tbaa !87 ; 4 uses
  %i.bw = getelementptr i8, ptr %i.bv, i64 -8
  %i.bx = load i32, ptr %i.bw, align 4, !nosanitize !9
  %i.by = icmp eq i32 %i.bx, -1056584962, !nosanitize !9
  br i1 %i.by, label %bb.ah, label %bb.ai, !nosanitize !9

bb.ah:                                            ; preds = %bb.ag
  %i.bz = getelementptr i8, ptr %i.bv, i64 -4
  %i.ca = load i32, ptr %i.bz, align 8, !nosanitize !9
  %i.cb = icmp eq i32 %i.ca, -1348708513, !nosanitize !9
  br i1 %i.cb, label %bb.ai, label %.split214.us, !prof !10, !nosanitize !9

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.cc = load ptr, ptr %i.bk, align 8, !tbaa !88
  %i.cd = call ptr %i.bv(ptr noundef nonnull @b3ParallelForTrampoline, ptr noundef nonnull %i.bl, ptr noundef %i.cc, ptr noundef %5) #5
  %i.ce = shl nuw nsw i64 %indvars.iv476, 3
  %i.cf = add i64 %i.ce, %i.bi, !nosanitize !9    ; 2 uses
  %.not66.us.us.us = icmp ult i64 %i.cf, %i.bi, !nosanitize !9
  br i1 %.not66.us.us.us, label %.split220.us, label %bb.aj, !prof !13, !nosanitize !9

bb.aj:                                            ; preds = %bb.ai
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv476
  store ptr %i.cd, ptr %i.cg, align 8, !tbaa !86
  %i.ch = load i32, ptr %i.bh, align 4, !tbaa !85 ; 2 uses
  %i.ci = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.ch, i32 1), !nosanitize !9 ; 2 uses
  %i.cj = extractvalue { i32, i1 } %i.ci, 1, !nosanitize !9
  br i1 %i.cj, label %.split227.us, label %bb.ak, !prof !13, !nosanitize !9

bb.ak:                                            ; preds = %bb.aj
  %i.ck = extractvalue { i32, i1 } %i.ci, 0, !nosanitize !9
  store i32 %i.ck, ptr %i.bh, align 4, !tbaa !85
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.af
  %indvars.iv.next477 = add nuw nsw i64 %indvars.iv476, 1 ; 2 uses
  %exitcond481.not = icmp eq i64 %indvars.iv.next477, %wide.trip.count480
  br i1 %exitcond481.not, label %.lr.ph259, label %.lr.ph.split.us.split.us.split.us, !llvm.loop !24

.lr.ph259:                                        ; preds = %bb.al
  %i.cl = ptrtoint ptr %i.a to i64, !nosanitize !9 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 4696
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 4704
  %wide.trip.count498 = zext nneg i32 %i.az to i64
  br label %.lr.ph259.split.us.split.us

.lr.ph259.split.us.split.us:                      ; preds = %.lr.ph259, %bb.ar
  %indvars.iv494 = phi i64 [ %indvars.iv.next495, %bb.ar ], [ 0, %.lr.ph259 ] ; 4 uses
  %exitcond497.not = icmp eq i64 %indvars.iv494, 32
  br i1 %exitcond497.not, label %.split261.us, label %bb.am, !prof !13, !nosanitize !9

bb.am:                                            ; preds = %.lr.ph259.split.us.split.us
  %i.co = shl nuw nsw i64 %indvars.iv494, 3
  %i.cp = add i64 %i.co, %i.cl, !nosanitize !9    ; 2 uses
  %.not62.us.us = icmp ult i64 %i.cp, %i.cl, !nosanitize !9
  br i1 %.not62.us.us, label %.split264.us, label %bb.an, !prof !13, !nosanitize !9

bb.an:                                            ; preds = %bb.am
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv494
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !86 ; 2 uses
  %.not63.us.us = icmp eq ptr %i.cr, null
  br i1 %.not63.us.us, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cs = load ptr, ptr %i.cm, align 8, !tbaa !90 ; 4 uses
  %i.ct = getelementptr i8, ptr %i.cs, i64 -8
  %i.cu = load i32, ptr %i.ct, align 4, !nosanitize !9
  %i.cv = icmp eq i32 %i.cu, -1056584962, !nosanitize !9
  br i1 %i.cv, label %bb.ap, label %bb.aq, !nosanitize !9

bb.ap:                                            ; preds = %bb.ao
  %i.cw = getelementptr i8, ptr %i.cs, i64 -4
  %i.cx = load i32, ptr %i.cw, align 8, !nosanitize !9
  %i.cy = icmp eq i32 %i.cx, -1886282236, !nosanitize !9
  br i1 %i.cy, label %bb.aq, label %.split271.us, !prof !10, !nosanitize !9

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.cz = load ptr, ptr %i.cn, align 8, !tbaa !88
  call void %i.cs(ptr noundef nonnull %i.cr, ptr noundef %i.cz) #5
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.an
  %indvars.iv.next495 = add nuw nsw i64 %indvars.iv494, 1 ; 2 uses
  %exitcond499.not = icmp eq i64 %indvars.iv.next495, %wide.trip.count498
  br i1 %exitcond499.not, label %._crit_edge, label %.lr.ph259.split.us.split.us, !llvm.loop !25

.split.us:                                        ; preds = %.lr.ph.split.us.split.us.split.us
  call void @__ubsan_handle_out_of_bounds_abort(ptr nonnull @15, i64 32) #4, !nosanitize !9
  unreachable, !nosanitize !9

.split194.us:                                     ; preds = %bb.ac
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @16, i64 %i.bg, i64 %i.bn) #4, !nosanitize !9
  unreachable, !nosanitize !9

.split214.us:                                     ; preds = %bb.ah
  %i.da = ptrtoint ptr %i.bv to i64, !nosanitize !9
  call void @__ubsan_handle_function_type_mismatch_abort(ptr nonnull @19, i64 %i.da) #4, !nosanitize !9
  unreachable, !nosanitize !9

.split220.us:                                     ; preds = %bb.ai
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @21, i64 %i.bi, i64 %i.cf) #4, !nosanitize !9
  unreachable, !nosanitize !9

.split227.us:                                     ; preds = %bb.aj
  %i.db = zext nneg i32 %i.ch to i64, !nosanitize !9
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @22, i64 %i.db, i64 1) #4, !nosanitize !9
  unreachable, !nosanitize !9

.split204.us:                                     ; preds = %bb.ae
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @23, i64 %i.bi, i64 %i.bt) #4, !nosanitize !9
  unreachable, !nosanitize !9

._crit_edge:                                      ; preds = %bb.ar, %b3AtomicStoreInt.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5
  br label %bb.as

.split261.us:                                     ; preds = %.lr.ph259.split.us.split.us
  call void @__ubsan_handle_out_of_bounds_abort(ptr nonnull @24, i64 32) #4, !nosanitize !9
  unreachable, !nosanitize !9

.split264.us:                                     ; preds = %bb.am
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @25, i64 %i.cl, i64 %i.cp) #4, !nosanitize !9
  unreachable, !nosanitize !9

.split271.us:                                     ; preds = %bb.ap
  %i.dc = ptrtoint ptr %i.cs to i64, !nosanitize !9
  call void @__ubsan_handle_function_type_mismatch_abort(ptr nonnull @27, i64 %i.dc) #4, !nosanitize !9
  unreachable, !nosanitize !9

end_hunk_0
