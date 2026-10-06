Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/GradingTone?download=true
inline.NumInlined: 239
inline.NumDeleted: 68
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN16OpenColorIO_v2_512_GLOBAL__N_113ShadowFwdEvalEdddd:bb.a
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
  %i.g = fptrunc <2 x double> %i.f to <2 x float> ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.i = load <2 x double>, ptr %i.h, align 8
  %i.j = fptrunc <2 x double> %i.i to <2 x float> ; 2 uses
  %i.k = fsub float %2, %3
  %i.l = fmul float %i.k, f0x3F733333             ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.n = load double, ptr %i.m, align 8
  %i.o = fptrunc double %i.n to float             ; 2 uses
  %i.p = fcmp ogt float %i.o, f0x3C23D70A
  %.sroa.speculated2.i163 = select i1 %i.p, float %i.o, float f0x3C23D70A ; 2 uses
  %i.q = fcmp olt float %i.l, %.sroa.speculated2.i163
  %.sroa.speculated.i164 = select i1 %i.q, float %i.l, float %.sroa.speculated2.i163 ; 3 uses
  %i.r = fneg float %.sroa.speculated.i164        ; 2 uses
  %i.s = insertelement <2 x float> poison, float %.sroa.speculated.i164, i64 0
  %i.t = insertelement <2 x float> %i.s, float %i.r, i64 1
  %i.u = insertelement <2 x float> poison, float %3, i64 0
  %i.v = insertelement <2 x float> %i.u, float %2, i64 1
  %i.w = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.t, <2 x float> splat (float 5.100000e-01), <2 x float> %i.v) ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.y = fadd float %2, %3
  %i.z = fmul float %i.y, 5.000000e-01
  %i.aa = insertelement <2 x float> <float 1.000000e+00, float poison>, float %3, i64 1
  %i.ab = extractelement <2 x float> %i.w, i64 0  ; 2 uses
  %i.ac = extractelement <2 x float> %i.w, i64 1  ; 2 uses
  %i.ad = extractelement <2 x float> %i.g, i64 0
  %i.ae = extractelement <2 x float> %i.g, i64 1
  %i.af = extractelement <2 x float> %i.j, i64 0
  %i.ag = extractelement <2 x float> %i.j, i64 1
  %i.ah = load double, ptr %i.x, align 8
  %i.ai = fptrunc double %i.ah to float           ; 2 uses
  %i.aj = fcmp olt float %i.ab, %i.ai
  %.sroa.speculated2.i165 = select i1 %i.aj, float %i.ai, float %i.ab ; 2 uses
  %i.ak = fcmp olt float %i.ac, %.sroa.speculated2.i165
  %.sroa.speculated.i166 = select i1 %i.ak, float %i.ac, float %.sroa.speculated2.i165 ; 6 uses
  %i.al = insertelement <2 x float> poison, float %i.r, i64 1
  %i.am = insertelement <2 x float> <float 1.000000e+00, float poison>, float %.sroa.speculated.i166, i64 1
  %i.an = fcmp ugt float %.sroa.speculated.i166, %i.z
  br label %bb.c

bb.b:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void

