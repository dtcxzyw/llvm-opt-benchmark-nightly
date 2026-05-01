inline.NumInlined: 605
inline.NumDeleted: 269
begin_hunk_0_@_ZN6Assimp18TriangulateProcess15TriangulateMeshEP6aiMesh:bb.a
  br label %_ZN10aiVector3tIfE9NormalizeEv.exit261.1

_ZN10aiVector3tIfE9NormalizeEv.exit261.1:         ; preds = %_ZN10aiVector3tIfEdVEf.exit.i259.1, %_ZN10aiVector3tIfE9NormalizeEv.exit.1
  %.sroa.12.0.1 = phi float [ %i.gd, %_ZN10aiVector3tIfE9NormalizeEv.exit.1 ], [ %i.hh, %_ZN10aiVector3tIfEdVEf.exit.i259.1 ]
  %.sroa.0296.0.1 = phi <2 x float> [ %i.gi, %_ZN10aiVector3tIfE9NormalizeEv.exit.1 ], [ %.sroa.0296.4.vec.insert.1, %_ZN10aiVector3tIfEdVEf.exit.i259.1 ] ; 2 uses
  %i.hi = extractelement <2 x float> %i.gk, i64 1 ; 3 uses
  %i.hj = fmul float %i.hi, %i.hi
  %i.hk = extractelement <2 x float> %i.gk, i64 0 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN6Assimp18TriangulateProcess15TriangulateMeshEP6aiMesh:bb.a
_ZN10aiVector3tIfE9NormalizeEv.exit264.1:         ; preds = %_ZN10aiVector3tIfEdVEf.exit.i262.1, %_ZN10aiVector3tIfE9NormalizeEv.exit261.1
  %.sroa.10.0.1 = phi float [ %i.gn, %_ZN10aiVector3tIfE9NormalizeEv.exit261.1 ], [ %i.hr, %_ZN10aiVector3tIfEdVEf.exit.i262.1 ]
  %.sroa.0288.0.1 = phi <2 x float> [ %i.gk, %_ZN10aiVector3tIfE9NormalizeEv.exit261.1 ], [ %.sroa.0288.4.vec.insert.1, %_ZN10aiVector3tIfEdVEf.exit.i262.1 ] ; 2 uses
  %4 = shufflevector <2 x float> %.sroa.0296.0.1, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %5 = shufflevector <2 x float> %.sroa.0309.0.1, <2 x float> %.sroa.0288.0.1, <2 x i32> <i32 1, i32 3>
  %foldExtExtBinop.1 = fmul <2 x float> %4, %5
  %6 = shufflevector <2 x float> %.sroa.0309.0.1, <2 x float> %.sroa.0288.0.1, <2 x i32> <i32 0, i32 2>
  %7 = shufflevector <2 x float> %.sroa.0296.0.1, <2 x float> poison, <2 x i32> zeroinitializer
  %8 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %6, <2 x float> %7, <2 x float> %foldExtExtBinop.1)
  %9 = insertelement <2 x float> poison, float %.sroa.10316.0.1, i64 0
  %10 = insertelement <2 x float> %9, float %.sroa.10.0.1, i64 1
  %11 = insertelement <2 x float> poison, float %.sroa.12.0.1, i64 0
  %12 = shufflevector <2 x float> %11, <2 x float> poison, <2 x i32> zeroinitializer
  %13 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %10, <2 x float> %12, <2 x float> %8) ; 2 uses
  %i.hs = extractelement <2 x float> %13, i64 0
  %14 = call noundef float @acosf(float noundef %i.hs) #18
  %15 = extractelement <2 x float> %13, i64 1
  %i.ht = call noundef float @acosf(float noundef %15) #18
  %i.hu = fadd float %14, %i.ht
  %i.hv = fcmp ule float %i.hu, 0x400921FB60000000
  br i1 %i.hv, label %.preheader343.1, label %.preheader343._crit_edge, !llvm.loop !12

end_hunk_1
begin_hunk_2_@_ZN6Assimp18TriangulateProcess15TriangulateMeshEP6aiMesh:bb.a
  br label %_ZN10aiVector3tIfE9NormalizeEv.exit261.2

_ZN10aiVector3tIfE9NormalizeEv.exit261.2:         ; preds = %_ZN10aiVector3tIfEdVEf.exit.i259.2, %_ZN10aiVector3tIfE9NormalizeEv.exit.2
  %.sroa.12.0.2 = phi float [ %i.is, %_ZN10aiVector3tIfE9NormalizeEv.exit.2 ], [ %i.jw, %_ZN10aiVector3tIfEdVEf.exit.i259.2 ]
  %.sroa.0296.0.2 = phi <2 x float> [ %i.ix, %_ZN10aiVector3tIfE9NormalizeEv.exit.2 ], [ %.sroa.0296.4.vec.insert.2, %_ZN10aiVector3tIfEdVEf.exit.i259.2 ] ; 2 uses
  %i.jx = extractelement <2 x float> %i.iz, i64 1 ; 3 uses
  %i.jy = fmul float %i.jx, %i.jx
  %i.jz = extractelement <2 x float> %i.iz, i64 0 ; 3 uses
