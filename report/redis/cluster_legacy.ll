inline.NumInlined: 443
inline.NumDeleted: 38
begin_hunk_0_@checkSlotAssignmentsOrReply:bb.a

.critedge.us:                                     ; preds = %.critedge.us.preheader, %bb.c
  %lsr.iv67 = phi i32 [ %i.e, %.critedge.us.preheader ], [ %lsr.iv.next68, %bb.c ]
  %indvars.iv34 = phi i64 [ %indvars.iv.next35, %bb.c ], [ %i.a, %.critedge.us.preheader ] ; 5 uses
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 262192
  %i.h = shl nsw i64 %indvars.iv34, 3
end_hunk_0
begin_hunk_1_@checkSlotAssignmentsOrReply:bb.a

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.e
  %lsr.iv = phi i32 [ %i.c, %.lr.ph.split.preheader ], [ %lsr.iv.next, %bb.e ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ %i.a, %.lr.ph.split.preheader ] ; 5 uses
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 262192
  %i.p = shl nsw i64 %indvars.iv, 3
end_hunk_1
begin_hunk_2_@checkSlotAssignmentsOrReply:bb.a

.loopexit.sink.split.loopexitsplit:               ; preds = %bb.b
  %indvars.iv34.lcssa70 = phi i64 [ %indvars.iv34, %bb.b ]
  br label %.loopexit.sink.split.loopexit

.critedge.us..loopexit.sink.split.loopexit_crit_edge: ; preds = %.critedge.us
  %indvars.iv34.lcssa69.a = phi i64 [ %indvars.iv34, %.critedge.us ]
  br label %.loopexit.sink.split.loopexit

.loopexit.sink.split.loopexit:                    ; preds = %.loopexit.sink.split.loopexitsplit, %.critedge.us..loopexit.sink.split.loopexit_crit_edge
  %indvars.iv34.lcssa = phi i64 [ %indvars.iv34.lcssa69.a, %.critedge.us..loopexit.sink.split.loopexit_crit_edge ], [ %indvars.iv34.lcssa70, %.loopexit.sink.split.loopexitsplit ]
  %.str.196.sink.ph = phi ptr [ @.str.195, %.critedge.us..loopexit.sink.split.loopexit_crit_edge ], [ @.str.196, %.loopexit.sink.split.loopexitsplit ]
  br label %.loopexit.sink.split

.loopexit.sink.split.loopexit58split:             ; preds = %bb.d
  %indvars.iv.lcssa64.a = phi i64 [ %indvars.iv, %bb.d ]
  br label %.loopexit.sink.split.loopexit58

.lr.ph.split..loopexit.sink.split.loopexit58_crit_edge: ; preds = %.lr.ph.split
  %indvars.iv.lcssa63 = phi i64 [ %indvars.iv, %.lr.ph.split ]
  br label %.loopexit.sink.split.loopexit58

.loopexit.sink.split.loopexit58:                  ; preds = %.loopexit.sink.split.loopexit58split, %.lr.ph.split..loopexit.sink.split.loopexit58_crit_edge
  %indvars.iv.lcssa = phi i64 [ %indvars.iv.lcssa63, %.lr.ph.split..loopexit.sink.split.loopexit58_crit_edge ], [ %indvars.iv.lcssa64.a, %.loopexit.sink.split.loopexit58split ]
  %.str.196.sink.ph59 = phi ptr [ @.str.194, %.lr.ph.split..loopexit.sink.split.loopexit58_crit_edge ], [ @.str.196, %.loopexit.sink.split.loopexit58split ]
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %.loopexit.sink.split.loopexit58, %.loopexit.sink.split.loopexit
end_hunk_2
begin_hunk_3_@clusterCommandSpecial:bb.a

