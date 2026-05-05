inline.NumInlined: 103
inline.NumDeleted: 11
begin_hunk_0_@lpDeleteRangeWithEntry:bb.a
.preheader:                                       ; preds = %.preheader.preheader, %lpAssertValidEntry.exit
  %lsr.iv = phi i64 [ 1, %.preheader.preheader ], [ %lsr.iv.next, %lpAssertValidEntry.exit ] ; 2 uses
  %.05160 = phi ptr [ %i.al, %lpAssertValidEntry.exit ], [ %i.f, %.preheader.preheader ] ; 4 uses
  %i.i = load i8, ptr %.05160, align 1, !tbaa !13 ; 4 uses
  %i.j = zext i8 %i.i to i32                      ; 5 uses
  %i.k = icmp sgt i8 %i.i, -1
end_hunk_0
begin_hunk_1_@lpDeleteRangeWithEntry:bb.a
  br i1 %.not, label %split.a, label %.preheader, !llvm.loop !43

split.a:                                          ; preds = %lpAssertValidEntry.exit
  br label %bb.o

lpSkip.exit._crit_edge:                           ; preds = %lpSkip.exit
  %lsr.iv.lcssa = phi i64 [ %lsr.iv, %lpSkip.exit ]
  br label %bb.o

bb.o:                                             ; preds = %split.a, %lpSkip.exit._crit_edge
  %.lcssa78 = phi ptr [ %i.al, %lpSkip.exit._crit_edge ], [ %i.al, %split.a ] ; 2 uses
  %.lcssa = phi i64 [ %lsr.iv.lcssa, %lpSkip.exit._crit_edge ], [ %2, %split.a ]
  %i.aq = ptrtoint ptr %i.f to i64                ; 2 uses
  %i.ar = ptrtoint ptr %0 to i64
  %i.as = sub i64 %i.aq, %i.ar
end_hunk_1
begin_hunk_2_@lpValidateIntegrity:bb.a
  br label %.split.us

.split.us:                                        ; preds = %.split.us.preheader, %thread-pre-split.us
  %.02849.us = phi i32 [ %i.o, %thread-pre-split.us ], [ 0, %.split.us.preheader ] ; 2 uses
  %i.l = phi ptr [ %.pr.us, %thread-pre-split.us ], [ %i.k, %.split.us.preheader ] ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !13
  %.not38.us = icmp eq i8 %i.m, -1
end_hunk_2
begin_hunk_3_@lpValidateIntegrity:bb.a
  br i1 %.not37, label %.critedge.loopexit68split, label %.split

.split:                                           ; preds = %.split.preheader, %thread-pre-split
  %.02849 = phi i32 [ %i.p, %thread-pre-split ], [ 0, %.split.preheader ] ; 2 uses
  %i.q = phi ptr [ %.pr, %thread-pre-split ], [ %i.k, %.split.preheader ] ; 3 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !13
  %.not38 = icmp eq i8 %i.r, -1
end_hunk_3
begin_hunk_4_@lpValidateIntegrity:bb.a
  br i1 %.not44, label %.thread.loopexit71, label %thread-pre-split

.critedge.loopexitsplit:                          ; preds = %thread-pre-split.us
  %.lcssa74 = phi i32 [ %i.o, %thread-pre-split.us ]
  br label %.critedge.loopexit

.split.us..critedge.loopexit_crit_edge:           ; preds = %.split.us
  %.02849.us.lcssa.a = phi i32 [ %.02849.us, %.split.us ]
  br label %.critedge.loopexit

.critedge.loopexit:                               ; preds = %.critedge.loopexitsplit, %.split.us..critedge.loopexit_crit_edge
  %.us-phi.ph = phi ptr [ %i.l, %.split.us..critedge.loopexit_crit_edge ], [ null, %.critedge.loopexitsplit ]
  %.us-phi50.ph = phi i32 [ %.02849.us.lcssa.a, %.split.us..critedge.loopexit_crit_edge ], [ %.lcssa74, %.critedge.loopexitsplit ]
  br label %.critedge

.critedge.loopexit68split:                        ; preds = %thread-pre-split
  %.lcssa = phi i32 [ %i.p, %thread-pre-split ]
  br label %.critedge.loopexit68

.split..critedge.loopexit68_crit_edge:            ; preds = %.split
  %.02849.lcssa.a = phi i32 [ %.02849, %.split ]
  br label %.critedge.loopexit68

.critedge.loopexit68:                             ; preds = %.critedge.loopexit68split, %.split..critedge.loopexit68_crit_edge
  %.us-phi.ph69 = phi ptr [ %i.q, %.split..critedge.loopexit68_crit_edge ], [ null, %.critedge.loopexit68split ]
  %.us-phi50.ph70 = phi i32 [ %.02849.lcssa.a, %.split..critedge.loopexit68_crit_edge ], [ %.lcssa, %.critedge.loopexit68split ]
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit68, %.critedge.loopexit
end_hunk_4
