Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/rank0-rdft2?download=true
inline.NumInlined: 2
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
; Function Attrs: nounwind uwtable
define dso_local void @fftw_rdft2_rank0_register(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @fftw_mksolver(i64 noundef 16, ptr noundef nonnull @mksolver.sadt) #5
  tail call void @fftw_solver_register(ptr noundef %0, ptr noundef %i.a) #5
  ret void
}

declare void @fftw_solver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal ptr @mkplan(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.c = load i32, ptr %i.b, align 8, !tbaa !28
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %applicable.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 5 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !29
  switch i32 %i.f, label %applicable.exit.thread [
    i32 4, label %applicable.exit.thread30.thread
    i32 0, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !30
  %i.i = load i32, ptr %i.h, align 8, !tbaa !28
  %i.j = icmp slt i32 %i.i, 2
  br i1 %i.j, label %bb.d, label %applicable.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !31
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !32
  %.not.i = icmp eq ptr %i.l, %i.n
  br i1 %.not.i, label %applicable.exit, label %.thread37

applicable.exit:                                  ; preds = %bb.d
  %i.o = tail call i32 @fftw_rdft2_inplace_strides(ptr noundef nonnull %1, i32 noundef 2147483647) #5
  %.not33 = icmp eq i32 %i.o, 0
  br i1 %.not33, label %applicable.exit.thread, label %applicable.exit.thread30

applicable.exit.thread30:                         ; preds = %applicable.exit
  %.pre = load i32, ptr %i.e, align 8, !tbaa !29  ; 2 uses
  %i.p = icmp eq i32 %.pre, 4
  br i1 %i.p, label %applicable.exit.thread30.thread, label %bb.e

applicable.exit.thread30.thread:                  ; preds = %bb.b, %applicable.exit.thread30
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !30
  %i.s = tail call ptr @fftw_tensor_copy(ptr noundef %i.r) #5
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !32
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !31
  %i.x = tail call ptr @fftw_mkproblem_rdft_0_d(ptr noundef %i.s, ptr noundef %i.u, ptr noundef %i.w) #5
  %i.y = tail call ptr @fftw_mkplan_d(ptr noundef %2, ptr noundef %i.x) #5 ; 2 uses
  %.not27 = icmp eq ptr %i.y, null
  br i1 %.not27, label %applicable.exit.thread, label %thread-pre-split

thread-pre-split:                                 ; preds = %applicable.exit.thread30.thread
  %.pr = load i32, ptr %i.e, align 8, !tbaa !29
  br label %bb.e

bb.e:                                             ; preds = %thread-pre-split, %applicable.exit.thread30
  %i.z = phi i32 [ %.pr, %thread-pre-split ], [ %.pre, %applicable.exit.thread30 ]
  %.0 = phi ptr [ %i.y, %thread-pre-split ], [ null, %applicable.exit.thread30 ] ; 2 uses
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %.thread37, label %bb.f

.thread37:                                        ; preds = %bb.d, %bb.e
  %.040 = phi ptr [ %.0, %bb.e ], [ null, %bb.d ]
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !31
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !32
  %i.af = icmp eq ptr %i.ac, %i.ae
  %i.ag = select i1 %i.af, ptr @apply_r2hc_inplace, ptr @apply_r2hc
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.thread37
  %.039 = phi ptr [ %.040, %.thread37 ], [ %.0, %bb.e ] ; 3 uses
  %i.ah = phi ptr [ %i.ag, %.thread37 ], [ @apply_hc2r, %bb.e ]
  %i.ai = tail call ptr @fftw_mkplan_rdft2(i64 noundef 96, ptr noundef nonnull @mkplan.padt, ptr noundef nonnull %i.ah) #5 ; 9 uses
  %i.aj = load i32, ptr %i.e, align 8, !tbaa !29
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.g, label %.thread

.thread:                                          ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 88
  store ptr %.039, ptr %i.al, align 8, !tbaa !17
  br label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !30
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 64 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 72
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 80
  %i.ar = tail call i32 @fftw_tensor_tornk1(ptr noundef %i.an, ptr noundef nonnull %i.ao, ptr noundef nonnull %i.ap, ptr noundef nonnull %i.aq) #5 ; 0 uses
  %.pr32 = load i32, ptr %i.e, align 8, !tbaa !29
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 88
  store ptr %.039, ptr %i.as, align 8, !tbaa !17
  %i.at = icmp eq i32 %.pr32, 0
  br i1 %i.at, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.au = load i64, ptr %i.ao, align 8, !tbaa !18
  %i.av = mul nsw i64 %i.au, 3
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  tail call void @fftw_ops_other(i64 noundef %i.av, ptr noundef nonnull %i.aw) #5
  br label %applicable.exit.thread

bb.i:                                             ; preds = %.thread, %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %.039, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ax, ptr noundef nonnull align 8 dereferenceable(32) %i.ay, i64 32, i1 false), !tbaa.struct !33
  br label %applicable.exit.thread

applicable.exit.thread:                           ; preds = %bb.b, %bb.c, %bb.a, %bb.h, %bb.i, %applicable.exit.thread30.thread, %applicable.exit
  %.025 = phi ptr [ null, %applicable.exit.thread30.thread ], [ null, %applicable.exit ], [ %i.ai, %bb.i ], [ %i.ai, %bb.h ], [ null, %bb.a ], [ null, %bb.c ], [ null, %bb.b ]
  ret ptr %.025
}

