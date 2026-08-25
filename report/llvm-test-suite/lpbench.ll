Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/lpbench?download=true
inline.NumInlined: 9
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 14
begin_hunk_0_@matgen:bb.a
  %i.aw = fadd double %i.at, %i.av
  store double %i.aw, ptr %i.au, align 8, !tbaa !10
  %indvars.iv.next41.3 = add nuw nsw i64 %indvars.iv40, 4 ; 2 uses
  %exitcond43.not.3 = icmp eq i64 %indvars.iv.next41.3, 2000
  br i1 %exitcond43.not.3, label %middle.block, label %scalar.ph, !llvm.loop !26

middle.block:                                     ; preds = %vector.body, %scalar.ph
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1 ; 2 uses
  %exitcond47.not = icmp eq i64 %indvars.iv.next45, 2000
  br i1 %exitcond47.not, label %bb.d, label %.preheader, !llvm.loop !27

bb.d:                                             ; preds = %middle.block
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i32 @idamax(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp slt i32 %0, 1
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %0, 1
  br i1 %i.b, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq i32 %3, 1
  %i.c = sext i32 %2 to i64                       ; 4 uses
  br i1 %.not, label %.lr.ph49.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.d = add i32 %3, 1
  %i.e = getelementptr inbounds [8 x i8], ptr %1, i64 %i.c
  %i.f = load double, ptr %i.e, align 8, !tbaa !10
  %i.g = tail call double @llvm.fabs.f64(double %i.f) ; 2 uses
  %i.h = sext i32 %i.d to i64                     ; 2 uses
  %i.i = sext i32 %3 to i64                       ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %1, i64 %i.c ; 3 uses
  %i.j = add nsw i32 %0, -1                       ; 3 uses
  %xtraiter = and i32 %i.j, 1
  %i.k = icmp eq i32 %0, 2
  br i1 %i.k, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.j, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ %i.h, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 2 uses
  %.045 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %.1.1, %.lr.ph ]
  %.03143 = phi i32 [ 1, %.lr.ph.preheader.new ], [ %i.s, %.lr.ph ] ; 3 uses
  %.03342 = phi double [ %i.g, %.lr.ph.preheader.new ], [ %.134.1, %.lr.ph ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.l = load double, ptr %gep, align 8, !tbaa !10
  %i.m = tail call double @llvm.fabs.f64(double %i.l) ; 2 uses
  %i.n = fcmp ogt double %i.m, %.03342            ; 2 uses
  %.134 = select i1 %i.n, double %i.m, double %.03342 ; 2 uses
  %.1 = select i1 %i.n, i32 %.03143, i32 %.045
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.i ; 2 uses
  %i.o = add nuw nsw i32 %.03143, 1
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.p = load double, ptr %gep.1, align 8, !tbaa !10
  %i.q = tail call double @llvm.fabs.f64(double %i.p) ; 2 uses
  %i.r = fcmp ogt double %i.q, %.134              ; 2 uses
  %.134.1 = select i1 %i.r, double %i.q, double %.134 ; 2 uses
  %.1.1 = select i1 %i.r, i32 %i.o, i32 %.1       ; 3 uses
  %indvars.iv.next.1 = add nsw i64 %indvars.iv.next, %i.i ; 2 uses
  %i.s = add nuw nsw i32 %.03143, 2               ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit63.unr-lcssa, label %.lr.ph, !llvm.loop !28

.lr.ph49.preheader:                               ; preds = %bb.c
  %i.t = getelementptr inbounds [8 x i8], ptr %1, i64 %i.c
  %i.u = load double, ptr %i.t, align 8, !tbaa !10
  %i.v = tail call double @llvm.fabs.f64(double %i.u) ; 2 uses
  %wide.trip.count = zext nneg i32 %0 to i64
  %invariant.gep60 = getelementptr [8 x i8], ptr %1, i64 %i.c ; 3 uses
  %i.w = add nsw i64 %wide.trip.count, -1         ; 3 uses
  %xtraiter66 = and i64 %i.w, 1
  %i.x = icmp eq i32 %0, 2
  br i1 %i.x, label %.lr.ph49.epil.preheader, label %.lr.ph49.preheader.new

.lr.ph49.preheader.new:                           ; preds = %.lr.ph49.preheader
  %unroll_iter70 = and i64 %i.w, -2
  br label %.lr.ph49

.lr.ph49:                                         ; preds = %.lr.ph49, %.lr.ph49.preheader.new
  %indvars.iv53 = phi i64 [ 1, %.lr.ph49.preheader.new ], [ %indvars.iv.next54.1, %.lr.ph49 ] ; 4 uses
  %.248 = phi i32 [ 0, %.lr.ph49.preheader.new ], [ %.3.1, %.lr.ph49 ]
  %.23546 = phi double [ %i.v, %.lr.ph49.preheader.new ], [ %.336.1, %.lr.ph49 ] ; 2 uses
  %niter71 = phi i64 [ 0, %.lr.ph49.preheader.new ], [ %niter71.next.1, %.lr.ph49 ]
  %gep61 = getelementptr [8 x i8], ptr %invariant.gep60, i64 %indvars.iv53
  %i.y = load double, ptr %gep61, align 8, !tbaa !10
  %i.z = tail call double @llvm.fabs.f64(double %i.y) ; 2 uses
  %i.aa = fcmp ogt double %i.z, %.23546           ; 2 uses
  %.336 = select i1 %i.aa, double %i.z, double %.23546 ; 2 uses
  %i.ab = trunc nuw nsw i64 %indvars.iv53 to i32
  %.3 = select i1 %i.aa, i32 %i.ab, i32 %.248
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1 ; 2 uses
  %gep61.1 = getelementptr [8 x i8], ptr %invariant.gep60, i64 %indvars.iv.next54
  %i.ac = load double, ptr %gep61.1, align 8, !tbaa !10
  %i.ad = tail call double @llvm.fabs.f64(double %i.ac) ; 2 uses
  %i.ae = fcmp ogt double %i.ad, %.336            ; 2 uses
  %.336.1 = select i1 %i.ae, double %i.ad, double %.336 ; 2 uses
  %i.af = trunc nuw nsw i64 %indvars.iv.next54 to i32
  %.3.1 = select i1 %i.ae, i32 %i.af, i32 %.3     ; 3 uses
  %indvars.iv.next54.1 = add nuw nsw i64 %indvars.iv53, 2 ; 2 uses
  %niter71.next.1 = add nuw i64 %niter71, 2       ; 2 uses
  %niter71.ncmp.1 = icmp eq i64 %niter71.next.1, %unroll_iter70
  br i1 %niter71.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph49, !llvm.loop !29

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph49
  %lcmp.mod67.not = icmp eq i64 %xtraiter66, 0
  br i1 %lcmp.mod67.not, label %.loopexit, label %.lr.ph49.epil.preheader

.lr.ph49.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph49.preheader
  %indvars.iv53.epil.init = phi i64 [ 1, %.lr.ph49.preheader ], [ %indvars.iv.next54.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %.248.epil.init = phi i32 [ 0, %.lr.ph49.preheader ], [ %.3.1, %.loopexit.loopexit.unr-lcssa ]
  %.23546.epil.init = phi double [ %i.v, %.lr.ph49.preheader ], [ %.336.1, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod69 = trunc i64 %i.w to i1
  tail call void @llvm.assume(i1 %lcmp.mod69)
  %gep61.epil = getelementptr [8 x i8], ptr %invariant.gep60, i64 %indvars.iv53.epil.init
  %i.ag = load double, ptr %gep61.epil, align 8, !tbaa !10
  %i.ah = tail call double @llvm.fabs.f64(double %i.ag)
  %i.ai = fcmp ogt double %i.ah, %.23546.epil.init
  %i.aj = trunc nuw nsw i64 %indvars.iv53.epil.init to i32
  %.3.epil = select i1 %i.ai, i32 %i.aj, i32 %.248.epil.init
  br label %.loopexit

.loopexit.loopexit63.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit63.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ %i.h, %.lr.ph.preheader ], [ %indvars.iv.next.1, %.loopexit.loopexit63.unr-lcssa ]
  %.045.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %.1.1, %.loopexit.loopexit63.unr-lcssa ]
  %.03143.epil.init = phi i32 [ 1, %.lr.ph.preheader ], [ %i.s, %.loopexit.loopexit63.unr-lcssa ]
  %.03342.epil.init = phi double [ %i.g, %.lr.ph.preheader ], [ %.134.1, %.loopexit.loopexit63.unr-lcssa ]
  %lcmp.mod65 = trunc i32 %i.j to i1
  tail call void @llvm.assume(i1 %lcmp.mod65)
  %gep.epil = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.epil.init
  %i.ak = load double, ptr %gep.epil, align 8, !tbaa !10
  %i.al = tail call double @llvm.fabs.f64(double %i.ak)
  %i.am = fcmp ogt double %i.al, %.03342.epil.init
  %.1.epil = select i1 %i.am, i32 %.03143.epil.init, i32 %.045.epil.init
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.epil.preheader, %.loopexit.loopexit63.unr-lcssa, %.lr.ph49.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.b, %bb.a
  %.4 = phi i32 [ 0, %bb.b ], [ -1, %bb.a ], [ %.3.epil, %.lr.ph49.epil.preheader ], [ %.3.1, %.loopexit.loopexit.unr-lcssa ], [ %.1.1, %.loopexit.loopexit63.unr-lcssa ], [ %.1.epil, %.lr.ph.epil.preheader ]
  ret i32 %.4
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @dscal(i32 noundef %0, double noundef %1, ptr nofree noundef captures(none) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %4, 1
  br i1 %.not, label %.lr.ph23.preheader, label %bb.c

.lr.ph23.preheader:                               ; preds = %bb.b
  %i.b = sext i32 %3 to i64
  %wide.trip.count = zext nneg i32 %0 to i64      ; 3 uses
  %invariant.gep32 = getelementptr [8 x i8], ptr %2, i64 %i.b ; 2 uses
  %min.iters.check37 = icmp ult i32 %0, 4
  br i1 %min.iters.check37, label %.lr.ph23.preheader50, label %vector.ph38

vector.ph38:                                      ; preds = %.lr.ph23.preheader
  %n.vec39 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splatinsert40 = insertelement <2 x double> poison, double %1, i64 0
  %broadcast.splat41 = shufflevector <2 x double> %broadcast.splatinsert40, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body42

vector.body42:                                    ; preds = %vector.body42, %vector.ph38
  %index43 = phi i64 [ 0, %vector.ph38 ], [ %index.next46, %vector.body42 ] ; 2 uses
  %i.c = getelementptr [8 x i8], ptr %invariant.gep32, i64 %index43 ; 3 uses
  %i.d = getelementptr i8, ptr %i.c, i64 16       ; 2 uses
  %wide.load44 = load <2 x double>, ptr %i.c, align 8, !tbaa !10
  %wide.load45 = load <2 x double>, ptr %i.d, align 8, !tbaa !10
  %i.e = fmul <2 x double> %broadcast.splat41, %wide.load44
  %i.f = fmul <2 x double> %broadcast.splat41, %wide.load45
  store <2 x double> %i.e, ptr %i.c, align 8, !tbaa !10
  store <2 x double> %i.f, ptr %i.d, align 8, !tbaa !10
  %index.next46 = add nuw i64 %index43, 4         ; 2 uses
  %i.g = icmp eq i64 %index.next46, %n.vec39
  br i1 %i.g, label %middle.block47, label %vector.body42, !llvm.loop !30

middle.block47:                                   ; preds = %vector.body42
  %cmp.n48 = icmp eq i64 %n.vec39, %wide.trip.count
  br i1 %cmp.n48, label %.loopexit, label %.lr.ph23.preheader50

.lr.ph23.preheader50:                             ; preds = %.lr.ph23.preheader, %middle.block47
  %indvars.iv26.ph = phi i64 [ 0, %.lr.ph23.preheader ], [ %n.vec39, %middle.block47 ]
  br label %.lr.ph.a

bb.c:                                             ; preds = %bb.b
  %i.h = mul nsw i32 %4, %0                       ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.j = sext i32 %4 to i64                       ; 6 uses
  %i.k = sext i32 %3 to i64
  %i.l = zext nneg i32 %i.h to i64
  %invariant.gep = getelementptr [8 x i8], ptr %2, i64 %i.k ; 5 uses
  %5 = add nsw i64 %i.l, -1
  %6 = udiv i64 %5, %i.j                          ; 2 uses
  %7 = add i64 %6, 1                              ; 2 uses
  %xtraiter = and i64 %7, 3                       ; 3 uses
  %8 = icmp ult i64 %6, 3
  br i1 %8, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %7, -4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv ; 2 uses
  %9 = load double, ptr %gep, align 8, !tbaa !10
  %10 = fmul double %1, %9
  store double %10, ptr %gep, align 8, !tbaa !10
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.j ; 2 uses
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next ; 2 uses
  %11 = load double, ptr %gep.1, align 8, !tbaa !10
  %12 = fmul double %1, %11
  store double %12, ptr %gep.1, align 8, !tbaa !10
  %indvars.iv.next.1 = add nsw i64 %indvars.iv.next, %i.j ; 2 uses
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.1 ; 2 uses
  %13 = load double, ptr %gep.2, align 8, !tbaa !10
  %14 = fmul double %1, %13
  store double %14, ptr %gep.2, align 8, !tbaa !10
  %indvars.iv.next.2 = add nsw i64 %indvars.iv.next.1, %i.j ; 2 uses
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.2 ; 2 uses
  %15 = load double, ptr %gep.3, align 8, !tbaa !10
  %16 = fmul double %1, %15
  store double %16, ptr %gep.3, align 8, !tbaa !10
  %indvars.iv.next.3 = add nsw i64 %indvars.iv.next.2, %i.j ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %.loopexit.loopexit51.unr-lcssa, label %.lr.ph, !llvm.loop !31

.lr.ph.a:                                         ; preds = %.lr.ph23.preheader50, %.lr.ph.a
  %indvars.iv.a = phi i64 [ %indvars.iv.next.a, %.lr.ph.a ], [ %indvars.iv26.ph, %.lr.ph23.preheader50 ] ; 2 uses
  %gep.a = getelementptr [8 x i8], ptr %invariant.gep32, i64 %indvars.iv.a ; 2 uses
  %i.m = load double, ptr %gep.a, align 8, !tbaa !10
  %i.n = fmul double %1, %i.m
  store double %i.n, ptr %gep.a, align 8, !tbaa !10
  %indvars.iv.next.a = add nuw nsw i64 %indvars.iv.a, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.a, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph.a, !llvm.loop !32

.loopexit.loopexit51.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit51.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %.loopexit.loopexit51.unr-lcssa ]
  %lcmp.mod52 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod52)
  br label %.lr.ph23

