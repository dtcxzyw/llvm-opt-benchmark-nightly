begin_hunk_0

.lr.ph:                                           ; preds = %bb.a, %.lr.ph._crit_edge
  %.021 = phi ptr [ %i.ae, %.lr.ph._crit_edge ], [ %i.a, %bb.a ] ; 7 uses
  %i.f = getelementptr i8, ptr %.021, i64 28      ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !21
  %i.h = icmp eq i32 %i.g, 0
  %.pre = load i32, ptr %.021, align 8, !tbaa !50 ; 2 uses
end_hunk_0
begin_hunk_1

mi_segment_span_remove_from_queue.exit:           ; preds = %bb.g, %bb.h
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.phi.trans.insert.i, i8 0, i64 16, i1 false)
  store i32 0, ptr %i.f, align 4, !tbaa !21
  br label %.lr.ph._crit_edge

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %mi_segment_span_remove_from_queue.exit
end_hunk_1
