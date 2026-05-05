inline.NumInlined: 4037
inline.NumDeleted: 1046
begin_hunk_0_@_ZN5arrow8internal7ToCharsIiJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_DpOT0_:bb.a
  br i1 %i.cr, label %.lr.ph.split.backedge, label %bb.ad, !prof !73

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
begin_hunk_2_@_ZN5arrow8internal7ToCharsIlJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_DpOT0_:bb.a
  br i1 %i.cp, label %.lr.ph.split.backedge, label %bb.ad, !prof !73

bb.ad:                                            ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i29
  %.0.i.i.i30.lcssa156 = phi i32 [ %.0.i.i.i30, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i29 ]
  %.lcssa150 = phi i64 [ %i.co, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i29 ]
  %.026.i24.lcssa = phi ptr [ %.026.i24, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i29 ] ; 5 uses
  %.0.i25.lcssa = phi i64 [ %.0.i25, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i29 ] ; 3 uses
end_hunk_2
begin_hunk_3_@_ZN5arrow8internal7ToCharsIlJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_DpOT0_:bb.a
  br i1 %i.cq, label %.lr.ph.preheader.i.i.i39, label %._crit_edge.i.i.i31

.lr.ph.preheader.i.i.i39:                         ; preds = %bb.ad
  %i.cr = add i32 %.0.i.i.i30.lcssa156, -2
  br label %.lr.ph.i9.i.i40

.lr.ph.i9.i.i40:                                  ; preds = %.lr.ph.i9.i.i40, %.lr.ph.preheader.i.i.i39
end_hunk_3
begin_hunk_4_@_ZN5arrow8internal7ToCharsImJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_DpOT0_:bb.a
  br i1 %i.bs, label %.lr.ph.backedge, label %bb.y, !prof !73

bb.y:                                             ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i27
  %.0.i.i.i28.lcssa153 = phi i32 [ %.0.i.i.i28, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i27 ]
  %.lcssa147 = phi i64 [ %i.br, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i27 ]
  %.lcssa146 = phi ptr [ %i.bf, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i27 ] ; 5 uses
  br i1 %i.p, label %.lr.ph.preheader.i.i.i38, label %._crit_edge.i.i.i29

.lr.ph.preheader.i.i.i38:                         ; preds = %bb.y
  %i.bt = add i32 %.0.i.i.i28.lcssa153, -2
  br label %.lr.ph.i9.i.i39

.lr.ph.i9.i.i39:                                  ; preds = %.lr.ph.i9.i.i39, %.lr.ph.preheader.i.i.i38
end_hunk_4
