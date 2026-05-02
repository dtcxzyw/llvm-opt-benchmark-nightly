inline.NumInlined: 62
inline.NumDeleted: 37
begin_hunk_0_@optimized_escape:bb.a
  br i1 %i.j, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %RSTRING_PTR.exit
  %.not49 = icmp eq i32 %1, 0
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 2 uses
  br i1 %.not49, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %url_unreserved_char.exit.us
  %.03446.us = phi i64 [ %i.ad, %url_unreserved_char.exit.us ], [ 0, %.lr.ph ] ; 4 uses
end_hunk_0
begin_hunk_1_@optimized_escape:bb.a
  %exitcond.not = icmp eq i64 %i.ax, %i.d
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !29

._crit_edge:                                      ; preds = %url_unreserved_char.exit, %url_unreserved_char.exit.us
  %.036.lcssa = phi i64 [ %.137.us, %url_unreserved_char.exit.us ], [ %.137, %url_unreserved_char.exit ] ; 2 uses
  %.035.lcssa = phi i64 [ %.2.us, %url_unreserved_char.exit.us ], [ %.2, %url_unreserved_char.exit ] ; 4 uses
  %.not = icmp eq i64 %.035.lcssa, 0
  br i1 %.not, label %._crit_edge.thread, label %bb.k

end_hunk_1
begin_hunk_2_@optimized_unescape:bb.a
  br i1 %i.l, label %.lr.ph, label %.loopexit.thread

.lr.ph:                                           ; preds = %RSTRING_PTR.exit
  %.not103 = icmp eq i32 %2, 0
  br i1 %.not103, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.i
  %.05897.us = phi i64 [ %i.ap, %bb.i ], [ 0, %.lr.ph ] ; 7 uses
end_hunk_2
begin_hunk_3_@optimized_unescape:bb.a
  %i.bt = call i64 @rb_str_cat(i64 noundef %.162, ptr noundef nonnull %i.a, i64 noundef 1) #8 ; 0 uses
  br label %bb.q

.split.us:                                        ; preds = %bb.j, %bb.c
  %.us-phi = phi i64 [ %.06193.us, %bb.c ], [ %.06193, %bb.j ]
  %.us-phi100 = phi i64 [ %.05995.us, %bb.c ], [ %.05995, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %.loopexit

end_hunk_3
begin_hunk_4_@optimized_unescape:bb.a
  %i.bv = icmp slt i64 %i.bu, %i.f
  br i1 %i.bv, label %.lr.ph.split, label %.loopexit, !llvm.loop !30

.loopexit:                                        ; preds = %bb.q, %bb.i, %.split.us
  %.06192 = phi i64 [ %.us-phi, %.split.us ], [ %.263.ph.us, %bb.i ], [ %.263.ph, %bb.q ] ; 4 uses
  %.05990 = phi i64 [ %.us-phi100, %.split.us ], [ %.160.ph.us, %bb.i ], [ %.160.ph, %bb.q ] ; 2 uses
  %.not71 = icmp eq i64 %.06192, 0
  br i1 %.not71, label %.loopexit.thread, label %bb.r

end_hunk_4