declare ptr @fftw_mksolver(i64 noundef, ptr noundef) local_unnamed_addr #1

declare void @fftw_rdft2_solve(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal void @awake(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @fftw_plan_awake(ptr noundef nonnull %i.b, i32 noundef %1) #5
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @print(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  %i.c = load ptr, ptr %1, align 8, !tbaa !35     ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) %i.c(ptr noundef nonnull %1, ptr noundef nonnull @.str, ptr noundef nonnull %i.b) #5
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load i64, ptr %i.d, align 8, !tbaa !18
  tail call void (ptr, ptr, ...) %i.c(ptr noundef nonnull %1, ptr noundef nonnull @.str.1, i64 noundef %i.e) #5
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @destroy(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @fftw_plan_destroy_internal(ptr noundef nonnull %i.b) #5
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare ptr @fftw_mkplan_d(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @fftw_mkproblem_rdft_0_d(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @fftw_tensor_copy(ptr noundef) local_unnamed_addr #1

declare ptr @fftw_mkplan_rdft2(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @apply_r2hc_inplace(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3, ptr nofree noundef writeonly captures(none) %4) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i64, ptr %i.a, align 8, !tbaa !18   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load i64, ptr %i.c, align 8, !tbaa !20   ; 29 uses
  %.not25 = icmp slt i64 %i.b, 4
  br i1 %.not25, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = add nsw i64 %i.b, -4                     ; 2 uses
  %i.f = lshr i64 %i.e, 2
  %i.g = add nuw nsw i64 %i.f, 1                  ; 2 uses
  %xtraiter = and i64 %i.g, 3                     ; 3 uses
  %i.h = icmp ult i64 %i.e, 12
  br i1 %i.h, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.g, 9223372036854775804
  br label %.lr.ph

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph.preheader
  %.02326.epil.init = phi ptr [ %4, %.lr.ph.preheader ], [ %i.al, %.preheader.loopexit.unr-lcssa ]
  %lcmp.mod35 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod35)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.02326.epil = phi ptr [ %i.l, %.lr.ph.epil ], [ %.02326.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  store double 0.000000e+00, ptr %.02326.epil, align 8, !tbaa !19
  %i.i = getelementptr inbounds [8 x i8], ptr %.02326.epil, i64 %i.d ; 2 uses
  store double 0.000000e+00, ptr %i.i, align 8, !tbaa !19
  %i.j = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.d ; 2 uses
  store double 0.000000e+00, ptr %i.j, align 8, !tbaa !19
  %i.k = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.d ; 2 uses
  store double 0.000000e+00, ptr %i.k, align 8, !tbaa !19
  %i.l = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.d ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader.loopexit, label %.lr.ph.epil, !llvm.loop !36

.preheader.loopexit:                              ; preds = %.lr.ph.epil, %.preheader.loopexit.unr-lcssa
  %.lcssa = phi ptr [ %i.al, %.preheader.loopexit.unr-lcssa ], [ %i.l, %.lr.ph.epil ]
  %i.m = and i64 %i.b, 9223372036854775804
  %i.n = add nuw i64 %i.m, 4
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.a
  %.023.lcssa = phi ptr [ %4, %bb.a ], [ %.lcssa, %.preheader.loopexit ] ; 2 uses
  %.0.lcssa = phi i64 [ 4, %bb.a ], [ %i.n, %.preheader.loopexit ] ; 5 uses
  %i.o = add nsw i64 %i.b, 4                      ; 3 uses
  %i.p = icmp slt i64 %.0.lcssa, %i.o
  br i1 %i.p, label %.lr.ph31.preheader, label %._crit_edge

.lr.ph31.preheader:                               ; preds = %.preheader
  %i.q = sub i64 %i.o, %.0.lcssa
  %i.r = add i64 %i.b, 3
  %i.s = sub i64 %i.r, %.0.lcssa
  %xtraiter36 = and i64 %i.q, 7                   ; 2 uses
  %lcmp.mod37.not = icmp eq i64 %xtraiter36, 0
  br i1 %lcmp.mod37.not, label %.lr.ph31.prol.loopexit, label %.lr.ph31.prol

.lr.ph31.prol:                                    ; preds = %.lr.ph31.preheader, %.lr.ph31.prol
  %.130.prol = phi i64 [ %i.u, %.lr.ph31.prol ], [ %.0.lcssa, %.lr.ph31.preheader ]
  %.12429.prol = phi ptr [ %i.t, %.lr.ph31.prol ], [ %.023.lcssa, %.lr.ph31.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph31.prol ], [ 0, %.lr.ph31.preheader ]
  store double 0.000000e+00, ptr %.12429.prol, align 8, !tbaa !19
  %i.t = getelementptr inbounds [8 x i8], ptr %.12429.prol, i64 %i.d ; 2 uses
  %i.u = add nuw nsw i64 %.130.prol, 1            ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter36
  br i1 %prol.iter.cmp.not, label %.lr.ph31.prol.loopexit, label %.lr.ph31.prol, !llvm.loop !37

.lr.ph31.prol.loopexit:                           ; preds = %.lr.ph31.prol, %.lr.ph31.preheader
  %.130.unr = phi i64 [ %.0.lcssa, %.lr.ph31.preheader ], [ %i.u, %.lr.ph31.prol ]
  %.12429.unr = phi ptr [ %.023.lcssa, %.lr.ph31.preheader ], [ %i.t, %.lr.ph31.prol ]
  %i.v = icmp ult i64 %i.s, 7
  br i1 %i.v, label %._crit_edge, label %.lr.ph31

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.02326 = phi ptr [ %4, %.lr.ph.preheader.new ], [ %i.al, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  store double 0.000000e+00, ptr %.02326, align 8, !tbaa !19
  %i.w = getelementptr inbounds [8 x i8], ptr %.02326, i64 %i.d ; 2 uses
  store double 0.000000e+00, ptr %i.w, align 8, !tbaa !19
  %i.x = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.d ; 2 uses
  store double 0.000000e+00, ptr %i.x, align 8, !tbaa !19
  %i.y = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.d ; 2 uses
  store double 0.000000e+00, ptr %i.y, align 8, !tbaa !19
  %i.z = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.d ; 2 uses
  store double 0.000000e+00, ptr %i.z, align 8, !tbaa !19
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.d ; 2 uses
  store double 0.000000e+00, ptr %i.aa, align 8, !tbaa !19
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.d ; 2 uses
  store double 0.000000e+00, ptr %i.ab, align 8, !tbaa !19
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.d ; 2 uses
  store double 0.000000e+00, ptr %i.ac, align 8, !tbaa !19
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.d ; 2 uses
  store double 0.000000e+00, ptr %i.ad, align 8, !tbaa !19
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.d ; 2 uses
  store double 0.000000e+00, ptr %i.ae, align 8, !tbaa !19
  %i.af = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.d ; 2 uses
  store double 0.000000e+00, ptr %i.af, align 8, !tbaa !19
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.d ; 2 uses
  store double 0.000000e+00, ptr %i.ag, align 8, !tbaa !19
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.d ; 2 uses
  store double 0.000000e+00, ptr %i.ah, align 8, !tbaa !19
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.d ; 2 uses
  store double 0.000000e+00, ptr %i.ai, align 8, !tbaa !19
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.d ; 2 uses
  store double 0.000000e+00, ptr %i.aj, align 8, !tbaa !19
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.d ; 2 uses
  store double 0.000000e+00, ptr %i.ak, align 8, !tbaa !19
  %i.al = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.d ; 3 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !38

.lr.ph31:                                         ; preds = %.lr.ph31.prol.loopexit, %.lr.ph31
  %.130 = phi i64 [ %i.au, %.lr.ph31 ], [ %.130.unr, %.lr.ph31.prol.loopexit ]
  %.12429 = phi ptr [ %i.at, %.lr.ph31 ], [ %.12429.unr, %.lr.ph31.prol.loopexit ] ; 2 uses
  store double 0.000000e+00, ptr %.12429, align 8, !tbaa !19
  %i.am = getelementptr inbounds [8 x i8], ptr %.12429, i64 %i.d ; 2 uses
  store double 0.000000e+00, ptr %i.am, align 8, !tbaa !19
  %i.an = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.d ; 2 uses
  store double 0.000000e+00, ptr %i.an, align 8, !tbaa !19
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.d ; 2 uses
  store double 0.000000e+00, ptr %i.ao, align 8, !tbaa !19
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.d ; 2 uses
  store double 0.000000e+00, ptr %i.ap, align 8, !tbaa !19
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.d ; 2 uses
  store double 0.000000e+00, ptr %i.aq, align 8, !tbaa !19
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.d ; 2 uses
  store double 0.000000e+00, ptr %i.ar, align 8, !tbaa !19
  %i.as = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.d ; 2 uses
  store double 0.000000e+00, ptr %i.as, align 8, !tbaa !19
  %i.at = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.d
  %i.au = add nuw nsw i64 %.130, 8                ; 2 uses
  %exitcond.not.7 = icmp eq i64 %i.au, %i.o
  br i1 %exitcond.not.7, label %._crit_edge, label %.lr.ph31, !llvm.loop !39

._crit_edge:                                      ; preds = %.lr.ph31.prol.loopexit, %.lr.ph31, %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @apply_r2hc(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i64, ptr %i.a, align 8, !tbaa !18   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load i64, ptr %i.c, align 8, !tbaa !43   ; 21 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = load i64, ptr %i.e, align 8, !tbaa !20   ; 42 uses
  %.not65 = icmp slt i64 %i.b, 4
  br i1 %.not65, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.g = add nsw i64 %i.b, -4                     ; 2 uses
  %i.h = lshr i64 %i.g, 2                         ; 2 uses
  %i.i = add nuw nsw i64 %i.h, 1                  ; 2 uses
  %i.j = icmp eq i64 %i.h, 0
  br i1 %i.j, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.i, 9223372036854775806
  br label %.lr.ph

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph
  %i.k = and i64 %i.g, 4
  %lcmp.mod.not.not = icmp eq i64 %i.k, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.epil.preheader, label %.preheader.loopexit

.lr.ph.epil.preheader:                            ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph.preheader
  %.069.epil.init = phi ptr [ %1, %.lr.ph.preheader ], [ %i.bl, %.preheader.loopexit.unr-lcssa ] ; 2 uses
  %.05968.epil.init = phi ptr [ %3, %.lr.ph.preheader ], [ %i.bs, %.preheader.loopexit.unr-lcssa ] ; 2 uses
  %.06167.epil.init = phi ptr [ %4, %.lr.ph.preheader ], [ %i.bt, %.preheader.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod91 = trunc i64 %i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod91)
  %i.l = load double, ptr %.069.epil.init, align 8, !tbaa !19
  %i.m = getelementptr inbounds [8 x i8], ptr %.069.epil.init, i64 %i.d ; 2 uses
  %i.n = load double, ptr %i.m, align 8, !tbaa !19
  %i.o = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.d ; 2 uses
  %i.p = load double, ptr %i.o, align 8, !tbaa !19
  %i.q = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.d ; 2 uses
  %i.r = load double, ptr %i.q, align 8, !tbaa !19
  %i.s = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.d
  store double %i.l, ptr %.05968.epil.init, align 8, !tbaa !19
  %i.t = getelementptr inbounds [8 x i8], ptr %.05968.epil.init, i64 %i.f ; 2 uses
  store double 0.000000e+00, ptr %.06167.epil.init, align 8, !tbaa !19
  %i.u = getelementptr inbounds [8 x i8], ptr %.06167.epil.init, i64 %i.f ; 2 uses
  store double %i.n, ptr %i.t, align 8, !tbaa !19
  %i.v = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.f ; 2 uses
  store double 0.000000e+00, ptr %i.u, align 8, !tbaa !19
  %i.w = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.f ; 2 uses
  store double %i.p, ptr %i.v, align 8, !tbaa !19
  %i.x = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.f ; 2 uses
  store double 0.000000e+00, ptr %i.w, align 8, !tbaa !19
  %i.y = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.f ; 2 uses
  store double %i.r, ptr %i.x, align 8, !tbaa !19
  %i.z = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.f
  store double 0.000000e+00, ptr %i.y, align 8, !tbaa !19
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.f
  br label %.preheader.loopexit

.preheader.loopexit:                              ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph.epil.preheader
  %.lcssa87 = phi ptr [ %i.bl, %.preheader.loopexit.unr-lcssa ], [ %i.s, %.lr.ph.epil.preheader ]
  %.lcssa86 = phi ptr [ %i.bs, %.preheader.loopexit.unr-lcssa ], [ %i.z, %.lr.ph.epil.preheader ]
  %.lcssa = phi ptr [ %i.bt, %.preheader.loopexit.unr-lcssa ], [ %i.aa, %.lr.ph.epil.preheader ]
  %i.ab = and i64 %i.b, 9223372036854775804
  %i.ac = add nuw i64 %i.ab, 4
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.a
  %.063.lcssa = phi i64 [ 4, %bb.a ], [ %i.ac, %.preheader.loopexit ] ; 5 uses
  %.061.lcssa = phi ptr [ %4, %bb.a ], [ %.lcssa, %.preheader.loopexit ] ; 2 uses
  %.059.lcssa = phi ptr [ %3, %bb.a ], [ %.lcssa86, %.preheader.loopexit ] ; 2 uses
  %.0.lcssa = phi ptr [ %1, %bb.a ], [ %.lcssa87, %.preheader.loopexit ] ; 2 uses
  %i.ad = add nsw i64 %i.b, 4                     ; 3 uses
  %i.ae = icmp slt i64 %.063.lcssa, %i.ad
  br i1 %i.ae, label %.lr.ph77.preheader, label %._crit_edge

.lr.ph77.preheader:                               ; preds = %.preheader
  %i.af = sub i64 %i.ad, %.063.lcssa
  %i.ag = add i64 %i.b, 3
  %i.ah = sub i64 %i.ag, %.063.lcssa
  %xtraiter92 = and i64 %i.af, 7                  ; 2 uses
  %lcmp.mod93.not = icmp eq i64 %xtraiter92, 0
  br i1 %lcmp.mod93.not, label %.lr.ph77.prol.loopexit, label %.lr.ph77.prol

.lr.ph77.prol:                                    ; preds = %.lr.ph77.preheader, %.lr.ph77.prol
  %.176.prol = phi ptr [ %i.aj, %.lr.ph77.prol ], [ %.0.lcssa, %.lr.ph77.preheader ] ; 2 uses
  %.16075.prol = phi ptr [ %i.ak, %.lr.ph77.prol ], [ %.059.lcssa, %.lr.ph77.preheader ] ; 2 uses
  %.16274.prol = phi ptr [ %i.al, %.lr.ph77.prol ], [ %.061.lcssa, %.lr.ph77.preheader ] ; 2 uses
  %.16473.prol = phi i64 [ %i.am, %.lr.ph77.prol ], [ %.063.lcssa, %.lr.ph77.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph77.prol ], [ 0, %.lr.ph77.preheader ]
  %i.ai = load double, ptr %.176.prol, align 8, !tbaa !19
  %i.aj = getelementptr inbounds [8 x i8], ptr %.176.prol, i64 %i.d ; 2 uses
  store double %i.ai, ptr %.16075.prol, align 8, !tbaa !19
  %i.ak = getelementptr inbounds [8 x i8], ptr %.16075.prol, i64 %i.f ; 2 uses
  store double 0.000000e+00, ptr %.16274.prol, align 8, !tbaa !19
  %i.al = getelementptr inbounds [8 x i8], ptr %.16274.prol, i64 %i.f ; 2 uses
  %i.am = add nuw nsw i64 %.16473.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter92
  br i1 %prol.iter.cmp.not, label %.lr.ph77.prol.loopexit, label %.lr.ph77.prol, !llvm.loop !40

.lr.ph77.prol.loopexit:                           ; preds = %.lr.ph77.prol, %.lr.ph77.preheader
  %.176.unr = phi ptr [ %.0.lcssa, %.lr.ph77.preheader ], [ %i.aj, %.lr.ph77.prol ]
  %.16075.unr = phi ptr [ %.059.lcssa, %.lr.ph77.preheader ], [ %i.ak, %.lr.ph77.prol ]
  %.16274.unr = phi ptr [ %.061.lcssa, %.lr.ph77.preheader ], [ %i.al, %.lr.ph77.prol ]
  %.16473.unr = phi i64 [ %.063.lcssa, %.lr.ph77.preheader ], [ %i.am, %.lr.ph77.prol ]
  %i.an = icmp ult i64 %i.ah, 7
  br i1 %i.an, label %._crit_edge, label %.lr.ph77

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.069 = phi ptr [ %1, %.lr.ph.preheader.new ], [ %i.bl, %.lr.ph ] ; 2 uses
  %.05968 = phi ptr [ %3, %.lr.ph.preheader.new ], [ %i.bs, %.lr.ph ] ; 2 uses
  %.06167 = phi ptr [ %4, %.lr.ph.preheader.new ], [ %i.bt, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.ao = load double, ptr %.069, align 8, !tbaa !19
  %i.ap = getelementptr inbounds [8 x i8], ptr %.069, i64 %i.d ; 2 uses
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !19
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.d ; 2 uses
  %i.as = load double, ptr %i.ar, align 8, !tbaa !19
  %i.at = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.d ; 2 uses
  %i.au = load double, ptr %i.at, align 8, !tbaa !19
  %i.av = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.d ; 2 uses
  store double %i.ao, ptr %.05968, align 8, !tbaa !19
  %i.aw = getelementptr inbounds [8 x i8], ptr %.05968, i64 %i.f ; 2 uses
  store double 0.000000e+00, ptr %.06167, align 8, !tbaa !19
  %i.ax = getelementptr inbounds [8 x i8], ptr %.06167, i64 %i.f ; 2 uses
  store double %i.aq, ptr %i.aw, align 8, !tbaa !19
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.f ; 2 uses
  store double 0.000000e+00, ptr %i.ax, align 8, !tbaa !19
  %i.az = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %i.f ; 2 uses
  store double %i.as, ptr %i.ay, align 8, !tbaa !19
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %i.f ; 2 uses
  store double 0.000000e+00, ptr %i.az, align 8, !tbaa !19
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.f ; 2 uses
  store double %i.au, ptr %i.ba, align 8, !tbaa !19
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %i.f ; 2 uses
  store double 0.000000e+00, ptr %i.bb, align 8, !tbaa !19
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %i.f ; 2 uses
  %i.be = load double, ptr %i.av, align 8, !tbaa !19
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.d ; 2 uses
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !19
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.d ; 2 uses
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !19
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.d ; 2 uses
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !19
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.d ; 3 uses
  store double %i.be, ptr %i.bc, align 8, !tbaa !19
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.f ; 2 uses
  store double 0.000000e+00, ptr %i.bd, align 8, !tbaa !19
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.f ; 2 uses
  store double %i.bg, ptr %i.bm, align 8, !tbaa !19
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.f ; 2 uses
  store double 0.000000e+00, ptr %i.bn, align 8, !tbaa !19
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.f ; 2 uses
  store double %i.bi, ptr %i.bo, align 8, !tbaa !19
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %i.f ; 2 uses
  store double 0.000000e+00, ptr %i.bp, align 8, !tbaa !19
  %i.br = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.f ; 2 uses
  store double %i.bk, ptr %i.bq, align 8, !tbaa !19
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.f ; 3 uses
  store double 0.000000e+00, ptr %i.br, align 8, !tbaa !19
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.f ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !41

.lr.ph77:                                         ; preds = %.lr.ph77.prol.loopexit, %.lr.ph77
  %.176 = phi ptr [ %i.cx, %.lr.ph77 ], [ %.176.unr, %.lr.ph77.prol.loopexit ] ; 2 uses
  %.16075 = phi ptr [ %i.cy, %.lr.ph77 ], [ %.16075.unr, %.lr.ph77.prol.loopexit ] ; 2 uses
  %.16274 = phi ptr [ %i.cz, %.lr.ph77 ], [ %.16274.unr, %.lr.ph77.prol.loopexit ] ; 2 uses
  %.16473 = phi i64 [ %i.da, %.lr.ph77 ], [ %.16473.unr, %.lr.ph77.prol.loopexit ]
  %i.bu = load double, ptr %.176, align 8, !tbaa !19
  %i.bv = getelementptr inbounds [8 x i8], ptr %.176, i64 %i.d ; 2 uses
  store double %i.bu, ptr %.16075, align 8, !tbaa !19
  %i.bw = getelementptr inbounds [8 x i8], ptr %.16075, i64 %i.f ; 2 uses
  store double 0.000000e+00, ptr %.16274, align 8, !tbaa !19
  %i.bx = getelementptr inbounds [8 x i8], ptr %.16274, i64 %i.f ; 2 uses
  %i.by = load double, ptr %i.bv, align 8, !tbaa !19
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.bv, i64 %i.d ; 2 uses
  store double %i.by, ptr %i.bw, align 8, !tbaa !19
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.f ; 2 uses
  store double 0.000000e+00, ptr %i.bx, align 8, !tbaa !19
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.bx, i64 %i.f ; 2 uses
  %i.cc = load double, ptr %i.bz, align 8, !tbaa !19
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.d ; 2 uses
  store double %i.cc, ptr %i.ca, align 8, !tbaa !19
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.ca, i64 %i.f ; 2 uses
  store double 0.000000e+00, ptr %i.cb, align 8, !tbaa !19
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %i.f ; 2 uses
  %i.cg = load double, ptr %i.cd, align 8, !tbaa !19
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.cd, i64 %i.d ; 2 uses
  store double %i.cg, ptr %i.ce, align 8, !tbaa !19
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.ce, i64 %i.f ; 2 uses
  store double 0.000000e+00, ptr %i.cf, align 8, !tbaa !19
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.cf, i64 %i.f ; 2 uses
  %i.ck = load double, ptr %i.ch, align 8, !tbaa !19
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.ch, i64 %i.d ; 2 uses
  store double %i.ck, ptr %i.ci, align 8, !tbaa !19
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.ci, i64 %i.f ; 2 uses
  store double 0.000000e+00, ptr %i.cj, align 8, !tbaa !19
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.cj, i64 %i.f ; 2 uses
  %i.co = load double, ptr %i.cl, align 8, !tbaa !19
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %i.d ; 2 uses
  store double %i.co, ptr %i.cm, align 8, !tbaa !19
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %i.f ; 2 uses
  store double 0.000000e+00, ptr %i.cn, align 8, !tbaa !19
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %i.f ; 2 uses
  %i.cs = load double, ptr %i.cp, align 8, !tbaa !19
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %i.d ; 2 uses
  store double %i.cs, ptr %i.cq, align 8, !tbaa !19
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.cq, i64 %i.f ; 2 uses
  store double 0.000000e+00, ptr %i.cr, align 8, !tbaa !19
  %i.cv = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.f ; 2 uses
  %i.cw = load double, ptr %i.ct, align 8, !tbaa !19
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.ct, i64 %i.d
  store double %i.cw, ptr %i.cu, align 8, !tbaa !19
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.cu, i64 %i.f
  store double 0.000000e+00, ptr %i.cv, align 8, !tbaa !19
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.cv, i64 %i.f
  %i.da = add nuw nsw i64 %.16473, 8              ; 2 uses
  %exitcond.not.7 = icmp eq i64 %i.da, %i.ad
  br i1 %exitcond.not.7, label %._crit_edge, label %.lr.ph77, !llvm.loop !42

._crit_edge:                                      ; preds = %.lr.ph77.prol.loopexit, %.lr.ph77, %.preheader
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @apply_hc2r(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree readnone captures(none) %2, ptr noundef %3, ptr nofree readnone captures(none) %4) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !44
  tail call void %i.d(ptr noundef %i.b, ptr noundef %3, ptr noundef %1) #5
  ret void
}

declare i32 @fftw_tensor_tornk1(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @fftw_ops_other(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare void @fftw_plan_awake(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @fftw_plan_destroy_internal(ptr noundef) local_unnamed_addr #1

declare i32 @fftw_rdft2_inplace_strides(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"double", !5, i64 0}
!11 = !{!"", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24}
!12 = !{!"plan_s", !9, i64 0, !11, i64 8, !10, i64 40, !6, i64 48, !6, i64 52}
end_hunk_0
