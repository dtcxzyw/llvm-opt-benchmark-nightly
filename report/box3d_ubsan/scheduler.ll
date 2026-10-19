Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/scheduler?download=true
inline.NumInlined: 14
inline.NumDeleted: 5
loop-unroll.NumUnrolled: 2
begin_hunk_0
@11 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 144, i32 17 }, ptr @8, ptr @2 }
@12 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 144, i32 17 } }
@13 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 154, i32 32 }, ptr @1, i8 3, i8 3 }
@14 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 162, i32 46 }, ptr @1, i8 3, i8 3 }
@15 = private unnamed_addr constant { i16, i16, [59 x i8] } { i16 -1, i16 0, [59 x i8] c"'b3SchedulerTask[256]' (aka 'struct b3SchedulerTask[256]')\00" }
@16 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 165, i32 52 }, ptr @15, ptr @2 }
@17 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 165, i32 52 } }
@18 = private unnamed_addr constant { i16, i16, [49 x i8] } { i16 -1, i16 0, [49 x i8] c"'b3SchedulerTask' (aka 'struct b3SchedulerTask')\00" }
@19 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 191, i32 38 }, ptr @18, i8 3, i8 3 }
@20 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 85, i32 42 }, ptr @7, i8 3, i8 3 }
@21 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 89, i32 31 }, ptr @1, i8 3, i8 3 }
@22 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 58, i32 47 }, ptr @1, i8 3, i8 3 }
@23 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 61, i32 44 }, ptr @15, ptr @2 }
@24 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 61, i32 44 } }
@25 = private unnamed_addr constant { i16, i16, [19 x i8] } { i16 -1, i16 0, [19 x i8] c"'void (*)(void *)'\00" }
@26 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 72, i32 3 }, ptr @25 }

; Function Attrs: nounwind uwtable
define hidden nonnull ptr @b3CreateScheduler(i32 noundef %0) local_unnamed_addr #0 !func_sanitize !32 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = tail call ptr @b3Alloc(i64 noundef 6944) #7 ; 12 uses
  %.not = icmp eq ptr %i.b, null, !nosanitize !11
  br i1 %.not, label %bb.b, label %bb.c, !prof !12, !nosanitize !11

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_nonnull_arg_abort(ptr nonnull @0) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(6944) %i.b, i8 0, i64 6944, i1 false)
  %i.c = ptrtoint ptr %i.b to i64, !nosanitize !11 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 768
  store i32 %0, ptr %i.d, align 8, !tbaa !33
  %i.e = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %0, i32 -1) ; 2 uses
  %i.f = extractvalue { i32, i1 } %i.e, 0, !nosanitize !11 ; 3 uses
  %i.g = extractvalue { i32, i1 } %i.e, 1, !nosanitize !11
  br i1 %i.g, label %bb.d, label %b3AtomicStoreInt.exit, !prof !12, !nosanitize !11

bb.d:                                             ; preds = %bb.c
  %i.h = zext i32 %0 to i64, !nosanitize !11
  tail call void @__ubsan_handle_sub_overflow_abort(ptr nonnull @3, i64 %i.h, i64 1) #8, !nosanitize !11
  unreachable, !nosanitize !11

b3AtomicStoreInt.exit:                            ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 772
  store i32 %i.f, ptr %i.i, align 4, !tbaa !17
  %i.j = tail call ptr @b3CreateSemaphore(i32 noundef 0) #7
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 6928
  store ptr %i.j, ptr %i.k, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 6936
  store atomic i32 0, ptr %i.l seq_cst, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 6920
  store atomic i32 0, ptr %i.m seq_cst, align 8
  %i.n = icmp sgt i32 %i.f, 0
  br i1 %i.n, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %b3AtomicStoreInt.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 256 ; 2 uses
  %i.p = ptrtoint ptr %i.o to i64, !nosanitize !11 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.f to i64
  br label %bb.e

._crit_edge:                                      ; preds = %bb.k, %b3AtomicStoreInt.exit
  ret ptr %i.b

bb.e:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 6 uses
  %exitcond.not = icmp eq i64 %indvars.iv, 32
  br i1 %exitcond.not, label %bb.f, label %bb.g, !prof !12, !nosanitize !11

bb.f:                                             ; preds = %bb.e
  call void @__ubsan_handle_out_of_bounds_abort(ptr nonnull @5, i64 32) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.g:                                             ; preds = %bb.e
  %i.q = shl nuw nsw i64 %indvars.iv, 4
  %i.r = add i64 %i.q, %i.p, !nosanitize !11      ; 2 uses
  %.not26 = icmp ult i64 %i.r, %i.p, !nosanitize !11
  br i1 %.not26, label %bb.h, label %bb.i, !prof !12, !nosanitize !11

