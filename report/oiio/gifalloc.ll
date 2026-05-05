inline.NumInlined: 11
begin_hunk_0_@GifUnionColorMap:bb.a

.lr.ph108:                                        ; preds = %.lr.ph108.preheader, %bb.j
  %lsr.iv176 = phi ptr [ %scevgep175, %.lr.ph108.preheader ], [ %scevgep177, %bb.j ] ; 4 uses
  %indvars.iv128 = phi i64 [ %indvars.iv.next129, %bb.j ], [ %.pre-phi, %.lr.ph108.preheader ] ; 3 uses
  %scevgep178 = getelementptr i8, ptr %lsr.iv176, i64 -1
  %i.af = load i8, ptr %scevgep178, align 1, !tbaa !22
  %i.ag = icmp eq i8 %i.af, 0
end_hunk_0
begin_hunk_1_@GifUnionColorMap:bb.a
  br i1 %i.ai, label %bb.j, label %..critedge.loopexit_crit_edge

bb.j:                                             ; preds = %bb.i
  %indvars.iv.next129 = add i64 %indvars.iv128, -1 ; 2 uses
  %scevgep179.a = getelementptr i8, ptr %lsr.iv176, i64 -5
  %i.aj = load i8, ptr %scevgep179.a, align 1, !tbaa !19
  %i.ak = icmp eq i8 %i.aj, 0
end_hunk_1
begin_hunk_2_@GifUnionColorMap:bb.a
  br label %.critedge.loopexitsplit

..critedge.loopexitsplit_crit_edge:               ; preds = %bb.j
  %indvars.iv.next129.lcssa.a = phi i64 [ %indvars.iv.next129, %bb.j ]
  br label %.critedge.loopexitsplit, !llvm.loop !24

.critedge.loopexitsplit:                          ; preds = %.critedge.loopexitsplitsplit, %..critedge.loopexitsplit_crit_edge
  %.082.lcssa.ph.in.ph = phi i64 [ %indvars.iv.next129.lcssa.a, %..critedge.loopexitsplit_crit_edge ], [ %indvars.iv128.lcssa, %.critedge.loopexitsplitsplit ]
  br label %.critedge.loopexit

..critedge.loopexit_crit_edge:                    ; preds = %bb.i
  %indvars.iv128.lcssa180 = phi i64 [ %indvars.iv128, %bb.i ]
  br label %.critedge.loopexit

.critedge.loopexit:                               ; preds = %.critedge.loopexitsplit, %..critedge.loopexit_crit_edge
  %.082.lcssa.ph.in = phi i64 [ %indvars.iv128.lcssa180, %..critedge.loopexit_crit_edge ], [ %.082.lcssa.ph.in.ph, %.critedge.loopexitsplit ]
  %.082.lcssa.ph = trunc i64 %.082.lcssa.ph.in to i32
  br label %.critedge

end_hunk_2
