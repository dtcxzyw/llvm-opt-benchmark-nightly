inline.NumInlined: 239
inline.NumDeleted: 68
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN16OpenColorIO_v2_512_GLOBAL__N_116HighlightFwdEvalEdddd:bb.a
  %i.ds = fcmp ogt double %0, %2
  %i.dt = fsub double %0, %2
  %i.du = fdiv double %i.dt, %i.bi
  %i.dv = fadd double %2, %i.du
  %i.dw = select i1 %i.ds, double %i.dv, double %i.dr
  br label %bb.h

bb.h:                                             ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_116FauxCubicRevEvalEdddddddd.exit, %_ZN16OpenColorIO_v2_512_GLOBAL__N_116FauxCubicFwdEvalEdddddddd.exit
  %.0 = phi double [ %i.bf, %_ZN16OpenColorIO_v2_512_GLOBAL__N_116FauxCubicFwdEvalEdddddddd.exit ], [ %i.dw, %_ZN16OpenColorIO_v2_512_GLOBAL__N_116FauxCubicRevEvalEdddddddd.exit ]
  ret double %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define internal fastcc noundef double @_ZN16OpenColorIO_v2_512_GLOBAL__N_113ShadowFwdEvalEdddd(double noundef %0, double noundef %1, double noundef %2, double noundef %3) unnamed_addr #11 {
bb.a:
  %i.a = fsub double %2, %1
  %i.b = tail call double @llvm.fmuladd.f64(double %i.a, double 5.000000e-01, double %1) ; 6 uses
  %i.c = fcmp ugt double %3, 1.000000e+00
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = fcmp olt double %3, 1.000000e-02
  %i.e = select i1 %i.d, double 1.000000e-02, double %3 ; 3 uses
  %i.f = fsub double %0, %1                       ; 2 uses
  %i.g = fcmp olt double %0, %1
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = tail call double @llvm.fmuladd.f64(double %i.f, double %i.e, double %1)
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_116FauxCubicFwdEvalEdddddddd.exit

bb.d:                                             ; preds = %bb.b
  %i.i = fcmp olt double %0, %i.b
  %i.j = fsub double %i.b, %1                     ; 5 uses
  %i.k = fdiv double %i.f, %i.j                   ; 6 uses
  %i.l = fsub double 1.000000e+00, %i.k
  %i.m = fmul double %i.e, %i.l
  %i.n = fmul double %i.k, %i.m
  %i.o = fneg double %i.k
  %i.p = tail call double @llvm.fmuladd.f64(double %i.o, double %i.k, double 1.000000e+00)
  %i.q = fmul double %i.e, %i.j
  %i.r = fsub double %0, %i.b
  %i.s = fsub double %2, %i.b                     ; 5 uses
  %i.t = fadd double %i.s, %i.j
  %i.u = fneg double %i.s
  %i.v = insertelement <2 x double> poison, double %1, i64 0
  %i.w = insertelement <2 x double> %i.v, double %2, i64 1
  %i.x = insertelement <2 x double> poison, double %i.q, i64 0
  %i.y = insertelement <2 x double> %i.x, double %i.u, i64 1
  %i.z = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.w, <2 x double> splat (double 2.000000e+00), <2 x double> %i.y) ; 2 uses
  %i.aa = extractelement <2 x double> %i.z, i64 1
  %i.ab = fmul double %i.j, %i.aa
  %i.ac = extractelement <2 x double> %i.z, i64 0
  %i.ad = tail call double @llvm.fmuladd.f64(double %i.ac, double %i.s, double %i.ab)
  %i.ae = insertelement <2 x double> <double poison, double 5.000000e-01>, double %i.r, i64 0
  %i.af = insertelement <2 x double> poison, double %i.s, i64 0
  %i.ag = insertelement <2 x double> %i.af, double %i.t, i64 1
  %i.ah = fdiv <2 x double> %i.ae, %i.ag          ; 3 uses
  %i.ai = extractelement <2 x double> %i.ah, i64 0 ; 4 uses
  %i.aj = extractelement <2 x double> %i.ah, i64 1
  %i.ak = fmul double %i.ad, %i.aj                ; 2 uses
  %i.al = fmul double %i.k, %i.ak
  %i.am = fmul double %i.k, %i.al
  %i.an = tail call double @llvm.fmuladd.f64(double %1, double %i.p, double %i.am)
  %i.ao = tail call double @llvm.fmuladd.f64(double %i.n, double %i.j, double %i.an)
  %i.ap = fadd double %i.ai, -1.000000e+00
  %i.aq = fmul double %i.ai, %i.ap
  %i.ar = extractelement <2 x double> %i.ah, i64 0
  %i.as = fsub double 1.000000e+00, %i.ar         ; 2 uses
  %i.at = fmul double %i.as, %i.ak
  %i.au = fsub double 2.000000e+00, %i.ai
  %i.av = fmul double %2, %i.au
  %i.aw = fmul double %i.ai, %i.av
  %i.ax = tail call double @llvm.fmuladd.f64(double %i.at, double %i.as, double %i.aw)
  %i.ay = tail call double @llvm.fmuladd.f64(double %i.aq, double %i.s, double %i.ax)
  %i.az = select i1 %i.i, double %i.ao, double %i.ay
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_116FauxCubicFwdEvalEdddddddd.exit

