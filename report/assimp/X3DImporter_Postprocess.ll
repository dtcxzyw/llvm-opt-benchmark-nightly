inline.NumInlined: 858
inline.NumDeleted: 400
begin_hunk_0_@_ZNK6Assimp11X3DImporter40PostprocessHelper_Matrix_GlobalToCurrentEv:bb.a
  %i.w = shufflevector <2 x float> %i.bg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.x = shufflevector <4 x float> %i.cs, <4 x float> %i.cw, <4 x i32> <i32 0, i32 5, i32 2, i32 4>
  %i.y = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.w, <4 x float> %i.as, <4 x float> %i.x)
  %i.z = extractelement <4 x float> %i.cy, i64 1
  %i.aa = extractelement <4 x float> %i.cy, i64 2
  %i.ab = extractelement <4 x float> %i.cc, i64 1
  %i.ac = extractelement <4 x float> %i.cc, i64 2
  %i.ad = extractelement <4 x float> %i.cg, i64 2
  store float %i.ad, ptr %.sroa.9.0..sroa_idx23, align 4
end_hunk_0
begin_hunk_1_@_ZNK6Assimp11X3DImporter40PostprocessHelper_Matrix_GlobalToCurrentEv:bb.a
  store float %i.aa, ptr %.sroa.13.0..sroa_idx27, align 4
  %i.af = extractelement <4 x float> %i.de, i64 2
  store float %i.af, ptr %.sroa.19.0..sroa_idx33, align 4
  store float %i.cz, ptr %.sroa.21.0..sroa_idx35, align 4
  store float %i.cd, ptr %.sroa.23.0..sroa_idx37, align 4
  store float %i.z, ptr %.sroa.29.0..sroa_idx43, align 4
  store float %i.ab, ptr %.sroa.31.0..sroa_idx45, align 4
  store float %i.dc, ptr %.sroa.33.0..sroa_idx47, align 4
  %i.ag = extractelement <4 x float> %i.cg, i64 0
  %i.ah = extractelement <4 x float> %i.cg, i64 1
end_hunk_1
begin_hunk_2_@_ZNK6Assimp11X3DImporter40PostprocessHelper_Matrix_GlobalToCurrentEv:bb.a
  %i.ar = phi float [ 0.000000e+00, %.lr.ph ], [ %i.cz, %bb.e ] ; 2 uses
  %.sroa.052.069 = phi ptr [ %2, %.lr.ph ], [ %i.ba, %bb.e ]
  %i.as = phi <4 x float> [ <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, %.lr.ph ], [ %i.de, %bb.e ] ; 5 uses
  %i.at = phi <4 x float> [ <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, %.lr.ph ], [ %i.db, %bb.e ] ; 5 uses
  %i.au = phi <4 x float> [ zeroinitializer, %.lr.ph ], [ %i.cy, %bb.e ] ; 2 uses
  %i.av = phi <4 x float> [ <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, %.lr.ph ], [ %i.cc, %bb.e ] ; 2 uses
  %i.aw = phi <4 x float> [ <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, %.lr.ph ], [ %i.cg, %bb.e ] ; 4 uses
  %i.ax = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %20, %bb.e ] ; 2 uses
  %i.ay = phi <2 x float> [ <float 0.000000e+00, float 1.000000e+00>, %.lr.ph ], [ %21, %bb.e ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.052.069, i64 8
  %i.ba = load ptr, ptr %i.az, align 8            ; 7 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
end_hunk_2
begin_hunk_3_@_ZNK6Assimp11X3DImporter40PostprocessHelper_Matrix_GlobalToCurrentEv:bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 72
  %3 = extractelement <4 x float> %i.at, i64 0
  %i.bg = load <2 x float>, ptr %i.bf, align 4    ; 4 uses
  %i.bh = load <2 x float>, ptr %i.be, align 4    ; 3 uses
  %i.bi = load <4 x float>, ptr %i.bc, align 4    ; 7 uses
end_hunk_3
begin_hunk_4_@_ZNK6Assimp11X3DImporter40PostprocessHelper_Matrix_GlobalToCurrentEv:bb.a
  %i.bt = extractelement <4 x float> %i.bi, i64 1
  %i.bu = extractelement <4 x float> %i.bj, i64 1
  %i.bv = extractelement <4 x float> %i.bk, i64 1
  %4 = fmul float %i.aq, %i.br
  %5 = call float @llvm.fmuladd.f32(float %i.bs, float %i.ar, float %4)
  %6 = fmul float %i.aq, %i.bt
  %7 = call float @llvm.fmuladd.f32(float %i.bu, float %i.ar, float %6)
  %8 = call float @llvm.fmuladd.f32(float %i.bv, float %3, float %7)
  %9 = shufflevector <4 x float> %i.bi, <4 x float> poison, <2 x i32> zeroinitializer
  %i.bw = fmul <2 x float> %i.ay, %9
  %10 = shufflevector <4 x float> %i.bj, <4 x float> poison, <2 x i32> zeroinitializer
  %i.bx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %10, <2 x float> %i.ax, <2 x float> %i.bw)
  %i.by = shufflevector <4 x float> %i.bi, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %11 = fmul <2 x float> %i.ay, %i.by
  %12 = shufflevector <4 x float> %i.bj, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %13 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %12, <2 x float> %i.ax, <2 x float> %11)
  %14 = shufflevector <4 x float> %i.bk, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %15 = shufflevector <4 x float> %i.at, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %16 = insertelement <2 x float> %15, float %i.ap, i64 0
  %17 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %14, <2 x float> %16, <2 x float> %13)
  %i.bz = shufflevector <2 x float> %i.bh, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ca = insertelement <4 x float> poison, float %8, i64 0
  %i.cb = shufflevector <2 x float> %17, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %18 = shufflevector <4 x float> %i.ca, <4 x float> %i.cb, <4 x i32> <i32 0, i32 4, i32 5, i32 0>
  %i.cc = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bz, <4 x float> %i.as, <4 x float> %18) ; 5 uses
  %i.cd = extractelement <4 x float> %i.cc, i64 0 ; 2 uses
  %i.ce = shufflevector <2 x float> %i.bg, <2 x float> %i.bh, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.cf = shufflevector <4 x float> %i.aw, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.cg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ce, <4 x float> %i.cf, <4 x float> %i.bq) ; 5 uses
  %i.ch = shufflevector <4 x float> %i.bk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ci = insertelement <4 x float> poison, float %5, i64 0
  %i.cj = shufflevector <2 x float> %i.bx, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %19 = shufflevector <4 x float> %i.ci, <4 x float> %i.cj, <4 x i32> <i32 0, i32 4, i32 5, i32 0>
  %i.ck = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ch, <4 x float> %i.at, <4 x float> %19)
  %i.cl = shufflevector <4 x float> %i.bi, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.cm = fmul <4 x float> %i.av, %i.cl
  %i.cn = shufflevector <4 x float> %i.bj, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
