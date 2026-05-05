inline.NumInlined: 1
begin_hunk_0_@_ZN12token_stream9get_tokenEPPc:bb.a
.lr.ph:                                           ; preds = %.lr.ph.preheader, %.preheader58thread-pre-split
  %lsr.iv317 = phi ptr [ %.ptr44.ptr, %.lr.ph.preheader ], [ %scevgep318, %.preheader58thread-pre-split ] ; 4 uses
  %lsr.iv316 = phi i64 [ 8190, %.lr.ph.preheader ], [ %lsr.iv.next, %.preheader58thread-pre-split ] ; 2 uses
  %i.be = phi i8 [ %.pr, %.preheader58thread-pre-split ], [ %.lcssa295, %.lr.ph.preheader ] ; 2 uses
  %i.bf = sext i8 %i.be to i32
  %memchr = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.7, i32 %i.bf, i64 10)
end_hunk_0
begin_hunk_1_@_ZN12token_stream9get_tokenEPPc:bb.a

bb.x:                                             ; preds = %.lr.ph
  store i8 %i.be, ptr %lsr.iv317, align 1, !tbaa !20
  %i.bg = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 1 ; 2 uses
  store ptr %i.bh, ptr %i.f, align 8, !tbaa !21
  %scevgep319 = getelementptr i8, ptr %lsr.iv317, i64 1
  %exitcond105.not = icmp eq i64 %lsr.iv316, 0
  br i1 %exitcond105.not, label %..critedge2_crit_edge, label %.preheader58thread-pre-split, !llvm.loop !30
end_hunk_1
begin_hunk_2_@_ZN12token_stream9get_tokenEPPc:bb.a

.preheader58thread-pre-split..critedge2.loopexit_crit_edge: ; preds = %.preheader58thread-pre-split
  %scevgep318.lcssa = phi ptr [ %scevgep318, %.preheader58thread-pre-split ]
  br label %.critedge2.loopexit

.critedge2.loopexit:                              ; preds = %.critedge2.loopexitsplit, %.preheader58thread-pre-split..critedge2.loopexit_crit_edge
end_hunk_2