bb.e:                                             ; preds = %bb.a
  %i.ba = fsub double 2.000000e+00, %3            ; 2 uses
  %i.bb = fcmp olt double %i.ba, 1.000000e-02
  %i.bc = select i1 %i.bb, double 1.000000e-02, double %i.ba ; 3 uses
  %i.bd = insertelement <2 x double> poison, double %2, i64 1 ; 2 uses
  %i.be = insertelement <2 x double> %i.bd, double %i.b, i64 0
  %i.bf = insertelement <2 x double> poison, double %1, i64 0
  %i.bg = insertelement <2 x double> %i.bf, double %i.b, i64 1 ; 2 uses
  %i.bh = fsub <2 x double> %i.be, %i.bg          ; 6 uses
  %i.bi = extractelement <2 x double> %i.bh, i64 0 ; 2 uses
  %i.bj = extractelement <2 x double> %i.bh, i64 1 ; 4 uses
  %i.bk = fadd double %i.bj, %i.bi
  %i.bl = fdiv double 5.000000e-01, %i.bk
  %i.bm = fneg double %i.bj
  %i.bn = fneg double %i.bc
  %i.bo = insertelement <2 x double> poison, double %1, i64 0
  %i.bp = insertelement <2 x double> poison, double %0, i64 0
  %i.bq = shufflevector <2 x double> %i.bp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.br = fmul double %i.bi, %i.bc                ; 2 uses
  %i.bs = insertelement <2 x double> poison, double %2, i64 0
  %i.bt = insertelement <2 x double> %i.bs, double %1, i64 1
  %i.bu = insertelement <2 x double> poison, double %i.bm, i64 0
  %i.bv = insertelement <2 x double> %i.bu, double %i.br, i64 1
  %i.bw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bt, <2 x double> splat (double 2.000000e+00), <2 x double> %i.bv) ; 2 uses
  %foldExtExtBinop = fmul <2 x double> %i.bh, %i.bw
  %i.bx = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.by = extractelement <2 x double> %i.bw, i64 1
  %i.bz = tail call double @llvm.fmuladd.f64(double %i.by, double %i.bj, double %i.bx)
  %i.ca = fmul double %i.bl, %i.bz                ; 5 uses
  %i.cb = insertelement <2 x double> %i.bo, double %i.ca, i64 1
  %i.cc = fsub <2 x double> %i.cb, %i.bq          ; 2 uses
  %i.cd = fmul double %i.ca, -2.000000e+00
  %i.ce = fsub double %i.ca, %1
  %i.cf = insertelement <2 x double> %i.bd, double %i.bn, i64 0
  %i.cg = insertelement <2 x double> %i.bh, double 2.000000e+00, i64 1
  %i.ch = insertelement <2 x double> poison, double %i.ce, i64 0
  %i.ci = insertelement <2 x double> %i.ch, double %i.cd, i64 1
  %i.cj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cf, <2 x double> %i.cg, <2 x double> %i.ci) ; 2 uses
  %foldExtExtBinop38 = fsub <2 x double> %i.cj, %i.bh
  %i.ck = fsub double %i.ca, %2
  %i.cl = fadd double %i.bj, %i.ck
  %i.cm = insertelement <2 x double> %i.cj, double %i.cl, i64 1
  %i.cn = fmul <2 x double> %i.cm, splat (double 4.000000e+00)
  %i.co = fneg <2 x double> %i.cc
  %i.cp = fmul <2 x double> %i.cn, %i.co
  %i.cq = insertelement <2 x double> %foldExtExtBinop38, double %i.br, i64 0 ; 3 uses
  %i.cr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cq, <2 x double> %i.cq, <2 x double> %i.cp) ; 2 uses
  %i.cs = extractelement <2 x double> %i.cr, i64 0
  %i.ct = tail call double @sqrt(double noundef %i.cs) #16, !tbaa !3
  %i.cu = extractelement <2 x double> %i.cr, i64 1
  %i.cv = tail call double @sqrt(double noundef %i.cu) #16, !tbaa !3
  %i.cw = fcmp olt double %0, %1
  br i1 %i.cw, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.cx = fsub double %0, %1
  %i.cy = fdiv double %i.cx, %i.bc
  %i.cz = fadd double %1, %i.cy
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_116FauxCubicFwdEvalEdddddddd.exit

