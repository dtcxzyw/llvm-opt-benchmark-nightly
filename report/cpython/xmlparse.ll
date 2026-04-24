inline.NumInlined: 273
inline.NumDeleted: 44
begin_hunk_0_@addBinding:bb.a
  br i1 %.not118, label %._crit_edge, label %bb.z, !llvm.loop !398

._crit_edge:                                      ; preds = %is_rfc3986_uri_char.exit.us, %is_rfc3986_uri_char.exit.us.us, %is_rfc3986_uri_char.exit, %is_rfc3986_uri_char.exit.us158, %bb.b
  %.0109200 = phi i32 [ 1, %is_rfc3986_uri_char.exit.us.us ], [ 0, %is_rfc3986_uri_char.exit ], [ 0, %is_rfc3986_uri_char.exit.us158 ], [ 0, %bb.b ], [ 1, %is_rfc3986_uri_char.exit.us ]
  %.not129198 = phi i32 [ 38, %is_rfc3986_uri_char.exit.us.us ], [ 40, %is_rfc3986_uri_char.exit ], [ 40, %is_rfc3986_uri_char.exit.us158 ], [ 40, %bb.b ], [ 38, %is_rfc3986_uri_char.exit.us ]
  %.0107.lcssa = phi i8 [ %.1108.us.us, %is_rfc3986_uri_char.exit.us.us ], [ %.1108, %is_rfc3986_uri_char.exit ], [ %.1108.us156, %is_rfc3986_uri_char.exit.us158 ], [ 1, %bb.b ], [ %.1108.us, %is_rfc3986_uri_char.exit.us ]
  %.0105.lcssa = phi i8 [ 1, %is_rfc3986_uri_char.exit.us.us ], [ %.1106, %is_rfc3986_uri_char.exit ], [ %.1106.us157, %is_rfc3986_uri_char.exit.us158 ], [ 1, %bb.b ], [ 1, %is_rfc3986_uri_char.exit.us ]
end_hunk_0
begin_hunk_1_@addBinding:bb.a
  %i.bt = icmp ne i8 %.0107.lcssa, 0
  %i.bu = icmp eq i32 %.0102.lcssa, 36
  %i.bv = and i1 %i.bt, %i.bu
  %5 = zext i1 %i.bv to i32
  %.not119 = icmp eq i32 %.0109200, %5
  br i1 %.not119, label %bb.aj, label %.critedge

bb.aj:                                            ; preds = %._crit_edge
end_hunk_1