.lr.ph23:                                         ; preds = %.lr.ph23, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph23 ] ; 2 uses
  %indvars.iv26 = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %indvars.iv.next27, %.lr.ph23 ]
  %gep33 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.epil ; 2 uses
  %i.o = load double, ptr %gep33, align 8, !tbaa !10
  %i.p = fmul double %1, %i.o
  store double %i.p, ptr %gep33, align 8, !tbaa !10
  %indvars.iv.next.epil = add nsw i64 %indvars.iv.epil, %i.j
  %indvars.iv.next27 = add i64 %indvars.iv26, 1   ; 2 uses
  %exitcond.not.a = icmp eq i64 %indvars.iv.next27, %xtraiter
  br i1 %exitcond.not.a, label %.loopexit, label %.lr.ph23, !llvm.loop !33

.loopexit:                                        ; preds = %.loopexit.loopexit51.unr-lcssa, %.lr.ph23, %.lr.ph.a, %middle.block47, %bb.c, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @daxpy(i32 noundef %0, double noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef captures(none) %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp sgt i32 %0, 0
  %i.b = fcmp une double %1, 0.000000e+00
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ne i32 %4, 1
  %i.d = icmp ne i32 %7, 1
  %or.cond3 = or i1 %i.c, %i.d
  br i1 %or.cond3, label %.lr.ph49.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.e = sext i32 %3 to i64                       ; 2 uses
  %i.f = sext i32 %6 to i64                       ; 2 uses
  %wide.trip.count = zext nneg i32 %0 to i64      ; 7 uses
  %invariant.gep = getelementptr [8 x i8], ptr %2, i64 %i.e ; 5 uses
  %invariant.gep63 = getelementptr [8 x i8], ptr %5, i64 %i.f ; 5 uses
  %min.iters.check = icmp ult i32 %0, 10
  br i1 %min.iters.check, label %.lr.ph.preheader102, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.g = add nsw i64 %i.f, %wide.trip.count
  %i.h = shl nsw i64 %i.g, 3
  %scevgep = getelementptr i8, ptr %5, i64 %i.h
  %i.i = add nsw i64 %i.e, %wide.trip.count
  %i.j = shl nsw i64 %i.i, 3
  %scevgep70 = getelementptr i8, ptr %2, i64 %i.j
  %bound0 = icmp ult ptr %invariant.gep63, %scevgep70
  %bound1 = icmp ult ptr %invariant.gep, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader102, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %1, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.k = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 16
  %wide.load = load <2 x double>, ptr %i.k, align 8, !tbaa !10, !alias.scope !35
  %wide.load71 = load <2 x double>, ptr %i.l, align 8, !tbaa !10, !alias.scope !35
  %i.m = getelementptr [8 x i8], ptr %invariant.gep63, i64 %index ; 3 uses
  %i.n = getelementptr i8, ptr %i.m, i64 16       ; 2 uses
  %wide.load72 = load <2 x double>, ptr %i.m, align 8, !tbaa !10, !alias.scope !38, !noalias !35
  %wide.load73 = load <2 x double>, ptr %i.n, align 8, !tbaa !10, !alias.scope !38, !noalias !35
  %i.o = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %wide.load72)
  %i.p = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load71, <2 x double> %wide.load73)
  store <2 x double> %i.o, ptr %i.m, align 8, !tbaa !10, !alias.scope !38, !noalias !35
  store <2 x double> %i.p, ptr %i.n, align 8, !tbaa !10, !alias.scope !38, !noalias !35
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !40

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader102

.lr.ph.preheader102:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader102
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.ph
  %i.r = load double, ptr %gep.prol, align 8, !tbaa !10
  %gep64.prol = getelementptr [8 x i8], ptr %invariant.gep63, i64 %indvars.iv.ph ; 2 uses
  %i.s = load double, ptr %gep64.prol, align 8, !tbaa !10
  %i.t = tail call double @llvm.fmuladd.f64(double %1, double %i.r, double %i.s)
  store double %i.t, ptr %gep64.prol, align 8, !tbaa !10
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader102
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader102 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.u = add nsw i64 %wide.trip.count, -1
  %i.v = icmp eq i64 %indvars.iv.ph, %i.u
  br i1 %i.v, label %.loopexit, label %.lr.ph

.lr.ph49.preheader:                               ; preds = %bb.b
  %i.w = icmp slt i32 %7, 0
  %i.x = sub nsw i32 1, %0                        ; 2 uses
  %i.y = mul nsw i32 %7, %i.x
  %.0 = select i1 %i.w, i32 %i.y, i32 0
  %i.z = icmp slt i32 %4, 0
  %i.aa = mul nsw i32 %4, %i.x
  %.036 = select i1 %i.z, i32 %i.aa, i32 0
  %i.ab = sext i32 %.0 to i64                     ; 6 uses
  %i.ac = sext i32 %7 to i64                      ; 3 uses
  %i.ad = sext i32 %6 to i64                      ; 2 uses
  %i.ae = sext i32 %.036 to i64                   ; 6 uses
  %i.af = sext i32 %4 to i64                      ; 3 uses
  %i.ag = sext i32 %3 to i64                      ; 2 uses
  %invariant.gep65 = getelementptr [8 x i8], ptr %2, i64 %i.ag ; 4 uses
  %invariant.gep67 = getelementptr [8 x i8], ptr %5, i64 %i.ad ; 4 uses
  %i.ah = zext nneg i32 %0 to i64                 ; 2 uses
  %min.iters.check84 = icmp ult i32 %0, 18
  br i1 %min.iters.check84, label %.lr.ph49.preheader101, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph49.preheader
  %ident.check = icmp ne i32 %7, 1
  %ident.check74 = icmp ne i32 %4, 1
  %i.ai = or i1 %ident.check, %ident.check74
  br i1 %i.ai, label %.lr.ph49.preheader101, label %vector.memcheck75

vector.memcheck75:                                ; preds = %vector.scevcheck
  %i.aj = add nsw i64 %i.ad, %i.ab
  %i.ak = shl nsw i64 %i.aj, 3                    ; 2 uses
  %scevgep76 = getelementptr i8, ptr %5, i64 %i.ak
  %i.al = add nsw i32 %0, -1
  %i.am = zext i32 %i.al to i64
  %i.an = shl nuw nsw i64 %i.am, 3                ; 2 uses
  %i.ao = getelementptr i8, ptr %5, i64 %i.ak
  %i.ap = getelementptr i8, ptr %i.ao, i64 %i.an
  %scevgep77 = getelementptr i8, ptr %i.ap, i64 8
  %i.aq = add nsw i64 %i.ag, %i.ae
  %i.ar = shl nsw i64 %i.aq, 3                    ; 2 uses
  %scevgep78 = getelementptr i8, ptr %2, i64 %i.ar
  %i.as = getelementptr i8, ptr %2, i64 %i.ar
  %i.at = getelementptr i8, ptr %i.as, i64 %i.an
  %scevgep79 = getelementptr i8, ptr %i.at, i64 8
  %bound080 = icmp ult ptr %scevgep76, %scevgep79
  %bound181 = icmp ult ptr %scevgep78, %scevgep77
  %found.conflict82 = and i1 %bound080, %bound181
  br i1 %found.conflict82, label %.lr.ph49.preheader101, label %vector.ph85

vector.ph85:                                      ; preds = %vector.memcheck75
  %n.vec86 = and i64 %i.ah, 2147483644            ; 5 uses
  %i.au = add nsw i64 %n.vec86, %i.ae
  %i.av = add nsw i64 %n.vec86, %i.ab
  %i.aw = trunc nuw nsw i64 %n.vec86 to i32
  %broadcast.splatinsert87 = insertelement <2 x double> poison, double %1, i64 0
  %broadcast.splat88 = shufflevector <2 x double> %broadcast.splatinsert87, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %invariant.gep106 = getelementptr [8 x i8], ptr %invariant.gep65, i64 %i.ae
  %invariant.gep108 = getelementptr [8 x i8], ptr %invariant.gep67, i64 %i.ab
  br label %vector.body89

vector.body89:                                    ; preds = %vector.body89, %vector.ph85
  %index90 = phi i64 [ 0, %vector.ph85 ], [ %index.next95, %vector.body89 ] ; 3 uses
  %gep107 = getelementptr [8 x i8], ptr %invariant.gep106, i64 %index90 ; 2 uses
  %i.ax = getelementptr i8, ptr %gep107, i64 16
  %wide.load91 = load <2 x double>, ptr %gep107, align 8, !tbaa !10, !alias.scope !41
  %wide.load92 = load <2 x double>, ptr %i.ax, align 8, !tbaa !10, !alias.scope !41
  %gep109 = getelementptr [8 x i8], ptr %invariant.gep108, i64 %index90 ; 3 uses
  %i.ay = getelementptr i8, ptr %gep109, i64 16   ; 2 uses
  %wide.load93 = load <2 x double>, ptr %gep109, align 8, !tbaa !10, !alias.scope !44, !noalias !41
  %wide.load94 = load <2 x double>, ptr %i.ay, align 8, !tbaa !10, !alias.scope !44, !noalias !41
  %i.az = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat88, <2 x double> %wide.load91, <2 x double> %wide.load93)
  %i.ba = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat88, <2 x double> %wide.load92, <2 x double> %wide.load94)
  store <2 x double> %i.az, ptr %gep109, align 8, !tbaa !10, !alias.scope !44, !noalias !41
  store <2 x double> %i.ba, ptr %i.ay, align 8, !tbaa !10, !alias.scope !44, !noalias !41
  %index.next95 = add nuw i64 %index90, 4         ; 2 uses
  %i.bb = icmp eq i64 %index.next95, %n.vec86
  br i1 %i.bb, label %middle.block96, label %vector.body89, !llvm.loop !46

