inline.NumInlined: 271
inline.NumDeleted: 123
begin_hunk_0_@_ZN4absl12lts_2025051212_GLOBAL__N_124Uint128ToFormattedStringB5cxx11ENS0_7uint128ESt13_Ios_Fmtflags:bb.a
  %spec.select87.i = select i1 %.not.i27.not.i, i32 63, i32 127
  %i.r = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i, i1 true)
  %i.s = trunc nuw nsw i64 %i.r to i32
  %5 = sub nuw nsw i32 %spec.select87.i, %i.s
  %i.t = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sroa.0103.0, i1 true)
  %i.u = trunc nuw nsw i64 %i.t to i32
  %.neg66.i = add nsw i32 %5, -63
  %6 = add nsw i32 %.neg66.i, %i.u                ; 3 uses
  %.not67.i.a = icmp slt i32 %6, 0
  br i1 %.not67.i.a, label %_ZN4absl12lts_2025051212_GLOBAL__N_110DivModImplENS0_7uint128ES2_PS2_S3_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZN4absl12lts_2025051212_GLOBAL__N_16Fls128ENS0_7uint128E.exit30.i
  %i.v = zext nneg i32 %6 to i128
  %i.w = shl i128 %i.o, %i.v                      ; 2 uses
  %i.x = lshr i128 %i.w, 64
  %i.y = trunc nuw i128 %i.x to i64
  %i.z = trunc i128 %i.w to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.074.i = phi i32 [ %i.ax, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.857.073.i = phi i64 [ %.sroa.857.1.i, %.lr.ph.i ], [ %2, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.055.072.i = phi i64 [ %.sroa.055.1.i, %.lr.ph.i ], [ %1, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.8.071.i = phi i64 [ %i.ah, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ]
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051212_GLOBAL__N_124Uint128ToFormattedStringB5cxx11ENS0_7uint128ESt13_Ios_Fmtflags:bb.a
  %i.au = lshr i128 %i.ap, 1
  %i.av = trunc i128 %i.au to i64
  %i.aw = lshr i64 %.sroa.10.068.i, 1
  %i.ax = add nuw nsw i32 %.074.i, 1
  %exitcond.not.i = icmp eq i32 %.074.i, %6
  br i1 %exitcond.not.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_110DivModImplENS0_7uint128ES2_PS2_S3_.exit, label %.lr.ph.i, !llvm.loop !22

_ZN4absl12lts_2025051212_GLOBAL__N_110DivModImplENS0_7uint128ES2_PS2_S3_.exit: ; preds = %.lr.ph.i, %bb.d, %bb.e, %_ZN4absl12lts_2025051212_GLOBAL__N_16Fls128ENS0_7uint128E.exit30.i
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2025051212_GLOBAL__N_124Uint128ToFormattedStringB5cxx11ENS0_7uint128ESt13_Ios_Fmtflags:bb.a
  %spec.select87.i44 = select i1 %.not.i27.not.i42, i32 63, i32 127
  %i.be = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i43, i1 true)
  %i.bf = trunc nuw nsw i64 %i.be to i32
  %7 = sub nuw nsw i32 %spec.select87.i44, %i.bf
  %i.bg = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sroa.0103.0, i1 true)
  %i.bh = trunc nuw nsw i64 %i.bg to i32
  %.neg66.i48 = add nuw nsw i32 %i.bh, -63
  %8 = add nsw i32 %.neg66.i48, %7                ; 3 uses
  %.not67.i48 = icmp slt i32 %8, 0
  br i1 %.not67.i48, label %_ZN4absl12lts_2025051212_GLOBAL__N_110DivModImplENS0_7uint128ES2_PS2_S3_.exit74.thread, label %.lr.ph.preheader.i49

.lr.ph.preheader.i49:                             ; preds = %_ZN4absl12lts_2025051212_GLOBAL__N_16Fls128ENS0_7uint128E.exit30.i41
  %i.bi = zext nneg i32 %8 to i128
  %i.bj = shl i128 %i.o, %i.bi                    ; 2 uses
  %i.bk = lshr i128 %i.bj, 64
  %i.bl = trunc nuw i128 %i.bk to i64
end_hunk_2
begin_hunk_3_@_ZN4absl12lts_2025051212_GLOBAL__N_124Uint128ToFormattedStringB5cxx11ENS0_7uint128ESt13_Ios_Fmtflags:bb.a
  %i.cb = trunc i128 %i.ca to i64
  %i.cc = lshr i64 %.sroa.10.068.i57, 1
  %i.cd = add nuw nsw i32 %.074.i51, 1
  %exitcond.not.i64 = icmp eq i32 %.074.i51, %8
  br i1 %exitcond.not.i64, label %_ZN4absl12lts_2025051212_GLOBAL__N_110DivModImplENS0_7uint128ES2_PS2_S3_.exit74, label %.lr.ph.i50, !llvm.loop !22

_ZN4absl12lts_2025051212_GLOBAL__N_110DivModImplENS0_7uint128ES2_PS2_S3_.exit74: ; preds = %.lr.ph.i50
end_hunk_3
