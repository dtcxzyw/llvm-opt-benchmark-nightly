Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/shapes?download=true
inline.NumInlined: 6411
inline.NumDeleted: 1459
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN4pbrt8Triangle27InteractionFromIntersectionEPKNS_12TriangleMeshEiNS_20TriangleIntersectionEfNS_7Vector3IfEE:bb.a
  %i.gw = fmul float %.sroa.11.8.vec.extract, %.sroa.03.4.vec.extract.i ; 2 uses
  %i.gx = fmul float %.sroa.11.8.vec.extract, %.sroa.11.0.copyload ; 2 uses
  %i.gy = fadd float %i.gs, %i.gv                 ; 3 uses
  %i.gz = fadd float %i.gt, %i.gw                 ; 3 uses
  %i.ha = fadd float %i.gu, %i.gx                 ; 3 uses
  %i.hb = shufflevector <2 x float> %3, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.hc = fmul <2 x float> %i.hb, %.sroa.01320.0
  %i.hd = shufflevector <2 x float> %3, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.he = fmul <2 x float> %i.hd, %.sroa.11.0
  %i.hf = fadd <2 x float> %i.hc, %i.he
  %i.hg = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.hh = fmul <2 x float> %i.hg, %.sroa.18.0
  %i.hi = fadd <2 x float> %i.hh, %i.hf
  %i.hj = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.hk = load i8, ptr %i.hj, align 8, !tbaa !122, !range !30, !noundef !31
  %i.hl = getelementptr inbounds nuw i8, ptr %1, i64 57
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !123, !range !30, !noundef !31
  %.not1312 = icmp eq i8 %i.hk, %i.hm
  %i.hn = tail call noundef float @llvm.fabs.f32(float %i.gm)
  %i.ho = tail call noundef float @llvm.fabs.f32(float %i.gn)
  %i.hp = tail call noundef float @llvm.fabs.f32(float %i.go)
  %i.hq = tail call noundef float @llvm.fabs.f32(float %i.gp)
  %i.hr = tail call noundef float @llvm.fabs.f32(float %i.gq)
  %i.hs = tail call noundef float @llvm.fabs.f32(float %i.gr)
  %i.ht = fadd float %i.hn, %i.hq
  %i.hu = fadd float %i.ho, %i.hr
  %i.hv = fadd float %i.hp, %i.hs
  %i.hw = tail call noundef float @llvm.fabs.f32(float %i.gv)
  %i.hx = tail call noundef float @llvm.fabs.f32(float %i.gw)
  %i.hy = tail call noundef float @llvm.fabs.f32(float %i.gx)
  %i.hz = fadd float %i.ht, %i.hw
  %i.ia = fadd float %i.hu, %i.hx
  %i.ib = fadd float %i.hv, %i.hy
  %i.ic = fmul float %i.hz, f0x34E00006           ; 3 uses
  %i.id = fmul float %i.ia, f0x34E00006           ; 3 uses
  %i.ie = fmul float %i.ib, f0x34E00006           ; 3 uses
  %i.if = fcmp oeq float %i.ic, 0.000000e+00
  br i1 %i.if, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.sroa.0.0.vec.insert.i809 = insertelement <2 x float> poison, float %i.gy, i64 0
  %.sroa.0.0.vec.insert.i.i889 = shufflevector <2 x float> %.sroa.0.0.vec.insert.i809, <2 x float> poison, <2 x i32> zeroinitializer
  br label %_ZN4pbrt8Interval17FromValueAndErrorEff.exit.i

bb.i:                                             ; preds = %bb.g
  %i.ig = fsub float %i.gy, %i.ic                 ; 3 uses
  %or.cond.i.i.i.i.i = fcmp oeq float %i.ig, -inf
  br i1 %or.cond.i.i.i.i.i, label %_ZN4pbrt12SubRoundDownEff.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ih = fcmp oeq float %i.ig, 0.000000e+00
  %spec.store.select.i.i.i.i.i = select i1 %i.ih, float -0.000000e+00, float %i.ig ; 2 uses
  %i.ii = bitcast float %spec.store.select.i.i.i.i.i to i32
  %i.ij = fcmp ogt float %spec.store.select.i.i.i.i.i, 0.000000e+00
  %.0.v.i.i.i.i.i = select i1 %i.ij, i32 -1, i32 1
  %.0.i.i.i.i.i = add i32 %.0.v.i.i.i.i.i, %i.ii
  %i.ik = bitcast i32 %.0.i.i.i.i.i to float
  br label %_ZN4pbrt12SubRoundDownEff.exit.i.i

_ZN4pbrt12SubRoundDownEff.exit.i.i:               ; preds = %bb.j, %bb.i
  %.09.i.i.i.i.i = phi float [ %i.ik, %bb.j ], [ -inf, %bb.i ]
  %.sroa.0.0.vec.insert8.i.i = insertelement <2 x float> poison, float %.09.i.i.i.i.i, i64 0
  %i.il = fadd float %i.gy, %i.ic                 ; 3 uses
  %or.cond.i.i.i.i = fcmp oeq float %i.il, +inf
  br i1 %or.cond.i.i.i.i, label %_ZN4pbrt10AddRoundUpEff.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_ZN4pbrt12SubRoundDownEff.exit.i.i
  %i.im = fcmp oeq float %i.il, 0.000000e+00
  %spec.store.select.i.i.i.i = select i1 %i.im, float 0.000000e+00, float %i.il ; 2 uses
  %i.in = bitcast float %spec.store.select.i.i.i.i to i32
  %i.io = fcmp ult float %spec.store.select.i.i.i.i, 0.000000e+00
  %.0.v.i.i.i.i = select i1 %i.io, i32 -1, i32 1
  %.0.i.i.i.i = add i32 %.0.v.i.i.i.i, %i.in
  %i.ip = bitcast i32 %.0.i.i.i.i to float
  br label %_ZN4pbrt10AddRoundUpEff.exit.i.i

_ZN4pbrt10AddRoundUpEff.exit.i.i:                 ; preds = %bb.k, %_ZN4pbrt12SubRoundDownEff.exit.i.i
  %.010.i.i.i.i = phi float [ %i.ip, %bb.k ], [ +inf, %_ZN4pbrt12SubRoundDownEff.exit.i.i ]
  %.sroa.0.4.vec.insert10.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert8.i.i, float %.010.i.i.i.i, i64 1
  br label %_ZN4pbrt8Interval17FromValueAndErrorEff.exit.i

