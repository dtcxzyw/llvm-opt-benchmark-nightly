inline.NumInlined: 1740
inline.NumDeleted: 961
begin_hunk_0_@_ZN6Assimp11B3DImporter8ReadNODEEP6aiNode:bb.a
  %i.e = extractvalue { <2 x float>, <2 x float> } %i.c, 1 ; 5 uses
  %.sroa.0220.0.vec.extract = extractelement <2 x float> %.fca.0.extract2, i64 0 ; 4 uses
  %.sroa.0220.4.vec.extract = extractelement <2 x float> %.fca.0.extract2, i64 1 ; 4 uses
  %.sroa.6217.8.vec.extract = extractelement <2 x float> %i.e, i64 0 ; 7 uses
  %.sroa.6217.12.vec.extract = extractelement <2 x float> %i.e, i64 1 ; 8 uses
  %i.f = fmul float %.sroa.6217.12.vec.extract, %.sroa.6217.12.vec.extract ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN6Assimp11B3DImporter8ReadNODEEP6aiNode:bb.a
  %i.ag = fmul float %i.r, 0.000000e+00           ; 2 uses
  %i.ah = fadd float %i.h, %i.ag
  %i.ai = call float @llvm.fmuladd.f32(float %i.z, float 0.000000e+00, float %i.ah)
  %i.aj = call float @llvm.fmuladd.f32(float %.sroa.0220.0.vec.extract, float 0.000000e+00, float %i.ai) ; 2 uses
  %i.ak = fmul float %i.t, 0.000000e+00           ; 2 uses
  %i.al = fadd float %i.l, %i.ak
  %i.am = call float @llvm.fmuladd.f32(float %i.ac, float 0.000000e+00, float %i.al)
  %i.an = call float @llvm.fmuladd.f32(float %.sroa.0220.0.vec.extract, float 0.000000e+00, float %i.am)
  %i.ao = fmul float %i.w, 0.000000e+00           ; 2 uses
  %i.ap = fadd float %i.o, %i.ao
  %i.aq = call float @llvm.fmuladd.f32(float %i.af, float 0.000000e+00, float %i.ap)
  %i.ar = call float @llvm.fmuladd.f32(float %.sroa.0220.0.vec.extract, float 0.000000e+00, float %i.aq) ; 3 uses
  %i.as = fadd float %.sroa.0220.0.vec.extract, 0.000000e+00 ; 3 uses
  %i.at = call float @llvm.fmuladd.f32(float %i.h, float 0.000000e+00, float %i.r)
  %i.au = call float @llvm.fmuladd.f32(float %i.z, float 0.000000e+00, float %i.at)
  %i.av = call float @llvm.fmuladd.f32(float %.sroa.0220.4.vec.extract, float 0.000000e+00, float %i.au) ; 2 uses
  %i.aw = call float @llvm.fmuladd.f32(float %i.l, float 0.000000e+00, float %i.t)
  %i.ax = call float @llvm.fmuladd.f32(float %i.ac, float 0.000000e+00, float %i.aw)
  %i.ay = call float @llvm.fmuladd.f32(float %.sroa.0220.4.vec.extract, float 0.000000e+00, float %i.ax)
  %i.az = call float @llvm.fmuladd.f32(float %i.o, float 0.000000e+00, float %i.w)
  %i.ba = call float @llvm.fmuladd.f32(float %i.af, float 0.000000e+00, float %i.az)
  %i.bb = call float @llvm.fmuladd.f32(float %.sroa.0220.4.vec.extract, float 0.000000e+00, float %i.ba) ; 3 uses
  %i.bc = fadd float %.sroa.0220.4.vec.extract, 0.000000e+00 ; 3 uses
  %i.bd = call float @llvm.fmuladd.f32(float %i.h, float 0.000000e+00, float %i.ag) ; 2 uses
  %i.be = fadd float %i.z, %i.bd
  %i.bf = call float @llvm.fmuladd.f32(float %.fca.1.extract3, float 0.000000e+00, float %i.be) ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN6Assimp11B3DImporter8ReadNODEEP6aiNode:bb.a
  %i.bi = call float @llvm.fmuladd.f32(float %i.o, float 0.000000e+00, float %i.ao) ; 2 uses
  %i.bj = fadd float %i.af, %i.bi
  %i.bk = call float @llvm.fmuladd.f32(float %i.z, float 0.000000e+00, float %i.bd)
  %5 = insertelement <2 x float> %.fca.0.extract, float 0.000000e+00, i64 0 ; 2 uses
  %6 = insertelement <2 x float> poison, float %i.an, i64 0
  %7 = shufflevector <2 x float> %6, <2 x float> poison, <2 x i32> zeroinitializer
  %8 = fmul <2 x float> %5, %7                    ; 2 uses
  %9 = insertelement <2 x float> %.fca.0.extract, float 0.000000e+00, i64 1 ; 3 uses
  %10 = insertelement <2 x float> poison, float %i.aj, i64 0
  %11 = shufflevector <2 x float> %10, <2 x float> poison, <2 x i32> zeroinitializer
  %12 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %9, <2 x float> %11, <2 x float> %8)
  %13 = insertelement <2 x float> poison, float %i.ar, i64 0
  %14 = shufflevector <2 x float> %13, <2 x float> poison, <2 x i32> zeroinitializer
  %15 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %14, <2 x float> zeroinitializer, <2 x float> %12)
  %16 = insertelement <2 x float> poison, float %i.as, i64 0
  %17 = shufflevector <2 x float> %16, <2 x float> poison, <2 x i32> zeroinitializer
  %18 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %17, <2 x float> zeroinitializer, <2 x float> %15)
  %19 = extractelement <2 x float> %8, i64 0
  %i.bl = call float @llvm.fmuladd.f32(float %i.aj, float 0.000000e+00, float %19) ; 2 uses
  %i.bm = call float @llvm.fmuladd.f32(float %.fca.1.extract, float %i.ar, float %i.bl)
  %i.bn = call float @llvm.fmuladd.f32(float %i.as, float 0.000000e+00, float %i.bm)
  %i.bo = call float @llvm.fmuladd.f32(float %i.ar, float 0.000000e+00, float %i.bl)
  %i.bp = fadd float %i.as, %i.bo
  %20 = insertelement <2 x float> poison, float %i.ay, i64 0
  %21 = shufflevector <2 x float> %20, <2 x float> poison, <2 x i32> zeroinitializer
  %22 = fmul <2 x float> %5, %21                  ; 2 uses
  %23 = insertelement <2 x float> poison, float %i.av, i64 0
  %24 = shufflevector <2 x float> %23, <2 x float> poison, <2 x i32> zeroinitializer
  %25 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %9, <2 x float> %24, <2 x float> %22)
  %26 = insertelement <2 x float> poison, float %i.bb, i64 0
  %27 = shufflevector <2 x float> %26, <2 x float> poison, <2 x i32> zeroinitializer
  %28 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %27, <2 x float> zeroinitializer, <2 x float> %25)
  %29 = insertelement <2 x float> poison, float %i.bc, i64 0
  %30 = shufflevector <2 x float> %29, <2 x float> poison, <2 x i32> zeroinitializer
  %31 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %30, <2 x float> zeroinitializer, <2 x float> %28)
  %32 = extractelement <2 x float> %22, i64 0
  %i.bq = call float @llvm.fmuladd.f32(float %i.av, float 0.000000e+00, float %32) ; 2 uses
  %i.br = call float @llvm.fmuladd.f32(float %.fca.1.extract, float %i.bb, float %i.bq)
  %i.bs = call float @llvm.fmuladd.f32(float %i.bc, float 0.000000e+00, float %i.br)
  %i.bt = call float @llvm.fmuladd.f32(float %i.bb, float 0.000000e+00, float %i.bq)
