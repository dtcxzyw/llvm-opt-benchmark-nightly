Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/GradingTone?download=true
inline.NumInlined: 239
inline.NumDeleted: 68
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN16OpenColorIO_v2_520GradingTonePreRender9FromStyleENS_12GradingStyleERfS2_S2_S2_:bb.a
bb.a:
  %i.a = icmp ult i32 %0, 3
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN16OpenColorIO_v2_520GradingTonePreRender9FromStyleENS_12GradingStyleERfS2_S2_S2_, i64 %i.b
  %switch.load = load float, ptr %switch.gep, align 4
  %i.c = zext nneg i32 %0 to i64
  %switch.gep15 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN16OpenColorIO_v2_520GradingTonePreRender9FromStyleENS_12GradingStyleERfS2_S2_S2_.4, i64 %i.c
  %switch.load16 = load float, ptr %switch.gep15, align 4
  %i.d = zext nneg i32 %0 to i64
  %switch.gep17 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN16OpenColorIO_v2_520GradingTonePreRender9FromStyleENS_12GradingStyleERfS2_S2_S2_.5, i64 %i.d
  %switch.load18 = load float, ptr %switch.gep17, align 4
  %i.e = zext nneg i32 %0 to i64
  %switch.gep19 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN16OpenColorIO_v2_520GradingTonePreRender9FromStyleENS_12GradingStyleERfS2_S2_S2_.6, i64 %i.e
  %switch.load20 = load float, ptr %switch.gep19, align 4
  store float %switch.load, ptr %1, align 4, !tbaa !19
  store float %switch.load16, ptr %2, align 4, !tbaa !19
  store float %switch.load18, ptr %3, align 4, !tbaa !19
  store float %switch.load20, ptr %4, align 4, !tbaa !19
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define hidden void @_ZN16OpenColorIO_v2_520GradingTonePreRender6updateERKNS_11GradingToneE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(936) initializes((928, 929)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(248) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN16OpenColorIO_v2_510IsIdentityERKNS_11GradingToneE(ptr noundef nonnull align 8 dereferenceable(248) %1) ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.c = zext i1 %i.a to i8
  store i8 %i.c, ptr %i.b, align 8, !tbaa !23
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.e = load double, ptr %i.d, align 8, !tbaa !33 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.g = load double, ptr %i.f, align 8, !tbaa !34 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.i = load double, ptr %i.h, align 8, !tbaa !35 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.k = load double, ptr %i.j, align 8, !tbaa !36 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.m = load double, ptr %i.l, align 8, !tbaa !37
  %i.n = fadd double %i.i, -1.000000e-02          ; 2 uses
  %i.o = fcmp ogt double %i.g, %i.n
  %i.p = select i1 %i.o, double %i.n, double %i.g ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.p, ptr %i.q, align 8, !tbaa !38
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.i, ptr %i.r, align 8, !tbaa !39
  %i.s = tail call fastcc noundef double @_ZN16OpenColorIO_v2_512_GLOBAL__N_116HighlightFwdEvalEdddd(double noundef %i.k, double noundef %i.p, double noundef %i.i, double noundef %i.e) ; 2 uses
  %i.t = fadd double %i.k, %i.m
  %i.u = tail call fastcc noundef double @_ZN16OpenColorIO_v2_512_GLOBAL__N_116HighlightFwdEvalEdddd(double noundef %i.t, double noundef %i.p, double noundef %i.i, double noundef %i.e)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  store double %i.s, ptr %i.v, align 8, !tbaa !40
  %i.w = fsub double %i.u, %i.s
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double %i.w, ptr %i.x, align 8, !tbaa !41
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.z = load double, ptr %i.y, align 8, !tbaa !42 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !43 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !44 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.af = load double, ptr %i.ae, align 8, !tbaa !45 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !46
  %i.ai = fadd double %i.ad, 1.000000e-02         ; 2 uses
  %i.aj = fcmp olt double %i.ab, %i.ai
  %i.ak = select i1 %i.aj, double %i.ai, double %i.ab ; 3 uses
  store double %i.ak, ptr %0, align 8, !tbaa !47
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.ad, ptr %i.al, align 8, !tbaa !48
  %i.am = tail call fastcc noundef double @_ZN16OpenColorIO_v2_512_GLOBAL__N_113ShadowFwdEvalEdddd(double noundef %i.af, double noundef %i.ad, double noundef %i.ak, double noundef %i.z) ; 2 uses
  %i.an = fsub double %i.af, %i.ah
  %i.ao = tail call fastcc noundef double @_ZN16OpenColorIO_v2_512_GLOBAL__N_113ShadowFwdEvalEdddd(double noundef %i.an, double noundef %i.ad, double noundef %i.ak, double noundef %i.z)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %i.am, ptr %i.ap, align 8, !tbaa !49
  %i.aq = fsub double %i.am, %i.ao
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %i.aq, ptr %i.ar, align 8, !tbaa !50
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.at = load float, ptr %i.as, align 8, !tbaa !51
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 920 ; 2 uses
  %i.av = load float, ptr %i.au, align 8, !tbaa !52
  tail call void @_ZN16OpenColorIO_v2_520GradingTonePreRender15mids_precomputeERKNS_11GradingToneEff(ptr noundef nonnull align 8 dereferenceable(936) %0, ptr noundef nonnull align 8 dereferenceable(248) %1, float noundef %i.at, float noundef %i.av)
  tail call void @_ZN16OpenColorIO_v2_520GradingTonePreRender26highlightShadow_precomputeERKNS_11GradingToneE(ptr noundef nonnull align 8 dereferenceable(936) %0, ptr noundef nonnull align 8 dereferenceable(248) %1)
  tail call void @_ZN16OpenColorIO_v2_520GradingTonePreRender21whiteBlack_precomputeERKNS_11GradingToneE(ptr noundef nonnull align 8 dereferenceable(936) %0, ptr noundef nonnull align 8 dereferenceable(248) %1)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 916
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !53
  %i.ay = load float, ptr %i.au, align 8, !tbaa !52
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 924
  %i.ba = load float, ptr %i.az, align 4, !tbaa !54
  tail call void @_ZN16OpenColorIO_v2_520GradingTonePreRender20scontrast_precomputeERKNS_11GradingToneEfff(ptr noundef nonnull align 8 dereferenceable(936) %0, ptr noundef nonnull align 8 dereferenceable(248) %1, float noundef %i.ax, float noundef %i.ay, float noundef %i.ba)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define internal fastcc noundef double @_ZN16OpenColorIO_v2_512_GLOBAL__N_116HighlightFwdEvalEdddd(double noundef %0, double noundef %1, double noundef %2, double noundef %3) unnamed_addr #11 {
bb.a:
  %i.a = insertelement <2 x double> <double poison, double -0.000000e+00>, double %2, i64 0
  %i.b = insertelement <2 x double> <double poison, double 0.000000e+00>, double %1, i64 0 ; 3 uses
  %i.c = fsub <2 x double> %i.a, %i.b
  %i.d = insertelement <2 x double> %i.b, double %2, i64 1
  %i.e = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.c, <2 x double> <double 5.000000e-01, double 0.000000e+00>, <2 x double> %i.d) ; 3 uses
  %i.f = fsub double 2.000000e+00, %3             ; 4 uses
  %i.g = fcmp ugt double %i.f, 1.000000e+00
  br i1 %i.g, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = fcmp olt double %i.f, 1.000000e-02
  %i.i = select i1 %i.h, double 1.000000e-02, double %i.f ; 3 uses
  %i.j = fsub double %0, %1                       ; 2 uses
  %i.k = fcmp olt double %0, %1
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = fadd double %1, %i.j
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_116FauxCubicFwdEvalEdddddddd.exit

