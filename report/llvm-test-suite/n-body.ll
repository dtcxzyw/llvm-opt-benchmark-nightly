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
  %i.t = tail call double @llvm.fmuladd.f64(double %i.s, double %i.s, double %i.r)
  %i.u = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 16), align 16
  %i.v = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 72), align 8, !tbaa !12
  %i.w = load <2 x double>, ptr @bodies, align 16
  %i.x = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 8), align 8
  %i.y = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 104), align 8, !tbaa !10 ; 4 uses
  %i.z = extractelement <2 x double> %i.y, i64 0  ; 3 uses
  %i.aa = shufflevector <2 x double> %i.y, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ab = fmul double %i.z, 5.000000e-01
  %i.ac = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 56), align 8, !tbaa !10 ; 2 uses
  %i.ad = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 120), align 8, !tbaa !10 ; 2 uses
  %i.ae = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.af = insertelement <2 x double> %i.ad, double %i.v, i64 0
  %i.ag = fsub <2 x double> %i.ae, %i.af          ; 2 uses
  %i.ah = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ai = shufflevector <2 x double> %i.ac, <2 x double> %i.y, <2 x i32> <i32 0, i32 3>
  %i.aj = fsub <2 x double> %i.ah, %i.ai          ; 2 uses
  %i.ak = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.al = shufflevector <2 x double> %i.ac, <2 x double> %i.ad, <2 x i32> <i32 1, i32 2>
  %i.am = fsub <2 x double> %i.ak, %i.al          ; 2 uses
  %i.an = fmul <2 x double> %i.am, %i.am
  %i.ao = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aj, <2 x double> %i.aj, <2 x double> %i.an)
  %i.ap = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ag, <2 x double> %i.ag, <2 x double> %i.ao)
  %i.aq = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.ap)
  %i.ar = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 184), align 8
  %i.as = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 240), align 16, !tbaa !12
  %i.at = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 72), align 8 ; 2 uses
  %i.au = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 128), align 16
  %i.av = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 56), align 8, !tbaa !21 ; 2 uses
  %i.aw = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 112), align 16, !tbaa !21
  %i.ax = fsub double %i.av, %i.aw
  %i.ay = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 64), align 16, !tbaa !22 ; 2 uses
  %i.az = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 120), align 8, !tbaa !22
  %i.ba = fsub double %i.ay, %i.az                ; 2 uses
  %i.bb = fmul double %i.ba, %i.ba
  %i.bc = insertelement <2 x double> poison, double %i.a, i64 0
  %i.bd = insertelement <2 x double> %i.bc, double %i.ax, i64 1 ; 2 uses
  %i.be = insertelement <2 x double> poison, double %i.t, i64 0
  %i.bf = insertelement <2 x double> %i.be, double %i.bb, i64 1
  %i.bg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bd, <2 x double> %i.bd, <2 x double> %i.bf) ; 2 uses
  %i.bh = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 184), align 8
  %i.bi = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 240), align 16, !tbaa !12
  %i.bj = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 128), align 16
  %i.bk = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 184), align 8, !tbaa !12
  %i.bl = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 112), align 16
  %i.bm = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 120), align 8
  %i.bn = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 216), align 8, !tbaa !10 ; 4 uses
  %i.bo = extractelement <2 x double> %i.bn, i64 0 ; 3 uses
  %2 = shufflevector <2 x double> %i.bn, <2 x double> poison, <2 x i32> zeroinitializer
  %3 = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 48), align 16, !tbaa !14 ; 3 uses
  %4 = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 40), align 8, !tbaa !15
  %5 = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 160), align 16, !tbaa !14 ; 5 uses
  %6 = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 152), align 8, !tbaa !15 ; 3 uses
  %7 = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 272), align 16, !tbaa !14 ; 5 uses
  %8 = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 264), align 8, !tbaa !15 ; 3 uses
  %9 = insertelement <2 x double> poison, double %3, i64 0
  %i.bp = shufflevector <2 x double> %9, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.c, <2 x double> %i.bp, <2 x double> zeroinitializer)
  %10 = insertelement <2 x double> poison, double %5, i64 0
  %11 = shufflevector <2 x double> %10, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %12 = insertelement <2 x double> poison, double %7, i64 0
  %13 = shufflevector <2 x double> %12, <2 x double> poison, <2 x i32> zeroinitializer
  %14 = fmul double %7, 5.000000e-01
  %15 = tail call double @llvm.fmuladd.f64(double %8, double %8, double %i.j)
  %16 = fmul double %5, 5.000000e-01
  %17 = tail call double @llvm.fmuladd.f64(double %6, double %6, double %i.q)
  %i.br = fmul double %3, 5.000000e-01
  %18 = fmul double %i.z, %5
  %19 = tail call double @llvm.fmuladd.f64(double %4, double %3, double 0.000000e+00)
  %20 = tail call double @llvm.fmuladd.f64(double %i.a, double %i.z, double %19)
  %i.bs = tail call double @llvm.fmuladd.f64(double %6, double %5, double %20)
  %21 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.d, <2 x double> %i.aa, <2 x double> %i.bq)
  %22 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.e, <2 x double> %11, <2 x double> %21)
  %23 = insertelement <2 x double> %i.y, double %5, i64 1
  %24 = fmul <2 x double> %i.bp, %23
  %25 = fdiv <2 x double> %24, %i.aq              ; 2 uses
  %i.bt = tail call double @llvm.fmuladd.f64(double %i.b, double %i.bo, double %i.bs)
  %i.bu = tail call double @llvm.fmuladd.f64(double %8, double %7, double %i.bt)
  %26 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.f, <2 x double> %2, <2 x double> %22)
  %27 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.g, <2 x double> %13, <2 x double> %26)
  %28 = fdiv <2 x double> %27, splat (double f0xC043BD3CC9BE45DE) ; 4 uses
  store <2 x double> %28, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 24), align 8, !tbaa !10
  %29 = insertelement <2 x double> poison, double %18, i64 0
  %30 = insertelement <2 x double> %29, double %i.bu, i64 1
  %31 = fmul double %i.bo, 5.000000e-01
  %foldExtExtBinop48 = fmul <2 x double> %28, %28
  %32 = extractelement <2 x double> %foldExtExtBinop48, i64 1
  %i.bv = extractelement <2 x double> %28, i64 0  ; 2 uses
  %33 = tail call double @llvm.fmuladd.f64(double %i.bv, double %i.bv, double %32)
  %i.bw = extractelement <2 x double> %25, i64 0
  %34 = extractelement <2 x double> %25, i64 1
  %i.bx = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 168), align 8, !tbaa !10 ; 2 uses
  %i.by = insertelement <2 x double> %i.ar, double %i.as, i64 1
  %i.bz = fsub <2 x double> %i.ae, %i.by          ; 2 uses
  %i.ca = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 224), align 16, !tbaa !10 ; 2 uses
  %i.cb = shufflevector <2 x double> %i.bx, <2 x double> %i.ca, <2 x i32> <i32 0, i32 2>
  %i.cc = fsub <2 x double> %i.ah, %i.cb          ; 2 uses
  %i.cd = shufflevector <2 x double> %i.bx, <2 x double> %i.ca, <2 x i32> <i32 1, i32 3>
  %i.ce = fsub <2 x double> %i.ak, %i.cd          ; 2 uses
  %i.cf = fmul <2 x double> %i.ce, %i.ce
  %i.cg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cc, <2 x double> %i.cc, <2 x double> %i.cf)
  %i.ch = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bz, <2 x double> %i.bz, <2 x double> %i.cg)
  %i.ci = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.ch)
  %i.cj = insertelement <2 x double> %i.bn, double %7, i64 1 ; 3 uses
  %i.ck = fmul <2 x double> %i.bp, %i.cj
  %i.cl = fdiv <2 x double> %i.ck, %i.ci          ; 2 uses
  %i.cm = extractelement <2 x double> %i.cl, i64 0
  %i.cn = extractelement <2 x double> %i.cl, i64 1
  %i.co = extractelement <2 x double> %i.bg, i64 0
  %i.cp = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 168), align 8, !tbaa !10 ; 2 uses
  %i.cq = shufflevector <2 x double> %i.at, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cr = insertelement <2 x double> %i.bh, double %i.bi, i64 1
  %i.cs = fsub <2 x double> %i.cq, %i.cr          ; 2 uses
  %i.ct = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 224), align 16, !tbaa !10 ; 2 uses
  %i.cu = insertelement <2 x double> poison, double %i.av, i64 0
  %i.cv = shufflevector <2 x double> %i.cu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cw = shufflevector <2 x double> %i.cp, <2 x double> %i.ct, <2 x i32> <i32 0, i32 2>
  %i.cx = fsub <2 x double> %i.cv, %i.cw          ; 2 uses
  %i.cy = insertelement <2 x double> poison, double %i.ay, i64 0
  %i.cz = shufflevector <2 x double> %i.cy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.da = shufflevector <2 x double> %i.cp, <2 x double> %i.ct, <2 x i32> <i32 1, i32 3>
  %i.db = fsub <2 x double> %i.cz, %i.da          ; 2 uses
  %i.dc = fmul <2 x double> %i.db, %i.db
  %i.dd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cx, <2 x double> %i.cx, <2 x double> %i.dc)
  %i.de = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cs, <2 x double> %i.cs, <2 x double> %i.dd)
  %i.df = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.de)
  %i.dg = fmul <2 x double> %i.aa, %i.cj
  %i.dh = fdiv <2 x double> %i.dg, %i.df          ; 2 uses
  %i.di = extractelement <2 x double> %i.dh, i64 0
  %i.dj = extractelement <2 x double> %i.dh, i64 1
  %i.dk = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 168), align 8, !tbaa !10 ; 2 uses
  %i.dl = fmul <2 x double> %11, %i.cj
  %i.dm = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 232), align 8, !tbaa !10 ; 2 uses
  %i.dn = shufflevector <2 x double> %i.bj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.do = insertelement <2 x double> %i.dm, double %i.bk, i64 0
  %i.dp = fsub <2 x double> %i.dn, %i.do          ; 2 uses
  %i.dq = shufflevector <2 x double> %i.bl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dr = shufflevector <2 x double> %i.dk, <2 x double> %i.bn, <2 x i32> <i32 0, i32 3>
  %i.ds = fsub <2 x double> %i.dq, %i.dr          ; 2 uses
  %i.dt = shufflevector <2 x double> %i.bm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.du = shufflevector <2 x double> %i.dk, <2 x double> %i.dm, <2 x i32> <i32 1, i32 2>
  %i.dv = fsub <2 x double> %i.dt, %i.du          ; 2 uses
  %i.dw = fmul <2 x double> %i.dv, %i.dv
  %i.dx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ds, <2 x double> %i.ds, <2 x double> %i.dw)
  %i.dy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dp, <2 x double> %i.dp, <2 x double> %i.dx)
  %i.dz = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.dy)
  %i.ea = fdiv <2 x double> %i.dl, %i.dz          ; 2 uses
  %i.eb = extractelement <2 x double> %i.ea, i64 0
  %i.ec = extractelement <2 x double> %i.ea, i64 1
  %i.ed = fmul double %i.bo, %7
  %i.ee = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 184), align 8, !tbaa !12
  %i.ef = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 240), align 16, !tbaa !12
  %i.eg = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 168), align 8, !tbaa !21
  %i.eh = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 224), align 16, !tbaa !21
  %i.ei = fsub double %i.eg, %i.eh                ; 2 uses
  %i.ej = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 176), align 16, !tbaa !22
  %i.ek = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 232), align 8, !tbaa !22
  %i.el = fsub double %i.ej, %i.ek                ; 2 uses
  %i.em = fmul double %i.el, %i.el
  %35 = insertelement <2 x double> %i.at, double %i.ee, i64 1
  %i.en = insertelement <2 x double> %i.au, double %i.ef, i64 1
  %36 = fsub <2 x double> %35, %i.en              ; 2 uses
  %37 = tail call double @llvm.fmuladd.f64(double %i.ei, double %i.ei, double %i.em)
  %i.eo = shufflevector <2 x double> %i.bg, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ep = insertelement <2 x double> %i.eo, double %37, i64 1
  %i.eq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %36, <2 x double> %36, <2 x double> %i.ep)
  %i.er = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.eq) ; 2 uses
  %38 = insertelement <2 x double> %i.er, double f0xC043BD3CC9BE45DE, i64 1
  %39 = fdiv <2 x double> %30, %38                ; 2 uses
  %i.es = extractelement <2 x double> %39, i64 1  ; 3 uses
  store double %i.es, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 40), align 8, !tbaa !15
  %40 = tail call double @llvm.fmuladd.f64(double %i.es, double %i.es, double %33)
  %41 = tail call double @llvm.fmuladd.f64(double %i.br, double %40, double 0.000000e+00)
  %42 = fsub double %41, %i.bw
  %43 = fsub double %42, %34
  %44 = fsub double %43, %i.cm
  %45 = fsub double %44, %i.cn
  %46 = tail call double @llvm.fmuladd.f64(double %i.ab, double %i.co, double %45)
  %47 = extractelement <2 x double> %39, i64 0
  %i.et = fsub double %46, %47
  %i.eu = fsub double %i.et, %i.di
  %i.ev = fsub double %i.eu, %i.dj
  %i.ew = tail call double @llvm.fmuladd.f64(double %16, double %17, double %i.ev)
  %i.ex = fsub double %i.ew, %i.eb
  %i.ey = fsub double %i.ex, %i.ec
  %i.ez = tail call double @llvm.fmuladd.f64(double %31, double %i.n, double %i.ey)
  %i.fa = extractelement <2 x double> %i.er, i64 1
  %i.fb = fdiv double %i.ed, %i.fa
  %i.fc = fsub double %i.ez, %i.fb
  %i.fd = tail call double @llvm.fmuladd.f64(double %14, double %15, double %i.fc)
  %i.fe = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %i.fd) ; 0 uses
  br label %bb.a

