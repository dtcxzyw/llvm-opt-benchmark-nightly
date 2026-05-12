inline.NumInlined: 329
inline.NumDeleted: 145
begin_hunk_0_@_ZN4absl12_GLOBAL__N_110DivModImplENS_7uint128ES1_PS1_S2_:bb.a
  %.sink90 = phi i32 [ 127, %bb.g ], [ 63, %bb.h ]
  %i.k = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink.a, i1 true)
  %i.l = trunc nuw nsw i64 %i.k to i32
  %6 = sub nuw nsw i32 %.sink90, %i.l
  %.not.i.not = icmp eq i64 %3, 0
  br i1 %.not.i.not, label %bb.j, label %_ZN4absl12_GLOBAL__N_16Fls128ENS_7uint128E.exit

end_hunk_0
begin_hunk_1_@_ZN4absl12_GLOBAL__N_110DivModImplENS_7uint128ES1_PS1_S2_:bb.a

_ZN4absl12_GLOBAL__N_16Fls128ENS_7uint128E.exit:  ; preds = %bb.j, %_ZN4absl12_GLOBAL__N_16Fls128ENS_7uint128E.exit34
  %.sink95 = phi i64 [ %3, %_ZN4absl12_GLOBAL__N_16Fls128ENS_7uint128E.exit34 ], [ %2, %bb.j ]
  %.sink93 = phi i32 [ -127, %_ZN4absl12_GLOBAL__N_16Fls128ENS_7uint128E.exit34 ], [ -63, %bb.j ]
  %i.m = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink95, i1 true)
  %i.n = trunc nuw nsw i64 %i.m to i32
  %.neg73 = add nsw i32 %.sink93, %i.n
  %7 = add nsw i32 %.neg73, %6                    ; 3 uses
  %.not74.a = icmp slt i32 %7, 0
  br i1 %.not74.a, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN4absl12_GLOBAL__N_16Fls128ENS_7uint128E.exit
  %i.o = zext nneg i32 %7 to i128
  %i.p = shl i128 %i.d, %i.o                      ; 2 uses
  %i.q = lshr i128 %i.p, 64
  %i.r = trunc nuw i128 %i.q to i64
  %i.s = trunc i128 %i.p to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZN4absl12_GLOBAL__N_16Fls128ENS_7uint128E.exit
end_hunk_1
begin_hunk_2_@_ZN4absl12_GLOBAL__N_110DivModImplENS_7uint128ES1_PS1_S2_:bb.a
  br label %bb.l

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.081 = phi i32 [ %i.aq, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.sroa.9.080 = phi i64 [ %.sroa.9.1, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %.sroa.061.079 = phi i64 [ %.sroa.061.1, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 2 uses
  %.sroa.8.078 = phi i64 [ %i.aa, %.lr.ph ], [ 0, %.lr.ph.preheader ]
end_hunk_2
begin_hunk_3_@_ZN4absl12_GLOBAL__N_110DivModImplENS_7uint128ES1_PS1_S2_:bb.a
  %i.an = lshr i128 %i.ai, 1
  %i.ao = trunc i128 %i.an to i64
  %i.ap = lshr i64 %.sroa.10.075, 1
  %i.aq = add nuw nsw i32 %.081, 1
  %exitcond.not = icmp eq i32 %.081, %7
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !16

bb.l:                                             ; preds = %._crit_edge, %bb.f, %bb.d
end_hunk_3