_ZN4pbrt8Interval17FromValueAndErrorEff.exit.i:   ; preds = %_ZN4pbrt10AddRoundUpEff.exit.i.i, %bb.h
  %.sroa.0.0.i.i = phi <2 x float> [ %.sroa.0.0.vec.insert.i.i889, %bb.h ], [ %.sroa.0.4.vec.insert10.i.i, %_ZN4pbrt10AddRoundUpEff.exit.i.i ]
  %i.iq = fcmp oeq float %i.id, 0.000000e+00
  br i1 %i.iq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN4pbrt8Interval17FromValueAndErrorEff.exit.i
  %i.ir = insertelement <2 x float> poison, float %i.gz, i64 0
  %.sroa.0.0.vec.insert.i24.i = shufflevector <2 x float> %i.ir, <2 x float> poison, <2 x i32> zeroinitializer
  br label %_ZN4pbrt8Interval17FromValueAndErrorEff.exit25.i

bb.m:                                             ; preds = %_ZN4pbrt8Interval17FromValueAndErrorEff.exit.i
  %i.is = fsub float %i.gz, %i.id                 ; 3 uses
  %or.cond.i.i.i.i9.i = fcmp oeq float %i.is, -inf
  br i1 %or.cond.i.i.i.i9.i, label %_ZN4pbrt12SubRoundDownEff.exit.i13.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.it = fcmp oeq float %i.is, 0.000000e+00
  %spec.store.select.i.i.i.i10.i = select i1 %i.it, float -0.000000e+00, float %i.is ; 2 uses
  %i.iu = bitcast float %spec.store.select.i.i.i.i10.i to i32
  %i.iv = fcmp ogt float %spec.store.select.i.i.i.i10.i, 0.000000e+00
  %.0.v.i.i.i.i11.i = select i1 %i.iv, i32 -1, i32 1
  %.0.i.i.i.i12.i = add i32 %.0.v.i.i.i.i11.i, %i.iu
  %i.iw = bitcast i32 %.0.i.i.i.i12.i to float
  br label %_ZN4pbrt12SubRoundDownEff.exit.i13.i

_ZN4pbrt12SubRoundDownEff.exit.i13.i:             ; preds = %bb.n, %bb.m
  %.09.i.i.i.i14.i = phi float [ %i.iw, %bb.n ], [ -inf, %bb.m ]
  %.sroa.0.0.vec.insert8.i15.i = insertelement <2 x float> poison, float %.09.i.i.i.i14.i, i64 0
  %i.ix = fadd float %i.gz, %i.id                 ; 3 uses
  %or.cond.i.i.i16.i = fcmp oeq float %i.ix, +inf
  br i1 %or.cond.i.i.i16.i, label %_ZN4pbrt10AddRoundUpEff.exit.i20.i, label %bb.o

bb.o:                                             ; preds = %_ZN4pbrt12SubRoundDownEff.exit.i13.i
  %i.iy = fcmp oeq float %i.ix, 0.000000e+00
  %spec.store.select.i.i.i17.i = select i1 %i.iy, float 0.000000e+00, float %i.ix ; 2 uses
  %i.iz = bitcast float %spec.store.select.i.i.i17.i to i32
  %i.ja = fcmp ult float %spec.store.select.i.i.i17.i, 0.000000e+00
  %.0.v.i.i.i18.i = select i1 %i.ja, i32 -1, i32 1
  %.0.i.i.i19.i = add i32 %.0.v.i.i.i18.i, %i.iz
  %i.jb = bitcast i32 %.0.i.i.i19.i to float
  br label %_ZN4pbrt10AddRoundUpEff.exit.i20.i

_ZN4pbrt10AddRoundUpEff.exit.i20.i:               ; preds = %bb.o, %_ZN4pbrt12SubRoundDownEff.exit.i13.i
  %.010.i.i.i21.i = phi float [ %i.jb, %bb.o ], [ +inf, %_ZN4pbrt12SubRoundDownEff.exit.i13.i ]
  %.sroa.0.4.vec.insert10.i22.i = insertelement <2 x float> %.sroa.0.0.vec.insert8.i15.i, float %.010.i.i.i21.i, i64 1
  br label %_ZN4pbrt8Interval17FromValueAndErrorEff.exit25.i

_ZN4pbrt8Interval17FromValueAndErrorEff.exit25.i: ; preds = %_ZN4pbrt10AddRoundUpEff.exit.i20.i, %bb.l
  %.sroa.0.0.i23.i = phi <2 x float> [ %.sroa.0.0.vec.insert.i24.i, %bb.l ], [ %.sroa.0.4.vec.insert10.i22.i, %_ZN4pbrt10AddRoundUpEff.exit.i20.i ]
  %i.jc = fcmp oeq float %i.ie, 0.000000e+00
  br i1 %i.jc, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN4pbrt8Interval17FromValueAndErrorEff.exit25.i
  %i.jd = insertelement <2 x float> poison, float %i.ha, i64 0
  %.sroa.0.0.vec.insert.i41.i = shufflevector <2 x float> %i.jd, <2 x float> poison, <2 x i32> zeroinitializer
  br label %_ZN4pbrt8Point3fiC2ENS_6Point3IfEENS_7Vector3IfEE.exit

bb.q:                                             ; preds = %_ZN4pbrt8Interval17FromValueAndErrorEff.exit25.i
  %i.je = fsub float %i.ha, %i.ie                 ; 3 uses
  %or.cond.i.i.i.i26.i = fcmp oeq float %i.je, -inf
  br i1 %or.cond.i.i.i.i26.i, label %_ZN4pbrt12SubRoundDownEff.exit.i30.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.jf = fcmp oeq float %i.je, 0.000000e+00
  %spec.store.select.i.i.i.i27.i = select i1 %i.jf, float -0.000000e+00, float %i.je ; 2 uses
  %i.jg = bitcast float %spec.store.select.i.i.i.i27.i to i32
  %i.jh = fcmp ogt float %spec.store.select.i.i.i.i27.i, 0.000000e+00
  %.0.v.i.i.i.i28.i = select i1 %i.jh, i32 -1, i32 1
  %.0.i.i.i.i29.i = add i32 %.0.v.i.i.i.i28.i, %i.jg
  %i.ji = bitcast i32 %.0.i.i.i.i29.i to float
  br label %_ZN4pbrt12SubRoundDownEff.exit.i30.i

_ZN4pbrt12SubRoundDownEff.exit.i30.i:             ; preds = %bb.r, %bb.q
  %.09.i.i.i.i31.i = phi float [ %i.ji, %bb.r ], [ -inf, %bb.q ]
  %.sroa.0.0.vec.insert8.i32.i = insertelement <2 x float> poison, float %.09.i.i.i.i31.i, i64 0
  %i.jj = fadd float %i.ha, %i.ie                 ; 3 uses
  %or.cond.i.i.i33.i = fcmp oeq float %i.jj, +inf
  br i1 %or.cond.i.i.i33.i, label %_ZN4pbrt10AddRoundUpEff.exit.i37.i, label %bb.s

