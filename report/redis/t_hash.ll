inline.NumInlined: 166
inline.NumDeleted: 15
begin_hunk_0_@listpackExExpire:bb.a

bb.d:                                             ; preds = %.lr.ph, %bb.m
  %i.p = phi i64 [ %.pre, %.lr.ph ], [ %i.al, %bb.m ]
  %.070 = phi i64 [ 0, %.lr.ph ], [ %i.am, %bb.m ] ; 6 uses
  %.04669 = phi ptr [ %i.k, %.lr.ph ], [ %i.aj, %bb.m ] ; 2 uses
  %i.q = load i64, ptr %i.n, align 8, !tbaa !25
  %i.r = icmp ult i64 %i.p, %i.q
end_hunk_0
begin_hunk_1_@listpackExExpire:bb.a
  br label %.thread

..thread_crit_edge:                               ; preds = %bb.j
  %.070.lcssa101 = phi i64 [ %.070, %bb.j ]
  %.070.lcssa101.a = phi i64 [ %.070, %bb.j ]     ; 0 uses
  br label %.thread

.thread:                                          ; preds = %.threadsplit, %..thread_crit_edge
  %.070.lcssa97 = phi i64 [ %.070.lcssa101, %..thread_crit_edge ], [ %.070.lcssa100, %.threadsplit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
end_hunk_1
begin_hunk_2_@listpackExExpire:bb.a
  br label %.critedge.loopexit

..critedge.loopexit_crit_edge:                    ; preds = %bb.d
  %.070.lcssa = phi i64 [ %.070, %bb.d ]
  %.070.lcssa.a = phi i64 [ %.070, %bb.d ]        ; 0 uses
  br label %.critedge.loopexit

.critedge.loopexit:                               ; preds = %.critedge.loopexitsplit, %..critedge.loopexit_crit_edge
  %.067.ph = phi i64 [ %.070.lcssa, %..critedge.loopexit_crit_edge ], [ %.lcssa, %.critedge.loopexitsplit ]
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.thread
end_hunk_2
