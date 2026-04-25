inline.NumInlined: 2736
inline.NumDeleted: 1010
begin_hunk_0_@_Z34ComputeNormalsWithSmoothingsGroupsIN6Assimp4D3DS4FaceEEvR23MeshWithSmoothingGroupsIT_E:bb.a
  br i1 %i.cp, label %.lr.ph, label %.preheader212, !llvm.loop !12

._crit_edge.loopexit:                             ; preds = %.lr.ph224
  %foldExtExtBinop = fsub <2 x float> %15, %13
  %i.cq = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %foldExtExtBinop315 = fsub <2 x float> %15, %13 ; 2 uses
  %i.cr = fsub float %.sroa.speculated, %.sroa.speculated191 ; 2 uses
  %foldExtExtBinop317 = fmul <2 x float> %foldExtExtBinop315, %foldExtExtBinop315
  %i.cs = extractelement <2 x float> %foldExtExtBinop317, i64 1
  %i.ct = call float @llvm.fmuladd.f32(float %i.cq, float %i.cq, float %i.cs)
  %i.cu = call float @llvm.fmuladd.f32(float %i.cr, float %i.cr, float %i.ct)
  %i.cv = call float @llvm.sqrt.f32(float %i.cu)
  %i.cw = fmul float %i.cv, 0x3EE4F8B580000000
  br label %._crit_edge
end_hunk_0
begin_hunk_1_@_Z34ComputeNormalsWithSmoothingsGroupsIN6Assimp4D3DS4FaceEEvR23MeshWithSmoothingGroupsIT_E:bb.a
.lr.ph224:                                        ; preds = %.preheader212, %.lr.ph224
  %i.di = phi i64 [ %i.dk, %.lr.ph224 ], [ 0, %.preheader212 ]
  %.084223 = phi i32 [ %i.dj, %.lr.ph224 ], [ 0, %.preheader212 ]
  %.sroa.13188.0220 = phi float [ %.sroa.speculated191, %.lr.ph224 ], [ 1.000000e+10, %.preheader212 ] ; 2 uses
  %.sroa.13176.0217 = phi float [ %.sroa.speculated, %.lr.ph224 ], [ -1.000000e+10, %.preheader212 ] ; 2 uses
  %5 = phi <2 x float> [ %15, %.lr.ph224 ], [ splat (float -1.000000e+10), %.preheader212 ] ; 2 uses
  %6 = phi <2 x float> [ %13, %.lr.ph224 ], [ splat (float 1.000000e+10), %.preheader212 ] ; 2 uses
  %7 = getelementptr inbounds nuw [12 x i8], ptr %i.z, i64 %i.di ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %9 = load float, ptr %8, align 4                ; 4 uses
  %10 = fcmp olt float %9, %.sroa.13188.0220
  %.sroa.speculated191 = select i1 %10, float %9, float %.sroa.13188.0220 ; 2 uses
  %11 = load <2 x float>, ptr %7, align 4         ; 4 uses
  %12 = fcmp olt <2 x float> %11, %6
  %13 = select <2 x i1> %12, <2 x float> %11, <2 x float> %6 ; 3 uses
  %14 = fcmp olt <2 x float> %5, %11
  %15 = select <2 x i1> %14, <2 x float> %11, <2 x float> %5 ; 3 uses
  %16 = fcmp olt float %.sroa.13176.0217, %9
  %.sroa.speculated = select i1 %16, float %9, float %.sroa.13176.0217 ; 2 uses
  %i.dj = add i32 %.084223, 1                     ; 2 uses
  %i.dk = zext i32 %i.dj to i64                   ; 2 uses
  %i.dl = icmp ugt i64 %i.ad, %i.dk
end_hunk_1
begin_hunk_2_@_ZN6Assimp19Discreet3DSImporter16ApplyMasterScaleEPK7aiScene:bb.a
  %i.cg = tail call float @llvm.fmuladd.f32(float %i.aa, float 0.000000e+00, float %i.ad) ; 2 uses
  %i.ch = tail call float @llvm.fmuladd.f32(float %storemerge, float %i.ce, float %i.cg)
  %i.ci = tail call float @llvm.fmuladd.f32(float %i.ap, float 0.000000e+00, float %i.an)
  %2 = shufflevector <2 x float> %i.cd, <2 x float> poison, <3 x i32> <i32 1, i32 0, i32 poison>
  %3 = insertelement <3 x float> %2, float %i.ar, i64 2
  %4 = shufflevector <3 x float> %3, <3 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 2>
  %i.cj = insertelement <4 x float> poison, float %i.cf, i64 0
  %i.ck = insertelement <4 x float> %i.cj, float %i.ch, i64 1
  %i.cl = insertelement <4 x float> %i.ck, float %i.cg, i64 2
  %i.cm = insertelement <4 x float> %i.cl, float %i.ci, i64 3
  %i.cn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %4, <4 x float> zeroinitializer, <4 x float> %i.cm)
  %i.co = shufflevector <2 x float> %i.cd, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.cp = shufflevector <4 x float> <float -0.000000e+00, float -0.000000e+00, float poison, float -0.000000e+00>, <4 x float> %i.co, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.cq = fadd <4 x float> %i.cp, %i.cn
end_hunk_2
