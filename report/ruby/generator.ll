inline.NumInlined: 364
inline.NumDeleted: 88
begin_hunk_0_@raw_generate_json_string:bb.a

bb.h:                                             ; preds = %bb.f
  %i.ak = load ptr, ptr @search_escape_basic_impl, align 8, !tbaa !12
  %i.al = call zeroext i8 %i.ak(ptr noundef nonnull %3) #25, !callees !100, !inline_history !101
  %.not21.i = icmp eq i8 %i.al, 0
  br i1 %.not21.i, label %convert_UTF8_to_JSON.exit, label %.lr.ph.i

end_hunk_0
begin_hunk_1_@raw_generate_json_string:bb.a
  store ptr %i.fl, ptr %3, align 8, !tbaa !76
  store ptr %i.fl, ptr %i.u, align 8, !tbaa !77
  %i.fm = load ptr, ptr @search_escape_basic_impl, align 8, !tbaa !12
  %i.fn = call zeroext i8 %i.fm(ptr noundef nonnull %3) #25, !callees !100, !inline_history !101
  %.not.i10 = icmp eq i8 %i.fn, 0
  br i1 %.not.i10, label %convert_UTF8_to_JSON.exit, label %.lr.ph.i

end_hunk_1
begin_hunk_2_@convert_UTF8_to_ASCII_only_JSON:bb.a
  store ptr %i.p, ptr %0, align 8, !tbaa !76
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !102

.lr.ph.i.prol.loopexit:                           ; preds = %bb.b, %.lr.ph.preheader.i
  %.unr = phi ptr [ %.promoted.i25, %.lr.ph.preheader.i ], [ %i.p, %bb.b ]
end_hunk_2
begin_hunk_3_@convert_UTF8_to_ASCII_only_JSON:bb.a
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter99
  br i1 %epil.iter.cmp.not, label %._crit_edge.i5, label %.lr.ph.i4.epil, !llvm.loop !103

._crit_edge.i5:                                   ; preds = %.lr.ph.i4.epil, %._crit_edge.i5.unr-lcssa
  %.lcssa86 = phi i32 [ %i.il, %._crit_edge.i5.unr-lcssa ], [ %i.hk, %.lr.ph.i4.epil ] ; 4 uses
end_hunk_3
begin_hunk_4_@llvm.assume
!98 = distinct !{!98, !99}
!99 = !{!"llvm.loop.peeled.count", i32 1}
!100 = !{ptr @search_escape_basic, ptr @search_escape_basic_sse2}
!101 = distinct !{null}
!102 = distinct !{!102, !83}
!103 = distinct !{!103, !83}
end_hunk_4