bb.g:                                             ; preds = %bb.e
  %i.da = fcmp olt double %0, %i.ca
  %i.db = fmul <2 x double> %i.cc, splat (double 2.000000e+00)
  %i.dc = insertelement <2 x double> poison, double %i.ct, i64 0
  %i.dd = insertelement <2 x double> %i.dc, double %i.cv, i64 1
  %i.de = fneg <2 x double> %i.dd
  %i.df = fsub <2 x double> %i.de, %i.cq
  %i.dg = fdiv <2 x double> %i.db, %i.df
  %i.dh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dg, <2 x double> %i.bh, <2 x double> %i.bg) ; 2 uses
  %i.di = extractelement <2 x double> %i.dh, i64 0
  %i.dj = extractelement <2 x double> %i.dh, i64 1
  %i.dk = select i1 %i.da, double %i.di, double %i.dj
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_116FauxCubicFwdEvalEdddddddd.exit

_ZN16OpenColorIO_v2_512_GLOBAL__N_116FauxCubicFwdEvalEdddddddd.exit: ; preds = %bb.g, %bb.f, %bb.d, %bb.c
  %.sink35 = phi double [ %i.az, %bb.d ], [ %i.h, %bb.c ], [ %i.cz, %bb.f ], [ %i.dk, %bb.g ]
  %i.dl = fcmp ogt double %0, %2
  %i.dm = fsub double %0, %2
  %i.dn = fadd double %2, %i.dm
  %i.do = select i1 %i.dl, double %i.dn, double %.sink35
  ret double %i.do
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN16OpenColorIO_v2_520GradingTonePreRender15mids_precomputeERKNS_11GradingToneEff(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(936) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(248) %1, float noundef %2, float noundef %3) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.a, align 16, !tbaa !53
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.f = load double, ptr %i.e, align 8
  %i.g = fptrunc double %i.f to float
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.i = load double, ptr %i.h, align 8
  %i.j = fptrunc double %i.i to float
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.l = load double, ptr %i.k, align 8
  %i.m = fptrunc double %i.l to float
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.o = load double, ptr %i.n, align 8
  %i.p = fptrunc double %i.o to float
  %i.q = fsub float %2, %3
  %i.r = fmul float %i.q, f0x3F733333             ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.t = load double, ptr %i.s, align 8
  %i.u = fptrunc double %i.t to float             ; 2 uses
  %i.v = fcmp ogt float %i.u, f0x3C23D70A
  %.sroa.speculated2.i163 = select i1 %i.v, float %i.u, float f0x3C23D70A ; 2 uses
  %i.w = fcmp olt float %i.r, %.sroa.speculated2.i163
  %.sroa.speculated.i164 = select i1 %i.w, float %i.r, float %.sroa.speculated2.i163 ; 3 uses
  %i.x = fneg float %.sroa.speculated.i164        ; 2 uses
  %i.y = insertelement <2 x float> poison, float %.sroa.speculated.i164, i64 0
  %i.z = insertelement <2 x float> %i.y, float %i.x, i64 1
  %i.aa = insertelement <2 x float> poison, float %3, i64 0
  %i.ab = insertelement <2 x float> %i.aa, float %2, i64 1
  %i.ac = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.z, <2 x float> splat (float 5.100000e-01), <2 x float> %i.ab) ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ae = fadd float %2, %3
  %i.af = fmul float %i.ae, 5.000000e-01
  %i.ag = insertelement <2 x float> <float 1.000000e+00, float poison>, float %3, i64 1
  %i.ah = extractelement <2 x float> %i.ac, i64 0 ; 2 uses
  %i.ai = extractelement <2 x float> %i.ac, i64 1 ; 2 uses
  %i.aj = load double, ptr %i.ad, align 8
  %i.ak = fptrunc double %i.aj to float           ; 2 uses
  %i.al = fcmp olt float %i.ah, %i.ak
  %.sroa.speculated2.i165 = select i1 %i.al, float %i.ak, float %i.ah ; 2 uses
  %i.am = fcmp olt float %i.ai, %.sroa.speculated2.i165
  %.sroa.speculated.i166 = select i1 %i.am, float %i.ai, float %.sroa.speculated2.i165 ; 6 uses
  %i.an = insertelement <2 x float> <float 1.000000e+00, float poison>, float %.sroa.speculated.i166, i64 1
  %i.ao = fcmp ugt float %.sroa.speculated.i166, %i.af
  br label %bb.c

