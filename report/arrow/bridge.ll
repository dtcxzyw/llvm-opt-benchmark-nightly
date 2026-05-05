inline.NumInlined: 8879
inline.NumDeleted: 3388
begin_hunk_0_@_ZN5arrow8internal7ToCharsIiJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_DpOT0_:bb.a
  br i1 %i.cr, label %.lr.ph.split.backedge, label %bb.ad, !prof !168

bb.ad:                                            ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i29
  %.0.i.i.i30.lcssa156 = phi i32 [ %.0.i.i.i30, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i29 ]
  %.lcssa150 = phi i64 [ %i.cq, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i29 ]
  %.026.i24.lcssa = phi ptr [ %.026.i24, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i29 ] ; 5 uses
  %.0.i25.lcssa = phi i32 [ %.0.i25, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i29 ] ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN5arrow8internal7ToCharsIiJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_DpOT0_:bb.a
  br i1 %i.cs, label %.lr.ph.preheader.i.i.i39, label %._crit_edge.i.i.i31

.lr.ph.preheader.i.i.i39:                         ; preds = %bb.ad
  %i.ct = add i32 %.0.i.i.i30.lcssa156, -2
  br label %.lr.ph.i9.i.i40

.lr.ph.i9.i.i40:                                  ; preds = %.lr.ph.i9.i.i40, %.lr.ph.preheader.i.i.i39
end_hunk_1
begin_hunk_2_@_ZN5arrow8internal7ToCharsIaJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_DpOT0_:bb.a
  br i1 %i.cs, label %.lr.ph.split.backedge, label %bb.ad, !prof !168

bb.ad:                                            ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i29
  %.0.i.i.i30.lcssa156 = phi i32 [ %.0.i.i.i30, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i29 ]
  %.lcssa150 = phi i64 [ %i.cr, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i29 ]
  %.026.i24.lcssa = phi ptr [ %.026.i24, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i29 ] ; 5 uses
  %.0.i25.lcssa = phi i32 [ %.0.i25, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i29 ] ; 3 uses
end_hunk_2
begin_hunk_3_@_ZN5arrow8internal7ToCharsIaJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_DpOT0_:bb.a
  br i1 %i.ct, label %.lr.ph.preheader.i.i.i39, label %._crit_edge.i.i.i31

.lr.ph.preheader.i.i.i39:                         ; preds = %bb.ad
  %i.cu = add i32 %.0.i.i.i30.lcssa156, -2
  br label %.lr.ph.i9.i.i40

.lr.ph.i9.i.i40:                                  ; preds = %.lr.ph.i9.i.i40, %.lr.ph.preheader.i.i.i39
end_hunk_3
begin_hunk_4_@_ZN5arrow8internal31StringToSignedIntConverterMixinINS_9Int32TypeEE7ConvertERKS2_PKcmPi:bb.a
  br label %bb.bb

bb.bb:                                            ; preds = %.thread, %bb.bc
  %.133 = phi i64 [ %.023, %.thread ], [ %i.cz, %bb.bc ] ; 3 uses
  %.12532 = phi ptr [ %.024, %.thread ], [ %i.da, %bb.bc ] ; 3 uses
  %i.cx = load i8, ptr %.12532, align 1, !tbaa !39
  %i.cy = icmp eq i8 %i.cx, 48
end_hunk_4
begin_hunk_5_@_ZN5arrow8internal31StringToSignedIntConverterMixinINS_9Int32TypeEE7ConvertERKS2_PKcmPi:bb.a
  br i1 %.not, label %.critedgesplit, label %bb.bb, !llvm.loop !2470

.critedgesplit:                                   ; preds = %bb.bc
  %.125.lcssa.ph = phi ptr [ %scevgep, %bb.bc ]
  %.1.lcssa.ph = phi i64 [ 0, %bb.bc ]
  br label %.critedge

..critedge_crit_edge:                             ; preds = %bb.bb
  %.133.lcssa = phi i64 [ %.133, %bb.bb ]
  %.12532.lcssa = phi ptr [ %.12532, %bb.bb ]
  %split41 = phi i64 [ %.133, %bb.bb ]            ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %.critedgesplit, %..critedge_crit_edge
  %.125.lcssa = phi ptr [ %.12532.lcssa, %..critedge_crit_edge ], [ %.125.lcssa.ph, %.critedgesplit ]
  %.1.lcssa = phi i64 [ %.133.lcssa, %..critedge_crit_edge ], [ %.1.lcssa.ph, %.critedgesplit ]
  %i.db = call noundef zeroext i1 @_ZN5arrow8internal13ParseUnsignedEPKcmPj(ptr noundef nonnull %.125.lcssa, i64 noundef %.1.lcssa, ptr noundef nonnull %i.a)
  br i1 %i.db, label %bb.bd, label %_ZN5arrow8internal8ParseHexIjEEbPKcmPT_.exit.thread, !prof !90

end_hunk_5
