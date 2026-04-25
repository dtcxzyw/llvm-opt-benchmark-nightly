inline.NumInlined: 10360
inline.NumDeleted: 3521
begin_hunk_0_@_ZL16GetNodeTransformR12aiMatrix4x4tIfERKN5glTF24NodeE:bb.a
  %i.dg = shufflevector <4 x float> <float -0.000000e+00, float poison, float -0.000000e+00, float -0.000000e+00>, <4 x float> %i.cw, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %i.dh = fadd <4 x float> %i.dg, %i.df
  %i.di = insertelement <4 x float> poison, float %.sroa.18158.0.copyload160, i64 0
  %i.dj = insertelement <4 x float> %i.di, float %i.bg, i64 1
  %2 = shufflevector <4 x float> %i.dj, <4 x float> %i.cy, <4 x i32> <i32 0, i32 0, i32 1, i32 5>
  %i.dk = shufflevector <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float 0.000000e+00>, <4 x float> %i.cw, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.dl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %2, <4 x float> %i.dk, <4 x float> %i.dh)
  %i.dm = insertelement <4 x float> <float -0.000000e+00, float -0.000000e+00, float poison, float -0.000000e+00>, float %.sroa.18158.0.copyload160, i64 2
end_hunk_0
begin_hunk_1_@_ZL16GetNodeTransformR12aiMatrix4x4tIfERKN5glTF24NodeE:bb.a
  %i.ef = shufflevector <4 x float> <float -0.000000e+00, float poison, float -0.000000e+00, float -0.000000e+00>, <4 x float> %i.ee, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %i.eg = fadd <4 x float> %i.ef, %i.ed
  %i.eh = insertelement <4 x float> poison, float %.sroa.26170.0.copyload172, i64 0
  %i.ei = insertelement <4 x float> %i.eh, float %i.bg, i64 1
  %3 = shufflevector <4 x float> %i.ei, <4 x float> %i.dx, <4 x i32> <i32 0, i32 0, i32 1, i32 5>
  %i.ej = shufflevector <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float 0.000000e+00>, <4 x float> %i.cy, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.ek = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %3, <4 x float> %i.ej, <4 x float> %i.eg)
  %i.el = insertelement <4 x float> <float -0.000000e+00, float -0.000000e+00, float poison, float -0.000000e+00>, float %.sroa.26170.0.copyload172, i64 2
end_hunk_1
begin_hunk_2_@_ZL16GetNodeTransformR12aiMatrix4x4tIfERKN5glTF24NodeE:bb.a
bb.f:                                             ; preds = %bb.e
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 396
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 404
  %.sroa.087.0.copyload88 = load float, ptr %0, align 4 ; 3 uses
  %.sroa.689.0..sroa_idx90 = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.sroa.689.0.copyload91 = load float, ptr %.sroa.689.0..sroa_idx90, align 4 ; 3 uses
  %.sroa.892.0..sroa_idx93 = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_2
begin_hunk_3_@_ZL16GetNodeTransformR12aiMatrix4x4tIfERKN5glTF24NodeE:bb.a
  %i.gl = insertelement <2 x float> poison, float %.sroa.689.0.copyload91, i64 0
  %i.gm = shufflevector <2 x float> %i.gl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gn = fmul <2 x float> %i.gm, %i.fw
  %i.go = insertelement <2 x float> poison, float %.sroa.087.0.copyload88, i64 0
  %i.gp = shufflevector <2 x float> %i.go, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fl, <2 x float> %i.gp, <2 x float> %i.gn)
  %i.gr = fmul float %i.fp, %.sroa.14101.0.copyload103
  %i.gs = tail call float @llvm.fmuladd.f32(float %i.fe, float %.sroa.1298.0.copyload100, float %i.gr)
  %4 = shufflevector <2 x float> %i.ge, <2 x float> %i.gf, <4 x i32> <i32 0, i32 poison, i32 2, i32 poison>
  %5 = insertelement <4 x float> %4, float %.sroa.087.0.copyload88, i64 1
  %6 = shufflevector <4 x float> %5, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 2>
  %i.gt = insertelement <4 x float> poison, float %i.es, i64 2
  %i.gu = insertelement <4 x float> %i.gt, float %i.gs, i64 3
  %i.gv = shufflevector <2 x float> %i.gq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
end_hunk_3
begin_hunk_4_@_ZL16GetNodeTransformR12aiMatrix4x4tIfERKN5glTF24NodeE:bb.a
  %i.hk = shufflevector <2 x float> %i.hj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fl, <2 x float> %i.hk, <2 x float> %i.hi)
  %i.hm = shufflevector <2 x float> %i.he, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 poison> ; 3 uses
  %7 = shufflevector <2 x float> %i.gf, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison> ; 2 uses
  %i.hn = insertelement <4 x float> %7, float 0.000000e+00, i64 2
  %i.ho = insertelement <4 x float> %i.hn, float %i.fz, i64 3
  %i.hp = insertelement <4 x float> poison, float %i.et, i64 2
  %i.hq = insertelement <4 x float> %i.hp, float %i.hb, i64 3
  %i.hr = shufflevector <2 x float> %i.hl, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.hs = shufflevector <4 x float> %i.hr, <4 x float> %i.hq, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ht = insertelement <4 x float> %7, float %.sroa.18107.0.copyload109, i64 0
  %i.hu = shufflevector <4 x float> %i.ht, <4 x float> %i.hm, <4 x i32> <i32 0, i32 0, i32 2, i32 5>
  %i.hv = insertelement <4 x float> <float -0.000000e+00, float -0.000000e+00, float poison, float -0.000000e+00>, float %.sroa.18107.0.copyload109, i64 2
  %i.hw = load <2 x float>, ptr %.sroa.32128.0..sroa_idx129, align 4 ; 3 uses
end_hunk_4
begin_hunk_5_@_ZL16GetNodeTransformR12aiMatrix4x4tIfERKN5glTF24NodeE:bb.a
  %i.mk = tail call float @llvm.fmuladd.f32(float %.sroa.20.0.copyload37, float 0.000000e+00, float %i.kr) ; 2 uses
  %i.ml = tail call float @llvm.fmuladd.f32(float %i.ki, float %i.mi, float %i.mk)
  %i.mm = tail call float @llvm.fmuladd.f32(float %.sroa.32.0.copyload49, float 0.000000e+00, float %i.kw)
  %8 = shufflevector <2 x float> %i.mh, <2 x float> poison, <3 x i32> <i32 1, i32 0, i32 poison>
  %9 = insertelement <3 x float> %8, float %.sroa.34.0.copyload51, i64 2
  %10 = shufflevector <3 x float> %9, <3 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 2>
  %i.mn = insertelement <4 x float> poison, float %i.mj, i64 0
  %i.mo = insertelement <4 x float> %i.mn, float %i.ml, i64 1
  %i.mp = insertelement <4 x float> %i.mo, float %i.mk, i64 2
  %i.mq = insertelement <4 x float> %i.mp, float %i.mm, i64 3
  %i.mr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %10, <4 x float> zeroinitializer, <4 x float> %i.mq)
  %i.ms = shufflevector <2 x float> %i.mh, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.mt = shufflevector <4 x float> <float -0.000000e+00, float -0.000000e+00, float poison, float -0.000000e+00>, <4 x float> %i.ms, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.mu = fadd <4 x float> %i.mt, %i.mr
end_hunk_5