bb.b:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void

bb.c:                                             ; preds = %bb.a, %bb.l
  %.0.idx168 = phi i64 [ 0, %bb.a ], [ %.0.add, %bb.l ] ; 2 uses
  %.0.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0.idx168
  %i.ap = load i32, ptr %.0.ptr, align 4, !tbaa !53 ; 2 uses
  %i.aq = zext i32 %i.ap to i64                   ; 3 uses
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.aq ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 20
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %i.aq ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 20
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %i.aq ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 20
  switch i32 %i.ap, label %_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE.exit [
    i32 0, label %bb.d
    i32 1, label %bb.e
    i32 2, label %bb.f
    i32 3, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c
  br label %_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE.exit

bb.e:                                             ; preds = %bb.c
  br label %_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE.exit

bb.f:                                             ; preds = %bb.c
  br label %_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE.exit

bb.g:                                             ; preds = %bb.c
  br label %_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE.exit

_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.0.i = phi float [ %i.p, %bb.d ], [ %i.m, %bb.e ], [ %i.j, %bb.f ], [ %i.g, %bb.g ], [ 0.000000e+00, %bb.c ] ; 2 uses
  %i.bh = fcmp ogt float %.0.i, f0x3C23D70A
  %.sroa.speculated2.i = select i1 %i.bh, float %.0.i, float f0x3C23D70A ; 2 uses
  %i.bi = fcmp ogt float %.sroa.speculated2.i, 1.990000e+00
  %.sroa.speculated.i = select i1 %i.bi, float 1.990000e+00, float %.sroa.speculated2.i ; 2 uses
  %i.bj = fcmp une float %.sroa.speculated.i, 1.000000e+00
  br i1 %i.bj, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE.exit
  store float %3, ptr %i.ar, align 8, !tbaa !24
  store float %2, ptr %i.av, align 4, !tbaa !24
  store float %3, ptr %i.aw, align 8, !tbaa !24
  store float 1.000000e+00, ptr %i.bc, align 8, !tbaa !24
  store float 1.000000e+00, ptr %i.bg, align 4, !tbaa !24
  %i.bk = fadd float %.sroa.speculated.i, -1.000000e+00
  %i.bl = fmul float %i.bk, f0x3F666666           ; 4 uses
  %4 = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.bl, i64 0
  %5 = insertelement <2 x float> <float -1.000000e+00, float poison>, float %i.bl, i64 1
  %6 = fsub <2 x float> %4, %5                    ; 9 uses
  store <2 x float> %6, ptr %i.be, align 8, !tbaa !24
  %i.bm = insertelement <2 x float> poison, float %i.bl, i64 0
  %7 = insertelement <2 x float> %i.bm, float %i.x, i64 1
  %8 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %7, <2 x float> <float 4.000000e-01, float 5.000000e-01>, <2 x float> %i.an) ; 5 uses
  %i.bn = extractelement <2 x float> %8, i64 1    ; 6 uses
  store float %i.bn, ptr %i.as, align 4, !tbaa !24
  %i.bo = fadd float %.sroa.speculated.i164, %i.bn ; 6 uses
  store float %i.bo, ptr %i.au, align 8, !tbaa !24
  %i.bp = fsub float %i.bo, %i.bn
  %i.bq = insertelement <2 x float> poison, float %i.bp, i64 0
  %i.br = shufflevector <2 x float> %i.bq, <2 x float> poison, <2 x i32> zeroinitializer
  %9 = shufflevector <2 x float> %8, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.br, <2 x float> <float 2.500000e-01, float 7.500000e-01>, <2 x float> %9) ; 7 uses
  %i.bt = extractelement <2 x float> %i.bs, i64 1 ; 4 uses
  %i.bu = extractelement <2 x float> %i.bs, i64 0 ; 4 uses
  store <2 x float> %i.bs, ptr %i.at, align 8, !tbaa !24
  %10 = extractelement <2 x float> %8, i64 0      ; 2 uses
  store float %10, ptr %i.bd, align 4, !tbaa !24
  %i.bv = fneg float %i.bl
  %i.bw = tail call float @llvm.fmuladd.f32(float %i.bv, float 4.000000e-01, float 1.000000e+00) ; 4 uses
  store float %i.bw, ptr %i.bf, align 8, !tbaa !24
  br i1 %i.ao, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %11 = fsub <2 x float> %8, %i.ag                ; 2 uses
  %12 = extractelement <2 x float> %11, i64 0     ; 2 uses
  %13 = extractelement <2 x float> %11, i64 1     ; 2 uses
  %i.bx = fmul float %12, %13
  %14 = fsub float %i.bu, %i.bn                   ; 2 uses
  %foldExtExtBinop = fsub <2 x float> %6, %8
  %15 = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.by = tail call float @llvm.fmuladd.f32(float %15, float 5.000000e-01, float %12)
  %i.bz = fmul float %i.by, %14
  %16 = insertelement <2 x float> %i.bs, float %.sroa.speculated.i166, i64 0
  %i.ca = insertelement <2 x float> %i.bs, float %.sroa.speculated.i166, i64 1
  %17 = fsub <2 x float> %16, %i.ca
  %i.cb = fadd <2 x float> %6, splat (float -1.000000e+00)
  %i.cc = fsub float %2, %i.bo                    ; 2 uses
  %i.cd = fmul float %i.cc, 5.000000e-01
  %i.ce = fsub float %i.bo, %i.bt                 ; 2 uses
  %i.cf = insertelement <2 x float> %6, float %i.bx, i64 0
  %i.cg = insertelement <2 x float> <float poison, float -1.000000e+00>, float %i.bz, i64 0
  %i.ch = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cf, <2 x float> splat (float 5.000000e-01), <2 x float> %i.cg) ; 2 uses
  %i.ci = extractelement <2 x float> %i.ch, i64 1
  %i.cj = fmul float %i.ci, %i.ce
  %i.ck = fsub float %i.cj, %i.cd
  %i.cl = fmul <2 x float> %i.cb, %17
  %i.cm = insertelement <2 x float> %i.ch, float %i.ck, i64 1
  %i.cn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cl, <2 x float> splat (float 5.000000e-01), <2 x float> %i.cm) ; 2 uses
  %shift = shufflevector <2 x float> %i.cn, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop173 = fadd <2 x float> %shift, %i.cn
  %i.co = extractelement <2 x float> %foldExtExtBinop173, i64 0
  %i.cp = fsub float %2, %i.bt
  %i.cq = fmul float %i.cp, -5.000000e-01
  %i.cr = fdiv float %i.co, %i.cq                 ; 2 uses
  store float %i.cr, ptr %i.bf, align 8, !tbaa !24
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.cs = fsub float %2, %i.bo                    ; 2 uses
  %i.ct = fadd float %i.bw, -1.000000e+00         ; 2 uses
  %i.cu = fmul float %i.ct, %i.cs
  %i.cv = fsub float %i.bo, %i.bt                 ; 2 uses
  %18 = extractelement <2 x float> %6, i64 1
  %i.cw = fsub float %18, %i.bw
  %i.cx = tail call float @llvm.fmuladd.f32(float %i.cw, float 5.000000e-01, float %i.ct)
  %i.cy = fmul float %i.cx, %i.cv
  %i.cz = tail call float @llvm.fmuladd.f32(float %i.cu, float 5.000000e-01, float %i.cy)
  %19 = insertelement <2 x float> %i.bs, float %.sroa.speculated.i166, i64 0
  %i.da = insertelement <2 x float> %i.bs, float %.sroa.speculated.i166, i64 1
  %20 = fsub <2 x float> %19, %i.da
  %i.db = fadd <2 x float> %6, splat (float -1.000000e+00)
  %i.dc = fsub float %i.bn, %3                    ; 2 uses
  %i.dd = fmul float %i.dc, 5.000000e-01
  %21 = fsub float %i.bu, %i.bn                   ; 2 uses
  %i.de = extractelement <2 x float> %6, i64 0
  %i.df = tail call float @llvm.fmuladd.f32(float %i.de, float 5.000000e-01, float -1.000000e+00)
  %i.dg = fmul float %i.df, %21
  %i.dh = fsub float %i.dg, %i.dd
  %i.di = fmul <2 x float> %i.db, %20
  %i.dj = insertelement <2 x float> poison, float %i.dh, i64 0
  %i.dk = insertelement <2 x float> %i.dj, float %i.cz, i64 1
  %i.dl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.di, <2 x float> splat (float 5.000000e-01), <2 x float> %i.dk) ; 2 uses
  %shift177 = shufflevector <2 x float> %i.dl, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop178 = fadd <2 x float> %i.dl, %shift177
  %i.dm = extractelement <2 x float> %foldExtExtBinop178, i64 0
  %i.dn = fsub float %i.bu, %3
  %i.do = fmul float %i.dn, -5.000000e-01
  %i.dp = fdiv float %i.dm, %i.do                 ; 2 uses
  store float %i.dp, ptr %i.bd, align 4, !tbaa !24
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pre-phi171 = phi float [ %i.cs, %bb.j ], [ %i.cc, %bb.i ]
  %.pre-phi170 = phi float [ %i.cv, %bb.j ], [ %i.ce, %bb.i ]
  %.pre-phi169 = phi float [ %21, %bb.j ], [ %14, %bb.i ]
  %.pre-phi = phi float [ %i.dc, %bb.j ], [ %13, %bb.i ]
  %i.dq = phi float [ %i.bw, %bb.j ], [ %i.cr, %bb.i ] ; 2 uses
  %i.dr = phi float [ %i.dp, %bb.j ], [ %10, %bb.i ] ; 2 uses
  %i.ds = fadd float %i.dr, 1.000000e+00
  %i.dt = fmul float %i.ds, %.pre-phi
  %i.du = tail call float @llvm.fmuladd.f32(float %i.dt, float 5.000000e-01, float %3) ; 2 uses
  store float %i.du, ptr %i.ax, align 4, !tbaa !24
  %22 = extractelement <2 x float> %6, i64 0      ; 2 uses
  %i.dv = fadd float %i.dr, %22
  %i.dw = fmul float %i.dv, %.pre-phi169
  %i.dx = tail call float @llvm.fmuladd.f32(float %i.dw, float 5.000000e-01, float %i.du) ; 2 uses
  store float %i.dx, ptr %i.ay, align 8, !tbaa !24
  %23 = extractelement <2 x float> %6, i64 1      ; 2 uses
  %i.dy = fadd float %22, %23
  %i.dz = fsub float %i.bt, %i.bu
  %i.ea = fmul float %i.dy, %i.dz
  %i.eb = tail call float @llvm.fmuladd.f32(float %i.ea, float 5.000000e-01, float %i.dx) ; 2 uses
  store float %i.eb, ptr %i.az, align 4, !tbaa !24
  %i.ec = fadd float %23, %i.dq
  %i.ed = fmul float %i.ec, %.pre-phi170
  %i.ee = tail call float @llvm.fmuladd.f32(float %i.ed, float 5.000000e-01, float %i.eb) ; 2 uses
  store float %i.ee, ptr %i.ba, align 8, !tbaa !24
  %i.ef = fadd float %i.dq, 1.000000e+00
  %i.eg = fmul float %i.ef, %.pre-phi171
  %i.eh = tail call float @llvm.fmuladd.f32(float %i.eg, float 5.000000e-01, float %i.ee)
  store float %i.eh, ptr %i.bb, align 4, !tbaa !24
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE.exit
  %.0.add = add nuw nsw i64 %.0.idx168, 4         ; 2 uses
  %.not = icmp eq i64 %.0.add, 16
  br i1 %.not, label %bb.b, label %bb.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN16OpenColorIO_v2_520GradingTonePreRender26highlightShadow_precomputeERKNS_11GradingToneE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(936) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(248) %1) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.l = load double, ptr %i.g, align 8
  %i.m = fptrunc double %i.l to float
  %i.n = load double, ptr %i.k, align 8
  %i.o = fptrunc double %i.n to float
  %i.p = load double, ptr %i.f, align 8
  %i.q = fptrunc double %i.p to float
  %i.r = load double, ptr %i.j, align 8
  %i.s = fptrunc double %i.r to float
  %i.t = load double, ptr %i.e, align 8
  %i.u = fptrunc double %i.t to float
  %i.v = load double, ptr %i.i, align 8
  %i.w = fptrunc double %i.v to float
  %i.x = load double, ptr %i.d, align 8
  %i.y = fptrunc double %i.x to float
  %i.z = load double, ptr %i.h, align 8
  %i.aa = fptrunc double %i.z to float
  br label %_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE.exit

