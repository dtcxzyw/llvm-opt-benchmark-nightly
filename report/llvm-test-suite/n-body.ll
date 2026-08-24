Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/n-body?download=true
inline.NumInlined: 3
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 11
begin_hunk_0_@advance:bb.a
  %i.br = load double, ptr %i.bq, align 8, !tbaa !12
  %i.bs = tail call double @llvm.fmuladd.f64(double %2, double %i.bp, double %i.br)
  store double %i.bs, ptr %i.bq, align 8, !tbaa !12
  %indvars.iv.next81.1 = add nuw nsw i64 %indvars.iv80, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph71, !llvm.loop !17

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph71
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph71.epil.preheader

.lr.ph71.epil.preheader:                          ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph71.preheader
  %indvars.iv80.epil.init = phi i64 [ 0, %.lr.ph71.preheader ], [ %indvars.iv.next81.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod86 = trunc i32 %0 to i1
  tail call void @llvm.assume(i1 %lcmp.mod86)
  %i.bt = getelementptr inbounds nuw [56 x i8], ptr %1, i64 %indvars.iv80.epil.init ; 5 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load <2 x double>, ptr %i.bu, align 8, !tbaa !10
  %i.bw = load <2 x double>, ptr %i.bt, align 8, !tbaa !10
  %i.bx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.d, <2 x double> %i.bv, <2 x double> %i.bw)
  store <2 x double> %i.bx, ptr %i.bt, align 8, !tbaa !10
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  %i.bz = load double, ptr %i.by, align 8, !tbaa !15
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bt, i64 16 ; 2 uses
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !12
  %i.cc = tail call double @llvm.fmuladd.f64(double %2, double %i.bz, double %i.cb)
  store double %i.cc, ptr %i.ca, align 8, !tbaa !12
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph71.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local double @energy(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %.lr.ph42.preheader, label %._crit_edge

.lr.ph42.preheader:                               ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %wide.trip.count50 = zext nneg i32 %0 to i64    ; 2 uses
  br label %.lr.ph42

.loopexit:                                        ; preds = %bb.b, %.lr.ph42
  %.1.lcssa = phi double [ %i.p, %.lr.ph42 ], [ %i.am, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond51.not = icmp eq i64 %indvars.iv.next48, %wide.trip.count50
  br i1 %exitcond51.not, label %._crit_edge, label %.lr.ph42, !llvm.loop !18

.lr.ph42:                                         ; preds = %.lr.ph42.preheader, %.loopexit
  %indvars.iv47 = phi i64 [ 0, %.lr.ph42.preheader ], [ %indvars.iv.next48, %.loopexit ] ; 2 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph42.preheader ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %.041 = phi double [ 0.000000e+00, %.lr.ph42.preheader ], [ %.1.lcssa, %.loopexit ]
  %i.c = getelementptr inbounds nuw [56 x i8], ptr %1, i64 %indvars.iv47 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load double, ptr %i.d, align 8, !tbaa !14 ; 2 uses
  %i.f = fmul double %i.e, 5.000000e-01
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.h = load double, ptr %i.g, align 8, !tbaa !19 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.j = load double, ptr %i.i, align 8, !tbaa !20 ; 2 uses
  %i.k = fmul double %i.j, %i.j
  %i.l = tail call double @llvm.fmuladd.f64(double %i.h, double %i.h, double %i.k)
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.n = load double, ptr %i.m, align 8, !tbaa !15 ; 2 uses
  %i.o = tail call double @llvm.fmuladd.f64(double %i.n, double %i.n, double %i.l)
  %i.p = tail call double @llvm.fmuladd.f64(double %i.f, double %i.o, double %.041) ; 2 uses
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1 ; 3 uses
  %i.q = icmp samesign ult i64 %indvars.iv.next48, %i.b
  br i1 %i.q, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph42
  %i.r = load double, ptr %i.c, align 8, !tbaa !21
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.t = load double, ptr %i.s, align 8, !tbaa !22
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.v = load double, ptr %i.u, align 8, !tbaa !12
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv44 = phi i64 [ %indvars.iv, %.lr.ph ], [ %indvars.iv.next45, %bb.b ] ; 2 uses
  %.139 = phi double [ %i.p, %.lr.ph ], [ %i.am, %bb.b ]
  %i.w = getelementptr inbounds nuw [56 x i8], ptr %1, i64 %indvars.iv44 ; 4 uses
  %i.x = load double, ptr %i.w, align 8, !tbaa !21
  %i.y = fsub double %i.r, %i.x                   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.aa = load double, ptr %i.z, align 8, !tbaa !22
  %i.ab = fsub double %i.t, %i.aa                 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !12
  %i.ae = fsub double %i.v, %i.ad                 ; 2 uses
  %i.af = fmul double %i.ab, %i.ab
  %i.ag = tail call double @llvm.fmuladd.f64(double %i.y, double %i.y, double %i.af)
  %i.ah = tail call double @llvm.fmuladd.f64(double %i.ae, double %i.ae, double %i.ag)
  %sqrt = tail call double @llvm.sqrt.f64(double %i.ah)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !14
  %i.ak = fmul double %i.e, %i.aj
  %i.al = fdiv double %i.ak, %sqrt
  %i.am = fsub double %.139, %i.al                ; 2 uses
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next45, %wide.trip.count50
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !23

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %.0.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %.1.lcssa, %.loopexit ]
  ret double %.0.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @offset_momentum(i32 noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %0 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.b = icmp eq i32 %0, 1
  br i1 %i.b, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 3 uses
  %.02328 = phi double [ 0.000000e+00, %.lr.ph.preheader.new ], [ %i.y, %.lr.ph ]
  %i.c = phi <2 x double> [ zeroinitializer, %.lr.ph.preheader.new ], [ %i.v, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.d = getelementptr inbounds nuw [56 x i8], ptr %1, i64 %indvars.iv ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.g = load double, ptr %i.f, align 8, !tbaa !14 ; 2 uses
  %i.h = load <2 x double>, ptr %i.e, align 8, !tbaa !10
  %i.i = insertelement <2 x double> poison, double %i.g, i64 0
  %i.j = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.k = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.h, <2 x double> %i.j, <2 x double> %i.c)
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.m = load double, ptr %i.l, align 8, !tbaa !15
  %i.n = tail call double @llvm.fmuladd.f64(double %i.m, double %i.g, double %.02328)
  %i.o = getelementptr inbounds nuw [56 x i8], ptr %1, i64 %indvars.iv ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 104
  %i.r = load double, ptr %i.q, align 8, !tbaa !14 ; 2 uses
  %i.s = load <2 x double>, ptr %i.p, align 8, !tbaa !10
  %i.t = insertelement <2 x double> poison, double %i.r, i64 0
  %i.u = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> zeroinitializer
  %i.v = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.s, <2 x double> %i.u, <2 x double> %i.k) ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 96
  %i.x = load double, ptr %i.w, align 8, !tbaa !15
  %i.y = tail call double @llvm.fmuladd.f64(double %i.x, double %i.r, double %i.n) ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !24

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.02328.epil.init = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %i.y, %._crit_edge.loopexit.unr-lcssa ]
  %.epil.init = phi <2 x double> [ zeroinitializer, %.lr.ph.preheader ], [ %i.v, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod42 = trunc i32 %0 to i1
  tail call void @llvm.assume(i1 %lcmp.mod42)
  %i.z = getelementptr inbounds nuw [56 x i8], ptr %1, i64 %indvars.iv.epil.init ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !14 ; 2 uses
  %i.ad = load <2 x double>, ptr %i.aa, align 8, !tbaa !10
  %i.ae = insertelement <2 x double> poison, double %i.ac, i64 0
  %i.af = shufflevector <2 x double> %i.ae, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ag = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ad, <2 x double> %i.af, <2 x double> %.epil.init)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !15
  %i.aj = tail call double @llvm.fmuladd.f64(double %i.ai, double %i.ac, double %.02328.epil.init)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %.023.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.y, %._crit_edge.loopexit.unr-lcssa ], [ %i.aj, %.lr.ph.epil.preheader ]
  %i.ak = phi <2 x double> [ zeroinitializer, %bb.a ], [ %i.v, %._crit_edge.loopexit.unr-lcssa ], [ %i.ag, %.lr.ph.epil.preheader ]
  %i.al = fdiv <2 x double> %i.ak, splat (double f0xC043BD3CC9BE45DE)
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24
  store <2 x double> %i.al, ptr %i.am, align 8, !tbaa !10
  %i.an = fdiv double %.023.lcssa, f0xC043BD3CC9BE45DE
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 40
  store double %i.an, ptr %i.ao, align 8, !tbaa !15
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #3 {
.loopexit.i.4:
  %i.a = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 96), align 16, !tbaa !15 ; 2 uses
  %i.b = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 208), align 16, !tbaa !15 ; 3 uses
  %2 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 24), align 8, !tbaa !10
  %3 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 80), align 16, !tbaa !10 ; 3 uses
  %4 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 136), align 8, !tbaa !10 ; 3 uses
  %5 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 192), align 16, !tbaa !10 ; 3 uses
  %6 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 248), align 8, !tbaa !10 ; 3 uses
  %7 = extractelement <2 x double> %6, i64 0      ; 2 uses
  %8 = shufflevector <2 x double> %6, <2 x double> %5, <2 x i32> <i32 1, i32 3> ; 2 uses
  %9 = fmul <2 x double> %8, %8                   ; 2 uses
  %10 = extractelement <2 x double> %9, i64 0
  %11 = tail call double @llvm.fmuladd.f64(double %7, double %7, double %10)
  %12 = extractelement <2 x double> %5, i64 0     ; 2 uses
  %13 = extractelement <2 x double> %9, i64 1
  %14 = tail call double @llvm.fmuladd.f64(double %12, double %12, double %13)
  %15 = tail call double @llvm.fmuladd.f64(double %i.b, double %i.b, double %14)
  %16 = extractelement <2 x double> %4, i64 0     ; 2 uses
  %17 = shufflevector <2 x double> %4, <2 x double> %3, <2 x i32> <i32 1, i32 3> ; 2 uses
  %18 = fmul <2 x double> %17, %17                ; 2 uses
  %19 = extractelement <2 x double> %18, i64 0
  %20 = tail call double @llvm.fmuladd.f64(double %16, double %16, double %19)
  %21 = extractelement <2 x double> %3, i64 0     ; 2 uses
  %i.c = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 16), align 16
  %i.d = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 72), align 8, !tbaa !12
  %i.e = load <2 x double>, ptr @bodies, align 16
  %i.f = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 8), align 8
  %i.g = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 104), align 8, !tbaa !10 ; 4 uses
  %i.h = extractelement <2 x double> %i.g, i64 0  ; 3 uses
  %22 = shufflevector <2 x double> %i.g, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.i = fmul double %i.h, 5.000000e-01
  %i.j = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 56), align 8, !tbaa !10 ; 2 uses
  %i.k = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 120), align 8, !tbaa !10 ; 2 uses
  %i.l = shufflevector <2 x double> %i.c, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.m = insertelement <2 x double> %i.k, double %i.d, i64 0
  %i.n = fsub <2 x double> %i.l, %i.m             ; 2 uses
  %i.o = shufflevector <2 x double> %i.e, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.p = shufflevector <2 x double> %i.j, <2 x double> %i.g, <2 x i32> <i32 0, i32 3>
  %i.q = fsub <2 x double> %i.o, %i.p             ; 2 uses
  %i.r = shufflevector <2 x double> %i.f, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.s = shufflevector <2 x double> %i.j, <2 x double> %i.k, <2 x i32> <i32 1, i32 2>
  %i.t = fsub <2 x double> %i.r, %i.s             ; 2 uses
  %i.u = fmul <2 x double> %i.t, %i.t
  %i.v = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.q, <2 x double> %i.q, <2 x double> %i.u)
  %i.w = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.n, <2 x double> %i.n, <2 x double> %i.v)
  %i.x = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.w)
  %i.y = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 184), align 8
  %i.z = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 240), align 16, !tbaa !12
  %i.aa = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 72), align 8 ; 2 uses
  %i.ab = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 128), align 16
  %i.ac = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 56), align 8, !tbaa !21 ; 2 uses
  %i.ad = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 112), align 16, !tbaa !21
  %23 = fsub double %i.ac, %i.ad
  %24 = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 64), align 16, !tbaa !22 ; 2 uses
  %25 = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 120), align 8, !tbaa !22
  %26 = fsub double %24, %25                      ; 2 uses
  %27 = fmul double %26, %26
  %i.ae = extractelement <2 x double> %18, i64 1
  %i.af = tail call double @llvm.fmuladd.f64(double %21, double %21, double %i.ae)
  %28 = insertelement <2 x double> poison, double %i.a, i64 0
  %29 = insertelement <2 x double> %28, double %23, i64 1 ; 2 uses
  %30 = insertelement <2 x double> poison, double %i.af, i64 0
  %31 = insertelement <2 x double> %30, double %27, i64 1
  %32 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %29, <2 x double> %29, <2 x double> %31) ; 2 uses
  %33 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 184), align 8
  %34 = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 240), align 16, !tbaa !12
  %35 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 128), align 16
  %36 = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 184), align 8, !tbaa !12
  %37 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 112), align 16
  %38 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 120), align 8
  %39 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 216), align 8, !tbaa !10 ; 4 uses
  %40 = extractelement <2 x double> %39, i64 0    ; 3 uses
  %i.ag = shufflevector <2 x double> %39, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ah = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 48), align 16, !tbaa !14 ; 3 uses
  %i.ai = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 40), align 8, !tbaa !15
  %i.aj = tail call double @llvm.fmuladd.f64(double %i.ai, double %i.ah, double 0.000000e+00)
  %i.ak = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 160), align 16, !tbaa !14 ; 5 uses
  %i.al = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 152), align 8, !tbaa !15 ; 3 uses
  %i.am = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 272), align 16, !tbaa !14 ; 5 uses
  %i.an = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 264), align 8, !tbaa !15 ; 3 uses
  %41 = insertelement <2 x double> poison, double %i.ah, i64 0
  %42 = shufflevector <2 x double> %41, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %43 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %2, <2 x double> %42, <2 x double> zeroinitializer)
  %44 = insertelement <2 x double> poison, double %i.ak, i64 0
  %45 = shufflevector <2 x double> %44, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ao = insertelement <2 x double> poison, double %i.am, i64 0
  %i.ap = shufflevector <2 x double> %i.ao, <2 x double> poison, <2 x i32> zeroinitializer
  %46 = fmul double %i.am, 5.000000e-01
  %47 = tail call double @llvm.fmuladd.f64(double %i.an, double %i.an, double %11)
  %48 = fmul double %i.ak, 5.000000e-01
  %49 = tail call double @llvm.fmuladd.f64(double %i.al, double %i.al, double %20)
  %i.aq = fmul double %i.ah, 5.000000e-01
  %i.ar = tail call double @llvm.fmuladd.f64(double %i.a, double %i.h, double %i.aj)
  %i.as = tail call double @llvm.fmuladd.f64(double %i.al, double %i.ak, double %i.ar)
  %i.at = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %3, <2 x double> %22, <2 x double> %43)
  %i.au = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %4, <2 x double> %45, <2 x double> %i.at)
  %i.av = insertelement <2 x double> %i.g, double %i.ak, i64 1
  %50 = fmul <2 x double> %42, %i.av
  %51 = fdiv <2 x double> %50, %i.x               ; 2 uses
  %52 = fmul double %i.h, %i.ak
  %i.aw = tail call double @llvm.fmuladd.f64(double %i.b, double %40, double %i.as)
  %53 = tail call double @llvm.fmuladd.f64(double %i.an, double %i.am, double %i.aw)
  %54 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %5, <2 x double> %i.ag, <2 x double> %i.au)
  %i.ax = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %6, <2 x double> %i.ap, <2 x double> %54)
  %i.ay = fdiv <2 x double> %i.ax, splat (double f0xC043BD3CC9BE45DE) ; 4 uses
  store <2 x double> %i.ay, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 24), align 8, !tbaa !10
  %55 = insertelement <2 x double> poison, double %52, i64 0
  %56 = insertelement <2 x double> %55, double %53, i64 1
  %57 = fmul double %40, 5.000000e-01
  %foldExtExtBinop = fmul <2 x double> %i.ay, %i.ay
  %58 = extractelement <2 x double> %foldExtExtBinop, i64 1
  %59 = extractelement <2 x double> %i.ay, i64 0  ; 2 uses
  %i.az = tail call double @llvm.fmuladd.f64(double %59, double %59, double %58)
  %i.ba = extractelement <2 x double> %51, i64 0
  %i.bb = extractelement <2 x double> %51, i64 1
  %i.bc = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 168), align 8, !tbaa !10 ; 2 uses
  %i.bd = insertelement <2 x double> %i.y, double %i.z, i64 1
  %i.be = fsub <2 x double> %i.l, %i.bd           ; 2 uses
  %i.bf = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 224), align 16, !tbaa !10 ; 2 uses
  %i.bg = shufflevector <2 x double> %i.bc, <2 x double> %i.bf, <2 x i32> <i32 0, i32 2>
  %i.bh = fsub <2 x double> %i.o, %i.bg           ; 2 uses
  %i.bi = shufflevector <2 x double> %i.bc, <2 x double> %i.bf, <2 x i32> <i32 1, i32 3>
  %i.bj = fsub <2 x double> %i.r, %i.bi           ; 2 uses
  %i.bk = fmul <2 x double> %i.bj, %i.bj
  %i.bl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bh, <2 x double> %i.bh, <2 x double> %i.bk)
  %i.bm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.be, <2 x double> %i.be, <2 x double> %i.bl)
  %i.bn = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.bm)
  %i.bo = insertelement <2 x double> %39, double %i.am, i64 1 ; 3 uses
  %i.bp = fmul <2 x double> %42, %i.bo
  %i.bq = fdiv <2 x double> %i.bp, %i.bn          ; 2 uses
  %60 = extractelement <2 x double> %i.bq, i64 0
  %i.br = extractelement <2 x double> %i.bq, i64 1
  %i.bs = extractelement <2 x double> %32, i64 0
  %i.bt = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 168), align 8, !tbaa !10 ; 2 uses
  %i.bu = shufflevector <2 x double> %i.aa, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bv = insertelement <2 x double> %33, double %34, i64 1
  %i.bw = fsub <2 x double> %i.bu, %i.bv          ; 2 uses
  %i.bx = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 224), align 16, !tbaa !10 ; 2 uses
  %61 = insertelement <2 x double> poison, double %i.ac, i64 0
  %62 = shufflevector <2 x double> %61, <2 x double> poison, <2 x i32> zeroinitializer
  %i.by = shufflevector <2 x double> %i.bt, <2 x double> %i.bx, <2 x i32> <i32 0, i32 2>
  %63 = fsub <2 x double> %62, %i.by              ; 2 uses
  %64 = insertelement <2 x double> poison, double %24, i64 0
  %65 = shufflevector <2 x double> %64, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bz = shufflevector <2 x double> %i.bt, <2 x double> %i.bx, <2 x i32> <i32 1, i32 3>
  %66 = fsub <2 x double> %65, %i.bz              ; 2 uses
  %67 = fmul <2 x double> %66, %66
  %68 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %63, <2 x double> %63, <2 x double> %67)
  %69 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bw, <2 x double> %i.bw, <2 x double> %68)
  %70 = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %69)
  %i.ca = fmul <2 x double> %22, %i.bo
  %71 = fdiv <2 x double> %i.ca, %70              ; 2 uses
  %72 = extractelement <2 x double> %71, i64 0
  %73 = extractelement <2 x double> %71, i64 1
  %i.cb = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 168), align 8, !tbaa !10 ; 2 uses
  %i.cc = fmul <2 x double> %45, %i.bo
  %i.cd = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 232), align 8, !tbaa !10 ; 2 uses
  %i.ce = shufflevector <2 x double> %35, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cf = insertelement <2 x double> %i.cd, double %36, i64 0
  %i.cg = fsub <2 x double> %i.ce, %i.cf          ; 2 uses
  %i.ch = shufflevector <2 x double> %37, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ci = shufflevector <2 x double> %i.cb, <2 x double> %39, <2 x i32> <i32 0, i32 3>
  %i.cj = fsub <2 x double> %i.ch, %i.ci          ; 2 uses
  %i.ck = shufflevector <2 x double> %38, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cl = shufflevector <2 x double> %i.cb, <2 x double> %i.cd, <2 x i32> <i32 1, i32 2>
  %i.cm = fsub <2 x double> %i.ck, %i.cl          ; 2 uses
  %i.cn = fmul <2 x double> %i.cm, %i.cm
  %i.co = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cj, <2 x double> %i.cj, <2 x double> %i.cn)
  %i.cp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cg, <2 x double> %i.cg, <2 x double> %i.co)
  %i.cq = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.cp)
  %i.cr = fdiv <2 x double> %i.cc, %i.cq          ; 2 uses
  %i.cs = extractelement <2 x double> %i.cr, i64 0
  %i.ct = extractelement <2 x double> %i.cr, i64 1
  %i.cu = fmul double %40, %i.am
  %i.cv = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 184), align 8, !tbaa !12
  %i.cw = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 240), align 16, !tbaa !12
  %74 = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 168), align 8, !tbaa !21
  %75 = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 224), align 16, !tbaa !21
  %76 = fsub double %74, %75                      ; 2 uses
  %77 = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 176), align 16, !tbaa !22
  %78 = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 232), align 8, !tbaa !22
  %79 = fsub double %77, %78                      ; 2 uses
  %80 = fmul double %79, %79
  %81 = insertelement <2 x double> %i.aa, double %i.cv, i64 1
  %82 = insertelement <2 x double> %i.ab, double %i.cw, i64 1
  %i.cx = fsub <2 x double> %81, %82              ; 2 uses
  %83 = tail call double @llvm.fmuladd.f64(double %76, double %76, double %80)
  %84 = shufflevector <2 x double> %32, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %85 = insertelement <2 x double> %84, double %83, i64 1
  %i.cy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cx, <2 x double> %i.cx, <2 x double> %85)
  %i.cz = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.cy) ; 2 uses
  %i.da = insertelement <2 x double> %i.cz, double f0xC043BD3CC9BE45DE, i64 1
  %i.db = fdiv <2 x double> %56, %i.da            ; 2 uses
  %i.dc = extractelement <2 x double> %i.db, i64 1 ; 3 uses
  store double %i.dc, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 40), align 8, !tbaa !15
  %i.dd = tail call double @llvm.fmuladd.f64(double %i.dc, double %i.dc, double %i.az)
  %i.de = tail call double @llvm.fmuladd.f64(double %i.aq, double %i.dd, double 0.000000e+00)
  %i.df = fsub double %i.de, %i.ba
  %i.dg = fsub double %i.df, %i.bb
  %i.dh = fsub double %i.dg, %60
  %i.di = fsub double %i.dh, %i.br
  %i.dj = tail call double @llvm.fmuladd.f64(double %i.i, double %i.bs, double %i.di)
  %i.dk = extractelement <2 x double> %i.db, i64 0
  %i.dl = fsub double %i.dj, %i.dk
  %i.dm = fsub double %i.dl, %72
  %i.dn = fsub double %i.dm, %73
  %i.do = tail call double @llvm.fmuladd.f64(double %48, double %49, double %i.dn)
  %i.dp = fsub double %i.do, %i.cs
  %i.dq = fsub double %i.dp, %i.ct
  %i.dr = tail call double @llvm.fmuladd.f64(double %57, double %15, double %i.dq)
  %i.ds = extractelement <2 x double> %i.cz, i64 1
  %i.dt = fdiv double %i.cu, %i.ds
  %i.du = fsub double %i.dr, %i.dt
  %i.dv = tail call double @llvm.fmuladd.f64(double %46, double %47, double %i.du)
  %i.dw = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %i.dv) ; 0 uses
  br label %bb.a

