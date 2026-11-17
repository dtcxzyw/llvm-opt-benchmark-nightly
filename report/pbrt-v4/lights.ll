Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/lights?download=true
inline.NumInlined: 8460
inline.NumDeleted: 1612
loop-unroll.NumCompletelyUnrolled: 70
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 107
begin_hunk_0_@_ZNK4pbrt11LightBounds8ToStringB5cxx11Ev:bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef float @_ZNK4pbrt11LightBounds10ImportanceENS_6Point3IfEENS_7Normal3IfEE(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(49) %0, <2 x float> %1, float %2, <2 x float> %3, float %4) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.084.0.copyload = load <2 x float>, ptr %i.a, align 4 ; 6 uses
  %.sroa.285.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.285.0.copyload = load float, ptr %.sroa.285.0..sroa_idx, align 4 ; 4 uses
  %i.b = load float, ptr %0, align 4, !tbaa !85
  %.sroa.03.0.vec.extract.i = extractelement <2 x float> %.sroa.084.0.copyload, i64 0
  %i.c = fadd float %.sroa.03.0.vec.extract.i, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load float, ptr %i.d, align 4, !tbaa !86 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load float, ptr %i.f, align 4, !tbaa !87 ; 3 uses
  %i.h = fadd float %.sroa.285.0.copyload, %i.g
  %i.i = fmul float %i.c, 5.000000e-01
  %i.j = fmul float %i.h, 5.000000e-01            ; 5 uses
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %1, i64 0
  %i.k = fsub float %.sroa.0.0.vec.extract.i, %i.i ; 3 uses
  %i.l = fsub float %2, %i.j                      ; 3 uses
  %i.m = fmul float %i.k, %i.k
  %i.n = fmul float %i.l, %i.l                    ; 2 uses
  %.sroa.05.0.copyload.i = load <2 x float>, ptr %0, align 4 ; 3 uses
  %i.o = fsub float %.sroa.285.0.copyload, %i.g   ; 2 uses
  %i.p = fsub <2 x float> %.sroa.084.0.copyload, %.sroa.05.0.copyload.i ; 2 uses
  %i.q = fmul <2 x float> %i.p, %i.p              ; 2 uses
  %shift = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.q, %shift
  %i.r = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.s = fmul float %i.o, %i.o
  %i.t = fadd float %i.s, %i.r
  %sqrt.i = tail call noundef float @llvm.sqrt.f32(float %i.t)
  %i.u = fmul float %sqrt.i, 5.000000e-01         ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 28
  %.sroa.036.0.copyload = load <2 x float>, ptr %i.v, align 4 ; 2 uses
  %.sroa.237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  %.sroa.237.0.copyload = load float, ptr %.sroa.237.0..sroa_idx, align 4
  %.sroa.04.0.vec.extract.i = extractelement <2 x float> %.sroa.036.0.copyload, i64 0
  %.sroa.04.4.vec.extract.i = extractelement <2 x float> %.sroa.036.0.copyload, i64 1
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.x = load i8, ptr %i.w, align 4, !tbaa !445, !range !92, !noundef !93
  %i.y = trunc nuw i8 %i.x to i1
  %i.z = insertelement <2 x float> %.sroa.05.0.copyload.i, float %i.e, i64 1
  %i.aa = fadd <2 x float> %.sroa.084.0.copyload, %i.z
  %i.ab = fmul <2 x float> %i.aa, splat (float 5.000000e-01) ; 8 uses
  %foldExtExtBinop159 = fsub <2 x float> %1, %i.ab
  %i.ac = extractelement <2 x float> %foldExtExtBinop159, i64 1 ; 3 uses
  %i.ad = fmul float %i.ac, %i.ac                 ; 2 uses
  %i.ae = fadd float %i.m, %i.ad
  %i.af = fadd float %i.n, %i.ae                  ; 3 uses
  %i.ag = fcmp olt float %i.af, %i.u
  %.sroa.speculated137 = select i1 %i.ag, float %i.u, float %i.af
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.af) ; 3 uses
  %i.ah = fdiv float %i.k, %sqrt.i.i              ; 2 uses
  %i.ai = fdiv float %i.ac, %sqrt.i.i             ; 2 uses
  %i.aj = fdiv float %i.l, %sqrt.i.i              ; 3 uses
  %i.ak = fmul float %.sroa.04.0.vec.extract.i, %i.ah
  %i.al = fmul float %.sroa.04.4.vec.extract.i, %i.ai
  %i.am = fadd float %i.ak, %i.al
  %i.an = fmul float %.sroa.237.0.copyload, %i.aj
  %i.ao = fadd float %i.an, %i.am                 ; 2 uses
  %i.ap = tail call float @llvm.fabs.f32(float %i.ao)
  %spec.select = select i1 %i.y, float %i.ap, float %i.ao ; 5 uses
  %i.aq = fmul float %spec.select, %spec.select
  %i.ar = fsub float 1.000000e+00, %i.aq          ; 2 uses
  %i.as = fcmp ogt float %i.ar, 0.000000e+00
  %.sroa.speculated.i = select i1 %i.as, float %i.ar, float 0.000000e+00
  %sqrt.i113 = tail call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i) ; 2 uses
  %i.at = fcmp ult <2 x float> %i.ab, %.sroa.05.0.copyload.i
  %i.au = fcmp ugt <2 x float> %i.ab, %.sroa.084.0.copyload
  %foldExtExtBinop161 = or <2 x i1> %i.at, %i.au
  %or.cond.i.i.i = extractelement <2 x i1> %foldExtExtBinop161, i64 0
  br i1 %or.cond.i.i.i, label %_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.av = extractelement <2 x float> %i.ab, i64 1
  %i.aw = fcmp ult float %i.av, %i.e
  %i.ax = fcmp ugt <2 x float> %i.ab, %.sroa.084.0.copyload
  %i.ay = extractelement <2 x i1> %i.ax, i64 1
  %or.cond16.i.i.i = select i1 %i.aw, i1 true, i1 %i.ay
  %i.az = fcmp ult float %i.j, %i.g
  %or.cond19.i.i.i = select i1 %or.cond16.i.i.i, i1 true, i1 %i.az
  %i.ba = fcmp ugt float %i.j, %.sroa.285.0.copyload
  %or.cond.i = select i1 %or.cond19.i.i.i, i1 true, i1 %i.ba
  br i1 %or.cond.i, label %_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i.thread, label %_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i