bb.b:                                             ; preds = %bb.ai
  ret void

_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE.exit: ; preds = %bb.a, %bb.ai
  %.not = phi i1 [ false, %bb.a ], [ true, %bb.ai ]
  %.0.idx126.sroa.phi.sroa.speculated = phi i8 [ 0, %bb.a ], [ 1, %bb.ai ] ; 2 uses
  %i.ab = trunc nuw i8 %.0.idx126.sroa.phi.sroa.speculated to i1 ; 26 uses
  %i.ac = zext nneg i8 %.0.idx126.sroa.phi.sroa.speculated to i64 ; 3 uses
  %i.ad = getelementptr inbounds nuw [48 x i8], ptr %i.a, i64 %i.ac ; 14 uses
  %i.ae = getelementptr inbounds nuw [48 x i8], ptr %i.b, i64 %i.ac ; 14 uses
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %i.ac ; 9 uses
  %.in.idx = select i1 %i.ab, i64 0, i64 16
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 %.in.idx ; 4 uses
  %.in95.v = select i1 %i.ab, i64 8, i64 24
  %.in95 = getelementptr inbounds nuw i8, ptr %0, i64 %.in95.v ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 4 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 4 ; 2 uses
  %i.al = select i1 %i.ab, float %i.o, float %i.m ; 4 uses
  %i.am = fsub float 2.000000e+00, %i.al          ; 6 uses
  %storemerge = select i1 %i.ab, float %i.al, float %i.am ; 3 uses
  %i.an = fcmp une float %storemerge, 1.000000e+00
  br i1 %i.an, label %bb.c, label %_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE.exit.1