end_hunk_2
begin_hunk_3_@_ZN6Assimp11B3DImporter8ReadNODEEP6aiNode:bb.a
  %i.cm = shufflevector <2 x float> %.fca.0.extract, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison> ; 2 uses
  %i.cn = shufflevector <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float 0.000000e+00>, <4 x float> %i.cm, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.co = fmul <4 x float> %i.cn, %i.cf           ; 2 uses
  %i.cp = extractelement <2 x float> %i.cj, i64 0
  %i.cq = extractelement <4 x float> %i.bw, i64 0
  %shift = shufflevector <2 x float> %.fca.0.extract, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop518 = fmul <2 x float> %shift, %i.cd
  %i.cr = insertelement <2 x float> poison, float %i.bf, i64 0
  %i.cs = shufflevector <2 x float> %i.cr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ct = shufflevector <4 x float> %i.co, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %33 = shufflevector <2 x float> %i.ct, <2 x float> %foldExtExtBinop518, <2 x i32> <i32 0, i32 2>
  %i.cu = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %9, <2 x float> %i.cs, <2 x float> %33)
  %i.cv = shufflevector <2 x float> %i.cj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cv, <2 x float> zeroinitializer, <2 x float> %i.cu)
  %i.cx = shufflevector <4 x float> %i.bw, <4 x float> poison, <2 x i32> zeroinitializer
end_hunk_3
begin_hunk_4_@_ZN6Assimp11B3DImporter8ReadNODEEP6aiNode:bb.a
  %i.da = insertelement <4 x float> %i.cz, float %i.bf, i64 0
  %i.db = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.da, <4 x float> %i.by, <4 x float> %i.co) ; 3 uses
  %i.dc = extractelement <4 x float> %i.db, i64 0
  %i.dd = call float @llvm.fmuladd.f32(float %.fca.1.extract, float %i.cp, float %i.dc)
  %i.de = call float @llvm.fmuladd.f32(float %i.cq, float 0.000000e+00, float %i.dd)
  %i.df = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, float %.fca.1.extract, i64 3
  %i.dg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.df, <4 x float> %i.cl, <4 x float> %i.db)
  %i.dh = fadd <4 x float> %i.bw, %i.dg
end_hunk_4
begin_hunk_5_@_ZN6Assimp11B3DImporter8ReadNODEEP6aiNode:bb.a
  %i.dt = lshr exact i64 %i.ds, 3
  %i.du = trunc i64 %i.dt to i32
  %i.dv = invoke noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #28
          to label %bb.e unwind label %bb.r       ; 28 uses

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN6aiNodeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1144) %i.dv, ptr noundef nonnull align 8 dereferenceable(32) %2)
end_hunk_5
begin_hunk_6_@_ZN6Assimp11B3DImporter8ReadNODEEP6aiNode:bb.a
  %i.er = getelementptr inbounds nuw i8, ptr %i.dv, i64 1096
  store ptr %1, ptr %i.er, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.dv, i64 1028
  store <2 x float> %18, ptr %i.es, align 4
  %.sroa.10152.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dv, i64 1036
  store float %i.bn, ptr %.sroa.10152.0..sroa_idx, align 4
  %.sroa.13153.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dv, i64 1040
  store float %i.bp, ptr %.sroa.13153.0..sroa_idx, align 8
  %.sroa.16154.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dv, i64 1044
  store <2 x float> %31, ptr %.sroa.16154.0..sroa_idx, align 4
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dv, i64 1052
  store float %i.bs, ptr %.sroa.22.0..sroa_idx, align 4
  %.sroa.25156.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dv, i64 1056
end_hunk_6
