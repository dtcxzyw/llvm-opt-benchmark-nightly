inline.NumInlined: 154
inline.NumDeleted: 26
begin_hunk_0_@match_at:bb.a
  br label %.backedge.backedge

bb.ce:                                            ; preds = %.backedge
  %i.ms = load i32, ptr %.25, align 4, !tbaa !7   ; 3 uses
  %i.mt = load ptr, ptr %i.m, align 8, !tbaa !19  ; 3 uses
  %i.mu = shl i32 %i.ms, 1
  %i.mv = sext i32 %i.mu to i64
end_hunk_0
begin_hunk_1_@match_at:bb.a
.preheader3533:                                   ; preds = %bb.ce
  %i.my = getelementptr i8, ptr %.25, i64 4       ; 2 uses
  %i.mz = icmp sgt i32 %i.ms, 0
  br i1 %i.mz, label %.lr.ph4090, label %._crit_edge4091

.lr.ph4090:                                       ; preds = %.preheader3533, %bb.cg
  %.in4110 = phi i32 [ %i.nb, %bb.cg ], [ %i.ms, %.preheader3533 ] ; 2 uses
  %.422084089 = phi ptr [ %i.ni, %bb.cg ], [ %i.my, %.preheader3533 ] ; 3 uses
  %i.na = phi ptr [ %i.nj, %bb.cg ], [ %i.mt, %.preheader3533 ] ; 3 uses
  %i.nb = add nsw i32 %.in4110, -1
  %i.nc = load i8, ptr %.422084089, align 1, !tbaa !66
  %i.nd = load i8, ptr %i.na, align 1, !tbaa !66
end_hunk_1
begin_hunk_2_@match_at:bb.a
  br i1 %.not2786, label %bb.cg, label %is_mbc_newline_ex.exit.thread

bb.cg:                                            ; preds = %bb.cf
  %i.ni = getelementptr i8, ptr %.422084089, i64 2 ; 2 uses
  %i.nj = getelementptr i8, ptr %i.na, i64 2      ; 3 uses
  store ptr %i.nj, ptr %i.m, align 8, !tbaa !19
  %i.nk = icmp samesign ugt i32 %.in4110, 1
end_hunk_2
begin_hunk_3_@match_at:bb.a

._crit_edge4091:                                  ; preds = %bb.cg, %.preheader3533
  %i.nl = phi ptr [ %i.mt, %.preheader3533 ], [ %i.nj, %bb.cg ]
  %.42208.lcssa = phi ptr [ %i.my, %.preheader3533 ], [ %i.ni, %bb.cg ] ; 2 uses
  %i.nm = getelementptr i8, ptr %i.nl, i64 -2
  %i.nn = getelementptr i8, ptr %.42208.lcssa, i64 1
  br label %.backedge.backedge
end_hunk_3
begin_hunk_4_@match_at:bb.a

.backedge:                                        ; preds = %.backedge.backedge, %bb.i
  %.02225 = phi ptr [ %3, %bb.i ], [ %.02225.be, %.backedge.backedge ] ; 111 uses
  %.25 = phi ptr [ %i.ck, %bb.i ], [ %.25.be, %.backedge.backedge ] ; 238 uses
  %.32190 = phi i64 [ -1, %bb.i ], [ %.32190.be, %.backedge.backedge ] ; 313 uses
  %.19 = phi ptr [ %4, %bb.i ], [ %.19.be, %.backedge.backedge ] ; 96 uses
  %.3 = phi ptr [ %2, %bb.i ], [ %.3.be, %.backedge.backedge ] ; 495 uses
end_hunk_4
begin_hunk_5_@forward_search_range:bb.a

bb.ae:                                            ; preds = %bb.j
  %i.ek = load ptr, ptr %i.ar, align 8, !tbaa !147 ; 3 uses
  %i.el = load ptr, ptr %i.as, align 8, !tbaa !148
  %i.em = getelementptr i8, ptr %i.el, i64 -1     ; 4 uses
  %i.en = ptrtoint ptr %i.em to i64
  %i.eo = ptrtoint ptr %i.ek to i64
  %i.ep = sub i64 %i.en, %i.eo                    ; 2 uses
  %i.eq = getelementptr i8, ptr %4, i64 %i.ep     ; 2 uses
  %i.er = icmp ugt ptr %i.eq, %2
