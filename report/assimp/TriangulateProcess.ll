inline.NumInlined: 605
inline.NumDeleted: 269
begin_hunk_0_@_ZN6Assimp18TriangulateProcess15TriangulateMeshEP6aiMesh:bb.a
  br label %_ZN10aiVector3tIfE9NormalizeEv.exit261.1

_ZN10aiVector3tIfE9NormalizeEv.exit261.1:         ; preds = %_ZN10aiVector3tIfEdVEf.exit.i259.1, %_ZN10aiVector3tIfE9NormalizeEv.exit.1
  %.sroa.12.0.1 = phi float [ %i.gd, %_ZN10aiVector3tIfE9NormalizeEv.exit.1 ], [ %i.hh, %_ZN10aiVector3tIfEdVEf.exit.i259.1 ] ; 2 uses
  %.sroa.0296.0.1 = phi <2 x float> [ %i.gi, %_ZN10aiVector3tIfE9NormalizeEv.exit.1 ], [ %.sroa.0296.4.vec.insert.1, %_ZN10aiVector3tIfEdVEf.exit.i259.1 ] ; 3 uses
  %i.hi = extractelement <2 x float> %i.gk, i64 1 ; 3 uses
  %i.hj = fmul float %i.hi, %i.hi
  %i.hk = extractelement <2 x float> %i.gk, i64 0 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN6Assimp18TriangulateProcess15TriangulateMeshEP6aiMesh:bb.a
_ZN10aiVector3tIfE9NormalizeEv.exit264.1:         ; preds = %_ZN10aiVector3tIfEdVEf.exit.i262.1, %_ZN10aiVector3tIfE9NormalizeEv.exit261.1
  %.sroa.10.0.1 = phi float [ %i.gn, %_ZN10aiVector3tIfE9NormalizeEv.exit261.1 ], [ %i.hr, %_ZN10aiVector3tIfEdVEf.exit.i262.1 ]
  %.sroa.0288.0.1 = phi <2 x float> [ %i.gk, %_ZN10aiVector3tIfE9NormalizeEv.exit261.1 ], [ %.sroa.0288.4.vec.insert.1, %_ZN10aiVector3tIfEdVEf.exit.i262.1 ] ; 2 uses
  %.sroa.0309.0.vec.extract312.1 = extractelement <2 x float> %.sroa.0309.0.1, i64 0
  %.sroa.0296.0.vec.extract299.1 = extractelement <2 x float> %.sroa.0296.0.1, i64 0 ; 2 uses
  %foldExtExtBinop.1 = fmul <2 x float> %.sroa.0309.0.1, %.sroa.0296.0.1
  %4 = extractelement <2 x float> %foldExtExtBinop.1, i64 1
  %5 = call float @llvm.fmuladd.f32(float %.sroa.0309.0.vec.extract312.1, float %.sroa.0296.0.vec.extract299.1, float %4)
  %6 = call noundef float @llvm.fmuladd.f32(float %.sroa.10316.0.1, float %.sroa.12.0.1, float %5)
  %7 = call noundef float @acosf(float noundef %6) #18
  %.sroa.0288.0.vec.extract291.1 = extractelement <2 x float> %.sroa.0288.0.1, i64 0
  %foldExtExtBinop494.1 = fmul <2 x float> %.sroa.0296.0.1, %.sroa.0288.0.1
  %i.hs = extractelement <2 x float> %foldExtExtBinop494.1, i64 1
  %8 = call float @llvm.fmuladd.f32(float %.sroa.0288.0.vec.extract291.1, float %.sroa.0296.0.vec.extract299.1, float %i.hs)
  %9 = call noundef float @llvm.fmuladd.f32(float %.sroa.10.0.1, float %.sroa.12.0.1, float %8)
  %i.ht = call noundef float @acosf(float noundef %9) #18
  %i.hu = fadd float %7, %i.ht
  %i.hv = fcmp ule float %i.hu, 0x400921FB60000000
  br i1 %i.hv, label %.preheader343.1, label %.preheader343._crit_edge, !llvm.loop !12

