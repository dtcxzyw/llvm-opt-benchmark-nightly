inline.NumInlined: 271
inline.NumDeleted: 123
begin_hunk_0_@_ZN4absl12lts_2025051212_GLOBAL__N_124Uint128ToFormattedStringB5cxx11ENS0_7uint128ESt13_Ios_Fmtflags:bb.a
  %spec.select87.i = select i1 %.not.i27.not.i, i32 63, i32 127
  %i.r = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i, i1 true)
  %i.s = trunc nuw nsw i64 %i.r to i32
  %i.t = xor i32 %spec.select87.i, %i.s
  %i.u = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sroa.0103.0, i1 true)
  %i.v = trunc nuw nsw i64 %i.u to i32
  %i.w = xor i32 %i.v, 63
  %i.x = sub nsw i32 %i.t, %i.w                   ; 3 uses
  %.not67.i = icmp slt i32 %i.x, 0
  br i1 %.not67.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_110DivModImplENS0_7uint128ES2_PS2_S3_.exit, label %.lr.ph.preheader.i

end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051212_GLOBAL__N_124Uint128ToFormattedStringB5cxx11ENS0_7uint128ESt13_Ios_Fmtflags:bb.a
  %i.aa = lshr i128 %i.z, 64
  %i.ab = trunc nuw i128 %i.aa to i64
  %i.ac = trunc i128 %i.z to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.074.i = phi i32 [ %i.ba, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.857.073.i = phi i64 [ %.sroa.857.1.i, %.lr.ph.i ], [ %2, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.055.072.i = phi i64 [ %.sroa.055.1.i, %.lr.ph.i ], [ %1, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.8.071.i = phi i64 [ %i.ak, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ]
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2025051212_GLOBAL__N_124Uint128ToFormattedStringB5cxx11ENS0_7uint128ESt13_Ios_Fmtflags:bb.a
  %i.ax = lshr i128 %i.as, 1
  %i.ay = trunc i128 %i.ax to i64
  %i.az = lshr i64 %.sroa.10.068.i, 1
  %i.ba = add nuw nsw i32 %.074.i, 1
  %exitcond.not.i = icmp eq i32 %.074.i, %i.x
  br i1 %exitcond.not.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_110DivModImplENS0_7uint128ES2_PS2_S3_.exit, label %.lr.ph.i, !llvm.loop !22

_ZN4absl12lts_2025051212_GLOBAL__N_110DivModImplENS0_7uint128ES2_PS2_S3_.exit: ; preds = %.lr.ph.i, %bb.d, %bb.e, %_ZN4absl12lts_2025051212_GLOBAL__N_16Fls128ENS0_7uint128E.exit30.i
end_hunk_2