bb.h:                                             ; preds = %bb.g
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @6, i64 %i.p, i64 %i.r) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.i:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %indvars.iv ; 3 uses
  store ptr %i.b, ptr %i.s, align 8, !tbaa !21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = trunc nuw nsw i64 %indvars.iv.next to i32 ; 2 uses
  store i32 %i.u, ptr %i.t, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.v = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 16, ptr noundef nonnull @.str, i32 noundef %i.u) #7 ; 0 uses
  %i.w = call ptr @b3CreateThread(ptr noundef nonnull @b3SchedulerWorkerMain, ptr noundef nonnull %i.s, ptr noundef nonnull %i.a) #7
  %i.x = shl nuw nsw i64 %indvars.iv, 3
  %i.y = add i64 %i.x, %i.c, !nosanitize !11      ; 2 uses
  %.not27 = icmp ult i64 %i.y, %i.c, !nosanitize !11
  br i1 %.not27, label %bb.j, label %bb.k, !prof !12, !nosanitize !11

bb.j:                                             ; preds = %bb.i
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @9, i64 %i.c, i64 %i.y) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.k:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv
  store ptr %i.w, ptr %i.z, align 8, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %exitcond86.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond86.not, label %._crit_edge, label %bb.e, !llvm.loop !31
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @b3Alloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind uwtable
declare void @__ubsan_handle_nonnull_arg_abort(ptr) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: noreturn nounwind uwtable
declare void @__ubsan_handle_type_mismatch_v1_abort(ptr, i64) local_unnamed_addr #3

; Function Attrs: noreturn nounwind uwtable
declare void @__ubsan_handle_sub_overflow_abort(ptr, i64, i64) local_unnamed_addr #3

