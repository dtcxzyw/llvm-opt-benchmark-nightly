inline.NumInlined: 352
inline.NumDeleted: 135
begin_hunk_0_@_ZN6google8protobuf4util8TimeUtil21NanosecondsToDurationEl:bb.a
  br i1 %or.cond3.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %2 = add nsw i64 %i.a, 1
  %3 = add nuw nsw i32 %i.c, -1000000000
  br label %_ZN6google8protobuf4util12_GLOBAL__N_124CreateNormalizedDurationEli.exit

bb.c:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf4util8TimeUtil21NanosecondsToDurationEl:bb.a
  br label %_ZN6google8protobuf4util12_GLOBAL__N_124CreateNormalizedDurationEli.exit

_ZN6google8protobuf4util12_GLOBAL__N_124CreateNormalizedDurationEli.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.123.i = phi i32 [ %3, %bb.b ], [ %i.i, %bb.d ], [ %i.c, %bb.c ]
  %.1.i = phi i64 [ %2, %bb.b ], [ %i.h, %bb.d ], [ %i.a, %bb.c ]
  tail call void @_ZN6google8protobuf8DurationC2EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef null)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.1.i, ptr %i.j, align 8, !tbaa !7, !alias.scope !68
end_hunk_1
