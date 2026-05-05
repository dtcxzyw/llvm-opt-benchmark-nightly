inline.NumInlined: 234
inline.NumDeleted: 77
begin_hunk_0_@raise_parse_error:bb.a
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.b
  %.01218.i = phi i64 [ %i.k, %bb.b ], [ 0, %.lr.ph.i.preheader ] ; 3 uses
  %.01317.i = phi ptr [ %i.h, %bb.b ], [ %i.e, %.lr.ph.i.preheader ] ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %.01317.i, i64 -1 ; 4 uses
  %i.i = load i8, ptr %.01317.i, align 1, !tbaa !43
  %i.j = icmp eq i8 %i.i, 10
  br i1 %i.j, label %.lr.ph.i.._crit_edge.i.loopexit_crit_edge, label %bb.b
end_hunk_0
begin_hunk_1_@raise_parse_error:bb.a
  br i1 %.not.i, label %._crit_edge.i.loopexitsplit, label %.lr.ph.i

._crit_edge.i.loopexitsplit:                      ; preds = %bb.b
  %.lcssa79.ph = phi ptr [ %i.h, %bb.b ]
  %.012.lcssa.i.ph.ph = phi i64 [ %i.k, %bb.b ]
  br label %._crit_edge.i.loopexit

.lr.ph.i.._crit_edge.i.loopexit_crit_edge:        ; preds = %.lr.ph.i
  %.01218.i.lcssa = phi i64 [ %.01218.i, %.lr.ph.i ]
  %split = phi ptr [ %i.h, %.lr.ph.i ]
  %split80 = phi i64 [ %.01218.i, %.lr.ph.i ]     ; 0 uses
  br label %._crit_edge.i.loopexit

._crit_edge.i.loopexit:                           ; preds = %._crit_edge.i.loopexitsplit, %.lr.ph.i.._crit_edge.i.loopexit_crit_edge
  %.lcssa79 = phi ptr [ %split, %.lr.ph.i.._crit_edge.i.loopexit_crit_edge ], [ %.lcssa79.ph, %._crit_edge.i.loopexitsplit ]
  %.012.lcssa.i.ph = phi i64 [ %.01218.i.lcssa, %.lr.ph.i.._crit_edge.i.loopexit_crit_edge ], [ %.012.lcssa.i.ph.ph, %._crit_edge.i.loopexitsplit ]
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %bb.a
end_hunk_1
begin_hunk_2_@json_parse_number:bb.a

peek.exit.i:                                      ; preds = %bb.f, %peek.exit.preheader.i
  %.2140 = phi i64 [ %.1139.lcssa, %peek.exit.preheader.i ], [ %i.co, %bb.f ] ; 2 uses
  %.val5557.i = phi ptr [ %.promoted54.i.lcssa, %peek.exit.preheader.i ], [ %i.cp, %bb.f ] ; 5 uses
  %i.ci = load i8, ptr %.val5557.i, align 1, !tbaa !43
  %i.cj = sext i8 %i.ci to i32
  %i.ck = add nsw i32 %i.cj, -48                  ; 2 uses
end_hunk_2
begin_hunk_3_@json_parse_number:bb.a

peek.exit.thread.loopexit.isplit:                 ; preds = %bb.f
  %.lcssa459 = phi ptr [ %i.cp, %bb.f ]
  %.3141.ph = phi i64 [ %i.co, %bb.f ]
  %.val.lcssa.ph.i.ph = phi ptr [ %scevgep.i, %bb.f ]
  br label %peek.exit.thread.loopexit.i

peek.exit.i.peek.exit.thread.loopexit.i_crit_edge: ; preds = %peek.exit.i
  %.val5557.i.lcssa = phi ptr [ %.val5557.i, %peek.exit.i ]
  %split = phi ptr [ %.val5557.i, %peek.exit.i ]  ; 0 uses
  %split459 = phi i64 [ %.2140, %peek.exit.i ]
  %.val5557.i.lcssa.a = phi ptr [ %.val5557.i, %peek.exit.i ]
  br label %peek.exit.thread.loopexit.i