bb.s:                                             ; preds = %_ZN4pbrt12SubRoundDownEff.exit.i30.i
  %i.jk = fcmp oeq float %i.jj, 0.000000e+00
  %spec.store.select.i.i.i34.i = select i1 %i.jk, float 0.000000e+00, float %i.jj ; 2 uses
  %i.jl = bitcast float %spec.store.select.i.i.i34.i to i32
  %i.jm = fcmp ult float %spec.store.select.i.i.i34.i, 0.000000e+00
  %.0.v.i.i.i35.i = select i1 %i.jm, i32 -1, i32 1
  %.0.i.i.i36.i = add i32 %.0.v.i.i.i35.i, %i.jl
  %i.jn = bitcast i32 %.0.i.i.i36.i to float
  br label %_ZN4pbrt10AddRoundUpEff.exit.i37.i

_ZN4pbrt10AddRoundUpEff.exit.i37.i:               ; preds = %bb.s, %_ZN4pbrt12SubRoundDownEff.exit.i30.i
  %.010.i.i.i38.i = phi float [ %i.jn, %bb.s ], [ +inf, %_ZN4pbrt12SubRoundDownEff.exit.i30.i ]
  %.sroa.0.4.vec.insert10.i39.i = insertelement <2 x float> %.sroa.0.0.vec.insert8.i32.i, float %.010.i.i.i38.i, i64 1
  br label %_ZN4pbrt8Point3fiC2ENS_6Point3IfEENS_7Vector3IfEE.exit

_ZN4pbrt8Point3fiC2ENS_6Point3IfEENS_7Vector3IfEE.exit: ; preds = %bb.p, %_ZN4pbrt10AddRoundUpEff.exit.i37.i
  %.sroa.0.0.i40.i = phi <2 x float> [ %.sroa.0.0.vec.insert.i41.i, %bb.p ], [ %.sroa.0.4.vec.insert10.i39.i, %_ZN4pbrt10AddRoundUpEff.exit.i37.i ]
  %.sroa.03.0.vec.extract.i.i = extractelement <2 x float> %.sroa.01226.1, i64 0
  %.sroa.011.0.vec.extract.i.i = extractelement <2 x float> %.sroa.01233.1, i64 0 ; 2 uses
  %i.jo = fmul float %.sroa.9.0, %.sroa.011.0.vec.extract.i.i ; 2 uses
  %i.jp = fneg float %i.jo
  %i.jq = tail call noundef float @llvm.fma.f32(float %.sroa.12.0.copyload1174, float %.sroa.03.0.vec.extract.i.i, float %i.jp)
  %i.jr = fneg float %.sroa.011.0.vec.extract.i.i
  %i.js = tail call noundef float @llvm.fma.f32(float %i.jr, float %.sroa.9.0, float %i.jo)
  %i.jt = fadd float %i.jq, %i.js                 ; 3 uses
  %i.ju = fmul float %i.jt, %i.jt
  store <2 x float> %.sroa.0.0.i.i, ptr %0, align 8
  %.sroa.41292.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x float> %.sroa.0.0.i23.i, ptr %.sroa.41292.0..sroa_idx, align 8
  %.sroa.51293.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x float> %.sroa.0.0.i40.i, ptr %.sroa.51293.0..sroa_idx, align 8
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %5, ptr %i.jv, align 8, !tbaa !140
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 28
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 9 uses
  %.sroa.214.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.jy = shufflevector <2 x float> %.sroa.01233.1, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.jz = insertelement <2 x float> %i.jy, float %.sroa.12.0.copyload1174, i64 1 ; 2 uses
  %i.ka = fmul <2 x float> %.sroa.01226.1, %i.jz  ; 2 uses
  %8 = fneg <2 x float> %i.ka
  %i.kb = fneg <2 x float> %i.jz
  %i.kc = shufflevector <2 x float> %.sroa.01226.1, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.kd = insertelement <2 x float> %i.kc, float %.sroa.9.0, i64 1
  %i.ke = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %.sroa.01233.1, <2 x float> %i.kd, <2 x float> %8)
  %i.kf = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.kb, <2 x float> %.sroa.01226.1, <2 x float> %i.ka)
  %i.kg = fadd <2 x float> %i.ke, %i.kf           ; 4 uses
  %i.kh = fmul <2 x float> %i.kg, %i.kg           ; 2 uses
  %i.ki = extractelement <2 x float> %i.kh, i64 1
  %i.kj = fadd float %i.ki, %i.ju
  %i.kk = extractelement <2 x float> %i.kh, i64 0
  %i.kl = fadd float %i.kk, %i.kj
  %i.km = fmul <2 x float> %6, %6                 ; 2 uses
  %shift = shufflevector <2 x float> %i.km, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1378 = fadd <2 x float> %i.km, %shift
  %i.kn = extractelement <2 x float> %foldExtExtBinop1378, i64 0
  %i.ko = fmul float %7, %7
  %i.kp = fadd float %i.ko, %i.kn
  %i.kq = insertelement <2 x float> poison, float %i.kp, i64 0
  %i.kr = insertelement <2 x float> %i.kq, float %i.kl, i64 1 ; 2 uses
  %i.ks = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.kr) ; 2 uses
  %i.kt = shufflevector <2 x float> %i.kg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ku = insertelement <2 x float> %i.kt, float %i.jt, i64 1
  %i.kv = shufflevector <2 x float> %i.ks, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.kw = fdiv <2 x float> %i.ku, %i.kv
  %i.kx = shufflevector <2 x float> %i.ks, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ky = fdiv <2 x float> %6, %i.kx
  %i.kz = insertelement <2 x float> poison, float %7, i64 0
  store <2 x float> %i.ky, ptr %i.jw, align 4
  store <2 x float> %i.kw, ptr %i.jx, align 8
  %i.la = shufflevector <2 x float> %i.kz, <2 x float> %i.kg, <4 x i32> <i32 0, i32 poison, i32 poison, i32 2>
  %i.lb = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.kr)
  %i.lc = shufflevector <2 x float> %i.lb, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 1>
  %i.ld = fdiv <4 x float> %i.la, %i.lc
  tail call void @llvm.masked.store.v4f32.p0(<4 x float> %i.ld, ptr align 4 %.sroa.2.0..sroa_idx.i.i, <4 x i1> <i1 true, i1 false, i1 false, i1 true>)
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 52
  store <2 x float> %i.hi, ptr %i.le, align 4
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lf, i8 0, i64 16, i1 false)
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <2 x float> %.sroa.01233.1, ptr %i.lg, align 8
  %.sroa.439.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  store float %.sroa.12.0.copyload1174, ptr %.sroa.439.0..sroa_idx.i, align 8
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 92
  store <2 x float> %.sroa.01226.1, ptr %i.lh, align 4
  %.sroa.4.0..sroa_idx.i892 = getelementptr inbounds nuw i8, ptr %0, i64 100
  store float %.sroa.9.0, ptr %.sroa.4.0..sroa_idx.i892, align 4
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 6 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.ll = getelementptr inbounds nuw i8, ptr %0, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ll, i8 0, i64 56, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.li, i8 0, i64 24, i1 false)
  %i.lm = load i64, ptr %i.jx, align 8
  store i64 %i.lm, ptr %i.lj, align 8
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 4 uses
  store <2 x float> %.sroa.01233.1, ptr %i.ln, align 4
  %.sroa.439.0..sroa_idx40.i = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 2 uses
  store float %.sroa.12.0.copyload1174, ptr %.sroa.439.0..sroa_idx40.i, align 4
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  store <2 x float> %.sroa.01226.1, ptr %i.lo, align 8
  %.sroa.4.0..sroa_idx33.i = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  store float %.sroa.9.0, ptr %.sroa.4.0..sroa_idx33.i, align 8
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 2 uses
  %.sroa.61299.0..sroa_idx1300 = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 176
  %.sroa.61307.0..sroa_idx1308 = getelementptr inbounds nuw i8, ptr %0, i64 184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.lp, i8 0, i64 24, i1 false)
  %i.lr = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !354 ; 2 uses
  %.not697 = icmp eq ptr %i.ls, null
  br i1 %.not697, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZN4pbrt8Point3fiC2ENS_6Point3IfEENS_7Vector3IfEE.exit
  %i.lt = sext i32 %2 to i64
  %i.lu = getelementptr inbounds [4 x i8], ptr %i.ls, i64 %i.lt
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !89
  br label %bb.u