middle.block96:                                   ; preds = %vector.body89
  %cmp.n97 = icmp eq i64 %n.vec86, %i.ah
  br i1 %cmp.n97, label %.loopexit, label %.lr.ph49.preheader101

.lr.ph49.preheader101:                            ; preds = %vector.memcheck75, %vector.scevcheck, %.lr.ph49.preheader, %middle.block96
  %indvars.iv54.ph = phi i64 [ %i.ae, %vector.memcheck75 ], [ %i.ae, %vector.scevcheck ], [ %i.ae, %.lr.ph49.preheader ], [ %i.au, %middle.block96 ] ; 3 uses
  %indvars.iv52.ph = phi i64 [ %i.ab, %vector.memcheck75 ], [ %i.ab, %vector.scevcheck ], [ %i.ab, %.lr.ph49.preheader ], [ %i.av, %middle.block96 ] ; 3 uses
  %.03846.ph = phi i32 [ 0, %vector.memcheck75 ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph49.preheader ], [ %i.aw, %middle.block96 ] ; 4 uses
  %i.bc = sub i32 %0, %.03846.ph
  %.neg = add i32 %.03846.ph, 1
  %xtraiter104 = and i32 %i.bc, 1
  %lcmp.mod105.not = icmp eq i32 %xtraiter104, 0
  br i1 %lcmp.mod105.not, label %.lr.ph49.prol.loopexit, label %.lr.ph49.prol

.lr.ph49.prol:                                    ; preds = %.lr.ph49.preheader101
  %gep66.prol = getelementptr [8 x i8], ptr %invariant.gep65, i64 %indvars.iv54.ph
  %i.bd = load double, ptr %gep66.prol, align 8, !tbaa !10
  %gep68.prol = getelementptr [8 x i8], ptr %invariant.gep67, i64 %indvars.iv52.ph ; 2 uses
  %i.be = load double, ptr %gep68.prol, align 8, !tbaa !10
  %i.bf = tail call double @llvm.fmuladd.f64(double %1, double %i.bd, double %i.be)
  store double %i.bf, ptr %gep68.prol, align 8, !tbaa !10
  %indvars.iv.next55.prol = add nsw i64 %indvars.iv54.ph, %i.af
  %indvars.iv.next53.prol = add nsw i64 %indvars.iv52.ph, %i.ac
  %i.bg = add nuw nsw i32 %.03846.ph, 1
  br label %.lr.ph49.prol.loopexit

.lr.ph49.prol.loopexit:                           ; preds = %.lr.ph49.prol, %.lr.ph49.preheader101
  %indvars.iv54.unr = phi i64 [ %indvars.iv54.ph, %.lr.ph49.preheader101 ], [ %indvars.iv.next55.prol, %.lr.ph49.prol ]
  %indvars.iv52.unr = phi i64 [ %indvars.iv52.ph, %.lr.ph49.preheader101 ], [ %indvars.iv.next53.prol, %.lr.ph49.prol ]
  %.03846.unr = phi i32 [ %.03846.ph, %.lr.ph49.preheader101 ], [ %i.bg, %.lr.ph49.prol ]
  %i.bh = icmp eq i32 %0, %.neg
  br i1 %i.bh, label %.loopexit, label %.lr.ph49

.lr.ph49:                                         ; preds = %.lr.ph49.prol.loopexit, %.lr.ph49
  %indvars.iv54 = phi i64 [ %indvars.iv.next55.1, %.lr.ph49 ], [ %indvars.iv54.unr, %.lr.ph49.prol.loopexit ] ; 2 uses
  %indvars.iv52 = phi i64 [ %indvars.iv.next53.1, %.lr.ph49 ], [ %indvars.iv52.unr, %.lr.ph49.prol.loopexit ] ; 2 uses
  %.03846 = phi i32 [ %i.bo, %.lr.ph49 ], [ %.03846.unr, %.lr.ph49.prol.loopexit ]
  %gep66 = getelementptr [8 x i8], ptr %invariant.gep65, i64 %indvars.iv54
  %i.bi = load double, ptr %gep66, align 8, !tbaa !10
  %gep68 = getelementptr [8 x i8], ptr %invariant.gep67, i64 %indvars.iv52 ; 2 uses
  %i.bj = load double, ptr %gep68, align 8, !tbaa !10
  %i.bk = tail call double @llvm.fmuladd.f64(double %1, double %i.bi, double %i.bj)
  store double %i.bk, ptr %gep68, align 8, !tbaa !10
  %indvars.iv.next55 = add nsw i64 %indvars.iv54, %i.af ; 2 uses
  %indvars.iv.next53 = add nsw i64 %indvars.iv52, %i.ac ; 2 uses
  %gep66.1 = getelementptr [8 x i8], ptr %invariant.gep65, i64 %indvars.iv.next55
  %i.bl = load double, ptr %gep66.1, align 8, !tbaa !10
  %gep68.1 = getelementptr [8 x i8], ptr %invariant.gep67, i64 %indvars.iv.next53 ; 2 uses
  %i.bm = load double, ptr %gep68.1, align 8, !tbaa !10
  %i.bn = tail call double @llvm.fmuladd.f64(double %1, double %i.bl, double %i.bm)
  store double %i.bn, ptr %gep68.1, align 8, !tbaa !10
  %indvars.iv.next55.1 = add nsw i64 %indvars.iv.next55, %i.af
  %indvars.iv.next53.1 = add nsw i64 %indvars.iv.next53, %i.ac
  %i.bo = add nuw nsw i32 %.03846, 2              ; 2 uses
  %exitcond59.not.1 = icmp eq i32 %i.bo, %0
  br i1 %exitcond59.not.1, label %.loopexit, label %.lr.ph49, !llvm.loop !47

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.bp = load double, ptr %gep, align 8, !tbaa !10
  %gep64 = getelementptr [8 x i8], ptr %invariant.gep63, i64 %indvars.iv ; 2 uses
  %i.bq = load double, ptr %gep64, align 8, !tbaa !10
  %i.br = tail call double @llvm.fmuladd.f64(double %1, double %i.bp, double %i.bq)
  store double %i.br, ptr %gep64, align 8, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.bs = load double, ptr %gep.1, align 8, !tbaa !10
  %gep64.1 = getelementptr [8 x i8], ptr %invariant.gep63, i64 %indvars.iv.next ; 2 uses
  %i.bt = load double, ptr %gep64.1, align 8, !tbaa !10
  %i.bu = tail call double @llvm.fmuladd.f64(double %1, double %i.bs, double %i.bt)
  store double %i.bu, ptr %gep64.1, align 8, !tbaa !10
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.loopexit, label %.lr.ph, !llvm.loop !48

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.lr.ph49.prol.loopexit, %.lr.ph49, %middle.block, %middle.block96, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @dgefa(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.loopexit
  %indvars.iv69 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next70, %.loopexit ] ; 12 uses
  %indvars.iv = phi i64 [ 1, %bb.a ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %i.a = sub nsw i64 1999, %indvars.iv69          ; 4 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv69
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !12   ; 4 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv69 ; 5 uses
  %i.e = load double, ptr %i.d, align 8, !tbaa !10 ; 3 uses
  %i.f = tail call double @llvm.fabs.f64(double %i.e) ; 2 uses
  %xtraiter = and i64 %i.a, 1
  %i.g = icmp eq i64 %indvars.iv69, 1998
  br i1 %i.g, label %.lr.ph49.i.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.a, -2
  br label %.lr.ph49.i

.lr.ph49.i:                                       ; preds = %.lr.ph49.i, %.new
  %indvars.iv53.i = phi i64 [ 1, %.new ], [ %indvars.iv.next54.i.1, %.lr.ph49.i ] ; 4 uses
  %.248.i = phi i32 [ 0, %.new ], [ %.3.i.1, %.lr.ph49.i ]
  %.23546.i = phi double [ %i.f, %.new ], [ %.336.i.1, %.lr.ph49.i ] ; 2 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %.lr.ph49.i ]
  %gep61.i = getelementptr [8 x i8], ptr %i.d, i64 %indvars.iv53.i
  %i.h = load double, ptr %gep61.i, align 8, !tbaa !10
  %i.i = tail call double @llvm.fabs.f64(double %i.h) ; 2 uses
  %i.j = fcmp ogt double %i.i, %.23546.i          ; 2 uses
  %.336.i = select i1 %i.j, double %i.i, double %.23546.i ; 2 uses
  %i.k = trunc nuw nsw i64 %indvars.iv53.i to i32
  %.3.i = select i1 %i.j, i32 %i.k, i32 %.248.i
  %indvars.iv.next54.i = add nuw nsw i64 %indvars.iv53.i, 1 ; 2 uses
  %gep61.i.1 = getelementptr [8 x i8], ptr %i.d, i64 %indvars.iv.next54.i
  %i.l = load double, ptr %gep61.i.1, align 8, !tbaa !10
  %i.m = tail call double @llvm.fabs.f64(double %i.l) ; 2 uses
  %i.n = fcmp ogt double %i.m, %.336.i            ; 2 uses
  %.336.i.1 = select i1 %i.n, double %i.m, double %.336.i ; 2 uses
  %i.o = trunc nuw nsw i64 %indvars.iv.next54.i to i32
  %.3.i.1 = select i1 %i.n, i32 %i.o, i32 %.3.i   ; 3 uses
  %indvars.iv.next54.i.1 = add nuw nsw i64 %indvars.iv53.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %idamax.exit.unr-lcssa, label %.lr.ph49.i, !llvm.loop !29

idamax.exit.unr-lcssa:                            ; preds = %.lr.ph49.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %idamax.exit, label %.lr.ph49.i.epil.preheader

.lr.ph49.i.epil.preheader:                        ; preds = %idamax.exit.unr-lcssa, %bb.b
  %indvars.iv53.i.epil.init = phi i64 [ 1, %bb.b ], [ %indvars.iv.next54.i.1, %idamax.exit.unr-lcssa ] ; 2 uses
  %.248.i.epil.init = phi i32 [ 0, %bb.b ], [ %.3.i.1, %idamax.exit.unr-lcssa ]
  %.23546.i.epil.init = phi double [ %i.f, %bb.b ], [ %.336.i.1, %idamax.exit.unr-lcssa ]
  %lcmp.mod94 = trunc i64 %i.a to i1
  tail call void @llvm.assume(i1 %lcmp.mod94)
  %gep61.i.epil = getelementptr [8 x i8], ptr %i.d, i64 %indvars.iv53.i.epil.init
  %i.p = load double, ptr %gep61.i.epil, align 8, !tbaa !10
  %i.q = tail call double @llvm.fabs.f64(double %i.p)
  %i.r = fcmp ogt double %i.q, %.23546.i.epil.init
  %i.s = trunc nuw nsw i64 %indvars.iv53.i.epil.init to i32
  %.3.i.epil = select i1 %i.r, i32 %i.s, i32 %.248.i.epil.init
  br label %idamax.exit

idamax.exit:                                      ; preds = %idamax.exit.unr-lcssa, %.lr.ph49.i.epil.preheader
  %.3.i.lcssa = phi i32 [ %.3.i.1, %idamax.exit.unr-lcssa ], [ %.3.i.epil, %.lr.ph49.i.epil.preheader ] ; 2 uses
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1 ; 4 uses
  %i.t = trunc nuw nsw i64 %indvars.iv69 to i32
  %i.u = add nsw i32 %.3.i.lcssa, %i.t            ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv69
  store i32 %i.u, ptr %i.v, align 4, !tbaa !4
  %i.w = sext i32 %i.u to i64                     ; 2 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.w ; 2 uses
  %i.y = load double, ptr %i.x, align 8, !tbaa !10 ; 3 uses
  %i.z = fcmp une double %i.y, 0.000000e+00
  br i1 %i.z, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %idamax.exit
  %.not = icmp eq i32 %.3.i.lcssa, 0              ; 2 uses
  br i1 %.not, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.c
  store double %i.e, ptr %i.x, align 8, !tbaa !10
  store double %i.y, ptr %i.d, align 8, !tbaa !10
  br label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c
  %i.aa = phi double [ %i.y, %.thread ], [ %i.e, %bb.c ]
  %i.ab = fdiv double -1.000000e+00, %i.aa        ; 2 uses
  %i.ac = sub nuw nsw i64 1999, %indvars.iv69     ; 6 uses
  %invariant.gep32.i = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv.next70 ; 7 uses
  %min.iters.check80 = icmp samesign ugt i64 %indvars.iv69, 1995
  br i1 %min.iters.check80, label %.lr.ph23.i.preheader, label %vector.ph81