bb.d:                                             ; preds = %bb.b
  %i.m = extractelement <2 x double> %i.e, i64 0  ; 4 uses
  %i.n = fcmp olt double %0, %i.m
  %i.o = fsub double %i.m, %1                     ; 5 uses
  %i.p = fdiv double %i.j, %i.o                   ; 6 uses
  %i.q = fsub double 1.000000e+00, %i.p
  %i.r = fmul double %i.p, %i.q
  %i.s = fneg double %i.p
  %i.t = tail call double @llvm.fmuladd.f64(double %i.s, double %i.p, double 1.000000e+00)
  %i.u = fsub double %2, %i.m                     ; 5 uses
  %i.v = fadd double %i.u, %i.o
  %i.w = fneg double %i.u
  %i.x = fmul double %i.i, %i.w
  %i.y = tail call double @llvm.fmuladd.f64(double %2, double 2.000000e+00, double %i.x)
  %i.z = fmul double %i.o, %i.y
  %i.aa = fsub double %0, %i.m
  %i.ab = tail call double @llvm.fmuladd.f64(double %1, double 2.000000e+00, double %i.o)
  %i.ac = tail call double @llvm.fmuladd.f64(double %i.ab, double %i.u, double %i.z)
  %i.ad = insertelement <2 x double> <double poison, double 5.000000e-01>, double %i.aa, i64 0
  %i.ae = insertelement <2 x double> poison, double %i.u, i64 0
  %i.af = insertelement <2 x double> %i.ae, double %i.v, i64 1
  %i.ag = fdiv <2 x double> %i.ad, %i.af          ; 3 uses
  %i.ah = extractelement <2 x double> %i.ag, i64 1
  %i.ai = fmul double %i.ac, %i.ah                ; 2 uses
  %i.aj = fmul double %i.p, %i.ai
  %i.ak = fmul double %i.p, %i.aj
  %i.al = tail call double @llvm.fmuladd.f64(double %1, double %i.t, double %i.ak)
  %i.am = tail call double @llvm.fmuladd.f64(double %i.r, double %i.o, double %i.al)
  %i.an = extractelement <2 x double> %i.ag, i64 0 ; 4 uses
  %i.ao = fadd double %i.an, -1.000000e+00
  %i.ap = fmul double %i.i, %i.ao
  %i.aq = fmul double %i.an, %i.ap
  %i.ar = extractelement <2 x double> %i.ag, i64 0
  %i.as = fsub double 1.000000e+00, %i.ar         ; 2 uses
  %i.at = fmul double %i.as, %i.ai
  %i.au = fsub double 2.000000e+00, %i.an
  %i.av = fmul double %2, %i.au
  %i.aw = fmul double %i.an, %i.av
  %i.ax = tail call double @llvm.fmuladd.f64(double %i.at, double %i.as, double %i.aw)
  %i.ay = tail call double @llvm.fmuladd.f64(double %i.aq, double %i.u, double %i.ax)
  %i.az = select i1 %i.n, double %i.am, double %i.ay
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_116FauxCubicFwdEvalEdddddddd.exit

