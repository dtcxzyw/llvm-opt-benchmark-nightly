inline.NumInlined: 998
inline.NumDeleted: 517
begin_hunk_0_@_ZN6Assimp11MD5Importer17AttachChilds_AnimEiP6aiNodeRSt6vectorINS_3MD512AnimBoneDescESaIS5_EEPPK10aiNodeAnim:bb.a
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ba, i64 1028 ; 2 uses
  store float 1.000000e+00, ptr %i.bv, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 1048
  store float 1.000000e+00, ptr %.sroa.5.0..sroa_idx.i, align 4
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 1052 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 1068 ; 2 uses
  store float 1.000000e+00, ptr %.sroa.7.0..sroa_idx.i, align 4
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 1072 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.8.0..sroa_idx.i, i8 0, i64 16, i1 false)
end_hunk_0
begin_hunk_1_@_ZN6Assimp11MD5Importer17AttachChilds_AnimEiP6aiNodeRSt6vectorINS_3MD512AnimBoneDescESaIS5_EEPPK10aiNodeAnim:bb.a
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 12
  %i.ci = load float, ptr %i.cf, align 4, !noalias !64 ; 4 uses
  %i.cj = fneg float %i.ci                        ; 3 uses
  %.sroa.864.0..sroa_idx65 = getelementptr inbounds nuw i8, ptr %i.ba, i64 1036
  %.sroa.1270.0..sroa_idx71 = getelementptr inbounds nuw i8, ptr %i.ba, i64 1044
  %.sroa.2082.0..sroa_idx83 = getelementptr inbounds nuw i8, ptr %i.ba, i64 1060
  %i.ck = fadd float %i.bw, 0.000000e+00
  %i.cl = fadd float %i.bz, 0.000000e+00
  %i.cm = load <2 x float>, ptr %i.cg, align 4, !noalias !64 ; 6 uses
end_hunk_1
begin_hunk_2_@_ZN6Assimp11MD5Importer17AttachChilds_AnimEiP6aiNodeRSt6vectorINS_3MD512AnimBoneDescESaIS5_EEPPK10aiNodeAnim:bb.a
  %i.cy = fmul <2 x float> %i.cn, %i.cx
  %i.cz = shufflevector <2 x float> %i.cr, <2 x float> %i.cm, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.da = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cs, <2 x float> %i.cz, <2 x float> %i.cy)
  %i.db = fmul <2 x float> %i.da, splat (float 2.000000e+00) ; 5 uses
  %i.dc = fmul float %i.co, %i.ci
  %i.dd = extractelement <2 x float> %i.cr, i64 0 ; 8 uses
  %i.de = tail call float @llvm.fmuladd.f32(float %i.dd, float %i.ct, float %i.dc)
end_hunk_2
begin_hunk_3_@_ZN6Assimp11MD5Importer17AttachChilds_AnimEiP6aiNodeRSt6vectorINS_3MD512AnimBoneDescESaIS5_EEPPK10aiNodeAnim:bb.a
  %i.dm = fmul <2 x float> %i.dl, <float 1.000000e+00, float 2.000000e+00> ; 2 uses
  %i.dn = fmul float %i.ct, %i.cj
  %i.do = tail call float @llvm.fmuladd.f32(float %i.dd, float %i.co, float %i.dn)
  %i.dp = fmul float %i.do, 2.000000e+00          ; 3 uses
  %i.dq = fmul float %i.dd, %i.ci
  %i.dr = fmul <2 x float> %i.cr, %i.cr
  %i.ds = extractelement <2 x float> %i.dr, i64 1