end_hunk_1
begin_hunk_2_@_ZN6Assimp18TriangulateProcess15TriangulateMeshEP6aiMesh:bb.a
  br label %_ZN10aiVector3tIfE9NormalizeEv.exit261.2

_ZN10aiVector3tIfE9NormalizeEv.exit261.2:         ; preds = %_ZN10aiVector3tIfEdVEf.exit.i259.2, %_ZN10aiVector3tIfE9NormalizeEv.exit.2
  %.sroa.12.0.2 = phi float [ %i.is, %_ZN10aiVector3tIfE9NormalizeEv.exit.2 ], [ %i.jw, %_ZN10aiVector3tIfEdVEf.exit.i259.2 ] ; 2 uses
  %.sroa.0296.0.2 = phi <2 x float> [ %i.ix, %_ZN10aiVector3tIfE9NormalizeEv.exit.2 ], [ %.sroa.0296.4.vec.insert.2, %_ZN10aiVector3tIfEdVEf.exit.i259.2 ] ; 3 uses
  %i.jx = extractelement <2 x float> %i.iz, i64 1 ; 3 uses
  %i.jy = fmul float %i.jx, %i.jx
  %i.jz = extractelement <2 x float> %i.iz, i64 0 ; 3 uses
end_hunk_2
begin_hunk_3_@_ZN6Assimp18TriangulateProcess15TriangulateMeshEP6aiMesh:bb.a
_ZN10aiVector3tIfE9NormalizeEv.exit264.2:         ; preds = %_ZN10aiVector3tIfEdVEf.exit.i262.2, %_ZN10aiVector3tIfE9NormalizeEv.exit261.2
  %.sroa.10.0.2 = phi float [ %i.jc, %_ZN10aiVector3tIfE9NormalizeEv.exit261.2 ], [ %i.kg, %_ZN10aiVector3tIfEdVEf.exit.i262.2 ]
  %.sroa.0288.0.2 = phi <2 x float> [ %i.iz, %_ZN10aiVector3tIfE9NormalizeEv.exit261.2 ], [ %.sroa.0288.4.vec.insert.2, %_ZN10aiVector3tIfEdVEf.exit.i262.2 ] ; 2 uses
  %.sroa.0309.0.vec.extract312.2 = extractelement <2 x float> %.sroa.0309.0.2, i64 0
  %.sroa.0296.0.vec.extract299.2 = extractelement <2 x float> %.sroa.0296.0.2, i64 0 ; 2 uses
  %foldExtExtBinop.2 = fmul <2 x float> %.sroa.0309.0.2, %.sroa.0296.0.2
  %10 = extractelement <2 x float> %foldExtExtBinop.2, i64 1
  %11 = call float @llvm.fmuladd.f32(float %.sroa.0309.0.vec.extract312.2, float %.sroa.0296.0.vec.extract299.2, float %10)
  %12 = call noundef float @llvm.fmuladd.f32(float %.sroa.10316.0.2, float %.sroa.12.0.2, float %11)
  %13 = call noundef float @acosf(float noundef %12) #18
  %.sroa.0288.0.vec.extract291.2 = extractelement <2 x float> %.sroa.0288.0.2, i64 0
  %foldExtExtBinop494.2 = fmul <2 x float> %.sroa.0296.0.2, %.sroa.0288.0.2
  %i.kh = extractelement <2 x float> %foldExtExtBinop494.2, i64 1
  %14 = call float @llvm.fmuladd.f32(float %.sroa.0288.0.vec.extract291.2, float %.sroa.0296.0.vec.extract299.2, float %i.kh)
  %15 = call noundef float @llvm.fmuladd.f32(float %.sroa.10.0.2, float %.sroa.12.0.2, float %14)
  %i.ki = call noundef float @acosf(float noundef %15) #18
  %i.kj = fadd float %13, %i.ki
  %i.kk = fcmp ule float %i.kj, 0x400921FB60000000
  br i1 %i.kk, label %.preheader343.2, label %.preheader343._crit_edge, !llvm.loop !12