_ZN16OpenColorIO_v2_512_GLOBAL__N_116FauxCubicFwdEvalEdddddddd.exit: ; preds = %bb.c, %bb.d
  %i.ba = phi double [ %i.l, %bb.c ], [ %i.az, %bb.d ]
  %i.bb = fcmp ogt double %0, %2
  %i.bc = fsub double %0, %2
  %i.bd = tail call double @llvm.fmuladd.f64(double %i.bc, double %i.i, double %2)
  %i.be = select i1 %i.bb, double %i.bd, double %i.ba
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.bf = fsub double 2.000000e+00, %i.f          ; 2 uses
  %i.bg = fcmp olt double %i.bf, 1.000000e-02
  %i.bh = select i1 %i.bg, double 1.000000e-02, double %i.bf ; 4 uses
  %i.bi = shufflevector <2 x double> %i.b, <2 x double> %i.e, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.bj = fsub <2 x double> %i.e, %i.bi           ; 5 uses
  %i.bk = extractelement <2 x double> %i.bj, i64 1 ; 3 uses
  %i.bl = fneg double %i.bk
  %i.bm = fmul double %i.bh, %i.bl
  %i.bn = tail call double @llvm.fmuladd.f64(double %2, double 2.000000e+00, double %i.bm)
  %i.bo = fneg double %i.bh
  %i.bp = insertelement <2 x double> poison, double %1, i64 0
  %i.bq = insertelement <2 x double> poison, double %0, i64 0
  %i.br = shufflevector <2 x double> %i.bq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bs = extractelement <2 x double> %i.bj, i64 0 ; 4 uses
  %i.bt = fadd double %i.bk, %i.bs
  %i.bu = fdiv double 5.000000e-01, %i.bt
  %i.bv = tail call double @llvm.fmuladd.f64(double %1, double 2.000000e+00, double %i.bs)
  %i.bw = fmul double %i.bs, %i.bn
  %i.bx = tail call double @llvm.fmuladd.f64(double %i.bv, double %i.bk, double %i.bw)
  %i.by = fmul double %i.bu, %i.bx                ; 5 uses
  %i.bz = fsub double %i.by, %1
  %i.ca = insertelement <2 x double> %i.bp, double %i.by, i64 1
  %i.cb = fsub <2 x double> %i.ca, %i.br          ; 2 uses
  %i.cc = fmul double %i.by, -2.000000e+00
  %i.cd = tail call double @llvm.fmuladd.f64(double %2, double 2.000000e+00, double %i.cc)
  %4 = fsub double %i.by, %2
  %i.ce = fsub double %i.bz, %i.bs
  %i.cf = insertelement <2 x double> poison, double %i.bo, i64 0
  %i.cg = insertelement <2 x double> %i.cf, double %i.bh, i64 1
  %i.ch = shufflevector <2 x double> %i.bj, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ci = insertelement <2 x double> poison, double %i.cd, i64 0
  %i.cj = insertelement <2 x double> %i.ci, double %4, i64 1
  %i.ck = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cg, <2 x double> %i.ch, <2 x double> %i.cj) ; 2 uses
  %i.cl = insertelement <2 x double> %i.ck, double %i.ce, i64 0
  %i.cm = fmul <2 x double> %i.cl, splat (double 4.000000e+00)
  %i.cn = fneg <2 x double> %i.cb
  %i.co = fmul <2 x double> %i.cm, %i.cn
  %i.cp = shufflevector <2 x double> %i.bj, <2 x double> %i.ck, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.cq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cp, <2 x double> %i.cp, <2 x double> %i.co) ; 2 uses
  %i.cr = extractelement <2 x double> %i.cq, i64 0
  %i.cs = tail call double @sqrt(double noundef %i.cr) #16
  %i.ct = extractelement <2 x double> %i.cq, i64 1
  %i.cu = tail call double @sqrt(double noundef %i.ct) #16
  %i.cv = fcmp olt double %0, %1
  br i1 %i.cv, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.cw = fsub double %0, %1
  %i.cx = fadd double %1, %i.cw
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_116FauxCubicRevEvalEdddddddd.exit

