Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/tm_tree?download=true
inline.NumInlined: 48
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 36
loop-unroll.NumUnrolled: 38
begin_hunk_0_@tm_update_val:bb.a
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds [8 x i8], ptr %.val4, i64 %i.cs
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !39
  %i.cv = fadd double %.0251.i.epil, %i.cu        ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph5.us.i.preheader, label %.lr.ph.i.epil, !llvm.loop !84

.lr.ph5.us.i.preheader:                           ; preds = %.lr.ph.i.epil, %.lr.ph5.us.i.preheader.unr-lcssa
  %.lcssa9 = phi double [ %i.cn, %.lr.ph5.us.i.preheader.unr-lcssa ], [ %i.cv, %.lr.ph.i.epil ]
  %xtraiter12 = and i64 %wide.trip.count.i, 3     ; 3 uses
  %i.cw = icmp ult i32 %i.d, 4
  %unroll_iter17 = and i64 %wide.trip.count.i, 2147483644
  %lcmp.mod14.not = icmp eq i64 %xtraiter12, 0
  %lcmp.mod16 = icmp ne i64 %xtraiter12, 0
  br label %.lr.ph5.us.i

eval_grouping.exit:                               ; preds = %._crit_edge.us.i, %bb.a
  %.126.lcssa.i = phi double [ 0.000000e+00, %bb.a ], [ %.lcssa, %._crit_edge.us.i ]
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 32
  store double %.126.lcssa.i, ptr %i.cx, align 8, !tbaa !34
  ret void
}

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define hidden void @tm_complete_obj_weight(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #9 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !38     ; 13 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = icmp sgt i32 %1, 0
  br i1 %i.b, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 7         ; 3 uses
  %i.c = icmp ult i32 %1, 8
  br i1 %i.c, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483640
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.7, %.lr.ph ] ; 9 uses
  %.02629 = phi double [ 0.000000e+00, %.lr.ph.preheader.new ], [ %i.ah, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.e = load double, ptr %i.d, align 8, !tbaa !39
  %i.f = fadd double %.02629, %i.e
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load double, ptr %i.h, align 8, !tbaa !39
  %i.j = fadd double %i.f, %i.i
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load double, ptr %i.l, align 8, !tbaa !39
  %i.n = fadd double %i.j, %i.m
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load double, ptr %i.p, align 8, !tbaa !39
  %i.r = fadd double %i.n, %i.q
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.u = load double, ptr %i.t, align 8, !tbaa !39
  %i.v = fadd double %i.r, %i.u
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.y = load double, ptr %i.x, align 8, !tbaa !39
  %i.z = fadd double %i.v, %i.y
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !39
  %i.ad = fadd double %i.z, %i.ac
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %i.ag = load double, ptr %i.af, align 8, !tbaa !39
  %i.ah = fadd double %i.ad, %i.ag                ; 3 uses
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !3

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.7, %._crit_edge.loopexit.unr-lcssa ]
  %.02629.epil.init = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %i.ah, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod43 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod43)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %.02629.epil = phi double [ %.02629.epil.init, %.lr.ph.epil.preheader ], [ %i.ak, %.lr.ph.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.epil
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !39
  %i.ak = fadd double %.02629.epil, %i.aj         ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !85

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %.preheader
  %.026.lcssa = phi double [ 0.000000e+00, %.preheader ], [ %i.ah, %._crit_edge.loopexit.unr-lcssa ], [ %i.ak, %.lr.ph.epil ]
  %i.al = sitofp i32 %1 to double
  %i.am = fdiv double %.026.lcssa, %i.al          ; 3 uses
  %i.an = add nsw i32 %2, %1                      ; 5 uses
  %i.ao = sext i32 %i.an to i64
  %i.ap = shl nsw i64 %i.ao, 3
  %i.aq = tail call noalias ptr @malloc(i64 noundef %i.ap) #27 ; 4 uses
  store ptr %i.aq, ptr %0, align 8, !tbaa !38
  %i.ar = icmp sgt i32 %i.an, 0
  br i1 %i.ar, label %.lr.ph33.preheader, label %.loopexit

.lr.ph33.preheader:                               ; preds = %._crit_edge
  %i.as = sext i32 %1 to i64                      ; 3 uses
  %wide.trip.count38 = zext nneg i32 %i.an to i64 ; 2 uses
  %xtraiter44 = and i64 %wide.trip.count38, 1
  %i.at = icmp eq i32 %i.an, 1
  br i1 %i.at, label %.lr.ph33.epil.preheader, label %.lr.ph33.preheader.new

.lr.ph33.preheader.new:                           ; preds = %.lr.ph33.preheader
  %unroll_iter48 = and i64 %wide.trip.count38, 2147483646
  br label %.lr.ph33

.lr.ph33:                                         ; preds = %bb.d, %.lr.ph33.preheader.new
  %indvars.iv35 = phi i64 [ 0, %.lr.ph33.preheader.new ], [ %indvars.iv.next36.1, %bb.d ] ; 5 uses
  %niter49 = phi i64 [ 0, %.lr.ph33.preheader.new ], [ %niter49.next.1, %bb.d ]
  %i.au = icmp slt i64 %indvars.iv35, %i.as
  br i1 %i.au, label %bb.b, label %.lr.ph33.1

bb.b:                                             ; preds = %.lr.ph33
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv35
  %i.aw = load double, ptr %i.av, align 8, !tbaa !39
  br label %.lr.ph33.1

.lr.ph33.1:                                       ; preds = %.lr.ph33, %bb.b
  %.sink = phi double [ %i.aw, %bb.b ], [ %i.am, %.lr.ph33 ]
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv35
  store double %.sink, ptr %i.ax, align 8, !tbaa !39
  %indvars.iv.next36 = or disjoint i64 %indvars.iv35, 1 ; 3 uses
  %i.ay = icmp slt i64 %indvars.iv.next36, %i.as
  br i1 %i.ay, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph33.1
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next36
  %i.ba = load double, ptr %i.az, align 8, !tbaa !39
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph33.1
  %.sink.1 = phi double [ %i.ba, %bb.c ], [ %i.am, %.lr.ph33.1 ]
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv.next36
  store double %.sink.1, ptr %i.bb, align 8, !tbaa !39
  %indvars.iv.next36.1 = add nuw nsw i64 %indvars.iv35, 2 ; 2 uses
  %niter49.next.1 = add i64 %niter49, 2           ; 2 uses
  %niter49.ncmp.1 = icmp eq i64 %niter49.next.1, %unroll_iter48
  br i1 %niter49.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph33, !llvm.loop !4

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.d
  %lcmp.mod46.not = icmp eq i64 %xtraiter44, 0
  br i1 %lcmp.mod46.not, label %.loopexit, label %.lr.ph33.epil.preheader

.lr.ph33.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph33.preheader
  %indvars.iv35.epil.init = phi i64 [ 0, %.lr.ph33.preheader ], [ %indvars.iv.next36.1, %.loopexit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod47 = trunc i32 %i.an to i1
  tail call void @llvm.assume(i1 %lcmp.mod47)
  %i.bc = icmp slt i64 %indvars.iv35.epil.init, %i.as
  br i1 %i.bc, label %bb.e, label %.loopexit.loopexit.epilog-lcssa

bb.e:                                             ; preds = %.lr.ph33.epil.preheader
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv35.epil.init
  %i.be = load double, ptr %i.bd, align 8, !tbaa !39
  br label %.loopexit.loopexit.epilog-lcssa

.loopexit.loopexit.epilog-lcssa:                  ; preds = %bb.e, %.lr.ph33.epil.preheader
  %.sink.epil = phi double [ %i.be, %bb.e ], [ %i.am, %.lr.ph33.epil.preheader ]
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv35.epil.init
  store double %.sink.epil, ptr %i.bf, align 8, !tbaa !39
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit.epilog-lcssa, %.loopexit.loopexit.unr-lcssa, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define hidden ptr @tm_build_tree_from_topology(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @tm_get_verbose_level() #23
  store i32 %i.a, ptr @verbose_level, align 4, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.c = load i32, ptr %i.b, align 4, !tbaa !88   ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = load i32, ptr %i.d, align 8, !tbaa !89
  %i.f = mul nsw i32 %i.e, %i.c                   ; 14 uses
  %.not.i = icmp eq i32 %i.f, 0                   ; 2 uses
  br i1 %.not.i, label %check_constraints.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !90   ; 4 uses
  %.not31.i = icmp eq ptr %i.h, null
  br i1 %.not31.i, label %check_constraints.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = sext i32 %i.f to i64                     ; 2 uses
  %i.j = shl nsw i64 %i.i, 2
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #27 ; 7 uses
  %i.l = icmp sgt i32 %i.f, 0
  br i1 %i.l, label %.lr.ph.i, label %check_constraints.exit

.lr.ph.i:                                         ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !91   ; 3 uses
  %wide.trip.count.i = zext nneg i32 %i.f to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %4 = icmp eq i32 %i.f, 1
  br i1 %4, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  %invariant.op = sub i32 1, %i.c
  %invariant.op74 = sub i32 1, %i.c
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.d ] ; 4 uses
  %.02834.i = phi i32 [ -1, %.lr.ph.i.new ], [ %i.x, %bb.d ]
  %.02933.i = phi i32 [ 1, %.lr.ph.i.new ], [ %spec.select.i, %bb.d ]
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.a, %bb.d ]
  %5 = trunc nuw nsw i64 %indvars.iv.i to i32     ; 2 uses
  %6 = srem i32 %5, %i.c
  %7 = sdiv i32 %5, %i.c
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [4 x i8], ptr %i.h, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !15
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [4 x i8], ptr %i.n, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !15
  %.reass.i.reass.reass = add i32 %6, %invariant.op
  %14 = add nsw i32 %.reass.i.reass.reass, %13    ; 3 uses
  %15 = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.i
  store i32 %14, ptr %15, align 4, !tbaa !15
  %16 = icmp slt i32 %14, %.02834.i
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.o = trunc nuw nsw i64 %indvars.iv.next.i to i32 ; 2 uses
  %i.p = srem i32 %i.o, %i.c
  %i.q = sdiv i32 %i.o, %i.c
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !15
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !15
  %.reass.i.reass.reass.a = add i32 %i.p, %invariant.op74
  %i.x = add nsw i32 %.reass.i.reass.reass.a, %i.w ; 4 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.next.i
  store i32 %i.x, ptr %i.y, align 4, !tbaa !15
  %i.z = icmp slt i32 %i.x, %14
  %17 = or i1 %i.z, %16
  %spec.select.i = select i1 %17, i32 0, i32 %.02933.i ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %indvars.iv.next.i.a = add i64 %niter, 2        ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i.a, %unroll_iter
  br i1 %exitcond.not.i, label %._crit_edge.i.unr-lcssa, label %bb.d, !llvm.loop !86

._crit_edge.i.unr-lcssa:                          ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.unr-lcssa ] ; 2 uses
  %.02834.i.epil.init = phi i32 [ -1, %.lr.ph.i ], [ %i.x, %._crit_edge.i.unr-lcssa ]
  %.02933.i.epil.init = phi i32 [ 1, %.lr.ph.i ], [ %spec.select.i, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod65 = trunc i32 %i.f to i1
  tail call void @llvm.assume(i1 %lcmp.mod65)
  %18 = trunc nuw nsw i64 %indvars.iv.i.epil.init to i32 ; 2 uses
  %19 = srem i32 %18, %i.c
  %20 = sdiv i32 %18, %i.c
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [4 x i8], ptr %i.h, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !15
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [4 x i8], ptr %i.n, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !15
  %reass.sub.epil = sub i32 %19, %i.c
  %.reass.i.reass.epil = add i32 %reass.sub.epil, 1
  %27 = add nsw i32 %.reass.i.reass.epil, %26     ; 2 uses
  %28 = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.i.epil.init
  store i32 %27, ptr %28, align 4, !tbaa !15
  %29 = icmp slt i32 %27, %.02834.i.epil.init
  %spec.select.i.epil = select i1 %29, i32 0, i32 %.02933.i.epil.init
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %spec.select.i.lcssa = phi i32 [ %spec.select.i, %._crit_edge.i.unr-lcssa ], [ %spec.select.i.epil, %.epil.preheader ]
  %i.aa = icmp eq i32 %spec.select.i.lcssa, 0
  br i1 %i.aa, label %bb.e, label %check_constraints.exit

bb.e:                                             ; preds = %._crit_edge.i
  tail call void @qsort(ptr noundef nonnull %i.k, i64 noundef %i.i, i64 noundef 4, ptr noundef nonnull @tm_int_cmp_inc) #23
  br label %check_constraints.exit

check_constraints.exit:                           ; preds = %bb.a, %bb.b, %bb.c, %._crit_edge.i, %bb.e
  %.054 = phi ptr [ %i.k, %bb.c ], [ %i.k, %bb.e ], [ %i.k, %._crit_edge.i ], [ null, %bb.b ], [ null, %bb.a ] ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !50 ; 4 uses
  %i.ad = tail call i32 @tm_nb_processing_units(ptr noundef nonnull %0) #23 ; 2 uses
  %i.ae = mul nsw i32 %i.ad, %i.c                 ; 2 uses
  %i.af = load i32, ptr @verbose_level, align 4, !tbaa !15
  %i.ag = icmp sgt i32 %i.af, 4
  br i1 %i.ag, label %bb.f, label %bb.i

bb.f:                                             ; preds = %check_constraints.exit
  %i.ah = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.ac) ; 0 uses
  %i.ai = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %i.f) ; 0 uses
  %.not = icmp eq ptr %.054, null
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @tm_print_1D_tab(ptr noundef nonnull %.054, i32 noundef %i.f) #23
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.aj = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %i.ad) ; 0 uses
  %i.ak = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %i.c) ; 0 uses
  %i.al = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %i.ae) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %check_constraints.exit
  %i.am = icmp sgt i32 %i.ac, %i.f
  br i1 %i.am, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.an = load i32, ptr @verbose_level, align 4, !tbaa !15
  %i.ao = icmp sgt i32 %i.an, 0
  br i1 %i.ao, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ap = load ptr, ptr @stderr, align 8, !tbaa !26
  %i.aq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ap, ptr noundef nonnull @.str.7, i32 noundef %i.f, i32 noundef %i.ac) #26 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  tail call void @exit(i32 noundef -1) #25
  unreachable