vector.ph81:                                      ; preds = %bb.d
  %n.vec82 = and i64 %i.ac, 2044                  ; 3 uses
  %broadcast.splatinsert83 = insertelement <2 x double> poison, double %i.ab, i64 0
  %broadcast.splat84 = shufflevector <2 x double> %broadcast.splatinsert83, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body85

vector.body85:                                    ; preds = %vector.body85, %vector.ph81
  %index86 = phi i64 [ 0, %vector.ph81 ], [ %index.next89, %vector.body85 ] ; 2 uses
  %i.ad = getelementptr [8 x i8], ptr %invariant.gep32.i, i64 %index86 ; 3 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 16     ; 2 uses
  %wide.load87 = load <2 x double>, ptr %i.ad, align 8, !tbaa !10
  %wide.load88 = load <2 x double>, ptr %i.ae, align 8, !tbaa !10
  %i.af = fmul <2 x double> %broadcast.splat84, %wide.load87
  %i.ag = fmul <2 x double> %broadcast.splat84, %wide.load88
  store <2 x double> %i.af, ptr %i.ad, align 8, !tbaa !10
  store <2 x double> %i.ag, ptr %i.ae, align 8, !tbaa !10
  %index.next89 = add nuw i64 %index86, 4         ; 2 uses
  %i.ah = icmp eq i64 %index.next89, %n.vec82
  br i1 %i.ah, label %middle.block90, label %vector.body85, !llvm.loop !49

middle.block90:                                   ; preds = %vector.body85
  %cmp.n91 = icmp eq i64 %i.ac, %n.vec82
  br i1 %cmp.n91, label %.lr.ph.preheader, label %.lr.ph23.i.preheader

.lr.ph23.i.preheader:                             ; preds = %bb.d, %middle.block90
  %indvars.iv26.i.ph = phi i64 [ 0, %bb.d ], [ %n.vec82, %middle.block90 ]
  br label %.lr.ph23.i

.lr.ph23.i:                                       ; preds = %.lr.ph23.i.preheader, %.lr.ph23.i
  %indvars.iv26.i = phi i64 [ %indvars.iv.next27.i, %.lr.ph23.i ], [ %indvars.iv26.i.ph, %.lr.ph23.i.preheader ] ; 2 uses
  %gep33.i = getelementptr [8 x i8], ptr %invariant.gep32.i, i64 %indvars.iv26.i ; 2 uses
  %i.ai = load double, ptr %gep33.i, align 8, !tbaa !10
  %i.aj = fmul double %i.ab, %i.ai
  store double %i.aj, ptr %gep33.i, align 8, !tbaa !10
  %indvars.iv.next27.i = add nuw nsw i64 %indvars.iv26.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next27.i, %i.ac
  br i1 %exitcond.not.i, label %.lr.ph.preheader, label %.lr.ph23.i, !llvm.loop !50

.lr.ph.preheader:                                 ; preds = %.lr.ph23.i, %middle.block90
  %scevgep75 = getelementptr i8, ptr %i.c, i64 16000
  %min.iters.check = icmp samesign ugt i64 %indvars.iv69, 1995
  %n.vec = and i64 %i.ac, 2044                    ; 3 uses
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  %xtraiter95 = and i64 %i.a, 1
  %lcmp.mod96.not = icmp eq i64 %xtraiter95, 0
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %daxpy.exit
  %indvars.iv66 = phi i64 [ %indvars.iv.next67, %daxpy.exit ], [ %indvars.iv, %.lr.ph.preheader ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv66
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !12 ; 4 uses
  %i.am = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.w ; 2 uses
  %i.an = load double, ptr %i.am, align 8, !tbaa !10 ; 6 uses
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv69 ; 2 uses
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !10
  store double %i.ap, ptr %i.am, align 8, !tbaa !10
  store double %i.an, ptr %i.ao, align 8, !tbaa !10
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph
  %i.aq = fcmp une double %i.an, 0.000000e+00
  br i1 %i.aq, label %bb.g, label %daxpy.exit

bb.g:                                             ; preds = %bb.f
  %invariant.gep63.i = getelementptr [8 x i8], ptr %i.al, i64 %indvars.iv.next70 ; 5 uses
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.g
  %scevgep = getelementptr i8, ptr %i.al, i64 16000
  %bound0 = icmp ult ptr %invariant.gep63.i, %scevgep75
  %bound1 = icmp ult ptr %invariant.gep32.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.an, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ar = getelementptr [8 x i8], ptr %invariant.gep32.i, i64 %index ; 2 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 16
  %wide.load = load <2 x double>, ptr %i.ar, align 8, !tbaa !10, !alias.scope !51
  %wide.load76 = load <2 x double>, ptr %i.as, align 8, !tbaa !10, !alias.scope !51
  %i.at = getelementptr [8 x i8], ptr %invariant.gep63.i, i64 %index ; 3 uses
  %i.au = getelementptr i8, ptr %i.at, i64 16     ; 2 uses
  %wide.load77 = load <2 x double>, ptr %i.at, align 8, !tbaa !10, !alias.scope !54, !noalias !51
  %wide.load78 = load <2 x double>, ptr %i.au, align 8, !tbaa !10, !alias.scope !54, !noalias !51
  %i.av = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %wide.load77)
  %i.aw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load76, <2 x double> %wide.load78)
  store <2 x double> %i.av, ptr %i.at, align 8, !tbaa !10, !alias.scope !54, !noalias !51
  store <2 x double> %i.aw, ptr %i.au, align 8, !tbaa !10, !alias.scope !54, !noalias !51
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !56

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %daxpy.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %bb.g, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.g ], [ %n.vec, %middle.block ] ; 5 uses
  %i.ay = add nuw i64 %indvars.iv69, %indvars.iv.i.ph
  br i1 %lcmp.mod96.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %gep.i.prol = getelementptr [8 x i8], ptr %invariant.gep32.i, i64 %indvars.iv.i.ph
  %i.az = load double, ptr %gep.i.prol, align 8, !tbaa !10
  %gep64.i.prol = getelementptr [8 x i8], ptr %invariant.gep63.i, i64 %indvars.iv.i.ph ; 2 uses
  %i.ba = load double, ptr %gep64.i.prol, align 8, !tbaa !10
  %i.bb = tail call double @llvm.fmuladd.f64(double %i.an, double %i.az, double %i.ba)
  store double %i.bb, ptr %gep64.i.prol, align 8, !tbaa !10
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.bc = icmp eq i64 %i.ay, 1998
  br i1 %i.bc, label %daxpy.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep32.i, i64 %indvars.iv.i
  %i.bd = load double, ptr %gep.i, align 8, !tbaa !10
  %gep64.i = getelementptr [8 x i8], ptr %invariant.gep63.i, i64 %indvars.iv.i ; 2 uses
  %i.be = load double, ptr %gep64.i, align 8, !tbaa !10
  %i.bf = tail call double @llvm.fmuladd.f64(double %i.an, double %i.bd, double %i.be)
  store double %i.bf, ptr %gep64.i, align 8, !tbaa !10
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %gep.i.1 = getelementptr [8 x i8], ptr %invariant.gep32.i, i64 %indvars.iv.next.i
  %i.bg = load double, ptr %gep.i.1, align 8, !tbaa !10
  %gep64.i.1 = getelementptr [8 x i8], ptr %invariant.gep63.i, i64 %indvars.iv.next.i ; 2 uses
  %i.bh = load double, ptr %gep64.i.1, align 8, !tbaa !10
  %i.bi = tail call double @llvm.fmuladd.f64(double %i.an, double %i.bg, double %i.bh)
  store double %i.bi, ptr %gep64.i.1, align 8, !tbaa !10
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i57.1 = icmp eq i64 %indvars.iv.next.i.1, %i.ac
  br i1 %exitcond.not.i57.1, label %daxpy.exit, label %.lr.ph.i, !llvm.loop !57

daxpy.exit:                                       ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.f
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next67, 2000
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !58

.loopexit:                                        ; preds = %daxpy.exit, %idamax.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond72.not = icmp eq i64 %indvars.iv.next70, 1999
  br i1 %exitcond72.not, label %bb.h, label %bb.b, !llvm.loop !59

bb.h:                                             ; preds = %.loopexit
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 7996
  store i32 1999, ptr %i.bj, align 4, !tbaa !4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @dgesl(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #4 {
bb.a:
  %scevgep = getelementptr i8, ptr %2, i64 16000
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %daxpy.exit
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %daxpy.exit ] ; 8 uses
  %i.a = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.b = load i32, ptr %i.a, align 4, !tbaa !4    ; 2 uses
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds [8 x i8], ptr %2, i64 %i.c ; 2 uses
  %i.e = load double, ptr %i.d, align 8, !tbaa !10 ; 6 uses
  %i.f = zext i32 %i.b to i64
  %.not = icmp eq i64 %indvars.iv, %i.f
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.h = load double, ptr %i.g, align 8, !tbaa !10
  store double %i.h, ptr %i.d, align 8, !tbaa !10
  store double %i.e, ptr %i.g, align 8, !tbaa !10
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.i = fcmp une double %i.e, 0.000000e+00
  br i1 %i.i, label %bb.e, label %daxpy.exit

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !12   ; 2 uses
  %i.l = sub nuw nsw i64 1999, %indvars.iv        ; 4 uses
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.k, i64 %indvars.iv.next ; 5 uses
  %invariant.gep63.i = getelementptr [8 x i8], ptr %2, i64 %indvars.iv.next ; 5 uses
  %min.iters.check = icmp samesign ugt i64 %indvars.iv, 1995
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.e
  %scevgep56 = getelementptr i8, ptr %i.k, i64 16000
  %bound0 = icmp ult ptr %invariant.gep63.i, %scevgep56
  %bound1 = icmp ult ptr %invariant.gep.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.l, 2044                     ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.e, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.m = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %index ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 16
  %wide.load = load <2 x double>, ptr %i.m, align 8, !tbaa !10, !alias.scope !60
  %wide.load57 = load <2 x double>, ptr %i.n, align 8, !tbaa !10, !alias.scope !60
  %i.o = getelementptr [8 x i8], ptr %invariant.gep63.i, i64 %index ; 3 uses
  %i.p = getelementptr i8, ptr %i.o, i64 16       ; 2 uses
  %wide.load58 = load <2 x double>, ptr %i.o, align 8, !tbaa !10, !alias.scope !63, !noalias !60
  %wide.load59 = load <2 x double>, ptr %i.p, align 8, !tbaa !10, !alias.scope !63, !noalias !60
  %i.q = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %wide.load58)
  %i.r = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load57, <2 x double> %wide.load59)
  store <2 x double> %i.q, ptr %i.o, align 8, !tbaa !10, !alias.scope !63, !noalias !60
  store <2 x double> %i.r, ptr %i.p, align 8, !tbaa !10, !alias.scope !63, !noalias !60
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !65

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %daxpy.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %bb.e, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.e ], [ %n.vec, %middle.block ] ; 5 uses
  %i.t = add nuw i64 %indvars.iv, %indvars.iv.i.ph
  %xtraiter = and i64 %i.l, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %gep.i.prol = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i.ph
  %i.u = load double, ptr %gep.i.prol, align 8, !tbaa !10
  %gep64.i.prol = getelementptr [8 x i8], ptr %invariant.gep63.i, i64 %indvars.iv.i.ph ; 2 uses
  %i.v = load double, ptr %gep64.i.prol, align 8, !tbaa !10
  %i.w = tail call double @llvm.fmuladd.f64(double %i.e, double %i.u, double %i.v)
  store double %i.w, ptr %gep64.i.prol, align 8, !tbaa !10
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.x = icmp eq i64 %i.t, 1998
  br i1 %i.x, label %daxpy.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  %i.y = load double, ptr %gep.i, align 8, !tbaa !10
  %gep64.i = getelementptr [8 x i8], ptr %invariant.gep63.i, i64 %indvars.iv.i ; 2 uses
  %i.z = load double, ptr %gep64.i, align 8, !tbaa !10
  %i.aa = tail call double @llvm.fmuladd.f64(double %i.e, double %i.y, double %i.z)
  store double %i.aa, ptr %gep64.i, align 8, !tbaa !10
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %gep.i.1 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i
  %i.ab = load double, ptr %gep.i.1, align 8, !tbaa !10
  %gep64.i.1 = getelementptr [8 x i8], ptr %invariant.gep63.i, i64 %indvars.iv.next.i ; 2 uses
  %i.ac = load double, ptr %gep64.i.1, align 8, !tbaa !10
  %i.ad = tail call double @llvm.fmuladd.f64(double %i.e, double %i.ab, double %i.ac)
  store double %i.ad, ptr %gep64.i.1, align 8, !tbaa !10
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %i.l
  br i1 %exitcond.not.i.1, label %daxpy.exit, label %.lr.ph.i, !llvm.loop !66