declare ptr @b3CreateSemaphore(i32 noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind uwtable
declare void @__ubsan_handle_out_of_bounds_abort(ptr, i64) local_unnamed_addr #3

; Function Attrs: noreturn nounwind uwtable
declare void @__ubsan_handle_pointer_overflow_abort(ptr, i64, i64) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #5

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #6

declare ptr @b3CreateThread(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @b3SchedulerWorkerMain(ptr noundef %0) #0 !func_sanitize !35 {
bb.a:
  %i.a = icmp ne ptr %0, null, !nosanitize !11
  %i.b = ptrtoint ptr %0 to i64, !nosanitize !11  ; 2 uses
  %i.c = and i64 %i.b, 7, !nosanitize !11
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !11
  %i.e = and i1 %i.a, %i.d, !nosanitize !11
  br i1 %i.e, label %bb.c, label %bb.b, !prof !25, !nosanitize !11

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @20, i64 %i.b) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !21     ; 6 uses
  %i.g = icmp ne ptr %i.f, null, !nosanitize !11
  %i.h = ptrtoint ptr %i.f to i64, !nosanitize !11 ; 2 uses
  %i.i = and i64 %i.h, 7, !nosanitize !11
  %i.j = icmp eq i64 %i.i, 0, !nosanitize !11
  %i.k = and i1 %i.g, %i.j, !nosanitize !11
  br i1 %i.k, label %.lr.ph, label %._crit_edge98, !prof !26, !nosanitize !11

.lr.ph:                                           ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 6928 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 6936 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 6920 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 776 ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64                 ; 5 uses
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !18
  tail call void @b3WaitSemaphore(ptr noundef %i.q) #7
  %i.r = load atomic i32, ptr %i.m seq_cst, align 8
  %.not.us.us206 = icmp eq i32 %i.r, 0
  br i1 %.not.us.us206, label %.preheader.us.us, label %.split115.us

.preheader.us.us:                                 ; preds = %.lr.ph, %b3SchedulerExecuteOne.exit.us.us
  %i.s = load atomic i32, ptr %i.n seq_cst, align 8 ; 2 uses
  %.not2250.i.us96.us.us = icmp sgt i32 %i.s, 0
  br i1 %.not2250.i.us96.us.us, label %.lr.ph.i.us.us.us, label %b3SchedulerExecuteOne.exit.us.us

.lr.ph.i.us.us.us:                                ; preds = %.preheader.us.us, %b3AtomicStoreInt.exit.i.us.us.us
  %i.t = phi i32 [ %i.ar, %b3AtomicStoreInt.exit.i.us.us.us ], [ %i.s, %.preheader.us.us ]
  %wide.trip.count.i.us.us.us = zext nneg i32 %i.t to i64 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %.lr.ph.i.us.us.us
  %indvars.iv.i.us.us.us = phi i64 [ 0, %.lr.ph.i.us.us.us ], [ %indvars.iv.next.i.us.us.us.1, %bb.h ] ; 5 uses
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %indvars.iv.i.us.us.us ; 2 uses
  %i.v = mul nuw nsw i64 %indvars.iv.i.us.us.us, 24
  %i.w = add i64 %i.v, %i.p, !nosanitize !11      ; 2 uses
  %.not.i.us.us.us = icmp ult i64 %i.w, %i.p, !nosanitize !11
  br i1 %.not.i.us.us.us, label %.split70.us, label %b3AtomicLoadInt.exit25.i.us.us.us, !prof !12, !nosanitize !11

b3AtomicLoadInt.exit25.i.us.us.us:                ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 3 uses
  %i.y = load atomic i32, ptr %i.x seq_cst, align 4
  %.not21.i.us.us.us = icmp eq i32 %i.y, 1
  br i1 %.not21.i.us.us.us, label %b3AtomicCompareExchangeInt.exit.i.us.us.us, label %bb.e

b3AtomicCompareExchangeInt.exit.i.us.us.us:       ; preds = %b3AtomicLoadInt.exit25.i.us.us.us
  %i.z = cmpxchg ptr %i.x, i32 1, i32 2 seq_cst seq_cst, align 4
  %i.aa = extractvalue { i32, i1 } %i.z, 1
  br i1 %i.aa, label %bb.i, label %bb.e

bb.e:                                             ; preds = %b3AtomicCompareExchangeInt.exit.i.us.us.us, %b3AtomicLoadInt.exit25.i.us.us.us
  %indvars.iv.next.i.us.us.us = or disjoint i64 %indvars.iv.i.us.us.us, 1 ; 3 uses
  %exitcond72.not.i.us.us.us = icmp eq i64 %indvars.iv.next.i.us.us.us, %wide.trip.count.i.us.us.us
  br i1 %exitcond72.not.i.us.us.us, label %b3SchedulerExecuteOne.exit.us.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %exitcond.not.i.us.us.us.1 = icmp eq i64 %indvars.iv.i.us.us.us, 256
  br i1 %exitcond.not.i.us.us.us.1, label %.split.us, label %bb.g, !prof !12, !nosanitize !11

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %indvars.iv.next.i.us.us.us ; 2 uses
  %i.ac = mul nuw nsw i64 %indvars.iv.next.i.us.us.us, 24
  %i.ad = add i64 %i.ac, %i.p, !nosanitize !11    ; 2 uses
  %.not.i.us.us.us.1 = icmp ult i64 %i.ad, %i.p, !nosanitize !11
  br i1 %.not.i.us.us.us.1, label %.split70.us, label %b3AtomicLoadInt.exit25.i.us.us.us.1, !prof !12, !nosanitize !11

b3AtomicLoadInt.exit25.i.us.us.us.1:              ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 3 uses
  %i.af = load atomic i32, ptr %i.ae seq_cst, align 4
  %.not21.i.us.us.us.1 = icmp eq i32 %i.af, 1
  br i1 %.not21.i.us.us.us.1, label %b3AtomicCompareExchangeInt.exit.i.us.us.us.1, label %bb.h

b3AtomicCompareExchangeInt.exit.i.us.us.us.1:     ; preds = %b3AtomicLoadInt.exit25.i.us.us.us.1
  %i.ag = cmpxchg ptr %i.ae, i32 1, i32 2 seq_cst seq_cst, align 4
  %i.ah = extractvalue { i32, i1 } %i.ag, 1
  br i1 %i.ah, label %bb.i, label %bb.h

bb.h:                                             ; preds = %b3AtomicCompareExchangeInt.exit.i.us.us.us.1, %b3AtomicLoadInt.exit25.i.us.us.us.1
  %indvars.iv.next.i.us.us.us.1 = add nuw nsw i64 %indvars.iv.i.us.us.us, 2 ; 2 uses
  %exitcond72.not.i.us.us.us.1 = icmp eq i64 %indvars.iv.next.i.us.us.us.1, %wide.trip.count.i.us.us.us
  br i1 %exitcond72.not.i.us.us.us.1, label %b3SchedulerExecuteOne.exit.us.us, label %bb.d, !llvm.loop !0

bb.i:                                             ; preds = %b3AtomicCompareExchangeInt.exit.i.us.us.us.1, %b3AtomicCompareExchangeInt.exit.i.us.us.us
  %.lcssa213 = phi ptr [ %i.x, %b3AtomicCompareExchangeInt.exit.i.us.us.us ], [ %i.ae, %b3AtomicCompareExchangeInt.exit.i.us.us.us.1 ]
  %.lcssa211 = phi ptr [ %i.u, %b3AtomicCompareExchangeInt.exit.i.us.us.us ], [ %i.ab, %b3AtomicCompareExchangeInt.exit.i.us.us.us.1 ] ; 2 uses
  %i.ai = load ptr, ptr %.lcssa211, align 8, !tbaa !28 ; 4 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 -8
  %i.ak = load i32, ptr %i.aj, align 4, !nosanitize !11
  %i.al = icmp eq i32 %i.ak, -1056584962, !nosanitize !11
  br i1 %i.al, label %bb.j, label %b3AtomicStoreInt.exit.i.us.us.us, !nosanitize !11

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr i8, ptr %i.ai, i64 -4
  %i.an = load i32, ptr %i.am, align 8, !nosanitize !11
  %i.ao = icmp eq i32 %i.an, 1413295203, !nosanitize !11
  br i1 %i.ao, label %b3AtomicStoreInt.exit.i.us.us.us, label %.split79.us, !prof !25, !nosanitize !11

b3AtomicStoreInt.exit.i.us.us.us:                 ; preds = %bb.i, %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %.lcssa211, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !29
  tail call void %i.ai(ptr noundef %i.aq) #7, !inline_history !1
  store atomic i32 3, ptr %.lcssa213 seq_cst, align 4
  %i.ar = load atomic i32, ptr %i.n seq_cst, align 8 ; 2 uses
  %.not2250.i.us.us.us = icmp sgt i32 %i.ar, 0
  br i1 %.not2250.i.us.us.us, label %.lr.ph.i.us.us.us, label %b3SchedulerExecuteOne.exit.us.us

b3SchedulerExecuteOne.exit.us.us:                 ; preds = %b3AtomicStoreInt.exit.i.us.us.us, %bb.e, %bb.h, %.preheader.us.us
  %i.as = load ptr, ptr %i.l, align 8, !tbaa !18
  tail call void @b3WaitSemaphore(ptr noundef %i.as) #7
  %i.at = load atomic i32, ptr %i.m seq_cst, align 8
  %.not.us.us = icmp eq i32 %i.at, 0
  br i1 %.not.us.us, label %.preheader.us.us, label %.split115.us

._crit_edge98:                                    ; preds = %bb.c
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @21, i64 %i.h) #8, !nosanitize !11
  unreachable, !nosanitize !11