end_hunk_3
begin_hunk_4_@_ZN6Assimp11MD5Importer17AttachChilds_AnimEiP6aiNodeRSt6vectorINS_3MD512AnimBoneDescESaIS5_EEPPK10aiNodeAnim:bb.a
  %i.du = insertelement <2 x float> %i.cs, float %i.dt, i64 1
  %i.dv = shufflevector <2 x float> %i.cm, <2 x float> <float poison, float -2.000000e+00>, <2 x i32> <i32 1, i32 3>
  %i.dw = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.dq, i64 0
  %i.dx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.du, <2 x float> %i.dv, <2 x float> %i.dw) ; 3 uses
  %i.dy = fmul <2 x float> %i.dx, <float 2.000000e+00, float 1.000000e+00> ; 3 uses
  %i.dz = fmul float %i.df, 0.000000e+00          ; 2 uses
  %6 = fmul <2 x float> %i.dm, zeroinitializer    ; 3 uses
  %7 = extractelement <2 x float> %i.db, i64 1
  %foldExtExtBinop130 = fadd <2 x float> %i.db, %6
  %8 = extractelement <2 x float> %foldExtExtBinop130, i64 1
  %9 = extractelement <2 x float> %i.dx, i64 1    ; 2 uses
  %i.ea = tail call float @llvm.fmuladd.f32(float %9, float 0.000000e+00, float %8)
  %i.eb = tail call float @llvm.fmuladd.f32(float %i.bw, float 0.000000e+00, float %i.ea)
  %10 = extractelement <2 x float> %i.dm, i64 1
  %i.ec = tail call float @llvm.fmuladd.f32(float %7, float 0.000000e+00, float %10)
  %i.ed = tail call float @llvm.fmuladd.f32(float %9, float 0.000000e+00, float %i.ec)
  %i.ee = tail call float @llvm.fmuladd.f32(float %i.bz, float 0.000000e+00, float %i.ed)
  %i.ef = tail call float @llvm.fmuladd.f32(float %i.cv, float 0.000000e+00, float %i.dz) ; 2 uses
  %11 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.db, <2 x float> zeroinitializer, <2 x float> %6) ; 3 uses
  %foldExtExtBinop132 = fadd <2 x float> %i.dx, %11
  %12 = extractelement <2 x float> %foldExtExtBinop132, i64 1
  %13 = tail call float @llvm.fmuladd.f32(float %i.cc, float 0.000000e+00, float %12)
  %i.eg = tail call float @llvm.fmuladd.f32(float %i.dp, float 0.000000e+00, float %i.ef)
  %i.eh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dy, <2 x float> zeroinitializer, <2 x float> %11)
  %i.ei = insertelement <4 x float> poison, float %i.cc, i64 0
  %i.ej = insertelement <4 x float> %i.ei, float %i.eg, i64 1
  %i.ek = shufflevector <2 x float> %i.eh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.el = shufflevector <4 x float> %i.ej, <4 x float> %i.ek, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.em = fadd <4 x float> %i.el, zeroinitializer
  %foldExtExtBinop134 = fadd <2 x float> %6, %i.db
  %14 = fadd float %i.cv, %i.dz
  %15 = shufflevector <2 x float> %i.dy, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %16 = insertelement <2 x float> %15, float %i.dp, i64 0 ; 2 uses
  %17 = insertelement <2 x float> poison, float %14, i64 0
  %18 = shufflevector <2 x float> %17, <2 x float> %foldExtExtBinop134, <2 x i32> <i32 0, i32 2>
  %i.en = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %16, <2 x float> zeroinitializer, <2 x float> %18)
  %i.eo = insertelement <2 x float> poison, float %i.bw, i64 0
  %i.ep = shufflevector <2 x float> %i.eo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ep, <2 x float> zeroinitializer, <2 x float> %i.en)
  store <2 x float> %i.eq, ptr %i.bv, align 4
  store float %i.eb, ptr %.sroa.864.0..sroa_idx65, align 4
  store float %i.ck, ptr %i.bx, align 4
  %19 = shufflevector <2 x float> %i.db, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %20 = insertelement <2 x float> %19, float %i.cv, i64 0
  %21 = shufflevector <2 x float> %i.dl, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %22 = insertelement <2 x float> %21, float %i.df, i64 0
  %i.er = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %20, <2 x float> zeroinitializer, <2 x float> %22)
  %i.es = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %16, <2 x float> zeroinitializer, <2 x float> %i.er)
  %i.et = insertelement <2 x float> poison, float %i.bz, i64 0
  %i.eu = shufflevector <2 x float> %i.et, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ev = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eu, <2 x float> zeroinitializer, <2 x float> %i.es)
  store <2 x float> %i.ev, ptr %.sroa.1270.0..sroa_idx71, align 4
  store float %i.ee, ptr %.sroa.6.0..sroa_idx.i, align 4
  store float %i.cl, ptr %i.ca, align 4
  %foldExtExtBinop136 = fadd <2 x float> %i.dy, %11
  %23 = fadd float %i.dp, %i.ef
  %i.ew = insertelement <2 x float> poison, float %i.cc, i64 0
  %i.ex = shufflevector <2 x float> %i.ew, <2 x float> poison, <2 x i32> zeroinitializer
  %24 = insertelement <2 x float> poison, float %23, i64 0
  %25 = shufflevector <2 x float> %24, <2 x float> %foldExtExtBinop136, <2 x i32> <i32 0, i32 2>
  %i.ey = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ex, <2 x float> zeroinitializer, <2 x float> %25)
  store <2 x float> %i.ey, ptr %.sroa.2082.0..sroa_idx83, align 4
  store float %13, ptr %.sroa.7.0..sroa_idx.i, align 4
  store <4 x float> %i.em, ptr %.sroa.8.0..sroa_idx.i, align 4
  store float 1.000000e+00, ptr %.sroa.9.0..sroa_idx.i, align 4
  %i.ez = trunc nuw nsw i64 %indvars.iv114 to i32
end_hunk_4
