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
  %2 = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 96), align 16, !tbaa !15 ; 2 uses
  %3 = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 160), align 16, !tbaa !14 ; 5 uses
  %i.a = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 152), align 8, !tbaa !15 ; 3 uses
  %i.b = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 208), align 16, !tbaa !15 ; 3 uses
  %i.c = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 24), align 8, !tbaa !10
  %i.d = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 80), align 16, !tbaa !10 ; 4 uses
  %i.e = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 136), align 8, !tbaa !10 ; 4 uses
  %i.f = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 192), align 16, !tbaa !10 ; 4 uses
  %i.g = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 248), align 8, !tbaa !10 ; 4 uses
  %foldExtExtBinop = fmul <2 x double> %i.g, %i.g
  %i.h = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.i = extractelement <2 x double> %i.g, i64 0  ; 2 uses
  %i.j = tail call double @llvm.fmuladd.f64(double %i.i, double %i.i, double %i.h)
  %foldExtExtBinop42 = fmul <2 x double> %i.f, %i.f
  %i.k = extractelement <2 x double> %foldExtExtBinop42, i64 1
  %i.l = extractelement <2 x double> %i.f, i64 0  ; 2 uses
  %i.m = tail call double @llvm.fmuladd.f64(double %i.l, double %i.l, double %i.k)
  %i.n = tail call double @llvm.fmuladd.f64(double %i.b, double %i.b, double %i.m)
  %foldExtExtBinop44 = fmul <2 x double> %i.e, %i.e
  %i.o = extractelement <2 x double> %foldExtExtBinop44, i64 1
  %i.p = extractelement <2 x double> %i.e, i64 0  ; 2 uses
  %i.q = tail call double @llvm.fmuladd.f64(double %i.p, double %i.p, double %i.o)
  %foldExtExtBinop46 = fmul <2 x double> %i.d, %i.d
  %i.r = extractelement <2 x double> %foldExtExtBinop46, i64 1
  %i.s = extractelement <2 x double> %i.d, i64 0  ; 2 uses
  %i.t = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 16), align 16
  %i.u = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 72), align 8, !tbaa !12
  %i.v = load <2 x double>, ptr @bodies, align 16
  %i.w = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 8), align 8
  %i.x = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 104), align 8, !tbaa !10 ; 4 uses
  %i.y = extractelement <2 x double> %i.x, i64 0  ; 3 uses
  %i.z = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aa = fmul double %i.y, 5.000000e-01
  %i.ab = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 56), align 8, !tbaa !10 ; 2 uses
  %i.ac = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 120), align 8, !tbaa !10 ; 2 uses
  %i.ad = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ae = insertelement <2 x double> %i.ac, double %i.u, i64 0
  %i.af = fsub <2 x double> %i.ad, %i.ae          ; 2 uses
  %i.ag = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ah = shufflevector <2 x double> %i.ab, <2 x double> %i.x, <2 x i32> <i32 0, i32 3>
  %i.ai = fsub <2 x double> %i.ag, %i.ah          ; 2 uses
  %i.aj = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ak = shufflevector <2 x double> %i.ab, <2 x double> %i.ac, <2 x i32> <i32 1, i32 2>
  %i.al = fsub <2 x double> %i.aj, %i.ak          ; 2 uses
  %i.am = fmul <2 x double> %i.al, %i.al
  %i.an = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ai, <2 x double> %i.ai, <2 x double> %i.am)
  %i.ao = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.af, <2 x double> %i.af, <2 x double> %i.an)
  %i.ap = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.ao)
  %i.aq = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 184), align 8
  %i.ar = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 240), align 16, !tbaa !12
  %4 = fmul double %i.y, %3
  %i.as = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 72), align 8 ; 2 uses
  %i.at = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 128), align 16
  %i.au = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 56), align 8, !tbaa !21 ; 2 uses
  %i.av = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 112), align 16, !tbaa !21
  %i.aw = fsub double %i.au, %i.av
  %i.ax = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 64), align 16, !tbaa !22 ; 2 uses
  %i.ay = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 120), align 8, !tbaa !22
  %i.az = fsub double %i.ax, %i.ay                ; 2 uses
  %i.ba = fmul double %i.az, %i.az
  %5 = tail call double @llvm.fmuladd.f64(double %i.s, double %i.s, double %i.r)
  %i.bb = insertelement <2 x double> poison, double %2, i64 0
  %i.bc = insertelement <2 x double> %i.bb, double %i.aw, i64 1 ; 2 uses
  %i.bd = insertelement <2 x double> poison, double %5, i64 0
  %i.be = insertelement <2 x double> %i.bd, double %i.ba, i64 1
  %i.bf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bc, <2 x double> %i.bc, <2 x double> %i.be) ; 2 uses
  %i.bg = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 184), align 8
  %i.bh = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 240), align 16, !tbaa !12
  %i.bi = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 128), align 16
  %i.bj = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 184), align 8, !tbaa !12
  %i.bk = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 112), align 16
  %i.bl = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 120), align 8
  %i.bm = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 216), align 8, !tbaa !10 ; 4 uses
  %i.bn = extractelement <2 x double> %i.bm, i64 0 ; 3 uses
  %i.bo = shufflevector <2 x double> %i.bm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bp = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 48), align 16, !tbaa !14 ; 3 uses
  %i.bq = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 40), align 8, !tbaa !15
  %6 = tail call double @llvm.fmuladd.f64(double %i.bq, double %i.bp, double 0.000000e+00)
  %i.br = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 272), align 16, !tbaa !14 ; 5 uses
  %i.bs = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 264), align 8, !tbaa !15 ; 3 uses
  %i.bt = insertelement <2 x double> poison, double %i.bp, i64 0
  %i.bu = shufflevector <2 x double> %i.bt, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.c, <2 x double> %i.bu, <2 x double> zeroinitializer)
  %i.bw = insertelement <2 x double> poison, double %3, i64 0
  %i.bx = shufflevector <2 x double> %i.bw, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.by = insertelement <2 x double> poison, double %i.br, i64 0
  %i.bz = shufflevector <2 x double> %i.by, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ca = fmul double %i.br, 5.000000e-01
  %i.cb = tail call double @llvm.fmuladd.f64(double %i.bs, double %i.bs, double %i.j)
  %i.cc = fmul double %3, 5.000000e-01
  %i.cd = tail call double @llvm.fmuladd.f64(double %i.a, double %i.a, double %i.q)
  %i.ce = fmul double %i.bp, 5.000000e-01
  %i.cf = tail call double @llvm.fmuladd.f64(double %2, double %i.y, double %6)
  %i.cg = tail call double @llvm.fmuladd.f64(double %i.a, double %3, double %i.cf)
  %i.ch = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.d, <2 x double> %i.z, <2 x double> %i.bv)
  %i.ci = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.e, <2 x double> %i.bx, <2 x double> %i.ch)
  %i.cj = insertelement <2 x double> %i.x, double %3, i64 1
  %i.ck = fmul <2 x double> %i.bu, %i.cj
  %i.cl = fdiv <2 x double> %i.ck, %i.ap          ; 2 uses
  %i.cm = tail call double @llvm.fmuladd.f64(double %i.b, double %i.bn, double %i.cg)
  %i.cn = tail call double @llvm.fmuladd.f64(double %i.bs, double %i.br, double %i.cm)
  %i.co = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.f, <2 x double> %i.bo, <2 x double> %i.ci)
  %i.cp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.g, <2 x double> %i.bz, <2 x double> %i.co)
  %i.cq = fdiv <2 x double> %i.cp, splat (double f0xC043BD3CC9BE45DE) ; 4 uses
  store <2 x double> %i.cq, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 24), align 8, !tbaa !10
  %i.cr = insertelement <2 x double> poison, double %4, i64 0
  %i.cs = insertelement <2 x double> %i.cr, double %i.cn, i64 1
  %i.ct = fmul double %i.bn, 5.000000e-01
  %foldExtExtBinop48 = fmul <2 x double> %i.cq, %i.cq
  %i.cu = extractelement <2 x double> %foldExtExtBinop48, i64 1
  %i.cv = extractelement <2 x double> %i.cq, i64 0 ; 2 uses
  %i.cw = tail call double @llvm.fmuladd.f64(double %i.cv, double %i.cv, double %i.cu)
  %i.cx = extractelement <2 x double> %i.cl, i64 0
  %i.cy = extractelement <2 x double> %i.cl, i64 1
  %i.cz = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 168), align 8, !tbaa !10 ; 2 uses
  %i.da = insertelement <2 x double> %i.aq, double %i.ar, i64 1
  %i.db = fsub <2 x double> %i.ad, %i.da          ; 2 uses
  %i.dc = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 224), align 16, !tbaa !10 ; 2 uses
  %i.dd = shufflevector <2 x double> %i.cz, <2 x double> %i.dc, <2 x i32> <i32 0, i32 2>
  %i.de = fsub <2 x double> %i.ag, %i.dd          ; 2 uses
  %i.df = shufflevector <2 x double> %i.cz, <2 x double> %i.dc, <2 x i32> <i32 1, i32 3>
  %i.dg = fsub <2 x double> %i.aj, %i.df          ; 2 uses
  %i.dh = fmul <2 x double> %i.dg, %i.dg
  %i.di = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.de, <2 x double> %i.de, <2 x double> %i.dh)
  %i.dj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.db, <2 x double> %i.db, <2 x double> %i.di)
  %i.dk = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.dj)
  %i.dl = insertelement <2 x double> %i.bm, double %i.br, i64 1 ; 3 uses
  %i.dm = fmul <2 x double> %i.bu, %i.dl
  %i.dn = fdiv <2 x double> %i.dm, %i.dk          ; 2 uses
  %i.do = extractelement <2 x double> %i.dn, i64 0
  %i.dp = extractelement <2 x double> %i.dn, i64 1
  %i.dq = extractelement <2 x double> %i.bf, i64 0
  %i.dr = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 168), align 8, !tbaa !10 ; 2 uses
  %i.ds = shufflevector <2 x double> %i.as, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dt = insertelement <2 x double> %i.bg, double %i.bh, i64 1
  %i.du = fsub <2 x double> %i.ds, %i.dt          ; 2 uses
  %i.dv = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 224), align 16, !tbaa !10 ; 2 uses
  %i.dw = insertelement <2 x double> poison, double %i.au, i64 0
  %i.dx = shufflevector <2 x double> %i.dw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dy = shufflevector <2 x double> %i.dr, <2 x double> %i.dv, <2 x i32> <i32 0, i32 2>
  %i.dz = fsub <2 x double> %i.dx, %i.dy          ; 2 uses
  %i.ea = insertelement <2 x double> poison, double %i.ax, i64 0
  %i.eb = shufflevector <2 x double> %i.ea, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ec = shufflevector <2 x double> %i.dr, <2 x double> %i.dv, <2 x i32> <i32 1, i32 3>
  %i.ed = fsub <2 x double> %i.eb, %i.ec          ; 2 uses
  %i.ee = fmul <2 x double> %i.ed, %i.ed
  %i.ef = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dz, <2 x double> %i.dz, <2 x double> %i.ee)
  %i.eg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.du, <2 x double> %i.du, <2 x double> %i.ef)
  %i.eh = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.eg)
  %i.ei = fmul <2 x double> %i.z, %i.dl
  %i.ej = fdiv <2 x double> %i.ei, %i.eh          ; 2 uses
  %i.ek = extractelement <2 x double> %i.ej, i64 0
  %i.el = extractelement <2 x double> %i.ej, i64 1
  %i.em = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 168), align 8, !tbaa !10 ; 2 uses
  %i.en = fmul <2 x double> %i.bx, %i.dl
  %i.eo = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 232), align 8, !tbaa !10 ; 2 uses
  %i.ep = shufflevector <2 x double> %i.bi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eq = insertelement <2 x double> %i.eo, double %i.bj, i64 0
  %i.er = fsub <2 x double> %i.ep, %i.eq          ; 2 uses
  %i.es = shufflevector <2 x double> %i.bk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.et = shufflevector <2 x double> %i.em, <2 x double> %i.bm, <2 x i32> <i32 0, i32 3>
  %i.eu = fsub <2 x double> %i.es, %i.et          ; 2 uses
  %i.ev = shufflevector <2 x double> %i.bl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ew = shufflevector <2 x double> %i.em, <2 x double> %i.eo, <2 x i32> <i32 1, i32 2>
  %i.ex = fsub <2 x double> %i.ev, %i.ew          ; 2 uses
  %i.ey = fmul <2 x double> %i.ex, %i.ex
  %i.ez = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eu, <2 x double> %i.eu, <2 x double> %i.ey)
  %i.fa = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.er, <2 x double> %i.er, <2 x double> %i.ez)
  %i.fb = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.fa)
  %i.fc = fdiv <2 x double> %i.en, %i.fb          ; 2 uses
  %i.fd = extractelement <2 x double> %i.fc, i64 0
  %i.fe = extractelement <2 x double> %i.fc, i64 1
  %i.ff = fmul double %i.bn, %i.br
  %i.fg = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 184), align 8, !tbaa !12
  %i.fh = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 240), align 16, !tbaa !12
  %i.fi = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 168), align 8, !tbaa !21
  %i.fj = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 224), align 16, !tbaa !21
  %i.fk = fsub double %i.fi, %i.fj                ; 2 uses
  %i.fl = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 176), align 16, !tbaa !22
  %i.fm = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 232), align 8, !tbaa !22
  %i.fn = fsub double %i.fl, %i.fm                ; 2 uses
  %i.fo = fmul double %i.fn, %i.fn
  %i.fp = insertelement <2 x double> %i.as, double %i.fg, i64 1
  %i.fq = insertelement <2 x double> %i.at, double %i.fh, i64 1
  %i.fr = fsub <2 x double> %i.fp, %i.fq          ; 2 uses
  %i.fs = tail call double @llvm.fmuladd.f64(double %i.fk, double %i.fk, double %i.fo)
  %i.ft = shufflevector <2 x double> %i.bf, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.fu = insertelement <2 x double> %i.ft, double %i.fs, i64 1
  %i.fv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fr, <2 x double> %i.fr, <2 x double> %i.fu)
  %i.fw = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.fv) ; 2 uses
  %i.fx = insertelement <2 x double> %i.fw, double f0xC043BD3CC9BE45DE, i64 1
  %i.fy = fdiv <2 x double> %i.cs, %i.fx          ; 2 uses
  %i.fz = extractelement <2 x double> %i.fy, i64 1 ; 3 uses
  store double %i.fz, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 40), align 8, !tbaa !15
  %i.ga = tail call double @llvm.fmuladd.f64(double %i.fz, double %i.fz, double %i.cw)
  %i.gb = tail call double @llvm.fmuladd.f64(double %i.ce, double %i.ga, double 0.000000e+00)
  %i.gc = fsub double %i.gb, %i.cx
  %i.gd = fsub double %i.gc, %i.cy
  %i.ge = fsub double %i.gd, %i.do
  %i.gf = fsub double %i.ge, %i.dp
  %i.gg = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.dq, double %i.gf)
  %i.gh = extractelement <2 x double> %i.fy, i64 0
  %i.gi = fsub double %i.gg, %i.gh
  %i.gj = fsub double %i.gi, %i.ek
  %i.gk = fsub double %i.gj, %i.el
  %i.gl = tail call double @llvm.fmuladd.f64(double %i.cc, double %i.cd, double %i.gk)
  %i.gm = fsub double %i.gl, %i.fd
  %i.gn = fsub double %i.gm, %i.fe
  %i.go = tail call double @llvm.fmuladd.f64(double %i.ct, double %i.n, double %i.gn)
  %i.gp = extractelement <2 x double> %i.fw, i64 1
  %i.gq = fdiv double %i.ff, %i.gp
  %i.gr = fsub double %i.go, %i.gq
  %i.gs = tail call double @llvm.fmuladd.f64(double %i.ca, double %i.cb, double %i.gr)
  %i.gt = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %i.gs) ; 0 uses
  br label %bb.a