end_hunk_3
begin_hunk_4_@_ZN6Assimp18TriangulateProcess15TriangulateMeshEP6aiMesh:bb.a
  br label %_ZN10aiVector3tIfE9NormalizeEv.exit261.3

_ZN10aiVector3tIfE9NormalizeEv.exit261.3:         ; preds = %_ZN10aiVector3tIfEdVEf.exit.i259.3, %_ZN10aiVector3tIfE9NormalizeEv.exit.3
  %.sroa.12.0.3 = phi float [ %i.lh, %_ZN10aiVector3tIfE9NormalizeEv.exit.3 ], [ %i.ml, %_ZN10aiVector3tIfEdVEf.exit.i259.3 ] ; 2 uses
  %.sroa.0296.0.3 = phi <2 x float> [ %i.lm, %_ZN10aiVector3tIfE9NormalizeEv.exit.3 ], [ %.sroa.0296.4.vec.insert.3, %_ZN10aiVector3tIfEdVEf.exit.i259.3 ] ; 3 uses
  %i.mm = extractelement <2 x float> %i.lo, i64 1 ; 3 uses
  %i.mn = fmul float %i.mm, %i.mm
  %i.mo = extractelement <2 x float> %i.lo, i64 0 ; 3 uses
end_hunk_4
begin_hunk_5_@_ZN6Assimp18TriangulateProcess15TriangulateMeshEP6aiMesh:bb.a
_ZN10aiVector3tIfE9NormalizeEv.exit264.3:         ; preds = %_ZN10aiVector3tIfEdVEf.exit.i262.3, %_ZN10aiVector3tIfE9NormalizeEv.exit261.3
  %.sroa.10.0.3 = phi float [ %i.lr, %_ZN10aiVector3tIfE9NormalizeEv.exit261.3 ], [ %i.mv, %_ZN10aiVector3tIfEdVEf.exit.i262.3 ]
  %.sroa.0288.0.3 = phi <2 x float> [ %i.lo, %_ZN10aiVector3tIfE9NormalizeEv.exit261.3 ], [ %.sroa.0288.4.vec.insert.3, %_ZN10aiVector3tIfEdVEf.exit.i262.3 ] ; 2 uses
  %.sroa.0309.0.vec.extract312.3 = extractelement <2 x float> %.sroa.0309.0.3, i64 0
  %.sroa.0296.0.vec.extract299.3 = extractelement <2 x float> %.sroa.0296.0.3, i64 0 ; 2 uses
  %foldExtExtBinop.3 = fmul <2 x float> %.sroa.0309.0.3, %.sroa.0296.0.3
  %16 = extractelement <2 x float> %foldExtExtBinop.3, i64 1
  %17 = call float @llvm.fmuladd.f32(float %.sroa.0309.0.vec.extract312.3, float %.sroa.0296.0.vec.extract299.3, float %16)
  %18 = call noundef float @llvm.fmuladd.f32(float %.sroa.10316.0.3, float %.sroa.12.0.3, float %17)
  %19 = call noundef float @acosf(float noundef %18) #18
  %.sroa.0288.0.vec.extract291.3 = extractelement <2 x float> %.sroa.0288.0.3, i64 0
  %foldExtExtBinop494.3 = fmul <2 x float> %.sroa.0296.0.3, %.sroa.0288.0.3
  %i.mw = extractelement <2 x float> %foldExtExtBinop494.3, i64 1
  %20 = call float @llvm.fmuladd.f32(float %.sroa.0288.0.vec.extract291.3, float %.sroa.0296.0.vec.extract299.3, float %i.mw)
  %21 = call noundef float @llvm.fmuladd.f32(float %.sroa.10.0.3, float %.sroa.12.0.3, float %20)
  %i.mx = call noundef float @acosf(float noundef %21) #18
  %i.my = fadd float %19, %i.mx
  %i.mz = fcmp ule float %i.my, 0x400921FB60000000
  br i1 %i.mz, label %.preheader343._crit_edge, label %.preheader343._crit_edge.split.loop.exit, !llvm.loop !12

