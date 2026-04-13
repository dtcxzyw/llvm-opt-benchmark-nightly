inline.NumInlined: 2865
inline.NumDeleted: 633
begin_hunk_0_@_ZN10btSoftBody18initializeClustersEv:bb.a
  %indvars.iv187 = phi i64 [ 0, %.lr.ph174 ], [ %indvars.iv.next188, %._crit_edge171 ] ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !145
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv187
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !285  ; 45 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 164 ; 6 uses
  store float 0.000000e+00, ptr %i.h, align 4, !tbaa !447
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN10btSoftBody18initializeClustersEv:bb.a
  store <2 x float> %i.dr, ptr %.sroa.432.0..sroa_idx, align 8, !tbaa !184
  %i.dt = getelementptr inbounds nuw i8, ptr %i.g, i64 352
  %i.du = getelementptr inbounds nuw i8, ptr %i.g, i64 168 ; 3 uses
  %.sroa.4141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 204
  %.sroa.5142.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 208 ; 2 uses
  %.sroa.6143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 212
end_hunk_1
begin_hunk_2_@_ZN10btSoftBody18initializeClustersEv:bb.a
  %i.gh = phi float [ 0.000000e+00, %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.._crit_edge164_crit_edge ], [ %i.fw, %bb.l ] ; 2 uses
  %i.gi = phi float [ %.pre201, %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.._crit_edge164_crit_edge ], [ %i.fv, %bb.l ] ; 3 uses
  %i.gj = phi float [ %.pre199, %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.._crit_edge164_crit_edge ], [ %i.gf, %bb.l ] ; 4 uses
  %i.gk = phi <2 x float> [ %i.dw, %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.._crit_edge164_crit_edge ], [ %i.fz, %bb.l ] ; 6 uses
  %i.gl = phi <2 x float> [ %i.dx, %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.._crit_edge164_crit_edge ], [ %i.fu, %bb.l ]
  %i.gm = getelementptr inbounds nuw i8, ptr %i.g, i64 172
  %i.gn = getelementptr inbounds nuw i8, ptr %i.g, i64 188
  %1 = fneg <2 x float> %i.gl
  %2 = extractelement <2 x float> %i.gk, i64 0    ; 2 uses
  %3 = extractelement <2 x float> %i.gk, i64 1    ; 4 uses
  %i.go = fneg float %3
  %i.gp = fmul float %3, %i.go
  %i.gq = tail call noundef float @llvm.fmuladd.f32(float %i.gg, float %i.gi, float %i.gp)
  %4 = shufflevector <2 x float> %i.gk, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %5 = fmul <2 x float> %4, %1
  %6 = insertelement <2 x float> poison, float %i.gj, i64 0
  %7 = shufflevector <2 x float> %6, <2 x float> poison, <2 x i32> zeroinitializer
  %8 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gk, <2 x float> %7, <2 x float> %5) ; 2 uses
  %i.gr = extractelement <2 x float> %8, i64 0
  %9 = fmul float %3, %i.gr
  %10 = shufflevector <2 x float> %8, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %11 = shufflevector <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, <4 x float> %10, <4 x i32> <i32 poison, i32 poison, i32 2, i32 4>
  %12 = shufflevector <4 x float> %10, <4 x float> %11, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %13 = fneg float %i.gj                          ; 2 uses
  %i.gs = fneg float %2                           ; 2 uses
  %i.gt = fmul float %i.gj, %13
  %i.gu = tail call noundef float @llvm.fmuladd.f32(float %i.gi, float %i.gh, float %i.gt) ; 2 uses
  %14 = fmul float %i.gi, %i.gs
  %15 = tail call noundef float @llvm.fmuladd.f32(float %3, float %i.gj, float %14) ; 2 uses
  %i.gv = insertelement <2 x float> %i.gk, float %i.gg, i64 1
  %16 = insertelement <2 x float> poison, float %i.gs, i64 0
  %17 = insertelement <2 x float> %16, float %13, i64 1
  %18 = fmul <2 x float> %i.gv, %17
  %19 = insertelement <2 x float> %4, float %i.gg, i64 0
  %20 = insertelement <2 x float> %i.gk, float %i.gh, i64 0
  %21 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %19, <2 x float> %20, <2 x float> %18)
  %22 = tail call float @llvm.fmuladd.f32(float %i.gg, float %i.gu, float %9)
  %23 = tail call noundef float @llvm.fmuladd.f32(float %2, float %15, float %22)
  %24 = fdiv float 1.000000e+00, %23              ; 3 uses
  %25 = fmul float %i.gu, %24
  %i.gw = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %24, i64 0
  %i.gx = shufflevector <4 x float> %i.gw, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0> ; 2 uses
  %i.gy = fmul <4 x float> %12, %i.gx
  %26 = insertelement <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, float %15, i64 3
  %27 = shufflevector <2 x float> %21, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %28 = shufflevector <4 x float> %27, <4 x float> %26, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %29 = fmul <4 x float> %28, %i.gx               ; 2 uses
  %30 = fmul float %i.gq, %24
  store float %25, ptr %i.du, align 4
  store <4 x float> %i.gy, ptr %i.gm, align 4
  store <4 x float> %29, ptr %i.gn, align 4
  %31 = extractelement <4 x float> %29, i64 1
  store float %31, ptr %.sroa.4141.0..sroa_idx, align 4
  store float %30, ptr %.sroa.5142.0..sroa_idx, align 4
  store float 0.000000e+00, ptr %.sroa.6143.0..sroa_idx, align 4, !tbaa !184
  %i.gz = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  store float 1.000000e+00, ptr %i.gz, align 4, !tbaa !159