.split.us:                                        ; preds = %bb.f
  tail call void @__ubsan_handle_out_of_bounds_abort(ptr nonnull @23, i64 257) #8, !nosanitize !11
  unreachable, !nosanitize !11

.split70.us:                                      ; preds = %bb.g, %bb.d
  %.lcssa = phi i64 [ %i.w, %bb.d ], [ %i.ad, %bb.g ]
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @24, i64 %i.p, i64 %.lcssa) #8, !nosanitize !11
  unreachable, !nosanitize !11

.split79.us:                                      ; preds = %bb.j
  %i.au = ptrtoint ptr %i.ai to i64, !nosanitize !11
  tail call void @__ubsan_handle_function_type_mismatch_abort(ptr nonnull @26, i64 %i.au) #8, !nosanitize !11
  unreachable, !nosanitize !11

.split115.us:                                     ; preds = %b3SchedulerExecuteOne.exit.us.us, %.lr.ph
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define hidden void @b3DestroyScheduler(ptr noundef %0) local_unnamed_addr #0 !func_sanitize !30 {
bb.a:
  %i.a = icmp ne ptr %0, null, !nosanitize !11
  %i.b = ptrtoint ptr %0 to i64, !nosanitize !11  ; 5 uses
  %i.c = and i64 %i.b, 7, !nosanitize !11
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !11
  %i.e = and i1 %i.a, %i.d, !nosanitize !11
  br i1 %i.e, label %b3AtomicStoreInt.exit, label %bb.b, !prof !25, !nosanitize !11

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @10, i64 %i.b) #8, !nosanitize !11
  unreachable, !nosanitize !11

b3AtomicStoreInt.exit:                            ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 6936
  store atomic i32 1, ptr %i.f seq_cst, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 772 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 6928 ; 2 uses
  %i.i = load i32, ptr %i.g, align 4, !tbaa !17
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph31, label %._crit_edge34.thread

