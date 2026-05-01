inline.NumInlined: 2736
inline.NumDeleted: 1010
begin_hunk_0_@_Z34ComputeNormalsWithSmoothingsGroupsIN6Assimp4D3DS4FaceEEvR23MeshWithSmoothingGroupsIT_E:bb.a

_ZN10aiVector3tIfE13NormalizeSafeEv.exit.2:       ; preds = %_ZN10aiVector3tIfEdVEf.exit.i.2, %._crit_edge241.2
  %.sroa.14.1.2 = phi float [ %i.ld, %_ZN10aiVector3tIfEdVEf.exit.i.2 ], [ %.sroa.14.0.lcssa.2, %._crit_edge241.2 ]
  %i.le = phi <2 x float> [ %i.lc, %_ZN10aiVector3tIfEdVEf.exit.i.2 ], [ %i.kt, %._crit_edge241.2 ]
  br i1 %.not210234.2, label %.loopexit.2, label %.lr.ph247.2

.lr.ph247.2:                                      ; preds = %_ZN10aiVector3tIfE13NormalizeSafeEv.exit.2, %.lr.ph247.2
  %.sroa.0137.0246.2 = phi ptr [ %i.lo, %.lr.ph247.2 ], [ %i.kg, %_ZN10aiVector3tIfE13NormalizeSafeEv.exit.2 ] ; 2 uses
  %i.lf = load i32, ptr %.sroa.0137.0246.2, align 4 ; 2 uses
  %i.lg = zext i32 %i.lf to i64                   ; 2 uses
  %i.lh = getelementptr inbounds nuw [12 x i8], ptr %i.dy, i64 %i.lg ; 2 uses
  store <2 x float> %i.le, ptr %i.lh, align 4
  %.sroa.14.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %i.lh, i64 8
  store float %.sroa.14.1.2, ptr %.sroa.14.0..sroa_idx.2, align 4
  %i.li = lshr i32 %i.lf, 6
end_hunk_0