_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i: ; preds = %bb.b
  %i.bb = fsub <2 x float> %i.ab, %.sroa.084.0.copyload ; 2 uses
  %i.bc = fsub float %i.j, %.sroa.285.0.copyload  ; 2 uses
  %i.bd = fmul <2 x float> %i.bb, %i.bb           ; 2 uses
  %shift163 = shufflevector <2 x float> %i.bd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop164 = fadd <2 x float> %i.bd, %shift163
  %i.be = extractelement <2 x float> %foldExtExtBinop164, i64 0
  %i.bf = fmul float %i.bc, %i.bc
  %i.bg = fadd float %i.bf, %i.be
  %sqrt.i.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.bg) ; 2 uses
  %i.bh = fmul float %sqrt.i.i.i.i, %sqrt.i.i.i.i ; 2 uses
  %foldExtExtBinop166 = fsub <2 x float> %1, %i.ab ; 2 uses
  %foldExtExtBinop168 = fmul <2 x float> %foldExtExtBinop166, %foldExtExtBinop166
  %i.bi = extractelement <2 x float> %foldExtExtBinop168, i64 0
  %i.bj = fadd float %i.bi, %i.ad
  %i.bk = fadd float %i.n, %i.bj
  %i.bl = fcmp olt float %i.bk, %i.bh
  br i1 %i.bl, label %_ZN4pbrt24BoundSubtendedDirectionsERKNS_7Bounds3IfEENS_6Point3IfEE.exit, label %_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i.thread

