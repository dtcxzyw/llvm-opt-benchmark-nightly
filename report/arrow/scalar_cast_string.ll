inline.NumInlined: 15665
inline.NumDeleted: 2714
begin_hunk_0_@_ZN5arrow7compute8internal12_GLOBAL__N_113Utf8Validator10VisitValueESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  br i1 %i.a, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %select.unfold.i.i
  %.07999.i.i = phi ptr [ %.281.i.i, %select.unfold.i.i ], [ %2, %bb.a ] ; 2 uses
  %.08298.i.i = phi i64 [ %.284.i.i, %select.unfold.i.i ], [ %1, %bb.a ] ; 5 uses
  %i.b = load i64, ptr %.07999.i.i, align 1       ; 9 uses
  %i.c = and i64 %i.b, -9187201950435737472
end_hunk_0
begin_hunk_1_@_ZN5arrow7compute8internal12_GLOBAL__N_113Utf8Validator10VisitValueESt17basic_string_viewIcSt11char_traitsIcEE:bb.a

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.h = add nsw i64 %.08298.i.i, -8
  br label %select.unfold.i.i, !llvm.loop !3827

bb.c:                                             ; preds = %.lr.ph.i.i
end_hunk_1
begin_hunk_2_@_ZN5arrow7compute8internal12_GLOBAL__N_113Utf8Validator10VisitValueESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  br i1 %i.aj, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ak = add nsw i64 %.08298.i.i, -5
  br label %select.unfold.i.i, !llvm.loop !3827

end_hunk_2
begin_hunk_3_@_ZN5arrow7compute8internal12_GLOBAL__N_113Utf8Validator10VisitValueESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  br i1 %i.aq, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ar = add nsw i64 %.08298.i.i, -6
  br label %select.unfold.i.i, !llvm.loop !3827

end_hunk_3
begin_hunk_4_@_ZN5arrow7compute8internal12_GLOBAL__N_113Utf8Validator10VisitValueESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  br i1 %i.ax, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ay = add nsw i64 %.08298.i.i, -7
  br label %select.unfold.i.i, !llvm.loop !3827

bb.i:                                             ; preds = %bb.g
  %i.az = zext i16 %i.aw to i64
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr @_ZN5arrow4util8internal16utf8_large_tableE, i64 %i.az
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %i.g
end_hunk_4
begin_hunk_5_@_ZN5arrow7compute8internal12_GLOBAL__N_113Utf8Validator10VisitValueESt17basic_string_viewIcSt11char_traitsIcEE:bb.a

select.unfold.i.i:                                ; preds = %bb.i, %bb.h, %bb.f, %bb.d, %bb.b
  %.284.i.i = phi i64 [ %i.h, %bb.b ], [ %i.ak, %bb.d ], [ %i.ar, %bb.f ], [ %i.ay, %bb.h ], [ %i.bd, %bb.i ] ; 3 uses
  %.pn.i.i = phi i64 [ 8, %bb.b ], [ 5, %bb.d ], [ 6, %bb.f ], [ 7, %bb.h ], [ 8, %bb.i ]
  %.281.i.i = getelementptr inbounds nuw i8, ptr %.07999.i.i, i64 %.pn.i.i ; 2 uses
  %i.bf = icmp sgt i64 %.284.i.i, 7
  br i1 %i.bf, label %.lr.ph.i.i, label %._crit_edge.i.i

end_hunk_5