bb.g:                                             ; preds = %bb.e
  %i.cy = fcmp olt double %0, %i.by
  %i.cz = fmul <2 x double> %i.cb, splat (double 2.000000e+00)
  %i.da = insertelement <2 x double> poison, double %i.cs, i64 0
  %i.db = insertelement <2 x double> %i.da, double %i.cu, i64 1
  %i.dc = fneg <2 x double> %i.db
  %i.dd = fsub <2 x double> %i.dc, %i.cp
  %i.de = fdiv <2 x double> %i.cz, %i.dd
  %i.df = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.de, <2 x double> %i.bj, <2 x double> %i.bi) ; 2 uses
  %i.dg = extractelement <2 x double> %i.df, i64 0
  %i.dh = extractelement <2 x double> %i.df, i64 1
  %i.di = select i1 %i.cy, double %i.dg, double %i.dh
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_116FauxCubicRevEvalEdddddddd.exit

_ZN16OpenColorIO_v2_512_GLOBAL__N_116FauxCubicRevEvalEdddddddd.exit: ; preds = %bb.f, %bb.g
  %i.dj = phi double [ %i.cx, %bb.f ], [ %i.di, %bb.g ]
  %i.dk = fcmp ogt double %0, %2
  %i.dl = fsub double %0, %2
  %i.dm = fdiv double %i.dl, %i.bh
  %i.dn = fadd double %2, %i.dm
  %i.do = select i1 %i.dk, double %i.dn, double %i.dj
  br label %bb.h

bb.h:                                             ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_116FauxCubicRevEvalEdddddddd.exit, %_ZN16OpenColorIO_v2_512_GLOBAL__N_116FauxCubicFwdEvalEdddddddd.exit
  %.0 = phi double [ %i.be, %_ZN16OpenColorIO_v2_512_GLOBAL__N_116FauxCubicFwdEvalEdddddddd.exit ], [ %i.do, %_ZN16OpenColorIO_v2_512_GLOBAL__N_116FauxCubicRevEvalEdddddddd.exit ]
  ret double %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define internal fastcc noundef double @_ZN16OpenColorIO_v2_512_GLOBAL__N_113ShadowFwdEvalEdddd(double noundef %0, double noundef %1, double noundef %2, double noundef %3) unnamed_addr #11 {
bb.a:
  %i.a = insertelement <2 x double> <double poison, double -0.000000e+00>, double %2, i64 0
  %i.b = insertelement <2 x double> <double poison, double 0.000000e+00>, double %1, i64 0 ; 3 uses
  %i.c = fsub <2 x double> %i.a, %i.b
  %i.d = insertelement <2 x double> %i.b, double %2, i64 1
  %i.e = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.c, <2 x double> <double 5.000000e-01, double 0.000000e+00>, <2 x double> %i.d) ; 3 uses
  %i.f = fcmp ugt double %3, 1.000000e+00
  br i1 %i.f, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = fcmp olt double %3, 1.000000e-02
  %i.h = select i1 %i.g, double 1.000000e-02, double %3 ; 3 uses
  %i.i = fsub double %0, %1                       ; 2 uses
  %i.j = fcmp olt double %0, %1
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = tail call double @llvm.fmuladd.f64(double %i.i, double %i.h, double %1)
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_116FauxCubicFwdEvalEdddddddd.exit