daxpy.exit:                                       ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.d
  %exitcond.not = icmp eq i64 %indvars.iv.next, 1999
  br i1 %exitcond.not, label %.preheader, label %bb.b, !llvm.loop !67

.preheader:                                       ; preds = %daxpy.exit, %daxpy.exit48
  %indvars.iv52 = phi i64 [ %indvars.iv.next53, %daxpy.exit48 ], [ 0, %daxpy.exit ] ; 6 uses
  %i.ae = shl i64 %indvars.iv52, 3
  %i.af = sub i64 15992, %i.ae                    ; 2 uses
  %scevgep61 = getelementptr i8, ptr %2, i64 %i.af
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1 ; 2 uses
  %i.ag = sub nuw nsw i64 1999, %indvars.iv52     ; 7 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !12 ; 7 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ag
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !10
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ag ; 2 uses
  %i.am = load double, ptr %i.al, align 8, !tbaa !10
  %i.an = fdiv double %i.am, %i.ak                ; 3 uses
  store double %i.an, ptr %i.al, align 8, !tbaa !10
  %i.ao = fneg double %i.an                       ; 4 uses
  %i.ap = icmp ne i64 %indvars.iv52, 1999
  %i.aq = fcmp une double %i.an, 0.000000e+00
  %or.cond.i38 = and i1 %i.ap, %i.aq
  br i1 %or.cond.i38, label %.lr.ph.i42.preheader, label %daxpy.exit48

.lr.ph.i42.preheader:                             ; preds = %.preheader
  %min.iters.check67 = icmp samesign ugt i64 %indvars.iv52, 1995
  br i1 %min.iters.check67, label %.lr.ph.i42.preheader82, label %vector.memcheck60

vector.memcheck60:                                ; preds = %.lr.ph.i42.preheader
  %scevgep62 = getelementptr i8, ptr %i.ai, i64 %i.af
  %bound063 = icmp ult ptr %2, %scevgep62
  %bound164 = icmp ult ptr %i.ai, %scevgep61
  %found.conflict65 = and i1 %bound063, %bound164
  br i1 %found.conflict65, label %.lr.ph.i42.preheader82, label %vector.ph68

vector.ph68:                                      ; preds = %vector.memcheck60
  %n.vec69 = and i64 %i.ag, 2044                  ; 3 uses
  %broadcast.splatinsert70 = insertelement <2 x double> poison, double %i.ao, i64 0
  %broadcast.splat71 = shufflevector <2 x double> %broadcast.splatinsert70, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body72

vector.body72:                                    ; preds = %vector.body72, %vector.ph68
  %index73 = phi i64 [ 0, %vector.ph68 ], [ %index.next78, %vector.body72 ] ; 3 uses
  %i.ar = getelementptr [8 x i8], ptr %i.ai, i64 %index73 ; 2 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 16
  %wide.load74 = load <2 x double>, ptr %i.ar, align 8, !tbaa !10, !alias.scope !68
  %wide.load75 = load <2 x double>, ptr %i.as, align 8, !tbaa !10, !alias.scope !68
  %i.at = getelementptr [8 x i8], ptr %2, i64 %index73 ; 3 uses
  %i.au = getelementptr i8, ptr %i.at, i64 16     ; 2 uses
  %wide.load76 = load <2 x double>, ptr %i.at, align 8, !tbaa !10, !alias.scope !71, !noalias !68
  %wide.load77 = load <2 x double>, ptr %i.au, align 8, !tbaa !10, !alias.scope !71, !noalias !68
  %i.av = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat71, <2 x double> %wide.load74, <2 x double> %wide.load76)
  %i.aw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat71, <2 x double> %wide.load75, <2 x double> %wide.load77)
  store <2 x double> %i.av, ptr %i.at, align 8, !tbaa !10, !alias.scope !71, !noalias !68
  store <2 x double> %i.aw, ptr %i.au, align 8, !tbaa !10, !alias.scope !71, !noalias !68
  %index.next78 = add nuw i64 %index73, 4         ; 2 uses
  %i.ax = icmp eq i64 %index.next78, %n.vec69
  br i1 %i.ax, label %middle.block79, label %vector.body72, !llvm.loop !73

middle.block79:                                   ; preds = %vector.body72
  %cmp.n80 = icmp eq i64 %i.ag, %n.vec69
  br i1 %cmp.n80, label %daxpy.exit48, label %.lr.ph.i42.preheader82

.lr.ph.i42.preheader82:                           ; preds = %vector.memcheck60, %.lr.ph.i42.preheader, %middle.block79
  %indvars.iv.i43.ph = phi i64 [ 0, %vector.memcheck60 ], [ 0, %.lr.ph.i42.preheader ], [ %n.vec69, %middle.block79 ] ; 5 uses
  %i.ay = add nuw i64 %indvars.iv52, %indvars.iv.i43.ph
  %xtraiter83 = and i64 %i.ag, 1
  %lcmp.mod84.not = icmp eq i64 %xtraiter83, 0
  br i1 %lcmp.mod84.not, label %.lr.ph.i42.prol.loopexit, label %.lr.ph.i42.prol

.lr.ph.i42.prol:                                  ; preds = %.lr.ph.i42.preheader82
  %gep.i44.prol = getelementptr [8 x i8], ptr %i.ai, i64 %indvars.iv.i43.ph
  %i.az = load double, ptr %gep.i44.prol, align 8, !tbaa !10
  %gep64.i45.prol = getelementptr [8 x i8], ptr %2, i64 %indvars.iv.i43.ph ; 2 uses
  %i.ba = load double, ptr %gep64.i45.prol, align 8, !tbaa !10
  %i.bb = tail call double @llvm.fmuladd.f64(double %i.ao, double %i.az, double %i.ba)
  store double %i.bb, ptr %gep64.i45.prol, align 8, !tbaa !10
  %indvars.iv.next.i46.prol = or disjoint i64 %indvars.iv.i43.ph, 1
  br label %.lr.ph.i42.prol.loopexit

.lr.ph.i42.prol.loopexit:                         ; preds = %.lr.ph.i42.prol, %.lr.ph.i42.preheader82
  %indvars.iv.i43.unr = phi i64 [ %indvars.iv.i43.ph, %.lr.ph.i42.preheader82 ], [ %indvars.iv.next.i46.prol, %.lr.ph.i42.prol ]
  %i.bc = icmp eq i64 %i.ay, 1998
  br i1 %i.bc, label %daxpy.exit48, label %.lr.ph.i42

.lr.ph.i42:                                       ; preds = %.lr.ph.i42.prol.loopexit, %.lr.ph.i42
  %indvars.iv.i43 = phi i64 [ %indvars.iv.next.i46.1, %.lr.ph.i42 ], [ %indvars.iv.i43.unr, %.lr.ph.i42.prol.loopexit ] ; 4 uses
  %gep.i44 = getelementptr [8 x i8], ptr %i.ai, i64 %indvars.iv.i43
  %i.bd = load double, ptr %gep.i44, align 8, !tbaa !10
  %gep64.i45 = getelementptr [8 x i8], ptr %2, i64 %indvars.iv.i43 ; 2 uses
  %i.be = load double, ptr %gep64.i45, align 8, !tbaa !10
  %i.bf = tail call double @llvm.fmuladd.f64(double %i.ao, double %i.bd, double %i.be)
  store double %i.bf, ptr %gep64.i45, align 8, !tbaa !10
  %indvars.iv.next.i46 = add nuw nsw i64 %indvars.iv.i43, 1 ; 2 uses
  %gep.i44.1 = getelementptr [8 x i8], ptr %i.ai, i64 %indvars.iv.next.i46
  %i.bg = load double, ptr %gep.i44.1, align 8, !tbaa !10
  %gep64.i45.1 = getelementptr [8 x i8], ptr %2, i64 %indvars.iv.next.i46 ; 2 uses
  %i.bh = load double, ptr %gep64.i45.1, align 8, !tbaa !10
  %i.bi = tail call double @llvm.fmuladd.f64(double %i.ao, double %i.bg, double %i.bh)
  store double %i.bi, ptr %gep64.i45.1, align 8, !tbaa !10
  %indvars.iv.next.i46.1 = add nuw nsw i64 %indvars.iv.i43, 2 ; 2 uses
  %exitcond.not.i47.1 = icmp eq i64 %indvars.iv.next.i46.1, %i.ag
  br i1 %exitcond.not.i47.1, label %daxpy.exit48, label %.lr.ph.i42, !llvm.loop !74

daxpy.exit48:                                     ; preds = %.lr.ph.i42.prol.loopexit, %.lr.ph.i42, %middle.block79, %.preheader
  %exitcond55.not = icmp eq i64 %indvars.iv.next53, 2000
  br i1 %exitcond55.not, label %bb.f, label %.preheader, !llvm.loop !75

bb.f:                                             ; preds = %daxpy.exit48
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp sgt i32 %0, 1
  br i1 %i.a, label %.preheader, label %.loopexit.split

.preheader:                                       ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !76
  %i.d = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(4) @.str) #12
  %.not = icmp eq i32 %i.d, 0
  %i.e = select i1 %.not, ptr @.str.1, ptr @.str.2
  br label %.loopexit.split

.loopexit.split:                                  ; preds = %.preheader, %bb.a
  %.0 = phi ptr [ @.str.2, %bb.a ], [ %i.e, %.preheader ]
  %i.f = tail call noalias dereferenceable_or_null(16000) ptr @malloc(i64 noundef 16000) #13 ; 9 uses
  br label %bb.b

bb.b:                                             ; preds = %.loopexit.split, %bb.b
  %indvars.iv = phi i64 [ 0, %.loopexit.split ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.g = tail call noalias dereferenceable_or_null(16008) ptr @malloc(i64 noundef 16008) #13
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  store ptr %i.g, ptr %i.h, align 8, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 2000
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !78

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noalias dereferenceable_or_null(16000) ptr @malloc(i64 noundef 16000) #13 ; 10 uses
  %i.j = tail call noalias dereferenceable_or_null(8000) ptr @malloc(i64 noundef 8000) #13 ; 4 uses
  %seed.promoted25.i = load i64, ptr @seed, align 8, !tbaa !8
  %i.k = xor i64 %seed.promoted25.i, 123459876
  br label %.preheader23.i

.preheader23.i:                                   ; preds = %bb.e, %bb.c
  %indvars.iv33.i = phi i64 [ 0, %bb.c ], [ %indvars.iv.next34.i, %bb.e ] ; 2 uses
  %.lcssa2627.i = phi i64 [ %i.k, %bb.c ], [ %spec.select.i.i, %bb.e ]
  br label %bb.d

.preheader22.i:                                   ; preds = %bb.e
  %i.l = xor i64 %spec.select.i.i, 123459876
  store i64 %i.l, ptr @seed, align 8, !tbaa !8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16000) %i.i, i8 0, i64 16000, i1 false), !tbaa !10
  br label %.preheader.i