_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i.thread: ; preds = %bb.a, %bb.b, %_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i
  %i.bm = phi float [ %i.bh, %_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i ], [ 0.000000e+00, %bb.b ], [ 0.000000e+00, %bb.a ]
  %i.bn = fsub float %i.j, %2                     ; 3 uses
  %i.bo = fsub <2 x float> %i.ab, %1              ; 3 uses
  %i.bp = fmul <2 x float> %i.bo, %i.bo           ; 2 uses
  %shift170 = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop171 = fadd <2 x float> %i.bp, %shift170
  %i.bq = extractelement <2 x float> %foldExtExtBinop171, i64 0
  %i.br = fmul float %i.bn, %i.bn
  %i.bs = fadd float %i.br, %i.bq                 ; 2 uses
  %sqrt.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.bs) ; 2 uses
  %i.bt = fdiv float %i.bn, %sqrt.i.i.i           ; 3 uses
  %i.bu = fdiv float %i.bm, %i.bs
  %i.bv = fsub float 1.000000e+00, %i.bu          ; 2 uses
  %i.bw = fcmp ogt float %i.bv, 0.000000e+00
  %.sroa.speculated.i.i = select i1 %i.bw, float %i.bv, float 0.000000e+00
  %sqrt.i.i114 = tail call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i.i)
  %i.bx = insertelement <2 x float> poison, float %sqrt.i.i.i, i64 0
  %i.by = shufflevector <2 x float> %i.bx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bz = fdiv <2 x float> %i.bo, %i.by           ; 2 uses
  %i.ca = fmul <2 x float> %i.bz, %i.bz           ; 2 uses
  %shift173 = shufflevector <2 x float> %i.ca, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop174 = fadd <2 x float> %i.ca, %shift173
  %i.cb = extractelement <2 x float> %foldExtExtBinop174, i64 0
  %i.cc = fmul float %i.bt, %i.bt
  %i.cd = fadd float %i.cc, %i.cb
  %sqrt.i.i.i48.i = tail call noundef float @llvm.sqrt.f32(float %i.cd)
  %i.ce = fdiv float %i.bt, %sqrt.i.i.i48.i
  %.sroa.3.8.vec.insert.i = insertelement <2 x float> poison, float %i.ce, i64 0
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> %.sroa.3.8.vec.insert.i, float %sqrt.i.i114, i64 1
  br label %_ZN4pbrt24BoundSubtendedDirectionsERKNS_7Bounds3IfEENS_6Point3IfEE.exit

_ZN4pbrt24BoundSubtendedDirectionsERKNS_7Bounds3IfEENS_6Point3IfEE.exit: ; preds = %_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i, %_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i.thread
  %.sroa.3.0.i = phi <2 x float> [ %.sroa.3.12.vec.insert.i, %_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i.thread ], [ <float 1.000000e+00, float -1.000000e+00>, %_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i ] ; 2 uses
  %.sroa.3.12.vec.extract = extractelement <2 x float> %.sroa.3.0.i, i64 1 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !446 ; 4 uses
  %i.ch = shufflevector <2 x float> %.sroa.3.0.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ci = insertelement <2 x float> %i.ch, float %i.cg, i64 1 ; 2 uses
  %i.cj = fmul <2 x float> %i.ci, %i.ci
  %i.ck = fsub <2 x float> splat (float 1.000000e+00), %i.cj ; 2 uses
  %i.cl = fcmp ogt <2 x float> %i.ck, zeroinitializer
  %i.cm = select <2 x i1> %i.cl, <2 x float> %i.ck, <2 x float> zeroinitializer ; 2 uses
  %i.cn = extractelement <2 x float> %i.cm, i64 0
  %sqrt.i118 = tail call noundef float @llvm.sqrt.f32(float %i.cn) ; 2 uses
  %i.co = extractelement <2 x float> %i.cm, i64 1
  %sqrt.i120 = tail call noundef float @llvm.sqrt.f32(float %i.co) ; 2 uses
  %i.cp = fcmp ogt float %spec.select, %i.cg      ; 2 uses
  %i.cq = fmul float %spec.select, %i.cg
  %i.cr = fmul float %sqrt.i113, %sqrt.i120
  %i.cs = fadd float %i.cq, %i.cr
  %.0.i = select i1 %i.cp, float 1.000000e+00, float %i.cs ; 2 uses
  %i.ct = fmul float %sqrt.i113, %i.cg
  %i.cu = fmul float %spec.select, %sqrt.i120
  %i.cv = fsub float %i.ct, %i.cu
  %.0.i121 = select i1 %i.cp, float 0.000000e+00, float %i.cv
  %i.cw = fcmp ogt float %.0.i, %.sroa.3.12.vec.extract
  %i.cx = fmul float %.sroa.3.12.vec.extract, %.0.i
  %i.cy = fmul float %sqrt.i118, %.0.i121
  %i.cz = fadd float %i.cy, %i.cx
  %.0.i122 = select i1 %i.cw, float 1.000000e+00, float %i.cz ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.db = load float, ptr %i.da, align 4, !tbaa !447
  %i.dc = fcmp ugt float %.0.i122, %i.db
  br i1 %i.dc, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_ZN4pbrt24BoundSubtendedDirectionsERKNS_7Bounds3IfEENS_6Point3IfEE.exit
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.de = load float, ptr %i.dd, align 4, !tbaa !448
  %i.df = fmul float %.0.i122, %i.de
  %i.dg = fdiv float %i.df, %.sroa.speculated137  ; 2 uses
  %.sroa.0143.0.vec.extract = extractelement <2 x float> %3, i64 0 ; 2 uses
  %i.dh = fcmp une float %.sroa.0143.0.vec.extract, 0.000000e+00
  %.sroa.0143.4.vec.extract = extractelement <2 x float> %3, i64 1 ; 2 uses
  %i.di = fcmp une float %.sroa.0143.4.vec.extract, 0.000000e+00
  %or.cond.i125 = select i1 %i.dh, i1 true, i1 %i.di
  %i.dj = fcmp une float %4, 0.000000e+00
  %or.cond = select i1 %or.cond.i125, i1 true, i1 %i.dj
  br i1 %or.cond, label %_ZNK4pbrt6Tuple3INS_7Normal3EfEneENS1_IfEE.exit.thread, label %bb.d

