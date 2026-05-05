inline.NumInlined: 56
inline.NumDeleted: 18
begin_hunk_0_@linenoiseEditDeletePrevWord:bb.a
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph28, %bb.e
  %i.k = phi i64 [ %.lcssa45, %.lr.ph28 ], [ %i.o, %bb.e ] ; 4 uses
  %i.l = getelementptr i8, ptr %i.j, i64 %i.k
  %i.m = getelementptr i8, ptr %i.l, i64 -1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !25
end_hunk_0
begin_hunk_1_@linenoiseEditDeletePrevWord:bb.a
  br i1 %.not22, label %.critedge2.loopexitsplit, label %bb.d, !llvm.loop !47

.critedge2.loopexitsplit:                         ; preds = %bb.e
  %.lcssa.ph.ph = phi i64 [ 0, %bb.e ]
  br label %.critedge2.loopexit

..critedge2.loopexit_crit_edge:                   ; preds = %bb.d
  %.lcssa48 = phi i64 [ %i.k, %bb.d ]
  %.lcssa48.a = phi i64 [ %i.k, %bb.d ]           ; 0 uses
  br label %.critedge2.loopexit

.critedge2.loopexit:                              ; preds = %.critedge2.loopexitsplit, %..critedge2.loopexit_crit_edge
  %.lcssa.ph = phi i64 [ %.lcssa48, %..critedge2.loopexit_crit_edge ], [ %.lcssa.ph.ph, %.critedge2.loopexitsplit ]
  br label %.critedge2

.critedge2:                                       ; preds = %.critedge2.loopexit, %.critedge..critedge2_crit_edge
end_hunk_1
begin_hunk_2_@getCursorPosition:bb.a
  br i1 %exitcond.not, label %split.a, label %.preheader, !llvm.loop !70

.preheader:                                       ; preds = %.preheader.preheader, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %.preheader.preheader ] ; 5 uses
  %i.e = getelementptr i8, ptr %i.a, i64 %indvars.iv ; 2 uses
  %i.f = call i64 @read(i32 noundef 0, ptr noundef nonnull %i.e, i64 noundef 1) #24
  %.not13 = icmp eq i64 %i.f, 1
end_hunk_2
begin_hunk_3_@getCursorPosition:bb.a
  br label %bb.d

._crit_edge:                                      ; preds = %bb.c
  %indvars.iv.lcssa2 = phi i64 [ %indvars.iv, %bb.c ]
  %indvars.iv.lcssa1 = phi i64 [ %indvars.iv, %bb.c ] ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %split.a, %._crit_edge
  %.lcssa = phi i64 [ %indvars.iv.lcssa2, %._crit_edge ], [ %.lcssa.ph, %split.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %.lcssa
  store i8 0, ptr %i.i, align 1, !tbaa !25
  %i.j = load i8, ptr %i.a, align 16, !tbaa !25
end_hunk_3