bb.c:                                             ; preds = %_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE.exit
  %i.ao = load double, ptr %.in, align 8, !tbaa !55
  %i.ap = fptrunc double %i.ao to float           ; 2 uses
  %i.aq = load double, ptr %.in95, align 8, !tbaa !55
  %i.ar = fptrunc double %i.aq to float           ; 2 uses
  %i.as = select i1 %i.ab, float %i.ar, float %i.ap ; 4 uses
  store float %i.as, ptr %i.ad, align 8, !tbaa !24
  %i.at = select i1 %i.ab, float %i.ap, float %i.ar ; 3 uses
  store float %i.at, ptr %i.ah, align 8, !tbaa !24
  store float %i.as, ptr %i.ae, align 8, !tbaa !24
  store float %i.at, ptr %i.aj, align 8, !tbaa !24
  %i.au = fsub float %i.at, %i.as
  %i.av = tail call float @llvm.fmuladd.f32(float %i.au, float 5.000000e-01, float %i.as)
  store float %i.av, ptr %i.ag, align 4, !tbaa !24
  %i.aw = fcmp olt float %storemerge, 1.000000e+00
  br i1 %i.aw, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  br i1 %i.ab, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.ax = fcmp ogt float %i.al, f0x3C23D70A
  %.sroa.speculated113 = select i1 %i.ax, float %i.al, float f0x3C23D70A
  br label %bb.f