bb.d:                                             ; preds = %bb.d, %.preheader23.i
  %indvars.iv.i = phi i64 [ 0, %.preheader23.i ], [ %indvars.iv.next.i, %bb.d ] ; 2 uses
  %i.m = phi i64 [ %.lcssa2627.i, %.preheader23.i ], [ %spec.select.i.i, %bb.d ] ; 2 uses
  %i.n = sdiv i64 %i.m, 127773                    ; 2 uses
  %.neg.i.i = mul nsw i64 %i.n, -127773
  %i.o = add i64 %.neg.i.i, %i.m
  %i.p = mul nsw i64 %i.o, 16807
  %.neg2.i.i = mul nsw i64 %i.n, -2836
  %i.q = add i64 %i.p, %.neg2.i.i                 ; 3 uses
  %i.r = icmp slt i64 %i.q, 0
  %i.s = add nsw i64 %i.q, 2147483647
  %spec.select.i.i = select i1 %i.r, i64 %i.s, i64 %i.q ; 4 uses
  %i.t = sitofp i64 %spec.select.i.i to double
  %i.u = fmul nnan double %i.t, f0x3E00000000200FE1
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !12
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv33.i
  store double %i.u, ptr %i.x, align 8, !tbaa !10
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 2000
  br i1 %exitcond.not.i, label %bb.e, label %bb.d, !llvm.loop !15

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next34.i = add nuw nsw i64 %indvars.iv33.i, 1 ; 2 uses
  %exitcond36.not.i = icmp eq i64 %indvars.iv.next34.i, 2000
  br i1 %exitcond36.not.i, label %.preheader22.i, label %.preheader23.i, !llvm.loop !17

.preheader.i:                                     ; preds = %middle.block, %.preheader22.i
  %indvars.iv44.i = phi i64 [ 0, %.preheader22.i ], [ %indvars.iv.next45.i, %middle.block ] ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv44.i
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !12   ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.preheader.i
  %index = phi i64 [ 0, %.preheader.i ], [ %index.next.1, %vector.body ] ; 4 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %index ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %wide.load = load <2 x double>, ptr %i.aa, align 8, !tbaa !10
  %wide.load56 = load <2 x double>, ptr %i.ab, align 8, !tbaa !10
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %index ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %wide.load57 = load <2 x double>, ptr %i.ac, align 8, !tbaa !10
  %wide.load58 = load <2 x double>, ptr %i.ad, align 8, !tbaa !10
  %i.ae = fadd <2 x double> %wide.load, %wide.load57
  %i.af = fadd <2 x double> %wide.load56, %wide.load58
  store <2 x double> %i.ae, ptr %i.ac, align 8, !tbaa !10
  store <2 x double> %i.af, ptr %i.ad, align 8, !tbaa !10
  %index.next = or disjoint i64 %index, 4         ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %index.next ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %wide.load.1 = load <2 x double>, ptr %i.ag, align 8, !tbaa !10
  %wide.load56.1 = load <2 x double>, ptr %i.ah, align 8, !tbaa !10
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %index.next ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %wide.load57.1 = load <2 x double>, ptr %i.ai, align 8, !tbaa !10
  %wide.load58.1 = load <2 x double>, ptr %i.aj, align 8, !tbaa !10
  %i.ak = fadd <2 x double> %wide.load.1, %wide.load57.1
  %i.al = fadd <2 x double> %wide.load56.1, %wide.load58.1
  store <2 x double> %i.ak, ptr %i.ai, align 8, !tbaa !10
  store <2 x double> %i.al, ptr %i.aj, align 8, !tbaa !10
  %index.next.1 = add nuw nsw i64 %index, 8       ; 2 uses
  %i.am = icmp eq i64 %index.next.1, 2000
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !79

middle.block:                                     ; preds = %vector.body
  %indvars.iv.next45.i = add nuw nsw i64 %indvars.iv44.i, 1 ; 2 uses
  %exitcond47.not.i = icmp eq i64 %indvars.iv.next45.i, 2000
  br i1 %exitcond47.not.i, label %matgen.exit, label %.preheader.i, !llvm.loop !27

matgen.exit:                                      ; preds = %middle.block, %.loopexit.i
  %indvars.iv69.i = phi i64 [ %indvars.iv.next70.i, %.loopexit.i ], [ 0, %middle.block ] ; 12 uses
  %indvars.iv.i28 = phi i64 [ %indvars.iv.next.i29, %.loopexit.i ], [ 1, %middle.block ] ; 2 uses
  %i.an = sub nsw i64 1999, %indvars.iv69.i       ; 4 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv69.i
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !12 ; 4 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv69.i ; 5 uses
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !10 ; 3 uses
  %i.as = tail call double @llvm.fabs.f64(double %i.ar) ; 2 uses
  %xtraiter = and i64 %i.an, 1
  %i.at = icmp eq i64 %indvars.iv69.i, 1998
  br i1 %i.at, label %.lr.ph49.i.i.epil.preheader, label %matgen.exit.new

matgen.exit.new:                                  ; preds = %matgen.exit
  %unroll_iter = and i64 %i.an, -2
  br label %.lr.ph49.i.i

.lr.ph49.i.i:                                     ; preds = %.lr.ph49.i.i, %matgen.exit.new
  %indvars.iv53.i.i = phi i64 [ 1, %matgen.exit.new ], [ %indvars.iv.next54.i.i.1, %.lr.ph49.i.i ] ; 4 uses
  %.248.i.i = phi i32 [ 0, %matgen.exit.new ], [ %.3.i.i.1, %.lr.ph49.i.i ]
  %.23546.i.i = phi double [ %i.as, %matgen.exit.new ], [ %.336.i.i.1, %.lr.ph49.i.i ] ; 2 uses
  %niter = phi i64 [ 0, %matgen.exit.new ], [ %niter.next.1, %.lr.ph49.i.i ]
  %gep61.i.i = getelementptr [8 x i8], ptr %i.aq, i64 %indvars.iv53.i.i
  %i.au = load double, ptr %gep61.i.i, align 8, !tbaa !10
  %i.av = tail call double @llvm.fabs.f64(double %i.au) ; 2 uses
  %i.aw = fcmp ogt double %i.av, %.23546.i.i      ; 2 uses
  %.336.i.i = select i1 %i.aw, double %i.av, double %.23546.i.i ; 2 uses
  %i.ax = trunc nuw nsw i64 %indvars.iv53.i.i to i32
  %.3.i.i = select i1 %i.aw, i32 %i.ax, i32 %.248.i.i
  %indvars.iv.next54.i.i = add nuw nsw i64 %indvars.iv53.i.i, 1 ; 2 uses
  %gep61.i.i.1 = getelementptr [8 x i8], ptr %i.aq, i64 %indvars.iv.next54.i.i
  %i.ay = load double, ptr %gep61.i.i.1, align 8, !tbaa !10
  %i.az = tail call double @llvm.fabs.f64(double %i.ay) ; 2 uses
  %i.ba = fcmp ogt double %i.az, %.336.i.i        ; 2 uses
  %.336.i.i.1 = select i1 %i.ba, double %i.az, double %.336.i.i ; 2 uses
  %i.bb = trunc nuw nsw i64 %indvars.iv.next54.i.i to i32
  %.3.i.i.1 = select i1 %i.ba, i32 %i.bb, i32 %.3.i.i ; 3 uses
  %indvars.iv.next54.i.i.1 = add nuw nsw i64 %indvars.iv53.i.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %idamax.exit.i.unr-lcssa, label %.lr.ph49.i.i, !llvm.loop !29

idamax.exit.i.unr-lcssa:                          ; preds = %.lr.ph49.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %idamax.exit.i, label %.lr.ph49.i.i.epil.preheader

.lr.ph49.i.i.epil.preheader:                      ; preds = %idamax.exit.i.unr-lcssa, %matgen.exit
  %indvars.iv53.i.i.epil.init = phi i64 [ 1, %matgen.exit ], [ %indvars.iv.next54.i.i.1, %idamax.exit.i.unr-lcssa ] ; 2 uses
  %.248.i.i.epil.init = phi i32 [ 0, %matgen.exit ], [ %.3.i.i.1, %idamax.exit.i.unr-lcssa ]
  %.23546.i.i.epil.init = phi double [ %i.as, %matgen.exit ], [ %.336.i.i.1, %idamax.exit.i.unr-lcssa ]
  %lcmp.mod117 = trunc i64 %i.an to i1
  tail call void @llvm.assume(i1 %lcmp.mod117)
  %gep61.i.i.epil = getelementptr [8 x i8], ptr %i.aq, i64 %indvars.iv53.i.i.epil.init
  %i.bc = load double, ptr %gep61.i.i.epil, align 8, !tbaa !10
  %i.bd = tail call double @llvm.fabs.f64(double %i.bc)
  %i.be = fcmp ogt double %i.bd, %.23546.i.i.epil.init
  %i.bf = trunc nuw nsw i64 %indvars.iv53.i.i.epil.init to i32
  %.3.i.i.epil = select i1 %i.be, i32 %i.bf, i32 %.248.i.i.epil.init
  br label %idamax.exit.i

idamax.exit.i:                                    ; preds = %idamax.exit.i.unr-lcssa, %.lr.ph49.i.i.epil.preheader
  %.3.i.i.lcssa = phi i32 [ %.3.i.i.1, %idamax.exit.i.unr-lcssa ], [ %.3.i.i.epil, %.lr.ph49.i.i.epil.preheader ] ; 2 uses
  %indvars.iv.next70.i = add nuw nsw i64 %indvars.iv69.i, 1 ; 4 uses
  %i.bg = trunc nuw nsw i64 %indvars.iv69.i to i32
  %i.bh = add nsw i32 %.3.i.i.lcssa, %i.bg        ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv69.i
  store i32 %i.bh, ptr %i.bi, align 4, !tbaa !4
  %i.bj = sext i32 %i.bh to i64                   ; 2 uses
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.bj ; 2 uses
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !10 ; 3 uses
  %i.bm = fcmp une double %i.bl, 0.000000e+00
  br i1 %i.bm, label %bb.f, label %.loopexit.i

bb.f:                                             ; preds = %idamax.exit.i
  %.not.i = icmp eq i32 %.3.i.i.lcssa, 0          ; 2 uses
  br i1 %.not.i, label %bb.g, label %.thread.i

.thread.i:                                        ; preds = %bb.f
  store double %i.ar, ptr %i.bk, align 8, !tbaa !10
  store double %i.bl, ptr %i.aq, align 8, !tbaa !10
  br label %bb.g

bb.g:                                             ; preds = %.thread.i, %bb.f
  %i.bn = phi double [ %i.bl, %.thread.i ], [ %i.ar, %bb.f ]
  %i.bo = fdiv double -1.000000e+00, %i.bn        ; 2 uses
  %i.bp = sub nuw nsw i64 1999, %indvars.iv69.i   ; 6 uses
  %invariant.gep32.i.i = getelementptr [8 x i8], ptr %i.ap, i64 %indvars.iv.next70.i ; 7 uses
  %min.iters.check70 = icmp samesign ugt i64 %indvars.iv69.i, 1995
  br i1 %min.iters.check70, label %.lr.ph23.i.i.preheader, label %vector.ph71

vector.ph71:                                      ; preds = %bb.g
  %n.vec72 = and i64 %i.bp, 2044                  ; 3 uses
  %broadcast.splatinsert73 = insertelement <2 x double> poison, double %i.bo, i64 0
  %broadcast.splat74 = shufflevector <2 x double> %broadcast.splatinsert73, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body75

vector.body75:                                    ; preds = %vector.body75, %vector.ph71
  %index76 = phi i64 [ 0, %vector.ph71 ], [ %index.next79, %vector.body75 ] ; 2 uses
  %i.bq = getelementptr [8 x i8], ptr %invariant.gep32.i.i, i64 %index76 ; 3 uses
  %i.br = getelementptr i8, ptr %i.bq, i64 16     ; 2 uses
  %wide.load77 = load <2 x double>, ptr %i.bq, align 8, !tbaa !10
  %wide.load78 = load <2 x double>, ptr %i.br, align 8, !tbaa !10
  %i.bs = fmul <2 x double> %broadcast.splat74, %wide.load77
  %i.bt = fmul <2 x double> %broadcast.splat74, %wide.load78
  store <2 x double> %i.bs, ptr %i.bq, align 8, !tbaa !10
  store <2 x double> %i.bt, ptr %i.br, align 8, !tbaa !10
  %index.next79 = add nuw i64 %index76, 4         ; 2 uses
  %i.bu = icmp eq i64 %index.next79, %n.vec72
  br i1 %i.bu, label %middle.block80, label %vector.body75, !llvm.loop !80

