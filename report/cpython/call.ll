inline.NumInlined: 126
inline.NumDeleted: 26
begin_hunk_0_@object_vacall:bb.a
  %i.ap = getelementptr [8 x i8], ptr %.029, i64 %.148
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !30
  %i.aq = add nuw nsw i64 %.148, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.aq, %.030
  br i1 %exitcond.not, label %._crit_edge, label %bb.n, !llvm.loop !75

._crit_edge:                                      ; preds = %bb.q, %bb.m
  %i.ar = getelementptr i8, ptr %2, i64 8
end_hunk_0