bb.u:                                             ; preds = %_ZN4pbrt8Point3fiC2ENS_6Point3IfEENS_7Vector3IfEE.exit, %bb.t
  %i.lw = phi i32 [ %i.lv, %bb.t ], [ 0, %_ZN4pbrt8Point3fiC2ENS_6Point3IfEENS_7Vector3IfEE.exit ]
  store i32 %i.lw, ptr %i.lk, align 4, !tbaa !141
  %i.lx = fmul float %i.ai, %i.ak                 ; 2 uses
  %i.ly = fneg float %i.lx
  %i.lz = tail call noundef float @llvm.fma.f32(float %i.ah, float %i.al, float %i.ly)
  %i.ma = fneg float %i.ai
  %i.mb = tail call noundef float @llvm.fma.f32(float %i.ma, float %i.ak, float %i.lx)
  %i.mc = fadd float %i.lz, %i.mb                 ; 3 uses
  %i.md = fmul float %i.ag, %i.al                 ; 2 uses
  %i.me = fneg float %i.md
  %i.mf = tail call noundef float @llvm.fma.f32(float %i.ai, float %i.aj, float %i.me)
  %i.mg = fneg float %i.ag
  %i.mh = tail call noundef float @llvm.fma.f32(float %i.mg, float %i.al, float %i.md)
  %i.mi = fadd float %i.mf, %i.mh                 ; 3 uses
  %i.mj = fmul float %i.ah, %i.aj                 ; 2 uses
  %i.mk = fneg float %i.mj
  %i.ml = tail call noundef float @llvm.fma.f32(float %i.ag, float %i.ak, float %i.mk)
  %i.mm = fneg float %i.ah
  %i.mn = tail call noundef float @llvm.fma.f32(float %i.mm, float %i.aj, float %i.mj)
  %i.mo = fadd float %i.ml, %i.mn                 ; 3 uses
  %i.mp = fmul float %i.mc, %i.mc
  %i.mq = fmul float %i.mi, %i.mi
  %i.mr = fadd float %i.mp, %i.mq
  %i.ms = fmul float %i.mo, %i.mo
  %i.mt = fadd float %i.ms, %i.mr
  %sqrt.i.i903 = tail call noundef float @llvm.sqrt.f32(float %i.mt) ; 3 uses
  %i.mu = fdiv float %i.mc, %sqrt.i.i903
  %i.mv = fdiv float %i.mi, %sqrt.i.i903
  %i.mw = fdiv float %i.mo, %sqrt.i.i903
  store float %i.mu, ptr %i.lj, align 8
  %.sroa.41187.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 132
  store float %i.mv, ptr %.sroa.41187.0..sroa_idx, align 4
  %.sroa.51188.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  store float %i.mw, ptr %.sroa.51188.0..sroa_idx, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.jx, ptr noundef nonnull align 8 dereferenceable(12) %i.lj, i64 12, i1 false)
  br i1 %.not1312, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.mx = load <2 x float>, ptr %i.jx, align 8, !tbaa !28
  %i.my = fneg <2 x float> %i.mx
  %i.mz = load float, ptr %.sroa.214.0..sroa_idx.i.i, align 8, !tbaa !121
  %i.na = fneg float %i.mz
  store <2 x float> %i.my, ptr %i.lj, align 8
  store float %i.na, ptr %.sroa.51188.0..sroa_idx, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.jx, ptr noundef nonnull align 8 dereferenceable(12) %i.lj, i64 12, i1 false)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.nb = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !118 ; 7 uses
  %.not699 = icmp eq ptr %i.nc, null              ; 2 uses
  br i1 %.not699, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.nd = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !355
  %.not700 = icmp eq ptr %i.ne, null
  br i1 %.not700, label %_ZN4pbrt18SurfaceInteraction18SetShadingGeometryENS_7Normal3IfEENS_7Vector3IfEES4_S2_S2_b.exit, label %bb.ab