end_hunk_2
begin_hunk_3_@_ZN10btSoftBody6AJoint7PrepareEfi:bb.a
  %.0.i33 = select i1 %.not5.i30, ptr %spec.select.i32, ptr %i.fe ; 6 uses
  %i.fh = load float, ptr %.0.i28, align 4, !tbaa !159, !noalias !615
  %i.fi = load float, ptr %.0.i33, align 4, !tbaa !159, !noalias !615
  %i.fj = getelementptr inbounds nuw i8, ptr %.0.i28, i64 4
  %i.fk = getelementptr inbounds nuw i8, ptr %.0.i33, i64 4
  %i.fl = getelementptr inbounds nuw i8, ptr %.0.i28, i64 16
end_hunk_3
begin_hunk_4_@_ZN10btSoftBody6AJoint7PrepareEfi:bb.a
  %i.ft = getelementptr inbounds nuw i8, ptr %.0.i33, i64 32
  %i.fu = load float, ptr %i.fs, align 4, !tbaa !159, !noalias !615
  %i.fv = load float, ptr %i.ft, align 4, !tbaa !159, !noalias !615
  %i.fw = getelementptr inbounds nuw i8, ptr %.0.i28, i64 36
  %i.fx = getelementptr inbounds nuw i8, ptr %.0.i33, i64 36
  %i.fy = fneg float %i.fp
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.ga = load <2 x float>, ptr %i.fj, align 4, !tbaa !159, !noalias !615 ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN10btSoftBody6AJoint7PrepareEfi:bb.a
  %i.gd = load <2 x float>, ptr %i.fr, align 4, !tbaa !159, !noalias !615 ; 2 uses
  %i.ge = shufflevector <2 x float> %i.gc, <2 x float> %i.ga, <2 x i32> <i32 0, i32 3>
  %i.gf = shufflevector <2 x float> %i.gd, <2 x float> %i.gb, <2 x i32> <i32 0, i32 3>
  %i.gg = fadd <2 x float> %i.ge, %i.gf           ; 4 uses
  %i.gh = shufflevector <2 x float> %i.gc, <2 x float> %i.ga, <2 x i32> <i32 1, i32 2>
  %i.gi = shufflevector <2 x float> %i.gd, <2 x float> %i.gb, <2 x i32> <i32 1, i32 2>
  %i.gj = fadd <2 x float> %i.gh, %i.gi           ; 4 uses
  %i.gk = load <2 x float>, ptr %i.fw, align 4, !tbaa !159, !noalias !615
  %i.gl = load <2 x float>, ptr %i.fx, align 4, !tbaa !159, !noalias !615
  %i.gm = fadd <2 x float> %i.gk, %i.gl           ; 3 uses
  %i.gn = shufflevector <2 x float> %i.gm, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.go = fneg <2 x float> %i.gm                  ; 3 uses
  %3 = extractelement <2 x float> %i.gj, i64 0    ; 2 uses
  %i.gp = extractelement <2 x float> %i.gg, i64 0 ; 3 uses
  %4 = extractelement <2 x float> %i.gm, i64 0
  %i.gq = extractelement <2 x float> %i.gj, i64 1 ; 4 uses
  %5 = fmul <2 x float> %i.gj, %i.go
  %6 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gg, <2 x float> %i.gn, <2 x float> %5) ; 2 uses
  %7 = extractelement <2 x float> %6, i64 0
  %i.gr = extractelement <2 x float> %i.gg, i64 1 ; 3 uses
  %8 = fneg float %i.gp
  %i.gs = fmul float %i.gr, %8
  %9 = tail call noundef float @llvm.fmuladd.f32(float %i.gq, float %3, float %i.gs)
  %10 = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %9, i64 2
  %11 = shufflevector <2 x float> %6, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %12 = shufflevector <4 x float> %11, <4 x float> %10, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %13 = fneg float %3
  %i.gt = extractelement <2 x float> %i.go, i64 0
  %i.gu = fmul float %i.gq, %i.fy
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 148
  %15 = insertelement <2 x float> poison, float %i.fu, i64 0
  %16 = insertelement <2 x float> %15, float %i.fh, i64 1
  %17 = insertelement <2 x float> poison, float %i.fv, i64 0
  %18 = insertelement <2 x float> %17, float %i.fi, i64 1
  %19 = fadd <2 x float> %16, %18                 ; 3 uses
  %20 = extractelement <2 x float> %19, i64 0     ; 2 uses
  %i.gv = fneg float %20                          ; 2 uses
  %i.gw = fmul float %i.gp, %i.gv
  %i.gx = tail call noundef float @llvm.fmuladd.f32(float %i.fp, float %4, float %i.gw) ; 2 uses
  %21 = insertelement <2 x float> poison, float %i.fp, i64 0
  %22 = insertelement <2 x float> %21, float %i.gv, i64 1
  %23 = shufflevector <2 x float> %i.go, <2 x float> %i.gg, <2 x i32> <i32 1, i32 3>
  %24 = fmul <2 x float> %22, %23
  %25 = shufflevector <2 x float> %i.gj, <2 x float> %i.gn, <2 x i32> <i32 0, i32 2>
  %26 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %25, <2 x float> %19, <2 x float> %24) ; 2 uses
  %27 = extractelement <2 x float> %26, i64 0
  %i.gy = fmul float %i.gq, %27
  %i.gz = extractelement <2 x float> %19, i64 1   ; 4 uses
  %i.ha = tail call float @llvm.fmuladd.f32(float %i.gz, float %7, float %i.gy)
  %28 = tail call noundef float @llvm.fmuladd.f32(float %i.gr, float %i.gx, float %i.ha)
  %29 = fdiv float 1.000000e+00, %28              ; 4 uses
  %30 = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %29, i64 0
  %31 = shufflevector <4 x float> %30, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1> ; 2 uses
  %32 = fmul <4 x float> %12, %31                 ; 4 uses
  %i.hb = fmul float %i.gz, %13
  %i.hc = tail call noundef float @llvm.fmuladd.f32(float %i.gr, float %i.fp, float %i.hb)
  %33 = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.hc, i64 2
  %34 = shufflevector <2 x float> %26, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %35 = shufflevector <4 x float> %34, <4 x float> %33, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %36 = fmul <4 x float> %35, %31                 ; 4 uses
  %37 = fmul float %i.gx, %29                     ; 2 uses
  %38 = fmul float %i.gz, %i.gt
  %39 = tail call noundef float @llvm.fmuladd.f32(float %i.gq, float %20, float %38)
  %40 = fmul float %39, %29                       ; 2 uses
  %41 = tail call noundef float @llvm.fmuladd.f32(float %i.gz, float %i.gp, float %i.gu)
  %42 = fmul float %41, %29                       ; 2 uses
  store <4 x float> %32, ptr %i.fz, align 4
  store <4 x float> %36, ptr %14, align 4
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 164
  store float %37, ptr %i.hd, align 4
  %.sroa.14.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  store float %40, ptr %.sroa.14.32..sroa_idx, align 8
  %.sroa.15.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 172
  store float %42, ptr %.sroa.15.32..sroa_idx, align 4
  %.sroa.16.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176
  store float 0.000000e+00, ptr %.sroa.16.32..sroa_idx, align 8, !tbaa !184
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 96
end_hunk_5
begin_hunk_6_@_ZN10btSoftBody6AJoint7PrepareEfi:bb.a
  %i.hh = fmul float %i.hf, %.pre                 ; 3 uses
  %i.hi = fmul float %i.hf, %.pre64               ; 3 uses
  %i.hj = fmul float %i.hf, %.pre65               ; 3 uses
  %i.hk = extractelement <4 x float> %32, i64 1
  %i.hl = fmul float %i.hk, %i.hi
  %i.hm = extractelement <4 x float> %32, i64 0
  %i.hn = tail call float @llvm.fmuladd.f32(float %i.hm, float %i.hh, float %i.hl)
  %i.ho = extractelement <4 x float> %32, i64 2
  %i.hp = tail call noundef float @llvm.fmuladd.f32(float %i.ho, float %i.hj, float %i.hn)
  %43 = extractelement <4 x float> %36, i64 1
  %i.hq = fmul float %i.hi, %43
  %44 = extractelement <4 x float> %36, i64 0
  %i.hr = tail call float @llvm.fmuladd.f32(float %44, float %i.hh, float %i.hq)
  %45 = extractelement <4 x float> %36, i64 2
  %i.hs = tail call noundef float @llvm.fmuladd.f32(float %45, float %i.hj, float %i.hr)
  %i.ht = fmul float %i.hi, %40
  %i.hu = tail call float @llvm.fmuladd.f32(float %37, float %i.hh, float %i.ht)
  %i.hv = tail call noundef float @llvm.fmuladd.f32(float %42, float %i.hj, float %i.hu)
  %.sroa.0.0.vec.insert.i41 = insertelement <2 x float> poison, float %i.hp, i64 0
  %.sroa.0.4.vec.insert.i42 = insertelement <2 x float> %.sroa.0.0.vec.insert.i41, float %i.hs, i64 1
  %.sroa.3.12.vec.insert.i43 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.hv, i64 0
end_hunk_6