.lr.ph31:                                         ; preds = %b3AtomicStoreInt.exit, %.lr.ph31
  %.01327.us.us30 = phi i32 [ %i.l, %.lr.ph31 ], [ 0, %b3AtomicStoreInt.exit ]
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !18
  tail call void @b3SignalSemaphore(ptr noundef %i.k) #7
  %i.l = add nuw nsw i32 %.01327.us.us30, 1       ; 2 uses
  %i.m = load i32, ptr %i.g, align 4, !tbaa !17   ; 2 uses
  %i.n = icmp slt i32 %i.l, %i.m
  br i1 %i.n, label %.lr.ph31, label %.preheader

.preheader:                                       ; preds = %.lr.ph31
  %i.o = icmp sgt i32 %i.m, 0
  br i1 %i.o, label %.lr.ph33.preheader, label %._crit_edge34.thread

.lr.ph33:                                         ; preds = %bb.e
  %exitcond.not = icmp eq i64 %indvars.iv.next, 32
  br i1 %exitcond.not, label %bb.c, label %.lr.ph33.preheader, !prof !37, !llvm.loop !36, !nosanitize !11

bb.c:                                             ; preds = %.lr.ph33
  tail call void @__ubsan_handle_out_of_bounds_abort(ptr nonnull @11, i64 32) #8, !nosanitize !11
  unreachable, !nosanitize !11

.lr.ph33.preheader:                               ; preds = %.preheader, %.lr.ph33
  %indvars.iv61 = phi i64 [ %indvars.iv.next, %.lr.ph33 ], [ 0, %.preheader ] ; 3 uses
  %i.p = shl nuw nsw i64 %indvars.iv61, 3
  %i.q = add i64 %i.p, %i.b, !nosanitize !11      ; 2 uses
  %.not = icmp ult i64 %i.q, %i.b, !nosanitize !11
  br i1 %.not, label %bb.d, label %bb.e, !prof !12, !nosanitize !11

bb.d:                                             ; preds = %.lr.ph33.preheader
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @12, i64 %i.b, i64 %i.q) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.e:                                             ; preds = %.lr.ph33.preheader
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv61 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !23
  tail call void @b3JoinThread(ptr noundef %i.s) #7
  store ptr null, ptr %i.r, align 8, !tbaa !23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv61, 1 ; 3 uses
  %i.t = load i32, ptr %i.g, align 4, !tbaa !17
  %i.u = sext i32 %i.t to i64
  %i.v = icmp slt i64 %indvars.iv.next, %i.u
  br i1 %i.v, label %.lr.ph33, label %._crit_edge34.thread, !llvm.loop !36

._crit_edge34.thread:                             ; preds = %bb.e, %b3AtomicStoreInt.exit, %.preheader
  %i.w = load ptr, ptr %i.h, align 8, !tbaa !18
  tail call void @b3DestroySemaphore(ptr noundef %i.w) #7
  tail call void @b3Free(ptr noundef nonnull %0, i64 noundef 6944) #7
  ret void
}

declare void @b3SignalSemaphore(ptr noundef) local_unnamed_addr #2

declare void @b3JoinThread(ptr noundef) local_unnamed_addr #2

declare void @b3DestroySemaphore(ptr noundef) local_unnamed_addr #2

declare void @b3Free(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @b3ResetScheduler(ptr noundef %0) local_unnamed_addr #0 !func_sanitize !30 {
bb.a:
  %i.a = icmp ne ptr %0, null, !nosanitize !11
  %i.b = ptrtoint ptr %0 to i64, !nosanitize !11  ; 2 uses
  %i.c = and i64 %i.b, 7, !nosanitize !11
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !11
  %i.e = and i1 %i.a, %i.d, !nosanitize !11
  br i1 %i.e, label %b3AtomicStoreInt.exit, label %bb.b, !prof !25, !nosanitize !11

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @13, i64 %i.b) #8, !nosanitize !11
  unreachable, !nosanitize !11

b3AtomicStoreInt.exit:                            ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 6920
  store atomic i32 0, ptr %i.f seq_cst, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define hidden nonnull ptr @b3SchedulerEnqueueTask(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readnone captures(none) %3) local_unnamed_addr #0 !func_sanitize !38 {
bb.a:
  %i.a = icmp ne ptr %2, null, !nosanitize !11
  %i.b = ptrtoint ptr %2 to i64, !nosanitize !11  ; 2 uses
  %i.c = and i64 %i.b, 7, !nosanitize !11
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !11
  %i.e = and i1 %i.a, %i.d, !nosanitize !11
  br i1 %i.e, label %b3AtomicFetchAddInt.exit, label %bb.b, !prof !25, !nosanitize !11

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @14, i64 %i.b) #8, !nosanitize !11
  unreachable, !nosanitize !11