bb.c:                                             ; preds = %bb.a, %bb.l
  %.0.idx168 = phi i64 [ 0, %bb.a ], [ %.0.add, %bb.l ] ; 2 uses
  %.0.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0.idx168
  %i.ao = load i32, ptr %.0.ptr, align 4, !tbaa !56 ; 2 uses
  %i.ap = zext i32 %i.ao to i64                   ; 3 uses
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.ap ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 20
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %i.ap ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 20
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %i.ap ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 12
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 2 uses
  switch i32 %i.ao, label %_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE.exit [
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
  %.0.i = phi float [ %i.af, %bb.d ], [ %i.ag, %bb.e ], [ %i.ad, %bb.f ], [ %i.ae, %bb.g ], [ 0.000000e+00, %bb.c ] ; 2 uses
  %i.bh = fcmp ogt float %.0.i, f0x3C23D70A
  %.sroa.speculated2.i = select i1 %i.bh, float %.0.i, float f0x3C23D70A ; 2 uses
  %i.bi = fcmp ogt float %.sroa.speculated2.i, 1.990000e+00
  %.sroa.speculated.i = select i1 %i.bi, float 1.990000e+00, float %.sroa.speculated2.i ; 2 uses
  %i.bj = fcmp une float %.sroa.speculated.i, 1.000000e+00
  br i1 %i.bj, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE.exit
  store float %3, ptr %i.aq, align 8, !tbaa !19
  store float %2, ptr %i.av, align 4, !tbaa !19
  store float %3, ptr %i.aw, align 8, !tbaa !19
  store float 1.000000e+00, ptr %i.bc, align 8, !tbaa !19
  %i.bk = fadd float %.sroa.speculated.i, -1.000000e+00
  %i.bl = fmul float %i.bk, f0x3F666666           ; 4 uses
  %i.bm = fadd float %i.bl, 1.000000e+00          ; 7 uses
  store float %i.bm, ptr %i.be, align 8, !tbaa !19
  %i.bn = fsub float 1.000000e+00, %i.bl          ; 7 uses
  store float %i.bn, ptr %i.bf, align 4, !tbaa !19
  %i.bo = insertelement <2 x float> %i.al, float %i.bl, i64 0
  %i.bp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bo, <2 x float> <float 4.000000e-01, float 5.000000e-01>, <2 x float> %i.am) ; 4 uses
  %i.bq = extractelement <2 x float> %i.bp, i64 1 ; 6 uses
  store float %i.bq, ptr %i.ar, align 4, !tbaa !19
  %i.br = fadd float %.sroa.speculated.i164, %i.bq ; 6 uses
  store float %i.br, ptr %i.au, align 8, !tbaa !19
  %i.bs = fsub float %i.br, %i.bq
  %i.bt = insertelement <2 x float> poison, float %i.bs, i64 0
  %i.bu = shufflevector <2 x float> %i.bt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bv = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bu, <2 x float> <float 2.500000e-01, float 7.500000e-01>, <2 x float> %i.bv) ; 2 uses
  %i.bx = extractelement <2 x float> %i.bw, i64 1 ; 7 uses
  %i.by = extractelement <2 x float> %i.bw, i64 0 ; 7 uses
  store float %i.by, ptr %i.as, align 8, !tbaa !19
  store float %i.bx, ptr %i.at, align 4, !tbaa !19
  %i.bz = extractelement <2 x float> %i.bp, i64 0 ; 3 uses
  store float %i.bz, ptr %i.bd, align 4, !tbaa !19
  %i.ca = fneg float %i.bl
  %4 = insertelement <2 x float> <float poison, float -0.000000e+00>, float %i.ca, i64 0
  %5 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %4, <2 x float> <float 4.000000e-01, float 0.000000e+00>, <2 x float> splat (float 1.000000e+00)) ; 2 uses
  store <2 x float> %5, ptr %i.bg, align 8, !tbaa !19
  br i1 %i.an, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cb = fsub <2 x float> %i.bp, %i.aa           ; 2 uses
  %i.cc = extractelement <2 x float> %i.cb, i64 0 ; 2 uses
  %i.cd = extractelement <2 x float> %i.cb, i64 1 ; 2 uses
  %i.ce = fmul float %i.cc, %i.cd
  %i.cf = fsub float %i.by, %i.bq                 ; 2 uses
  %i.cg = fsub float %i.bm, %i.bz
  %i.ch = tail call float @llvm.fmuladd.f32(float %i.cg, float 5.000000e-01, float %i.cc)
  %i.ci = fmul float %i.ch, %i.cf
  %i.cj = tail call float @llvm.fmuladd.f32(float %i.ce, float 5.000000e-01, float %i.ci)
  %i.ck = fsub float %.sroa.speculated.i166, %i.by
  %i.cl = fadd float %i.bm, -1.000000e+00
  %i.cm = fmul float %i.cl, %i.ck
  %i.cn = tail call float @llvm.fmuladd.f32(float %i.cm, float 5.000000e-01, float %i.cj)
  %i.co = fsub float %2, %i.br                    ; 2 uses
  %i.cp = fmul float %i.co, 5.000000e-01
  %i.cq = fsub float %i.br, %i.bx                 ; 2 uses
  %i.cr = tail call float @llvm.fmuladd.f32(float %i.bn, float 5.000000e-01, float -1.000000e+00)
  %i.cs = fmul float %i.cr, %i.cq
  %i.ct = fsub float %i.cs, %i.cp
  %i.cu = fsub float %i.bx, %.sroa.speculated.i166
  %i.cv = fadd float %i.bn, -1.000000e+00
  %i.cw = fmul float %i.cv, %i.cu
  %i.cx = tail call float @llvm.fmuladd.f32(float %i.cw, float 5.000000e-01, float %i.ct)
  %i.cy = fadd float %i.cx, %i.cn
  %i.cz = fsub float %2, %i.bx
  %i.da = fmul float %i.cz, -5.000000e-01
  %i.db = fdiv float %i.cy, %i.da                 ; 2 uses
  store float %i.db, ptr %i.bg, align 8, !tbaa !19
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %6 = extractelement <2 x float> %5, i64 0       ; 3 uses
  %i.dc = fsub float %2, %i.br                    ; 2 uses
  %i.dd = fadd float %6, -1.000000e+00            ; 2 uses
  %i.de = fmul float %i.dd, %i.dc
  %i.df = fsub float %i.br, %i.bx                 ; 2 uses
  %i.dg = fsub float %i.bn, %6
  %i.dh = tail call float @llvm.fmuladd.f32(float %i.dg, float 5.000000e-01, float %i.dd)
  %i.di = fmul float %i.dh, %i.df
  %i.dj = tail call float @llvm.fmuladd.f32(float %i.de, float 5.000000e-01, float %i.di)
  %i.dk = fsub float %i.bx, %.sroa.speculated.i166
  %i.dl = fadd float %i.bn, -1.000000e+00
  %i.dm = fmul float %i.dl, %i.dk
  %i.dn = tail call float @llvm.fmuladd.f32(float %i.dm, float 5.000000e-01, float %i.dj)
  %i.do = fsub float %i.bq, %3                    ; 2 uses
  %i.dp = fmul float %i.do, 5.000000e-01
  %i.dq = fsub float %i.by, %i.bq                 ; 2 uses
  %i.dr = tail call float @llvm.fmuladd.f32(float %i.bm, float 5.000000e-01, float -1.000000e+00)
  %i.ds = fmul float %i.dr, %i.dq
  %i.dt = fsub float %i.ds, %i.dp
  %i.du = fsub float %.sroa.speculated.i166, %i.by
  %i.dv = fadd float %i.bm, -1.000000e+00
  %i.dw = fmul float %i.dv, %i.du
  %i.dx = tail call float @llvm.fmuladd.f32(float %i.dw, float 5.000000e-01, float %i.dt)
  %i.dy = fadd float %i.dx, %i.dn
  %i.dz = fsub float %i.by, %3
  %i.ea = fmul float %i.dz, -5.000000e-01
  %i.eb = fdiv float %i.dy, %i.ea                 ; 2 uses
  store float %i.eb, ptr %i.bd, align 4, !tbaa !19
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pre-phi171 = phi float [ %i.dc, %bb.j ], [ %i.co, %bb.i ]
  %.pre-phi170 = phi float [ %i.df, %bb.j ], [ %i.cq, %bb.i ]
  %.pre-phi169 = phi float [ %i.dq, %bb.j ], [ %i.cf, %bb.i ]
  %.pre-phi = phi float [ %i.do, %bb.j ], [ %i.cd, %bb.i ]
  %i.ec = phi float [ %6, %bb.j ], [ %i.db, %bb.i ] ; 2 uses
  %i.ed = phi float [ %i.eb, %bb.j ], [ %i.bz, %bb.i ] ; 2 uses
  %i.ee = fadd float %i.ed, 1.000000e+00
  %i.ef = fmul float %i.ee, %.pre-phi
  %i.eg = tail call float @llvm.fmuladd.f32(float %i.ef, float 5.000000e-01, float %3) ; 2 uses
  store float %i.eg, ptr %i.ax, align 4, !tbaa !19
  %i.eh = fadd float %i.ed, %i.bm
  %i.ei = fmul float %i.eh, %.pre-phi169
  %i.ej = tail call float @llvm.fmuladd.f32(float %i.ei, float 5.000000e-01, float %i.eg) ; 2 uses
  store float %i.ej, ptr %i.ay, align 8, !tbaa !19
  %i.ek = fadd float %i.bm, %i.bn
  %i.el = fsub float %i.bx, %i.by
  %i.em = fmul float %i.ek, %i.el
  %i.en = tail call float @llvm.fmuladd.f32(float %i.em, float 5.000000e-01, float %i.ej) ; 2 uses
  store float %i.en, ptr %i.az, align 4, !tbaa !19
  %i.eo = fadd float %i.bn, %i.ec
  %i.ep = fmul float %i.eo, %.pre-phi170
  %i.eq = tail call float @llvm.fmuladd.f32(float %i.ep, float 5.000000e-01, float %i.en) ; 2 uses
  store float %i.eq, ptr %i.ba, align 8, !tbaa !19
  %i.er = fadd float %i.ec, 1.000000e+00
  %i.es = fmul float %i.er, %.pre-phi171
  %i.et = tail call float @llvm.fmuladd.f32(float %i.es, float 5.000000e-01, float %i.eq)
  store float %i.et, ptr %i.bb, align 4, !tbaa !19
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
  %.092.idx126.sroa.phi.sroa.speculated = phi i8 [ 0, %bb.a ], [ 1, %bb.ai ] ; 2 uses
  %i.ab = trunc nuw i8 %.092.idx126.sroa.phi.sroa.speculated to i1 ; 26 uses
  %i.ac = zext nneg i8 %.092.idx126.sroa.phi.sroa.speculated to i64 ; 3 uses
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
  %i.ao = load double, ptr %.in, align 8, !tbaa !25
  %i.ap = fptrunc double %i.ao to float           ; 2 uses
  %i.aq = load double, ptr %.in95, align 8, !tbaa !25
  %i.ar = fptrunc double %i.aq to float           ; 2 uses
  %i.as = select i1 %i.ab, float %i.ar, float %i.ap ; 4 uses
  store float %i.as, ptr %i.ad, align 8, !tbaa !19
  %i.at = select i1 %i.ab, float %i.ap, float %i.ar ; 3 uses
  store float %i.at, ptr %i.ah, align 8, !tbaa !19
  store float %i.as, ptr %i.ae, align 8, !tbaa !19
  store float %i.at, ptr %i.aj, align 8, !tbaa !19
  %i.au = fsub float %i.at, %i.as
  %i.av = tail call float @llvm.fmuladd.f32(float %i.au, float 5.000000e-01, float %i.as)
  store float %i.av, ptr %i.ag, align 4, !tbaa !19
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
  store float %.sink, ptr %i.af, align 8, !tbaa !19
  store float %i.az, ptr %i.ak, align 4, !tbaa !19
  %i.ba = load float, ptr %i.ah, align 8, !tbaa !19 ; 2 uses
  %i.bb = load float, ptr %i.ad, align 8, !tbaa !19 ; 2 uses
  %i.bc = fsub float %i.ba, %i.bb
  %i.bd = fdiv float 5.000000e-01, %i.bc
  %i.be = load float, ptr %i.ae, align 8, !tbaa !19
  %i.bf = load float, ptr %i.ag, align 4, !tbaa !19 ; 2 uses
  %i.bg = fsub float %i.bf, %i.bb                 ; 2 uses
  %i.bh = fmul float %.sink, %i.bg
  %i.bi = tail call float @llvm.fmuladd.f32(float %i.be, float 2.000000e+00, float %i.bh)
  %i.bj = fsub float %i.ba, %i.bf                 ; 2 uses
  %i.bk = load float, ptr %i.aj, align 8, !tbaa !19
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
  store float %.sink127, ptr %i.af, align 8, !tbaa !19
  store float %i.bv, ptr %i.ak, align 4, !tbaa !19
  %i.bw = load <2 x float>, ptr %i.ag, align 4, !tbaa !19
  %i.bx = load <2 x float>, ptr %i.ad, align 8, !tbaa !19
  %i.by = fsub <2 x float> %i.bw, %i.bx           ; 3 uses
  %i.bz = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.by)
  %i.ca = fdiv float 5.000000e-01, %i.bz
  %i.cb = load float, ptr %i.ae, align 8, !tbaa !19
  %i.cc = extractelement <2 x float> %i.by, i64 0 ; 2 uses
  %i.cd = fmul float %i.cc, %.sink127
  %i.ce = tail call float @llvm.fmuladd.f32(float %i.cb, float 2.000000e+00, float %i.cd)
  %i.cf = load float, ptr %i.aj, align 8, !tbaa !19
  %i.cg = extractelement <2 x float> %i.by, i64 1 ; 2 uses
  %i.ch = fneg float %i.cg
  %i.ci = fmul float %i.bv, %i.ch
  %i.cj = tail call float @llvm.fmuladd.f32(float %i.cf, float 2.000000e+00, float %i.ci)
  %i.ck = fmul float %i.cc, %i.cj
  %i.cl = tail call float @llvm.fmuladd.f32(float %i.ce, float %i.cg, float %i.ck)
  %i.cm = fmul float %i.ca, %i.cl
  br label %.sink.split

.sink.split:                                      ; preds = %bb.j, %bb.f
  %.sink128 = phi float [ %i.bq, %bb.f ], [ %i.cm, %bb.j ]
  store float %.sink128, ptr %i.ai, align 4, !tbaa !19
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
end_hunk_0