bb.m:                                             ; preds = %bb.i
  %i.ar = icmp eq i32 %i.f, %i.ae
  %i.as = load i32, ptr @verbose_level, align 4, !tbaa !15 ; 4 uses
  br i1 %i.ar, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.at = icmp sgt i32 %i.as, 4
  br i1 %i.at, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.au = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %i.f, i32 noundef %i.f) ; 0 uses
  %.pre.pre = load i32, ptr @verbose_level, align 4, !tbaa !15
  br label %.thread

.thread:                                          ; preds = %bb.n, %bb.o
  %.pre = phi i32 [ %i.as, %bb.n ], [ %.pre.pre, %bb.o ]
  tail call void @free(ptr noundef %.054) #23
  br label %bb.t

bb.p:                                             ; preds = %bb.m
  br i1 %.not.i, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.av = icmp sgt i32 %i.as, 4
  br i1 %i.av, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %puts44 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.aw = load ptr, ptr %1, align 8, !tbaa !43
  %i.ax = tail call ptr @tm_kpartition_build_tree_from_topology(ptr noundef nonnull %0, ptr noundef %i.aw, i32 noundef %i.ac, ptr noundef %.054, i32 noundef %i.f, ptr noundef %2, ptr noundef %3) #23 ; 2 uses
  %i.ay = load i32, ptr %i.ab, align 8, !tbaa !50
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 72
  store i32 %i.ay, ptr %i.az, align 8, !tbaa !92
  tail call void @free(ptr noundef %.054) #23
  br label %bb.aa