end_hunk_2
begin_hunk_3_@_ZN6Assimp18TriangulateProcess15TriangulateMeshEP6aiMesh:bb.a
_ZN10aiVector3tIfE9NormalizeEv.exit264.2:         ; preds = %_ZN10aiVector3tIfEdVEf.exit.i262.2, %_ZN10aiVector3tIfE9NormalizeEv.exit261.2
  %.sroa.10.0.2 = phi float [ %i.jc, %_ZN10aiVector3tIfE9NormalizeEv.exit261.2 ], [ %i.kg, %_ZN10aiVector3tIfEdVEf.exit.i262.2 ]
  %.sroa.0288.0.2 = phi <2 x float> [ %i.iz, %_ZN10aiVector3tIfE9NormalizeEv.exit261.2 ], [ %.sroa.0288.4.vec.insert.2, %_ZN10aiVector3tIfEdVEf.exit.i262.2 ] ; 2 uses
  %16 = shufflevector <2 x float> %.sroa.0296.0.2, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %17 = shufflevector <2 x float> %.sroa.0309.0.2, <2 x float> %.sroa.0288.0.2, <2 x i32> <i32 1, i32 3>
  %foldExtExtBinop.2 = fmul <2 x float> %16, %17
  %18 = shufflevector <2 x float> %.sroa.0309.0.2, <2 x float> %.sroa.0288.0.2, <2 x i32> <i32 0, i32 2>
  %19 = shufflevector <2 x float> %.sroa.0296.0.2, <2 x float> poison, <2 x i32> zeroinitializer
  %20 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %18, <2 x float> %19, <2 x float> %foldExtExtBinop.2)
  %21 = insertelement <2 x float> poison, float %.sroa.10316.0.2, i64 0
  %22 = insertelement <2 x float> %21, float %.sroa.10.0.2, i64 1
  %23 = insertelement <2 x float> poison, float %.sroa.12.0.2, i64 0
  %24 = shufflevector <2 x float> %23, <2 x float> poison, <2 x i32> zeroinitializer
  %25 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %22, <2 x float> %24, <2 x float> %20) ; 2 uses
  %i.kh = extractelement <2 x float> %25, i64 0
  %26 = call noundef float @acosf(float noundef %i.kh) #18
  %27 = extractelement <2 x float> %25, i64 1
  %i.ki = call noundef float @acosf(float noundef %27) #18
  %i.kj = fadd float %26, %i.ki
  %i.kk = fcmp ule float %i.kj, 0x400921FB60000000
  br i1 %i.kk, label %.preheader343.2, label %.preheader343._crit_edge, !llvm.loop !12

end_hunk_3
begin_hunk_4_@_ZN6Assimp18TriangulateProcess15TriangulateMeshEP6aiMesh:bb.a
  br label %_ZN10aiVector3tIfE9NormalizeEv.exit261.3

_ZN10aiVector3tIfE9NormalizeEv.exit261.3:         ; preds = %_ZN10aiVector3tIfEdVEf.exit.i259.3, %_ZN10aiVector3tIfE9NormalizeEv.exit.3
  %.sroa.12.0.3 = phi float [ %i.lh, %_ZN10aiVector3tIfE9NormalizeEv.exit.3 ], [ %i.ml, %_ZN10aiVector3tIfEdVEf.exit.i259.3 ]
  %.sroa.0296.0.3 = phi <2 x float> [ %i.lm, %_ZN10aiVector3tIfE9NormalizeEv.exit.3 ], [ %.sroa.0296.4.vec.insert.3, %_ZN10aiVector3tIfEdVEf.exit.i259.3 ] ; 2 uses
  %i.mm = extractelement <2 x float> %i.lo, i64 1 ; 3 uses
  %i.mn = fmul float %i.mm, %i.mm
  %i.mo = extractelement <2 x float> %i.lo, i64 0 ; 3 uses