middle.block80:                                   ; preds = %vector.body75
  %cmp.n81 = icmp eq i64 %i.bp, %n.vec72
  br i1 %cmp.n81, label %.lr.ph.i.preheader, label %.lr.ph23.i.i.preheader

.lr.ph23.i.i.preheader:                           ; preds = %bb.g, %middle.block80
  %indvars.iv26.i.i.ph = phi i64 [ 0, %bb.g ], [ %n.vec72, %middle.block80 ]
  br label %.lr.ph23.i.i

.lr.ph23.i.i:                                     ; preds = %.lr.ph23.i.i.preheader, %.lr.ph23.i.i
  %indvars.iv26.i.i = phi i64 [ %indvars.iv.next27.i.i, %.lr.ph23.i.i ], [ %indvars.iv26.i.i.ph, %.lr.ph23.i.i.preheader ] ; 2 uses
  %gep33.i.i = getelementptr [8 x i8], ptr %invariant.gep32.i.i, i64 %indvars.iv26.i.i ; 2 uses
  %i.bv = load double, ptr %gep33.i.i, align 8, !tbaa !10
  %i.bw = fmul double %i.bo, %i.bv
  store double %i.bw, ptr %gep33.i.i, align 8, !tbaa !10
  %indvars.iv.next27.i.i = add nuw nsw i64 %indvars.iv26.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next27.i.i, %i.bp
  br i1 %exitcond.not.i.i, label %.lr.ph.i.preheader, label %.lr.ph23.i.i, !llvm.loop !81

.lr.ph.i.preheader:                               ; preds = %.lr.ph23.i.i, %middle.block80
  %scevgep59 = getelementptr i8, ptr %i.ap, i64 16000
  %min.iters.check = icmp samesign ugt i64 %indvars.iv69.i, 1995
  %n.vec = and i64 %i.bp, 2044                    ; 3 uses
  %cmp.n = icmp eq i64 %i.bp, %n.vec
  %xtraiter118 = and i64 %i.an, 1
  %lcmp.mod119.not = icmp eq i64 %xtraiter118, 0
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %daxpy.exit.i
  %indvars.iv66.i = phi i64 [ %indvars.iv.next67.i, %daxpy.exit.i ], [ %indvars.iv.i28, %.lr.ph.i.preheader ] ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv66.i
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !12 ; 4 uses
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.by, i64 %i.bj ; 2 uses
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !10 ; 6 uses
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv69.i ; 2 uses
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !10
  store double %i.cc, ptr %i.bz, align 8, !tbaa !10
  store double %i.ca, ptr %i.cb, align 8, !tbaa !10
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.i
  %i.cd = fcmp une double %i.ca, 0.000000e+00
  br i1 %i.cd, label %bb.j, label %daxpy.exit.i

bb.j:                                             ; preds = %bb.i
  %invariant.gep63.i.i = getelementptr [8 x i8], ptr %i.by, i64 %indvars.iv.next70.i ; 5 uses
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.j
  %scevgep = getelementptr i8, ptr %i.by, i64 16000
  %bound0 = icmp ult ptr %invariant.gep63.i.i, %scevgep59
  %bound1 = icmp ult ptr %invariant.gep32.i.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader, label %vector.ph60

vector.ph60:                                      ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ca, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body61

vector.body61:                                    ; preds = %vector.body61, %vector.ph60
  %index62 = phi i64 [ 0, %vector.ph60 ], [ %index.next67, %vector.body61 ] ; 3 uses
  %i.ce = getelementptr [8 x i8], ptr %invariant.gep32.i.i, i64 %index62 ; 2 uses
  %i.cf = getelementptr i8, ptr %i.ce, i64 16
  %wide.load63 = load <2 x double>, ptr %i.ce, align 8, !tbaa !10, !alias.scope !82
  %wide.load64 = load <2 x double>, ptr %i.cf, align 8, !tbaa !10, !alias.scope !82
  %i.cg = getelementptr [8 x i8], ptr %invariant.gep63.i.i, i64 %index62 ; 3 uses
  %i.ch = getelementptr i8, ptr %i.cg, i64 16     ; 2 uses
  %wide.load65 = load <2 x double>, ptr %i.cg, align 8, !tbaa !10, !alias.scope !85, !noalias !82
  %wide.load66 = load <2 x double>, ptr %i.ch, align 8, !tbaa !10, !alias.scope !85, !noalias !82
  %i.ci = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load63, <2 x double> %wide.load65)
  %i.cj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load64, <2 x double> %wide.load66)
  store <2 x double> %i.ci, ptr %i.cg, align 8, !tbaa !10, !alias.scope !85, !noalias !82
  store <2 x double> %i.cj, ptr %i.ch, align 8, !tbaa !10, !alias.scope !85, !noalias !82
  %index.next67 = add nuw i64 %index62, 4         ; 2 uses
  %i.ck = icmp eq i64 %index.next67, %n.vec
  br i1 %i.ck, label %middle.block68, label %vector.body61, !llvm.loop !87

middle.block68:                                   ; preds = %vector.body61
  br i1 %cmp.n, label %daxpy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %bb.j, %middle.block68
  %indvars.iv.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.j ], [ %n.vec, %middle.block68 ] ; 5 uses
  %i.cl = add nuw i64 %indvars.iv69.i, %indvars.iv.i.i.ph
  br i1 %lcmp.mod119.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader
  %gep.i.i.prol = getelementptr [8 x i8], ptr %invariant.gep32.i.i, i64 %indvars.iv.i.i.ph
  %i.cm = load double, ptr %gep.i.i.prol, align 8, !tbaa !10
  %gep64.i.i.prol = getelementptr [8 x i8], ptr %invariant.gep63.i.i, i64 %indvars.iv.i.i.ph ; 2 uses
  %i.cn = load double, ptr %gep64.i.i.prol, align 8, !tbaa !10
  %i.co = tail call double @llvm.fmuladd.f64(double %i.ca, double %i.cm, double %i.cn)
  store double %i.co, ptr %gep64.i.i.prol, align 8, !tbaa !10
  %indvars.iv.next.i.i.prol = or disjoint i64 %indvars.iv.i.i.ph, 1
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ]
  %i.cp = icmp eq i64 %i.cl, 1998
  br i1 %i.cp, label %daxpy.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %.lr.ph.i.i ], [ %indvars.iv.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 4 uses
  %gep.i.i = getelementptr [8 x i8], ptr %invariant.gep32.i.i, i64 %indvars.iv.i.i
  %i.cq = load double, ptr %gep.i.i, align 8, !tbaa !10
  %gep64.i.i = getelementptr [8 x i8], ptr %invariant.gep63.i.i, i64 %indvars.iv.i.i ; 2 uses
  %i.cr = load double, ptr %gep64.i.i, align 8, !tbaa !10
  %i.cs = tail call double @llvm.fmuladd.f64(double %i.ca, double %i.cq, double %i.cr)
  store double %i.cs, ptr %gep64.i.i, align 8, !tbaa !10
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %gep.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep32.i.i, i64 %indvars.iv.next.i.i
  %i.ct = load double, ptr %gep.i.i.1, align 8, !tbaa !10
  %gep64.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep63.i.i, i64 %indvars.iv.next.i.i ; 2 uses
  %i.cu = load double, ptr %gep64.i.i.1, align 8, !tbaa !10
  %i.cv = tail call double @llvm.fmuladd.f64(double %i.ca, double %i.ct, double %i.cu)
  store double %i.cv, ptr %gep64.i.i.1, align 8, !tbaa !10
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %exitcond.not.i57.i.1 = icmp eq i64 %indvars.iv.next.i.i.1, %i.bp
  br i1 %exitcond.not.i57.i.1, label %daxpy.exit.i, label %.lr.ph.i.i, !llvm.loop !88

daxpy.exit.i:                                     ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block68, %bb.i
  %indvars.iv.next67.i = add nuw nsw i64 %indvars.iv66.i, 1 ; 2 uses
  %exitcond.not.i30 = icmp eq i64 %indvars.iv.next67.i, 2000
  br i1 %exitcond.not.i30, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !58

.loopexit.i:                                      ; preds = %daxpy.exit.i, %idamax.exit.i
  %indvars.iv.next.i29 = add nuw nsw i64 %indvars.iv.i28, 1
  %exitcond72.not.i = icmp eq i64 %indvars.iv.next70.i, 1999
  br i1 %exitcond72.not.i, label %dgefa.exit, label %matgen.exit, !llvm.loop !59

dgefa.exit:                                       ; preds = %.loopexit.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.j, i64 7996
  store i32 1999, ptr %i.cw, align 4, !tbaa !4
  br label %bb.k

bb.k:                                             ; preds = %daxpy.exit.i34, %dgefa.exit
  %indvars.iv.i31 = phi i64 [ 0, %dgefa.exit ], [ %indvars.iv.next.i33, %daxpy.exit.i34 ] ; 7 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.i31
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !4  ; 2 uses
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.cz ; 2 uses
  %i.db = load double, ptr %i.da, align 8, !tbaa !10 ; 4 uses
  %i.dc = zext i32 %i.cy to i64
  %.not.i32 = icmp eq i64 %indvars.iv.i31, %i.dc
  br i1 %.not.i32, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i31 ; 2 uses
  %i.de = load double, ptr %i.dd, align 8, !tbaa !10
  store double %i.de, ptr %i.da, align 8, !tbaa !10
  store double %i.db, ptr %i.dd, align 8, !tbaa !10
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %indvars.iv.next.i33 = add nuw nsw i64 %indvars.iv.i31, 1 ; 4 uses
  %i.df = fcmp une double %i.db, 0.000000e+00
  br i1 %i.df, label %bb.n, label %daxpy.exit.i34

bb.n:                                             ; preds = %bb.m
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.i31
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !12
  %i.di = sub nuw nsw i64 1999, %indvars.iv.i31   ; 3 uses
  %invariant.gep.i.i = getelementptr [8 x i8], ptr %i.dh, i64 %indvars.iv.next.i33 ; 2 uses
  %invariant.gep63.i.i37 = getelementptr [8 x i8], ptr %i.i, i64 %indvars.iv.next.i33 ; 2 uses
  %min.iters.check84 = icmp samesign ugt i64 %indvars.iv.i31, 1995
  br i1 %min.iters.check84, label %.lr.ph.i.i38.preheader, label %vector.ph85

vector.ph85:                                      ; preds = %bb.n
  %n.vec86 = and i64 %i.di, 2044                  ; 3 uses
  %broadcast.splatinsert87 = insertelement <2 x double> poison, double %i.db, i64 0
  %broadcast.splat88 = shufflevector <2 x double> %broadcast.splatinsert87, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body89

vector.body89:                                    ; preds = %vector.body89, %vector.ph85
  %index90 = phi i64 [ 0, %vector.ph85 ], [ %index.next95, %vector.body89 ] ; 3 uses
  %i.dj = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %index90 ; 2 uses
  %i.dk = getelementptr i8, ptr %i.dj, i64 16
  %wide.load91 = load <2 x double>, ptr %i.dj, align 8, !tbaa !10
  %wide.load92 = load <2 x double>, ptr %i.dk, align 8, !tbaa !10
  %i.dl = getelementptr [8 x i8], ptr %invariant.gep63.i.i37, i64 %index90 ; 3 uses
  %i.dm = getelementptr i8, ptr %i.dl, i64 16     ; 2 uses
  %wide.load93 = load <2 x double>, ptr %i.dl, align 8, !tbaa !10
  %wide.load94 = load <2 x double>, ptr %i.dm, align 8, !tbaa !10
  %i.dn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat88, <2 x double> %wide.load91, <2 x double> %wide.load93)
  %i.do = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat88, <2 x double> %wide.load92, <2 x double> %wide.load94)
  store <2 x double> %i.dn, ptr %i.dl, align 8, !tbaa !10
  store <2 x double> %i.do, ptr %i.dm, align 8, !tbaa !10
  %index.next95 = add nuw i64 %index90, 4         ; 2 uses
  %i.dp = icmp eq i64 %index.next95, %n.vec86
  br i1 %i.dp, label %middle.block96, label %vector.body89, !llvm.loop !89

middle.block96:                                   ; preds = %vector.body89
  %cmp.n97 = icmp eq i64 %i.di, %n.vec86
  br i1 %cmp.n97, label %daxpy.exit.i34, label %.lr.ph.i.i38.preheader