bb.t:                                             ; preds = %.thread, %bb.p
  %i.ba = phi i32 [ %.pre, %.thread ], [ %i.as, %bb.p ]
  %i.bb = icmp sgt i32 %i.ba, 4
  br i1 %i.bb, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bc = load i32, ptr %i.ab, align 8, !tbaa !50 ; 5 uses
  %i.bd = sext i32 %i.bc to i64
  %i.be = mul nsw i64 %i.bd, 80
  %i.bf = tail call noalias ptr @malloc(i64 noundef %i.be) #27 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !51 ; 6 uses
  %i.bi = icmp sgt i32 %i.bc, 0
  br i1 %i.bi, label %.lr.ph.preheader.i, label %bb.w

.lr.ph.preheader.i:                               ; preds = %bb.v
  %tm_set_node.uniq.promoted.i = load i32, ptr @tm_set_node.uniq, align 4 ; 2 uses
  %wide.trip.count.i45 = zext nneg i32 %i.bc to i64 ; 2 uses
  %xtraiter.a = and i64 %wide.trip.count.i45, 1
  %i.bj = icmp eq i32 %i.bc, 1
  br i1 %i.bj, label %.lr.ph.i46.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter.a = and i64 %wide.trip.count.i45, 2147483646
  br label %.lr.ph.i46