b3AtomicFetchAddInt.exit:                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 6920
  %i.g = atomicrmw add ptr %i.f, i32 1 seq_cst, align 4 ; 2 uses
  %i.h = sext i32 %i.g to i64                     ; 3 uses
  %i.i = icmp ult i32 %i.g, 257
  br i1 %i.i, label %bb.d, label %bb.c, !prof !25, !nosanitize !11

bb.c:                                             ; preds = %b3AtomicFetchAddInt.exit
  tail call void @__ubsan_handle_out_of_bounds_abort(ptr nonnull @16, i64 %i.h) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.d:                                             ; preds = %b3AtomicFetchAddInt.exit
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 776 ; 2 uses
  %i.k = mul nuw nsw i64 %i.h, 24
  %i.l = ptrtoint ptr %i.j to i64, !nosanitize !11 ; 3 uses
  %i.m = add i64 %i.k, %i.l, !nosanitize !11      ; 2 uses
  %.not = icmp ult i64 %i.m, %i.l, !nosanitize !11
  br i1 %.not, label %bb.e, label %b3AtomicStoreInt.exit, !prof !12, !nosanitize !11

bb.e:                                             ; preds = %bb.d
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @17, i64 %i.l, i64 %i.m) #8, !nosanitize !11
  unreachable, !nosanitize !11

b3AtomicStoreInt.exit:                            ; preds = %bb.d
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %i.h ; 4 uses
  store ptr %0, ptr %i.n, align 8, !tbaa !28
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %1, ptr %i.o, align 8, !tbaa !29
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store atomic i32 1, ptr %i.p seq_cst, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 6928
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !18
  tail call void @b3SignalSemaphore(ptr noundef %i.r) #7
  ret ptr %i.n
}