end_hunk_4
begin_hunk_5_@_ZN6Assimp18TriangulateProcess15TriangulateMeshEP6aiMesh:bb.a
_ZN10aiVector3tIfE9NormalizeEv.exit264.3:         ; preds = %_ZN10aiVector3tIfEdVEf.exit.i262.3, %_ZN10aiVector3tIfE9NormalizeEv.exit261.3
  %.sroa.10.0.3 = phi float [ %i.lr, %_ZN10aiVector3tIfE9NormalizeEv.exit261.3 ], [ %i.mv, %_ZN10aiVector3tIfEdVEf.exit.i262.3 ]
  %.sroa.0288.0.3 = phi <2 x float> [ %i.lo, %_ZN10aiVector3tIfE9NormalizeEv.exit261.3 ], [ %.sroa.0288.4.vec.insert.3, %_ZN10aiVector3tIfEdVEf.exit.i262.3 ] ; 2 uses
  %28 = shufflevector <2 x float> %.sroa.0296.0.3, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %29 = shufflevector <2 x float> %.sroa.0309.0.3, <2 x float> %.sroa.0288.0.3, <2 x i32> <i32 1, i32 3>
  %foldExtExtBinop.3 = fmul <2 x float> %28, %29
  %30 = shufflevector <2 x float> %.sroa.0309.0.3, <2 x float> %.sroa.0288.0.3, <2 x i32> <i32 0, i32 2>
  %31 = shufflevector <2 x float> %.sroa.0296.0.3, <2 x float> poison, <2 x i32> zeroinitializer
  %32 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %30, <2 x float> %31, <2 x float> %foldExtExtBinop.3)
  %33 = insertelement <2 x float> poison, float %.sroa.10316.0.3, i64 0
  %34 = insertelement <2 x float> %33, float %.sroa.10.0.3, i64 1
  %35 = insertelement <2 x float> poison, float %.sroa.12.0.3, i64 0
  %36 = shufflevector <2 x float> %35, <2 x float> poison, <2 x i32> zeroinitializer
  %37 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %34, <2 x float> %36, <2 x float> %32) ; 2 uses
  %i.mw = extractelement <2 x float> %37, i64 0
  %38 = call noundef float @acosf(float noundef %i.mw) #18
  %39 = extractelement <2 x float> %37, i64 1
  %i.mx = call noundef float @acosf(float noundef %39) #18
  %i.my = fadd float %38, %i.mx
  %i.mz = fcmp ule float %i.my, 0x400921FB60000000
  br i1 %i.mz, label %.preheader343._crit_edge, label %.preheader343._crit_edge.split.loop.exit, !llvm.loop !12

end_hunk_5
begin_hunk_6_@_ZN6Assimp18TriangulateProcess15TriangulateMeshEP6aiMesh:bb.a
  br label %_ZN10aiVector3tIfE9NormalizeEv.exit261

_ZN10aiVector3tIfE9NormalizeEv.exit261:           ; preds = %_ZN10aiVector3tIfEdVEf.exit.i259, %_ZN10aiVector3tIfE9NormalizeEv.exit
  %.sroa.12.0 = phi float [ %i.nw, %_ZN10aiVector3tIfE9NormalizeEv.exit ], [ %i.pa, %_ZN10aiVector3tIfEdVEf.exit.i259 ]
  %.sroa.0296.0 = phi <2 x float> [ %i.ob, %_ZN10aiVector3tIfE9NormalizeEv.exit ], [ %.sroa.0296.4.vec.insert, %_ZN10aiVector3tIfEdVEf.exit.i259 ] ; 2 uses
  %i.pb = extractelement <2 x float> %i.od, i64 1 ; 3 uses
  %i.pc = fmul float %i.pb, %i.pb
  %i.pd = extractelement <2 x float> %i.od, i64 0 ; 3 uses
end_hunk_6
begin_hunk_7_@_ZN6Assimp18TriangulateProcess15TriangulateMeshEP6aiMesh:bb.a
_ZN10aiVector3tIfE9NormalizeEv.exit264:           ; preds = %_ZN10aiVector3tIfEdVEf.exit.i262, %_ZN10aiVector3tIfE9NormalizeEv.exit261
  %.sroa.10.0 = phi float [ %i.og, %_ZN10aiVector3tIfE9NormalizeEv.exit261 ], [ %i.pk, %_ZN10aiVector3tIfEdVEf.exit.i262 ]
  %.sroa.0288.0 = phi <2 x float> [ %i.od, %_ZN10aiVector3tIfE9NormalizeEv.exit261 ], [ %.sroa.0288.4.vec.insert, %_ZN10aiVector3tIfEdVEf.exit.i262 ] ; 2 uses
  %40 = shufflevector <2 x float> %.sroa.0296.0, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %41 = shufflevector <2 x float> %.sroa.0309.0, <2 x float> %.sroa.0288.0, <2 x i32> <i32 1, i32 3>
  %foldExtExtBinop = fmul <2 x float> %40, %41
  %42 = shufflevector <2 x float> %.sroa.0309.0, <2 x float> %.sroa.0288.0, <2 x i32> <i32 0, i32 2>
  %43 = shufflevector <2 x float> %.sroa.0296.0, <2 x float> poison, <2 x i32> zeroinitializer
  %44 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %42, <2 x float> %43, <2 x float> %foldExtExtBinop)
  %45 = insertelement <2 x float> poison, float %.sroa.10316.0, i64 0
  %46 = insertelement <2 x float> %45, float %.sroa.10.0, i64 1
  %47 = insertelement <2 x float> poison, float %.sroa.12.0, i64 0
  %48 = shufflevector <2 x float> %47, <2 x float> poison, <2 x i32> zeroinitializer
  %49 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %46, <2 x float> %48, <2 x float> %44) ; 2 uses
  %i.pl = extractelement <2 x float> %49, i64 0
  %50 = call noundef float @acosf(float noundef %i.pl) #18
  %51 = extractelement <2 x float> %49, i64 1
  %i.pm = call noundef float @acosf(float noundef %51) #18
  %i.pn = fadd float %50, %i.pm
  %i.po = fcmp ule float %i.pn, 0x400921FB60000000
  br i1 %i.po, label %.preheader343, label %.preheader343._crit_edge, !llvm.loop !12

end_hunk_7