.lr.ph.i46:                                       ; preds = %.lr.ph.i46, %.lr.ph.preheader.i.new
  %indvars.iv.i47 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i48.1, %.lr.ph.i46 ] ; 4 uses
  %i.bk = phi i32 [ %tm_set_node.uniq.promoted.i, %.lr.ph.preheader.i.new ], [ %i.cb, %.lr.ph.i46 ] ; 3 uses
  %niter.a = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %.lr.ph.i46 ]
  %i.bl = getelementptr inbounds nuw [80 x i8], ptr %i.bf, i64 %indvars.iv.i47 ; 7 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 40
  store i32 0, ptr %i.bn, align 8, !tbaa !27
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  %i.bp = trunc nuw nsw i64 %indvars.iv.i47 to i32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, i8 0, i64 24, i1 false)
  store i32 %i.bp, ptr %i.bo, align 8, !tbaa !33
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  store double 0.000000e+00, ptr %i.bq, align 8, !tbaa !34
  %i.br = add nsw i32 %i.bk, 1
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 52
  store i32 %i.bk, ptr %i.bs, align 4, !tbaa !35
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 44
  store i32 %i.bh, ptr %i.bt, align 4, !tbaa !36
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bl, i64 56
  store i32 0, ptr %i.bu, align 8, !tbaa !24
  %indvars.iv.next.i48 = or disjoint i64 %indvars.iv.i47, 1 ; 2 uses
  %i.bv = getelementptr inbounds nuw [80 x i8], ptr %i.bf, i64 %indvars.iv.next.i48 ; 7 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 40
  store i32 0, ptr %i.bx, align 8, !tbaa !27
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 48
  %i.bz = trunc nuw nsw i64 %indvars.iv.next.i48 to i32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bw, i8 0, i64 24, i1 false)
  store i32 %i.bz, ptr %i.by, align 8, !tbaa !33
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  store double 0.000000e+00, ptr %i.ca, align 8, !tbaa !34
  %i.cb = add nsw i32 %i.bk, 2                    ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bv, i64 52
  store i32 %i.br, ptr %i.cc, align 4, !tbaa !35
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bv, i64 44
  store i32 %i.bh, ptr %i.cd, align 4, !tbaa !36
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bv, i64 56
  store i32 0, ptr %i.ce, align 8, !tbaa !24
  %indvars.iv.next.i48.1 = add nuw nsw i64 %indvars.iv.i47, 2 ; 2 uses
  %niter.next.1 = add i64 %niter.a, 2             ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter.a
  br i1 %niter.ncmp.1, label %._crit_edge.i50.unr-lcssa, label %.lr.ph.i46, !llvm.loop !87