end_hunk_5
begin_hunk_6_@_ZN6Assimp18TriangulateProcess15TriangulateMeshEP6aiMesh:bb.a
  br label %_ZN10aiVector3tIfE9NormalizeEv.exit261

_ZN10aiVector3tIfE9NormalizeEv.exit261:           ; preds = %_ZN10aiVector3tIfEdVEf.exit.i259, %_ZN10aiVector3tIfE9NormalizeEv.exit
  %.sroa.12.0 = phi float [ %i.nw, %_ZN10aiVector3tIfE9NormalizeEv.exit ], [ %i.pa, %_ZN10aiVector3tIfEdVEf.exit.i259 ] ; 2 uses
  %.sroa.0296.0 = phi <2 x float> [ %i.ob, %_ZN10aiVector3tIfE9NormalizeEv.exit ], [ %.sroa.0296.4.vec.insert, %_ZN10aiVector3tIfEdVEf.exit.i259 ] ; 3 uses
  %i.pb = extractelement <2 x float> %i.od, i64 1 ; 3 uses
  %i.pc = fmul float %i.pb, %i.pb
  %i.pd = extractelement <2 x float> %i.od, i64 0 ; 3 uses
end_hunk_6
begin_hunk_7_@_ZN6Assimp18TriangulateProcess15TriangulateMeshEP6aiMesh:bb.a
_ZN10aiVector3tIfE9NormalizeEv.exit264:           ; preds = %_ZN10aiVector3tIfEdVEf.exit.i262, %_ZN10aiVector3tIfE9NormalizeEv.exit261
  %.sroa.10.0 = phi float [ %i.og, %_ZN10aiVector3tIfE9NormalizeEv.exit261 ], [ %i.pk, %_ZN10aiVector3tIfEdVEf.exit.i262 ]
  %.sroa.0288.0 = phi <2 x float> [ %i.od, %_ZN10aiVector3tIfE9NormalizeEv.exit261 ], [ %.sroa.0288.4.vec.insert, %_ZN10aiVector3tIfEdVEf.exit.i262 ] ; 2 uses
  %.sroa.0309.0.vec.extract312 = extractelement <2 x float> %.sroa.0309.0, i64 0
  %.sroa.0296.0.vec.extract299 = extractelement <2 x float> %.sroa.0296.0, i64 0 ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %.sroa.0309.0, %.sroa.0296.0
  %22 = extractelement <2 x float> %foldExtExtBinop, i64 1
  %23 = call float @llvm.fmuladd.f32(float %.sroa.0309.0.vec.extract312, float %.sroa.0296.0.vec.extract299, float %22)
  %24 = call noundef float @llvm.fmuladd.f32(float %.sroa.10316.0, float %.sroa.12.0, float %23)
  %25 = call noundef float @acosf(float noundef %24) #18
  %.sroa.0288.0.vec.extract291 = extractelement <2 x float> %.sroa.0288.0, i64 0
  %foldExtExtBinop494 = fmul <2 x float> %.sroa.0296.0, %.sroa.0288.0
  %i.pl = extractelement <2 x float> %foldExtExtBinop494, i64 1
  %26 = call float @llvm.fmuladd.f32(float %.sroa.0288.0.vec.extract291, float %.sroa.0296.0.vec.extract299, float %i.pl)
  %27 = call noundef float @llvm.fmuladd.f32(float %.sroa.10.0, float %.sroa.12.0, float %26)
  %i.pm = call noundef float @acosf(float noundef %27) #18
  %i.pn = fadd float %25, %i.pm
  %i.po = fcmp ule float %i.pn, 0x400921FB60000000
  br i1 %i.po, label %.preheader343, label %.preheader343._crit_edge, !llvm.loop !12

end_hunk_7