bb.d:                                             ; preds = %bb.b
  %i.l = extractelement <2 x double> %i.e, i64 0  ; 4 uses
  %i.m = fcmp olt double %0, %i.l
  %i.n = fsub double %i.l, %1                     ; 5 uses
  %i.o = fdiv double %i.i, %i.n                   ; 6 uses
  %i.p = fsub double 1.000000e+00, %i.o
  %i.q = fmul double %i.h, %i.p
  %i.r = fmul double %i.o, %i.q
  %i.s = fneg double %i.o
  %i.t = tail call double @llvm.fmuladd.f64(double %i.s, double %i.o, double 1.000000e+00)
  %i.u = fsub double %2, %i.l                     ; 5 uses
  %i.v = fadd double %i.u, %i.n
  %i.w = fmul double %i.h, %i.n
  %i.x = fneg double %i.u
  %i.y = tail call double @llvm.fmuladd.f64(double %2, double 2.000000e+00, double %i.x)
  %i.z = fmul double %i.n, %i.y
  %i.aa = fsub double %0, %i.l
  %i.ab = tail call double @llvm.fmuladd.f64(double %1, double 2.000000e+00, double %i.w)
  %i.ac = tail call double @llvm.fmuladd.f64(double %i.ab, double %i.u, double %i.z)
  %i.ad = insertelement <2 x double> <double poison, double 5.000000e-01>, double %i.aa, i64 0
  %i.ae = insertelement <2 x double> poison, double %i.u, i64 0
  %i.af = insertelement <2 x double> %i.ae, double %i.v, i64 1
  %i.ag = fdiv <2 x double> %i.ad, %i.af          ; 3 uses
  %i.ah = extractelement <2 x double> %i.ag, i64 1
  %i.ai = fmul double %i.ac, %i.ah                ; 2 uses
  %i.aj = fmul double %i.o, %i.ai
  %i.ak = fmul double %i.o, %i.aj
  %i.al = tail call double @llvm.fmuladd.f64(double %1, double %i.t, double %i.ak)
  %i.am = tail call double @llvm.fmuladd.f64(double %i.r, double %i.n, double %i.al)
  %i.an = extractelement <2 x double> %i.ag, i64 0 ; 4 uses
  %i.ao = fadd double %i.an, -1.000000e+00
  %i.ap = fmul double %i.an, %i.ao
  %i.aq = extractelement <2 x double> %i.ag, i64 0
  %i.ar = fsub double 1.000000e+00, %i.aq         ; 2 uses
  %i.as = fmul double %i.ar, %i.ai
  %i.at = fsub double 2.000000e+00, %i.an
  %i.au = fmul double %2, %i.at
  %i.av = fmul double %i.an, %i.au
  %i.aw = tail call double @llvm.fmuladd.f64(double %i.as, double %i.ar, double %i.av)
  %i.ax = tail call double @llvm.fmuladd.f64(double %i.ap, double %i.u, double %i.aw)
  %i.ay = select i1 %i.m, double %i.am, double %i.ax
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_116FauxCubicFwdEvalEdddddddd.exit