_ZNK4pbrt6Tuple3INS_7Normal3EfEneENS1_IfEE.exit.thread: ; preds = %bb.c
  %i.dk = fmul float %4, %i.aj                    ; 2 uses
  %i.dl = tail call noundef float @llvm.fma.f32(float %.sroa.0143.4.vec.extract, float %i.ai, float %i.dk)
  %i.dm = fneg float %i.dk
  %i.dn = tail call noundef float @llvm.fma.f32(float %4, float %i.aj, float %i.dm)
  %i.do = fadd float %i.dl, %i.dn
  %i.dp = tail call noundef float @llvm.fma.f32(float %.sroa.0143.0.vec.extract, float %i.ah, float %i.do) ; 3 uses
  %i.dq = tail call noundef float @llvm.fabs.f32(float %i.dp) ; 2 uses
  %i.dr = fmul float %i.dp, %i.dp
  %i.ds = fsub float 1.000000e+00, %i.dr          ; 2 uses
  %i.dt = fcmp ogt float %i.ds, 0.000000e+00
  %.sroa.speculated.i128 = select i1 %i.dt, float %i.ds, float 0.000000e+00
  %sqrt.i129 = tail call nnan float @llvm.sqrt.f32(float %.sroa.speculated.i128)
  %i.du = fcmp ogt float %i.dq, %.sroa.3.12.vec.extract
  %i.dv = fmul float %i.dq, %.sroa.3.12.vec.extract
  %i.dw = fmul float %sqrt.i129, %sqrt.i118
  %i.dx = fadd float %i.dv, %i.dw
  %.0.i130 = select i1 %i.du, float 1.000000e+00, float %i.dx
  %i.dy = fmul float %.0.i130, %i.dg
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNK4pbrt6Tuple3INS_7Normal3EfEneENS1_IfEE.exit.thread
  %.0149 = phi float [ %i.dy, %_ZNK4pbrt6Tuple3INS_7Normal3EfEneENS1_IfEE.exit.thread ], [ %i.dg, %bb.c ] ; 2 uses
  %i.dz = fcmp olt float %.0149, 0.000000e+00
  %.sroa.speculated = select i1 %i.dz, float 0.000000e+00, float %.0149
  br label %bb.e

bb.e:                                             ; preds = %_ZN4pbrt24BoundSubtendedDirectionsERKNS_7Bounds3IfEENS_6Point3IfEE.exit, %bb.d
  %.0 = phi float [ %.sroa.speculated, %bb.d ], [ 0.000000e+00, %_ZN4pbrt24BoundSubtendedDirectionsERKNS_7Bounds3IfEENS_6Point3IfEE.exit ]
  ret float %.0
}

