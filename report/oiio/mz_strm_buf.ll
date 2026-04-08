inline.NumInlined: 8
inline.NumDeleted: 2
begin_hunk_0_@mz_stream_buffered_read:bb.a
  %i.cb = zext nneg i32 %spec.select to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.by, ptr nonnull align 1 %i.ca, i64 %i.cb, i1 false)
  %i.cc = add nuw nsw i32 %spec.select, %.05260
  %i.cd = sub nsw i32 %.05061, %spec.select
  %i.ce = load i32, ptr %i.az, align 4, !tbaa !21
  %i.cf = add nsw i32 %i.ce, 1
  store i32 %i.cf, ptr %i.az, align 4, !tbaa !21
end_hunk_0
begin_hunk_1_@mz_stream_buffered_read:bb.a
bb.q:                                             ; preds = %bb.p, %bb.o
  %.pre66 = phi i32 [ %i.ch, %bb.p ], [ %.pre67, %bb.o ]
  %.153 = phi i32 [ %i.cc, %bb.p ], [ %.05260, %bb.o ]
  %.1 = phi i32 [ %i.cd, %bb.p ], [ %.05061, %bb.o ] ; 3 uses
  %i.ci = icmp sgt i32 %.1, 0
  br i1 %i.ci, label %bb.j, label %._crit_edge, !llvm.loop !22

._crit_edge:                                      ; preds = %bb.q, %bb.n, %mz_stream_buffered_seek.exit
  %.050.lcssa = phi i32 [ %2, %mz_stream_buffered_seek.exit ], [ %.05061, %bb.n ], [ %.1, %bb.q ]
  %i.cj = sub nsw i32 %2, %.050.lcssa
  br label %.loopexit

end_hunk_1