bb.y:                                             ; preds = %bb.w
  %i.nf = load i32, ptr %i.g, align 4, !tbaa !89
  %i.ng = sext i32 %i.nf to i64
  %i.nh = getelementptr inbounds [12 x i8], ptr %i.nc, i64 %i.ng ; 2 uses
  %.sroa.0260.0.copyload = load <2 x float>, ptr %i.nh, align 4, !tbaa !28
  %.sroa.2261.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nh, i64 8
  %.sroa.2261.0.copyload = load float, ptr %.sroa.2261.0..sroa_idx, align 4, !tbaa !28
  %i.ni = fmul float %.sroa.0672.0.vec.extract, %.sroa.2261.0.copyload
  %i.nj = load i32, ptr %i.m, align 4, !tbaa !89
  %i.nk = sext i32 %i.nj to i64
  %i.nl = getelementptr inbounds [12 x i8], ptr %i.nc, i64 %i.nk ; 2 uses
  %.sroa.0250.0.copyload = load <2 x float>, ptr %i.nl, align 4, !tbaa !28
  %.sroa.2251.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nl, i64 8
  %.sroa.2251.0.copyload = load float, ptr %.sroa.2251.0..sroa_idx, align 4, !tbaa !28
  %i.nm = fmul float %.sroa.0672.4.vec.extract, %.sroa.2251.0.copyload
  %i.nn = fadd float %i.ni, %i.nm
  %i.no = load i32, ptr %i.q, align 4, !tbaa !89
  %i.np = sext i32 %i.no to i64
  %i.nq = getelementptr inbounds [12 x i8], ptr %i.nc, i64 %i.np ; 2 uses
  %.sroa.0234.0.copyload = load <2 x float>, ptr %i.nq, align 4, !tbaa !28
  %.sroa.2235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nq, i64 8
  %.sroa.2235.0.copyload = load float, ptr %.sroa.2235.0..sroa_idx, align 4, !tbaa !28
  %i.nr = fmul float %.sroa.11.8.vec.extract, %.sroa.2235.0.copyload
  %i.ns = fmul <2 x float> %i.hb, %.sroa.0260.0.copyload
  %i.nt = fmul <2 x float> %i.hd, %.sroa.0250.0.copyload
  %i.nu = fadd <2 x float> %i.ns, %i.nt
  %i.nv = fmul <2 x float> %i.hg, %.sroa.0234.0.copyload
  %i.nw = fadd <2 x float> %i.nu, %i.nv           ; 3 uses
  %i.nx = fadd float %i.nn, %i.nr                 ; 3 uses
  %i.ny = fmul <2 x float> %i.nw, %i.nw           ; 2 uses
  %shift1380 = shufflevector <2 x float> %i.ny, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1381 = fadd <2 x float> %i.ny, %shift1380
  %i.nz = extractelement <2 x float> %foldExtExtBinop1381, i64 0
  %i.oa = fmul float %i.nx, %i.nx
  %i.ob = fadd float %i.oa, %i.nz                 ; 2 uses
  %i.oc = fcmp ogt float %i.ob, 0.000000e+00
  br i1 %i.oc, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %sqrt.i.i948 = tail call noundef float @llvm.sqrt.f32(float %i.ob) ; 2 uses
  %i.od = insertelement <2 x float> poison, float %sqrt.i.i948, i64 0
  %i.oe = shufflevector <2 x float> %i.od, <2 x float> poison, <2 x i32> zeroinitializer
  %i.of = fdiv <2 x float> %i.nw, %i.oe
  %i.og = fdiv float %i.nx, %sqrt.i.i948
  br label %bb.ac

bb.aa:                                            ; preds = %bb.y
  %.sroa.0217.0.copyload = load <2 x float>, ptr %i.jx, align 8
  %.sroa.5219.0.copyload = load float, ptr %.sroa.214.0..sroa_idx.i.i, align 8
  br label %bb.ac

bb.ab:                                            ; preds = %bb.x
  %.sroa.01179.0.copyload = load <2 x float>, ptr %i.jx, align 8
  %.sroa.121185.0.copyload = load float, ptr %.sroa.214.0..sroa_idx.i.i, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.z, %bb.aa, %bb.ab
  %.sroa.01179.0 = phi <2 x float> [ %.sroa.01179.0.copyload, %bb.ab ], [ %i.of, %bb.z ], [ %.sroa.0217.0.copyload, %bb.aa ] ; 9 uses
  %.sroa.121185.0 = phi float [ %.sroa.121185.0.copyload, %bb.ab ], [ %i.og, %bb.z ], [ %.sroa.5219.0.copyload, %bb.aa ] ; 10 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !355 ; 4 uses
  %.not702 = icmp eq ptr %i.oi, null
  br i1 %.not702, label %._crit_edge, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.oj = load i32, ptr %i.g, align 4, !tbaa !89
  %i.ok = sext i32 %i.oj to i64