bb.a:                                             ; preds = %.loopexit.i.4, %bb.a
  %.027 = phi i32 [ 1, %.loopexit.i.4 ], [ %i.dx, %bb.a ]
  tail call void @advance(i32 noundef 5, ptr noundef nonnull @bodies, double noundef 1.000000e-02)
  %i.dx = add nuw nsw i32 %.027, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.dx, 5000001
  br i1 %exitcond.not, label %.loopexit.i12.4, label %bb.a, !llvm.loop !25

.loopexit.i12.4:                                  ; preds = %bb.a
  %i.dy = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 272), align 16, !tbaa !14 ; 2 uses
  %i.dz = fmul double %i.dy, 5.000000e-01
  %i.ea = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 264), align 8, !tbaa !15 ; 2 uses
  %i.eb = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 208), align 16, !tbaa !15 ; 2 uses
  %i.ec = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 248), align 8, !tbaa !10 ; 2 uses
  %i.ed = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 192), align 16, !tbaa !10 ; 2 uses
  %i.ee = shufflevector <2 x double> %i.ec, <2 x double> %i.ed, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ef = fmul <2 x double> %i.ee, %i.ee
  %i.eg = shufflevector <2 x double> %i.ec, <2 x double> %i.ed, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.eh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eg, <2 x double> %i.eg, <2 x double> %i.ef) ; 2 uses
  %i.ei = extractelement <2 x double> %i.eh, i64 0
  %i.ej = tail call double @llvm.fmuladd.f64(double %i.ea, double %i.ea, double %i.ei)
  %i.ek = extractelement <2 x double> %i.eh, i64 1
  %i.el = tail call double @llvm.fmuladd.f64(double %i.eb, double %i.eb, double %i.ek)
  %i.em = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 152), align 8, !tbaa !15 ; 2 uses
  %i.en = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 96), align 16, !tbaa !15 ; 2 uses
  %i.eo = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 136), align 8, !tbaa !10 ; 2 uses
  %i.ep = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 80), align 16, !tbaa !10 ; 2 uses
  %i.eq = shufflevector <2 x double> %i.eo, <2 x double> %i.ep, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.er = fmul <2 x double> %i.eq, %i.eq
  %i.es = shufflevector <2 x double> %i.eo, <2 x double> %i.ep, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.et = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.es, <2 x double> %i.es, <2 x double> %i.er) ; 2 uses
  %i.eu = extractelement <2 x double> %i.et, i64 0
  %i.ev = tail call double @llvm.fmuladd.f64(double %i.em, double %i.em, double %i.eu)
  %i.ew = extractelement <2 x double> %i.et, i64 1
  %i.ex = tail call double @llvm.fmuladd.f64(double %i.en, double %i.en, double %i.ew)
  %i.ey = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 48), align 16, !tbaa !14 ; 3 uses
  %i.ez = fmul double %i.ey, 5.000000e-01
  %i.fa = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 40), align 8, !tbaa !15 ; 2 uses
  %i.fb = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 24), align 8, !tbaa !19 ; 2 uses
  %i.fc = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 32), align 16, !tbaa !20 ; 2 uses
  %i.fd = fmul double %i.fc, %i.fc
  %i.fe = tail call double @llvm.fmuladd.f64(double %i.fb, double %i.fb, double %i.fd)
  %i.ff = tail call double @llvm.fmuladd.f64(double %i.fa, double %i.fa, double %i.fe)
  %i.fg = tail call double @llvm.fmuladd.f64(double %i.ez, double %i.ff, double 0.000000e+00)
  %i.fh = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 16), align 16
  %i.fi = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 72), align 8, !tbaa !12
  %i.fj = load <2 x double>, ptr @bodies, align 16
  %i.fk = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 8), align 8
  %i.fl = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 160), align 16, !tbaa !14
  %i.fm = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 104), align 8, !tbaa !10 ; 6 uses
  %i.fn = extractelement <2 x double> %i.fm, i64 0
  %i.fo = fmul double %i.fn, 5.000000e-01
  %i.fp = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 56), align 8, !tbaa !10 ; 2 uses
  %i.fq = insertelement <2 x double> poison, double %i.ey, i64 0 ; 2 uses
  %i.fr = shufflevector <2 x double> %i.fq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fs = insertelement <2 x double> %i.fm, double %i.fl, i64 1
  %i.ft = fmul <2 x double> %i.fr, %i.fs
  %i.fu = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 120), align 8, !tbaa !10 ; 2 uses
  %i.fv = shufflevector <2 x double> %i.fh, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fw = insertelement <2 x double> %i.fu, double %i.fi, i64 0
  %i.fx = fsub <2 x double> %i.fv, %i.fw          ; 2 uses
  %i.fy = shufflevector <2 x double> %i.fj, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fz = shufflevector <2 x double> %i.fp, <2 x double> %i.fm, <2 x i32> <i32 0, i32 3>
  %i.ga = fsub <2 x double> %i.fy, %i.fz          ; 2 uses
  %i.gb = shufflevector <2 x double> %i.fk, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gc = shufflevector <2 x double> %i.fp, <2 x double> %i.fu, <2 x i32> <i32 1, i32 2>
  %i.gd = fsub <2 x double> %i.gb, %i.gc          ; 2 uses
  %i.ge = fmul <2 x double> %i.gd, %i.gd
  %i.gf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ga, <2 x double> %i.ga, <2 x double> %i.ge)
  %i.gg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fx, <2 x double> %i.fx, <2 x double> %i.gf)
  %i.gh = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.gg)
  %i.gi = fdiv <2 x double> %i.ft, %i.gh          ; 2 uses
  %i.gj = extractelement <2 x double> %i.gi, i64 0
  %i.gk = fsub double %i.fg, %i.gj
  %i.gl = extractelement <2 x double> %i.gi, i64 1
  %i.gm = fsub double %i.gk, %i.gl
  %i.gn = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 216), align 8
  %i.go = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 184), align 8
  %i.gp = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 272), align 16, !tbaa !14
  %i.gq = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 240), align 16, !tbaa !12
  %i.gr = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 168), align 8, !tbaa !10 ; 2 uses
  %i.gs = insertelement <2 x double> %i.gn, double %i.ey, i64 1
  %i.gt = insertelement <2 x double> %i.fq, double %i.gp, i64 1
  %i.gu = fmul <2 x double> %i.gs, %i.gt
  %i.gv = insertelement <2 x double> %i.go, double %i.gq, i64 1
  %i.gw = fsub <2 x double> %i.fv, %i.gv          ; 2 uses
  %i.gx = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 224), align 16, !tbaa !10 ; 2 uses
  %i.gy = shufflevector <2 x double> %i.gr, <2 x double> %i.gx, <2 x i32> <i32 0, i32 2>
  %i.gz = fsub <2 x double> %i.fy, %i.gy          ; 2 uses
  %i.ha = shufflevector <2 x double> %i.gr, <2 x double> %i.gx, <2 x i32> <i32 1, i32 3>
  %i.hb = fsub <2 x double> %i.gb, %i.ha          ; 2 uses
  %i.hc = fmul <2 x double> %i.hb, %i.hb
  %i.hd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gz, <2 x double> %i.gz, <2 x double> %i.hc)
  %i.he = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gw, <2 x double> %i.gw, <2 x double> %i.hd)
  %i.hf = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.he)
  %i.hg = fdiv <2 x double> %i.gu, %i.hf          ; 2 uses
  %i.hh = extractelement <2 x double> %i.hg, i64 0
  %i.hi = fsub double %i.gm, %i.hh
  %i.hj = extractelement <2 x double> %i.hg, i64 1
  %i.hk = fsub double %i.hi, %i.hj
  %i.hl = tail call double @llvm.fmuladd.f64(double %i.fo, double %i.ex, double %i.hk)
  %i.hm = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 72), align 8, !tbaa !12 ; 2 uses
  %i.hn = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 112), align 16, !tbaa !21
  %i.ho = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 216), align 8
  %i.hp = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 184), align 8
  %i.hq = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 272), align 16, !tbaa !14
  %i.hr = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 240), align 16, !tbaa !12
  %i.hs = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 168), align 8, !tbaa !10 ; 2 uses
  %i.ht = shufflevector <2 x double> %i.ho, <2 x double> %i.fm, <2 x i32> <i32 0, i32 2>
  %i.hu = insertelement <2 x double> %i.fm, double %i.hq, i64 1
  %i.hv = fmul <2 x double> %i.ht, %i.hu
  %i.hw = insertelement <2 x double> poison, double %i.hm, i64 0
  %i.hx = shufflevector <2 x double> %i.hw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hy = insertelement <2 x double> %i.hp, double %i.hr, i64 1
  %i.hz = fsub <2 x double> %i.hx, %i.hy          ; 2 uses
  %i.ia = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 224), align 16, !tbaa !10 ; 2 uses
  %i.ib = shufflevector <2 x double> %i.hs, <2 x double> %i.ia, <2 x i32> <i32 0, i32 2>
  %i.ic = shufflevector <2 x double> %i.hs, <2 x double> %i.ia, <2 x i32> <i32 1, i32 3>
  %i.id = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 128), align 16
  %i.ie = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 184), align 8, !tbaa !12
  %i.if = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 112), align 16
  %i.ig = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 120), align 8
  %i.ih = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 272), align 16, !tbaa !14
  %i.ii = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 216), align 8, !tbaa !10 ; 4 uses
  %i.ij = extractelement <2 x double> %i.ii, i64 0
  %i.ik = fmul double %i.ij, 5.000000e-01
  %i.il = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 168), align 8, !tbaa !10 ; 2 uses
  %i.im = insertelement <2 x double> %i.ii, double %i.ih, i64 1
  %i.in = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 232), align 8, !tbaa !10 ; 2 uses
  %i.io = shufflevector <2 x double> %i.id, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ip = insertelement <2 x double> %i.in, double %i.ie, i64 0
  %i.iq = fsub <2 x double> %i.io, %i.ip          ; 2 uses
  %i.ir = shufflevector <2 x double> %i.if, <2 x double> poison, <2 x i32> zeroinitializer
  %i.is = shufflevector <2 x double> %i.il, <2 x double> %i.ii, <2 x i32> <i32 0, i32 3>
  %i.it = fsub <2 x double> %i.ir, %i.is          ; 2 uses
  %i.iu = shufflevector <2 x double> %i.ig, <2 x double> poison, <2 x i32> zeroinitializer
  %i.iv = shufflevector <2 x double> %i.il, <2 x double> %i.in, <2 x i32> <i32 1, i32 2>
  %i.iw = fsub <2 x double> %i.iu, %i.iv          ; 2 uses
  %i.ix = fmul <2 x double> %i.iw, %i.iw
  %i.iy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.it, <2 x double> %i.it, <2 x double> %i.ix)
  %i.iz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iq, <2 x double> %i.iq, <2 x double> %i.iy)
  %i.ja = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.iz)
  %i.jb = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 240), align 16, !tbaa !12
  %i.jc = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 160), align 16, !tbaa !10 ; 4 uses
  %i.jd = extractelement <2 x double> %i.jc, i64 0
  %i.je = fmul double %i.jd, 5.000000e-01
  %i.jf = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 56), align 8, !tbaa !10 ; 4 uses
  %i.jg = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 120), align 8, !tbaa !10 ; 2 uses
  %i.jh = shufflevector <2 x double> %i.fm, <2 x double> %i.ii, <2 x i32> <i32 0, i32 2>
  %i.ji = insertelement <2 x double> %i.jc, double %i.dy, i64 1
  %i.jj = fmul <2 x double> %i.jh, %i.ji
  %i.jk = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 176), align 16, !tbaa !10 ; 2 uses
  %i.jl = insertelement <2 x double> %i.jk, double %i.hm, i64 0
  %i.jm = shufflevector <2 x double> %i.jg, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.jn = insertelement <2 x double> %i.jm, double %i.jb, i64 1
  %i.jo = fsub <2 x double> %i.jl, %i.jn          ; 2 uses
  %i.jp = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 224), align 16, !tbaa !10 ; 2 uses
  %i.jq = shufflevector <2 x double> %i.jf, <2 x double> %i.jc, <2 x i32> <i32 0, i32 3>
  %i.jr = shufflevector <2 x double> %i.jp, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.js = insertelement <2 x double> %i.jr, double %i.hn, i64 0
  %i.jt = fsub <2 x double> %i.jq, %i.js          ; 2 uses
  %i.ju = shufflevector <2 x double> %i.jf, <2 x double> %i.jk, <2 x i32> <i32 1, i32 2>
  %i.jv = shufflevector <2 x double> %i.jg, <2 x double> %i.jp, <2 x i32> <i32 0, i32 3>
  %i.jw = fsub <2 x double> %i.ju, %i.jv          ; 2 uses
  %i.jx = fmul <2 x double> %i.jw, %i.jw
  %i.jy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jt, <2 x double> %i.jt, <2 x double> %i.jx)
  %i.jz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jo, <2 x double> %i.jo, <2 x double> %i.jy)
  %i.ka = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.jz)
  %i.kb = fdiv <2 x double> %i.jj, %i.ka          ; 2 uses
  %i.kc = extractelement <2 x double> %i.kb, i64 0
  %i.kd = fsub double %i.hl, %i.kc
  %i.ke = shufflevector <2 x double> %i.jf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kf = fsub <2 x double> %i.ke, %i.ib          ; 2 uses
  %i.kg = shufflevector <2 x double> %i.jf, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.kh = fsub <2 x double> %i.kg, %i.ic          ; 2 uses
  %i.ki = fmul <2 x double> %i.kh, %i.kh
  %i.kj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kf, <2 x double> %i.kf, <2 x double> %i.ki)
  %i.kk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hz, <2 x double> %i.hz, <2 x double> %i.kj)
  %i.kl = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.kk)
  %i.km = fdiv <2 x double> %i.hv, %i.kl          ; 2 uses
  %i.kn = extractelement <2 x double> %i.km, i64 0
  %i.ko = fsub double %i.kd, %i.kn
  %i.kp = extractelement <2 x double> %i.km, i64 1
  %i.kq = fsub double %i.ko, %i.kp
  %i.kr = tail call double @llvm.fmuladd.f64(double %i.je, double %i.ev, double %i.kq)
  %i.ks = shufflevector <2 x double> %i.jc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kt = fmul <2 x double> %i.ks, %i.im
  %i.ku = fdiv <2 x double> %i.kt, %i.ja          ; 2 uses
  %i.kv = extractelement <2 x double> %i.ku, i64 0
  %i.kw = fsub double %i.kr, %i.kv
  %i.kx = extractelement <2 x double> %i.ku, i64 1
  %i.ky = fsub double %i.kw, %i.kx
  %i.kz = tail call double @llvm.fmuladd.f64(double %i.ik, double %i.el, double %i.ky)
  %i.la = extractelement <2 x double> %i.kb, i64 1
  %i.lb = fsub double %i.kz, %i.la
  %i.lc = tail call double @llvm.fmuladd.f64(double %i.dz, double %i.ej, double %i.lb)
  %i.ld = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %i.lc) ; 0 uses
  ret i32 0
end_hunk_0
