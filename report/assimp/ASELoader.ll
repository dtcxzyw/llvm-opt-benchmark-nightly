inline.NumInlined: 2170
inline.NumDeleted: 1074
begin_hunk_0_@_ZN12aiMatrix4x4tIfE7InverseEv:bb.a
  %i.ae = load <2 x float>, ptr %i.l, align 4     ; 6 uses
  %i.af = extractelement <2 x float> %i.ae, i64 0
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ah = load <2 x float>, ptr %i.h, align 4     ; 11 uses
  %i.ai = load <2 x float>, ptr %i.c, align 4     ; 8 uses
  %i.aj = load float, ptr %i.f, align 4           ; 7 uses
  %i.ak = fneg float %i.aj                        ; 3 uses
  %i.al = extractelement <2 x float> %i.ai, i64 0 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN12aiMatrix4x4tIfE7InverseEv:bb.a
bb.b:                                             ; preds = %bb.a
  %i.de = shufflevector <2 x float> %i.y, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1> ; 2 uses
  %i.df = fdiv float 1.000000e+00, %i.dc          ; 3 uses
  %1 = shufflevector <2 x float> %i.ah, <2 x float> %i.ai, <4 x i32> <i32 3, i32 1, i32 3, i32 1> ; 2 uses
  %i.dg = shufflevector <2 x float> %i.ai, <2 x float> %i.ah, <4 x i32> <i32 1, i32 1, i32 3, i32 3>
  %i.dh = fmul <4 x float> %i.dg, %i.de
  %i.di = fneg float %i.e
end_hunk_1
begin_hunk_2_@_ZN12aiMatrix4x4tIfE7InverseEv:bb.a
  %i.dk = fneg float %i.df                        ; 2 uses
  %i.dl = shufflevector <2 x float> %i.u, <2 x float> %i.r, <4 x i32> <i32 1, i32 1, i32 3, i32 3> ; 2 uses
  %i.dm = insertelement <4 x float> poison, float %i.e, i64 0 ; 2 uses
  %2 = shufflevector <2 x float> %i.ai, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.dn = shufflevector <4 x float> %i.dm, <4 x float> %2, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.do = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dl, <4 x float> %i.dn, <4 x float> %i.dh) ; 2 uses
  %i.dp = shufflevector <2 x float> %i.u, <2 x float> %i.r, <4 x i32> <i32 0, i32 2, i32 0, i32 2> ; 3 uses
end_hunk_2
begin_hunk_3_@_ZN12aiMatrix4x4tIfE7InverseEv:bb.a
  %i.er = shufflevector <2 x float> %i.az, <2 x float> %i.bc, <4 x i32> <i32 1, i32 3, i32 1, i32 3> ; 2 uses
  %i.es = fmul <4 x float> %i.er, %i.dt
  %i.et = insertelement <4 x float> poison, float %i.n, i64 0
  %i.eu = insertelement <4 x float> %1, float %i.n, i64 0 ; 2 uses
  %3 = shufflevector <4 x float> %i.eu, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 poison, i32 poison>
  %i.ev = insertelement <4 x float> %3, float %i.n, i64 2
  %i.ew = shufflevector <2 x float> %i.az, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %4 = shufflevector <4 x float> %i.ev, <4 x float> %i.ew, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.ex = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eu, <4 x float> %4, <4 x float> %i.es) ; 2 uses
  %i.ey = shufflevector <2 x float> %i.ah, <2 x float> %i.ay, <4 x i32> <i32 0, i32 2, i32 2, i32 2>
  %i.ez = shufflevector <2 x float> %i.ah, <2 x float> %i.ay, <4 x i32> <i32 0, i32 2, i32 2, i32 2>
  %i.fa = fmul <4 x float> %i.ez, %i.ex
end_hunk_3
begin_hunk_4_@_Z34ComputeNormalsWithSmoothingsGroupsIN6Assimp3ASE4FaceEEvR23MeshWithSmoothingGroupsIT_E:bb.a
  br i1 %i.cp, label %.lr.ph, label %.preheader212, !llvm.loop !130

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
end_hunk_4
begin_hunk_5_@_Z34ComputeNormalsWithSmoothingsGroupsIN6Assimp3ASE4FaceEEvR23MeshWithSmoothingGroupsIT_E:bb.a
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
end_hunk_5