end_hunk_0
begin_hunk_1_@_ZN4pbrt5CrossIfEENS_7Vector3IT_EENS_7Normal3IS2_EES3_:bb.a
  %i.a = insertelement <2 x float> poison, float %1, i64 0
  %i.b = insertelement <2 x float> %i.a, float %3, i64 1 ; 2 uses
  %i.c = shufflevector <2 x float> %2, <2 x float> %0, <2 x i32> <i32 1, i32 2>
  %i.d = fmul <2 x float> %i.b, %i.c              ; 2 uses
  %i.e = fneg <2 x float> %i.d
  %i.f = shufflevector <2 x float> %0, <2 x float> %2, <2 x i32> <i32 1, i32 2>
  %i.g = shufflevector <2 x float> %i.b, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.h = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.f, <2 x float> %i.g, <2 x float> %i.e)
  %i.i = shufflevector <2 x float> %0, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.j = insertelement <2 x float> %i.i, float %1, i64 0
  %i.k = fneg <2 x float> %i.j
  %i.l = shufflevector <2 x float> %2, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.m = insertelement <2 x float> %i.l, float %3, i64 1
  %i.n = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.k, <2 x float> %i.m, <2 x float> %i.d)
  %i.o = fadd <2 x float> %i.h, %i.n
  %i.p = fmul float %.sroa.011.4.vec.extract, %.sroa.03.0.vec.extract ; 2 uses
  %i.q = fneg float %i.p
  %i.r = tail call noundef float @llvm.fma.f32(float %.sroa.011.0.vec.extract, float %.sroa.03.4.vec.extract, float %i.q)
  %i.s = fneg float %.sroa.011.4.vec.extract
  %i.t = tail call noundef float @llvm.fma.f32(float %i.s, float %.sroa.03.0.vec.extract, float %i.p)
  %i.u = fadd float %i.r, %i.t
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %i.o, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %i.u, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local { <2 x float>, float } @_ZNK4pbrt9Transform12ApplyInverseIfEENS_7Vector3IT_EES4_(ptr noundef nonnull align 4 dereferenceable(128) %0, <2 x float> %1, float %2) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = shufflevector <2 x float> %1, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.d = load <5 x float>, ptr %i.b, align 4, !tbaa !28 ; 3 uses
  %i.e = shufflevector <5 x float> %i.d, <5 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.f = shufflevector <5 x float> %i.d, <5 x float> poison, <2 x i32> <i32 1, i32 4>
  %i.g = fmul <2 x float> %i.a, %i.f
  %i.h = load <2 x float>, ptr %i.c, align 4, !tbaa !28 ; 2 uses
  %i.i = shufflevector <2 x float> %i.h, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.j = shufflevector <4 x float> %i.e, <4 x float> %i.i, <2 x i32> <i32 0, i32 4>
  %i.k = fmul <2 x float> %1, %i.j
  %i.l = fadd <2 x float> %i.g, %i.k
  %i.m = insertelement <2 x float> poison, float %2, i64 0
  %i.n = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> zeroinitializer
  %i.o = shufflevector <2 x float> %i.h, <2 x float> poison, <5 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison>
  %i.p = shufflevector <5 x float> %i.d, <5 x float> %i.o, <2 x i32> <i32 2, i32 6>
  %i.q = fmul <2 x float> %i.n, %i.p
  %i.r = fadd <2 x float> %i.l, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.t = load <2 x float>, ptr %i.s, align 4, !tbaa !28
  %i.u = fmul <2 x float> %1, %i.t                ; 2 uses
  %shift = shufflevector <2 x float> %i.u, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.u, %shift
  %i.v = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.x = load float, ptr %i.w, align 4, !tbaa !28
  %i.y = fmul float %2, %i.x
  %i.z = fadd float %i.v, %i.y
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %i.r, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %i.z, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN4pbrt6RotateEfNS_7Vector3IfEE(ptr dead_on_unwind noalias writable sret(%"class.pbrt::Transform") align 4 %0, float noundef %1, <2 x float> %2, float %3) local_unnamed_addr #13 comdat {
bb.a:
  %i.a = fmul float %1, f0x3C8EFA35               ; 2 uses
  %i.b = tail call noundef float @sinf(float noundef %i.a) #32 ; 3 uses
  %i.c = tail call noundef float @cosf(float noundef %i.a) #32 ; 4 uses
  %.sroa.01.0.vec.extract.i.i.i.i = extractelement <2 x float> %2, i64 0
  %foldExtExtBinop = fmul <2 x float> %2, %2
  %i.d = extractelement <2 x float> %foldExtExtBinop, i64 0
  %.sroa.01.4.vec.extract.i.i.i.i = extractelement <2 x float> %2, i64 1 ; 3 uses
  %i.e = fmul float %.sroa.01.4.vec.extract.i.i.i.i, %.sroa.01.4.vec.extract.i.i.i.i
  %i.f = fadd float %i.d, %i.e
  %i.g = fmul float %3, %3
  %i.h = fadd float %i.g, %i.f
  %sqrt.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.h) ; 3 uses
  %i.i = fsub float 1.000000e+00, %i.c            ; 3 uses
  %.sroa.5.0..sroa_idx115.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.7.0..sroa_idx116.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = fdiv float %3, %sqrt.i.i.i               ; 5 uses
  %i.k = fmul float %i.j, %i.b                    ; 2 uses
  %i.l = fmul float %i.j, %i.j                    ; 2 uses
  %i.m = fsub float 1.000000e+00, %i.l
  %i.n = fmul float %i.m, %i.c
  %i.o = fadd float %i.l, %i.n                    ; 2 uses
  %.sroa.13.0..sroa_idx120.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.16.0..sroa_idx121.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float 0.000000e+00, ptr %.sroa.16.0..sroa_idx121.i, align 4, !alias.scope !402
  %.sroa.18.0..sroa_idx122.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.19.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 36
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %i.o, ptr %.sroa.21.0..sroa_idx.i, align 4, !alias.scope !402
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 44
  %.sroa.30.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.24.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !402
  store float 1.000000e+00, ptr %.sroa.30.0..sroa_idx.i, align 4, !tbaa !62, !alias.scope !402
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 68
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 76
  store float 0.000000e+00, ptr %.sroa.6.0..sroa_idx.i, align 4, !alias.scope !402
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.q = fdiv float %.sroa.01.0.vec.extract.i.i.i.i, %sqrt.i.i.i ; 5 uses
  %i.r = fmul float %i.q, %i.q                    ; 2 uses
  %i.s = fsub float 1.000000e+00, %i.r
  %i.t = fmul float %i.s, %i.c
  %i.u = fadd float %i.r, %i.t                    ; 2 uses
  %i.v = fmul float %i.q, %i.b                    ; 2 uses
  store float %i.u, ptr %0, align 4, !alias.scope !402
  %i.w = fdiv float %.sroa.01.4.vec.extract.i.i.i.i, %sqrt.i.i.i ; 5 uses
  %i.x = fmul float %i.q, %i.w
  %i.y = fmul float %i.x, %i.i                    ; 2 uses
  %i.z = fsub float %i.y, %i.k                    ; 2 uses
  %i.aa = fmul float %i.q, %i.j
  %i.ab = fmul float %i.aa, %i.i                  ; 2 uses
  %i.ac = fmul float %i.w, %i.b                   ; 2 uses
  %i.ad = fadd float %i.ac, %i.ab                 ; 2 uses
  %i.ae = fadd float %i.k, %i.y                   ; 2 uses
  %i.af = fmul float %i.w, %i.w                   ; 2 uses
  %i.ag = fsub float 1.000000e+00, %i.af
  %i.ah = fmul float %i.ag, %i.c
  %i.ai = fadd float %i.af, %i.ah                 ; 2 uses
  %i.aj = fmul float %i.w, %i.j
  %i.ak = fmul float %i.aj, %i.i                  ; 2 uses
  %i.al = fsub float %i.ak, %i.v                  ; 2 uses
  %i.am = fsub float %i.ab, %i.ac                 ; 2 uses
  %i.an = fadd float %i.v, %i.ak                  ; 2 uses
  store float %i.z, ptr %.sroa.5.0..sroa_idx115.i, align 4, !alias.scope !402
  %i.ao = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.ad, i64 0
  %i.ap = insertelement <4 x float> %i.ao, float %i.ae, i64 2
  %i.aq = insertelement <4 x float> %i.ap, float %i.ai, i64 3
  store <4 x float> %i.aq, ptr %.sroa.7.0..sroa_idx116.i, align 4, !alias.scope !402
  store float %i.al, ptr %.sroa.13.0..sroa_idx120.i, align 4, !alias.scope !402
  store float %i.am, ptr %.sroa.18.0..sroa_idx122.i, align 4, !alias.scope !402
  store float %i.an, ptr %.sroa.19.0..sroa_idx.i, align 4, !alias.scope !402
  store float %i.u, ptr %i.p, align 4, !alias.scope !402
  store float %i.ae, ptr %.sroa.4.0..sroa_idx.i, align 4, !alias.scope !402
  store float %i.am, ptr %.sroa.5.0..sroa_idx.i, align 4, !alias.scope !402
  store float %i.z, ptr %.sroa.7.0..sroa_idx.i, align 4, !alias.scope !402
  %i.ar = insertelement <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, float %i.ai, i64 0
  %i.as = insertelement <4 x float> %i.ar, float %i.an, i64 1
  %i.at = insertelement <4 x float> %i.as, float %i.ad, i64 3
  store <4 x float> %i.at, ptr %.sroa.8.0..sroa_idx.i, align 4, !alias.scope !402
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 100
  store float %i.al, ptr %.sroa.12.0..sroa_idx.i, align 4, !alias.scope !402
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  store float %i.o, ptr %.sroa.13.0..sroa_idx.i, align 4, !alias.scope !402
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 108
  %.sroa.18.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 124
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.14.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !402
  store float 1.000000e+00, ptr %.sroa.18.0..sroa_idx.i, align 4, !tbaa !62, !alias.scope !402
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local { <2 x float>, float } @_ZNK4pbrt9TransformclIfEENS_7Vector3IT_EES4_(ptr noundef nonnull align 4 dereferenceable(128) %0, <2 x float> %1, float %2) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = shufflevector <2 x float> %1, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.c = load <5 x float>, ptr %0, align 4, !tbaa !28 ; 3 uses
  %i.d = shufflevector <5 x float> %i.c, <5 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.e = shufflevector <5 x float> %i.c, <5 x float> poison, <2 x i32> <i32 1, i32 4>
  %i.f = fmul <2 x float> %i.a, %i.e
  %i.g = load <2 x float>, ptr %i.b, align 4, !tbaa !28 ; 2 uses
  %i.h = shufflevector <2 x float> %i.g, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.i = shufflevector <4 x float> %i.d, <4 x float> %i.h, <2 x i32> <i32 0, i32 4>
  %i.j = fmul <2 x float> %1, %i.i
  %i.k = fadd <2 x float> %i.f, %i.j
  %i.l = insertelement <2 x float> poison, float %2, i64 0
  %i.m = shufflevector <2 x float> %i.l, <2 x float> poison, <2 x i32> zeroinitializer
  %i.n = shufflevector <2 x float> %i.g, <2 x float> poison, <5 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison>
  %i.o = shufflevector <5 x float> %i.c, <5 x float> %i.n, <2 x i32> <i32 2, i32 6>
  %i.p = fmul <2 x float> %i.m, %i.o
  %i.q = fadd <2 x float> %i.k, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load <2 x float>, ptr %i.r, align 4, !tbaa !28
  %i.t = fmul <2 x float> %1, %i.s                ; 2 uses
  %shift = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.t, %shift
  %i.u = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = load float, ptr %i.v, align 4, !tbaa !28
  %i.x = fmul float %2, %i.w
  %i.y = fadd float %i.u, %i.x
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %i.q, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %i.y, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4pbrt18SurfaceInteractionC2ENS_8Point3fiENS_6Point2IfEENS_7Vector3IfEES5_S5_NS_7Normal3IfEES7_fb(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef byval(%"class.pbrt::Point3fi") align 8 %1, <2 x float> %2, <2 x float> %3, float %4, <2 x float> %5, float %6, <2 x float> %7, float %8, ptr noundef byval(%"class.pbrt::Normal3") align 8 %9, ptr noundef byval(%"class.pbrt::Normal3") align 8 %10, float noundef %11, i1 noundef zeroext %12) unnamed_addr #2 comdat align 2 {
bb.a:
  %.sroa.011.4.vec.extract.i = extractelement <2 x float> %5, i64 1 ; 2 uses
  %.sroa.03.4.vec.extract.i = extractelement <2 x float> %7, i64 1
  %.sroa.03.0.vec.extract.i = extractelement <2 x float> %7, i64 0 ; 2 uses
  %.sroa.011.0.vec.extract.i = extractelement <2 x float> %5, i64 0
  %i.a = fmul float %.sroa.011.4.vec.extract.i, %.sroa.03.0.vec.extract.i ; 2 uses
  %i.b = fneg float %i.a
  %i.c = fneg float %.sroa.011.4.vec.extract.i
  %i.d = insertelement <2 x float> poison, float %6, i64 0
  %i.e = insertelement <2 x float> %i.d, float %8, i64 1 ; 2 uses
  %i.f = shufflevector <2 x float> %7, <2 x float> %5, <2 x i32> <i32 1, i32 2>
  %i.g = fmul <2 x float> %i.e, %i.f              ; 2 uses
  %i.h = fneg <2 x float> %i.g
  %i.i = shufflevector <2 x float> %5, <2 x float> %7, <2 x i32> <i32 1, i32 2>
  %i.j = shufflevector <2 x float> %i.e, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.k = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.i, <2 x float> %i.j, <2 x float> %i.h)
  %i.l = shufflevector <2 x float> %5, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.m = insertelement <2 x float> %i.l, float %6, i64 0
  %i.n = fneg <2 x float> %i.m
  %i.o = shufflevector <2 x float> %7, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.p = insertelement <2 x float> %i.o, float %8, i64 1
  %i.q = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.n, <2 x float> %i.p, <2 x float> %i.g)
  %i.r = fadd <2 x float> %i.k, %i.q              ; 3 uses
  %i.s = fmul <2 x float> %i.r, %i.r              ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %11, ptr %i.t, align 8, !tbaa !140
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 28
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %13 = tail call noundef float @llvm.fma.f32(float %.sroa.011.0.vec.extract.i, float %.sroa.03.4.vec.extract.i, float %i.b)
  %14 = tail call noundef float @llvm.fma.f32(float %i.c, float %.sroa.03.0.vec.extract.i, float %i.a)
  %i.w = fadd float %13, %14                      ; 3 uses
  %i.x = fmul float %i.w, %i.w
  %shift = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.s, %shift
  %i.y = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.z = fadd float %i.x, %i.y
  %i.aa = fmul <2 x float> %3, %3                 ; 2 uses
  %shift52 = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop53 = fadd <2 x float> %i.aa, %shift52
  %i.ab = extractelement <2 x float> %foldExtExtBinop53, i64 0
  %i.ac = fmul float %4, %4
  %i.ad = fadd float %i.ac, %i.ab
  %i.ae = insertelement <2 x float> poison, float %i.ad, i64 0
  %i.af = insertelement <2 x float> %i.ae, float %i.z, i64 1
  %i.ag = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.af) ; 3 uses
  %i.ah = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ai = fdiv <2 x float> %i.r, %i.ah            ; 2 uses
  %i.aj = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ak = fdiv <2 x float> %3, %i.aj
  %i.al = insertelement <2 x float> poison, float %4, i64 0
  %i.am = insertelement <2 x float> %i.al, float %i.w, i64 1
  %i.an = fdiv <2 x float> %i.am, %i.ag           ; 2 uses
  store <2 x float> %i.ak, ptr %i.u, align 4
  store <2 x float> %i.ai, ptr %i.v, align 8
  %i.ao = shufflevector <2 x float> %i.an, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 1>
  tail call void @llvm.masked.store.v4f32.p0(<4 x float> %i.ao, ptr align 4 %.sroa.2.0..sroa_idx.i, <4 x i1> <i1 true, i1 false, i1 false, i1 true>)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 52
  store <2 x float> %2, ptr %i.ap, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i8 0, i64 16, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <2 x float> %5, ptr %i.ar, align 8
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store float %6, ptr %.sroa.439.0..sroa_idx, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 92
  store <2 x float> %7, ptr %i.as, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 100
  store float %8, ptr %.sroa.4.0..sroa_idx, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.at, ptr noundef nonnull align 8 dereferenceable(12) %9, i64 12, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 116
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.au, ptr noundef nonnull align 8 dereferenceable(12) %10, i64 12, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 188
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %i.aw, i8 0, i64 60, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.av, ptr noundef nonnull align 8 dereferenceable(12) %i.v, i64 12, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 140
  store <2 x float> %5, ptr %i.ax, align 4
  %.sroa.439.0..sroa_idx40 = getelementptr inbounds nuw i8, ptr %0, i64 148
  store float %6, ptr %.sroa.439.0..sroa_idx40, align 4
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 152
  store <2 x float> %7, ptr %i.ay, align 8
  %.sroa.4.0..sroa_idx33 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store float %8, ptr %.sroa.4.0..sroa_idx33, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 164
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.az, ptr noundef nonnull align 8 dereferenceable(12) %9, i64 12, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ba, ptr noundef nonnull align 8 dereferenceable(12) %10, i64 12, i1 false)
  br i1 %12, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.214.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bb = fneg <2 x float> %i.ai
  store <2 x float> %i.bb, ptr %i.v, align 8, !tbaa !28
  %i.bc = extractelement <2 x float> %i.an, i64 1
  %i.bd = fneg float %i.bc
  store float %i.bd, ptr %.sroa.214.0..sroa_idx.i, align 8, !tbaa !121
  %i.be = load <2 x float>, ptr %i.av, align 8, !tbaa !28
  %i.bf = fneg <2 x float> %i.be
  store <2 x float> %i.bf, ptr %i.av, align 8, !tbaa !28
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.bh = load float, ptr %i.bg, align 8, !tbaa !121
  %i.bi = fneg float %i.bh
  store float %i.bi, ptr %i.bg, align 8, !tbaa !121
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @_ZNK4pbrt9TransformclERKNS_18SurfaceInteractionE(ptr dead_on_unwind writable sret(%"class.pbrt::SurfaceInteraction") align 8, ptr noundef nonnull align 4 dereferenceable(128), ptr noundef nonnull align 8 dereferenceable(248)) local_unnamed_addr #1