end_hunk_5
begin_hunk_6_@forward_search_range:bb.a
  br i1 %or.cond.i, label %.preheader.lr.ph.i, label %slow_search.exit.thread

.preheader.lr.ph.i:                               ; preds = %bb.ae
  %i.ew = load i8, ptr %i.em, align 1, !tbaa !66
  %i.ex = icmp eq ptr %i.em, %i.ek
  br label %.preheader.i214

end_hunk_6
begin_hunk_7_@forward_search_range:bb.a
  br i1 %i.ez, label %.lr.ph.i215.preheader, label %._crit_edge.i

.lr.ph.i215.preheader:                            ; preds = %.preheader.i214
  br i1 %i.ex, label %slow_search.exit, label %.lr.ph529

.lr.ph.i215:                                      ; preds = %.lr.ph529
  %i.fa = icmp eq ptr %i.fc, %i.ek
  br i1 %i.fa, label %slow_search.exit, label %.lr.ph529, !llvm.loop !156

.lr.ph529:                                        ; preds = %.lr.ph.i215.preheader, %.lr.ph.i215
  %.03037.i528 = phi ptr [ %i.fc, %.lr.ph.i215 ], [ %i.em, %.lr.ph.i215.preheader ]
  %.02938.i527 = phi ptr [ %i.fb, %.lr.ph.i215 ], [ %.02739.i, %.lr.ph.i215.preheader ]
  %i.fb = getelementptr i8, ptr %.02938.i527, i64 -1 ; 3 uses
  %i.fc = getelementptr i8, ptr %.03037.i528, i64 -1 ; 3 uses
  %i.fd = load i8, ptr %i.fb, align 1, !tbaa !66
  %i.fe = load i8, ptr %i.fc, align 1, !tbaa !66
end_hunk_7
begin_hunk_8_@forward_search_range:bb.a
  %i.fn = icmp ult ptr %i.fm, %spec.select.i213
  br i1 %i.fn, label %.preheader.i214, label %slow_search.exit.thread, !llvm.loop !157

bb.ag:                                            ; preds = %bb.j
  %i.fo = load ptr, ptr %i.ar, align 8, !tbaa !147 ; 3 uses
  %i.fp = load ptr, ptr %i.as, align 8, !tbaa !148
end_hunk_8
begin_hunk_9_@forward_search_range:bb.a
  %i.ml = icmp ult ptr %i.mk, %4
  br i1 %i.ml, label %bb.bc, label %slow_search.exit.thread, !llvm.loop !168

slow_search.exit:                                 ; preds = %bb.bc, %.lr.ph.i222.preheader, %.lr.ph.i215.preheader, %bb.s, %.lr.ph.split.us.i, %bb.q, %.lr.ph72.split.us.i, %.lr.ph.i222, %.lr.ph.i215, %str_lower_case_match.exit.thread.i246, %str_lower_case_match.exit.thread.i228, %str_lower_case_match.exit.thread.i, %bb.j
  %.3 = phi ptr [ %.2, %bb.j ], [ %.02739.i, %.lr.ph.i215.preheader ], [ %i.ji, %str_lower_case_match.exit.thread.i228 ], [ %.04971.i, %bb.q ], [ %i.fb, %.lr.ph.i215 ], [ %.04356.i, %.lr.ph.i222 ], [ %.02639.i, %str_lower_case_match.exit.thread.i ], [ %.04354.i, %str_lower_case_match.exit.thread.i246 ], [ %.15064.i, %bb.s ], [ %.04971.us.i, %.lr.ph72.split.us.i ], [ %.15064.us.i, %.lr.ph.split.us.i ], [ %.04356.i, %.lr.ph.i222.preheader ], [ %.018.i, %bb.bc ] ; 18 uses
  %.not195 = icmp ne ptr %.3, null
  %i.mm = icmp ult ptr %.3, %4
  %or.cond = and i1 %.not195, %i.mm
end_hunk_9
