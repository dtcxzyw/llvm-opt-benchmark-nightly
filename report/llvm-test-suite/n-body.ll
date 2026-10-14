Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/n-body?download=true
inline.NumInlined: 3
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 11
begin_hunk_0_@advance:bb.a
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  %i.bz = load double, ptr %i.by, align 8, !tbaa !14
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
  br i1 %exitcond51.not, label %._crit_edge, label %.lr.ph42, !llvm.loop !22

.lr.ph42:                                         ; preds = %.lr.ph42.preheader, %.loopexit
  %indvars.iv47 = phi i64 [ 0, %.lr.ph42.preheader ], [ %indvars.iv.next48, %.loopexit ] ; 2 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph42.preheader ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %.041 = phi double [ 0.000000e+00, %.lr.ph42.preheader ], [ %.1.lcssa, %.loopexit ]
  %i.c = getelementptr inbounds nuw [56 x i8], ptr %1, i64 %indvars.iv47 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load double, ptr %i.d, align 8, !tbaa !13 ; 2 uses
  %i.f = fmul double %i.e, 5.000000e-01
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.h = load double, ptr %i.g, align 8, !tbaa !15 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.j = load double, ptr %i.i, align 8, !tbaa !16 ; 2 uses
  %i.k = fmul double %i.j, %i.j
  %i.l = tail call double @llvm.fmuladd.f64(double %i.h, double %i.h, double %i.k)
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.n = load double, ptr %i.m, align 8, !tbaa !14 ; 2 uses
  %i.o = tail call double @llvm.fmuladd.f64(double %i.n, double %i.n, double %i.l)
  %i.p = tail call double @llvm.fmuladd.f64(double %i.f, double %i.o, double %.041) ; 2 uses
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1 ; 3 uses
  %i.q = icmp samesign ult i64 %indvars.iv.next48, %i.b
  br i1 %i.q, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph42
  %i.r = load double, ptr %i.c, align 8, !tbaa !17
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.t = load double, ptr %i.s, align 8, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.v = load double, ptr %i.u, align 8, !tbaa !12
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv44 = phi i64 [ %indvars.iv, %.lr.ph ], [ %indvars.iv.next45, %bb.b ] ; 2 uses
  %.139 = phi double [ %i.p, %.lr.ph ], [ %i.am, %bb.b ]
  %i.w = getelementptr inbounds nuw [56 x i8], ptr %1, i64 %indvars.iv44 ; 4 uses
  %i.x = load double, ptr %i.w, align 8, !tbaa !17
  %i.y = fsub double %i.r, %i.x                   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.aa = load double, ptr %i.z, align 8, !tbaa !18
  %i.ab = fsub double %i.t, %i.aa                 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !12
  %i.ae = fsub double %i.v, %i.ad                 ; 2 uses
  %i.af = fmul double %i.ab, %i.ab
  %i.ag = tail call double @llvm.fmuladd.f64(double %i.y, double %i.y, double %i.af)
  %i.ah = tail call double @llvm.fmuladd.f64(double %i.ae, double %i.ae, double %i.ag)
  %sqrt = tail call double @llvm.sqrt.f64(double %i.ah)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !13
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
  %i.g = load double, ptr %i.f, align 8, !tbaa !13 ; 2 uses
  %i.h = load <2 x double>, ptr %i.e, align 8, !tbaa !10
  %i.i = insertelement <2 x double> poison, double %i.g, i64 0
  %i.j = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.k = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.h, <2 x double> %i.j, <2 x double> %i.c)
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.m = load double, ptr %i.l, align 8, !tbaa !14
  %i.n = tail call double @llvm.fmuladd.f64(double %i.m, double %i.g, double %.02328)
  %i.o = getelementptr inbounds nuw [56 x i8], ptr %1, i64 %indvars.iv ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 104
  %i.r = load double, ptr %i.q, align 8, !tbaa !13 ; 2 uses
  %i.s = load <2 x double>, ptr %i.p, align 8, !tbaa !10
  %i.t = insertelement <2 x double> poison, double %i.r, i64 0
  %i.u = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> zeroinitializer
  %i.v = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.s, <2 x double> %i.u, <2 x double> %i.k) ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 96
  %i.x = load double, ptr %i.w, align 8, !tbaa !14
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
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !13 ; 2 uses
  %i.ad = load <2 x double>, ptr %i.aa, align 8, !tbaa !10
  %i.ae = insertelement <2 x double> poison, double %i.ac, i64 0
  %i.af = shufflevector <2 x double> %i.ae, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ag = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ad, <2 x double> %i.af, <2 x double> %.epil.init)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !14
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
  store double %i.an, ptr %i.ao, align 8, !tbaa !14
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #3 {
.loopexit.i.4:
  %i.a = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 96), align 16, !tbaa !14 ; 2 uses
  %i.b = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 208), align 16, !tbaa !14 ; 3 uses
  %i.c = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 24), align 8, !tbaa !10
  %i.d = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 80), align 16, !tbaa !10 ; 3 uses
  %i.e = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 136), align 8, !tbaa !10 ; 3 uses
  %i.f = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 192), align 16, !tbaa !10 ; 3 uses
  %i.g = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 248), align 8, !tbaa !10 ; 3 uses
  %i.h = extractelement <2 x double> %i.g, i64 0  ; 2 uses
  %i.i = shufflevector <2 x double> %i.g, <2 x double> %i.f, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.j = fmul <2 x double> %i.i, %i.i             ; 2 uses
  %i.k = extractelement <2 x double> %i.j, i64 0
  %i.l = tail call double @llvm.fmuladd.f64(double %i.h, double %i.h, double %i.k)
  %i.m = extractelement <2 x double> %i.f, i64 0  ; 2 uses
  %i.n = extractelement <2 x double> %i.j, i64 1
  %i.o = tail call double @llvm.fmuladd.f64(double %i.m, double %i.m, double %i.n)
  %i.p = tail call double @llvm.fmuladd.f64(double %i.b, double %i.b, double %i.o)
  %i.q = extractelement <2 x double> %i.e, i64 0  ; 2 uses
  %i.r = shufflevector <2 x double> %i.e, <2 x double> %i.d, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.s = fmul <2 x double> %i.r, %i.r             ; 2 uses
  %i.t = extractelement <2 x double> %i.s, i64 0
  %i.u = tail call double @llvm.fmuladd.f64(double %i.q, double %i.q, double %i.t)
  %i.v = extractelement <2 x double> %i.d, i64 0  ; 2 uses
  %2 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 16), align 16
  %i.w = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 72), align 8, !tbaa !12
  %3 = load <2 x double>, ptr @bodies, align 16
  %4 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 8), align 8
  %i.x = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 104), align 8, !tbaa !10 ; 4 uses
  %i.y = extractelement <2 x double> %i.x, i64 0  ; 3 uses
  %i.z = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aa = fmul double %i.y, 5.000000e-01
  %i.ab = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 56), align 8, !tbaa !10 ; 2 uses
  %i.ac = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 120), align 8, !tbaa !10 ; 2 uses
  %i.ad = shufflevector <2 x double> %2, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ae = insertelement <2 x double> %i.ac, double %i.w, i64 0
  %i.af = fsub <2 x double> %i.ad, %i.ae          ; 2 uses
  %i.ag = shufflevector <2 x double> %3, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ah = shufflevector <2 x double> %i.ab, <2 x double> %i.x, <2 x i32> <i32 0, i32 3>
  %i.ai = fsub <2 x double> %i.ag, %i.ah          ; 2 uses
  %i.aj = shufflevector <2 x double> %4, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ak = shufflevector <2 x double> %i.ab, <2 x double> %i.ac, <2 x i32> <i32 1, i32 2>
  %i.al = fsub <2 x double> %i.aj, %i.ak          ; 2 uses
  %i.am = fmul <2 x double> %i.al, %i.al
  %i.an = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ai, <2 x double> %i.ai, <2 x double> %i.am)
  %i.ao = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.af, <2 x double> %i.af, <2 x double> %i.an)
  %i.ap = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.ao)
  %i.aq = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 184), align 8
  %i.ar = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 240), align 16, !tbaa !12
  %5 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 72), align 8 ; 2 uses
  %i.as = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 128), align 16
  %i.at = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 56), align 8, !tbaa !17 ; 2 uses
  %i.au = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 112), align 16, !tbaa !17
  %i.av = fsub double %i.at, %i.au
  %i.aw = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 64), align 16, !tbaa !18 ; 2 uses
  %i.ax = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 120), align 8, !tbaa !18
  %i.ay = fsub double %i.aw, %i.ax                ; 2 uses
  %i.az = extractelement <2 x double> %i.s, i64 1
  %i.ba = tail call double @llvm.fmuladd.f64(double %i.v, double %i.v, double %i.az)
  %i.bb = fmul double %i.ay, %i.ay
  %i.bc = insertelement <2 x double> poison, double %i.a, i64 0
  %i.bd = insertelement <2 x double> %i.bc, double %i.av, i64 1 ; 2 uses
  %i.be = insertelement <2 x double> poison, double %i.ba, i64 0
  %i.bf = insertelement <2 x double> %i.be, double %i.bb, i64 1
  %i.bg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bd, <2 x double> %i.bd, <2 x double> %i.bf) ; 2 uses
  %i.bh = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 184), align 8
  %i.bi = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 240), align 16, !tbaa !12
  %6 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 128), align 16
  %i.bj = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 184), align 8, !tbaa !12
  %7 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 112), align 16
  %8 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 120), align 8
  %i.bk = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 216), align 8, !tbaa !10 ; 4 uses
  %i.bl = extractelement <2 x double> %i.bk, i64 0 ; 3 uses
  %i.bm = shufflevector <2 x double> %i.bk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bn = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 48), align 16, !tbaa !13 ; 3 uses
  %i.bo = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 40), align 8, !tbaa !14
  %i.bp = tail call double @llvm.fmuladd.f64(double %i.bo, double %i.bn, double 0.000000e+00)
  %i.bq = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 160), align 16, !tbaa !13 ; 5 uses
  %i.br = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 152), align 8, !tbaa !14 ; 3 uses
  %i.bs = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 272), align 16, !tbaa !13 ; 5 uses
  %i.bt = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 264), align 8, !tbaa !14 ; 3 uses
  %i.bu = insertelement <2 x double> poison, double %i.bn, i64 0
  %i.bv = shufflevector <2 x double> %i.bu, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.c, <2 x double> %i.bv, <2 x double> zeroinitializer)
  %i.bx = insertelement <2 x double> poison, double %i.bq, i64 0
  %i.by = shufflevector <2 x double> %i.bx, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bz = insertelement <2 x double> poison, double %i.bs, i64 0
  %i.ca = shufflevector <2 x double> %i.bz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cb = fmul double %i.bs, 5.000000e-01
  %i.cc = tail call double @llvm.fmuladd.f64(double %i.bt, double %i.bt, double %i.l)
  %i.cd = fmul double %i.bq, 5.000000e-01
  %i.ce = tail call double @llvm.fmuladd.f64(double %i.br, double %i.br, double %i.u)
  %i.cf = fmul double %i.bn, 5.000000e-01
  %i.cg = tail call double @llvm.fmuladd.f64(double %i.a, double %i.y, double %i.bp)
  %i.ch = tail call double @llvm.fmuladd.f64(double %i.br, double %i.bq, double %i.cg)
  %i.ci = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.d, <2 x double> %i.z, <2 x double> %i.bw)
  %i.cj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.e, <2 x double> %i.by, <2 x double> %i.ci)
  %i.ck = insertelement <2 x double> %i.x, double %i.bq, i64 1
  %i.cl = fmul <2 x double> %i.bv, %i.ck
  %i.cm = fdiv <2 x double> %i.cl, %i.ap          ; 2 uses
  %i.cn = fmul double %i.y, %i.bq
  %i.co = tail call double @llvm.fmuladd.f64(double %i.b, double %i.bl, double %i.ch)
  %i.cp = tail call double @llvm.fmuladd.f64(double %i.bt, double %i.bs, double %i.co)
  %i.cq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.f, <2 x double> %i.bm, <2 x double> %i.cj)
  %i.cr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.g, <2 x double> %i.ca, <2 x double> %i.cq)
  %i.cs = fdiv <2 x double> %i.cr, splat (double f0xC043BD3CC9BE45DE) ; 4 uses
  store <2 x double> %i.cs, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 24), align 8, !tbaa !10
  %i.ct = insertelement <2 x double> poison, double %i.cn, i64 0
  %i.cu = insertelement <2 x double> %i.ct, double %i.cp, i64 1
  %i.cv = fmul double %i.bl, 5.000000e-01
  %foldExtExtBinop = fmul <2 x double> %i.cs, %i.cs
  %i.cw = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.cx = extractelement <2 x double> %i.cs, i64 0 ; 2 uses
  %i.cy = tail call double @llvm.fmuladd.f64(double %i.cx, double %i.cx, double %i.cw)
  %i.cz = extractelement <2 x double> %i.cm, i64 0
  %i.da = extractelement <2 x double> %i.cm, i64 1
  %i.db = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 168), align 8, !tbaa !10 ; 2 uses
  %i.dc = insertelement <2 x double> %i.aq, double %i.ar, i64 1
  %i.dd = fsub <2 x double> %i.ad, %i.dc          ; 2 uses
  %i.de = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 224), align 16, !tbaa !10 ; 2 uses
  %i.df = shufflevector <2 x double> %i.db, <2 x double> %i.de, <2 x i32> <i32 0, i32 2>
  %i.dg = fsub <2 x double> %i.ag, %i.df          ; 2 uses
  %i.dh = shufflevector <2 x double> %i.db, <2 x double> %i.de, <2 x i32> <i32 1, i32 3>
  %i.di = fsub <2 x double> %i.aj, %i.dh          ; 2 uses
  %i.dj = fmul <2 x double> %i.di, %i.di
  %i.dk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dg, <2 x double> %i.dg, <2 x double> %i.dj)
  %i.dl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dd, <2 x double> %i.dd, <2 x double> %i.dk)
  %i.dm = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.dl)
  %i.dn = insertelement <2 x double> %i.bk, double %i.bs, i64 1 ; 3 uses
  %i.do = fmul <2 x double> %i.bv, %i.dn
  %i.dp = fdiv <2 x double> %i.do, %i.dm          ; 2 uses
  %i.dq = extractelement <2 x double> %i.dp, i64 0
  %i.dr = extractelement <2 x double> %i.dp, i64 1
  %i.ds = extractelement <2 x double> %i.bg, i64 0
  %i.dt = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 168), align 8, !tbaa !10 ; 2 uses
  %i.du = shufflevector <2 x double> %5, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dv = insertelement <2 x double> %i.bh, double %i.bi, i64 1
  %i.dw = fsub <2 x double> %i.du, %i.dv          ; 2 uses
  %i.dx = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 224), align 16, !tbaa !10 ; 2 uses
  %i.dy = insertelement <2 x double> poison, double %i.at, i64 0
  %i.dz = shufflevector <2 x double> %i.dy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ea = shufflevector <2 x double> %i.dt, <2 x double> %i.dx, <2 x i32> <i32 0, i32 2>
  %i.eb = fsub <2 x double> %i.dz, %i.ea          ; 2 uses
  %i.ec = insertelement <2 x double> poison, double %i.aw, i64 0
  %i.ed = shufflevector <2 x double> %i.ec, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ee = shufflevector <2 x double> %i.dt, <2 x double> %i.dx, <2 x i32> <i32 1, i32 3>
  %i.ef = fsub <2 x double> %i.ed, %i.ee          ; 2 uses
  %i.eg = fmul <2 x double> %i.ef, %i.ef
  %i.eh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eb, <2 x double> %i.eb, <2 x double> %i.eg)
  %i.ei = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dw, <2 x double> %i.dw, <2 x double> %i.eh)
  %i.ej = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.ei)
  %i.ek = fmul <2 x double> %i.z, %i.dn
  %i.el = fdiv <2 x double> %i.ek, %i.ej          ; 2 uses
  %i.em = extractelement <2 x double> %i.el, i64 0
  %i.en = extractelement <2 x double> %i.el, i64 1
  %i.eo = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 168), align 8, !tbaa !10 ; 2 uses
  %i.ep = fmul <2 x double> %i.by, %i.dn
  %i.eq = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 232), align 8, !tbaa !10 ; 2 uses
  %i.er = shufflevector <2 x double> %6, <2 x double> poison, <2 x i32> zeroinitializer
  %i.es = insertelement <2 x double> %i.eq, double %i.bj, i64 0
  %i.et = fsub <2 x double> %i.er, %i.es          ; 2 uses
  %i.eu = shufflevector <2 x double> %7, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ev = shufflevector <2 x double> %i.eo, <2 x double> %i.bk, <2 x i32> <i32 0, i32 3>
  %i.ew = fsub <2 x double> %i.eu, %i.ev          ; 2 uses
  %i.ex = shufflevector <2 x double> %8, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ey = shufflevector <2 x double> %i.eo, <2 x double> %i.eq, <2 x i32> <i32 1, i32 2>
  %i.ez = fsub <2 x double> %i.ex, %i.ey          ; 2 uses
  %i.fa = fmul <2 x double> %i.ez, %i.ez
  %i.fb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ew, <2 x double> %i.ew, <2 x double> %i.fa)
  %i.fc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.et, <2 x double> %i.et, <2 x double> %i.fb)
  %i.fd = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.fc)
  %i.fe = fdiv <2 x double> %i.ep, %i.fd          ; 2 uses
  %i.ff = extractelement <2 x double> %i.fe, i64 0
  %i.fg = extractelement <2 x double> %i.fe, i64 1
  %i.fh = fmul double %i.bl, %i.bs
  %i.fi = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 184), align 8, !tbaa !12
  %i.fj = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 240), align 16, !tbaa !12
  %i.fk = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 168), align 8, !tbaa !17
  %i.fl = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 224), align 16, !tbaa !17
  %i.fm = fsub double %i.fk, %i.fl                ; 2 uses
  %i.fn = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 176), align 16, !tbaa !18
  %i.fo = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 232), align 8, !tbaa !18
  %i.fp = fsub double %i.fn, %i.fo                ; 2 uses
  %i.fq = fmul double %i.fp, %i.fp
  %i.fr = insertelement <2 x double> %5, double %i.fi, i64 1
  %i.fs = insertelement <2 x double> %i.as, double %i.fj, i64 1
  %i.ft = fsub <2 x double> %i.fr, %i.fs          ; 2 uses
  %i.fu = tail call double @llvm.fmuladd.f64(double %i.fm, double %i.fm, double %i.fq)
  %i.fv = shufflevector <2 x double> %i.bg, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.fw = insertelement <2 x double> %i.fv, double %i.fu, i64 1
  %i.fx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ft, <2 x double> %i.ft, <2 x double> %i.fw)
  %i.fy = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.fx) ; 2 uses
  %i.fz = insertelement <2 x double> %i.fy, double f0xC043BD3CC9BE45DE, i64 1
  %i.ga = fdiv <2 x double> %i.cu, %i.fz          ; 2 uses
  %i.gb = extractelement <2 x double> %i.ga, i64 1 ; 3 uses
  store double %i.gb, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 40), align 8, !tbaa !14
  %i.gc = tail call double @llvm.fmuladd.f64(double %i.gb, double %i.gb, double %i.cy)
  %i.gd = tail call double @llvm.fmuladd.f64(double %i.cf, double %i.gc, double 0.000000e+00)
  %i.ge = fsub double %i.gd, %i.cz
  %i.gf = fsub double %i.ge, %i.da
  %i.gg = fsub double %i.gf, %i.dq
  %i.gh = fsub double %i.gg, %i.dr
  %i.gi = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.ds, double %i.gh)
  %i.gj = extractelement <2 x double> %i.ga, i64 0
  %i.gk = fsub double %i.gi, %i.gj
  %i.gl = fsub double %i.gk, %i.em
  %i.gm = fsub double %i.gl, %i.en
  %i.gn = tail call double @llvm.fmuladd.f64(double %i.cd, double %i.ce, double %i.gm)
  %i.go = fsub double %i.gn, %i.ff
  %i.gp = fsub double %i.go, %i.fg
  %i.gq = tail call double @llvm.fmuladd.f64(double %i.cv, double %i.p, double %i.gp)
  %i.gr = extractelement <2 x double> %i.fy, i64 1
  %i.gs = fdiv double %i.fh, %i.gr
  %i.gt = fsub double %i.gq, %i.gs
  %i.gu = tail call double @llvm.fmuladd.f64(double %i.cb, double %i.cc, double %i.gt)
  %i.gv = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %i.gu) ; 0 uses
  br label %bb.a