bb.a:                                             ; preds = %.loopexit.i.4, %bb.a
  %.027 = phi i32 [ 1, %.loopexit.i.4 ], [ %i.ff, %bb.a ]
  tail call void @advance(i32 noundef 5, ptr noundef nonnull @bodies, double noundef 1.000000e-02)
  %i.ff = add nuw nsw i32 %.027, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.ff, 5000001
  br i1 %exitcond.not, label %.loopexit.i12.4, label %bb.a, !llvm.loop !25

.loopexit.i12.4:                                  ; preds = %bb.a
  %i.fg = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 272), align 16, !tbaa !14 ; 2 uses
  %i.fh = fmul double %i.fg, 5.000000e-01
  %i.fi = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 264), align 8, !tbaa !15 ; 2 uses
  %i.fj = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 248), align 8, !tbaa !19 ; 2 uses
  %i.fk = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 256), align 16, !tbaa !20 ; 2 uses
  %i.fl = fmul double %i.fk, %i.fk
  %i.fm = tail call double @llvm.fmuladd.f64(double %i.fj, double %i.fj, double %i.fl)
  %i.fn = tail call double @llvm.fmuladd.f64(double %i.fi, double %i.fi, double %i.fm)
  %i.fo = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 208), align 16, !tbaa !15 ; 2 uses
  %i.fp = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 192), align 16, !tbaa !19 ; 2 uses
  %i.fq = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 200), align 8, !tbaa !20 ; 2 uses
  %i.fr = fmul double %i.fq, %i.fq
  %i.fs = tail call double @llvm.fmuladd.f64(double %i.fp, double %i.fp, double %i.fr)
  %i.ft = tail call double @llvm.fmuladd.f64(double %i.fo, double %i.fo, double %i.fs)
  %i.fu = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 152), align 8, !tbaa !15 ; 2 uses
  %i.fv = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 136), align 8, !tbaa !19 ; 2 uses
  %i.fw = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 144), align 16, !tbaa !20 ; 2 uses
  %i.fx = fmul double %i.fw, %i.fw
  %i.fy = tail call double @llvm.fmuladd.f64(double %i.fv, double %i.fv, double %i.fx)
  %i.fz = tail call double @llvm.fmuladd.f64(double %i.fu, double %i.fu, double %i.fy)
  %i.ga = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 96), align 16, !tbaa !15 ; 2 uses
  %i.gb = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 80), align 16, !tbaa !19 ; 2 uses
  %i.gc = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 88), align 8, !tbaa !20 ; 2 uses
  %i.gd = fmul double %i.gc, %i.gc
  %i.ge = tail call double @llvm.fmuladd.f64(double %i.gb, double %i.gb, double %i.gd)
  %i.gf = tail call double @llvm.fmuladd.f64(double %i.ga, double %i.ga, double %i.ge)
  %i.gg = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 48), align 16, !tbaa !14 ; 3 uses
  %i.gh = fmul double %i.gg, 5.000000e-01
  %i.gi = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 40), align 8, !tbaa !15 ; 2 uses
  %i.gj = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 24), align 8, !tbaa !19 ; 2 uses
  %i.gk = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 32), align 16, !tbaa !20 ; 2 uses
  %i.gl = fmul double %i.gk, %i.gk
  %i.gm = tail call double @llvm.fmuladd.f64(double %i.gj, double %i.gj, double %i.gl)
  %i.gn = tail call double @llvm.fmuladd.f64(double %i.gi, double %i.gi, double %i.gm)
  %i.go = tail call double @llvm.fmuladd.f64(double %i.gh, double %i.gn, double 0.000000e+00)
  %i.gp = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 16), align 16
  %i.gq = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 72), align 8, !tbaa !12
  %i.gr = load <2 x double>, ptr @bodies, align 16
  %i.gs = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 8), align 8
  %i.gt = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 160), align 16, !tbaa !14
  %i.gu = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 104), align 8, !tbaa !10 ; 6 uses
  %i.gv = extractelement <2 x double> %i.gu, i64 0
  %i.gw = fmul double %i.gv, 5.000000e-01
  %i.gx = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 56), align 8, !tbaa !10 ; 2 uses
  %i.gy = insertelement <2 x double> poison, double %i.gg, i64 0 ; 2 uses
  %i.gz = shufflevector <2 x double> %i.gy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ha = insertelement <2 x double> %i.gu, double %i.gt, i64 1
  %i.hb = fmul <2 x double> %i.gz, %i.ha
  %i.hc = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 120), align 8, !tbaa !10 ; 2 uses
  %i.hd = shufflevector <2 x double> %i.gp, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.he = insertelement <2 x double> %i.hc, double %i.gq, i64 0
  %i.hf = fsub <2 x double> %i.hd, %i.he          ; 2 uses
  %i.hg = shufflevector <2 x double> %i.gr, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hh = shufflevector <2 x double> %i.gx, <2 x double> %i.gu, <2 x i32> <i32 0, i32 3>
  %i.hi = fsub <2 x double> %i.hg, %i.hh          ; 2 uses
  %i.hj = shufflevector <2 x double> %i.gs, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hk = shufflevector <2 x double> %i.gx, <2 x double> %i.hc, <2 x i32> <i32 1, i32 2>
  %i.hl = fsub <2 x double> %i.hj, %i.hk          ; 2 uses
  %i.hm = fmul <2 x double> %i.hl, %i.hl
  %i.hn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hi, <2 x double> %i.hi, <2 x double> %i.hm)
  %i.ho = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hf, <2 x double> %i.hf, <2 x double> %i.hn)
  %i.hp = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.ho)
  %i.hq = fdiv <2 x double> %i.hb, %i.hp          ; 2 uses
  %i.hr = extractelement <2 x double> %i.hq, i64 0
  %i.hs = fsub double %i.go, %i.hr
  %i.ht = extractelement <2 x double> %i.hq, i64 1
  %i.hu = fsub double %i.hs, %i.ht
  %i.hv = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 216), align 8
  %i.hw = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 184), align 8
  %i.hx = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 272), align 16, !tbaa !14
  %i.hy = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 240), align 16, !tbaa !12
  %i.hz = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 168), align 8, !tbaa !10 ; 2 uses
  %i.ia = insertelement <2 x double> %i.hv, double %i.gg, i64 1
  %i.ib = insertelement <2 x double> %i.gy, double %i.hx, i64 1
  %i.ic = fmul <2 x double> %i.ia, %i.ib
  %i.id = insertelement <2 x double> %i.hw, double %i.hy, i64 1
  %i.ie = fsub <2 x double> %i.hd, %i.id          ; 2 uses
  %i.if = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 224), align 16, !tbaa !10 ; 2 uses
  %i.ig = shufflevector <2 x double> %i.hz, <2 x double> %i.if, <2 x i32> <i32 0, i32 2>
  %i.ih = fsub <2 x double> %i.hg, %i.ig          ; 2 uses
  %i.ii = shufflevector <2 x double> %i.hz, <2 x double> %i.if, <2 x i32> <i32 1, i32 3>
  %i.ij = fsub <2 x double> %i.hj, %i.ii          ; 2 uses
  %i.ik = fmul <2 x double> %i.ij, %i.ij
  %i.il = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ih, <2 x double> %i.ih, <2 x double> %i.ik)
  %i.im = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ie, <2 x double> %i.ie, <2 x double> %i.il)
  %i.in = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.im)
  %i.io = fdiv <2 x double> %i.ic, %i.in          ; 2 uses
  %i.ip = extractelement <2 x double> %i.io, i64 0
  %i.iq = fsub double %i.hu, %i.ip
  %i.ir = extractelement <2 x double> %i.io, i64 1
  %i.is = fsub double %i.iq, %i.ir
  %i.it = tail call double @llvm.fmuladd.f64(double %i.gw, double %i.gf, double %i.is)
  %i.iu = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 72), align 8, !tbaa !12 ; 2 uses
  %i.iv = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 112), align 16, !tbaa !21
  %i.iw = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 216), align 8
  %i.ix = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 184), align 8
  %i.iy = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 272), align 16, !tbaa !14
  %i.iz = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 240), align 16, !tbaa !12
  %i.ja = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 168), align 8, !tbaa !10 ; 2 uses
  %i.jb = shufflevector <2 x double> %i.iw, <2 x double> %i.gu, <2 x i32> <i32 0, i32 2>
  %i.jc = insertelement <2 x double> %i.gu, double %i.iy, i64 1
  %i.jd = fmul <2 x double> %i.jb, %i.jc
  %i.je = insertelement <2 x double> poison, double %i.iu, i64 0
  %i.jf = shufflevector <2 x double> %i.je, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jg = insertelement <2 x double> %i.ix, double %i.iz, i64 1
  %i.jh = fsub <2 x double> %i.jf, %i.jg          ; 2 uses
  %i.ji = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 224), align 16, !tbaa !10 ; 2 uses
  %i.jj = shufflevector <2 x double> %i.ja, <2 x double> %i.ji, <2 x i32> <i32 0, i32 2>
  %i.jk = shufflevector <2 x double> %i.ja, <2 x double> %i.ji, <2 x i32> <i32 1, i32 3>
  %i.jl = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 128), align 16
  %i.jm = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 184), align 8, !tbaa !12
  %i.jn = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 112), align 16
  %i.jo = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 120), align 8
  %i.jp = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 272), align 16, !tbaa !14
  %i.jq = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 216), align 8, !tbaa !10 ; 4 uses
  %i.jr = extractelement <2 x double> %i.jq, i64 0
  %i.js = fmul double %i.jr, 5.000000e-01
  %i.jt = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 168), align 8, !tbaa !10 ; 2 uses
  %i.ju = insertelement <2 x double> %i.jq, double %i.jp, i64 1
  %i.jv = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 232), align 8, !tbaa !10 ; 2 uses
  %i.jw = shufflevector <2 x double> %i.jl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jx = insertelement <2 x double> %i.jv, double %i.jm, i64 0
  %i.jy = fsub <2 x double> %i.jw, %i.jx          ; 2 uses
  %i.jz = shufflevector <2 x double> %i.jn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ka = shufflevector <2 x double> %i.jt, <2 x double> %i.jq, <2 x i32> <i32 0, i32 3>
  %i.kb = fsub <2 x double> %i.jz, %i.ka          ; 2 uses
  %i.kc = shufflevector <2 x double> %i.jo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kd = shufflevector <2 x double> %i.jt, <2 x double> %i.jv, <2 x i32> <i32 1, i32 2>
  %i.ke = fsub <2 x double> %i.kc, %i.kd          ; 2 uses
  %i.kf = fmul <2 x double> %i.ke, %i.ke
  %i.kg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kb, <2 x double> %i.kb, <2 x double> %i.kf)
  %i.kh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jy, <2 x double> %i.jy, <2 x double> %i.kg)
  %i.ki = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.kh)
  %i.kj = load double, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 240), align 16, !tbaa !12
  %i.kk = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 160), align 16, !tbaa !10 ; 4 uses
  %i.kl = extractelement <2 x double> %i.kk, i64 0
  %i.km = fmul double %i.kl, 5.000000e-01
  %i.kn = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 56), align 8, !tbaa !10 ; 4 uses
  %i.ko = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 120), align 8, !tbaa !10 ; 2 uses
  %i.kp = shufflevector <2 x double> %i.gu, <2 x double> %i.jq, <2 x i32> <i32 0, i32 2>
  %i.kq = insertelement <2 x double> %i.kk, double %i.fg, i64 1
  %i.kr = fmul <2 x double> %i.kp, %i.kq
  %i.ks = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 176), align 16, !tbaa !10 ; 2 uses
  %i.kt = insertelement <2 x double> %i.ks, double %i.iu, i64 0
  %i.ku = shufflevector <2 x double> %i.ko, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.kv = insertelement <2 x double> %i.ku, double %i.kj, i64 1
  %i.kw = fsub <2 x double> %i.kt, %i.kv          ; 2 uses
  %i.kx = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @bodies, i64 224), align 16, !tbaa !10 ; 2 uses
  %i.ky = shufflevector <2 x double> %i.kn, <2 x double> %i.kk, <2 x i32> <i32 0, i32 3>
  %i.kz = shufflevector <2 x double> %i.kx, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.la = insertelement <2 x double> %i.kz, double %i.iv, i64 0
  %i.lb = fsub <2 x double> %i.ky, %i.la          ; 2 uses
  %i.lc = shufflevector <2 x double> %i.kn, <2 x double> %i.ks, <2 x i32> <i32 1, i32 2>
  %i.ld = shufflevector <2 x double> %i.ko, <2 x double> %i.kx, <2 x i32> <i32 0, i32 3>
  %i.le = fsub <2 x double> %i.lc, %i.ld          ; 2 uses
  %i.lf = fmul <2 x double> %i.le, %i.le
  %i.lg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lb, <2 x double> %i.lb, <2 x double> %i.lf)
  %i.lh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kw, <2 x double> %i.kw, <2 x double> %i.lg)
  %i.li = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.lh)
  %i.lj = fdiv <2 x double> %i.kr, %i.li          ; 2 uses
  %i.lk = extractelement <2 x double> %i.lj, i64 0
  %i.ll = fsub double %i.it, %i.lk
  %i.lm = shufflevector <2 x double> %i.kn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ln = fsub <2 x double> %i.lm, %i.jj          ; 2 uses
  %i.lo = shufflevector <2 x double> %i.kn, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.lp = fsub <2 x double> %i.lo, %i.jk          ; 2 uses
  %i.lq = fmul <2 x double> %i.lp, %i.lp
  %i.lr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ln, <2 x double> %i.ln, <2 x double> %i.lq)
  %i.ls = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jh, <2 x double> %i.jh, <2 x double> %i.lr)
  %i.lt = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.ls)
  %i.lu = fdiv <2 x double> %i.jd, %i.lt          ; 2 uses
  %i.lv = extractelement <2 x double> %i.lu, i64 0
  %i.lw = fsub double %i.ll, %i.lv
  %i.lx = extractelement <2 x double> %i.lu, i64 1
  %i.ly = fsub double %i.lw, %i.lx
  %i.lz = tail call double @llvm.fmuladd.f64(double %i.km, double %i.fz, double %i.ly)
  %i.ma = shufflevector <2 x double> %i.kk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mb = fmul <2 x double> %i.ma, %i.ju
  %i.mc = fdiv <2 x double> %i.mb, %i.ki          ; 2 uses
  %i.md = extractelement <2 x double> %i.mc, i64 0
  %i.me = fsub double %i.lz, %i.md
  %i.mf = extractelement <2 x double> %i.mc, i64 1
  %i.mg = fsub double %i.me, %i.mf
  %i.mh = tail call double @llvm.fmuladd.f64(double %i.js, double %i.ft, double %i.mg)
  %i.mi = extractelement <2 x double> %i.lj, i64 1
  %i.mj = fsub double %i.mh, %i.mi
  %i.mk = tail call double @llvm.fmuladd.f64(double %i.fh, double %i.fn, double %i.mj)
  %i.ml = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %i.mk) ; 0 uses
  ret i32 0
end_hunk_0