.lr.ph.i.i38.preheader:                           ; preds = %bb.n, %middle.block96
  %indvars.iv.i.i39.ph = phi i64 [ 0, %bb.n ], [ %n.vec86, %middle.block96 ]
  br label %.lr.ph.i.i38

.lr.ph.i.i38:                                     ; preds = %.lr.ph.i.i38.preheader, %.lr.ph.i.i38
  %indvars.iv.i.i39 = phi i64 [ %indvars.iv.next.i.i42, %.lr.ph.i.i38 ], [ %indvars.iv.i.i39.ph, %.lr.ph.i.i38.preheader ] ; 3 uses
  %gep.i.i40 = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.i.i39
  %i.dq = load double, ptr %gep.i.i40, align 8, !tbaa !10
  %gep64.i.i41 = getelementptr [8 x i8], ptr %invariant.gep63.i.i37, i64 %indvars.iv.i.i39 ; 2 uses
  %i.dr = load double, ptr %gep64.i.i41, align 8, !tbaa !10
  %i.ds = tail call double @llvm.fmuladd.f64(double %i.db, double %i.dq, double %i.dr)
  store double %i.ds, ptr %gep64.i.i41, align 8, !tbaa !10
  %indvars.iv.next.i.i42 = add nuw nsw i64 %indvars.iv.i.i39, 1 ; 2 uses
  %exitcond.not.i.i43 = icmp eq i64 %indvars.iv.next.i.i42, %i.di
  br i1 %exitcond.not.i.i43, label %daxpy.exit.i34, label %.lr.ph.i.i38, !llvm.loop !90

daxpy.exit.i34:                                   ; preds = %.lr.ph.i.i38, %middle.block96, %bb.m
  %exitcond.not.i35 = icmp eq i64 %indvars.iv.next.i33, 1999
  br i1 %exitcond.not.i35, label %.preheader.i36, label %bb.k, !llvm.loop !67

.preheader.i36:                                   ; preds = %daxpy.exit.i34, %daxpy.exit48.i
  %indvars.iv52.i = phi i64 [ %indvars.iv.next53.i, %daxpy.exit48.i ], [ 0, %daxpy.exit.i34 ] ; 4 uses
  %indvars.iv.next53.i = add nuw nsw i64 %indvars.iv52.i, 1 ; 2 uses
  %i.dt = sub nuw nsw i64 1999, %indvars.iv52.i   ; 6 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.dt
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !12 ; 3 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.dt
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !10
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.dt ; 2 uses
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !10
  %i.ea = fdiv double %i.dz, %i.dx                ; 3 uses
  store double %i.ea, ptr %i.dy, align 8, !tbaa !10
  %i.eb = fneg double %i.ea                       ; 2 uses
  %i.ec = icmp ne i64 %indvars.iv52.i, 1999
  %i.ed = fcmp une double %i.ea, 0.000000e+00
  %or.cond.i38.i = and i1 %i.ec, %i.ed
  br i1 %or.cond.i38.i, label %.lr.ph.i42.i.preheader, label %daxpy.exit48.i

.lr.ph.i42.i.preheader:                           ; preds = %.preheader.i36
  %min.iters.check100 = icmp samesign ugt i64 %indvars.iv52.i, 1995
  br i1 %min.iters.check100, label %.lr.ph.i42.i.preheader115, label %vector.ph101

vector.ph101:                                     ; preds = %.lr.ph.i42.i.preheader
  %n.vec102 = and i64 %i.dt, 2044                 ; 3 uses
  %broadcast.splatinsert103 = insertelement <2 x double> poison, double %i.eb, i64 0
  %broadcast.splat104 = shufflevector <2 x double> %broadcast.splatinsert103, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body105

vector.body105:                                   ; preds = %vector.body105, %vector.ph101
  %index106 = phi i64 [ 0, %vector.ph101 ], [ %index.next111, %vector.body105 ] ; 3 uses
  %i.ee = getelementptr [8 x i8], ptr %i.dv, i64 %index106 ; 2 uses
  %i.ef = getelementptr i8, ptr %i.ee, i64 16
  %wide.load107 = load <2 x double>, ptr %i.ee, align 8, !tbaa !10
  %wide.load108 = load <2 x double>, ptr %i.ef, align 8, !tbaa !10
  %i.eg = getelementptr [8 x i8], ptr %i.i, i64 %index106 ; 3 uses
  %i.eh = getelementptr i8, ptr %i.eg, i64 16     ; 2 uses
  %wide.load109 = load <2 x double>, ptr %i.eg, align 8, !tbaa !10
  %wide.load110 = load <2 x double>, ptr %i.eh, align 8, !tbaa !10
  %i.ei = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat104, <2 x double> %wide.load107, <2 x double> %wide.load109)
  %i.ej = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat104, <2 x double> %wide.load108, <2 x double> %wide.load110)
  store <2 x double> %i.ei, ptr %i.eg, align 8, !tbaa !10
  store <2 x double> %i.ej, ptr %i.eh, align 8, !tbaa !10
  %index.next111 = add nuw i64 %index106, 4       ; 2 uses
  %i.ek = icmp eq i64 %index.next111, %n.vec102
  br i1 %i.ek, label %middle.block112, label %vector.body105, !llvm.loop !91

middle.block112:                                  ; preds = %vector.body105
  %cmp.n113 = icmp eq i64 %i.dt, %n.vec102
  br i1 %cmp.n113, label %daxpy.exit48.i, label %.lr.ph.i42.i.preheader115

.lr.ph.i42.i.preheader115:                        ; preds = %.lr.ph.i42.i.preheader, %middle.block112
  %indvars.iv.i43.i.ph = phi i64 [ 0, %.lr.ph.i42.i.preheader ], [ %n.vec102, %middle.block112 ]
  br label %.lr.ph.i42.i

.lr.ph.i42.i:                                     ; preds = %.lr.ph.i42.i.preheader115, %.lr.ph.i42.i
  %indvars.iv.i43.i = phi i64 [ %indvars.iv.next.i46.i, %.lr.ph.i42.i ], [ %indvars.iv.i43.i.ph, %.lr.ph.i42.i.preheader115 ] ; 3 uses
  %gep.i44.i = getelementptr [8 x i8], ptr %i.dv, i64 %indvars.iv.i43.i
  %i.el = load double, ptr %gep.i44.i, align 8, !tbaa !10
  %gep64.i45.i = getelementptr [8 x i8], ptr %i.i, i64 %indvars.iv.i43.i ; 2 uses
  %i.em = load double, ptr %gep64.i45.i, align 8, !tbaa !10
  %i.en = tail call double @llvm.fmuladd.f64(double %i.eb, double %i.el, double %i.em)
  store double %i.en, ptr %gep64.i45.i, align 8, !tbaa !10
  %indvars.iv.next.i46.i = add nuw nsw i64 %indvars.iv.i43.i, 1 ; 2 uses
  %exitcond.not.i47.i = icmp eq i64 %indvars.iv.next.i46.i, %i.dt
  br i1 %exitcond.not.i47.i, label %daxpy.exit48.i, label %.lr.ph.i42.i, !llvm.loop !92

daxpy.exit48.i:                                   ; preds = %.lr.ph.i42.i, %middle.block112, %.preheader.i36
  %exitcond55.not.i = icmp eq i64 %indvars.iv.next53.i, 2000
  br i1 %exitcond55.not.i, label %dgesl.exit, label %.preheader.i36, !llvm.loop !75

dgesl.exit:                                       ; preds = %daxpy.exit48.i
  tail call void @free(ptr noundef %i.j) #14
  tail call void @free(ptr noundef nonnull %i.i) #14
  br label %bb.o

bb.o:                                             ; preds = %dgesl.exit, %bb.o
  %indvars.iv48 = phi i64 [ 0, %dgesl.exit ], [ %indvars.iv.next49, %bb.o ] ; 2 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv48
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !12
  tail call void @free(ptr noundef %i.ep) #14
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1 ; 2 uses
  %exitcond51.not = icmp eq i64 %indvars.iv.next49, 2000
  br i1 %exitcond51.not, label %bb.p, label %bb.o, !llvm.loop !93

bb.p:                                             ; preds = %bb.o
  tail call void @free(ptr noundef nonnull %i.f) #14
  %i.eq = load ptr, ptr @stdout, align 8, !tbaa !94
  %i.er = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.eq, ptr noundef nonnull %.0, double noundef 0.000000e+00) #14 ; 0 uses
  %i.es = load ptr, ptr @stdout, align 8, !tbaa !94
  %i.et = tail call i32 @fflush(ptr noundef %i.es) ; 0 uses
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #2

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind willreturn memory(read) }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"long", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"double", !6, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"p1 double", !14, i64 0}
!14 = !{!"any pointer", !6, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = distinct !{!17, !16}
!18 = !{!19}
!19 = distinct !{!19, !20}
!20 = distinct !{!20, !"LVerDomain"}
!21 = !{!22}
!22 = distinct !{!22, !20}
!23 = distinct !{!23, !16, !24, !25}
!24 = !{!"llvm.loop.isvectorized", i32 1}
!25 = !{!"llvm.loop.unroll.runtime.disable"}
!26 = distinct !{!26, !16, !24}
!27 = distinct !{!27, !16}
!28 = distinct !{!28, !16}
!29 = distinct !{!29, !16}
!30 = distinct !{!30, !16, !24, !25}
!31 = distinct !{!31, !16, !24}
!32 = distinct !{!32, !16, !25, !24}
!33 = distinct !{!33, !34}
!34 = !{!"llvm.loop.unroll.disable"}
!35 = !{!36}
!36 = distinct !{!36, !37}
!37 = distinct !{!37, !"LVerDomain"}
!38 = !{!39}
!39 = distinct !{!39, !37}
!40 = distinct !{!40, !16, !24, !25}
!41 = !{!42}
!42 = distinct !{!42, !43}
!43 = distinct !{!43, !"LVerDomain"}
!44 = !{!45}
!45 = distinct !{!45, !43}
!46 = distinct !{!46, !16, !24, !25}
!47 = distinct !{!47, !16, !24}
!48 = distinct !{!48, !16, !24}
!49 = distinct !{!49, !16, !24, !25}
!50 = distinct !{!50, !16, !25, !24}
!51 = !{!52}
!52 = distinct !{!52, !53}
!53 = distinct !{!53, !"LVerDomain"}
!54 = !{!55}
!55 = distinct !{!55, !53}
!56 = distinct !{!56, !16, !24, !25}
!57 = distinct !{!57, !16, !24}
!58 = distinct !{!58, !16}
!59 = distinct !{!59, !16}
!60 = !{!61}
!61 = distinct !{!61, !62}
!62 = distinct !{!62, !"LVerDomain"}
!63 = !{!64}
!64 = distinct !{!64, !62}
!65 = distinct !{!65, !16, !24, !25}
!66 = distinct !{!66, !16, !24}
!67 = distinct !{!67, !16}
!68 = !{!69}
!69 = distinct !{!69, !70}
!70 = distinct !{!70, !"LVerDomain"}
!71 = !{!72}
!72 = distinct !{!72, !70}
!73 = distinct !{!73, !16, !24, !25}
!74 = distinct !{!74, !16, !24}
!75 = distinct !{!75, !16}
!76 = !{!77, !77, i64 0}
!77 = !{!"p1 omnipotent char", !14, i64 0}
!78 = distinct !{!78, !16}
!79 = distinct !{!79, !16, !24, !25}
!80 = distinct !{!80, !16, !24, !25}
!81 = distinct !{!81, !16, !25, !24}
!82 = !{!83}
!83 = distinct !{!83, !84}
!84 = distinct !{!84, !"LVerDomain"}
!85 = !{!86}
!86 = distinct !{!86, !84}
!87 = distinct !{!87, !16, !24, !25}
!88 = distinct !{!88, !16, !24}
!89 = distinct !{!89, !16, !24, !25}
!90 = distinct !{!90, !16, !25, !24}
!91 = distinct !{!91, !16, !24, !25}
!92 = distinct !{!92, !16, !25, !24}
!93 = distinct !{!93, !16}
!94 = !{!95, !95, i64 0}
!95 = !{!"p1 _ZTS8_IO_FILE", !14, i64 0}
end_hunk_0
