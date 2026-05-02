inline.NumInlined: 7294
inline.NumDeleted: 3038
begin_hunk_0_@_ZN5arrow7compute23ExecuteScalarExpressionERKNS0_10ExpressionERKNS0_9ExecBatchEPNS0_11ExecContextE:bb.a

bb.bo:                                            ; preds = %.lr.ph, %bb.bm
  %.093237 = phi i64 [ 0, %.lr.ph ], [ %i.hl, %bb.bm ] ; 4 uses
  %.094236 = phi i1 [ true, %.lr.ph ], [ %.195, %bb.bm ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #32
  %i.ht = load ptr, ptr %i.gp, align 8, !tbaa !130
  %i.hu = getelementptr inbounds nuw [16 x i8], ptr %i.ht, i64 %.093237
end_hunk_0
begin_hunk_1_@_ZN5arrow7compute23ExecuteScalarExpressionERKNS0_10ExpressionERKNS0_9ExecBatchEPNS0_11ExecContextE:bb.a
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  %i.ik = load i8, ptr %i.ij, align 8, !tbaa !69
  %i.il = icmp eq i8 %i.ik, 1
  %i.im = select i1 %i.il, i1 %.094236, i1 false
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bq
  %.195 = phi i1 [ %.094236, %bb.bq ], [ %i.im, %bb.bw ] ; 2 uses
  %i.in = load ptr, ptr %36, align 8, !tbaa !274  ; 2 uses
  %i.io = icmp eq ptr %i.in, null
  br i1 %i.io, label %bb.by, label %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i, !prof !290
end_hunk_1
begin_hunk_2_@_ZN5arrow7compute23ExecuteScalarExpressionERKNS0_10ExpressionERKNS0_9ExecBatchEPNS0_11ExecContextE:bb.a

._crit_edge:                                      ; preds = %bb.bm
  %i.iv = icmp ne ptr %i.hn, %i.hm
  %i.iw = select i1 %i.iv, i1 %.195, i1 false
  %i.ix = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.iy = load i64, ptr %i.ix, align 8
  %cond.fr = freeze i1 %i.iw
end_hunk_2