; Function Attrs: mustprogress noreturn uwtable
define dso_local void @_ZNK4pbrt5Curve6SampleENS_6Point2IfEE(ptr dead_on_unwind noalias nofree readnone sret(%"class.pstd::optional") align 8 captures(none) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(16) %1, <2 x float> %2) local_unnamed_addr #15 align 2 {
bb.a:
  tail call void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef 2, ptr noundef nonnull @.str.15, i32 noundef 737, ptr noundef nonnull @.str.49) #34
  unreachable
}

; Function Attrs: mustprogress noreturn uwtable
define dso_local noundef float @_ZNK4pbrt5Curve3PDFERKNS_11InteractionE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(80) %1) local_unnamed_addr #16 align 2 {
bb.a:
  tail call void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef 2, ptr noundef nonnull @.str.15, i32 noundef 742, ptr noundef nonnull @.str.50) #34
  unreachable
}

; Function Attrs: mustprogress noreturn uwtable
define dso_local void @_ZNK4pbrt5Curve6SampleERKNS_18ShapeSampleContextENS_6Point2IfEE(ptr dead_on_unwind noalias nofree readnone sret(%"class.pstd::optional") align 8 captures(none) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readnone align 4 captures(none) dereferenceable(52) %2, <2 x float> %3) local_unnamed_addr #15 align 2 {
bb.a:
  tail call void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef 2, ptr noundef nonnull @.str.15, i32 noundef 748, ptr noundef nonnull @.str.49) #34
  unreachable
}