.lr.ph.split.i369.us:                             ; preds = %.lr.ph.i.us, %bb.am
  %lsr.iv682 = phi i32 [ %i.ft, %.lr.ph.i.us ], [ %lsr.iv.next683, %bb.am ]
  %indvars.iv.i370.us = phi i64 [ %indvars.iv.next.i371.us, %bb.am ], [ %i.fp, %.lr.ph.i.us ] ; 5 uses
  %i.fu = shl nsw i64 %indvars.iv.i370.us, 3
  %scevgep684 = getelementptr i8, ptr %i.fr, i64 %i.fu
  %i.fv = load ptr, ptr %scevgep684, align 8, !tbaa !54
end_hunk_3
begin_hunk_4_@clusterCommandSpecial:bb.a

.critedge.us.i379:                                ; preds = %.lr.ph.i, %bb.aq
  %lsr.iv = phi i32 [ %i.gu, %.lr.ph.i ], [ %lsr.iv.next, %bb.aq ]
  %indvars.iv34.i380 = phi i64 [ %indvars.iv.next35.i382, %bb.aq ], [ %i.gq, %.lr.ph.i ] ; 5 uses
  %i.gv = shl nsw i64 %indvars.iv34.i380, 3
  %scevgep = getelementptr i8, ptr %i.gs, i64 %i.gv
  %i.gw = load ptr, ptr %scevgep, align 8, !tbaa !54
end_hunk_4
begin_hunk_5_@clusterCommandSpecial:bb.a

.loopexit414.loopexitsplit:                       ; preds = %bb.al
  %indvars.iv.i370.us.lcssa686 = phi i64 [ %indvars.iv.i370.us, %bb.al ]
  br label %.loopexit414.loopexit

.lr.ph.split.i369.us..loopexit414.loopexit_crit_edge: ; preds = %.lr.ph.split.i369.us
  %indvars.iv.i370.us.lcssa685.a = phi i64 [ %indvars.iv.i370.us, %.lr.ph.split.i369.us ]
  br label %.loopexit414.loopexit

.loopexit414.loopexit:                            ; preds = %.loopexit414.loopexitsplit, %.lr.ph.split.i369.us..loopexit414.loopexit_crit_edge
  %indvars.iv.i370.us.lcssa = phi i64 [ %indvars.iv.i370.us.lcssa685.a, %.lr.ph.split.i369.us..loopexit414.loopexit_crit_edge ], [ %indvars.iv.i370.us.lcssa686, %.loopexit414.loopexitsplit ]
  %.str.196.sink.i377.ph = phi ptr [ @.str.194, %.lr.ph.split.i369.us..loopexit414.loopexit_crit_edge ], [ @.str.196, %.loopexit414.loopexitsplit ]
  br label %.loopexit414

.loopexit414.loopexit649split:                    ; preds = %bb.ap
  %indvars.iv34.i380.lcssa680.a = phi i64 [ %indvars.iv34.i380, %bb.ap ]
  br label %.loopexit414.loopexit649

.critedge.us.i379..loopexit414.loopexit649_crit_edge: ; preds = %.critedge.us.i379
  %indvars.iv34.i380.lcssa679 = phi i64 [ %indvars.iv34.i380, %.critedge.us.i379 ]
  br label %.loopexit414.loopexit649

.loopexit414.loopexit649:                         ; preds = %.loopexit414.loopexit649split, %.critedge.us.i379..loopexit414.loopexit649_crit_edge
  %indvars.iv34.i380.lcssa = phi i64 [ %indvars.iv34.i380.lcssa679, %.critedge.us.i379..loopexit414.loopexit649_crit_edge ], [ %indvars.iv34.i380.lcssa680.a, %.loopexit414.loopexit649split ]
  %.str.196.sink.i377.ph650 = phi ptr [ @.str.195, %.critedge.us.i379..loopexit414.loopexit649_crit_edge ], [ @.str.196, %.loopexit414.loopexit649split ]
  br label %.loopexit414

.loopexit414:                                     ; preds = %.loopexit414.loopexit649, %.loopexit414.loopexit
end_hunk_5