peek.exit.thread.loopexit.i:                      ; preds = %peek.exit.thread.loopexit.isplit, %peek.exit.i.peek.exit.thread.loopexit.i_crit_edge
  %.val60231 = phi ptr [ %.val5557.i.lcssa, %peek.exit.i.peek.exit.thread.loopexit.i_crit_edge ], [ %.lcssa459, %peek.exit.thread.loopexit.isplit ]
  %.3141 = phi i64 [ %split459, %peek.exit.i.peek.exit.thread.loopexit.i_crit_edge ], [ %.3141.ph, %peek.exit.thread.loopexit.isplit ]
  %.val.lcssa.ph.i = phi ptr [ %.val5557.i.lcssa.a, %peek.exit.i.peek.exit.thread.loopexit.i_crit_edge ], [ %.val.lcssa.ph.i.ph, %peek.exit.thread.loopexit.isplit ]
  %.pre.i = ptrtoint ptr %.val.lcssa.ph.i to i64
  br label %json_parse_digits.exit

end_hunk_3
begin_hunk_4_@json_parse_number:bb.a

peek.exit.i70:                                    ; preds = %bb.m, %peek.exit.preheader.i68
  %.8 = phi i64 [ %.7.lcssa, %peek.exit.preheader.i68 ], [ %i.gg, %bb.m ] ; 2 uses
  %.val5557.i71 = phi ptr [ %.promoted54.i63.lcssa, %peek.exit.preheader.i68 ], [ %i.gh, %bb.m ] ; 5 uses
  %i.ga = load i8, ptr %.val5557.i71, align 1, !tbaa !43
  %i.gb = sext i8 %i.ga to i32
  %i.gc = add nsw i32 %i.gb, -48                  ; 2 uses
end_hunk_4
begin_hunk_5_@json_parse_number:bb.a

peek.exit.thread.loopexit.i73split:               ; preds = %bb.m
  %.lcssa475 = phi ptr [ %i.gh, %bb.m ]
  %.9.ph = phi i64 [ %i.gg, %bb.m ]
  %.val.lcssa.ph.i74.ph = phi ptr [ %scevgep.i69, %bb.m ]
  br label %peek.exit.thread.loopexit.i73

peek.exit.i70.peek.exit.thread.loopexit.i73_crit_edge: ; preds = %peek.exit.i70
  %.val5557.i71.lcssa = phi ptr [ %.val5557.i71, %peek.exit.i70 ]
  %split476 = phi ptr [ %.val5557.i71, %peek.exit.i70 ] ; 0 uses
  %split477 = phi i64 [ %.8, %peek.exit.i70 ]
  %.val5557.i71.lcssa.a = phi ptr [ %.val5557.i71, %peek.exit.i70 ]
  br label %peek.exit.thread.loopexit.i73

peek.exit.thread.loopexit.i73:                    ; preds = %peek.exit.thread.loopexit.i73split, %peek.exit.i70.peek.exit.thread.loopexit.i73_crit_edge
  %.val58234 = phi ptr [ %.val5557.i71.lcssa, %peek.exit.i70.peek.exit.thread.loopexit.i73_crit_edge ], [ %.lcssa475, %peek.exit.thread.loopexit.i73split ]
  %.9 = phi i64 [ %split477, %peek.exit.i70.peek.exit.thread.loopexit.i73_crit_edge ], [ %.9.ph, %peek.exit.thread.loopexit.i73split ]
  %.val.lcssa.ph.i74 = phi ptr [ %.val5557.i71.lcssa.a, %peek.exit.i70.peek.exit.thread.loopexit.i73_crit_edge ], [ %.val.lcssa.ph.i74.ph, %peek.exit.thread.loopexit.i73split ]
  %.pre.i75 = ptrtoint ptr %.val.lcssa.ph.i74 to i64
  br label %json_parse_digits.exit86

end_hunk_5
begin_hunk_6_@json_parse_number:bb.a

peek.exit.i101:                                   ; preds = %bb.w, %peek.exit.preheader.i99
  %.1137 = phi i64 [ %.0136.lcssa, %peek.exit.preheader.i99 ], [ %i.ki, %bb.w ] ; 2 uses
  %.val5557.i102 = phi ptr [ %.promoted54.i94.lcssa, %peek.exit.preheader.i99 ], [ %i.kj, %bb.w ] ; 5 uses
  %i.kc = load i8, ptr %.val5557.i102, align 1, !tbaa !43
  %i.kd = sext i8 %i.kc to i32
  %i.ke = add nsw i32 %i.kd, -48                  ; 2 uses
end_hunk_6
begin_hunk_7_@json_parse_number:bb.a
  br i1 %exitcond.not.i103, label %peek.exit.thread.loopexit.i104split, label %peek.exit.i101, !prof !89