bb.e:                                             ; preds = %bb.a
  %i.az = fsub double 2.000000e+00, %3            ; 2 uses
  %i.ba = fcmp olt double %i.az, 1.000000e-02
  %i.bb = select i1 %i.ba, double 1.000000e-02, double %i.az ; 3 uses
  %i.bc = shufflevector <2 x double> %i.b, <2 x double> %i.e, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.bd = fsub <2 x double> %i.e, %i.bc           ; 5 uses
  %i.be = extractelement <2 x double> %i.bd, i64 0 ; 2 uses
  %i.bf = extractelement <2 x double> %i.bd, i64 1 ; 4 uses
  %i.bg = fadd double %i.bf, %i.be
  %i.bh = fdiv double 5.000000e-01, %i.bg
  %i.bi = fneg double %i.bf
  %i.bj = fneg double %i.bb
  %i.bk = insertelement <2 x double> poison, double %1, i64 0
  %i.bl = insertelement <2 x double> poison, double %0, i64 0
  %i.bm = shufflevector <2 x double> %i.bl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bn = fmul double %i.be, %i.bb                ; 2 uses
  %i.bo = insertelement <2 x double> poison, double %2, i64 0
  %i.bp = insertelement <2 x double> %i.bo, double %1, i64 1
  %i.bq = insertelement <2 x double> poison, double %i.bi, i64 0
  %i.br = insertelement <2 x double> %i.bq, double %i.bn, i64 1
  %i.bs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bp, <2 x double> splat (double 2.000000e+00), <2 x double> %i.br) ; 2 uses
  %foldExtExtBinop = fmul <2 x double> %i.bd, %i.bs
  %i.bt = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.bu = extractelement <2 x double> %i.bs, i64 1
  %i.bv = tail call double @llvm.fmuladd.f64(double %i.bu, double %i.bf, double %i.bt)
  %i.bw = fmul double %i.bh, %i.bv                ; 5 uses
  %i.bx = fsub double %i.bw, %1
  %i.by = insertelement <2 x double> %i.bk, double %i.bw, i64 1
  %i.bz = fsub <2 x double> %i.by, %i.bm          ; 2 uses
  %i.ca = fmul double %i.bw, -2.000000e+00
  %i.cb = tail call double @llvm.fmuladd.f64(double %2, double 2.000000e+00, double %i.ca)
  %i.cc = fsub double %i.cb, %i.bf
  %i.cd = fsub double %i.bw, %2
  %i.ce = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.bj, i64 0
  %i.cf = insertelement <2 x double> poison, double %i.bx, i64 0
  %i.cg = insertelement <2 x double> %i.cf, double %i.cd, i64 1
  %i.ch = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ce, <2 x double> %i.bd, <2 x double> %i.cg)
  %i.ci = fmul <2 x double> %i.ch, splat (double 4.000000e+00)
  %i.cj = fneg <2 x double> %i.bz
  %i.ck = fmul <2 x double> %i.ci, %i.cj
  %i.cl = insertelement <2 x double> poison, double %i.bn, i64 0
  %i.cm = insertelement <2 x double> %i.cl, double %i.cc, i64 1 ; 3 uses
  %i.cn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cm, <2 x double> %i.cm, <2 x double> %i.ck) ; 2 uses
  %i.co = extractelement <2 x double> %i.cn, i64 0
  %i.cp = tail call double @sqrt(double noundef %i.co) #16
  %i.cq = extractelement <2 x double> %i.cn, i64 1
  %i.cr = tail call double @sqrt(double noundef %i.cq) #16
  %i.cs = fcmp olt double %0, %1
  br i1 %i.cs, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ct = fsub double %0, %1
  %i.cu = fdiv double %i.ct, %i.bb
  %i.cv = fadd double %1, %i.cu
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_116FauxCubicFwdEvalEdddddddd.exit

bb.g:                                             ; preds = %bb.e
  %i.cw = fcmp olt double %0, %i.bw
  %i.cx = fmul <2 x double> %i.bz, splat (double 2.000000e+00)
  %i.cy = insertelement <2 x double> poison, double %i.cp, i64 0
  %i.cz = insertelement <2 x double> %i.cy, double %i.cr, i64 1
  %i.da = fneg <2 x double> %i.cz
  %i.db = fsub <2 x double> %i.da, %i.cm
  %i.dc = fdiv <2 x double> %i.cx, %i.db
  %i.dd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dc, <2 x double> %i.bd, <2 x double> %i.bc) ; 2 uses
  %i.de = extractelement <2 x double> %i.dd, i64 0
  %i.df = extractelement <2 x double> %i.dd, i64 1
  %i.dg = select i1 %i.cw, double %i.de, double %i.df
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_116FauxCubicFwdEvalEdddddddd.exit

_ZN16OpenColorIO_v2_512_GLOBAL__N_116FauxCubicFwdEvalEdddddddd.exit: ; preds = %bb.g, %bb.f, %bb.d, %bb.c
  %.sink35 = phi double [ %i.ay, %bb.d ], [ %i.k, %bb.c ], [ %i.cv, %bb.f ], [ %i.dg, %bb.g ]
  %i.dh = fcmp ogt double %0, %2
  %i.di = fsub double %0, %2
  %i.dj = fadd double %2, %i.di
  %i.dk = select i1 %i.dh, double %i.dj, double %.sink35
  ret double %i.dk
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN16OpenColorIO_v2_520GradingTonePreRender15mids_precomputeERKNS_11GradingToneEff(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(936) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(248) %1, float noundef %2, float noundef %3) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.a, align 16, !tbaa !56
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.f = load <2 x double>, ptr %i.e, align 8
end_hunk_0
