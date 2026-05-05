inline.NumInlined: 103
inline.NumDeleted: 11
begin_hunk_0_@lpDeleteRangeWithEntry:bb.a
.preheader:                                       ; preds = %.preheader.preheader, %lpAssertValidEntry.exit
  %lsr.iv = phi i64 [ 1, %.preheader.preheader ], [ %lsr.iv.next, %lpAssertValidEntry.exit ] ; 2 uses
  %.05160 = phi ptr [ %i.al, %lpAssertValidEntry.exit ], [ %i.f, %.preheader.preheader ] ; 4 uses
  %.05359 = phi i64 [ %3, %lpAssertValidEntry.exit ], [ 0, %.preheader.preheader ]
  %3 = add nuw i64 %.05359, 1                     ; 2 uses
  %i.i = load i8, ptr %.05160, align 1, !tbaa !13 ; 4 uses
  %i.j = zext i8 %i.i to i32                      ; 5 uses
  %i.k = icmp sgt i8 %i.i, -1
end_hunk_0
begin_hunk_1_@lpDeleteRangeWithEntry:bb.a
  br i1 %.not, label %split.a, label %.preheader, !llvm.loop !43

split.a:                                          ; preds = %lpAssertValidEntry.exit
  %.lcssa78.ph = phi ptr [ %i.al, %lpAssertValidEntry.exit ]
  %.lcssa.ph = phi i64 [ %2, %lpAssertValidEntry.exit ]
  br label %bb.o

lpSkip.exit._crit_edge:                           ; preds = %lpSkip.exit
  %lsr.iv.lcssa = phi i64 [ %lsr.iv, %lpSkip.exit ]
  %split = phi ptr [ %i.al, %lpSkip.exit ]
  %split80 = phi i64 [ %3, %lpSkip.exit ]         ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %split.a, %lpSkip.exit._crit_edge
  %.lcssa78 = phi ptr [ %split, %lpSkip.exit._crit_edge ], [ %.lcssa78.ph, %split.a ] ; 2 uses
  %.lcssa = phi i64 [ %lsr.iv.lcssa, %lpSkip.exit._crit_edge ], [ %.lcssa.ph, %split.a ]
  %i.aq = ptrtoint ptr %i.f to i64                ; 2 uses
  %i.ar = ptrtoint ptr %0 to i64
  %i.as = sub i64 %i.aq, %i.ar
end_hunk_1
begin_hunk_2_@lpValidateIntegrity:bb.a
  br label %.split.us

.split.us:                                        ; preds = %.split.us.preheader, %thread-pre-split.us
  %.02849.us = phi i32 [ %i.o, %thread-pre-split.us ], [ 0, %.split.us.preheader ] ; 3 uses
  %i.l = phi ptr [ %.pr.us, %thread-pre-split.us ], [ %i.k, %.split.us.preheader ] ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !13
  %.not38.us = icmp eq i8 %i.m, -1
end_hunk_2
begin_hunk_3_@lpValidateIntegrity:bb.a
  br i1 %.not37, label %.critedge.loopexit68split, label %.split

.split:                                           ; preds = %.split.preheader, %thread-pre-split
  %.02849 = phi i32 [ %i.p, %thread-pre-split ], [ 0, %.split.preheader ] ; 3 uses
  %i.q = phi ptr [ %.pr, %thread-pre-split ], [ %i.k, %.split.preheader ] ; 3 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !13
  %.not38 = icmp eq i8 %i.r, -1
end_hunk_3
begin_hunk_4_@lpValidateIntegrity:bb.a
  br i1 %.not44, label %.thread.loopexit71, label %thread-pre-split

.critedge.loopexitsplit:                          ; preds = %thread-pre-split.us
  %.us-phi.ph.ph = phi ptr [ null, %thread-pre-split.us ]
  %.lcssa74 = phi i32 [ %i.o, %thread-pre-split.us ]
  br label %.critedge.loopexit

.split.us..critedge.loopexit_crit_edge:           ; preds = %.split.us
  %.02849.us.lcssa = phi i32 [ %.02849.us, %.split.us ]
  %split75 = phi ptr [ %i.l, %.split.us ]
  %.02849.us.lcssa.a = phi i32 [ %.02849.us, %.split.us ] ; 0 uses
  br label %.critedge.loopexit

.critedge.loopexit:                               ; preds = %.critedge.loopexitsplit, %.split.us..critedge.loopexit_crit_edge
  %.us-phi.ph = phi ptr [ %split75, %.split.us..critedge.loopexit_crit_edge ], [ %.us-phi.ph.ph, %.critedge.loopexitsplit ]
  %.us-phi50.ph = phi i32 [ %.02849.us.lcssa, %.split.us..critedge.loopexit_crit_edge ], [ %.lcssa74, %.critedge.loopexitsplit ]
  br label %.critedge

.critedge.loopexit68split:                        ; preds = %thread-pre-split
  %.us-phi.ph69.ph = phi ptr [ null, %thread-pre-split ]
  %.lcssa = phi i32 [ %i.p, %thread-pre-split ]
  br label %.critedge.loopexit68

.split..critedge.loopexit68_crit_edge:            ; preds = %.split
  %.02849.lcssa = phi i32 [ %.02849, %.split ]
  %split = phi ptr [ %i.q, %.split ]
  %.02849.lcssa.a = phi i32 [ %.02849, %.split ]  ; 0 uses
  br label %.critedge.loopexit68

.critedge.loopexit68:                             ; preds = %.critedge.loopexit68split, %.split..critedge.loopexit68_crit_edge
  %.us-phi.ph69 = phi ptr [ %split, %.split..critedge.loopexit68_crit_edge ], [ %.us-phi.ph69.ph, %.critedge.loopexit68split ]
  %.us-phi50.ph70 = phi i32 [ %.02849.lcssa, %.split..critedge.loopexit68_crit_edge ], [ %.lcssa, %.critedge.loopexit68split ]
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit68, %.critedge.loopexit
end_hunk_4