bb.a:                                             ; preds = %.loopexit.i.4, %bb.a
  %.027 = phi i32 [ 1, %.loopexit.i.4 ], [ %i.gu, %bb.a ]
  tail call void @advance(i32 noundef 5, ptr noundef nonnull @bodies, double noundef 1.000000e-02)
  %i.gu = add nuw nsw i32 %.027, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.gu, 5000001
  br i1 %exitcond.not, label %.loopexit.i12.4, label %bb.a, !llvm.loop !25

.loopexit.i12.4:                                  ; preds = %bb.a
  %i.gv = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 272), align 16, !tbaa !14 ; 2 uses
  %i.gw = fmul double %i.gv, 5.000000e-01
  %i.gx = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 264), align 8, !tbaa !15 ; 2 uses
  %i.gy = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 248), align 8, !tbaa !19 ; 2 uses
  %i.gz = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 256), align 16, !tbaa !20 ; 2 uses
  %i.ha = fmul double %i.gz, %i.gz
  %i.hb = tail call double @llvm.fmuladd.f64(double %i.gy, double %i.gy, double %i.ha)
  %i.hc = tail call double @llvm.fmuladd.f64(double %i.gx, double %i.gx, double %i.hb)
  %i.hd = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 208), align 16, !tbaa !15 ; 2 uses
  %i.he = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 192), align 16, !tbaa !19 ; 2 uses
  %i.hf = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 200), align 8, !tbaa !20 ; 2 uses
  %i.hg = fmul double %i.hf, %i.hf
  %i.hh = tail call double @llvm.fmuladd.f64(double %i.he, double %i.he, double %i.hg)
  %i.hi = tail call double @llvm.fmuladd.f64(double %i.hd, double %i.hd, double %i.hh)
  %i.hj = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 152), align 8, !tbaa !15 ; 2 uses
  %i.hk = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 136), align 8, !tbaa !19 ; 2 uses
  %i.hl = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 144), align 16, !tbaa !20 ; 2 uses
  %i.hm = fmul double %i.hl, %i.hl
  %i.hn = tail call double @llvm.fmuladd.f64(double %i.hk, double %i.hk, double %i.hm)
  %i.ho = tail call double @llvm.fmuladd.f64(double %i.hj, double %i.hj, double %i.hn)
  %i.hp = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 96), align 16, !tbaa !15 ; 2 uses
  %i.hq = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 80), align 16, !tbaa !19 ; 2 uses
  %i.hr = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 88), align 8, !tbaa !20 ; 2 uses
  %i.hs = fmul double %i.hr, %i.hr
  %i.ht = tail call double @llvm.fmuladd.f64(double %i.hq, double %i.hq, double %i.hs)
  %i.hu = tail call double @llvm.fmuladd.f64(double %i.hp, double %i.hp, double %i.ht)
  %i.hv = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 48), align 16, !tbaa !14 ; 3 uses
  %i.hw = fmul double %i.hv, 5.000000e-01
  %i.hx = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 40), align 8, !tbaa !15 ; 2 uses
  %i.hy = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 24), align 8, !tbaa !19 ; 2 uses
  %i.hz = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 32), align 16, !tbaa !20 ; 2 uses
  %i.ia = fmul double %i.hz, %i.hz
  %i.ib = tail call double @llvm.fmuladd.f64(double %i.hy, double %i.hy, double %i.ia)
  %i.ic = tail call double @llvm.fmuladd.f64(double %i.hx, double %i.hx, double %i.ib)
  %i.id = tail call double @llvm.fmuladd.f64(double %i.hw, double %i.ic, double 0.000000e+00)
  %i.ie = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 16), align 16
  %i.if = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 72), align 8, !tbaa !12
  %i.ig = load <2 x double>, ptr @bodies, align 16
  %i.ih = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 8), align 8
  %i.ii = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 160), align 16, !tbaa !14
  %i.ij = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 104), align 8, !tbaa !10 ; 6 uses
  %i.ik = extractelement <2 x double> %i.ij, i64 0
  %i.il = fmul double %i.ik, 5.000000e-01
  %i.im = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 56), align 8, !tbaa !10 ; 2 uses
  %i.in = insertelement <2 x double> poison, double %i.hv, i64 0 ; 2 uses
  %i.io = shufflevector <2 x double> %i.in, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ip = insertelement <2 x double> %i.ij, double %i.ii, i64 1
  %i.iq = fmul <2 x double> %i.io, %i.ip
  %i.ir = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 120), align 8, !tbaa !10 ; 2 uses
  %i.is = shufflevector <2 x double> %i.ie, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.it = insertelement <2 x double> %i.ir, double %i.if, i64 0
  %i.iu = fsub <2 x double> %i.is, %i.it          ; 2 uses
  %i.iv = shufflevector <2 x double> %i.ig, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.iw = shufflevector <2 x double> %i.im, <2 x double> %i.ij, <2 x i32> <i32 0, i32 3>
  %i.ix = fsub <2 x double> %i.iv, %i.iw          ; 2 uses
  %i.iy = shufflevector <2 x double> %i.ih, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.iz = shufflevector <2 x double> %i.im, <2 x double> %i.ir, <2 x i32> <i32 1, i32 2>
  %i.ja = fsub <2 x double> %i.iy, %i.iz          ; 2 uses
  %i.jb = fmul <2 x double> %i.ja, %i.ja
  %i.jc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ix, <2 x double> %i.ix, <2 x double> %i.jb)
  %i.jd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iu, <2 x double> %i.iu, <2 x double> %i.jc)
  %i.je = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.jd)
  %i.jf = fdiv <2 x double> %i.iq, %i.je          ; 2 uses
  %i.jg = extractelement <2 x double> %i.jf, i64 0
  %i.jh = fsub double %i.id, %i.jg
  %i.ji = extractelement <2 x double> %i.jf, i64 1
  %i.jj = fsub double %i.jh, %i.ji
  %i.jk = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 216), align 8
  %i.jl = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 184), align 8
  %i.jm = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 272), align 16, !tbaa !14
  %i.jn = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 240), align 16, !tbaa !12
  %i.jo = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 168), align 8, !tbaa !10 ; 2 uses
  %i.jp = insertelement <2 x double> %i.jk, double %i.hv, i64 1
  %i.jq = insertelement <2 x double> %i.in, double %i.jm, i64 1
  %i.jr = fmul <2 x double> %i.jp, %i.jq
  %i.js = insertelement <2 x double> %i.jl, double %i.jn, i64 1
  %i.jt = fsub <2 x double> %i.is, %i.js          ; 2 uses
  %i.ju = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 224), align 16, !tbaa !10 ; 2 uses
  %i.jv = shufflevector <2 x double> %i.jo, <2 x double> %i.ju, <2 x i32> <i32 0, i32 2>
  %i.jw = fsub <2 x double> %i.iv, %i.jv          ; 2 uses
  %i.jx = shufflevector <2 x double> %i.jo, <2 x double> %i.ju, <2 x i32> <i32 1, i32 3>
  %i.jy = fsub <2 x double> %i.iy, %i.jx          ; 2 uses
  %i.jz = fmul <2 x double> %i.jy, %i.jy
  %i.ka = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jw, <2 x double> %i.jw, <2 x double> %i.jz)
  %i.kb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jt, <2 x double> %i.jt, <2 x double> %i.ka)
  %i.kc = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.kb)
  %i.kd = fdiv <2 x double> %i.jr, %i.kc          ; 2 uses
  %i.ke = extractelement <2 x double> %i.kd, i64 0
  %i.kf = fsub double %i.jj, %i.ke
  %i.kg = extractelement <2 x double> %i.kd, i64 1
  %i.kh = fsub double %i.kf, %i.kg
  %i.ki = tail call double @llvm.fmuladd.f64(double %i.il, double %i.hu, double %i.kh)
  %i.kj = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 72), align 8, !tbaa !12 ; 2 uses
  %i.kk = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 112), align 16, !tbaa !21
  %i.kl = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 216), align 8
  %i.km = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 184), align 8
  %i.kn = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 272), align 16, !tbaa !14
  %i.ko = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 240), align 16, !tbaa !12
  %i.kp = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 168), align 8, !tbaa !10 ; 2 uses
  %i.kq = shufflevector <2 x double> %i.kl, <2 x double> %i.ij, <2 x i32> <i32 0, i32 2>
  %i.kr = insertelement <2 x double> %i.ij, double %i.kn, i64 1
  %i.ks = fmul <2 x double> %i.kq, %i.kr
  %i.kt = insertelement <2 x double> poison, double %i.kj, i64 0
  %i.ku = shufflevector <2 x double> %i.kt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kv = insertelement <2 x double> %i.km, double %i.ko, i64 1
  %i.kw = fsub <2 x double> %i.ku, %i.kv          ; 2 uses
  %i.kx = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 224), align 16, !tbaa !10 ; 2 uses
  %i.ky = shufflevector <2 x double> %i.kp, <2 x double> %i.kx, <2 x i32> <i32 0, i32 2>
  %i.kz = shufflevector <2 x double> %i.kp, <2 x double> %i.kx, <2 x i32> <i32 1, i32 3>
  %i.la = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 128), align 16
  %i.lb = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 184), align 8, !tbaa !12
  %i.lc = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 112), align 16
  %i.ld = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 120), align 8
  %i.le = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 272), align 16, !tbaa !14
  %i.lf = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 216), align 8, !tbaa !10 ; 4 uses
  %i.lg = extractelement <2 x double> %i.lf, i64 0
  %i.lh = fmul double %i.lg, 5.000000e-01
  %i.li = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 168), align 8, !tbaa !10 ; 2 uses
  %i.lj = insertelement <2 x double> %i.lf, double %i.le, i64 1
  %i.lk = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 232), align 8, !tbaa !10 ; 2 uses
  %i.ll = shufflevector <2 x double> %i.la, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lm = insertelement <2 x double> %i.lk, double %i.lb, i64 0
  %i.ln = fsub <2 x double> %i.ll, %i.lm          ; 2 uses
  %i.lo = shufflevector <2 x double> %i.lc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lp = shufflevector <2 x double> %i.li, <2 x double> %i.lf, <2 x i32> <i32 0, i32 3>
  %i.lq = fsub <2 x double> %i.lo, %i.lp          ; 2 uses
  %i.lr = shufflevector <2 x double> %i.ld, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ls = shufflevector <2 x double> %i.li, <2 x double> %i.lk, <2 x i32> <i32 1, i32 2>
  %i.lt = fsub <2 x double> %i.lr, %i.ls          ; 2 uses
  %i.lu = fmul <2 x double> %i.lt, %i.lt
  %i.lv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lq, <2 x double> %i.lq, <2 x double> %i.lu)
  %i.lw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ln, <2 x double> %i.ln, <2 x double> %i.lv)
  %i.lx = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.lw)
  %i.ly = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 240), align 16, !tbaa !12
  %i.lz = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 160), align 16, !tbaa !10 ; 4 uses
  %i.ma = extractelement <2 x double> %i.lz, i64 0
  %i.mb = fmul double %i.ma, 5.000000e-01
  %i.mc = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 56), align 8, !tbaa !10 ; 4 uses
  %i.md = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 120), align 8, !tbaa !10 ; 2 uses
  %i.me = shufflevector <2 x double> %i.ij, <2 x double> %i.lf, <2 x i32> <i32 0, i32 2>
  %i.mf = insertelement <2 x double> %i.lz, double %i.gv, i64 1
  %i.mg = fmul <2 x double> %i.me, %i.mf
  %i.mh = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 176), align 16, !tbaa !10 ; 2 uses
  %i.mi = insertelement <2 x double> %i.mh, double %i.kj, i64 0
  %i.mj = shufflevector <2 x double> %i.md, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.mk = insertelement <2 x double> %i.mj, double %i.ly, i64 1
  %i.ml = fsub <2 x double> %i.mi, %i.mk          ; 2 uses
  %i.mm = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 224), align 16, !tbaa !10 ; 2 uses
  %i.mn = shufflevector <2 x double> %i.mc, <2 x double> %i.lz, <2 x i32> <i32 0, i32 3>
  %i.mo = shufflevector <2 x double> %i.mm, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.mp = insertelement <2 x double> %i.mo, double %i.kk, i64 0
  %i.mq = fsub <2 x double> %i.mn, %i.mp          ; 2 uses
  %i.mr = shufflevector <2 x double> %i.mc, <2 x double> %i.mh, <2 x i32> <i32 1, i32 2>
  %i.ms = shufflevector <2 x double> %i.md, <2 x double> %i.mm, <2 x i32> <i32 0, i32 3>
  %i.mt = fsub <2 x double> %i.mr, %i.ms          ; 2 uses
  %i.mu = fmul <2 x double> %i.mt, %i.mt
  %i.mv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mq, <2 x double> %i.mq, <2 x double> %i.mu)
  %i.mw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ml, <2 x double> %i.ml, <2 x double> %i.mv)
  %i.mx = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.mw)
  %i.my = fdiv <2 x double> %i.mg, %i.mx          ; 2 uses
  %i.mz = extractelement <2 x double> %i.my, i64 0
  %i.na = fsub double %i.ki, %i.mz
  %i.nb = shufflevector <2 x double> %i.mc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nc = fsub <2 x double> %i.nb, %i.ky          ; 2 uses
  %i.nd = shufflevector <2 x double> %i.mc, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ne = fsub <2 x double> %i.nd, %i.kz          ; 2 uses
  %i.nf = fmul <2 x double> %i.ne, %i.ne
  %i.ng = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nc, <2 x double> %i.nc, <2 x double> %i.nf)
  %i.nh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kw, <2 x double> %i.kw, <2 x double> %i.ng)
  %i.ni = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.nh)
  %i.nj = fdiv <2 x double> %i.ks, %i.ni          ; 2 uses
  %i.nk = extractelement <2 x double> %i.nj, i64 0
end_hunk_0