; Function Attrs: mustprogress noreturn uwtable
define dso_local noundef float @_ZNK4pbrt5Curve3PDFERKNS_18ShapeSampleContextENS_7Vector3IfEE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readnone align 4 captures(none) dereferenceable(52) %1, <2 x float> %2, float %3) local_unnamed_addr #15 align 2 {
bb.a:
  tail call void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef 2, ptr noundef nonnull @.str.15, i32 noundef 753, ptr noundef nonnull @.str.50) #34
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4pbrt5Curve8ToStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !180
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !59, !alias.scope !405
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.e, align 8, !tbaa !61, !alias.scope !405
  store i8 0, ptr %i.d, align 8, !tbaa !62, !alias.scope !405
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRKNS_11CurveCommonEJRKfS6_EEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_(ptr noundef nonnull align 8 %0, ptr noundef nonnull @.str.51, ptr noundef nonnull align 8 dereferenceable(114) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %_ZN4pbrt12StringPrintfIJRKNS_11CurveCommonERKfS5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %0, align 8, !tbaa !63, !alias.scope !405 ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.d
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.i = load i64, ptr %i.d, align 8, !tbaa !62, !alias.scope !405
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.j) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  resume { ptr, i32 } %i.f

_ZN4pbrt12StringPrintfIJRKNS_11CurveCommonERKfS5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4pbrt5Curve6CreateEPKNS_9TransformES3_bRKNS_19ParameterDictionaryEPKNS_7FileLocEN4pstd3pmr21polymorphic_allocatorISt4byteEE(ptr dead_on_unwind noalias writable sret(%"class.pstd::vector") align 8 %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(108) %4, ptr noundef %5, i64 %6) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = alloca i32, align 4                      ; 12 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %21 = alloca %"class.std::vector.31", align 8   ; 14 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %26 = alloca %"class.std::vector.48", align 8   ; 13 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %29 = alloca %"class.pstd::array.64", align 8   ; 17 uses
  %30 = alloca %"class.pstd::vector", align 8     ; 9 uses
  %31 = alloca %"class.pstd::span.62", align 8    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #32
  %i.i = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  store ptr %i.i, ptr %14, align 8, !tbaa !59
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.i, ptr noundef nonnull align 1 dereferenceable(5) @.str.52, i64 5, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 5, ptr %i.j, align 8, !tbaa !61
  %i.k = getelementptr inbounds nuw i8, ptr %14, i64 21
  store i8 0, ptr %i.k, align 1, !tbaa !62
  %i.l = invoke noundef float @_ZNK4pbrt19ParameterDictionary11GetOneFloatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEf(ptr noundef nonnull align 8 dereferenceable(108) %4, ptr noundef nonnull align 8 dereferenceable(32) %14, float noundef 1.000000e+00)
          to label %bb.a unwind label %bb.i       ; 2 uses

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.m = load ptr, ptr %14, align 8, !tbaa !63    ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.i
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.o = load i64, ptr %i.i, align 8, !tbaa !62
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.p) #33
end_hunk_1
