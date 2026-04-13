inline.NumInlined: 2865
inline.NumDeleted: 633
begin_hunk_0_@_ZN10btSoftBody18initializeClustersEv:bb.a
  %indvars.iv187 = phi i64 [ 0, %.lr.ph174 ], [ %indvars.iv.next188, %._crit_edge171 ] ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !145
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv187
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !285  ; 48 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 164 ; 6 uses
  store float 0.000000e+00, ptr %i.h, align 4, !tbaa !447
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN10btSoftBody18initializeClustersEv:bb.a
  store <2 x float> %i.dr, ptr %.sroa.432.0..sroa_idx, align 8, !tbaa !184
  %i.dt = getelementptr inbounds nuw i8, ptr %i.g, i64 352
  %i.du = getelementptr inbounds nuw i8, ptr %i.g, i64 168 ; 3 uses
  %1 = getelementptr inbounds nuw i8, ptr %i.g, i64 200
  %.sroa.4141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 204
  %.sroa.5142.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 208 ; 2 uses
  %.sroa.6143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 212
end_hunk_1
begin_hunk_2_@_ZN10btSoftBody18initializeClustersEv:bb.a
  %i.gh = phi float [ 0.000000e+00, %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.._crit_edge164_crit_edge ], [ %i.fw, %bb.l ] ; 2 uses
  %i.gi = phi float [ %.pre201, %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.._crit_edge164_crit_edge ], [ %i.fv, %bb.l ] ; 3 uses
  %i.gj = phi float [ %.pre199, %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.._crit_edge164_crit_edge ], [ %i.gf, %bb.l ] ; 4 uses
  %i.gk = phi <2 x float> [ %i.dw, %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.._crit_edge164_crit_edge ], [ %i.fz, %bb.l ] ; 4 uses
  %i.gl = phi <2 x float> [ %i.dx, %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.._crit_edge164_crit_edge ], [ %i.fu, %bb.l ]
  %i.gm = getelementptr inbounds nuw i8, ptr %i.g, i64 172
  %i.gn = getelementptr inbounds nuw i8, ptr %i.g, i64 192
  %2 = getelementptr inbounds nuw i8, ptr %i.g, i64 188
  %i.go = fneg float %i.gj                        ; 2 uses
  %i.gp = fmul float %i.gj, %i.go
  %i.gq = tail call noundef float @llvm.fmuladd.f32(float %i.gi, float %i.gh, float %i.gp) ; 2 uses
  %3 = fneg <2 x float> %i.gl
  %4 = extractelement <2 x float> %i.gk, i64 0    ; 4 uses
  %5 = fneg float %4                              ; 2 uses
  %6 = fmul float %i.gi, %5
  %i.gr = extractelement <2 x float> %i.gk, i64 1 ; 5 uses
  %7 = tail call noundef float @llvm.fmuladd.f32(float %i.gr, float %i.gj, float %6) ; 2 uses
  %8 = fmul float %4, %5
  %9 = tail call noundef float @llvm.fmuladd.f32(float %i.gg, float %i.gh, float %8)
  %10 = fmul float %i.gg, %i.go
  %11 = tail call noundef float @llvm.fmuladd.f32(float %4, float %i.gr, float %10)
  %i.gs = fneg float %i.gr
  %i.gt = fmul float %i.gr, %i.gs
  %i.gu = tail call noundef float @llvm.fmuladd.f32(float %i.gg, float %i.gi, float %i.gt)
  %12 = shufflevector <2 x float> %i.gk, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %13 = fmul <2 x float> %12, %3
  %i.gv = insertelement <2 x float> poison, float %i.gj, i64 0
  %14 = shufflevector <2 x float> %i.gv, <2 x float> poison, <2 x i32> zeroinitializer
  %15 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gk, <2 x float> %14, <2 x float> %13) ; 2 uses
  %16 = extractelement <2 x float> %15, i64 0
  %17 = fmul float %i.gr, %16
  %18 = tail call float @llvm.fmuladd.f32(float %i.gg, float %i.gq, float %17)
  %19 = tail call noundef float @llvm.fmuladd.f32(float %4, float %7, float %18)
  %20 = fdiv float 1.000000e+00, %19              ; 6 uses
  %21 = fmul float %i.gq, %20
  %22 = shufflevector <2 x float> %15, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %23 = shufflevector <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, <4 x float> %22, <4 x i32> <i32 poison, i32 poison, i32 2, i32 4>
  %24 = shufflevector <4 x float> %22, <4 x float> %23, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.gw = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %20, i64 0
  %i.gx = shufflevector <4 x float> %i.gw, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.gy = fmul <4 x float> %24, %i.gx
  %25 = fmul float %9, %20
  %26 = fmul float %11, %20                       ; 2 uses
  %27 = fmul float %7, %20
  %28 = fmul float %i.gu, %20
  store float %21, ptr %i.du, align 4
  store <4 x float> %i.gy, ptr %i.gm, align 4
  store float %25, ptr %2, align 4
  store float %26, ptr %i.gn, align 4
  %.sroa.11.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 196
  store float 0.000000e+00, ptr %.sroa.11.16..sroa_idx, align 4, !tbaa !184
  store float %27, ptr %1, align 4
  store float %26, ptr %.sroa.4141.0..sroa_idx, align 4
  store float %28, ptr %.sroa.5142.0..sroa_idx, align 4
  store float 0.000000e+00, ptr %.sroa.6143.0..sroa_idx, align 4, !tbaa !184
  %i.gz = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  store float 1.000000e+00, ptr %i.gz, align 4, !tbaa !159