bb.a:                                             ; preds = %.loopexit.i.4, %bb.a
  %.027 = phi i32 [ 1, %.loopexit.i.4 ], [ %i.gw, %bb.a ]
  tail call void @advance(i32 noundef 5, ptr noundef nonnull @bodies, double noundef 1.000000e-02)
  %i.gw = add nuw nsw i32 %.027, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.gw, 5000001
  br i1 %exitcond.not, label %.loopexit.i12.4, label %bb.a, !llvm.loop !25

.loopexit.i12.4:                                  ; preds = %bb.a
  %i.gx = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 272), align 16, !tbaa !13 ; 2 uses
  %i.gy = fmul double %i.gx, 5.000000e-01
  %i.gz = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 264), align 8
  %i.ha = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 208), align 16, !tbaa !14
  %i.hb = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 248), align 8, !tbaa !10 ; 2 uses
  %i.hc = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 192), align 16, !tbaa !10 ; 2 uses
  %i.hd = shufflevector <2 x double> %i.hb, <2 x double> %i.hc, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.he = fmul <2 x double> %i.hd, %i.hd
  %i.hf = shufflevector <2 x double> %i.hb, <2 x double> %i.hc, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.hg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hf, <2 x double> %i.hf, <2 x double> %i.he)
  %i.hh = insertelement <2 x double> %i.gz, double %i.ha, i64 1 ; 2 uses
  %i.hi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hh, <2 x double> %i.hh, <2 x double> %i.hg) ; 2 uses
  %i.hj = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 152), align 8
  %i.hk = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 96), align 16, !tbaa !14
  %i.hl = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 136), align 8, !tbaa !10 ; 2 uses
  %i.hm = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 80), align 16, !tbaa !10 ; 2 uses
  %i.hn = shufflevector <2 x double> %i.hl, <2 x double> %i.hm, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ho = fmul <2 x double> %i.hn, %i.hn
  %i.hp = shufflevector <2 x double> %i.hl, <2 x double> %i.hm, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.hq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hp, <2 x double> %i.hp, <2 x double> %i.ho)
  %i.hr = insertelement <2 x double> %i.hj, double %i.hk, i64 1 ; 2 uses
  %i.hs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hr, <2 x double> %i.hr, <2 x double> %i.hq) ; 2 uses
  %i.ht = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 48), align 16, !tbaa !13 ; 3 uses
  %i.hu = fmul double %i.ht, 5.000000e-01
  %i.hv = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 40), align 8, !tbaa !14 ; 2 uses
  %i.hw = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 24), align 8, !tbaa !15 ; 2 uses
  %i.hx = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 32), align 16, !tbaa !16 ; 2 uses
  %i.hy = fmul double %i.hx, %i.hx
  %i.hz = tail call double @llvm.fmuladd.f64(double %i.hw, double %i.hw, double %i.hy)
  %i.ia = tail call double @llvm.fmuladd.f64(double %i.hv, double %i.hv, double %i.hz)
  %i.ib = tail call double @llvm.fmuladd.f64(double %i.hu, double %i.ia, double 0.000000e+00)
  %i.ic = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 72), align 8, !tbaa !12
  %i.id = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 160), align 16, !tbaa !13
  %i.ie = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 216), align 8
  %i.if = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 184), align 8
  %i.ig = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 272), align 16, !tbaa !13
  %i.ih = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 240), align 16, !tbaa !12
  %9 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 16), align 16
  %10 = load <2 x double>, ptr @bodies, align 16
  %11 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 8), align 8
  %i.ii = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 104), align 8, !tbaa !10 ; 6 uses
  %i.ij = extractelement <2 x double> %i.ii, i64 0
  %i.ik = fmul double %i.ij, 5.000000e-01
  %i.il = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 56), align 8, !tbaa !10 ; 2 uses
  %i.im = insertelement <2 x double> poison, double %i.ht, i64 0 ; 2 uses
  %i.in = shufflevector <2 x double> %i.im, <2 x double> poison, <2 x i32> zeroinitializer
  %i.io = insertelement <2 x double> %i.ii, double %i.id, i64 1
  %i.ip = fmul <2 x double> %i.in, %i.io
  %i.iq = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 120), align 8, !tbaa !10 ; 2 uses
  %i.ir = shufflevector <2 x double> %9, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.is = insertelement <2 x double> %i.iq, double %i.ic, i64 0
  %i.it = fsub <2 x double> %i.ir, %i.is          ; 2 uses
  %i.iu = shufflevector <2 x double> %10, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.iv = shufflevector <2 x double> %i.il, <2 x double> %i.ii, <2 x i32> <i32 0, i32 3>
  %i.iw = fsub <2 x double> %i.iu, %i.iv          ; 2 uses
  %i.ix = shufflevector <2 x double> %11, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.iy = shufflevector <2 x double> %i.il, <2 x double> %i.iq, <2 x i32> <i32 1, i32 2>
  %i.iz = fsub <2 x double> %i.ix, %i.iy          ; 2 uses
  %i.ja = fmul <2 x double> %i.iz, %i.iz
  %i.jb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iw, <2 x double> %i.iw, <2 x double> %i.ja)
  %i.jc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.it, <2 x double> %i.it, <2 x double> %i.jb)
  %i.jd = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.jc)
  %i.je = fdiv <2 x double> %i.ip, %i.jd          ; 2 uses
  %i.jf = extractelement <2 x double> %i.je, i64 0
  %i.jg = fsub double %i.ib, %i.jf
  %i.jh = extractelement <2 x double> %i.je, i64 1
  %i.ji = fsub double %i.jg, %i.jh
  %i.jj = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 168), align 8, !tbaa !10 ; 2 uses
  %i.jk = insertelement <2 x double> %i.ie, double %i.ht, i64 1
  %i.jl = insertelement <2 x double> %i.im, double %i.ig, i64 1
  %i.jm = fmul <2 x double> %i.jk, %i.jl
  %i.jn = insertelement <2 x double> %i.if, double %i.ih, i64 1
  %i.jo = fsub <2 x double> %i.ir, %i.jn          ; 2 uses
  %i.jp = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 224), align 16, !tbaa !10 ; 2 uses
  %i.jq = shufflevector <2 x double> %i.jj, <2 x double> %i.jp, <2 x i32> <i32 0, i32 2>
  %i.jr = fsub <2 x double> %i.iu, %i.jq          ; 2 uses
  %i.js = shufflevector <2 x double> %i.jj, <2 x double> %i.jp, <2 x i32> <i32 1, i32 3>
  %i.jt = fsub <2 x double> %i.ix, %i.js          ; 2 uses
  %i.ju = fmul <2 x double> %i.jt, %i.jt
  %i.jv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jr, <2 x double> %i.jr, <2 x double> %i.ju)
  %i.jw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jo, <2 x double> %i.jo, <2 x double> %i.jv)
  %i.jx = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.jw)
  %i.jy = fdiv <2 x double> %i.jm, %i.jx          ; 2 uses
  %i.jz = extractelement <2 x double> %i.jy, i64 0
  %i.ka = fsub double %i.ji, %i.jz
  %i.kb = extractelement <2 x double> %i.jy, i64 1
  %i.kc = fsub double %i.ka, %i.kb
  %i.kd = extractelement <2 x double> %i.hs, i64 1
  %i.ke = tail call double @llvm.fmuladd.f64(double %i.ik, double %i.kd, double %i.kc)
  %i.kf = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 112), align 16, !tbaa !17
  %i.kg = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 216), align 8
  %i.kh = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 184), align 8
  %i.ki = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 272), align 16, !tbaa !13
  %i.kj = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 240), align 16, !tbaa !12
  %i.kk = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 72), align 8, !tbaa !12 ; 2 uses
  %i.kl = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 168), align 8, !tbaa !10 ; 2 uses
  %i.km = shufflevector <2 x double> %i.kg, <2 x double> %i.ii, <2 x i32> <i32 0, i32 2>
  %i.kn = insertelement <2 x double> %i.ii, double %i.ki, i64 1
  %i.ko = fmul <2 x double> %i.km, %i.kn
  %i.kp = insertelement <2 x double> poison, double %i.kk, i64 0
  %i.kq = shufflevector <2 x double> %i.kp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kr = insertelement <2 x double> %i.kh, double %i.kj, i64 1
  %i.ks = fsub <2 x double> %i.kq, %i.kr          ; 2 uses
  %i.kt = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 224), align 16, !tbaa !10 ; 2 uses
  %i.ku = shufflevector <2 x double> %i.kl, <2 x double> %i.kt, <2 x i32> <i32 0, i32 2>
  %i.kv = shufflevector <2 x double> %i.kl, <2 x double> %i.kt, <2 x i32> <i32 1, i32 3>
  %12 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 128), align 16
  %i.kw = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 184), align 8, !tbaa !12
  %13 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 112), align 16
  %14 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 120), align 8
  %i.kx = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 272), align 16, !tbaa !13
  %i.ky = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 216), align 8, !tbaa !10 ; 4 uses
  %i.kz = extractelement <2 x double> %i.ky, i64 0
  %i.la = fmul double %i.kz, 5.000000e-01
  %i.lb = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 168), align 8, !tbaa !10 ; 2 uses
  %i.lc = insertelement <2 x double> %i.ky, double %i.kx, i64 1
  %i.ld = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 232), align 8, !tbaa !10 ; 2 uses
  %i.le = shufflevector <2 x double> %12, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lf = insertelement <2 x double> %i.ld, double %i.kw, i64 0
  %i.lg = fsub <2 x double> %i.le, %i.lf          ; 2 uses
  %i.lh = shufflevector <2 x double> %13, <2 x double> poison, <2 x i32> zeroinitializer
  %i.li = shufflevector <2 x double> %i.lb, <2 x double> %i.ky, <2 x i32> <i32 0, i32 3>
  %i.lj = fsub <2 x double> %i.lh, %i.li          ; 2 uses
  %i.lk = shufflevector <2 x double> %14, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ll = shufflevector <2 x double> %i.lb, <2 x double> %i.ld, <2 x i32> <i32 1, i32 2>
  %i.lm = fsub <2 x double> %i.lk, %i.ll          ; 2 uses
  %i.ln = fmul <2 x double> %i.lm, %i.lm
  %i.lo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lj, <2 x double> %i.lj, <2 x double> %i.ln)
  %i.lp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lg, <2 x double> %i.lg, <2 x double> %i.lo)
  %i.lq = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.lp)
  %i.lr = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 240), align 16, !tbaa !12
  %i.ls = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 160), align 16, !tbaa !10 ; 4 uses
  %i.lt = extractelement <2 x double> %i.ls, i64 0
  %i.lu = fmul double %i.lt, 5.000000e-01
  %i.lv = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 120), align 8, !tbaa !10 ; 2 uses
  %i.lw = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 56), align 8, !tbaa !10 ; 4 uses
  %i.lx = shufflevector <2 x double> %i.ii, <2 x double> %i.ky, <2 x i32> <i32 0, i32 2>
  %i.ly = insertelement <2 x double> %i.ls, double %i.gx, i64 1
  %i.lz = fmul <2 x double> %i.lx, %i.ly
  %i.ma = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 176), align 16, !tbaa !10 ; 2 uses
  %i.mb = insertelement <2 x double> %i.ma, double %i.kk, i64 0
  %i.mc = shufflevector <2 x double> %i.lv, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.md = insertelement <2 x double> %i.mc, double %i.lr, i64 1
  %i.me = fsub <2 x double> %i.mb, %i.md          ; 2 uses
  %i.mf = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 224), align 16, !tbaa !10 ; 2 uses
  %i.mg = shufflevector <2 x double> %i.lw, <2 x double> %i.ls, <2 x i32> <i32 0, i32 3>
  %i.mh = shufflevector <2 x double> %i.mf, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.mi = insertelement <2 x double> %i.mh, double %i.kf, i64 0
  %i.mj = fsub <2 x double> %i.mg, %i.mi          ; 2 uses
  %i.mk = shufflevector <2 x double> %i.lw, <2 x double> %i.ma, <2 x i32> <i32 1, i32 2>
  %i.ml = shufflevector <2 x double> %i.lv, <2 x double> %i.mf, <2 x i32> <i32 0, i32 3>
  %i.mm = fsub <2 x double> %i.mk, %i.ml          ; 2 uses
  %i.mn = fmul <2 x double> %i.mm, %i.mm
  %i.mo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mj, <2 x double> %i.mj, <2 x double> %i.mn)
  %i.mp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.me, <2 x double> %i.me, <2 x double> %i.mo)
  %i.mq = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.mp)
  %i.mr = fdiv <2 x double> %i.lz, %i.mq          ; 2 uses
  %i.ms = extractelement <2 x double> %i.mr, i64 0
  %i.mt = fsub double %i.ke, %i.ms
  %i.mu = shufflevector <2 x double> %i.lw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mv = fsub <2 x double> %i.mu, %i.ku          ; 2 uses
  %i.mw = shufflevector <2 x double> %i.lw, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.mx = fsub <2 x double> %i.mw, %i.kv          ; 2 uses
  %i.my = fmul <2 x double> %i.mx, %i.mx
  %i.mz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mv, <2 x double> %i.mv, <2 x double> %i.my)
  %i.na = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ks, <2 x double> %i.ks, <2 x double> %i.mz)
  %i.nb = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.na)
  %i.nc = fdiv <2 x double> %i.ko, %i.nb          ; 2 uses
  %i.nd = extractelement <2 x double> %i.nc, i64 0
  %i.ne = fsub double %i.mt, %i.nd
  %i.nf = extractelement <2 x double> %i.nc, i64 1
  %i.ng = fsub double %i.ne, %i.nf
  %i.nh = extractelement <2 x double> %i.hs, i64 0
  %i.ni = tail call double @llvm.fmuladd.f64(double %i.lu, double %i.nh, double %i.ng)
  %i.nj = shufflevector <2 x double> %i.ls, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nk = fmul <2 x double> %i.nj, %i.lc
  %i.nl = fdiv <2 x double> %i.nk, %i.lq          ; 2 uses
  %i.nm = extractelement <2 x double> %i.nl, i64 0
  %i.nn = fsub double %i.ni, %i.nm
  %i.no = extractelement <2 x double> %i.nl, i64 1
  %i.np = fsub double %i.nn, %i.no
  %i.nq = extractelement <2 x double> %i.hi, i64 1
  %i.nr = tail call double @llvm.fmuladd.f64(double %i.la, double %i.nq, double %i.np)
  %i.ns = extractelement <2 x double> %i.mr, i64 1
  %i.nt = fsub double %i.nr, %i.ns
  %i.nu = extractelement <2 x double> %i.hi, i64 0
  %i.nv = tail call double @llvm.fmuladd.f64(double %i.gy, double %i.nu, double %i.nt)
  %i.nw = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %i.nv) ; 0 uses
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.sqrt.v2f64(<2 x double>) #1

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{!"double", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"planet", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48}
!12 = !{!11, !9, i64 16}
!13 = !{!11, !9, i64 48}
!14 = !{!11, !9, i64 40}
!15 = !{!11, !9, i64 24}
!16 = !{!11, !9, i64 32}
!17 = !{!11, !9, i64 0}
!18 = !{!11, !9, i64 8}
!19 = distinct !{!19, !8}
!20 = distinct !{!20, !8}
!21 = distinct !{!21, !8}
!22 = distinct !{!22, !8}
!23 = distinct !{!23, !8}
!24 = distinct !{!24, !8}
!25 = distinct !{!25, !8}
end_hunk_0