.critedge:                                        ; preds = %bb.d
  %i.ay = fcmp ogt float %i.am, f0x3C23D70A
  %.sroa.speculated109 = select i1 %i.ay, float %i.am, float f0x3C23D70A
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.critedge
  %.sink = phi float [ %.sroa.speculated113, %bb.e ], [ 1.000000e+00, %.critedge ] ; 2 uses
  %i.az = phi float [ 1.000000e+00, %bb.e ], [ %.sroa.speculated109, %.critedge ] ; 2 uses
  store float %.sink, ptr %i.af, align 8, !tbaa !24
  store float %i.az, ptr %i.ak, align 4, !tbaa !24
  %i.ba = load float, ptr %i.ah, align 8, !tbaa !24 ; 2 uses
  %i.bb = load float, ptr %i.ad, align 8, !tbaa !24 ; 2 uses
  %i.bc = fsub float %i.ba, %i.bb
  %i.bd = fdiv float 5.000000e-01, %i.bc
  %i.be = load float, ptr %i.ae, align 8, !tbaa !24
  %i.bf = load float, ptr %i.ag, align 4, !tbaa !24 ; 2 uses
  %i.bg = fsub float %i.bf, %i.bb                 ; 2 uses
  %i.bh = fmul float %.sink, %i.bg
  %i.bi = tail call float @llvm.fmuladd.f32(float %i.be, float 2.000000e+00, float %i.bh)
  %i.bj = fsub float %i.ba, %i.bf                 ; 2 uses
  %i.bk = load float, ptr %i.aj, align 8, !tbaa !24
  %i.bl = fneg float %i.bj
  %i.bm = fmul float %i.az, %i.bl
  %i.bn = tail call float @llvm.fmuladd.f32(float %i.bk, float 2.000000e+00, float %i.bm)
  %i.bo = fmul float %i.bg, %i.bn
  %i.bp = tail call float @llvm.fmuladd.f32(float %i.bi, float %i.bj, float %i.bo)
  %i.bq = fmul float %i.bd, %i.bp
  br label %.sink.split