end_hunk_2
begin_hunk_3_@_ZN10btSoftBody6AJoint7PrepareEfi:bb.a
  %.0.i33 = select i1 %.not5.i30, ptr %spec.select.i32, ptr %i.fe ; 6 uses
  %i.fh = load float, ptr %.0.i28, align 4, !tbaa !159, !noalias !615
  %i.fi = load float, ptr %.0.i33, align 4, !tbaa !159, !noalias !615
  %3 = fadd float %i.fh, %i.fi                    ; 5 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.0.i28, i64 4
  %i.fk = getelementptr inbounds nuw i8, ptr %.0.i33, i64 4
  %i.fl = getelementptr inbounds nuw i8, ptr %.0.i28, i64 16
end_hunk_3
begin_hunk_4_@_ZN10btSoftBody6AJoint7PrepareEfi:bb.a
  %i.ft = getelementptr inbounds nuw i8, ptr %.0.i33, i64 32
  %i.fu = load float, ptr %i.fs, align 4, !tbaa !159, !noalias !615
  %i.fv = load float, ptr %i.ft, align 4, !tbaa !159, !noalias !615
  %4 = fadd float %i.fu, %i.fv                    ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.0.i28, i64 36
  %i.fx = getelementptr inbounds nuw i8, ptr %.0.i33, i64 36
  %5 = fneg float %4                              ; 2 uses
  %i.fy = fneg float %i.fp
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.ga = load <2 x float>, ptr %i.fj, align 4, !tbaa !159, !noalias !615 ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN10btSoftBody6AJoint7PrepareEfi:bb.a
  %i.gd = load <2 x float>, ptr %i.fr, align 4, !tbaa !159, !noalias !615 ; 2 uses
  %i.ge = shufflevector <2 x float> %i.gc, <2 x float> %i.ga, <2 x i32> <i32 0, i32 3>
  %i.gf = shufflevector <2 x float> %i.gd, <2 x float> %i.gb, <2 x i32> <i32 0, i32 3>
  %i.gg = fadd <2 x float> %i.ge, %i.gf           ; 3 uses
  %i.gh = shufflevector <2 x float> %i.gc, <2 x float> %i.ga, <2 x i32> <i32 1, i32 2>
  %i.gi = shufflevector <2 x float> %i.gd, <2 x float> %i.gb, <2 x i32> <i32 1, i32 2>
  %i.gj = fadd <2 x float> %i.gh, %i.gi           ; 3 uses
  %i.gk = load <2 x float>, ptr %i.fw, align 4, !tbaa !159, !noalias !615
  %i.gl = load <2 x float>, ptr %i.fx, align 4, !tbaa !159, !noalias !615
  %i.gm = fadd <2 x float> %i.gk, %i.gl           ; 4 uses
  %i.gn = shufflevector <2 x float> %i.gm, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.go = fneg <2 x float> %i.gm                  ; 3 uses
  %i.gp = extractelement <2 x float> %i.go, i64 1
  %6 = fmul float %i.fp, %i.gp
  %i.gq = extractelement <2 x float> %i.gj, i64 0 ; 3 uses
  %7 = tail call noundef float @llvm.fmuladd.f32(float %i.gq, float %4, float %6) ; 2 uses
  %i.gr = extractelement <2 x float> %i.gg, i64 0 ; 3 uses
  %i.gs = fmul float %i.gr, %5
  %8 = extractelement <2 x float> %i.gm, i64 0
  %9 = tail call noundef float @llvm.fmuladd.f32(float %i.fp, float %8, float %i.gs) ; 2 uses
  %i.gt = extractelement <2 x float> %i.gj, i64 1 ; 4 uses
  %i.gu = fmul float %i.gt, %7
  %10 = fmul <2 x float> %i.gj, %i.go
  %11 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gg, <2 x float> %i.gn, <2 x float> %10) ; 2 uses
  %12 = extractelement <2 x float> %11, i64 0
  %13 = tail call float @llvm.fmuladd.f32(float %3, float %12, float %i.gu)
  %14 = extractelement <2 x float> %i.gg, i64 1   ; 4 uses
  %15 = tail call noundef float @llvm.fmuladd.f32(float %14, float %9, float %13)
  %16 = fdiv float 1.000000e+00, %15              ; 7 uses
  %i.gv = fneg float %i.gr
  %i.gw = fmul float %14, %i.gv
  %i.gx = tail call noundef float @llvm.fmuladd.f32(float %i.gt, float %i.gq, float %i.gw)
  %17 = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.gx, i64 2
  %18 = shufflevector <2 x float> %11, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %19 = shufflevector <4 x float> %18, <4 x float> %17, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %20 = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %16, i64 0
  %21 = shufflevector <4 x float> %20, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %22 = fmul <4 x float> %19, %21                 ; 4 uses
  %23 = fmul float %7, %16                        ; 2 uses
  %i.gy = fmul float %14, %5
  %i.gz = extractelement <2 x float> %i.gm, i64 1
  %i.ha = tail call noundef float @llvm.fmuladd.f32(float %3, float %i.gz, float %i.gy)
  %24 = fmul float %i.ha, %16                     ; 2 uses
  %25 = fneg float %i.gq
  %26 = fmul float %3, %25
  %27 = tail call noundef float @llvm.fmuladd.f32(float %14, float %i.fp, float %26)
  %28 = fmul float %27, %16                       ; 2 uses
  %29 = fmul float %9, %16                        ; 2 uses
  %30 = extractelement <2 x float> %i.go, i64 0
  %i.hb = fmul float %3, %30
  %i.hc = tail call noundef float @llvm.fmuladd.f32(float %i.gt, float %4, float %i.hb)
  %31 = fmul float %i.hc, %16                     ; 2 uses
  %32 = fmul float %i.gt, %i.fy
  %33 = tail call noundef float @llvm.fmuladd.f32(float %3, float %i.gr, float %32)
  %34 = fmul float %33, %16                       ; 2 uses
  store <4 x float> %22, ptr %i.fz, align 4
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 148
  store float %23, ptr %35, align 4
  %.sroa.9.16..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  store float %24, ptr %.sroa.9.16..sroa_idx, align 8
  %.sroa.10.16..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 156
  store float %28, ptr %.sroa.10.16..sroa_idx, align 4
  %.sroa.11.16..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  store float 0.000000e+00, ptr %.sroa.11.16..sroa_idx, align 8, !tbaa !184
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 164
  store float %29, ptr %i.hd, align 4
  %.sroa.14.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  store float %31, ptr %.sroa.14.32..sroa_idx, align 8
  %.sroa.15.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 172
  store float %34, ptr %.sroa.15.32..sroa_idx, align 4
  %.sroa.16.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176
  store float 0.000000e+00, ptr %.sroa.16.32..sroa_idx, align 8, !tbaa !184
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 96
end_hunk_5
begin_hunk_6_@_ZN10btSoftBody6AJoint7PrepareEfi:bb.a
  %i.hh = fmul float %i.hf, %.pre                 ; 3 uses
  %i.hi = fmul float %i.hf, %.pre64               ; 3 uses
  %i.hj = fmul float %i.hf, %.pre65               ; 3 uses
  %i.hk = extractelement <4 x float> %22, i64 1
  %i.hl = fmul float %i.hk, %i.hi
  %i.hm = extractelement <4 x float> %22, i64 0
  %i.hn = tail call float @llvm.fmuladd.f32(float %i.hm, float %i.hh, float %i.hl)
  %i.ho = extractelement <4 x float> %22, i64 2
  %i.hp = tail call noundef float @llvm.fmuladd.f32(float %i.ho, float %i.hj, float %i.hn)
  %i.hq = fmul float %i.hi, %24
  %i.hr = tail call float @llvm.fmuladd.f32(float %23, float %i.hh, float %i.hq)
  %i.hs = tail call noundef float @llvm.fmuladd.f32(float %28, float %i.hj, float %i.hr)
  %i.ht = fmul float %i.hi, %31
  %i.hu = tail call float @llvm.fmuladd.f32(float %29, float %i.hh, float %i.ht)
  %i.hv = tail call noundef float @llvm.fmuladd.f32(float %34, float %i.hj, float %i.hu)
  %.sroa.0.0.vec.insert.i41 = insertelement <2 x float> poison, float %i.hp, i64 0
  %.sroa.0.4.vec.insert.i42 = insertelement <2 x float> %.sroa.0.0.vec.insert.i41, float %i.hs, i64 1
  %.sroa.3.12.vec.insert.i43 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.hv, i64 0
end_hunk_6
