inline.NumInlined: 62
inline.NumDeleted: 37
begin_hunk_0_@cgiesc_unescape_html:bb.a
bb.ab:                                            ; preds = %bb.aa
  %i.dc = trunc nuw nsw i64 %.0110.i to i32
  %i.dd = load ptr, ptr %i.ad, align 8, !tbaa !22
  %i.de = call i32 %i.dd(i32 noundef range(i32 0, 1114111) %i.dc, ptr noundef nonnull %i.c, ptr noundef %i.l) #8, !inline_history !23
  %i.df = sext i32 %i.de to i64
  %i.dg = call i64 @rb_str_cat(i64 noundef %.1.i, ptr noundef nonnull %i.c, i64 noundef %i.df) #8 ; 0 uses
  br label %bb.ad
end_hunk_0
begin_hunk_1_@cgiesc_unescape_html:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  %i.dq = add nsw i64 %.3116.ph.i, 1              ; 2 uses
  %i.dr = icmp slt i64 %i.dq, %i.v
  br i1 %i.dr, label %bb.f, label %.loopexit.i, !llvm.loop !24

.loopexit.i:                                      ; preds = %bb.ai, %bb.ah
  %.0117155.i = phi i64 [ %.0117156.i, %bb.ah ], [ %.1118.ph.i, %bb.ai ] ; 2 uses
end_hunk_1
begin_hunk_2_@optimized_escape_html:bb.a
  %i.v = load i8, ptr %.02835, align 1, !tbaa !21 ; 2 uses
  %i.w = zext i8 %i.v to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr @html_escape_table, i64 %i.w ; 2 uses
  %i.y = load i8, ptr %i.x, align 8, !tbaa !26    ; 2 uses
  %.not = icmp eq i8 %i.y, 0
  br i1 %.not, label %bb.f, label %bb.e

end_hunk_2
begin_hunk_3_@optimized_escape_html:bb.a
bb.g:                                             ; preds = %bb.f, %bb.e
  %.1 = phi ptr [ %i.ab, %bb.e ], [ %i.ac, %bb.f ] ; 2 uses
  %i.ad = icmp ult ptr %i.u, %i.s
  br i1 %i.ad, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !28

._crit_edge.loopexit:                             ; preds = %bb.g
  %.pre = load i64, ptr %i.c, align 8, !tbaa !17
end_hunk_3
begin_hunk_4_@optimized_escape:bb.a
  %.2.us = phi i64 [ %.1.us, %bb.e ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ] ; 2 uses
  %i.ad = add nuw nsw i64 %.03446.us, 1           ; 2 uses
  %exitcond51.not = icmp eq i64 %i.ad, %i.d
  br i1 %exitcond51.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !29

.lr.ph.split:                                     ; preds = %.lr.ph, %url_unreserved_char.exit
  %.03446 = phi i64 [ %i.ax, %url_unreserved_char.exit ], [ 0, %.lr.ph ] ; 4 uses
end_hunk_4
begin_hunk_5_@optimized_escape:bb.a
  %.2 = phi i64 [ %.1, %bb.j ], [ %.1, %bb.i ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ] ; 2 uses
  %i.ax = add nuw nsw i64 %.03446, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ax, %i.d
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !29

._crit_edge:                                      ; preds = %url_unreserved_char.exit, %url_unreserved_char.exit.us
  %.036.lcssa = phi i64 [ %.137.us, %url_unreserved_char.exit.us ], [ %.137, %url_unreserved_char.exit ] ; 2 uses
end_hunk_5
begin_hunk_6_@optimized_unescape:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.ap = add nsw i64 %.1.ph.us, 1                ; 2 uses
  %i.aq = icmp slt i64 %i.ap, %i.f
  br i1 %i.aq, label %.lr.ph.split.us, label %.loopexit, !llvm.loop !30

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.q
  %.05897 = phi i64 [ %i.bu, %bb.q ], [ 0, %.lr.ph ] ; 7 uses
end_hunk_6
begin_hunk_7_@optimized_unescape:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.bu = add nsw i64 %.1.ph, 1                   ; 2 uses
  %i.bv = icmp slt i64 %i.bu, %i.f
  br i1 %i.bv, label %.lr.ph.split, label %.loopexit, !llvm.loop !30

.loopexit:                                        ; preds = %bb.q, %bb.i, %.split.us
  %.06192 = phi i64 [ %.us-phi, %.split.us ], [ %.263.ph.us, %bb.i ], [ %.263.ph, %bb.q ] ; 4 uses
end_hunk_7
begin_hunk_8_@rb_enc_str_coderange
!20 = !{!19, !11, i64 0}
!21 = !{!8, !8, i64 0}
!22 = !{!13, !14, i64 48}
!23 = distinct !{null, null}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!27, !8, i64 0}
!27 = !{!"", !8, i64 0, !8, i64 1}
!28 = distinct !{!28, !25}
!29 = distinct !{!29, !25}
!30 = distinct !{!30, !25}
end_hunk_8