bb.g:                                             ; preds = %bb.c
  %i.br = fcmp ogt float %storemerge, 1.000000e+00
  br i1 %i.br, label %bb.h, label %_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE.exit.1

bb.h:                                             ; preds = %bb.g
  br i1 %i.ab, label %bb.i, label %.critedge97

bb.i:                                             ; preds = %bb.h
  %i.bs = fcmp ogt float %i.am, f0x3C23D70A
  %.sroa.speculated104 = select i1 %i.bs, float %i.am, float f0x3C23D70A
  br label %bb.j

.critedge97:                                      ; preds = %bb.h
  %i.bt = fsub float 2.000000e+00, %i.am          ; 2 uses
  %i.bu = fcmp ogt float %i.bt, f0x3C23D70A
  %.sroa.speculated = select i1 %i.bu, float %i.bt, float f0x3C23D70A
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.critedge97
  %.sink127 = phi float [ %.sroa.speculated104, %bb.i ], [ 1.000000e+00, %.critedge97 ] ; 2 uses
  %i.bv = phi float [ 1.000000e+00, %bb.i ], [ %.sroa.speculated, %.critedge97 ] ; 2 uses
  store float %.sink127, ptr %i.af, align 8, !tbaa !24
  store float %i.bv, ptr %i.ak, align 4, !tbaa !24
  %i.bw = load <2 x float>, ptr %i.ag, align 4, !tbaa !24
  %i.bx = load <2 x float>, ptr %i.ad, align 8, !tbaa !24
  %i.by = fsub <2 x float> %i.bw, %i.bx           ; 2 uses
  %i.bz = extractelement <2 x float> %i.by, i64 0 ; 3 uses
  %i.ca = extractelement <2 x float> %i.by, i64 1 ; 3 uses
  %i.cb = fadd float %i.ca, %i.bz
  %i.cc = fdiv float 5.000000e-01, %i.cb
  %i.cd = load float, ptr %i.ae, align 8, !tbaa !24
  %i.ce = fmul float %i.bz, %.sink127
  %i.cf = tail call float @llvm.fmuladd.f32(float %i.cd, float 2.000000e+00, float %i.ce)
  %i.cg = load float, ptr %i.aj, align 8, !tbaa !24
  %i.ch = fneg float %i.ca
  %i.ci = fmul float %i.bv, %i.ch
  %i.cj = tail call float @llvm.fmuladd.f32(float %i.cg, float 2.000000e+00, float %i.ci)
  %i.ck = fmul float %i.bz, %i.cj
  %i.cl = tail call float @llvm.fmuladd.f32(float %i.cf, float %i.ca, float %i.ck)
  %i.cm = fmul float %i.cc, %i.cl
  br label %.sink.split

.sink.split:                                      ; preds = %bb.j, %bb.f
  %.sink128 = phi float [ %i.bq, %bb.f ], [ %i.cm, %bb.j ]
  store float %.sink128, ptr %i.ai, align 4, !tbaa !24
  br label %_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE.exit.1

_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE.exit.1: ; preds = %.sink.split, %bb.g, %_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE.exit
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ad, i64 12 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ad, i64 20 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ae, i64 12 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ae, i64 20 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.af, i64 12 ; 2 uses
  %i.cv = select i1 %i.ab, float %i.s, float %i.q ; 4 uses
  %i.cw = fsub float 2.000000e+00, %i.cv          ; 6 uses
  %storemerge.1 = select i1 %i.ab, float %i.cv, float %i.cw ; 3 uses
  %i.cx = fcmp une float %storemerge.1, 1.000000e+00
  br i1 %i.cx, label %bb.k, label %_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE.exit.2

bb.k:                                             ; preds = %_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE.exit.1
  %i.cy = load double, ptr %.in, align 8, !tbaa !55
  %i.cz = fptrunc double %i.cy to float           ; 2 uses
  %i.da = load double, ptr %.in95, align 8, !tbaa !55
  %i.db = fptrunc double %i.da to float           ; 2 uses
  %i.dc = select i1 %i.ab, float %i.db, float %i.cz ; 4 uses
  store float %i.dc, ptr %i.cn, align 4, !tbaa !24
  %i.dd = select i1 %i.ab, float %i.cz, float %i.db ; 3 uses
  store float %i.dd, ptr %i.cp, align 4, !tbaa !24
  store float %i.dc, ptr %i.cq, align 4, !tbaa !24
  store float %i.dd, ptr %i.cs, align 4, !tbaa !24
end_hunk_0