end_hunk_4
begin_hunk_5_@_ZNK6Assimp11X3DImporter40PostprocessHelper_Matrix_GlobalToCurrentEv:bb.a
  %i.cw = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cv, <4 x float> %i.at, <4 x float> %i.cu) ; 2 uses
  %i.cx = shufflevector <2 x float> %i.bh, <2 x float> poison, <4 x i32> zeroinitializer
  %i.cy = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cx, <4 x float> %i.as, <4 x float> %i.ck) ; 5 uses
  %i.cz = extractelement <4 x float> %i.cy, i64 0 ; 2 uses
  %i.da = shufflevector <2 x float> %i.bg, <2 x float> poison, <4 x i32> zeroinitializer
  %i.db = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.da, <4 x float> %i.as, <4 x float> %i.cs) ; 2 uses
  %i.dc = extractelement <4 x float> %i.db, i64 1 ; 2 uses
  %i.dd = shufflevector <2 x float> %i.bg, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.de = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dd, <4 x float> %i.as, <4 x float> %i.cw) ; 2 uses
  %.not53 = icmp eq ptr %i.ba, %.pre
  %20 = shufflevector <4 x float> %i.cy, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %21 = shufflevector <4 x float> %i.cc, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  br i1 %.not53, label %._crit_edge, label %bb.e, !llvm.loop !9

.lr.ph.i.i16:                                     ; preds = %bb.c, %.lr.ph.i.i16
end_hunk_5
begin_hunk_6_@_ZNK6Assimp11X3DImporter35PostprocessHelper_ElementIsMetadataE11X3DElemType:bb.a
; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZNK6Assimp11X3DImporter31PostprocessHelper_ElementIsMeshE11X3DElemType(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(120) %0, i32 noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = insertelement <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 0>, i32 %1, i64 0 ; 2 uses
  %3 = shufflevector <8 x i32> %2, <8 x i32> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 6, i32 7>
  %4 = add <8 x i32> %3, <i32 -7, i32 -15, i32 -19, i32 -24, i32 -11, i32 -31, i32 18, i32 14> ; 2 uses
  %5 = shufflevector <8 x i32> %2, <8 x i32> <i32 4, i32 3, i32 2, i32 7, i32 3, i32 2, i32 poison, i32 poison>, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 0, i32 0> ; 2 uses
  %6 = icmp ult <8 x i32> %4, %5
  %7 = icmp eq <8 x i32> %4, %5
  %8 = shufflevector <8 x i1> %6, <8 x i1> %7, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 14, i32 15>
  %i.a = icmp eq i32 %1, 33
  %i.b = bitcast <8 x i1> %8 to i8
  %i.c = icmp ne i8 %i.b, 0
  %op.rdx = or i1 %i.c, %i.a
  ret i1 %op.rdx
end_hunk_6