peek.exit.thread.loopexit.i104split:              ; preds = %bb.w
  %.ph = phi ptr [ %.val42.i, %bb.w ]
  %.2.ph = phi i64 [ %i.ki, %bb.w ]
  %.val.lcssa.ph.i105.ph = phi ptr [ %scevgep.i100, %bb.w ]
  br label %peek.exit.thread.loopexit.i104

peek.exit.i101.peek.exit.thread.loopexit.i104_crit_edge: ; preds = %peek.exit.i101
  %.val5557.i102.lcssa = phi ptr [ %.val5557.i102, %peek.exit.i101 ]
  %split489 = phi ptr [ %.val5557.i102, %peek.exit.i101 ] ; 0 uses
  %split490 = phi i64 [ %.1137, %peek.exit.i101 ]
  %.val5557.i102.lcssa.a = phi ptr [ %.val5557.i102, %peek.exit.i101 ]
  br label %peek.exit.thread.loopexit.i104

peek.exit.thread.loopexit.i104:                   ; preds = %peek.exit.thread.loopexit.i104split, %peek.exit.i101.peek.exit.thread.loopexit.i104_crit_edge
  %i.kk = phi ptr [ %.val5557.i102.lcssa, %peek.exit.i101.peek.exit.thread.loopexit.i104_crit_edge ], [ %.ph, %peek.exit.thread.loopexit.i104split ]
  %.2 = phi i64 [ %split490, %peek.exit.i101.peek.exit.thread.loopexit.i104_crit_edge ], [ %.2.ph, %peek.exit.thread.loopexit.i104split ]
  %.val.lcssa.ph.i105 = phi ptr [ %.val5557.i102.lcssa.a, %peek.exit.i101.peek.exit.thread.loopexit.i104_crit_edge ], [ %.val.lcssa.ph.i105.ph, %peek.exit.thread.loopexit.i104split ]
  %.pre.i106 = ptrtoint ptr %.val.lcssa.ph.i105 to i64
  br label %json_parse_digits.exit117

end_hunk_7
begin_hunk_8_@emit_duplicate_key_warning:bb.a
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.c
  %.01218.i.i = phi i64 [ %i.p, %bb.c ], [ 0, %.lr.ph.i.i.preheader ] ; 3 uses
  %.01317.i.i = phi ptr [ %i.m, %bb.c ], [ %.val2, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %.01317.i.i, i64 -1 ; 4 uses
  %i.n = load i8, ptr %.01317.i.i, align 1, !tbaa !43
  %i.o = icmp eq i8 %i.n, 10
  br i1 %i.o, label %.lr.ph.i.i.._crit_edge.i.i.loopexit_crit_edge, label %bb.c
end_hunk_8
begin_hunk_9_@emit_duplicate_key_warning:bb.a
  br i1 %.not.i.i, label %._crit_edge.i.i.loopexitsplit, label %.lr.ph.i.i

._crit_edge.i.i.loopexitsplit:                    ; preds = %bb.c
  %.lcssa10.ph = phi ptr [ %i.m, %bb.c ]
  %.012.lcssa.i.i.ph.ph = phi i64 [ %i.p, %bb.c ]
  br label %._crit_edge.i.i.loopexit

.lr.ph.i.i.._crit_edge.i.i.loopexit_crit_edge:    ; preds = %.lr.ph.i.i
  %.01218.i.i.lcssa = phi i64 [ %.01218.i.i, %.lr.ph.i.i ]
  %split = phi ptr [ %i.m, %.lr.ph.i.i ]
  %split11 = phi i64 [ %.01218.i.i, %.lr.ph.i.i ] ; 0 uses
  br label %._crit_edge.i.i.loopexit

._crit_edge.i.i.loopexit:                         ; preds = %._crit_edge.i.i.loopexitsplit, %.lr.ph.i.i.._crit_edge.i.i.loopexit_crit_edge
  %.lcssa10 = phi ptr [ %split, %.lr.ph.i.i.._crit_edge.i.i.loopexit_crit_edge ], [ %.lcssa10.ph, %._crit_edge.i.i.loopexitsplit ]
  %.012.lcssa.i.i.ph = phi i64 [ %.01218.i.i.lcssa, %.lr.ph.i.i.._crit_edge.i.i.loopexit_crit_edge ], [ %.012.lcssa.i.i.ph.ph, %._crit_edge.i.i.loopexitsplit ]
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.loopexit, %RSTRING_PTR.exit
end_hunk_9
