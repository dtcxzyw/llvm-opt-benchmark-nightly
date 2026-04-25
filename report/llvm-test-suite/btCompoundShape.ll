inline.NumInlined: 334
inline.NumDeleted: 72
begin_hunk_0_@_ZNK15btCompoundShape31calculatePrincipalAxisTransformEPfR11btTransformR9btVector3:bb.a
  %i.ce = load ptr, ptr %i.cd, align 8
  call void %i.ce(ptr noundef nonnull align 8 dereferenceable(24) %i.bz, float noundef %i.cb, ptr noundef nonnull align 4 dereferenceable(16) %5)
  %i.cf = load ptr, ptr %i.br, align 8, !tbaa !18
  %i.cg = getelementptr inbounds nuw [88 x i8], ptr %i.cf, i64 %indvars.iv186 ; 9 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 48
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
end_hunk_0
begin_hunk_1_@_ZNK15btCompoundShape31calculatePrincipalAxisTransformEPfR11btTransformR9btVector3:bb.a
  %i.ct = load float, ptr %i.bp, align 4, !tbaa !21
  %i.cu = load float, ptr %i.bq, align 4, !tbaa !21
  %i.cv = load float, ptr %i.ca, align 4, !tbaa !21 ; 3 uses
  %6 = load <3 x float>, ptr %i.ch, align 4, !tbaa !21
  %7 = shufflevector <3 x float> %6, <3 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 0>
  %i.cw = fsub <4 x float> %7, %i.bf              ; 6 uses
  %i.cx = load <2 x float>, ptr %i.cg, align 4, !tbaa !21, !noalias !43 ; 3 uses
  %i.cy = load float, ptr %i.ck, align 4, !tbaa !21, !noalias !43 ; 3 uses
  %i.cz = load <2 x float>, ptr %i.ci, align 4, !tbaa !21, !noalias !43
  %i.da = load <2 x float>, ptr %i.cj, align 4, !tbaa !21, !noalias !43 ; 3 uses
  %i.db = load float, ptr %i.cl, align 4, !tbaa !21, !noalias !43 ; 2 uses
  %8 = shufflevector <2 x float> %i.cx, <2 x float> %i.da, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.dc = shufflevector <2 x float> %i.cz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %9 = shufflevector <4 x float> %8, <4 x float> %i.dc, <4 x i32> <i32 0, i32 1, i32 4, i32 poison> ; 2 uses
  %10 = shufflevector <4 x float> %9, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.dd = shufflevector <4 x float> %i.cs, <4 x float> poison, <4 x i32> zeroinitializer
  %i.de = fmul <4 x float> %10, %i.dd             ; 4 uses
  %11 = shufflevector <2 x float> %i.cx, <2 x float> %i.da, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %12 = shufflevector <4 x float> %11, <4 x float> %i.dc, <4 x i32> <i32 0, i32 1, i32 5, i32 poison> ; 2 uses
  %13 = shufflevector <4 x float> %12, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.df = shufflevector <4 x float> %i.cs, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.dg = fmul <4 x float> %13, %i.df             ; 4 uses
  %i.dh = insertelement <4 x float> poison, float %i.cp, i64 0
  %i.di = insertelement <4 x float> %i.dh, float %i.cr, i64 1
  %i.dj = insertelement <4 x float> %i.di, float %i.cq, i64 2
end_hunk_1
begin_hunk_2_@_ZNK15btCompoundShape31calculatePrincipalAxisTransformEPfR11btTransformR9btVector3:bb.a
  %i.ed = call float @llvm.fmuladd.f32(float %i.ec, float %i.dq, float %i.eb)
  %i.ee = extractelement <4 x float> %i.dm, i64 1 ; 2 uses
  %i.ef = call noundef float @llvm.fmuladd.f32(float %i.ee, float %i.cp, float %i.ed)
  %i.eg = shufflevector <4 x float> %12, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 2, i32 2>
  %i.eh = fmul <4 x float> %i.eg, %i.dg
  %i.ei = shufflevector <4 x float> %9, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 2, i32 2>
  %i.ej = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.de, <4 x float> %i.ei, <4 x float> %i.eh)
  %i.ek = insertelement <4 x float> poison, float %i.cr, i64 0
  %i.el = insertelement <4 x float> %i.ek, float %i.cq, i64 1
end_hunk_2
