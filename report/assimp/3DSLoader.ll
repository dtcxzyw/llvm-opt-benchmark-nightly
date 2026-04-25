inline.NumInlined: 2736
inline.NumDeleted: 1010
begin_hunk_0_@_Z34ComputeNormalsWithSmoothingsGroupsIN6Assimp4D3DS4FaceEEvR23MeshWithSmoothingGroupsIT_E:bb.a
  br i1 %i.cp, label %.lr.ph, label %.preheader212, !llvm.loop !12

._crit_edge.loopexit:                             ; preds = %.lr.ph224
  %shift = shufflevector <4 x float> %23, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fsub <4 x float> %shift, %23
  %5 = extractelement <4 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.cq = extractelement <4 x float> %23, i64 1
  %6 = extractelement <2 x float> %25, i64 0
  %i.cr = fsub float %6, %i.cq                    ; 2 uses
  %7 = extractelement <4 x float> %23, i64 2
  %i.cs = extractelement <2 x float> %25, i64 1
  %8 = fsub float %i.cs, %7                       ; 2 uses
  %9 = fmul float %i.cr, %i.cr
  %i.ct = call float @llvm.fmuladd.f32(float %5, float %5, float %9)
  %i.cu = call float @llvm.fmuladd.f32(float %8, float %8, float %i.ct)
  %i.cv = call float @llvm.sqrt.f32(float %i.cu)
  %i.cw = fmul float %i.cv, 0x3EE4F8B580000000
  br label %._crit_edge
end_hunk_0
begin_hunk_1_@_Z34ComputeNormalsWithSmoothingsGroupsIN6Assimp4D3DS4FaceEEvR23MeshWithSmoothingGroupsIT_E:bb.a
.lr.ph224:                                        ; preds = %.preheader212, %.lr.ph224
  %i.di = phi i64 [ %i.dk, %.lr.ph224 ], [ 0, %.preheader212 ]
  %.084223 = phi i32 [ %i.dj, %.lr.ph224 ], [ 0, %.preheader212 ]
  %10 = phi <4 x float> [ %23, %.lr.ph224 ], [ <float 1.000000e+10, float 1.000000e+10, float 1.000000e+10, float -1.000000e+10>, %.preheader212 ] ; 3 uses
  %11 = phi <2 x float> [ %25, %.lr.ph224 ], [ splat (float -1.000000e+10), %.preheader212 ] ; 2 uses
  %12 = getelementptr inbounds nuw [12 x i8], ptr %i.z, i64 %i.di ; 2 uses
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 4
  %14 = load <2 x float>, ptr %12, align 4
  %15 = shufflevector <2 x float> %14, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %16 = shufflevector <4 x float> %15, <4 x float> %10, <4 x i32> <i32 0, i32 1, i32 poison, i32 7>
  %17 = load <2 x float>, ptr %13, align 4        ; 3 uses
  %18 = shufflevector <2 x float> %17, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %19 = shufflevector <4 x float> %16, <4 x float> %18, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 2 uses
  %20 = shufflevector <4 x float> %10, <4 x float> %15, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %21 = fcmp olt <4 x float> %19, %20
  %22 = shufflevector <4 x float> %19, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %23 = select <4 x i1> %21, <4 x float> %22, <4 x float> %10 ; 5 uses
  %24 = fcmp olt <2 x float> %11, %17
  %25 = select <2 x i1> %24, <2 x float> %17, <2 x float> %11 ; 3 uses
  %i.dj = add i32 %.084223, 1                     ; 2 uses
  %i.dk = zext i32 %i.dj to i64                   ; 2 uses
  %i.dl = icmp ugt i64 %i.ad, %i.dk
end_hunk_1
begin_hunk_2_@_ZN6Assimp19Discreet3DSImporter16ApplyMasterScaleEPK7aiScene:bb.a
  %i.cg = tail call float @llvm.fmuladd.f32(float %i.aa, float 0.000000e+00, float %i.ad) ; 2 uses
  %i.ch = tail call float @llvm.fmuladd.f32(float %storemerge, float %i.ce, float %i.cg)
  %i.ci = tail call float @llvm.fmuladd.f32(float %i.ap, float 0.000000e+00, float %i.an)
  %2 = shufflevector <2 x float> %i.cd, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 0, i32 poison>
  %3 = insertelement <4 x float> %2, float %i.ar, i64 3
  %i.cj = insertelement <4 x float> poison, float %i.cf, i64 0
  %i.ck = insertelement <4 x float> %i.cj, float %i.ch, i64 1
  %i.cl = insertelement <4 x float> %i.ck, float %i.cg, i64 2
  %i.cm = insertelement <4 x float> %i.cl, float %i.ci, i64 3
  %i.cn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %3, <4 x float> zeroinitializer, <4 x float> %i.cm)
  %i.co = shufflevector <2 x float> %i.cd, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.cp = shufflevector <4 x float> <float -0.000000e+00, float -0.000000e+00, float poison, float -0.000000e+00>, <4 x float> %i.co, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.cq = fadd <4 x float> %i.cp, %i.cn
end_hunk_2
