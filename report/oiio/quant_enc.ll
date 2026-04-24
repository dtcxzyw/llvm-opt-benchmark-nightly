inline.NumInlined: 86
inline.NumDeleted: 32
begin_hunk_0_@VP8SetSegmentParams:bb.a

bb.j:                                             ; preds = %.critedge.i, %bb.i
  %i.ge = phi i1 [ false, %bb.i ], [ true, %.critedge.i ]
  %.145.i = phi i64 [ 1, %bb.i ], [ 2, %.critedge.i ] ; 2 uses
  %.145.i.a = phi i32 [ 1, %bb.i ], [ 2, %.critedge.i ] ; 4 uses
  %exitcond78.not.i = icmp eq i32 %i.fo, 2
  br i1 %exitcond78.not.i, label %._crit_edge.i, label %.lr.ph.i.1

end_hunk_0
begin_hunk_1_@VP8SetSegmentParams:bb.a
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 2776
  %i.gh = load i32, ptr %i.gg, align 8, !tbaa !32
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 2780
  br label %bb.k

bb.k:                                             ; preds = %SegmentsAreEquivalent.exit.thread.i.1, %.lr.ph.i.1
end_hunk_1
begin_hunk_2_@VP8SetSegmentParams:bb.a

SegmentsAreEquivalent.exit.thread.i.1:            ; preds = %SegmentsAreEquivalent.exit.i.1, %bb.k
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i.1, 1 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %.145.i
  br i1 %exitcond.not.i.1, label %.critedge.i.1, label %bb.k, !llvm.loop !56

.critedge.i.1:                                    ; preds = %SegmentsAreEquivalent.exit.thread.i.1
end_hunk_2
begin_hunk_3_@VP8SetSegmentParams:bb.a
  br i1 %i.ge, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.critedge.i.1
  %i.gr = getelementptr inbounds nuw [744 x i8], ptr %i.fq, i64 %.145.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(744) %i.gr, ptr noundef nonnull align 8 dereferenceable(744) %i.gf, i64 744, i1 false), !tbaa.struct !57
  br label %bb.m

end_hunk_3