._crit_edge.i50.unr-lcssa:                        ; preds = %.lr.ph.i46
  %lcmp.mod.not.a = icmp eq i64 %xtraiter.a, 0
  br i1 %lcmp.mod.not.a, label %._crit_edge.i50, label %.lr.ph.i46.epil.preheader

.lr.ph.i46.epil.preheader:                        ; preds = %._crit_edge.i50.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i47.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i48.1, %._crit_edge.i50.unr-lcssa ] ; 2 uses
  %.epil.init = phi i32 [ %tm_set_node.uniq.promoted.i, %.lr.ph.preheader.i ], [ %i.cb, %._crit_edge.i50.unr-lcssa ] ; 2 uses
  %lcmp.mod65.a = trunc i32 %i.bc to i1
  tail call void @llvm.assume(i1 %lcmp.mod65.a)
  %i.cf = getelementptr inbounds nuw [80 x i8], ptr %i.bf, i64 %indvars.iv.i47.epil.init ; 7 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 40
  store i32 0, ptr %i.ch, align 8, !tbaa !27
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 48
  %i.cj = trunc nuw nsw i64 %indvars.iv.i47.epil.init to i32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cg, i8 0, i64 24, i1 false)
  store i32 %i.cj, ptr %i.ci, align 8, !tbaa !33
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  store double 0.000000e+00, ptr %i.ck, align 8, !tbaa !34
  %i.cl = add nsw i32 %.epil.init, 1
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cf, i64 52
  store i32 %.epil.init, ptr %i.cm, align 4, !tbaa !35
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cf, i64 44
  store i32 %i.bh, ptr %i.cn, align 4, !tbaa !36
  %i.co = getelementptr inbounds nuw i8, ptr %i.cf, i64 56
  store i32 0, ptr %i.co, align 8, !tbaa !24
  br label %._crit_edge.i50

._crit_edge.i50:                                  ; preds = %._crit_edge.i50.unr-lcssa, %.lr.ph.i46.epil.preheader
  %.lcssa = phi i32 [ %i.cb, %._crit_edge.i50.unr-lcssa ], [ %i.cl, %.lr.ph.i46.epil.preheader ]
  store i32 %.lcssa, ptr @tm_set_node.uniq, align 4, !tbaa !15
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge.i50, %bb.v
  %i.cp = load i32, ptr @verbose_level, align 4, !tbaa !15
  %i.cq = icmp sgt i32 %i.cp, 4
  br i1 %i.cq, label %bb.x, label %bb.y
end_hunk_0