; Function Attrs: nounwind uwtable
define hidden void @b3SchedulerFinishTask(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !func_sanitize !39 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.loopexit6, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = ptrtoint ptr %0 to i64, !nosanitize !11  ; 2 uses
  %i.c = and i64 %i.b, 7, !nosanitize !11
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !11
  br i1 %i.d, label %.lr.ph, label %._crit_edge, !prof !26, !nosanitize !11

.lr.ph:                                           ; preds = %.preheader
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 6920
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 776 ; 3 uses
  %i.i = ptrtoint ptr %i.h to i64                 ; 5 uses
  %i.j = icmp ne ptr %1, null
  %i.k = and i64 %i.f, 7
  %i.l = icmp eq i64 %i.k, 0
  %i.m = and i1 %i.j, %i.l
  %i.n = load atomic i32, ptr %i.e seq_cst, align 4
  %.not.us.us.us95 = icmp eq i32 %i.n, 3          ; 2 uses
  br i1 %i.m, label %.lr.ph.split.split.us.split.us.split.us, label %b3AtomicLoadInt.exit, !prof !25, !nosanitize !11

.lr.ph.split.split.us.split.us.split.us:          ; preds = %.lr.ph
  br i1 %.not.us.us.us95, label %.loopexit6, label %b3AtomicLoadInt.exit.i.us.us.us

b3AtomicLoadInt.exit.i.us.us.us:                  ; preds = %.lr.ph.split.split.us.split.us.split.us, %b3AtomicLoadInt.exit.us.us.us
  %i.o = load atomic i32, ptr %i.g seq_cst, align 4 ; 2 uses
  %.not2250.i.us.us.us = icmp sgt i32 %i.o, 0
  br i1 %.not2250.i.us.us.us, label %.lr.ph.i.us.us.us, label %.loopexit.us.us.us

.lr.ph.i.us.us.us:                                ; preds = %b3AtomicLoadInt.exit.i.us.us.us
  %wide.trip.count.i.us.us.us = zext nneg i32 %i.o to i64 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i.us.us.us
  %indvars.iv.i.us.us.us = phi i64 [ 0, %.lr.ph.i.us.us.us ], [ %indvars.iv.next.i.us.us.us.1, %bb.f ] ; 5 uses
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %indvars.iv.i.us.us.us ; 2 uses
  %i.q = mul nuw nsw i64 %indvars.iv.i.us.us.us, 24
  %i.r = add i64 %i.q, %i.i, !nosanitize !11      ; 2 uses
  %.not.i.us.us.us = icmp ult i64 %i.r, %i.i, !nosanitize !11
  br i1 %.not.i.us.us.us, label %.split67.us, label %b3AtomicLoadInt.exit25.i.us.us.us, !prof !12, !nosanitize !11

b3AtomicLoadInt.exit25.i.us.us.us:                ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.t = load atomic i32, ptr %i.s seq_cst, align 4
  %.not21.i.us.us.us = icmp eq i32 %i.t, 1
  br i1 %.not21.i.us.us.us, label %b3AtomicCompareExchangeInt.exit.i.us.us.us, label %bb.c

b3AtomicCompareExchangeInt.exit.i.us.us.us:       ; preds = %b3AtomicLoadInt.exit25.i.us.us.us
  %i.u = cmpxchg ptr %i.s, i32 1, i32 2 seq_cst seq_cst, align 4
  %i.v = extractvalue { i32, i1 } %i.u, 1
  br i1 %i.v, label %bb.g, label %bb.c

bb.c:                                             ; preds = %b3AtomicCompareExchangeInt.exit.i.us.us.us, %b3AtomicLoadInt.exit25.i.us.us.us
  %indvars.iv.next.i.us.us.us = or disjoint i64 %indvars.iv.i.us.us.us, 1 ; 3 uses
  %exitcond72.not.i.us.us.us = icmp eq i64 %indvars.iv.next.i.us.us.us, %wide.trip.count.i.us.us.us
  br i1 %exitcond72.not.i.us.us.us, label %.loopexit.us.us.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %exitcond.not.i.us.us.us.1 = icmp eq i64 %indvars.iv.i.us.us.us, 256
  br i1 %exitcond.not.i.us.us.us.1, label %.split65.us, label %bb.e, !prof !12, !nosanitize !11

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %indvars.iv.next.i.us.us.us ; 2 uses
  %i.x = mul nuw nsw i64 %indvars.iv.next.i.us.us.us, 24
  %i.y = add i64 %i.x, %i.i, !nosanitize !11      ; 2 uses
  %.not.i.us.us.us.1 = icmp ult i64 %i.y, %i.i, !nosanitize !11
  br i1 %.not.i.us.us.us.1, label %.split67.us, label %b3AtomicLoadInt.exit25.i.us.us.us.1, !prof !12, !nosanitize !11

b3AtomicLoadInt.exit25.i.us.us.us.1:              ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 3 uses
  %i.aa = load atomic i32, ptr %i.z seq_cst, align 4
  %.not21.i.us.us.us.1 = icmp eq i32 %i.aa, 1
  br i1 %.not21.i.us.us.us.1, label %b3AtomicCompareExchangeInt.exit.i.us.us.us.1, label %bb.f

b3AtomicCompareExchangeInt.exit.i.us.us.us.1:     ; preds = %b3AtomicLoadInt.exit25.i.us.us.us.1
  %i.ab = cmpxchg ptr %i.z, i32 1, i32 2 seq_cst seq_cst, align 4
  %i.ac = extractvalue { i32, i1 } %i.ab, 1
  br i1 %i.ac, label %bb.g, label %bb.f

bb.f:                                             ; preds = %b3AtomicCompareExchangeInt.exit.i.us.us.us.1, %b3AtomicLoadInt.exit25.i.us.us.us.1
  %indvars.iv.next.i.us.us.us.1 = add nuw nsw i64 %indvars.iv.i.us.us.us, 2 ; 2 uses
  %exitcond72.not.i.us.us.us.1 = icmp eq i64 %indvars.iv.next.i.us.us.us.1, %wide.trip.count.i.us.us.us
  br i1 %exitcond72.not.i.us.us.us.1, label %.loopexit.us.us.us, label %bb.b, !llvm.loop !0

.loopexit.us.us.us:                               ; preds = %bb.c, %bb.f, %b3AtomicLoadInt.exit.i.us.us.us
  tail call void @b3Yield() #7
  br label %b3AtomicLoadInt.exit.us.us.us

bb.g:                                             ; preds = %b3AtomicCompareExchangeInt.exit.i.us.us.us.1, %b3AtomicCompareExchangeInt.exit.i.us.us.us
  %.lcssa147 = phi ptr [ %i.s, %b3AtomicCompareExchangeInt.exit.i.us.us.us ], [ %i.z, %b3AtomicCompareExchangeInt.exit.i.us.us.us.1 ]
  %.lcssa145 = phi ptr [ %i.p, %b3AtomicCompareExchangeInt.exit.i.us.us.us ], [ %i.w, %b3AtomicCompareExchangeInt.exit.i.us.us.us.1 ] ; 2 uses
  %i.ad = load ptr, ptr %.lcssa145, align 8, !tbaa !28 ; 4 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 -8
  %i.af = load i32, ptr %i.ae, align 4, !nosanitize !11
  %i.ag = icmp eq i32 %i.af, -1056584962, !nosanitize !11
  br i1 %i.ag, label %bb.h, label %b3SchedulerExecuteOne.exit.us.us.us, !nosanitize !11

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr i8, ptr %i.ad, i64 -4
  %i.ai = load i32, ptr %i.ah, align 8, !nosanitize !11
  %i.aj = icmp eq i32 %i.ai, 1413295203, !nosanitize !11
  br i1 %i.aj, label %b3SchedulerExecuteOne.exit.us.us.us, label %.split77.us, !prof !25, !nosanitize !11

b3SchedulerExecuteOne.exit.us.us.us:              ; preds = %bb.g, %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %.lcssa145, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !29
  tail call void %i.ad(ptr noundef %i.al) #7, !inline_history !1
  store atomic i32 3, ptr %.lcssa147 seq_cst, align 4
  br label %b3AtomicLoadInt.exit.us.us.us

b3AtomicLoadInt.exit.us.us.us:                    ; preds = %b3SchedulerExecuteOne.exit.us.us.us, %.loopexit.us.us.us
  %i.am = load atomic i32, ptr %i.e seq_cst, align 4
  %.not.us.us.us = icmp eq i32 %i.am, 3
  br i1 %.not.us.us.us, label %.loopexit6, label %b3AtomicLoadInt.exit.i.us.us.us

._crit_edge:                                      ; preds = %.preheader
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @19, i64 %i.b) #8, !nosanitize !11
  unreachable, !nosanitize !11