; Function Attrs: mustprogress uwtable
define dso_local { <2 x float>, <2 x float> } @_ZNK4pbrt10PointLight3PhiENS_18SampledWavelengthsE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(164) %0, ptr noundef nonnull byval(%"class.pbrt::SampledWavelengths") align 8 %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load float, ptr %i.a, align 8, !tbaa !95
  %i.c = fmul float %i.b, f0x41490FDB
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !96
  %i.f = call { <2 x float>, <2 x float> } @_ZNK4pbrt22DenselySampledSpectrum6SampleERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 4 dereferenceable(32) %1) ; 2 uses
  %i.g = extractvalue { <2 x float>, <2 x float> } %i.f, 0
  %i.h = extractvalue { <2 x float>, <2 x float> } %i.f, 1
  %i.i = insertelement <4 x float> poison, float %i.c, i64 0
  %i.j = shufflevector <4 x float> %i.i, <4 x float> poison, <4 x i32> zeroinitializer
  %i.k = shufflevector <2 x float> %i.g, <2 x float> %i.h, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.l = fmul <4 x float> %i.j, %i.k              ; 2 uses
  %i.m = shufflevector <4 x float> %i.l, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.n = shufflevector <4 x float> %i.l, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %.fca.0.insert.i.i = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.m, 0
  %.fca.1.insert.i.i = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i.i, <2 x float> %i.n, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert.i.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { <2 x float>, <2 x float> } @_ZNK4pbrt22DenselySampledSpectrum6SampleERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(32) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = load float, ptr %1, align 4, !tbaa !77
  %i.d = tail call noundef i64 @lroundf(float noundef %i.c) #37
  %i.e = load i32, ptr %0, align 8, !tbaa !74
  %i.f = trunc i64 %i.d to i32
  %i.g = sub i32 %i.f, %i.e                       ; 2 uses
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = zext nneg i32 %i.g to i64                ; 2 uses
  %i.j = load i64, ptr %i.a, align 8, !tbaa !72
  %.not = icmp ugt i64 %i.j, %i.i
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !71
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.i
  %i.m = load float, ptr %i.l, align 4, !tbaa !77
  %.sroa.0.0.vec.insert = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.m, i64 0
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.0.0 = phi <2 x float> [ %.sroa.0.0.vec.insert, %bb.c ], [ zeroinitializer, %bb.b ], [ zeroinitializer, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.o = load float, ptr %i.n, align 4, !tbaa !77
  %i.p = tail call noundef i64 @lroundf(float noundef %i.o) #37
  %i.q = load i32, ptr %0, align 8, !tbaa !74
  %i.r = trunc i64 %i.p to i32
  %i.s = sub i32 %i.r, %i.q                       ; 2 uses
  %i.t = icmp slt i32 %i.s, 0
  br i1 %i.t, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = zext nneg i32 %i.s to i64                ; 2 uses
  %i.v = load i64, ptr %i.a, align 8, !tbaa !72
  %.not.1 = icmp ugt i64 %i.v, %i.u
  br i1 %.not.1, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !71
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.u
  %i.y = load float, ptr %i.x, align 4, !tbaa !77
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f
  %.sink = phi float [ %i.y, %bb.f ], [ 0.000000e+00, %bb.e ], [ 0.000000e+00, %bb.d ]
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load float, ptr %i.z, align 4, !tbaa !77
  %i.ab = tail call noundef i64 @lroundf(float noundef %i.aa) #37
  %i.ac = load i32, ptr %0, align 8, !tbaa !74
  %i.ad = trunc i64 %i.ab to i32
  %i.ae = sub i32 %i.ad, %i.ac                    ; 2 uses
  %i.af = icmp slt i32 %i.ae, 0
  br i1 %i.af, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = zext nneg i32 %i.ae to i64              ; 2 uses
  %i.ah = load i64, ptr %i.a, align 8, !tbaa !72
  %.not.2 = icmp ugt i64 %i.ah, %i.ag
  br i1 %.not.2, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ai = load ptr, ptr %i.b, align 8, !tbaa !71
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.ag
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !77
  %.sroa.6.8.vec.insert = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ak, i64 0
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.sroa.6.0 = phi <2 x float> [ %.sroa.6.8.vec.insert, %bb.i ], [ zeroinitializer, %bb.h ], [ zeroinitializer, %bb.g ]
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.am = load float, ptr %i.al, align 4, !tbaa !77
  %i.an = tail call noundef i64 @lroundf(float noundef %i.am) #37
  %i.ao = load i32, ptr %0, align 8, !tbaa !74
  %i.ap = trunc i64 %i.an to i32
  %i.aq = sub i32 %i.ap, %i.ao                    ; 2 uses
  %i.ar = icmp slt i32 %i.aq, 0
  br i1 %i.ar, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = zext nneg i32 %i.aq to i64              ; 2 uses
  %i.at = load i64, ptr %i.a, align 8, !tbaa !72
  %.not.3 = icmp ugt i64 %i.at, %i.as
  br i1 %.not.3, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.au = load ptr, ptr %i.b, align 8, !tbaa !71
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.as
  %i.aw = load float, ptr %i.av, align 4, !tbaa !77
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.l
  %.sink30 = phi float [ %i.aw, %bb.l ], [ 0.000000e+00, %bb.k ], [ 0.000000e+00, %bb.j ]
  %.sroa.0.4.vec.insert17 = insertelement <2 x float> %.sroa.0.0, float %.sink, i64 1
  %.sroa.6.12.vec.insert22 = insertelement <2 x float> %.sroa.6.0, float %.sink30, i64 1
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.4.vec.insert17, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.6.12.vec.insert22, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZNK4pbrt10PointLight6BoundsEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.pstd::optional.21") align 4 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(164) %1) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load <8 x float>, ptr %i.a, align 4, !tbaa !77 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.d = load float, ptr %i.c, align 4, !tbaa !77
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = load float, ptr %i.e, align 8, !tbaa !77
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.h = load float, ptr %i.g, align 4, !tbaa !77
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.j = load float, ptr %i.i, align 8, !tbaa !77
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.l = load float, ptr %i.k, align 4, !tbaa !77
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.n = load <2 x float>, ptr %i.m, align 8, !tbaa !77
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.p = load float, ptr %i.o, align 8, !tbaa !77
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.r = load float, ptr %i.q, align 8, !tbaa !95
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !96   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !71   ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.x = load i64, ptr %i.w, align 8, !tbaa !72   ; 2 uses
  %.idx.i = shl i64 %i.x, 2                       ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 %.idx.i
  %or.cond.i.i.i = icmp ult i64 %i.x, 2
  br i1 %or.cond.i.i.i, label %_ZNK4pbrt22DenselySampledSpectrum8MaxValueEv.exit, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 4 ; 2 uses
  %.pre.i.i.i = load float, ptr %i.v, align 4, !tbaa !77 ; 2 uses
  %i.aa = add i64 %.idx.i, -8                     ; 2 uses
  %i.ab = lshr exact i64 %i.aa, 2
  %i.ac = add nuw nsw i64 %i.ab, 1
  %xtraiter = and i64 %i.ac, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.preheader.i.i.i, %.lr.ph.i.i.i.prol
  %i.ad = phi float [ %i.ai, %.lr.ph.i.i.i.prol ], [ %.pre.i.i.i, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %i.ae = phi ptr [ %i.ah, %.lr.ph.i.i.i.prol ], [ %i.z, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %.018.i.i.i.prol = phi ptr [ %spec.select.i.i.i.prol, %.lr.ph.i.i.i.prol ], [ %i.v, %.lr.ph.preheader.i.i.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.preheader.i.i.i ]
  %i.af = load float, ptr %i.ae, align 4, !tbaa !77 ; 2 uses
  %i.ag = fcmp olt float %i.ad, %i.af             ; 2 uses
  %spec.select.i.i.i.prol = select i1 %i.ag, ptr %i.ae, ptr %.018.i.i.i.prol ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 4 ; 2 uses
  %i.ai = select i1 %i.ag, float %i.af, float %i.ad ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
end_hunk_0