b3AtomicLoadInt.exit:                             ; preds = %.lr.ph
  br i1 %.not.us.us.us95, label %.loopexit6, label %bb.i

bb.i:                                             ; preds = %b3AtomicLoadInt.exit
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @22, i64 %i.f) #8, !nosanitize !11
  unreachable, !nosanitize !11

.split65.us:                                      ; preds = %bb.d
  tail call void @__ubsan_handle_out_of_bounds_abort(ptr nonnull @23, i64 257) #8, !nosanitize !11
  unreachable, !nosanitize !11

.split67.us:                                      ; preds = %bb.e, %bb.b
  %.lcssa = phi i64 [ %i.r, %bb.b ], [ %i.y, %bb.e ]
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @24, i64 %i.i, i64 %.lcssa) #8, !nosanitize !11
  unreachable, !nosanitize !11

.split77.us:                                      ; preds = %bb.h
  %i.an = ptrtoint ptr %i.ad to i64, !nosanitize !11
  tail call void @__ubsan_handle_function_type_mismatch_abort(ptr nonnull @26, i64 %i.an) #8, !nosanitize !11
  unreachable, !nosanitize !11

.loopexit6:                                       ; preds = %b3AtomicLoadInt.exit.us.us.us, %.lr.ph.split.split.us.split.us.split.us, %b3AtomicLoadInt.exit, %bb.a
  ret void
}

declare void @b3Yield() local_unnamed_addr #2

declare void @b3WaitSemaphore(ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind uwtable
declare void @__ubsan_handle_function_type_mismatch_abort(ptr, i64) local_unnamed_addr #3

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind uwtable }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !24}
!1 = distinct !{null}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{}
!12 = !{!"branch_weights", i32 1, i32 1048575}
!13 = !{!"b3AtomicInt", !8, i64 0}
!14 = !{!"any pointer", !7, i64 0}
!15 = !{!"p1 _ZTS11b3Semaphore", !14, i64 0}
!16 = !{!"b3Scheduler", !7, i64 0, !7, i64 256, !8, i64 768, !8, i64 772, !7, i64 776, !13, i64 6920, !15, i64 6928, !13, i64 6936}
!17 = !{!16, !8, i64 772}
!18 = !{!16, !15, i64 6928}
!19 = !{!"p1 _ZTS11b3Scheduler", !14, i64 0}
!20 = !{!"b3SchedulerWorkerContext", !19, i64 0, !8, i64 8}
!21 = !{!20, !19, i64 0}
!22 = !{!"p1 _ZTS8b3Thread", !14, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!"branch_weights", i32 1048575, i32 1}
!26 = !{!"branch_weights", i32 127, i32 1}
!27 = !{!"b3SchedulerTask", !14, i64 0, !14, i64 8, !13, i64 16}
!28 = !{!27, !14, i64 0}
!29 = !{!27, !14, i64 8}
!30 = !{i32 -1056584962, i32 -311349147}
!31 = distinct !{!31, !24}
!32 = !{i32 -1056584962, i32 1795508755}
!33 = !{!16, !8, i64 768}
!34 = !{!20, !8, i64 8}
!35 = !{i32 -1056584962, i32 1413295203}
!36 = distinct !{!36, !24}
!37 = !{!"branch_weights", i32 1, i32 1048574}
!38 = !{i32 -1056584962, i32 -1348708513}
!39 = !{i32 -1056584962, i32 -1886282236}
end_hunk_0
